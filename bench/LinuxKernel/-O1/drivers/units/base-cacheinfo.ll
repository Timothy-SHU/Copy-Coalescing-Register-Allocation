; ModuleID = 'drivers/base/cacheinfo.c'
source_filename = "drivers/base/cacheinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_cacheinfo__206_930_cacheinfo_sysfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_cacheinfo__206_930_cacheinfo_sysfs_init6:\09\09\09"
module asm ".long\09__initstub__kmod_cacheinfo__206_930_cacheinfo_sysfs_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpu_cacheinfo = type { ptr, i32, i32, i8, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cacheinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.cpumask, i32, ptr, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@ci_cpu_cacheinfo = internal global %struct.cpu_cacheinfo zeroinitializer, section ".data..percpu", align 8, !dbg !0
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@acpi_disabled = external dso_local global i32, align 4
@.str = private unnamed_addr constant [58 x i8] c"\014cacheinfo: Unable to detect cache hierarchy for CPU %d\0A\00", align 1, !dbg !1960
@__UNIQUE_ID___addressable___initstub__kmod_cacheinfo__206_930_cacheinfo_sysfs_init6207 = internal global ptr @__initstub__kmod_cacheinfo__206_930_cacheinfo_sysfs_init6, section ".discard.addressable", align 8, !dbg !1965
@coherency_max_size = hidden global i32 0, align 4, !dbg !1967
@use_arch_info = internal global i8 0, align 1, !dbg !1969
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1971
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"base/cacheinfo:online\00", align 1, !dbg !1976
@ci_cache_dev = internal global ptr null, section ".data..percpu", align 8, !dbg !1991
@.str.3 = private unnamed_addr constant [9 x i8] c"index%1u\00", align 1, !dbg !1981
@ci_index_dev = internal global ptr null, section ".data..percpu", align 8, !dbg !2122
@cache_dev_map = internal global %struct.cpumask zeroinitializer, align 8, !dbg !2124
@.str.4 = private unnamed_addr constant [6 x i8] c"cache\00", align 1, !dbg !1986
@cache_default_groups = internal global [2 x ptr] [ptr @cache_default_group, ptr null], align 16, !dbg !1993
@cache_private_groups = internal global [3 x ptr] [ptr @cache_default_group, ptr null, ptr null], align 16, !dbg !2119
@cache_default_group = internal constant %struct.attribute_group { ptr null, ptr @cache_default_attrs_is_visible, ptr null, ptr @cache_default_attrs, ptr null }, align 8, !dbg !1996
@cache_default_attrs = internal global [13 x ptr] [ptr @dev_attr_id, ptr @dev_attr_type, ptr @dev_attr_level, ptr @dev_attr_shared_cpu_map, ptr @dev_attr_shared_cpu_list, ptr @dev_attr_coherency_line_size, ptr @dev_attr_ways_of_associativity, ptr @dev_attr_number_of_sets, ptr @dev_attr_size, ptr @dev_attr_allocation_policy, ptr @dev_attr_write_policy, ptr @dev_attr_physical_line_partition, ptr null], align 16, !dbg !2116
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @id_show, ptr null }, align 8, !dbg !2001
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @type_show, ptr null }, align 8, !dbg !2023
@dev_attr_level = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @level_show, ptr null }, align 8, !dbg !2039
@dev_attr_shared_cpu_map = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @shared_cpu_map_show, ptr null }, align 8, !dbg !2046
@dev_attr_shared_cpu_list = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @shared_cpu_list_show, ptr null }, align 8, !dbg !2053
@dev_attr_coherency_line_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @coherency_line_size_show, ptr null }, align 8, !dbg !2063
@dev_attr_ways_of_associativity = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @ways_of_associativity_show, ptr null }, align 8, !dbg !2067
@dev_attr_number_of_sets = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @number_of_sets_show, ptr null }, align 8, !dbg !2071
@dev_attr_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @size_show, ptr null }, align 8, !dbg !2075
@dev_attr_write_policy = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @write_policy_show, ptr null }, align 8, !dbg !2084
@dev_attr_allocation_policy = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @allocation_policy_show, ptr null }, align 8, !dbg !2101
@dev_attr_physical_line_partition = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @physical_line_partition_show, ptr null }, align 8, !dbg !2114
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1, !dbg !1998
@.str.6 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !2015
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !2018
@.str.8 = private unnamed_addr constant [5 x i8] c"Data\00", align 1, !dbg !2025
@.str.9 = private unnamed_addr constant [12 x i8] c"Instruction\00", align 1, !dbg !2027
@.str.10 = private unnamed_addr constant [8 x i8] c"Unified\00", align 1, !dbg !2032
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !2035
@.str.12 = private unnamed_addr constant [6 x i8] c"level\00", align 1, !dbg !2037
@.str.13 = private unnamed_addr constant [15 x i8] c"shared_cpu_map\00", align 1, !dbg !2041
@.str.14 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1, !dbg !2048
@nr_cpu_ids = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"shared_cpu_list\00", align 1, !dbg !2050
@.str.16 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1, !dbg !2055
@.str.17 = private unnamed_addr constant [20 x i8] c"coherency_line_size\00", align 1, !dbg !2058
@.str.18 = private unnamed_addr constant [22 x i8] c"ways_of_associativity\00", align 1, !dbg !2065
@.str.19 = private unnamed_addr constant [15 x i8] c"number_of_sets\00", align 1, !dbg !2069
@.str.20 = private unnamed_addr constant [5 x i8] c"size\00", align 1, !dbg !2073
@.str.21 = private unnamed_addr constant [5 x i8] c"%uK\0A\00", align 1, !dbg !2077
@.str.22 = private unnamed_addr constant [13 x i8] c"write_policy\00", align 1, !dbg !2079
@.str.23 = private unnamed_addr constant [14 x i8] c"WriteThrough\0A\00", align 1, !dbg !2086
@.str.24 = private unnamed_addr constant [11 x i8] c"WriteBack\0A\00", align 1, !dbg !2091
@.str.25 = private unnamed_addr constant [18 x i8] c"allocation_policy\00", align 1, !dbg !2096
@.str.26 = private unnamed_addr constant [18 x i8] c"ReadWriteAllocate\00", align 1, !dbg !2103
@.str.27 = private unnamed_addr constant [13 x i8] c"ReadAllocate\00", align 1, !dbg !2105
@.str.28 = private unnamed_addr constant [14 x i8] c"WriteAllocate\00", align 1, !dbg !2107
@.str.29 = private unnamed_addr constant [24 x i8] c"physical_line_partition\00", align 1, !dbg !2109
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_cacheinfo__206_930_cacheinfo_sysfs_init6207], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_cpu_cacheinfo(i32 noundef %cpu) #0 align 16 !dbg !2135 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2139, metadata !DIExpression()), !dbg !2145
  br label %do.body, !dbg !2146

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2147
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2140, metadata !DIExpression()), !dbg !2147
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2147
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2147
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2146
  br label %do.end, !dbg !2147

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2148
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2143, metadata !DIExpression()), !dbg !2148
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !2148
  %1 = load i64, ptr %__ptr, align 8, !dbg !2148
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2148
  %idxprom = zext i32 %2 to i64, !dbg !2148
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2148
  %3 = load i64, ptr %arrayidx, align 8, !dbg !2148
  %add = add i64 %1, %3, !dbg !2148
  %4 = inttoptr i64 %add to ptr, !dbg !2148
  store ptr %4, ptr %tmp1, align 8, !dbg !2148
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2146
  %5 = load ptr, ptr %tmp1, align 8, !dbg !2148
  store ptr %5, ptr %tmp, align 8, !dbg !2147
  %6 = load ptr, ptr %tmp, align 8, !dbg !2146
  ret ptr %6, !dbg !2149
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @last_level_cache_is_valid(i32 noundef %cpu) #0 align 16 !dbg !2150 {
entry:
  %retval = alloca i1, align 1
  %cpu.addr = alloca i32, align 4
  %llc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__ptr7 = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__ptr18 = alloca i64, align 8
  %tmp19 = alloca ptr, align 8
  %__vpp_verify25 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  %__ptr29 = alloca i64, align 8
  %tmp30 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2154, metadata !DIExpression()), !dbg !2177
  call void @llvm.lifetime.start.p0(i64 8, ptr %llc) #16, !dbg !2178
  call void @llvm.dbg.declare(metadata ptr %llc, metadata !2155, metadata !DIExpression()), !dbg !2179
  br label %do.body, !dbg !2180

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2181
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2156, metadata !DIExpression()), !dbg !2181
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2181
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2181
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2180
  br label %do.cond, !dbg !2181

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2181

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2182
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !2182
  %1 = load i64, ptr %__ptr, align 8, !dbg !2182
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2182
  %idxprom = zext i32 %2 to i64, !dbg !2182
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2182
  %3 = load i64, ptr %arrayidx, align 8, !dbg !2182
  %add = add i64 %1, %3, !dbg !2182
  %4 = inttoptr i64 %add to ptr, !dbg !2182
  store ptr %4, ptr %tmp1, align 8, !dbg !2182
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2180
  %5 = load ptr, ptr %tmp1, align 8, !dbg !2182
  store ptr %5, ptr %tmp, align 8, !dbg !2181
  %6 = load ptr, ptr %tmp, align 8, !dbg !2180
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %6, i32 0, i32 2, !dbg !2183
  %7 = load i32, ptr %num_leaves, align 4, !dbg !2183
  %tobool = icmp ne i32 %7, 0, !dbg !2183
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2184

lor.lhs.false:                                    ; preds = %do.end
  br label %do.body2, !dbg !2185

do.body2:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !2186
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !2162, metadata !DIExpression()), !dbg !2186
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !2186
  %8 = load ptr, ptr %__vpp_verify3, align 8, !dbg !2186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !2185
  br label %do.cond4, !dbg !2186

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !2186

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr7) #16, !dbg !2187
  call void @llvm.dbg.declare(metadata ptr %__ptr7, metadata !2165, metadata !DIExpression()), !dbg !2187
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr7, align 8, !dbg !2187
  %9 = load i64, ptr %__ptr7, align 8, !dbg !2187
  %10 = load i32, ptr %cpu.addr, align 4, !dbg !2187
  %idxprom9 = zext i32 %10 to i64, !dbg !2187
  %arrayidx10 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom9, !dbg !2187
  %11 = load i64, ptr %arrayidx10, align 8, !dbg !2187
  %add11 = add i64 %9, %11, !dbg !2187
  %12 = inttoptr i64 %add11 to ptr, !dbg !2187
  store ptr %12, ptr %tmp8, align 8, !dbg !2187
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr7) #16, !dbg !2185
  %13 = load ptr, ptr %tmp8, align 8, !dbg !2187
  store ptr %13, ptr %tmp6, align 8, !dbg !2186
  %14 = load ptr, ptr %tmp6, align 8, !dbg !2185
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, ptr %14, i32 0, i32 0, !dbg !2188
  %15 = load ptr, ptr %info_list, align 8, !dbg !2188
  %tobool12 = icmp ne ptr %15, null, !dbg !2188
  br i1 %tobool12, label %if.end, label %if.then, !dbg !2189

if.then:                                          ; preds = %do.end5, %do.end
  store i1 false, ptr %retval, align 1, !dbg !2190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2190

if.end:                                           ; preds = %do.end5
  br label %do.body13, !dbg !2191

do.body13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #16, !dbg !2192
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !2167, metadata !DIExpression()), !dbg !2192
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !2192
  %16 = load ptr, ptr %__vpp_verify14, align 8, !dbg !2192
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #16, !dbg !2191
  br label %do.cond15, !dbg !2192

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !2192

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr18) #16, !dbg !2193
  call void @llvm.dbg.declare(metadata ptr %__ptr18, metadata !2170, metadata !DIExpression()), !dbg !2193
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr18, align 8, !dbg !2193
  %17 = load i64, ptr %__ptr18, align 8, !dbg !2193
  %18 = load i32, ptr %cpu.addr, align 4, !dbg !2193
  %idxprom20 = zext i32 %18 to i64, !dbg !2193
  %arrayidx21 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom20, !dbg !2193
  %19 = load i64, ptr %arrayidx21, align 8, !dbg !2193
  %add22 = add i64 %17, %19, !dbg !2193
  %20 = inttoptr i64 %add22 to ptr, !dbg !2193
  store ptr %20, ptr %tmp19, align 8, !dbg !2193
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr18) #16, !dbg !2191
  %21 = load ptr, ptr %tmp19, align 8, !dbg !2193
  store ptr %21, ptr %tmp17, align 8, !dbg !2192
  %22 = load ptr, ptr %tmp17, align 8, !dbg !2191
  %info_list23 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %22, i32 0, i32 0, !dbg !2194
  %23 = load ptr, ptr %info_list23, align 8, !dbg !2194
  br label %do.body24, !dbg !2195

do.body24:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify25) #16, !dbg !2196
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify25, metadata !2172, metadata !DIExpression()), !dbg !2196
  store ptr null, ptr %__vpp_verify25, align 8, !dbg !2196
  %24 = load ptr, ptr %__vpp_verify25, align 8, !dbg !2196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify25) #16, !dbg !2195
  br label %do.cond26, !dbg !2196

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !2196

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr29) #16, !dbg !2197
  call void @llvm.dbg.declare(metadata ptr %__ptr29, metadata !2175, metadata !DIExpression()), !dbg !2197
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr29, align 8, !dbg !2197
  %25 = load i64, ptr %__ptr29, align 8, !dbg !2197
  %26 = load i32, ptr %cpu.addr, align 4, !dbg !2197
  %idxprom31 = zext i32 %26 to i64, !dbg !2197
  %arrayidx32 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom31, !dbg !2197
  %27 = load i64, ptr %arrayidx32, align 8, !dbg !2197
  %add33 = add i64 %25, %27, !dbg !2197
  %28 = inttoptr i64 %add33 to ptr, !dbg !2197
  store ptr %28, ptr %tmp30, align 8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr29) #16, !dbg !2195
  %29 = load ptr, ptr %tmp30, align 8, !dbg !2197
  store ptr %29, ptr %tmp28, align 8, !dbg !2196
  %30 = load ptr, ptr %tmp28, align 8, !dbg !2195
  %num_leaves34 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %30, i32 0, i32 2, !dbg !2194
  %31 = load i32, ptr %num_leaves34, align 4, !dbg !2194
  %sub = sub i32 %31, 1, !dbg !2194
  %idx.ext = zext i32 %sub to i64, !dbg !2194
  %add.ptr = getelementptr %struct.cacheinfo, ptr %23, i64 %idx.ext, !dbg !2194
  store ptr %add.ptr, ptr %llc, align 8, !dbg !2198
  %32 = load ptr, ptr %llc, align 8, !dbg !2199
  %attributes = getelementptr inbounds %struct.cacheinfo, ptr %32, i32 0, i32 9, !dbg !2200
  %33 = load i32, ptr %attributes, align 8, !dbg !2200
  %conv = zext i32 %33 to i64, !dbg !2199
  %and = and i64 %conv, 16, !dbg !2201
  %tobool35 = icmp ne i64 %and, 0, !dbg !2201
  br i1 %tobool35, label %lor.end, label %lor.rhs, !dbg !2202

lor.rhs:                                          ; preds = %do.end27
  %34 = load ptr, ptr %llc, align 8, !dbg !2203
  %fw_token = getelementptr inbounds %struct.cacheinfo, ptr %34, i32 0, i32 10, !dbg !2204
  %35 = load ptr, ptr %fw_token, align 8, !dbg !2204
  %tobool36 = icmp ne ptr %35, null, !dbg !2205
  %lnot = xor i1 %tobool36, true, !dbg !2205
  %lnot37 = xor i1 %lnot, true, !dbg !2206
  br label %lor.end, !dbg !2202

lor.end:                                          ; preds = %lor.rhs, %do.end27
  %36 = phi i1 [ true, %do.end27 ], [ %lnot37, %lor.rhs ]
  store i1 %36, ptr %retval, align 1, !dbg !2207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2207

cleanup:                                          ; preds = %lor.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %llc) #16, !dbg !2208
  %37 = load i1, ptr %retval, align 1, !dbg !2208
  ret i1 %37, !dbg !2208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @last_level_cache_is_shared(i32 noundef %cpu_x, i32 noundef %cpu_y) #0 align 16 !dbg !2209 {
entry:
  %retval = alloca i1, align 1
  %cpu_x.addr = alloca i32, align 4
  %cpu_y.addr = alloca i32, align 4
  %llc_x = alloca ptr, align 8
  %llc_y = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  %__vpp_verify4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__ptr8 = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %__vpp_verify14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__ptr18 = alloca i64, align 8
  %tmp19 = alloca ptr, align 8
  %__vpp_verify25 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  %__ptr29 = alloca i64, align 8
  %tmp30 = alloca ptr, align 8
  store i32 %cpu_x, ptr %cpu_x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu_x.addr, metadata !2213, metadata !DIExpression()), !dbg !2237
  store i32 %cpu_y, ptr %cpu_y.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu_y.addr, metadata !2214, metadata !DIExpression()), !dbg !2238
  call void @llvm.lifetime.start.p0(i64 8, ptr %llc_x) #16, !dbg !2239
  call void @llvm.dbg.declare(metadata ptr %llc_x, metadata !2215, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.start.p0(i64 8, ptr %llc_y) #16, !dbg !2239
  call void @llvm.dbg.declare(metadata ptr %llc_y, metadata !2216, metadata !DIExpression()), !dbg !2241
  %0 = load i32, ptr %cpu_x.addr, align 4, !dbg !2242
  %call = call zeroext i1 @last_level_cache_is_valid(i32 noundef %0) #17, !dbg !2244
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !2245

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %cpu_y.addr, align 4, !dbg !2246
  %call1 = call zeroext i1 @last_level_cache_is_valid(i32 noundef %1) #17, !dbg !2247
  br i1 %call1, label %if.end, label %if.then, !dbg !2248

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !2249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2249

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !2250

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2251
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2217, metadata !DIExpression()), !dbg !2251
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2251
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !2251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2250
  br label %do.cond, !dbg !2251

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2251

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2252
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2220, metadata !DIExpression()), !dbg !2252
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !2252
  %3 = load i64, ptr %__ptr, align 8, !dbg !2252
  %4 = load i32, ptr %cpu_x.addr, align 4, !dbg !2252
  %idxprom = zext i32 %4 to i64, !dbg !2252
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2252
  %5 = load i64, ptr %arrayidx, align 8, !dbg !2252
  %add = add i64 %3, %5, !dbg !2252
  %6 = inttoptr i64 %add to ptr, !dbg !2252
  store ptr %6, ptr %tmp2, align 8, !dbg !2252
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2250
  %7 = load ptr, ptr %tmp2, align 8, !dbg !2252
  store ptr %7, ptr %tmp, align 8, !dbg !2251
  %8 = load ptr, ptr %tmp, align 8, !dbg !2250
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, ptr %8, i32 0, i32 0, !dbg !2253
  %9 = load ptr, ptr %info_list, align 8, !dbg !2253
  br label %do.body3, !dbg !2254

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !2255
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !2222, metadata !DIExpression()), !dbg !2255
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !2255
  %10 = load ptr, ptr %__vpp_verify4, align 8, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !2254
  br label %do.cond5, !dbg !2255

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !2255

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr8) #16, !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %__ptr8, metadata !2225, metadata !DIExpression()), !dbg !2256
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr8, align 8, !dbg !2256
  %11 = load i64, ptr %__ptr8, align 8, !dbg !2256
  %12 = load i32, ptr %cpu_x.addr, align 4, !dbg !2256
  %idxprom10 = zext i32 %12 to i64, !dbg !2256
  %arrayidx11 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom10, !dbg !2256
  %13 = load i64, ptr %arrayidx11, align 8, !dbg !2256
  %add12 = add i64 %11, %13, !dbg !2256
  %14 = inttoptr i64 %add12 to ptr, !dbg !2256
  store ptr %14, ptr %tmp9, align 8, !dbg !2256
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr8) #16, !dbg !2254
  %15 = load ptr, ptr %tmp9, align 8, !dbg !2256
  store ptr %15, ptr %tmp7, align 8, !dbg !2255
  %16 = load ptr, ptr %tmp7, align 8, !dbg !2254
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %16, i32 0, i32 2, !dbg !2253
  %17 = load i32, ptr %num_leaves, align 4, !dbg !2253
  %sub = sub i32 %17, 1, !dbg !2253
  %idx.ext = zext i32 %sub to i64, !dbg !2253
  %add.ptr = getelementptr %struct.cacheinfo, ptr %9, i64 %idx.ext, !dbg !2253
  store ptr %add.ptr, ptr %llc_x, align 8, !dbg !2257
  br label %do.body13, !dbg !2258

do.body13:                                        ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #16, !dbg !2259
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !2227, metadata !DIExpression()), !dbg !2259
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !2259
  %18 = load ptr, ptr %__vpp_verify14, align 8, !dbg !2259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #16, !dbg !2258
  br label %do.cond15, !dbg !2259

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !2259

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr18) #16, !dbg !2260
  call void @llvm.dbg.declare(metadata ptr %__ptr18, metadata !2230, metadata !DIExpression()), !dbg !2260
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr18, align 8, !dbg !2260
  %19 = load i64, ptr %__ptr18, align 8, !dbg !2260
  %20 = load i32, ptr %cpu_y.addr, align 4, !dbg !2260
  %idxprom20 = zext i32 %20 to i64, !dbg !2260
  %arrayidx21 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom20, !dbg !2260
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !2260
  %add22 = add i64 %19, %21, !dbg !2260
  %22 = inttoptr i64 %add22 to ptr, !dbg !2260
  store ptr %22, ptr %tmp19, align 8, !dbg !2260
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr18) #16, !dbg !2258
  %23 = load ptr, ptr %tmp19, align 8, !dbg !2260
  store ptr %23, ptr %tmp17, align 8, !dbg !2259
  %24 = load ptr, ptr %tmp17, align 8, !dbg !2258
  %info_list23 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %24, i32 0, i32 0, !dbg !2261
  %25 = load ptr, ptr %info_list23, align 8, !dbg !2261
  br label %do.body24, !dbg !2262

do.body24:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify25) #16, !dbg !2263
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify25, metadata !2232, metadata !DIExpression()), !dbg !2263
  store ptr null, ptr %__vpp_verify25, align 8, !dbg !2263
  %26 = load ptr, ptr %__vpp_verify25, align 8, !dbg !2263
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify25) #16, !dbg !2262
  br label %do.cond26, !dbg !2263

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !2263

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr29) #16, !dbg !2264
  call void @llvm.dbg.declare(metadata ptr %__ptr29, metadata !2235, metadata !DIExpression()), !dbg !2264
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr29, align 8, !dbg !2264
  %27 = load i64, ptr %__ptr29, align 8, !dbg !2264
  %28 = load i32, ptr %cpu_y.addr, align 4, !dbg !2264
  %idxprom31 = zext i32 %28 to i64, !dbg !2264
  %arrayidx32 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom31, !dbg !2264
  %29 = load i64, ptr %arrayidx32, align 8, !dbg !2264
  %add33 = add i64 %27, %29, !dbg !2264
  %30 = inttoptr i64 %add33 to ptr, !dbg !2264
  store ptr %30, ptr %tmp30, align 8, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr29) #16, !dbg !2262
  %31 = load ptr, ptr %tmp30, align 8, !dbg !2264
  store ptr %31, ptr %tmp28, align 8, !dbg !2263
  %32 = load ptr, ptr %tmp28, align 8, !dbg !2262
  %num_leaves34 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %32, i32 0, i32 2, !dbg !2261
  %33 = load i32, ptr %num_leaves34, align 4, !dbg !2261
  %sub35 = sub i32 %33, 1, !dbg !2261
  %idx.ext36 = zext i32 %sub35 to i64, !dbg !2261
  %add.ptr37 = getelementptr %struct.cacheinfo, ptr %25, i64 %idx.ext36, !dbg !2261
  store ptr %add.ptr37, ptr %llc_y, align 8, !dbg !2265
  %34 = load ptr, ptr %llc_x, align 8, !dbg !2266
  %35 = load ptr, ptr %llc_y, align 8, !dbg !2267
  %call38 = call zeroext i1 @cache_leaves_are_shared(ptr noundef %34, ptr noundef %35) #17, !dbg !2268
  store i1 %call38, ptr %retval, align 1, !dbg !2269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2269

cleanup:                                          ; preds = %do.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %llc_y) #16, !dbg !2270
  call void @llvm.lifetime.end.p0(i64 8, ptr %llc_x) #16, !dbg !2270
  %36 = load i1, ptr %retval, align 1, !dbg !2270
  ret i1 %36, !dbg !2270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cache_leaves_are_shared(ptr noundef %this_leaf, ptr noundef %sib_leaf) #3 align 16 !dbg !2271 {
entry:
  %retval = alloca i1, align 1
  %this_leaf.addr = alloca ptr, align 8
  %sib_leaf.addr = alloca ptr, align 8
  store ptr %this_leaf, ptr %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %this_leaf.addr, metadata !2275, metadata !DIExpression()), !dbg !2277
  store ptr %sib_leaf, ptr %sib_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sib_leaf.addr, metadata !2276, metadata !DIExpression()), !dbg !2278
  %0 = load i8, ptr @use_arch_info, align 1, !dbg !2279, !range !2281, !noundef !578
  %tobool = trunc i8 %0 to i1, !dbg !2279
  br i1 %tobool, label %if.then, label %if.end, !dbg !2282

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %this_leaf.addr, align 8, !dbg !2283
  %level = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 2, !dbg !2284
  %2 = load i32, ptr %level, align 8, !dbg !2284
  %cmp = icmp ne i32 %2, 1, !dbg !2285
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2286

land.rhs:                                         ; preds = %if.then
  %3 = load ptr, ptr %sib_leaf.addr, align 8, !dbg !2287
  %level1 = getelementptr inbounds %struct.cacheinfo, ptr %3, i32 0, i32 2, !dbg !2288
  %4 = load i32, ptr %level1, align 8, !dbg !2288
  %cmp2 = icmp ne i32 %4, 1, !dbg !2289
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %5 = phi i1 [ false, %if.then ], [ %cmp2, %land.rhs ], !dbg !2290
  store i1 %5, ptr %retval, align 1, !dbg !2291
  br label %return, !dbg !2291

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %sib_leaf.addr, align 8, !dbg !2292
  %attributes = getelementptr inbounds %struct.cacheinfo, ptr %6, i32 0, i32 9, !dbg !2294
  %7 = load i32, ptr %attributes, align 8, !dbg !2294
  %conv = zext i32 %7 to i64, !dbg !2292
  %and = and i64 %conv, 16, !dbg !2295
  %tobool3 = icmp ne i64 %and, 0, !dbg !2295
  br i1 %tobool3, label %land.lhs.true, label %if.end12, !dbg !2296

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %this_leaf.addr, align 8, !dbg !2297
  %attributes4 = getelementptr inbounds %struct.cacheinfo, ptr %8, i32 0, i32 9, !dbg !2298
  %9 = load i32, ptr %attributes4, align 8, !dbg !2298
  %conv5 = zext i32 %9 to i64, !dbg !2297
  %and6 = and i64 %conv5, 16, !dbg !2299
  %tobool7 = icmp ne i64 %and6, 0, !dbg !2299
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !2300

if.then8:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %sib_leaf.addr, align 8, !dbg !2301
  %id = getelementptr inbounds %struct.cacheinfo, ptr %10, i32 0, i32 0, !dbg !2302
  %11 = load i32, ptr %id, align 8, !dbg !2302
  %12 = load ptr, ptr %this_leaf.addr, align 8, !dbg !2303
  %id9 = getelementptr inbounds %struct.cacheinfo, ptr %12, i32 0, i32 0, !dbg !2304
  %13 = load i32, ptr %id9, align 8, !dbg !2304
  %cmp10 = icmp eq i32 %11, %13, !dbg !2305
  store i1 %cmp10, ptr %retval, align 1, !dbg !2306
  br label %return, !dbg !2306

if.end12:                                         ; preds = %land.lhs.true, %if.end
  %14 = load ptr, ptr %sib_leaf.addr, align 8, !dbg !2307
  %fw_token = getelementptr inbounds %struct.cacheinfo, ptr %14, i32 0, i32 10, !dbg !2308
  %15 = load ptr, ptr %fw_token, align 8, !dbg !2308
  %16 = load ptr, ptr %this_leaf.addr, align 8, !dbg !2309
  %fw_token13 = getelementptr inbounds %struct.cacheinfo, ptr %16, i32 0, i32 10, !dbg !2310
  %17 = load ptr, ptr %fw_token13, align 8, !dbg !2310
  %cmp14 = icmp eq ptr %15, %17, !dbg !2311
  store i1 %cmp14, ptr %retval, align 1, !dbg !2312
  br label %return, !dbg !2312

return:                                           ; preds = %if.end12, %if.then8, %land.end
  %18 = load i1, ptr %retval, align 1, !dbg !2313
  ret i1 %18, !dbg !2313
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @init_of_cache_level(i32 noundef %cpu) #0 align 16 !dbg !2314 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2318, metadata !DIExpression()), !dbg !2319
  ret i32 0, !dbg !2320
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @cache_setup_acpi(i32 noundef %cpu) #0 align 16 !dbg !2321 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2323, metadata !DIExpression()), !dbg !2324
  ret i32 -524, !dbg !2325
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @early_cache_level(i32 noundef %cpu) #0 align 16 !dbg !2326 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2328, metadata !DIExpression()), !dbg !2329
  ret i32 -2, !dbg !2330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @init_cache_level(i32 noundef %cpu) #0 align 16 !dbg !2331 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2333, metadata !DIExpression()), !dbg !2334
  ret i32 -2, !dbg !2335
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i32 @populate_cache_leaves(i32 noundef %cpu) #0 align 16 !dbg !2336 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2338, metadata !DIExpression()), !dbg !2339
  ret i32 -2, !dbg !2340
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fetch_cache_info(i32 noundef %cpu) #0 align 16 !dbg !2341 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %this_cpu_ci = alloca ptr, align 8
  %levels = alloca i32, align 4
  %split_levels = alloca i32, align 4
  %ret = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp7 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify17 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %__ptr21 = alloca i64, align 8
  %tmp22 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2343, metadata !DIExpression()), !dbg !2361
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_cpu_ci) #16, !dbg !2362
  call void @llvm.dbg.declare(metadata ptr %this_cpu_ci, metadata !2344, metadata !DIExpression()), !dbg !2363
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2364
  %call = call ptr @get_cpu_cacheinfo(i32 noundef %0) #17, !dbg !2365
  store ptr %call, ptr %this_cpu_ci, align 8, !dbg !2363
  call void @llvm.lifetime.start.p0(i64 4, ptr %levels) #16, !dbg !2366
  call void @llvm.dbg.declare(metadata ptr %levels, metadata !2345, metadata !DIExpression()), !dbg !2367
  store i32 0, ptr %levels, align 4, !dbg !2367
  call void @llvm.lifetime.start.p0(i64 4, ptr %split_levels) #16, !dbg !2366
  call void @llvm.dbg.declare(metadata ptr %split_levels, metadata !2346, metadata !DIExpression()), !dbg !2368
  store i32 0, ptr %split_levels, align 4, !dbg !2368
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2369
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2347, metadata !DIExpression()), !dbg !2370
  %1 = load i32, ptr @acpi_disabled, align 4, !dbg !2371
  %tobool = icmp ne i32 %1, 0, !dbg !2371
  br i1 %tobool, label %if.then, label %if.else, !dbg !2373

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2374
  %call1 = call i32 @init_of_cache_level(i32 noundef %2) #17, !dbg !2376
  store i32 %call1, ptr %ret, align 4, !dbg !2377
  br label %if.end5, !dbg !2378

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !2379
  %call2 = call i32 @acpi_get_cache_info(i32 noundef %3, ptr noundef %levels, ptr noundef %split_levels) #17, !dbg !2381
  store i32 %call2, ptr %ret, align 4, !dbg !2382
  %4 = load i32, ptr %ret, align 4, !dbg !2383
  %tobool3 = icmp ne i32 %4, 0, !dbg !2383
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2385

if.then4:                                         ; preds = %if.else
  %5 = load i32, ptr %levels, align 4, !dbg !2386
  %6 = load ptr, ptr %this_cpu_ci, align 8, !dbg !2388
  %num_levels = getelementptr inbounds %struct.cpu_cacheinfo, ptr %6, i32 0, i32 1, !dbg !2389
  store i32 %5, ptr %num_levels, align 8, !dbg !2390
  %7 = load i32, ptr %levels, align 4, !dbg !2391
  %8 = load i32, ptr %split_levels, align 4, !dbg !2392
  %add = add i32 %7, %8, !dbg !2393
  %9 = load ptr, ptr %this_cpu_ci, align 8, !dbg !2394
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %9, i32 0, i32 2, !dbg !2395
  store i32 %add, ptr %num_leaves, align 4, !dbg !2396
  br label %if.end, !dbg !2397

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %10 = load i32, ptr %ret, align 4, !dbg !2398
  %tobool6 = icmp ne i32 %10, 0, !dbg !2398
  br i1 %tobool6, label %if.then11, label %lor.lhs.false, !dbg !2399

lor.lhs.false:                                    ; preds = %if.end5
  br label %do.body, !dbg !2400

do.body:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2401
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2348, metadata !DIExpression()), !dbg !2401
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2401
  %11 = load ptr, ptr %__vpp_verify, align 8, !dbg !2401
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2400
  br label %do.cond, !dbg !2401

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2401

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2402
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2352, metadata !DIExpression()), !dbg !2402
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !2402
  %12 = load i64, ptr %__ptr, align 8, !dbg !2402
  %13 = load i32, ptr %cpu.addr, align 4, !dbg !2402
  %idxprom = zext i32 %13 to i64, !dbg !2402
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2402
  %14 = load i64, ptr %arrayidx, align 8, !dbg !2402
  %add8 = add i64 %12, %14, !dbg !2402
  %15 = inttoptr i64 %add8 to ptr, !dbg !2402
  store ptr %15, ptr %tmp7, align 8, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2400
  %16 = load ptr, ptr %tmp7, align 8, !dbg !2402
  store ptr %16, ptr %tmp, align 8, !dbg !2401
  %17 = load ptr, ptr %tmp, align 8, !dbg !2400
  %num_leaves9 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %17, i32 0, i32 2, !dbg !2403
  %18 = load i32, ptr %num_leaves9, align 4, !dbg !2403
  %tobool10 = icmp ne i32 %18, 0, !dbg !2403
  br i1 %tobool10, label %if.end30, label %if.then11, !dbg !2404

if.then11:                                        ; preds = %do.end, %if.end5
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !2405
  %call12 = call i32 @early_cache_level(i32 noundef %19) #17, !dbg !2406
  store i32 %call12, ptr %ret, align 4, !dbg !2407
  %20 = load i32, ptr %ret, align 4, !dbg !2408
  %tobool13 = icmp ne i32 %20, 0, !dbg !2408
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2410

if.then14:                                        ; preds = %if.then11
  %21 = load i32, ptr %ret, align 4, !dbg !2411
  store i32 %21, ptr %retval, align 4, !dbg !2412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2412

if.end15:                                         ; preds = %if.then11
  br label %do.body16, !dbg !2413

do.body16:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify17) #16, !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify17, metadata !2354, metadata !DIExpression()), !dbg !2414
  store ptr null, ptr %__vpp_verify17, align 8, !dbg !2414
  %22 = load ptr, ptr %__vpp_verify17, align 8, !dbg !2414
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify17) #16, !dbg !2413
  br label %do.cond18, !dbg !2414

do.cond18:                                        ; preds = %do.body16
  br label %do.end19, !dbg !2414

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr21) #16, !dbg !2415
  call void @llvm.dbg.declare(metadata ptr %__ptr21, metadata !2359, metadata !DIExpression()), !dbg !2415
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr21, align 8, !dbg !2415
  %23 = load i64, ptr %__ptr21, align 8, !dbg !2415
  %24 = load i32, ptr %cpu.addr, align 4, !dbg !2415
  %idxprom23 = zext i32 %24 to i64, !dbg !2415
  %arrayidx24 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom23, !dbg !2415
  %25 = load i64, ptr %arrayidx24, align 8, !dbg !2415
  %add25 = add i64 %23, %25, !dbg !2415
  %26 = inttoptr i64 %add25 to ptr, !dbg !2415
  store ptr %26, ptr %tmp22, align 8, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr21) #16, !dbg !2413
  %27 = load ptr, ptr %tmp22, align 8, !dbg !2415
  store ptr %27, ptr %tmp20, align 8, !dbg !2414
  %28 = load ptr, ptr %tmp20, align 8, !dbg !2413
  %num_leaves26 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %28, i32 0, i32 2, !dbg !2416
  %29 = load i32, ptr %num_leaves26, align 4, !dbg !2416
  %tobool27 = icmp ne i32 %29, 0, !dbg !2416
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !2417

if.then28:                                        ; preds = %do.end19
  store i32 -2, ptr %retval, align 4, !dbg !2418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2418

if.end29:                                         ; preds = %do.end19
  %30 = load ptr, ptr %this_cpu_ci, align 8, !dbg !2419
  %early_ci_levels = getelementptr inbounds %struct.cpu_cacheinfo, ptr %30, i32 0, i32 4, !dbg !2420
  store i8 1, ptr %early_ci_levels, align 1, !dbg !2421
  br label %if.end30, !dbg !2422

if.end30:                                         ; preds = %if.end29, %do.end
  %31 = load i32, ptr %cpu.addr, align 4, !dbg !2423
  %call31 = call i32 @allocate_cache_info(i32 noundef %31) #17, !dbg !2424
  store i32 %call31, ptr %retval, align 4, !dbg !2425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2425

cleanup:                                          ; preds = %if.end30, %if.then28, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2426
  call void @llvm.lifetime.end.p0(i64 4, ptr %split_levels) #16, !dbg !2426
  call void @llvm.lifetime.end.p0(i64 4, ptr %levels) #16, !dbg !2426
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_cpu_ci) #16, !dbg !2426
  %32 = load i32, ptr %retval, align 4, !dbg !2426
  ret i32 %32, !dbg !2426
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_get_cache_info(i32 noundef %cpu, ptr noundef %levels, ptr noundef %split_levels) #3 align 16 !dbg !2427 {
entry:
  %cpu.addr = alloca i32, align 4
  %levels.addr = alloca ptr, align 8
  %split_levels.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2431, metadata !DIExpression()), !dbg !2434
  store ptr %levels, ptr %levels.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %levels.addr, metadata !2432, metadata !DIExpression()), !dbg !2435
  store ptr %split_levels, ptr %split_levels.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %split_levels.addr, metadata !2433, metadata !DIExpression()), !dbg !2436
  ret i32 -2, !dbg !2437
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @allocate_cache_info(i32 noundef %cpu) #3 align 16 !dbg !2438 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__ptr6 = alloca i64, align 8
  %tmp7 = alloca ptr, align 8
  %__vpp_verify12 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__ptr15 = alloca i64, align 8
  %tmp16 = alloca ptr, align 8
  %__vpp_verify22 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  %__ptr25 = alloca i64, align 8
  %tmp26 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2442, metadata !DIExpression()), !dbg !2465
  br label %do.body, !dbg !2466

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2467
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2443, metadata !DIExpression()), !dbg !2467
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2467
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2466
  br label %do.end, !dbg !2467

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2468
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2446, metadata !DIExpression()), !dbg !2468
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !2468
  %1 = load i64, ptr %__ptr, align 8, !dbg !2468
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2468
  %idxprom = sext i32 %2 to i64, !dbg !2468
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2468
  %3 = load i64, ptr %arrayidx, align 8, !dbg !2468
  %add = add i64 %1, %3, !dbg !2468
  %4 = inttoptr i64 %add to ptr, !dbg !2468
  store ptr %4, ptr %tmp1, align 8, !dbg !2468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2466
  %5 = load ptr, ptr %tmp1, align 8, !dbg !2468
  store ptr %5, ptr %tmp, align 8, !dbg !2467
  %6 = load ptr, ptr %tmp, align 8, !dbg !2466
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %6, i32 0, i32 2, !dbg !2469
  %7 = load i32, ptr %num_leaves, align 4, !dbg !2469
  %conv = zext i32 %7 to i64, !dbg !2469
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 72, i32 noundef 2080) #18, !dbg !2470
  br label %do.body2, !dbg !2471

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !2472
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !2448, metadata !DIExpression()), !dbg !2472
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !2472
  %8 = load ptr, ptr %__vpp_verify3, align 8, !dbg !2472
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !2471
  br label %do.end4, !dbg !2472

do.end4:                                          ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr6) #16, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %__ptr6, metadata !2451, metadata !DIExpression()), !dbg !2473
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr6, align 8, !dbg !2473
  %9 = load i64, ptr %__ptr6, align 8, !dbg !2473
  %10 = load i32, ptr %cpu.addr, align 4, !dbg !2473
  %idxprom8 = sext i32 %10 to i64, !dbg !2473
  %arrayidx9 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom8, !dbg !2473
  %11 = load i64, ptr %arrayidx9, align 8, !dbg !2473
  %add10 = add i64 %9, %11, !dbg !2473
  %12 = inttoptr i64 %add10 to ptr, !dbg !2473
  store ptr %12, ptr %tmp7, align 8, !dbg !2473
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr6) #16, !dbg !2471
  %13 = load ptr, ptr %tmp7, align 8, !dbg !2473
  store ptr %13, ptr %tmp5, align 8, !dbg !2472
  %14 = load ptr, ptr %tmp5, align 8, !dbg !2471
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, ptr %14, i32 0, i32 0, !dbg !2474
  store ptr %call, ptr %info_list, align 8, !dbg !2475
  br label %do.body11, !dbg !2476

do.body11:                                        ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify12) #16, !dbg !2477
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify12, metadata !2453, metadata !DIExpression()), !dbg !2477
  store ptr null, ptr %__vpp_verify12, align 8, !dbg !2477
  %15 = load ptr, ptr %__vpp_verify12, align 8, !dbg !2477
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify12) #16, !dbg !2476
  br label %do.end13, !dbg !2477

do.end13:                                         ; preds = %do.body11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr15) #16, !dbg !2478
  call void @llvm.dbg.declare(metadata ptr %__ptr15, metadata !2457, metadata !DIExpression()), !dbg !2478
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr15, align 8, !dbg !2478
  %16 = load i64, ptr %__ptr15, align 8, !dbg !2478
  %17 = load i32, ptr %cpu.addr, align 4, !dbg !2478
  %idxprom17 = sext i32 %17 to i64, !dbg !2478
  %arrayidx18 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom17, !dbg !2478
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !2478
  %add19 = add i64 %16, %18, !dbg !2478
  %19 = inttoptr i64 %add19 to ptr, !dbg !2478
  store ptr %19, ptr %tmp16, align 8, !dbg !2478
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr15) #16, !dbg !2476
  %20 = load ptr, ptr %tmp16, align 8, !dbg !2478
  store ptr %20, ptr %tmp14, align 8, !dbg !2477
  %21 = load ptr, ptr %tmp14, align 8, !dbg !2476
  %info_list20 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %21, i32 0, i32 0, !dbg !2479
  %22 = load ptr, ptr %info_list20, align 8, !dbg !2479
  %tobool = icmp ne ptr %22, null, !dbg !2479
  br i1 %tobool, label %if.end, label %if.then, !dbg !2480

if.then:                                          ; preds = %do.end13
  br label %do.body21, !dbg !2481

do.body21:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify22) #16, !dbg !2482
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify22, metadata !2459, metadata !DIExpression()), !dbg !2482
  store ptr null, ptr %__vpp_verify22, align 8, !dbg !2482
  %23 = load ptr, ptr %__vpp_verify22, align 8, !dbg !2482
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify22) #16, !dbg !2481
  br label %do.end23, !dbg !2482

do.end23:                                         ; preds = %do.body21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr25) #16, !dbg !2483
  call void @llvm.dbg.declare(metadata ptr %__ptr25, metadata !2463, metadata !DIExpression()), !dbg !2483
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr25, align 8, !dbg !2483
  %24 = load i64, ptr %__ptr25, align 8, !dbg !2483
  %25 = load i32, ptr %cpu.addr, align 4, !dbg !2483
  %idxprom27 = sext i32 %25 to i64, !dbg !2483
  %arrayidx28 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom27, !dbg !2483
  %26 = load i64, ptr %arrayidx28, align 8, !dbg !2483
  %add29 = add i64 %24, %26, !dbg !2483
  %27 = inttoptr i64 %add29 to ptr, !dbg !2483
  store ptr %27, ptr %tmp26, align 8, !dbg !2483
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr25) #16, !dbg !2481
  %28 = load ptr, ptr %tmp26, align 8, !dbg !2483
  store ptr %28, ptr %tmp24, align 8, !dbg !2482
  %29 = load ptr, ptr %tmp24, align 8, !dbg !2481
  %num_leaves30 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %29, i32 0, i32 2, !dbg !2484
  store i32 0, ptr %num_leaves30, align 4, !dbg !2485
  store i32 -12, ptr %retval, align 4, !dbg !2486
  br label %return, !dbg !2486

if.end:                                           ; preds = %do.end13
  store i32 0, ptr %retval, align 4, !dbg !2487
  br label %return, !dbg !2487

return:                                           ; preds = %if.end, %do.end23
  %30 = load i32, ptr %retval, align 4, !dbg !2488
  ret i32 %30, !dbg !2488
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @detect_cache_attributes(i32 noundef %cpu) #0 align 16 !dbg !2489 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2492, metadata !DIExpression()), !dbg !2496
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2497
  %call = call i32 @init_level_allocate_ci(i32 noundef %0) #17, !dbg !2498
  store i32 %call, ptr %ret, align 4, !dbg !2499
  %1 = load i32, ptr %ret, align 4, !dbg !2500
  %tobool = icmp ne i32 %1, 0, !dbg !2500
  br i1 %tobool, label %if.then, label %if.end, !dbg !2502

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !2503
  store i32 %2, ptr %retval, align 4, !dbg !2504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2504

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !2505
  %call1 = call zeroext i1 @last_level_cache_is_valid(i32 noundef %3) #17, !dbg !2507
  br i1 %call1, label %if.end7, label %if.then2, !dbg !2508

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !2509
  %call3 = call i32 @populate_cache_leaves(i32 noundef %4) #17, !dbg !2511
  store i32 %call3, ptr %ret, align 4, !dbg !2512
  %5 = load i32, ptr %ret, align 4, !dbg !2513
  %tobool4 = icmp ne i32 %5, 0, !dbg !2513
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2515

if.then5:                                         ; preds = %if.then2
  br label %free_ci, !dbg !2516

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !2517

if.end7:                                          ; preds = %if.end6, %if.end
  %6 = load i32, ptr %cpu.addr, align 4, !dbg !2518
  %call8 = call i32 @cache_shared_cpu_map_setup(i32 noundef %6) #17, !dbg !2519
  store i32 %call8, ptr %ret, align 4, !dbg !2520
  %7 = load i32, ptr %ret, align 4, !dbg !2521
  %tobool9 = icmp ne i32 %7, 0, !dbg !2521
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2523

if.then10:                                        ; preds = %if.end7
  br label %do.body, !dbg !2524

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !2527

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2527

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %cpu.addr, align 4, !dbg !2524
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %8) #19, !dbg !2524
  store i32 %call11, ptr %tmp, align 4, !dbg !2527
  %9 = load i32, ptr %tmp, align 4, !dbg !2524
  br label %free_ci, !dbg !2529

if.end12:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !2530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2530

free_ci:                                          ; preds = %do.end, %if.then5
  call void @llvm.dbg.label(metadata !2493), !dbg !2531
  %10 = load i32, ptr %cpu.addr, align 4, !dbg !2532
  call void @free_cache_attributes(i32 noundef %10) #17, !dbg !2533
  %11 = load i32, ptr %ret, align 4, !dbg !2534
  store i32 %11, ptr %retval, align 4, !dbg !2535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2535

cleanup:                                          ; preds = %free_ci, %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2536
  %12 = load i32, ptr %retval, align 4, !dbg !2536
  ret i32 %12, !dbg !2536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @init_level_allocate_ci(i32 noundef %cpu) #3 align 16 !dbg !2537 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %early_leaves = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__ptr7 = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %__vpp_verify13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__ptr17 = alloca i64, align 8
  %tmp18 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify25 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  %__ptr29 = alloca i64, align 8
  %tmp30 = alloca ptr, align 8
  %__vpp_verify39 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %__ptr43 = alloca i64, align 8
  %tmp44 = alloca ptr, align 8
  %__vpp_verify50 = alloca ptr, align 8
  %tmp53 = alloca ptr, align 8
  %__ptr54 = alloca i64, align 8
  %tmp55 = alloca ptr, align 8
  %__vpp_verify62 = alloca ptr, align 8
  %tmp65 = alloca ptr, align 8
  %__ptr66 = alloca i64, align 8
  %tmp67 = alloca ptr, align 8
  %__vpp_verify76 = alloca ptr, align 8
  %tmp79 = alloca ptr, align 8
  %__ptr80 = alloca i64, align 8
  %tmp81 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2539, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.start.p0(i64 4, ptr %early_leaves) #16, !dbg !2585
  call void @llvm.dbg.declare(metadata ptr %early_leaves, metadata !2540, metadata !DIExpression()), !dbg !2586
  br label %do.body, !dbg !2587

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2588
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2541, metadata !DIExpression()), !dbg !2588
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2588
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2587
  br label %do.cond, !dbg !2588

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2588

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2589
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2544, metadata !DIExpression()), !dbg !2589
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !2589
  %1 = load i64, ptr %__ptr, align 8, !dbg !2589
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2589
  %idxprom = zext i32 %2 to i64, !dbg !2589
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2589
  %3 = load i64, ptr %arrayidx, align 8, !dbg !2589
  %add = add i64 %1, %3, !dbg !2589
  %4 = inttoptr i64 %add to ptr, !dbg !2589
  store ptr %4, ptr %tmp1, align 8, !dbg !2589
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2587
  %5 = load ptr, ptr %tmp1, align 8, !dbg !2589
  store ptr %5, ptr %tmp, align 8, !dbg !2588
  %6 = load ptr, ptr %tmp, align 8, !dbg !2587
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %6, i32 0, i32 2, !dbg !2590
  %7 = load i32, ptr %num_leaves, align 4, !dbg !2590
  store i32 %7, ptr %early_leaves, align 4, !dbg !2586
  br label %do.body2, !dbg !2591

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !2592
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !2546, metadata !DIExpression()), !dbg !2592
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !2592
  %8 = load ptr, ptr %__vpp_verify3, align 8, !dbg !2592
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !2591
  br label %do.cond4, !dbg !2592

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !2592

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr7) #16, !dbg !2593
  call void @llvm.dbg.declare(metadata ptr %__ptr7, metadata !2550, metadata !DIExpression()), !dbg !2593
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr7, align 8, !dbg !2593
  %9 = load i64, ptr %__ptr7, align 8, !dbg !2593
  %10 = load i32, ptr %cpu.addr, align 4, !dbg !2593
  %idxprom9 = zext i32 %10 to i64, !dbg !2593
  %arrayidx10 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom9, !dbg !2593
  %11 = load i64, ptr %arrayidx10, align 8, !dbg !2593
  %add11 = add i64 %9, %11, !dbg !2593
  %12 = inttoptr i64 %add11 to ptr, !dbg !2593
  store ptr %12, ptr %tmp8, align 8, !dbg !2593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr7) #16, !dbg !2591
  %13 = load ptr, ptr %tmp8, align 8, !dbg !2593
  store ptr %13, ptr %tmp6, align 8, !dbg !2592
  %14 = load ptr, ptr %tmp6, align 8, !dbg !2591
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, ptr %14, i32 0, i32 0, !dbg !2594
  %15 = load ptr, ptr %info_list, align 8, !dbg !2594
  %tobool = icmp ne ptr %15, null, !dbg !2594
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2595

land.lhs.true:                                    ; preds = %do.end5
  br label %do.body12, !dbg !2596

do.body12:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #16, !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !2552, metadata !DIExpression()), !dbg !2597
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !2597
  %16 = load ptr, ptr %__vpp_verify13, align 8, !dbg !2597
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #16, !dbg !2596
  br label %do.cond14, !dbg !2597

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !2597

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr17) #16, !dbg !2598
  call void @llvm.dbg.declare(metadata ptr %__ptr17, metadata !2555, metadata !DIExpression()), !dbg !2598
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr17, align 8, !dbg !2598
  %17 = load i64, ptr %__ptr17, align 8, !dbg !2598
  %18 = load i32, ptr %cpu.addr, align 4, !dbg !2598
  %idxprom19 = zext i32 %18 to i64, !dbg !2598
  %arrayidx20 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom19, !dbg !2598
  %19 = load i64, ptr %arrayidx20, align 8, !dbg !2598
  %add21 = add i64 %17, %19, !dbg !2598
  %20 = inttoptr i64 %add21 to ptr, !dbg !2598
  store ptr %20, ptr %tmp18, align 8, !dbg !2598
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr17) #16, !dbg !2596
  %21 = load ptr, ptr %tmp18, align 8, !dbg !2598
  store ptr %21, ptr %tmp16, align 8, !dbg !2597
  %22 = load ptr, ptr %tmp16, align 8, !dbg !2596
  %early_ci_levels = getelementptr inbounds %struct.cpu_cacheinfo, ptr %22, i32 0, i32 4, !dbg !2599
  %23 = load i8, ptr %early_ci_levels, align 1, !dbg !2599, !range !2281, !noundef !578
  %tobool22 = trunc i8 %23 to i1, !dbg !2599
  br i1 %tobool22, label %if.end, label %if.then, !dbg !2600

if.then:                                          ; preds = %do.end15
  store i32 0, ptr %retval, align 4, !dbg !2601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2601

if.end:                                           ; preds = %do.end15, %do.end5
  %24 = load i32, ptr %cpu.addr, align 4, !dbg !2602
  %call = call i32 @init_cache_level(i32 noundef %24) #17, !dbg !2603
  %tobool23 = icmp ne i32 %call, 0, !dbg !2603
  br i1 %tobool23, label %if.then36, label %lor.lhs.false, !dbg !2604

lor.lhs.false:                                    ; preds = %if.end
  br label %do.body24, !dbg !2605

do.body24:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify25) #16, !dbg !2606
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify25, metadata !2557, metadata !DIExpression()), !dbg !2606
  store ptr null, ptr %__vpp_verify25, align 8, !dbg !2606
  %25 = load ptr, ptr %__vpp_verify25, align 8, !dbg !2606
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify25) #16, !dbg !2605
  br label %do.cond26, !dbg !2606

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !2606

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr29) #16, !dbg !2607
  call void @llvm.dbg.declare(metadata ptr %__ptr29, metadata !2561, metadata !DIExpression()), !dbg !2607
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr29, align 8, !dbg !2607
  %26 = load i64, ptr %__ptr29, align 8, !dbg !2607
  %27 = load i32, ptr %cpu.addr, align 4, !dbg !2607
  %idxprom31 = zext i32 %27 to i64, !dbg !2607
  %arrayidx32 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom31, !dbg !2607
  %28 = load i64, ptr %arrayidx32, align 8, !dbg !2607
  %add33 = add i64 %26, %28, !dbg !2607
  %29 = inttoptr i64 %add33 to ptr, !dbg !2607
  store ptr %29, ptr %tmp30, align 8, !dbg !2607
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr29) #16, !dbg !2605
  %30 = load ptr, ptr %tmp30, align 8, !dbg !2607
  store ptr %30, ptr %tmp28, align 8, !dbg !2606
  %31 = load ptr, ptr %tmp28, align 8, !dbg !2605
  %num_leaves34 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %31, i32 0, i32 2, !dbg !2608
  %32 = load i32, ptr %num_leaves34, align 4, !dbg !2608
  %tobool35 = icmp ne i32 %32, 0, !dbg !2608
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !2609

if.then36:                                        ; preds = %do.end27, %if.end
  store i32 -2, ptr %retval, align 4, !dbg !2610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2610

if.end37:                                         ; preds = %do.end27
  br label %do.body38, !dbg !2611

do.body38:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify39) #16, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify39, metadata !2563, metadata !DIExpression()), !dbg !2612
  store ptr null, ptr %__vpp_verify39, align 8, !dbg !2612
  %33 = load ptr, ptr %__vpp_verify39, align 8, !dbg !2612
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify39) #16, !dbg !2611
  br label %do.cond40, !dbg !2612

do.cond40:                                        ; preds = %do.body38
  br label %do.end41, !dbg !2612

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr43) #16, !dbg !2613
  call void @llvm.dbg.declare(metadata ptr %__ptr43, metadata !2566, metadata !DIExpression()), !dbg !2613
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr43, align 8, !dbg !2613
  %34 = load i64, ptr %__ptr43, align 8, !dbg !2613
  %35 = load i32, ptr %cpu.addr, align 4, !dbg !2613
  %idxprom45 = zext i32 %35 to i64, !dbg !2613
  %arrayidx46 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom45, !dbg !2613
  %36 = load i64, ptr %arrayidx46, align 8, !dbg !2613
  %add47 = add i64 %34, %36, !dbg !2613
  %37 = inttoptr i64 %add47 to ptr, !dbg !2613
  store ptr %37, ptr %tmp44, align 8, !dbg !2613
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr43) #16, !dbg !2611
  %38 = load ptr, ptr %tmp44, align 8, !dbg !2613
  store ptr %38, ptr %tmp42, align 8, !dbg !2612
  %39 = load ptr, ptr %tmp42, align 8, !dbg !2611
  %early_ci_levels48 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %39, i32 0, i32 4, !dbg !2614
  store i8 0, ptr %early_ci_levels48, align 1, !dbg !2615
  br label %do.body49, !dbg !2616

do.body49:                                        ; preds = %do.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify50) #16, !dbg !2617
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify50, metadata !2568, metadata !DIExpression()), !dbg !2617
  store ptr null, ptr %__vpp_verify50, align 8, !dbg !2617
  %40 = load ptr, ptr %__vpp_verify50, align 8, !dbg !2617
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify50) #16, !dbg !2616
  br label %do.cond51, !dbg !2617

do.cond51:                                        ; preds = %do.body49
  br label %do.end52, !dbg !2617

do.end52:                                         ; preds = %do.cond51
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr54) #16, !dbg !2618
  call void @llvm.dbg.declare(metadata ptr %__ptr54, metadata !2572, metadata !DIExpression()), !dbg !2618
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr54, align 8, !dbg !2618
  %41 = load i64, ptr %__ptr54, align 8, !dbg !2618
  %42 = load i32, ptr %cpu.addr, align 4, !dbg !2618
  %idxprom56 = zext i32 %42 to i64, !dbg !2618
  %arrayidx57 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom56, !dbg !2618
  %43 = load i64, ptr %arrayidx57, align 8, !dbg !2618
  %add58 = add i64 %41, %43, !dbg !2618
  %44 = inttoptr i64 %add58 to ptr, !dbg !2618
  store ptr %44, ptr %tmp55, align 8, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr54) #16, !dbg !2616
  %45 = load ptr, ptr %tmp55, align 8, !dbg !2618
  store ptr %45, ptr %tmp53, align 8, !dbg !2617
  %46 = load ptr, ptr %tmp53, align 8, !dbg !2616
  %num_leaves59 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %46, i32 0, i32 2, !dbg !2619
  %47 = load i32, ptr %num_leaves59, align 4, !dbg !2619
  %48 = load i32, ptr %early_leaves, align 4, !dbg !2620
  %cmp = icmp ule i32 %47, %48, !dbg !2621
  br i1 %cmp, label %land.lhs.true60, label %if.end74, !dbg !2622

land.lhs.true60:                                  ; preds = %do.end52
  br label %do.body61, !dbg !2623

do.body61:                                        ; preds = %land.lhs.true60
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify62) #16, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify62, metadata !2574, metadata !DIExpression()), !dbg !2624
  store ptr null, ptr %__vpp_verify62, align 8, !dbg !2624
  %49 = load ptr, ptr %__vpp_verify62, align 8, !dbg !2624
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify62) #16, !dbg !2623
  br label %do.cond63, !dbg !2624

do.cond63:                                        ; preds = %do.body61
  br label %do.end64, !dbg !2624

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr66) #16, !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %__ptr66, metadata !2577, metadata !DIExpression()), !dbg !2625
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr66, align 8, !dbg !2625
  %50 = load i64, ptr %__ptr66, align 8, !dbg !2625
  %51 = load i32, ptr %cpu.addr, align 4, !dbg !2625
  %idxprom68 = zext i32 %51 to i64, !dbg !2625
  %arrayidx69 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom68, !dbg !2625
  %52 = load i64, ptr %arrayidx69, align 8, !dbg !2625
  %add70 = add i64 %50, %52, !dbg !2625
  %53 = inttoptr i64 %add70 to ptr, !dbg !2625
  store ptr %53, ptr %tmp67, align 8, !dbg !2625
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr66) #16, !dbg !2623
  %54 = load ptr, ptr %tmp67, align 8, !dbg !2625
  store ptr %54, ptr %tmp65, align 8, !dbg !2624
  %55 = load ptr, ptr %tmp65, align 8, !dbg !2623
  %info_list71 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %55, i32 0, i32 0, !dbg !2626
  %56 = load ptr, ptr %info_list71, align 8, !dbg !2626
  %tobool72 = icmp ne ptr %56, null, !dbg !2626
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !2627

if.then73:                                        ; preds = %do.end64
  store i32 0, ptr %retval, align 4, !dbg !2628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2628

if.end74:                                         ; preds = %do.end64, %do.end52
  br label %do.body75, !dbg !2629

do.body75:                                        ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify76) #16, !dbg !2630
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify76, metadata !2579, metadata !DIExpression()), !dbg !2630
  store ptr null, ptr %__vpp_verify76, align 8, !dbg !2630
  %57 = load ptr, ptr %__vpp_verify76, align 8, !dbg !2630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify76) #16, !dbg !2629
  br label %do.cond77, !dbg !2630

do.cond77:                                        ; preds = %do.body75
  br label %do.end78, !dbg !2630

do.end78:                                         ; preds = %do.cond77
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr80) #16, !dbg !2631
  call void @llvm.dbg.declare(metadata ptr %__ptr80, metadata !2582, metadata !DIExpression()), !dbg !2631
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr80, align 8, !dbg !2631
  %58 = load i64, ptr %__ptr80, align 8, !dbg !2631
  %59 = load i32, ptr %cpu.addr, align 4, !dbg !2631
  %idxprom82 = zext i32 %59 to i64, !dbg !2631
  %arrayidx83 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom82, !dbg !2631
  %60 = load i64, ptr %arrayidx83, align 8, !dbg !2631
  %add84 = add i64 %58, %60, !dbg !2631
  %61 = inttoptr i64 %add84 to ptr, !dbg !2631
  store ptr %61, ptr %tmp81, align 8, !dbg !2631
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr80) #16, !dbg !2629
  %62 = load ptr, ptr %tmp81, align 8, !dbg !2631
  store ptr %62, ptr %tmp79, align 8, !dbg !2630
  %63 = load ptr, ptr %tmp79, align 8, !dbg !2629
  %info_list85 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %63, i32 0, i32 0, !dbg !2632
  %64 = load ptr, ptr %info_list85, align 8, !dbg !2632
  call void @kfree(ptr noundef %64) #17, !dbg !2633
  %65 = load i32, ptr %cpu.addr, align 4, !dbg !2634
  %call86 = call i32 @allocate_cache_info(i32 noundef %65) #17, !dbg !2635
  store i32 %call86, ptr %retval, align 4, !dbg !2636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2636

cleanup:                                          ; preds = %do.end78, %if.then73, %if.then36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %early_leaves) #16, !dbg !2637
  %66 = load i32, ptr %retval, align 4, !dbg !2637
  ret i32 %66, !dbg !2637
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cache_shared_cpu_map_setup(i32 noundef %cpu) #0 align 16 !dbg !2638 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %this_cpu_ci = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  %sib_leaf = alloca ptr, align 8
  %index = alloca i32, align 4
  %sib_index = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %i = alloca i32, align 4
  %__vpp_verify11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__ptr15 = alloca i64, align 8
  %tmp16 = alloca ptr, align 8
  %sib_cpu_ci = alloca ptr, align 8
  %__vpp_verify35 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  %__ptr39 = alloca i64, align 8
  %tmp40 = alloca ptr, align 8
  %__vpp_verify49 = alloca ptr, align 8
  %tmp52 = alloca ptr, align 8
  %__ptr53 = alloca i64, align 8
  %tmp54 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2640, metadata !DIExpression()), !dbg !2678
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_cpu_ci) #16, !dbg !2679
  call void @llvm.dbg.declare(metadata ptr %this_cpu_ci, metadata !2641, metadata !DIExpression()), !dbg !2680
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2681
  %call = call ptr @get_cpu_cacheinfo(i32 noundef %0) #17, !dbg !2682
  store ptr %call, ptr %this_cpu_ci, align 8, !dbg !2680
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !2683
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !2642, metadata !DIExpression()), !dbg !2684
  call void @llvm.lifetime.start.p0(i64 8, ptr %sib_leaf) #16, !dbg !2683
  call void @llvm.dbg.declare(metadata ptr %sib_leaf, metadata !2643, metadata !DIExpression()), !dbg !2685
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2644, metadata !DIExpression()), !dbg !2687
  call void @llvm.lifetime.start.p0(i64 4, ptr %sib_index) #16, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %sib_index, metadata !2645, metadata !DIExpression()), !dbg !2688
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2689
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2646, metadata !DIExpression()), !dbg !2690
  store i32 0, ptr %ret, align 4, !dbg !2690
  %1 = load ptr, ptr %this_cpu_ci, align 8, !dbg !2691
  %cpu_map_populated = getelementptr inbounds %struct.cpu_cacheinfo, ptr %1, i32 0, i32 3, !dbg !2693
  %2 = load i8, ptr %cpu_map_populated, align 8, !dbg !2693, !range !2281, !noundef !578
  %tobool = trunc i8 %2 to i1, !dbg !2693
  br i1 %tobool, label %if.then, label %if.end, !dbg !2694

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2695

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !2696
  %call1 = call zeroext i1 @last_level_cache_is_valid(i32 noundef %3) #17, !dbg !2698
  br i1 %call1, label %if.end8, label %land.lhs.true, !dbg !2699

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8, ptr @use_arch_info, align 1, !dbg !2700, !range !2281, !noundef !578
  %tobool2 = trunc i8 %4 to i1, !dbg !2700
  br i1 %tobool2, label %if.end8, label %if.then3, !dbg !2701

if.then3:                                         ; preds = %land.lhs.true
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !2702
  %call4 = call i32 @cache_setup_properties(i32 noundef %5) #17, !dbg !2704
  store i32 %call4, ptr %ret, align 4, !dbg !2705
  %6 = load i32, ptr %ret, align 4, !dbg !2706
  %tobool5 = icmp ne i32 %6, 0, !dbg !2706
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2708

if.then6:                                         ; preds = %if.then3
  %7 = load i32, ptr %ret, align 4, !dbg !2709
  store i32 %7, ptr %retval, align 4, !dbg !2710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2710

if.end7:                                          ; preds = %if.then3
  br label %if.end8, !dbg !2711

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %if.end
  store i32 0, ptr %index, align 4, !dbg !2712
  br label %for.cond, !dbg !2713

for.cond:                                         ; preds = %for.inc83, %if.end8
  %8 = load i32, ptr %index, align 4, !dbg !2714
  br label %do.body, !dbg !2715

do.body:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2716
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2647, metadata !DIExpression()), !dbg !2716
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2716
  %9 = load ptr, ptr %__vpp_verify, align 8, !dbg !2716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2715
  br label %do.cond, !dbg !2716

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2716

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2652, metadata !DIExpression()), !dbg !2717
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !2717
  %10 = load i64, ptr %__ptr, align 8, !dbg !2717
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !2717
  %idxprom = zext i32 %11 to i64, !dbg !2717
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2717
  %12 = load i64, ptr %arrayidx, align 8, !dbg !2717
  %add = add i64 %10, %12, !dbg !2717
  %13 = inttoptr i64 %add to ptr, !dbg !2717
  store ptr %13, ptr %tmp9, align 8, !dbg !2717
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2715
  %14 = load ptr, ptr %tmp9, align 8, !dbg !2717
  store ptr %14, ptr %tmp, align 8, !dbg !2716
  %15 = load ptr, ptr %tmp, align 8, !dbg !2715
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %15, i32 0, i32 2, !dbg !2718
  %16 = load i32, ptr %num_leaves, align 4, !dbg !2718
  %cmp = icmp ult i32 %8, %16, !dbg !2719
  br i1 %cmp, label %for.body, label %for.end85, !dbg !2720

for.body:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !2721
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2654, metadata !DIExpression()), !dbg !2722
  br label %do.body10, !dbg !2723

do.body10:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify11) #16, !dbg !2724
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify11, metadata !2656, metadata !DIExpression()), !dbg !2724
  store ptr null, ptr %__vpp_verify11, align 8, !dbg !2724
  %17 = load ptr, ptr %__vpp_verify11, align 8, !dbg !2724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify11) #16, !dbg !2723
  br label %do.cond12, !dbg !2724

do.cond12:                                        ; preds = %do.body10
  br label %do.end13, !dbg !2724

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr15) #16, !dbg !2725
  call void @llvm.dbg.declare(metadata ptr %__ptr15, metadata !2659, metadata !DIExpression()), !dbg !2725
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr15, align 8, !dbg !2725
  %18 = load i64, ptr %__ptr15, align 8, !dbg !2725
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !2725
  %idxprom17 = zext i32 %19 to i64, !dbg !2725
  %arrayidx18 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom17, !dbg !2725
  %20 = load i64, ptr %arrayidx18, align 8, !dbg !2725
  %add19 = add i64 %18, %20, !dbg !2725
  %21 = inttoptr i64 %add19 to ptr, !dbg !2725
  store ptr %21, ptr %tmp16, align 8, !dbg !2725
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr15) #16, !dbg !2723
  %22 = load ptr, ptr %tmp16, align 8, !dbg !2725
  store ptr %22, ptr %tmp14, align 8, !dbg !2724
  %23 = load ptr, ptr %tmp14, align 8, !dbg !2723
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, ptr %23, i32 0, i32 0, !dbg !2726
  %24 = load ptr, ptr %info_list, align 8, !dbg !2726
  %25 = load i32, ptr %index, align 4, !dbg !2726
  %idx.ext = zext i32 %25 to i64, !dbg !2726
  %add.ptr = getelementptr %struct.cacheinfo, ptr %24, i64 %idx.ext, !dbg !2726
  store ptr %add.ptr, ptr %this_leaf, align 8, !dbg !2727
  %26 = load i32, ptr %cpu.addr, align 4, !dbg !2728
  %27 = load ptr, ptr %this_leaf, align 8, !dbg !2729
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, ptr %27, i32 0, i32 8, !dbg !2730
  call void @cpumask_set_cpu(i32 noundef %26, ptr noundef %shared_cpu_map) #17, !dbg !2731
  store i32 0, ptr %i, align 4, !dbg !2732
  br label %for.cond20, !dbg !2732

for.cond20:                                       ; preds = %for.inc75, %do.end13
  %28 = load i32, ptr %i, align 4, !dbg !2733
  %conv = zext i32 %28 to i64, !dbg !2733
  %call21 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !2733
  %conv22 = trunc i64 %call21 to i32, !dbg !2733
  store i32 %conv22, ptr %i, align 4, !dbg !2733
  %29 = load i32, ptr %i, align 4, !dbg !2733
  %cmp23 = icmp ult i32 %29, 64, !dbg !2733
  br i1 %cmp23, label %for.body25, label %for.end77, !dbg !2732

for.body25:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 8, ptr %sib_cpu_ci) #16, !dbg !2734
  call void @llvm.dbg.declare(metadata ptr %sib_cpu_ci, metadata !2661, metadata !DIExpression()), !dbg !2735
  %30 = load i32, ptr %i, align 4, !dbg !2736
  %call26 = call ptr @get_cpu_cacheinfo(i32 noundef %30) #17, !dbg !2737
  store ptr %call26, ptr %sib_cpu_ci, align 8, !dbg !2735
  %31 = load i32, ptr %i, align 4, !dbg !2738
  %32 = load i32, ptr %cpu.addr, align 4, !dbg !2740
  %cmp27 = icmp eq i32 %31, %32, !dbg !2741
  br i1 %cmp27, label %if.then31, label %lor.lhs.false, !dbg !2742

lor.lhs.false:                                    ; preds = %for.body25
  %33 = load ptr, ptr %sib_cpu_ci, align 8, !dbg !2743
  %info_list29 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %33, i32 0, i32 0, !dbg !2744
  %34 = load ptr, ptr %info_list29, align 8, !dbg !2744
  %tobool30 = icmp ne ptr %34, null, !dbg !2743
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !2745

if.then31:                                        ; preds = %lor.lhs.false, %for.body25
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2746

if.end32:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %sib_index, align 4, !dbg !2747
  br label %for.cond33, !dbg !2748

for.cond33:                                       ; preds = %for.inc, %if.end32
  %35 = load i32, ptr %sib_index, align 4, !dbg !2749
  br label %do.body34, !dbg !2750

do.body34:                                        ; preds = %for.cond33
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify35) #16, !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify35, metadata !2665, metadata !DIExpression()), !dbg !2751
  store ptr null, ptr %__vpp_verify35, align 8, !dbg !2751
  %36 = load ptr, ptr %__vpp_verify35, align 8, !dbg !2751
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify35) #16, !dbg !2750
  br label %do.cond36, !dbg !2751

do.cond36:                                        ; preds = %do.body34
  br label %do.end37, !dbg !2751

do.end37:                                         ; preds = %do.cond36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr39) #16, !dbg !2752
  call void @llvm.dbg.declare(metadata ptr %__ptr39, metadata !2670, metadata !DIExpression()), !dbg !2752
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr39, align 8, !dbg !2752
  %37 = load i64, ptr %__ptr39, align 8, !dbg !2752
  %38 = load i32, ptr %i, align 4, !dbg !2752
  %idxprom41 = zext i32 %38 to i64, !dbg !2752
  %arrayidx42 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom41, !dbg !2752
  %39 = load i64, ptr %arrayidx42, align 8, !dbg !2752
  %add43 = add i64 %37, %39, !dbg !2752
  %40 = inttoptr i64 %add43 to ptr, !dbg !2752
  store ptr %40, ptr %tmp40, align 8, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr39) #16, !dbg !2750
  %41 = load ptr, ptr %tmp40, align 8, !dbg !2752
  store ptr %41, ptr %tmp38, align 8, !dbg !2751
  %42 = load ptr, ptr %tmp38, align 8, !dbg !2750
  %num_leaves44 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %42, i32 0, i32 2, !dbg !2753
  %43 = load i32, ptr %num_leaves44, align 4, !dbg !2753
  %cmp45 = icmp ult i32 %35, %43, !dbg !2754
  br i1 %cmp45, label %for.body47, label %for.end, !dbg !2755

for.body47:                                       ; preds = %do.end37
  br label %do.body48, !dbg !2756

do.body48:                                        ; preds = %for.body47
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify49) #16, !dbg !2757
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify49, metadata !2672, metadata !DIExpression()), !dbg !2757
  store ptr null, ptr %__vpp_verify49, align 8, !dbg !2757
  %44 = load ptr, ptr %__vpp_verify49, align 8, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify49) #16, !dbg !2756
  br label %do.cond50, !dbg !2757

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !2757

do.end51:                                         ; preds = %do.cond50
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr53) #16, !dbg !2758
  call void @llvm.dbg.declare(metadata ptr %__ptr53, metadata !2676, metadata !DIExpression()), !dbg !2758
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr53, align 8, !dbg !2758
  %45 = load i64, ptr %__ptr53, align 8, !dbg !2758
  %46 = load i32, ptr %i, align 4, !dbg !2758
  %idxprom55 = zext i32 %46 to i64, !dbg !2758
  %arrayidx56 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom55, !dbg !2758
  %47 = load i64, ptr %arrayidx56, align 8, !dbg !2758
  %add57 = add i64 %45, %47, !dbg !2758
  %48 = inttoptr i64 %add57 to ptr, !dbg !2758
  store ptr %48, ptr %tmp54, align 8, !dbg !2758
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr53) #16, !dbg !2756
  %49 = load ptr, ptr %tmp54, align 8, !dbg !2758
  store ptr %49, ptr %tmp52, align 8, !dbg !2757
  %50 = load ptr, ptr %tmp52, align 8, !dbg !2756
  %info_list58 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %50, i32 0, i32 0, !dbg !2759
  %51 = load ptr, ptr %info_list58, align 8, !dbg !2759
  %52 = load i32, ptr %sib_index, align 4, !dbg !2759
  %idx.ext59 = zext i32 %52 to i64, !dbg !2759
  %add.ptr60 = getelementptr %struct.cacheinfo, ptr %51, i64 %idx.ext59, !dbg !2759
  store ptr %add.ptr60, ptr %sib_leaf, align 8, !dbg !2760
  %53 = load ptr, ptr %sib_leaf, align 8, !dbg !2761
  %level = getelementptr inbounds %struct.cacheinfo, ptr %53, i32 0, i32 2, !dbg !2763
  %54 = load i32, ptr %level, align 8, !dbg !2763
  %55 = load ptr, ptr %this_leaf, align 8, !dbg !2764
  %level61 = getelementptr inbounds %struct.cacheinfo, ptr %55, i32 0, i32 2, !dbg !2765
  %56 = load i32, ptr %level61, align 8, !dbg !2765
  %cmp62 = icmp ne i32 %54, %56, !dbg !2766
  br i1 %cmp62, label %if.then68, label %lor.lhs.false64, !dbg !2767

lor.lhs.false64:                                  ; preds = %do.end51
  %57 = load ptr, ptr %sib_leaf, align 8, !dbg !2768
  %type = getelementptr inbounds %struct.cacheinfo, ptr %57, i32 0, i32 1, !dbg !2769
  %58 = load i32, ptr %type, align 4, !dbg !2769
  %59 = load ptr, ptr %this_leaf, align 8, !dbg !2770
  %type65 = getelementptr inbounds %struct.cacheinfo, ptr %59, i32 0, i32 1, !dbg !2771
  %60 = load i32, ptr %type65, align 4, !dbg !2771
  %cmp66 = icmp ne i32 %58, %60, !dbg !2772
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !2773

if.then68:                                        ; preds = %lor.lhs.false64, %do.end51
  br label %for.inc, !dbg !2774

if.end69:                                         ; preds = %lor.lhs.false64
  %61 = load ptr, ptr %this_leaf, align 8, !dbg !2775
  %62 = load ptr, ptr %sib_leaf, align 8, !dbg !2777
  %call70 = call zeroext i1 @cache_leaves_are_shared(ptr noundef %61, ptr noundef %62) #17, !dbg !2778
  br i1 %call70, label %if.then71, label %if.end74, !dbg !2779

if.then71:                                        ; preds = %if.end69
  %63 = load i32, ptr %cpu.addr, align 4, !dbg !2780
  %64 = load ptr, ptr %sib_leaf, align 8, !dbg !2782
  %shared_cpu_map72 = getelementptr inbounds %struct.cacheinfo, ptr %64, i32 0, i32 8, !dbg !2783
  call void @cpumask_set_cpu(i32 noundef %63, ptr noundef %shared_cpu_map72) #17, !dbg !2784
  %65 = load i32, ptr %i, align 4, !dbg !2785
  %66 = load ptr, ptr %this_leaf, align 8, !dbg !2786
  %shared_cpu_map73 = getelementptr inbounds %struct.cacheinfo, ptr %66, i32 0, i32 8, !dbg !2787
  call void @cpumask_set_cpu(i32 noundef %65, ptr noundef %shared_cpu_map73) #17, !dbg !2788
  br label %for.end, !dbg !2789

if.end74:                                         ; preds = %if.end69
  br label %for.inc, !dbg !2790

for.inc:                                          ; preds = %if.end74, %if.then68
  %67 = load i32, ptr %sib_index, align 4, !dbg !2791
  %inc = add i32 %67, 1, !dbg !2791
  store i32 %inc, ptr %sib_index, align 4, !dbg !2791
  br label %for.cond33, !dbg !2792, !llvm.loop !2793

for.end:                                          ; preds = %if.then71, %do.end37
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2797
  br label %cleanup, !dbg !2797

cleanup:                                          ; preds = %for.end, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %sib_cpu_ci) #16, !dbg !2797
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 11, label %for.inc75
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc75, !dbg !2798

for.inc75:                                        ; preds = %cleanup.cont, %cleanup
  %68 = load i32, ptr %i, align 4, !dbg !2733
  %inc76 = add i32 %68, 1, !dbg !2733
  store i32 %inc76, ptr %i, align 4, !dbg !2733
  br label %for.cond20, !dbg !2733, !llvm.loop !2799

for.end77:                                        ; preds = %for.cond20
  %69 = load ptr, ptr %this_leaf, align 8, !dbg !2801
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, ptr %69, i32 0, i32 3, !dbg !2803
  %70 = load i32, ptr %coherency_line_size, align 4, !dbg !2803
  %71 = load i32, ptr @coherency_max_size, align 4, !dbg !2804
  %cmp78 = icmp ugt i32 %70, %71, !dbg !2805
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !2806

if.then80:                                        ; preds = %for.end77
  %72 = load ptr, ptr %this_leaf, align 8, !dbg !2807
  %coherency_line_size81 = getelementptr inbounds %struct.cacheinfo, ptr %72, i32 0, i32 3, !dbg !2808
  %73 = load i32, ptr %coherency_line_size81, align 4, !dbg !2808
  store i32 %73, ptr @coherency_max_size, align 4, !dbg !2809
  br label %if.end82, !dbg !2810

if.end82:                                         ; preds = %if.then80, %for.end77
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !2811
  br label %for.inc83, !dbg !2812

for.inc83:                                        ; preds = %if.end82
  %74 = load i32, ptr %index, align 4, !dbg !2813
  %inc84 = add i32 %74, 1, !dbg !2813
  store i32 %inc84, ptr %index, align 4, !dbg !2813
  br label %for.cond, !dbg !2814, !llvm.loop !2815

for.end85:                                        ; preds = %do.end
  %75 = load ptr, ptr %this_cpu_ci, align 8, !dbg !2817
  %cpu_map_populated86 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %75, i32 0, i32 3, !dbg !2818
  store i8 1, ptr %cpu_map_populated86, align 8, !dbg !2819
  store i32 0, ptr %retval, align 4, !dbg !2820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2820

cleanup87:                                        ; preds = %for.end85, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 4, ptr %sib_index) #16, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 8, ptr %sib_leaf) #16, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_cpu_ci) #16, !dbg !2821
  %76 = load i32, ptr %retval, align 4, !dbg !2821
  ret i32 %76, !dbg !2821

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2822 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cache_attributes(i32 noundef %cpu) #0 align 16 !dbg !2826 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2830, metadata !DIExpression()), !dbg !2837
  br label %do.body, !dbg !2838

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2831, metadata !DIExpression()), !dbg !2839
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2839
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2838
  br label %do.end, !dbg !2839

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2840
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2835, metadata !DIExpression()), !dbg !2840
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !2840
  %1 = load i64, ptr %__ptr, align 8, !dbg !2840
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2840
  %idxprom = zext i32 %2 to i64, !dbg !2840
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2840
  %3 = load i64, ptr %arrayidx, align 8, !dbg !2840
  %add = add i64 %1, %3, !dbg !2840
  %4 = inttoptr i64 %add to ptr, !dbg !2840
  store ptr %4, ptr %tmp1, align 8, !dbg !2840
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2838
  %5 = load ptr, ptr %tmp1, align 8, !dbg !2840
  store ptr %5, ptr %tmp, align 8, !dbg !2839
  %6 = load ptr, ptr %tmp, align 8, !dbg !2838
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, ptr %6, i32 0, i32 0, !dbg !2841
  %7 = load ptr, ptr %info_list, align 8, !dbg !2841
  %tobool = icmp ne ptr %7, null, !dbg !2841
  br i1 %tobool, label %if.end, label %if.then, !dbg !2842

if.then:                                          ; preds = %do.end
  br label %return, !dbg !2843

if.end:                                           ; preds = %do.end
  %8 = load i32, ptr %cpu.addr, align 4, !dbg !2844
  call void @cache_shared_cpu_map_remove(i32 noundef %8) #17, !dbg !2845
  br label %return, !dbg !2846

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2846
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden ptr @cache_get_priv_group(ptr noundef %this_leaf) #0 align 16 !dbg !2847 {
entry:
  %this_leaf.addr = alloca ptr, align 8
  store ptr %this_leaf, ptr %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %this_leaf.addr, metadata !2851, metadata !DIExpression()), !dbg !2852
  ret ptr null, !dbg !2853
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_cacheinfo__206_930_cacheinfo_sysfs_init6() #5 section ".init.text" align 16 !dbg !2854 {
entry:
  %call = call i32 @cacheinfo_sysfs_init() #19, !dbg !2855
  ret i32 %call, !dbg !2855
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @cacheinfo_sysfs_init() #5 section ".init.text" align 16 !dbg !2856 {
entry:
  %call = call i32 @cpuhp_setup_state(i32 noundef 201, ptr noundef @.str.2, ptr noundef @cacheinfo_cpu_online, ptr noundef @cacheinfo_cpu_pre_down) #17, !dbg !2857
  ret i32 %call, !dbg !2858
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2859 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2863, metadata !DIExpression()), !dbg !2866
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2864, metadata !DIExpression()), !dbg !2867
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2865, metadata !DIExpression()), !dbg !2868
  %0 = load i64, ptr %n.addr, align 8, !dbg !2869
  %1 = load i64, ptr %size.addr, align 8, !dbg !2870
  %2 = load i32, ptr %flags.addr, align 4, !dbg !2871
  %or = or i32 %2, 256, !dbg !2872
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #18, !dbg !2873
  ret ptr %call, !dbg !2874
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2875 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2877, metadata !DIExpression()), !dbg !2881
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2878, metadata !DIExpression()), !dbg !2882
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2879, metadata !DIExpression()), !dbg !2883
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !2884
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2880, metadata !DIExpression()), !dbg !2885
  %0 = load i64, ptr %n.addr, align 8, !dbg !2886
  %1 = load i64, ptr %size.addr, align 8, !dbg !2886
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2886
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2886
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2886
  store i64 %4, ptr %bytes, align 8, !dbg !2886
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !2886
  %lnot = xor i1 %call, true, !dbg !2886
  %lnot1 = xor i1 %lnot, true, !dbg !2886
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2886
  %conv = sext i32 %lnot.ext to i64, !dbg !2886
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2886
  %tobool = icmp ne i64 %expval, 0, !dbg !2886
  br i1 %tobool, label %if.then, label %if.end, !dbg !2888

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2889

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !2890
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !2892
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !2893

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !2894
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2895
  br i1 %8, label %if.then2, label %if.end4, !dbg !2896

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !2897
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2898
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !2899
  store ptr %call3, ptr %retval, align 8, !dbg !2900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2900

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !2901
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2902
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !2903
  store ptr %call5, ptr %retval, align 8, !dbg !2904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2904

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !2905
  %13 = load ptr, ptr %retval, align 8, !dbg !2905
  ret ptr %13, !dbg !2905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !2906 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2911, metadata !DIExpression()), !dbg !2912
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2913, !range !2281, !noundef !578
  %tobool = trunc i8 %0 to i1, !dbg !2913
  %lnot = xor i1 %tobool, true, !dbg !2913
  %lnot1 = xor i1 %lnot, true, !dbg !2913
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2913
  %conv = sext i32 %lnot.ext to i64, !dbg !2913
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2913
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2913
  ret i1 %tobool2, !dbg !2914
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !2915 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2919, metadata !DIExpression()), !dbg !2924
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2920, metadata !DIExpression()), !dbg !2925
  %0 = load i64, ptr %size.addr, align 8, !dbg !2926
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2927
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2928

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2929
  %tobool = icmp ne i64 %2, 0, !dbg !2929
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2930

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !2931
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2921, metadata !DIExpression()), !dbg !2932
  %3 = load i64, ptr %size.addr, align 8, !dbg !2933
  %cmp = icmp ugt i64 %3, 8192, !dbg !2935
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2936

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2937
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2938
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !2939
  store ptr %call, ptr %retval, align 8, !dbg !2940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2940

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2941
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !2941
  store i32 %call2, ptr %index, align 4, !dbg !2942
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2943
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2944
  %9 = ptrtoint ptr %8 to i64, !dbg !2944
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !2945
  %idxprom = zext i32 %call3 to i64, !dbg !2946
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2946
  %10 = load i32, ptr %index, align 4, !dbg !2947
  %idxprom4 = zext i32 %10 to i64, !dbg !2946
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2946
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2946
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2948
  %13 = load i64, ptr %size.addr, align 8, !dbg !2949
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !2950
  store ptr %call6, ptr %retval, align 8, !dbg !2951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2951

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !2952
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2953
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2954
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !2955
  store ptr %call8, ptr %retval, align 8, !dbg !2956
  br label %return, !dbg !2956

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2957
  ret ptr %16, !dbg !2957
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2958 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2959 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !2960 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2964, metadata !DIExpression()), !dbg !2966
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2965, metadata !DIExpression()), !dbg !2967
  %0 = load i64, ptr %size.addr, align 8, !dbg !2968
  %tobool = icmp ne i64 %0, 0, !dbg !2968
  br i1 %tobool, label %if.end, label %if.then, !dbg !2970

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2971
  br label %return, !dbg !2971

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2972
  %cmp = icmp ule i64 %1, 8, !dbg !2974
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2975

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2976
  br label %return, !dbg !2976

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2977
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2979
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2980

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2981
  %cmp4 = icmp ule i64 %3, 96, !dbg !2982
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2983

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2984
  br label %return, !dbg !2984

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2985
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2987
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2988

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2989
  %cmp9 = icmp ule i64 %5, 192, !dbg !2990
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2991

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2992
  br label %return, !dbg !2992

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2993
  %cmp12 = icmp ule i64 %6, 8, !dbg !2995
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2996

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2997
  br label %return, !dbg !2997

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2998
  %cmp15 = icmp ule i64 %7, 16, !dbg !3000
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3001

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3002
  br label %return, !dbg !3002

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3003
  %cmp18 = icmp ule i64 %8, 32, !dbg !3005
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3006

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3007
  br label %return, !dbg !3007

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3008
  %cmp21 = icmp ule i64 %9, 64, !dbg !3010
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3011

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3012
  br label %return, !dbg !3012

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3013
  %cmp24 = icmp ule i64 %10, 128, !dbg !3015
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3016

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3017
  br label %return, !dbg !3017

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3018
  %cmp27 = icmp ule i64 %11, 256, !dbg !3020
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3021

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3022
  br label %return, !dbg !3022

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3023
  %cmp30 = icmp ule i64 %12, 512, !dbg !3025
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3026

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3027
  br label %return, !dbg !3027

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3028
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3030
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3031

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3032
  br label %return, !dbg !3032

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3033
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3035
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3036

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3037
  br label %return, !dbg !3037

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3038
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3040
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3041

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3042
  br label %return, !dbg !3042

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3043
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3045
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3046

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3047
  br label %return, !dbg !3047

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3048
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3050
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3051

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3052
  br label %return, !dbg !3052

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3053
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3055
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3056

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3057
  br label %return, !dbg !3057

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3058
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3060
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3061

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3062
  br label %return, !dbg !3062

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3063
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3065
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3066

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3067
  br label %return, !dbg !3067

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3068
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3070
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3071

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3072
  br label %return, !dbg !3072

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3073
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3075
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3076

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3077
  br label %return, !dbg !3077

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3078
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3080
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3081

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3082
  br label %return, !dbg !3082

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3083
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3085
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3086

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3087
  br label %return, !dbg !3087

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3088, !range !2281, !noundef !578
  %tobool69 = trunc i8 %25 to i1, !dbg !3088
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3090

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3091

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #22, !dbg !3092, !srcloc !3095
  unreachable, !dbg !3092

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3096

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3097

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3098

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3100

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3098

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !3102, !srcloc !3104
  br label %do.end75, !dbg !3102

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3098

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3105
  br label %return, !dbg !3105

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3106
  ret i32 %26, !dbg !3106
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3107 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !3113 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3117, metadata !DIExpression()), !dbg !3119
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3118, metadata !DIExpression()), !dbg !3120
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3121
  %and = and i32 %0, 17, !dbg !3121
  %cmp = icmp eq i32 %and, 0, !dbg !3121
  %lnot = xor i1 %cmp, true, !dbg !3121
  %lnot1 = xor i1 %lnot, true, !dbg !3121
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3121
  %conv = sext i32 %lnot.ext to i64, !dbg !3121
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3121
  %tobool = icmp ne i64 %expval, 0, !dbg !3121
  br i1 %tobool, label %if.then, label %if.end, !dbg !3123

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3124
  br label %return, !dbg !3124

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3125
  %and2 = and i32 %1, 1, !dbg !3127
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3127
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3128

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3129
  br label %return, !dbg !3129

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3130
  br label %return, !dbg !3130

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3132
  ret i32 %2, !dbg !3132
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3133 dso_local void @__compiletime_assert_125() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3134 dso_local void @kfree(ptr noundef) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cache_setup_properties(i32 noundef %cpu) #0 align 16 !dbg !3137 {
entry:
  %cpu.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3142
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3140, metadata !DIExpression()), !dbg !3143
  store i32 0, ptr %ret, align 4, !dbg !3143
  %call = call zeroext i1 @of_have_populated_dt() #17, !dbg !3144
  br i1 %call, label %if.then, label %if.else, !dbg !3146

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3147
  %call1 = call i32 @cache_setup_of_node(i32 noundef %0) #17, !dbg !3148
  store i32 %call1, ptr %ret, align 4, !dbg !3149
  br label %if.end4, !dbg !3150

if.else:                                          ; preds = %entry
  %1 = load i32, ptr @acpi_disabled, align 4, !dbg !3151
  %tobool = icmp ne i32 %1, 0, !dbg !3151
  br i1 %tobool, label %if.end, label %if.then2, !dbg !3153

if.then2:                                         ; preds = %if.else
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !3154
  %call3 = call i32 @cache_setup_acpi(i32 noundef %2) #17, !dbg !3155
  store i32 %call3, ptr %ret, align 4, !dbg !3156
  br label %if.end, !dbg !3157

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %3 = load i32, ptr %ret, align 4, !dbg !3158
  %tobool5 = icmp ne i32 %3, 0, !dbg !3158
  br i1 %tobool5, label %land.lhs.true, label %if.end7, !dbg !3160

land.lhs.true:                                    ; preds = %if.end4
  br i1 false, label %if.then6, label %if.end7, !dbg !3161

if.then6:                                         ; preds = %land.lhs.true
  store i8 1, ptr @use_arch_info, align 1, !dbg !3162
  br label %if.end7, !dbg !3163

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end4
  %4 = load i32, ptr %ret, align 4, !dbg !3164
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3165
  ret i32 %4, !dbg !3166
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #11 align 16 !dbg !3167 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3172, metadata !DIExpression()), !dbg !3174
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !3173, metadata !DIExpression()), !dbg !3175
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3176
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !3177
  %conv = zext i32 %call to i64, !dbg !3177
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !3178
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3178
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3178
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !3179
  ret void, !dbg !3180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !3181 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3188, metadata !DIExpression()), !dbg !3194
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3189, metadata !DIExpression()), !dbg !3195
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3190, metadata !DIExpression()), !dbg !3196
  %0 = load i64, ptr %size.addr, align 8, !dbg !3197
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3197
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3197

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3197
  %cmp = icmp ule i64 %2, 64, !dbg !3197
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3197

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3197
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3197
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3198

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !3199
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3191, metadata !DIExpression()), !dbg !3200
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3201
  %5 = load i64, ptr %size.addr, align 8, !dbg !3201
  %cmp3 = icmp uge i64 %4, %5, !dbg !3201
  %lnot = xor i1 %cmp3, true, !dbg !3201
  %lnot4 = xor i1 %lnot, true, !dbg !3201
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3201
  %conv = sext i32 %lnot.ext to i64, !dbg !3201
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3201
  %tobool = icmp ne i64 %expval, 0, !dbg !3201
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3203

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3204
  store i64 %6, ptr %retval, align 8, !dbg !3205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3205

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3206
  %8 = load i64, ptr %7, align 8, !dbg !3207
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3208
  %shl = shl i64 1, %9, !dbg !3208
  %sub = sub i64 -1, %shl, !dbg !3208
  %add = add i64 %sub, 1, !dbg !3208
  %10 = load i64, ptr %size.addr, align 8, !dbg !3208
  %sub6 = sub i64 %10, 1, !dbg !3208
  %sub7 = sub i64 63, %sub6, !dbg !3208
  %shr = lshr i64 -1, %sub7, !dbg !3208
  %and = and i64 %add, %shr, !dbg !3208
  %add8 = add i64 0, %and, !dbg !3208
  %and9 = and i64 %8, %add8, !dbg !3209
  store i64 %and9, ptr %val, align 8, !dbg !3210
  %11 = load i64, ptr %val, align 8, !dbg !3211
  %tobool10 = icmp ne i64 %11, 0, !dbg !3211
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3211

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !3212
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3212
  br i1 %13, label %cond.true11, label %cond.false, !dbg !3212

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3212
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !3212
  %cast = trunc i64 %15 to i32, !dbg !3212
  %conv12 = sext i32 %cast to i64, !dbg !3212
  br label %cond.end, !dbg !3212

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !3212
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !3212
  br label %cond.end, !dbg !3212

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !3212
  br label %cond.end14, !dbg !3211

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !3213
  br label %cond.end14, !dbg !3211

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3211
  store i64 %cond15, ptr %retval, align 8, !dbg !3214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3214

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !3215
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !3216
  %19 = load i64, ptr %size.addr, align 8, !dbg !3217
  %20 = load i64, ptr %offset.addr, align 8, !dbg !3218
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !3219
  store i64 %call17, ptr %retval, align 8, !dbg !3220
  br label %return, !dbg !3220

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !3221
  ret i64 %21, !dbg !3221
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @of_have_populated_dt() #3 align 16 !dbg !3222 {
entry:
  ret i1 false, !dbg !3223
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cache_setup_of_node(i32 noundef %cpu) #3 align 16 !dbg !3224 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3226, metadata !DIExpression()), !dbg !3227
  ret i32 0, !dbg !3228
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !3229 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3236, metadata !DIExpression()), !dbg !3238
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3237, metadata !DIExpression()), !dbg !3239
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3240
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3241
  %div = sdiv i64 %1, 64, !dbg !3241
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3242
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !3243
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3244
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3245
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !3246
  ret void, !dbg !3247
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #11 align 16 !dbg !3248 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3252, metadata !DIExpression()), !dbg !3253
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3254
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #17, !dbg !3255
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3256
  ret i32 %1, !dbg !3257
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !3258 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3266, metadata !DIExpression()), !dbg !3268
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3267, metadata !DIExpression()), !dbg !3269
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3270
  %1 = load i64, ptr %size.addr, align 8, !dbg !3271
  %conv = trunc i64 %1 to i32, !dbg !3271
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !3272
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3273
  %3 = load i64, ptr %size.addr, align 8, !dbg !3273
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !3273
  ret void, !dbg !3274
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !3275 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3278, metadata !DIExpression()), !dbg !3280
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3279, metadata !DIExpression()), !dbg !3281
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3282
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3284
  br i1 %1, label %if.then, label %if.else, !dbg !3285

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3286
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3286
  %shr = ashr i64 %3, 3, !dbg !3286
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3286
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3288
  %and = and i64 %4, 7, !dbg !3288
  %sh_prom = trunc i64 %and to i32, !dbg !3288
  %shl = shl i32 1, %sh_prom, !dbg !3288
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !3289, !srcloc !3290
  br label %if.end, !dbg !3291

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3292
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3294
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !3295, !srcloc !3296
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !3298 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3303, metadata !DIExpression()), !dbg !3305
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3304, metadata !DIExpression()), !dbg !3306
  ret i1 true, !dbg !3307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !3308 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3313, metadata !DIExpression()), !dbg !3316
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3314, metadata !DIExpression()), !dbg !3317
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3315, metadata !DIExpression()), !dbg !3318
  ret void, !dbg !3319
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #11 align 16 !dbg !3320 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3324, metadata !DIExpression()), !dbg !3326
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3325, metadata !DIExpression()), !dbg !3327
  ret void, !dbg !3328
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #11 align 16 !dbg !3329 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3333, metadata !DIExpression()), !dbg !3334
  %0 = load i64, ptr %word.addr, align 8, !dbg !3335
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #23, !dbg !3336, !srcloc !3337
  store i64 %1, ptr %word.addr, align 8, !dbg !3336
  %2 = load i64, ptr %word.addr, align 8, !dbg !3338
  ret i64 %2, !dbg !3339
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3340 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cache_shared_cpu_map_remove(i32 noundef %cpu) #0 align 16 !dbg !3341 {
entry:
  %cpu.addr = alloca i32, align 4
  %this_cpu_ci = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  %sib_leaf = alloca ptr, align 8
  %sibling = alloca i32, align 4
  %index = alloca i32, align 4
  %sib_index = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__ptr7 = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %sib_cpu_ci = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify24 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  %__ptr28 = alloca i64, align 8
  %tmp29 = alloca ptr, align 8
  %__vpp_verify38 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %__ptr42 = alloca i64, align 8
  %tmp43 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3343, metadata !DIExpression()), !dbg !3380
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_cpu_ci) #16, !dbg !3381
  call void @llvm.dbg.declare(metadata ptr %this_cpu_ci, metadata !3344, metadata !DIExpression()), !dbg !3382
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3383
  %call = call ptr @get_cpu_cacheinfo(i32 noundef %0) #17, !dbg !3384
  store ptr %call, ptr %this_cpu_ci, align 8, !dbg !3382
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !3345, metadata !DIExpression()), !dbg !3386
  call void @llvm.lifetime.start.p0(i64 8, ptr %sib_leaf) #16, !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %sib_leaf, metadata !3346, metadata !DIExpression()), !dbg !3387
  call void @llvm.lifetime.start.p0(i64 4, ptr %sibling) #16, !dbg !3388
  call void @llvm.dbg.declare(metadata ptr %sibling, metadata !3347, metadata !DIExpression()), !dbg !3389
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !3388
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3348, metadata !DIExpression()), !dbg !3390
  call void @llvm.lifetime.start.p0(i64 4, ptr %sib_index) #16, !dbg !3388
  call void @llvm.dbg.declare(metadata ptr %sib_index, metadata !3349, metadata !DIExpression()), !dbg !3391
  store i32 0, ptr %index, align 4, !dbg !3392
  br label %for.cond, !dbg !3393

for.cond:                                         ; preds = %for.inc67, %entry
  %1 = load i32, ptr %index, align 4, !dbg !3394
  br label %do.body, !dbg !3395

do.body:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3396
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3350, metadata !DIExpression()), !dbg !3396
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3396
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !3396
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3395
  br label %do.cond, !dbg !3396

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3396

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !3397
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3355, metadata !DIExpression()), !dbg !3397
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !3397
  %3 = load i64, ptr %__ptr, align 8, !dbg !3397
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !3397
  %idxprom = zext i32 %4 to i64, !dbg !3397
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3397
  %5 = load i64, ptr %arrayidx, align 8, !dbg !3397
  %add = add i64 %3, %5, !dbg !3397
  %6 = inttoptr i64 %add to ptr, !dbg !3397
  store ptr %6, ptr %tmp1, align 8, !dbg !3397
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !3395
  %7 = load ptr, ptr %tmp1, align 8, !dbg !3397
  store ptr %7, ptr %tmp, align 8, !dbg !3396
  %8 = load ptr, ptr %tmp, align 8, !dbg !3395
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %8, i32 0, i32 2, !dbg !3398
  %9 = load i32, ptr %num_leaves, align 4, !dbg !3398
  %cmp = icmp ult i32 %1, %9, !dbg !3399
  br i1 %cmp, label %for.body, label %for.end69, !dbg !3400

for.body:                                         ; preds = %do.end
  br label %do.body2, !dbg !3401

do.body2:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !3402
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !3357, metadata !DIExpression()), !dbg !3402
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !3402
  %10 = load ptr, ptr %__vpp_verify3, align 8, !dbg !3402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !3401
  br label %do.cond4, !dbg !3402

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !3402

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr7) #16, !dbg !3403
  call void @llvm.dbg.declare(metadata ptr %__ptr7, metadata !3361, metadata !DIExpression()), !dbg !3403
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr7, align 8, !dbg !3403
  %11 = load i64, ptr %__ptr7, align 8, !dbg !3403
  %12 = load i32, ptr %cpu.addr, align 4, !dbg !3403
  %idxprom9 = zext i32 %12 to i64, !dbg !3403
  %arrayidx10 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom9, !dbg !3403
  %13 = load i64, ptr %arrayidx10, align 8, !dbg !3403
  %add11 = add i64 %11, %13, !dbg !3403
  %14 = inttoptr i64 %add11 to ptr, !dbg !3403
  store ptr %14, ptr %tmp8, align 8, !dbg !3403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr7) #16, !dbg !3401
  %15 = load ptr, ptr %tmp8, align 8, !dbg !3403
  store ptr %15, ptr %tmp6, align 8, !dbg !3402
  %16 = load ptr, ptr %tmp6, align 8, !dbg !3401
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, ptr %16, i32 0, i32 0, !dbg !3404
  %17 = load ptr, ptr %info_list, align 8, !dbg !3404
  %18 = load i32, ptr %index, align 4, !dbg !3404
  %idx.ext = zext i32 %18 to i64, !dbg !3404
  %add.ptr = getelementptr %struct.cacheinfo, ptr %17, i64 %idx.ext, !dbg !3404
  store ptr %add.ptr, ptr %this_leaf, align 8, !dbg !3405
  store i32 0, ptr %sibling, align 4, !dbg !3406
  br label %for.cond12, !dbg !3406

for.cond12:                                       ; preds = %for.inc64, %do.end5
  %19 = load ptr, ptr %this_leaf, align 8, !dbg !3407
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, ptr %19, i32 0, i32 8, !dbg !3407
  %bits = getelementptr inbounds %struct.cpumask, ptr %shared_cpu_map, i32 0, i32 0, !dbg !3407
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3407
  %20 = load i32, ptr %sibling, align 4, !dbg !3407
  %conv = zext i32 %20 to i64, !dbg !3407
  %call13 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #17, !dbg !3407
  %conv14 = trunc i64 %call13 to i32, !dbg !3407
  store i32 %conv14, ptr %sibling, align 4, !dbg !3407
  %21 = load i32, ptr %sibling, align 4, !dbg !3407
  %cmp15 = icmp ult i32 %21, 64, !dbg !3407
  br i1 %cmp15, label %for.body17, label %for.end66, !dbg !3406

for.body17:                                       ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 8, ptr %sib_cpu_ci) #16, !dbg !3408
  call void @llvm.dbg.declare(metadata ptr %sib_cpu_ci, metadata !3363, metadata !DIExpression()), !dbg !3409
  %22 = load i32, ptr %sibling, align 4, !dbg !3410
  %call18 = call ptr @get_cpu_cacheinfo(i32 noundef %22) #17, !dbg !3411
  store ptr %call18, ptr %sib_cpu_ci, align 8, !dbg !3409
  %23 = load i32, ptr %sibling, align 4, !dbg !3412
  %24 = load i32, ptr %cpu.addr, align 4, !dbg !3414
  %cmp19 = icmp eq i32 %23, %24, !dbg !3415
  br i1 %cmp19, label %if.then, label %lor.lhs.false, !dbg !3416

lor.lhs.false:                                    ; preds = %for.body17
  %25 = load ptr, ptr %sib_cpu_ci, align 8, !dbg !3417
  %info_list21 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %25, i32 0, i32 0, !dbg !3418
  %26 = load ptr, ptr %info_list21, align 8, !dbg !3418
  %tobool = icmp ne ptr %26, null, !dbg !3417
  br i1 %tobool, label %if.end, label %if.then, !dbg !3419

if.then:                                          ; preds = %lor.lhs.false, %for.body17
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3420

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %sib_index, align 4, !dbg !3421
  br label %for.cond22, !dbg !3422

for.cond22:                                       ; preds = %for.inc, %if.end
  %27 = load i32, ptr %sib_index, align 4, !dbg !3423
  br label %do.body23, !dbg !3424

do.body23:                                        ; preds = %for.cond22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify24) #16, !dbg !3425
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify24, metadata !3367, metadata !DIExpression()), !dbg !3425
  store ptr null, ptr %__vpp_verify24, align 8, !dbg !3425
  %28 = load ptr, ptr %__vpp_verify24, align 8, !dbg !3425
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify24) #16, !dbg !3424
  br label %do.cond25, !dbg !3425

do.cond25:                                        ; preds = %do.body23
  br label %do.end26, !dbg !3425

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr28) #16, !dbg !3426
  call void @llvm.dbg.declare(metadata ptr %__ptr28, metadata !3372, metadata !DIExpression()), !dbg !3426
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr28, align 8, !dbg !3426
  %29 = load i64, ptr %__ptr28, align 8, !dbg !3426
  %30 = load i32, ptr %sibling, align 4, !dbg !3426
  %idxprom30 = zext i32 %30 to i64, !dbg !3426
  %arrayidx31 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom30, !dbg !3426
  %31 = load i64, ptr %arrayidx31, align 8, !dbg !3426
  %add32 = add i64 %29, %31, !dbg !3426
  %32 = inttoptr i64 %add32 to ptr, !dbg !3426
  store ptr %32, ptr %tmp29, align 8, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr28) #16, !dbg !3424
  %33 = load ptr, ptr %tmp29, align 8, !dbg !3426
  store ptr %33, ptr %tmp27, align 8, !dbg !3425
  %34 = load ptr, ptr %tmp27, align 8, !dbg !3424
  %num_leaves33 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %34, i32 0, i32 2, !dbg !3427
  %35 = load i32, ptr %num_leaves33, align 4, !dbg !3427
  %cmp34 = icmp ult i32 %27, %35, !dbg !3428
  br i1 %cmp34, label %for.body36, label %for.end, !dbg !3429

for.body36:                                       ; preds = %do.end26
  br label %do.body37, !dbg !3430

do.body37:                                        ; preds = %for.body36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify38) #16, !dbg !3431
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify38, metadata !3374, metadata !DIExpression()), !dbg !3431
  store ptr null, ptr %__vpp_verify38, align 8, !dbg !3431
  %36 = load ptr, ptr %__vpp_verify38, align 8, !dbg !3431
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify38) #16, !dbg !3430
  br label %do.cond39, !dbg !3431

do.cond39:                                        ; preds = %do.body37
  br label %do.end40, !dbg !3431

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr42) #16, !dbg !3432
  call void @llvm.dbg.declare(metadata ptr %__ptr42, metadata !3378, metadata !DIExpression()), !dbg !3432
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr42, align 8, !dbg !3432
  %37 = load i64, ptr %__ptr42, align 8, !dbg !3432
  %38 = load i32, ptr %sibling, align 4, !dbg !3432
  %idxprom44 = zext i32 %38 to i64, !dbg !3432
  %arrayidx45 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom44, !dbg !3432
  %39 = load i64, ptr %arrayidx45, align 8, !dbg !3432
  %add46 = add i64 %37, %39, !dbg !3432
  %40 = inttoptr i64 %add46 to ptr, !dbg !3432
  store ptr %40, ptr %tmp43, align 8, !dbg !3432
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr42) #16, !dbg !3430
  %41 = load ptr, ptr %tmp43, align 8, !dbg !3432
  store ptr %41, ptr %tmp41, align 8, !dbg !3431
  %42 = load ptr, ptr %tmp41, align 8, !dbg !3430
  %info_list47 = getelementptr inbounds %struct.cpu_cacheinfo, ptr %42, i32 0, i32 0, !dbg !3433
  %43 = load ptr, ptr %info_list47, align 8, !dbg !3433
  %44 = load i32, ptr %sib_index, align 4, !dbg !3433
  %idx.ext48 = zext i32 %44 to i64, !dbg !3433
  %add.ptr49 = getelementptr %struct.cacheinfo, ptr %43, i64 %idx.ext48, !dbg !3433
  store ptr %add.ptr49, ptr %sib_leaf, align 8, !dbg !3434
  %45 = load ptr, ptr %sib_leaf, align 8, !dbg !3435
  %level = getelementptr inbounds %struct.cacheinfo, ptr %45, i32 0, i32 2, !dbg !3437
  %46 = load i32, ptr %level, align 8, !dbg !3437
  %47 = load ptr, ptr %this_leaf, align 8, !dbg !3438
  %level50 = getelementptr inbounds %struct.cacheinfo, ptr %47, i32 0, i32 2, !dbg !3439
  %48 = load i32, ptr %level50, align 8, !dbg !3439
  %cmp51 = icmp ne i32 %46, %48, !dbg !3440
  br i1 %cmp51, label %if.then57, label %lor.lhs.false53, !dbg !3441

lor.lhs.false53:                                  ; preds = %do.end40
  %49 = load ptr, ptr %sib_leaf, align 8, !dbg !3442
  %type = getelementptr inbounds %struct.cacheinfo, ptr %49, i32 0, i32 1, !dbg !3443
  %50 = load i32, ptr %type, align 4, !dbg !3443
  %51 = load ptr, ptr %this_leaf, align 8, !dbg !3444
  %type54 = getelementptr inbounds %struct.cacheinfo, ptr %51, i32 0, i32 1, !dbg !3445
  %52 = load i32, ptr %type54, align 4, !dbg !3445
  %cmp55 = icmp ne i32 %50, %52, !dbg !3446
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !3447

if.then57:                                        ; preds = %lor.lhs.false53, %do.end40
  br label %for.inc, !dbg !3448

if.end58:                                         ; preds = %lor.lhs.false53
  %53 = load ptr, ptr %this_leaf, align 8, !dbg !3449
  %54 = load ptr, ptr %sib_leaf, align 8, !dbg !3451
  %call59 = call zeroext i1 @cache_leaves_are_shared(ptr noundef %53, ptr noundef %54) #17, !dbg !3452
  br i1 %call59, label %if.then60, label %if.end63, !dbg !3453

if.then60:                                        ; preds = %if.end58
  %55 = load i32, ptr %cpu.addr, align 4, !dbg !3454
  %56 = load ptr, ptr %sib_leaf, align 8, !dbg !3456
  %shared_cpu_map61 = getelementptr inbounds %struct.cacheinfo, ptr %56, i32 0, i32 8, !dbg !3457
  call void @cpumask_clear_cpu(i32 noundef %55, ptr noundef %shared_cpu_map61) #17, !dbg !3458
  %57 = load i32, ptr %sibling, align 4, !dbg !3459
  %58 = load ptr, ptr %this_leaf, align 8, !dbg !3460
  %shared_cpu_map62 = getelementptr inbounds %struct.cacheinfo, ptr %58, i32 0, i32 8, !dbg !3461
  call void @cpumask_clear_cpu(i32 noundef %57, ptr noundef %shared_cpu_map62) #17, !dbg !3462
  br label %for.end, !dbg !3463

if.end63:                                         ; preds = %if.end58
  br label %for.inc, !dbg !3464

for.inc:                                          ; preds = %if.end63, %if.then57
  %59 = load i32, ptr %sib_index, align 4, !dbg !3465
  %inc = add i32 %59, 1, !dbg !3465
  store i32 %inc, ptr %sib_index, align 4, !dbg !3465
  br label %for.cond22, !dbg !3466, !llvm.loop !3467

for.end:                                          ; preds = %if.then60, %do.end26
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3469
  br label %cleanup, !dbg !3469

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sib_cpu_ci) #16, !dbg !3469
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 11, label %for.inc64
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc64, !dbg !3470

for.inc64:                                        ; preds = %cleanup.cont, %cleanup
  %60 = load i32, ptr %sibling, align 4, !dbg !3407
  %inc65 = add i32 %60, 1, !dbg !3407
  store i32 %inc65, ptr %sibling, align 4, !dbg !3407
  br label %for.cond12, !dbg !3407, !llvm.loop !3471

for.end66:                                        ; preds = %for.cond12
  br label %for.inc67, !dbg !3473

for.inc67:                                        ; preds = %for.end66
  %61 = load i32, ptr %index, align 4, !dbg !3474
  %inc68 = add i32 %61, 1, !dbg !3474
  store i32 %inc68, ptr %index, align 4, !dbg !3474
  br label %for.cond, !dbg !3475, !llvm.loop !3476

for.end69:                                        ; preds = %do.end
  %62 = load ptr, ptr %this_cpu_ci, align 8, !dbg !3478
  %cpu_map_populated = getelementptr inbounds %struct.cpu_cacheinfo, ptr %62, i32 0, i32 3, !dbg !3479
  store i8 0, ptr %cpu_map_populated, align 8, !dbg !3480
  call void @llvm.lifetime.end.p0(i64 4, ptr %sib_index) #16, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 4, ptr %sibling) #16, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 8, ptr %sib_leaf) #16, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_cpu_ci) #16, !dbg !3481
  ret void, !dbg !3481

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear_cpu(i32 noundef %cpu, ptr noundef %dstp) #11 align 16 !dbg !3482 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3486, metadata !DIExpression()), !dbg !3488
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !3487, metadata !DIExpression()), !dbg !3489
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3490
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !3491
  %conv = zext i32 %call to i64, !dbg !3491
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !3492
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3492
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3492
  call void @clear_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !3493
  ret void, !dbg !3494
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !3495 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3497, metadata !DIExpression()), !dbg !3499
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3498, metadata !DIExpression()), !dbg !3500
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3501
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3502
  %div = sdiv i64 %1, 64, !dbg !3502
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3503
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !3504
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3505
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3506
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !3507
  ret void, !dbg !3508
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !3509 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3511, metadata !DIExpression()), !dbg !3513
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3512, metadata !DIExpression()), !dbg !3514
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3515
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3517
  br i1 %1, label %if.then, label %if.else, !dbg !3518

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3519
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3519
  %shr = ashr i64 %3, 3, !dbg !3519
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3519
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3521
  %and = and i64 %4, 7, !dbg !3521
  %sh_prom = trunc i64 %and to i32, !dbg !3521
  %shl = shl i32 1, %sh_prom, !dbg !3521
  %not = xor i32 %shl, -1, !dbg !3522
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #16, !dbg !3523, !srcloc !3524
  br label %if.end, !dbg !3525

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3526
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3528
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !3529, !srcloc !3530
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3531
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #3 align 16 !dbg !3532 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3537, metadata !DIExpression()), !dbg !3541
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3538, metadata !DIExpression()), !dbg !3542
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !3539, metadata !DIExpression()), !dbg !3543
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !3540, metadata !DIExpression()), !dbg !3544
  %0 = load i32, ptr %state.addr, align 4, !dbg !3545
  %1 = load ptr, ptr %name.addr, align 8, !dbg !3546
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !3547
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !3548
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #17, !dbg !3549
  ret i32 %call, !dbg !3550
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cacheinfo_cpu_online(i32 noundef %cpu) #0 align 16 !dbg !3551 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3553, metadata !DIExpression()), !dbg !3555
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !3556
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !3554, metadata !DIExpression()), !dbg !3557
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3558
  %call = call i32 @detect_cache_attributes(i32 noundef %0) #17, !dbg !3559
  store i32 %call, ptr %rc, align 4, !dbg !3557
  %1 = load i32, ptr %rc, align 4, !dbg !3560
  %tobool = icmp ne i32 %1, 0, !dbg !3560
  br i1 %tobool, label %if.then, label %if.end, !dbg !3562

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4, !dbg !3563
  store i32 %2, ptr %retval, align 4, !dbg !3564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3564

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !3565
  %call1 = call i32 @cache_add_dev(i32 noundef %3) #17, !dbg !3566
  store i32 %call1, ptr %rc, align 4, !dbg !3567
  %4 = load i32, ptr %rc, align 4, !dbg !3568
  %tobool2 = icmp ne i32 %4, 0, !dbg !3568
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3570

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !3571
  call void @free_cache_attributes(i32 noundef %5) #17, !dbg !3572
  br label %if.end4, !dbg !3572

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, ptr %rc, align 4, !dbg !3573
  store i32 %6, ptr %retval, align 4, !dbg !3574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3574

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !3575
  %7 = load i32, ptr %retval, align 4, !dbg !3575
  ret i32 %7, !dbg !3575
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cacheinfo_cpu_pre_down(i32 noundef %cpu) #0 align 16 !dbg !3576 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3578, metadata !DIExpression()), !dbg !3579
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3580
  %call = call zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %0, ptr noundef @cache_dev_map) #17, !dbg !3582
  br i1 %call, label %if.then, label %if.end, !dbg !3583

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3584
  call void @cpu_cache_sysfs_exit(i32 noundef %1) #17, !dbg !3585
  br label %if.end, !dbg !3585

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !3586
  call void @free_cache_attributes(i32 noundef %2) #17, !dbg !3587
  ret i32 0, !dbg !3588
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3589 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cache_add_dev(i32 noundef %cpu) #0 align 16 !dbg !3592 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %ci_dev = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  %cache_groups = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  %__vpp_verify4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__ptr8 = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %__vpp_verify16 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %__ptr20 = alloca i64, align 8
  %tmp21 = alloca ptr, align 8
  %__vpp_verify40 = alloca ptr, align 8
  %tmp43 = alloca ptr, align 8
  %__ptr44 = alloca i64, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3594, metadata !DIExpression()), !dbg !3625
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !3626
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3595, metadata !DIExpression()), !dbg !3627
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !3628
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !3596, metadata !DIExpression()), !dbg !3629
  call void @llvm.lifetime.start.p0(i64 8, ptr %ci_dev) #16, !dbg !3630
  call void @llvm.dbg.declare(metadata ptr %ci_dev, metadata !3597, metadata !DIExpression()), !dbg !3631
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !3630
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3598, metadata !DIExpression()), !dbg !3632
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !3633
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !3599, metadata !DIExpression()), !dbg !3634
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache_groups) #16, !dbg !3635
  call void @llvm.dbg.declare(metadata ptr %cache_groups, metadata !3600, metadata !DIExpression()), !dbg !3636
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3637
  %call = call i32 @cpu_cache_sysfs_init(i32 noundef %0) #17, !dbg !3638
  store i32 %call, ptr %rc, align 4, !dbg !3639
  %1 = load i32, ptr %rc, align 4, !dbg !3640
  %cmp = icmp slt i32 %1, 0, !dbg !3640
  %lnot = xor i1 %cmp, true, !dbg !3640
  %lnot1 = xor i1 %lnot, true, !dbg !3640
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3640
  %conv = sext i32 %lnot.ext to i64, !dbg !3640
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3640
  %tobool = icmp ne i64 %expval, 0, !dbg !3640
  br i1 %tobool, label %if.then, label %if.end, !dbg !3642

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4, !dbg !3643
  store i32 %2, ptr %retval, align 4, !dbg !3644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3644

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3645

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3646
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3601, metadata !DIExpression()), !dbg !3646
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3646
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3646
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3645
  br label %do.cond, !dbg !3646

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3646

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !3647
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3604, metadata !DIExpression()), !dbg !3647
  store i64 ptrtoint (ptr @ci_cache_dev to i64), ptr %__ptr, align 8, !dbg !3647
  %4 = load i64, ptr %__ptr, align 8, !dbg !3647
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !3647
  %idxprom = zext i32 %5 to i64, !dbg !3647
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3647
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3647
  %add = add i64 %4, %6, !dbg !3647
  %7 = inttoptr i64 %add to ptr, !dbg !3647
  store ptr %7, ptr %tmp2, align 8, !dbg !3647
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !3645
  %8 = load ptr, ptr %tmp2, align 8, !dbg !3647
  store ptr %8, ptr %tmp, align 8, !dbg !3646
  %9 = load ptr, ptr %tmp, align 8, !dbg !3645
  %10 = load ptr, ptr %9, align 8, !dbg !3648
  store ptr %10, ptr %parent, align 8, !dbg !3649
  store i32 0, ptr %i, align 4, !dbg !3650
  br label %for.cond, !dbg !3651

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i32, ptr %i, align 4, !dbg !3652
  br label %do.body3, !dbg !3653

do.body3:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !3606, metadata !DIExpression()), !dbg !3654
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !3654
  %12 = load ptr, ptr %__vpp_verify4, align 8, !dbg !3654
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !3653
  br label %do.cond5, !dbg !3654

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !3654

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr8) #16, !dbg !3655
  call void @llvm.dbg.declare(metadata ptr %__ptr8, metadata !3611, metadata !DIExpression()), !dbg !3655
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr8, align 8, !dbg !3655
  %13 = load i64, ptr %__ptr8, align 8, !dbg !3655
  %14 = load i32, ptr %cpu.addr, align 4, !dbg !3655
  %idxprom10 = zext i32 %14 to i64, !dbg !3655
  %arrayidx11 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom10, !dbg !3655
  %15 = load i64, ptr %arrayidx11, align 8, !dbg !3655
  %add12 = add i64 %13, %15, !dbg !3655
  %16 = inttoptr i64 %add12 to ptr, !dbg !3655
  store ptr %16, ptr %tmp9, align 8, !dbg !3655
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr8) #16, !dbg !3653
  %17 = load ptr, ptr %tmp9, align 8, !dbg !3655
  store ptr %17, ptr %tmp7, align 8, !dbg !3654
  %18 = load ptr, ptr %tmp7, align 8, !dbg !3653
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %18, i32 0, i32 2, !dbg !3656
  %19 = load i32, ptr %num_leaves, align 4, !dbg !3656
  %cmp13 = icmp ult i32 %11, %19, !dbg !3657
  br i1 %cmp13, label %for.body, label %for.end, !dbg !3658

for.body:                                         ; preds = %do.end6
  br label %do.body15, !dbg !3659

do.body15:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify16) #16, !dbg !3660
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify16, metadata !3613, metadata !DIExpression()), !dbg !3660
  store ptr null, ptr %__vpp_verify16, align 8, !dbg !3660
  %20 = load ptr, ptr %__vpp_verify16, align 8, !dbg !3660
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify16) #16, !dbg !3659
  br label %do.cond17, !dbg !3660

do.cond17:                                        ; preds = %do.body15
  br label %do.end18, !dbg !3660

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr20) #16, !dbg !3661
  call void @llvm.dbg.declare(metadata ptr %__ptr20, metadata !3617, metadata !DIExpression()), !dbg !3661
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr20, align 8, !dbg !3661
  %21 = load i64, ptr %__ptr20, align 8, !dbg !3661
  %22 = load i32, ptr %cpu.addr, align 4, !dbg !3661
  %idxprom22 = zext i32 %22 to i64, !dbg !3661
  %arrayidx23 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom22, !dbg !3661
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3661
  %add24 = add i64 %21, %23, !dbg !3661
  %24 = inttoptr i64 %add24 to ptr, !dbg !3661
  store ptr %24, ptr %tmp21, align 8, !dbg !3661
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr20) #16, !dbg !3659
  %25 = load ptr, ptr %tmp21, align 8, !dbg !3661
  store ptr %25, ptr %tmp19, align 8, !dbg !3660
  %26 = load ptr, ptr %tmp19, align 8, !dbg !3659
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, ptr %26, i32 0, i32 0, !dbg !3662
  %27 = load ptr, ptr %info_list, align 8, !dbg !3662
  %28 = load i32, ptr %i, align 4, !dbg !3662
  %idx.ext = zext i32 %28 to i64, !dbg !3662
  %add.ptr = getelementptr %struct.cacheinfo, ptr %27, i64 %idx.ext, !dbg !3662
  store ptr %add.ptr, ptr %this_leaf, align 8, !dbg !3663
  %29 = load ptr, ptr %this_leaf, align 8, !dbg !3664
  %disable_sysfs = getelementptr inbounds %struct.cacheinfo, ptr %29, i32 0, i32 11, !dbg !3666
  %30 = load i8, ptr %disable_sysfs, align 8, !dbg !3666, !range !2281, !noundef !578
  %tobool25 = trunc i8 %30 to i1, !dbg !3666
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !3667

if.then26:                                        ; preds = %do.end18
  br label %for.inc, !dbg !3668

if.end27:                                         ; preds = %do.end18
  %31 = load ptr, ptr %this_leaf, align 8, !dbg !3669
  %type = getelementptr inbounds %struct.cacheinfo, ptr %31, i32 0, i32 1, !dbg !3671
  %32 = load i32, ptr %type, align 4, !dbg !3671
  %cmp28 = icmp eq i32 %32, 0, !dbg !3672
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !3673

if.then30:                                        ; preds = %if.end27
  br label %for.end, !dbg !3674

if.end31:                                         ; preds = %if.end27
  %33 = load ptr, ptr %this_leaf, align 8, !dbg !3675
  %call32 = call ptr @cache_get_attribute_groups(ptr noundef %33) #17, !dbg !3676
  store ptr %call32, ptr %cache_groups, align 8, !dbg !3677
  %34 = load ptr, ptr %parent, align 8, !dbg !3678
  %35 = load ptr, ptr %this_leaf, align 8, !dbg !3679
  %36 = load ptr, ptr %cache_groups, align 8, !dbg !3680
  %37 = load i32, ptr %i, align 4, !dbg !3681
  %call33 = call ptr (ptr, ptr, ptr, ptr, ...) @cpu_device_create(ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef @.str.3, i32 noundef %37) #17, !dbg !3682
  store ptr %call33, ptr %ci_dev, align 8, !dbg !3683
  %38 = load ptr, ptr %ci_dev, align 8, !dbg !3684
  %call34 = call zeroext i1 @IS_ERR(ptr noundef %38) #17, !dbg !3686
  br i1 %call34, label %if.then35, label %if.end38, !dbg !3687

if.then35:                                        ; preds = %if.end31
  %39 = load ptr, ptr %ci_dev, align 8, !dbg !3688
  %call36 = call i64 @PTR_ERR(ptr noundef %39) #17, !dbg !3690
  %conv37 = trunc i64 %call36 to i32, !dbg !3690
  store i32 %conv37, ptr %rc, align 4, !dbg !3691
  br label %err, !dbg !3692

if.end38:                                         ; preds = %if.end31
  %40 = load ptr, ptr %ci_dev, align 8, !dbg !3693
  br label %do.body39, !dbg !3694

do.body39:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify40) #16, !dbg !3695
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify40, metadata !3619, metadata !DIExpression()), !dbg !3695
  store ptr null, ptr %__vpp_verify40, align 8, !dbg !3695
  %41 = load ptr, ptr %__vpp_verify40, align 8, !dbg !3695
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify40) #16, !dbg !3694
  br label %do.cond41, !dbg !3695

do.cond41:                                        ; preds = %do.body39
  br label %do.end42, !dbg !3695

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr44) #16, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %__ptr44, metadata !3622, metadata !DIExpression()), !dbg !3696
  store i64 ptrtoint (ptr @ci_index_dev to i64), ptr %__ptr44, align 8, !dbg !3696
  %42 = load i64, ptr %__ptr44, align 8, !dbg !3696
  %43 = load i32, ptr %cpu.addr, align 4, !dbg !3696
  %idxprom46 = zext i32 %43 to i64, !dbg !3696
  %arrayidx47 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom46, !dbg !3696
  %44 = load i64, ptr %arrayidx47, align 8, !dbg !3696
  %add48 = add i64 %42, %44, !dbg !3696
  %45 = inttoptr i64 %add48 to ptr, !dbg !3696
  store ptr %45, ptr %tmp45, align 8, !dbg !3696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr44) #16, !dbg !3694
  %46 = load ptr, ptr %tmp45, align 8, !dbg !3696
  store ptr %46, ptr %tmp43, align 8, !dbg !3695
  %47 = load ptr, ptr %tmp43, align 8, !dbg !3694
  %48 = load ptr, ptr %47, align 8, !dbg !3697
  %49 = load i32, ptr %i, align 4, !dbg !3697
  %idxprom49 = zext i32 %49 to i64, !dbg !3697
  %arrayidx50 = getelementptr ptr, ptr %48, i64 %idxprom49, !dbg !3697
  store ptr %40, ptr %arrayidx50, align 8, !dbg !3698
  br label %for.inc, !dbg !3699

for.inc:                                          ; preds = %do.end42, %if.then26
  %50 = load i32, ptr %i, align 4, !dbg !3700
  %inc = add i32 %50, 1, !dbg !3700
  store i32 %inc, ptr %i, align 4, !dbg !3700
  br label %for.cond, !dbg !3701, !llvm.loop !3702

for.end:                                          ; preds = %if.then30, %do.end6
  %51 = load i32, ptr %cpu.addr, align 4, !dbg !3704
  call void @cpumask_set_cpu(i32 noundef %51, ptr noundef @cache_dev_map) #17, !dbg !3705
  store i32 0, ptr %retval, align 4, !dbg !3706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3706

err:                                              ; preds = %if.then35
  call void @llvm.dbg.label(metadata !3624), !dbg !3707
  %52 = load i32, ptr %cpu.addr, align 4, !dbg !3708
  call void @cpu_cache_sysfs_exit(i32 noundef %52) #17, !dbg !3709
  %53 = load i32, ptr %rc, align 4, !dbg !3710
  store i32 %53, ptr %retval, align 4, !dbg !3711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3711

cleanup:                                          ; preds = %err, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache_groups) #16, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 8, ptr %ci_dev) #16, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !3712
  %54 = load i32, ptr %retval, align 4, !dbg !3712
  ret i32 %54, !dbg !3712
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_cache_sysfs_init(i32 noundef %cpu) #0 align 16 !dbg !3713 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__ptr8 = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %__vpp_verify14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__ptr18 = alloca i64, align 8
  %tmp19 = alloca ptr, align 8
  %__vpp_verify26 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  %__ptr30 = alloca i64, align 8
  %tmp31 = alloca ptr, align 8
  %__vpp_verify38 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %__ptr42 = alloca i64, align 8
  %tmp43 = alloca ptr, align 8
  %__vpp_verify50 = alloca ptr, align 8
  %tmp53 = alloca ptr, align 8
  %__ptr54 = alloca i64, align 8
  %tmp55 = alloca ptr, align 8
  %__vpp_verify60 = alloca ptr, align 8
  %tmp63 = alloca ptr, align 8
  %__ptr64 = alloca i64, align 8
  %tmp65 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3715, metadata !DIExpression()), !dbg !3756
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !3757
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3716, metadata !DIExpression()), !dbg !3758
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3759
  %call = call ptr @get_cpu_device(i32 noundef %0) #17, !dbg !3760
  store ptr %call, ptr %dev, align 8, !dbg !3758
  br label %do.body, !dbg !3761

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3762
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3717, metadata !DIExpression()), !dbg !3762
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3762
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !3762
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3761
  br label %do.cond, !dbg !3762

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3762

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !3763
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3721, metadata !DIExpression()), !dbg !3763
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr, align 8, !dbg !3763
  %2 = load i64, ptr %__ptr, align 8, !dbg !3763
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !3763
  %idxprom = zext i32 %3 to i64, !dbg !3763
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3763
  %4 = load i64, ptr %arrayidx, align 8, !dbg !3763
  %add = add i64 %2, %4, !dbg !3763
  %5 = inttoptr i64 %add to ptr, !dbg !3763
  store ptr %5, ptr %tmp1, align 8, !dbg !3763
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !3761
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3763
  store ptr %6, ptr %tmp, align 8, !dbg !3762
  %7 = load ptr, ptr %tmp, align 8, !dbg !3761
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, ptr %7, i32 0, i32 0, !dbg !3764
  %8 = load ptr, ptr %info_list, align 8, !dbg !3764
  %cmp = icmp eq ptr %8, null, !dbg !3765
  br i1 %cmp, label %if.then, label %if.end, !dbg !3766

if.then:                                          ; preds = %do.end
  store i32 -2, ptr %retval, align 4, !dbg !3767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3767

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %dev, align 8, !dbg !3768
  %call2 = call ptr (ptr, ptr, ptr, ptr, ...) @cpu_device_create(ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef @.str.4) #17, !dbg !3769
  br label %do.body3, !dbg !3770

do.body3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !3771
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !3723, metadata !DIExpression()), !dbg !3771
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !3771
  %10 = load ptr, ptr %__vpp_verify4, align 8, !dbg !3771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !3770
  br label %do.cond5, !dbg !3771

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !3771

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr8) #16, !dbg !3772
  call void @llvm.dbg.declare(metadata ptr %__ptr8, metadata !3726, metadata !DIExpression()), !dbg !3772
  store i64 ptrtoint (ptr @ci_cache_dev to i64), ptr %__ptr8, align 8, !dbg !3772
  %11 = load i64, ptr %__ptr8, align 8, !dbg !3772
  %12 = load i32, ptr %cpu.addr, align 4, !dbg !3772
  %idxprom10 = zext i32 %12 to i64, !dbg !3772
  %arrayidx11 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom10, !dbg !3772
  %13 = load i64, ptr %arrayidx11, align 8, !dbg !3772
  %add12 = add i64 %11, %13, !dbg !3772
  %14 = inttoptr i64 %add12 to ptr, !dbg !3772
  store ptr %14, ptr %tmp9, align 8, !dbg !3772
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr8) #16, !dbg !3770
  %15 = load ptr, ptr %tmp9, align 8, !dbg !3772
  store ptr %15, ptr %tmp7, align 8, !dbg !3771
  %16 = load ptr, ptr %tmp7, align 8, !dbg !3770
  store ptr %call2, ptr %16, align 8, !dbg !3773
  br label %do.body13, !dbg !3774

do.body13:                                        ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #16, !dbg !3775
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !3728, metadata !DIExpression()), !dbg !3775
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !3775
  %17 = load ptr, ptr %__vpp_verify14, align 8, !dbg !3775
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #16, !dbg !3774
  br label %do.cond15, !dbg !3775

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !3775

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr18) #16, !dbg !3776
  call void @llvm.dbg.declare(metadata ptr %__ptr18, metadata !3732, metadata !DIExpression()), !dbg !3776
  store i64 ptrtoint (ptr @ci_cache_dev to i64), ptr %__ptr18, align 8, !dbg !3776
  %18 = load i64, ptr %__ptr18, align 8, !dbg !3776
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !3776
  %idxprom20 = zext i32 %19 to i64, !dbg !3776
  %arrayidx21 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom20, !dbg !3776
  %20 = load i64, ptr %arrayidx21, align 8, !dbg !3776
  %add22 = add i64 %18, %20, !dbg !3776
  %21 = inttoptr i64 %add22 to ptr, !dbg !3776
  store ptr %21, ptr %tmp19, align 8, !dbg !3776
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr18) #16, !dbg !3774
  %22 = load ptr, ptr %tmp19, align 8, !dbg !3776
  store ptr %22, ptr %tmp17, align 8, !dbg !3775
  %23 = load ptr, ptr %tmp17, align 8, !dbg !3774
  %24 = load ptr, ptr %23, align 8, !dbg !3777
  %call23 = call zeroext i1 @IS_ERR(ptr noundef %24) #17, !dbg !3778
  br i1 %call23, label %if.then24, label %if.end36, !dbg !3779

if.then24:                                        ; preds = %do.end16
  br label %do.body25, !dbg !3780

do.body25:                                        ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify26) #16, !dbg !3781
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify26, metadata !3734, metadata !DIExpression()), !dbg !3781
  store ptr null, ptr %__vpp_verify26, align 8, !dbg !3781
  %25 = load ptr, ptr %__vpp_verify26, align 8, !dbg !3781
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify26) #16, !dbg !3780
  br label %do.cond27, !dbg !3781

do.cond27:                                        ; preds = %do.body25
  br label %do.end28, !dbg !3781

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr30) #16, !dbg !3782
  call void @llvm.dbg.declare(metadata ptr %__ptr30, metadata !3737, metadata !DIExpression()), !dbg !3782
  store i64 ptrtoint (ptr @ci_cache_dev to i64), ptr %__ptr30, align 8, !dbg !3782
  %26 = load i64, ptr %__ptr30, align 8, !dbg !3782
  %27 = load i32, ptr %cpu.addr, align 4, !dbg !3782
  %idxprom32 = zext i32 %27 to i64, !dbg !3782
  %arrayidx33 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom32, !dbg !3782
  %28 = load i64, ptr %arrayidx33, align 8, !dbg !3782
  %add34 = add i64 %26, %28, !dbg !3782
  %29 = inttoptr i64 %add34 to ptr, !dbg !3782
  store ptr %29, ptr %tmp31, align 8, !dbg !3782
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr30) #16, !dbg !3780
  %30 = load ptr, ptr %tmp31, align 8, !dbg !3782
  store ptr %30, ptr %tmp29, align 8, !dbg !3781
  %31 = load ptr, ptr %tmp29, align 8, !dbg !3780
  %32 = load ptr, ptr %31, align 8, !dbg !3783
  %call35 = call i64 @PTR_ERR(ptr noundef %32) #17, !dbg !3784
  %conv = trunc i64 %call35 to i32, !dbg !3784
  store i32 %conv, ptr %retval, align 4, !dbg !3785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3785

if.end36:                                         ; preds = %do.end16
  br label %do.body37, !dbg !3786

do.body37:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify38) #16, !dbg !3787
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify38, metadata !3739, metadata !DIExpression()), !dbg !3787
  store ptr null, ptr %__vpp_verify38, align 8, !dbg !3787
  %33 = load ptr, ptr %__vpp_verify38, align 8, !dbg !3787
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify38) #16, !dbg !3786
  br label %do.cond39, !dbg !3787

do.cond39:                                        ; preds = %do.body37
  br label %do.end40, !dbg !3787

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr42) #16, !dbg !3788
  call void @llvm.dbg.declare(metadata ptr %__ptr42, metadata !3742, metadata !DIExpression()), !dbg !3788
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr42, align 8, !dbg !3788
  %34 = load i64, ptr %__ptr42, align 8, !dbg !3788
  %35 = load i32, ptr %cpu.addr, align 4, !dbg !3788
  %idxprom44 = zext i32 %35 to i64, !dbg !3788
  %arrayidx45 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom44, !dbg !3788
  %36 = load i64, ptr %arrayidx45, align 8, !dbg !3788
  %add46 = add i64 %34, %36, !dbg !3788
  %37 = inttoptr i64 %add46 to ptr, !dbg !3788
  store ptr %37, ptr %tmp43, align 8, !dbg !3788
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr42) #16, !dbg !3786
  %38 = load ptr, ptr %tmp43, align 8, !dbg !3788
  store ptr %38, ptr %tmp41, align 8, !dbg !3787
  %39 = load ptr, ptr %tmp41, align 8, !dbg !3786
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %39, i32 0, i32 2, !dbg !3789
  %40 = load i32, ptr %num_leaves, align 4, !dbg !3789
  %conv47 = zext i32 %40 to i64, !dbg !3789
  %call48 = call noalias ptr @kcalloc(i64 noundef %conv47, i64 noundef 8, i32 noundef 3264) #18, !dbg !3790
  br label %do.body49, !dbg !3791

do.body49:                                        ; preds = %do.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify50) #16, !dbg !3792
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify50, metadata !3744, metadata !DIExpression()), !dbg !3792
  store ptr null, ptr %__vpp_verify50, align 8, !dbg !3792
  %41 = load ptr, ptr %__vpp_verify50, align 8, !dbg !3792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify50) #16, !dbg !3791
  br label %do.cond51, !dbg !3792

do.cond51:                                        ; preds = %do.body49
  br label %do.end52, !dbg !3792

do.end52:                                         ; preds = %do.cond51
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr54) #16, !dbg !3793
  call void @llvm.dbg.declare(metadata ptr %__ptr54, metadata !3747, metadata !DIExpression()), !dbg !3793
  store i64 ptrtoint (ptr @ci_index_dev to i64), ptr %__ptr54, align 8, !dbg !3793
  %42 = load i64, ptr %__ptr54, align 8, !dbg !3793
  %43 = load i32, ptr %cpu.addr, align 4, !dbg !3793
  %idxprom56 = zext i32 %43 to i64, !dbg !3793
  %arrayidx57 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom56, !dbg !3793
  %44 = load i64, ptr %arrayidx57, align 8, !dbg !3793
  %add58 = add i64 %42, %44, !dbg !3793
  %45 = inttoptr i64 %add58 to ptr, !dbg !3793
  store ptr %45, ptr %tmp55, align 8, !dbg !3793
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr54) #16, !dbg !3791
  %46 = load ptr, ptr %tmp55, align 8, !dbg !3793
  store ptr %46, ptr %tmp53, align 8, !dbg !3792
  %47 = load ptr, ptr %tmp53, align 8, !dbg !3791
  store ptr %call48, ptr %47, align 8, !dbg !3794
  br label %do.body59, !dbg !3795

do.body59:                                        ; preds = %do.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify60) #16, !dbg !3796
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify60, metadata !3749, metadata !DIExpression()), !dbg !3796
  store ptr null, ptr %__vpp_verify60, align 8, !dbg !3796
  %48 = load ptr, ptr %__vpp_verify60, align 8, !dbg !3796
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify60) #16, !dbg !3795
  br label %do.cond61, !dbg !3796

do.cond61:                                        ; preds = %do.body59
  br label %do.end62, !dbg !3796

do.end62:                                         ; preds = %do.cond61
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr64) #16, !dbg !3797
  call void @llvm.dbg.declare(metadata ptr %__ptr64, metadata !3753, metadata !DIExpression()), !dbg !3797
  store i64 ptrtoint (ptr @ci_index_dev to i64), ptr %__ptr64, align 8, !dbg !3797
  %49 = load i64, ptr %__ptr64, align 8, !dbg !3797
  %50 = load i32, ptr %cpu.addr, align 4, !dbg !3797
  %idxprom66 = zext i32 %50 to i64, !dbg !3797
  %arrayidx67 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom66, !dbg !3797
  %51 = load i64, ptr %arrayidx67, align 8, !dbg !3797
  %add68 = add i64 %49, %51, !dbg !3797
  %52 = inttoptr i64 %add68 to ptr, !dbg !3797
  store ptr %52, ptr %tmp65, align 8, !dbg !3797
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr64) #16, !dbg !3795
  %53 = load ptr, ptr %tmp65, align 8, !dbg !3797
  store ptr %53, ptr %tmp63, align 8, !dbg !3796
  %54 = load ptr, ptr %tmp63, align 8, !dbg !3795
  %55 = load ptr, ptr %54, align 8, !dbg !3798
  %cmp69 = icmp eq ptr %55, null, !dbg !3798
  %lnot = xor i1 %cmp69, true, !dbg !3798
  %lnot71 = xor i1 %lnot, true, !dbg !3798
  %lnot.ext = zext i1 %lnot71 to i32, !dbg !3798
  %conv72 = sext i32 %lnot.ext to i64, !dbg !3798
  %expval = call i64 @llvm.expect.i64(i64 %conv72, i64 0), !dbg !3798
  %tobool = icmp ne i64 %expval, 0, !dbg !3798
  br i1 %tobool, label %if.then73, label %if.end74, !dbg !3799

if.then73:                                        ; preds = %do.end62
  br label %err_out, !dbg !3800

if.end74:                                         ; preds = %do.end62
  store i32 0, ptr %retval, align 4, !dbg !3801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3801

err_out:                                          ; preds = %if.then73
  call void @llvm.dbg.label(metadata !3755), !dbg !3802
  %56 = load i32, ptr %cpu.addr, align 4, !dbg !3803
  call void @cpu_cache_sysfs_exit(i32 noundef %56) #17, !dbg !3804
  store i32 -12, ptr %retval, align 4, !dbg !3805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3805

cleanup:                                          ; preds = %err_out, %if.end74, %do.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !3806
  %57 = load i32, ptr %retval, align 4, !dbg !3806
  ret i32 %57, !dbg !3806
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cache_get_attribute_groups(ptr noundef %this_leaf) #0 align 16 !dbg !3807 {
entry:
  %retval = alloca ptr, align 8
  %this_leaf.addr = alloca ptr, align 8
  %priv_group = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this_leaf, ptr %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %this_leaf.addr, metadata !3811, metadata !DIExpression()), !dbg !3813
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv_group) #16, !dbg !3814
  call void @llvm.dbg.declare(metadata ptr %priv_group, metadata !3812, metadata !DIExpression()), !dbg !3815
  %0 = load ptr, ptr %this_leaf.addr, align 8, !dbg !3816
  %call = call ptr @cache_get_priv_group(ptr noundef %0) #17, !dbg !3817
  store ptr %call, ptr %priv_group, align 8, !dbg !3815
  %1 = load ptr, ptr %priv_group, align 8, !dbg !3818
  %tobool = icmp ne ptr %1, null, !dbg !3818
  br i1 %tobool, label %if.end, label %if.then, !dbg !3820

if.then:                                          ; preds = %entry
  store ptr @cache_default_groups, ptr %retval, align 8, !dbg !3821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3821

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @cache_private_groups, i64 0, i64 1), align 8, !dbg !3822
  %tobool1 = icmp ne ptr %2, null, !dbg !3822
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3824

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %priv_group, align 8, !dbg !3825
  store ptr %3, ptr getelementptr inbounds ([3 x ptr], ptr @cache_private_groups, i64 0, i64 1), align 8, !dbg !3826
  br label %if.end3, !dbg !3827

if.end3:                                          ; preds = %if.then2, %if.end
  store ptr @cache_private_groups, ptr %retval, align 8, !dbg !3828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3828

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv_group) #16, !dbg !3829
  %4 = load ptr, ptr %retval, align 8, !dbg !3829
  ret ptr %4, !dbg !3829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3830 dso_local ptr @cpu_device_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !3834 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3839, metadata !DIExpression()), !dbg !3840
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3841
  %1 = ptrtoint ptr %0 to i64, !dbg !3841
  %2 = inttoptr i64 %1 to ptr, !dbg !3841
  %3 = ptrtoint ptr %2 to i64, !dbg !3841
  %cmp = icmp uge i64 %3, -4095, !dbg !3841
  %lnot = xor i1 %cmp, true, !dbg !3841
  %lnot1 = xor i1 %lnot, true, !dbg !3841
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3841
  %conv = sext i32 %lnot.ext to i64, !dbg !3841
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3841
  %tobool = icmp ne i64 %expval, 0, !dbg !3841
  ret i1 %tobool, !dbg !3842
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !3843 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3847, metadata !DIExpression()), !dbg !3848
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3849
  %1 = ptrtoint ptr %0 to i64, !dbg !3850
  ret i64 %1, !dbg !3851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_cache_sysfs_exit(i32 noundef %cpu) #0 align 16 !dbg !3852 {
entry:
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ci_dev = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__ptr7 = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %__vpp_verify13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__ptr17 = alloca i64, align 8
  %tmp18 = alloca ptr, align 8
  %__vpp_verify27 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  %__ptr31 = alloca i64, align 8
  %tmp32 = alloca ptr, align 8
  %__vpp_verify37 = alloca ptr, align 8
  %tmp40 = alloca ptr, align 8
  %__ptr41 = alloca i64, align 8
  %tmp42 = alloca ptr, align 8
  %__vpp_verify48 = alloca ptr, align 8
  %tmp51 = alloca ptr, align 8
  %__ptr52 = alloca i64, align 8
  %tmp53 = alloca ptr, align 8
  %__vpp_verify58 = alloca ptr, align 8
  %tmp61 = alloca ptr, align 8
  %__ptr62 = alloca i64, align 8
  %tmp63 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3854, metadata !DIExpression()), !dbg !3897
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !3898
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3855, metadata !DIExpression()), !dbg !3899
  call void @llvm.lifetime.start.p0(i64 8, ptr %ci_dev) #16, !dbg !3900
  call void @llvm.dbg.declare(metadata ptr %ci_dev, metadata !3856, metadata !DIExpression()), !dbg !3901
  br label %do.body, !dbg !3902

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3903
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3857, metadata !DIExpression()), !dbg !3903
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3903
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3903
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3902
  br label %do.cond, !dbg !3903

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3903

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !3904
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3861, metadata !DIExpression()), !dbg !3904
  store i64 ptrtoint (ptr @ci_index_dev to i64), ptr %__ptr, align 8, !dbg !3904
  %1 = load i64, ptr %__ptr, align 8, !dbg !3904
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !3904
  %idxprom = zext i32 %2 to i64, !dbg !3904
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3904
  %3 = load i64, ptr %arrayidx, align 8, !dbg !3904
  %add = add i64 %1, %3, !dbg !3904
  %4 = inttoptr i64 %add to ptr, !dbg !3904
  store ptr %4, ptr %tmp1, align 8, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !3902
  %5 = load ptr, ptr %tmp1, align 8, !dbg !3904
  store ptr %5, ptr %tmp, align 8, !dbg !3903
  %6 = load ptr, ptr %tmp, align 8, !dbg !3902
  %7 = load ptr, ptr %6, align 8, !dbg !3905
  %tobool = icmp ne ptr %7, null, !dbg !3905
  br i1 %tobool, label %if.then, label %if.end46, !dbg !3906

if.then:                                          ; preds = %do.end
  store i32 0, ptr %i, align 4, !dbg !3907
  br label %for.cond, !dbg !3908

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, ptr %i, align 4, !dbg !3909
  br label %do.body2, !dbg !3910

do.body2:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !3911
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !3863, metadata !DIExpression()), !dbg !3911
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !3911
  %9 = load ptr, ptr %__vpp_verify3, align 8, !dbg !3911
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #16, !dbg !3910
  br label %do.cond4, !dbg !3911

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !3911

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr7) #16, !dbg !3912
  call void @llvm.dbg.declare(metadata ptr %__ptr7, metadata !3869, metadata !DIExpression()), !dbg !3912
  store i64 ptrtoint (ptr @ci_cpu_cacheinfo to i64), ptr %__ptr7, align 8, !dbg !3912
  %10 = load i64, ptr %__ptr7, align 8, !dbg !3912
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !3912
  %idxprom9 = zext i32 %11 to i64, !dbg !3912
  %arrayidx10 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom9, !dbg !3912
  %12 = load i64, ptr %arrayidx10, align 8, !dbg !3912
  %add11 = add i64 %10, %12, !dbg !3912
  %13 = inttoptr i64 %add11 to ptr, !dbg !3912
  store ptr %13, ptr %tmp8, align 8, !dbg !3912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr7) #16, !dbg !3910
  %14 = load ptr, ptr %tmp8, align 8, !dbg !3912
  store ptr %14, ptr %tmp6, align 8, !dbg !3911
  %15 = load ptr, ptr %tmp6, align 8, !dbg !3910
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, ptr %15, i32 0, i32 2, !dbg !3913
  %16 = load i32, ptr %num_leaves, align 4, !dbg !3913
  %cmp = icmp ult i32 %8, %16, !dbg !3914
  br i1 %cmp, label %for.body, label %for.end, !dbg !3915

for.body:                                         ; preds = %do.end5
  br label %do.body12, !dbg !3916

do.body12:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #16, !dbg !3917
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !3871, metadata !DIExpression()), !dbg !3917
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !3917
  %17 = load ptr, ptr %__vpp_verify13, align 8, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #16, !dbg !3916
  br label %do.cond14, !dbg !3917

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !3917

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr17) #16, !dbg !3918
  call void @llvm.dbg.declare(metadata ptr %__ptr17, metadata !3875, metadata !DIExpression()), !dbg !3918
  store i64 ptrtoint (ptr @ci_index_dev to i64), ptr %__ptr17, align 8, !dbg !3918
  %18 = load i64, ptr %__ptr17, align 8, !dbg !3918
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !3918
  %idxprom19 = zext i32 %19 to i64, !dbg !3918
  %arrayidx20 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom19, !dbg !3918
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3918
  %add21 = add i64 %18, %20, !dbg !3918
  %21 = inttoptr i64 %add21 to ptr, !dbg !3918
  store ptr %21, ptr %tmp18, align 8, !dbg !3918
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr17) #16, !dbg !3916
  %22 = load ptr, ptr %tmp18, align 8, !dbg !3918
  store ptr %22, ptr %tmp16, align 8, !dbg !3917
  %23 = load ptr, ptr %tmp16, align 8, !dbg !3916
  %24 = load ptr, ptr %23, align 8, !dbg !3919
  %25 = load i32, ptr %i, align 4, !dbg !3919
  %idxprom22 = sext i32 %25 to i64, !dbg !3919
  %arrayidx23 = getelementptr ptr, ptr %24, i64 %idxprom22, !dbg !3919
  %26 = load ptr, ptr %arrayidx23, align 8, !dbg !3919
  store ptr %26, ptr %ci_dev, align 8, !dbg !3920
  %27 = load ptr, ptr %ci_dev, align 8, !dbg !3921
  %tobool24 = icmp ne ptr %27, null, !dbg !3921
  br i1 %tobool24, label %if.end, label %if.then25, !dbg !3923

if.then25:                                        ; preds = %do.end15
  br label %for.inc, !dbg !3924

if.end:                                           ; preds = %do.end15
  %28 = load ptr, ptr %ci_dev, align 8, !dbg !3925
  call void @device_unregister(ptr noundef %28) #17, !dbg !3926
  br label %for.inc, !dbg !3927

for.inc:                                          ; preds = %if.end, %if.then25
  %29 = load i32, ptr %i, align 4, !dbg !3928
  %inc = add i32 %29, 1, !dbg !3928
  store i32 %inc, ptr %i, align 4, !dbg !3928
  br label %for.cond, !dbg !3929, !llvm.loop !3930

for.end:                                          ; preds = %do.end5
  br label %do.body26, !dbg !3932

do.body26:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify27) #16, !dbg !3933
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify27, metadata !3877, metadata !DIExpression()), !dbg !3933
  store ptr null, ptr %__vpp_verify27, align 8, !dbg !3933
  %30 = load ptr, ptr %__vpp_verify27, align 8, !dbg !3933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify27) #16, !dbg !3932
  br label %do.cond28, !dbg !3933

do.cond28:                                        ; preds = %do.body26
  br label %do.end29, !dbg !3933

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr31) #16, !dbg !3934
  call void @llvm.dbg.declare(metadata ptr %__ptr31, metadata !3880, metadata !DIExpression()), !dbg !3934
  store i64 ptrtoint (ptr @ci_index_dev to i64), ptr %__ptr31, align 8, !dbg !3934
  %31 = load i64, ptr %__ptr31, align 8, !dbg !3934
  %32 = load i32, ptr %cpu.addr, align 4, !dbg !3934
  %idxprom33 = zext i32 %32 to i64, !dbg !3934
  %arrayidx34 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom33, !dbg !3934
  %33 = load i64, ptr %arrayidx34, align 8, !dbg !3934
  %add35 = add i64 %31, %33, !dbg !3934
  %34 = inttoptr i64 %add35 to ptr, !dbg !3934
  store ptr %34, ptr %tmp32, align 8, !dbg !3934
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr31) #16, !dbg !3932
  %35 = load ptr, ptr %tmp32, align 8, !dbg !3934
  store ptr %35, ptr %tmp30, align 8, !dbg !3933
  %36 = load ptr, ptr %tmp30, align 8, !dbg !3932
  %37 = load ptr, ptr %36, align 8, !dbg !3935
  call void @kfree(ptr noundef %37) #17, !dbg !3936
  br label %do.body36, !dbg !3937

do.body36:                                        ; preds = %do.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify37) #16, !dbg !3938
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify37, metadata !3882, metadata !DIExpression()), !dbg !3938
  store ptr null, ptr %__vpp_verify37, align 8, !dbg !3938
  %38 = load ptr, ptr %__vpp_verify37, align 8, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify37) #16, !dbg !3937
  br label %do.cond38, !dbg !3938

do.cond38:                                        ; preds = %do.body36
  br label %do.end39, !dbg !3938

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr41) #16, !dbg !3939
  call void @llvm.dbg.declare(metadata ptr %__ptr41, metadata !3885, metadata !DIExpression()), !dbg !3939
  store i64 ptrtoint (ptr @ci_index_dev to i64), ptr %__ptr41, align 8, !dbg !3939
  %39 = load i64, ptr %__ptr41, align 8, !dbg !3939
  %40 = load i32, ptr %cpu.addr, align 4, !dbg !3939
  %idxprom43 = zext i32 %40 to i64, !dbg !3939
  %arrayidx44 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom43, !dbg !3939
  %41 = load i64, ptr %arrayidx44, align 8, !dbg !3939
  %add45 = add i64 %39, %41, !dbg !3939
  %42 = inttoptr i64 %add45 to ptr, !dbg !3939
  store ptr %42, ptr %tmp42, align 8, !dbg !3939
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr41) #16, !dbg !3937
  %43 = load ptr, ptr %tmp42, align 8, !dbg !3939
  store ptr %43, ptr %tmp40, align 8, !dbg !3938
  %44 = load ptr, ptr %tmp40, align 8, !dbg !3937
  store ptr null, ptr %44, align 8, !dbg !3940
  br label %if.end46, !dbg !3941

if.end46:                                         ; preds = %do.end39, %do.end
  br label %do.body47, !dbg !3942

do.body47:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify48) #16, !dbg !3943
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify48, metadata !3887, metadata !DIExpression()), !dbg !3943
  store ptr null, ptr %__vpp_verify48, align 8, !dbg !3943
  %45 = load ptr, ptr %__vpp_verify48, align 8, !dbg !3943
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify48) #16, !dbg !3942
  br label %do.cond49, !dbg !3943

do.cond49:                                        ; preds = %do.body47
  br label %do.end50, !dbg !3943

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr52) #16, !dbg !3944
  call void @llvm.dbg.declare(metadata ptr %__ptr52, metadata !3890, metadata !DIExpression()), !dbg !3944
  store i64 ptrtoint (ptr @ci_cache_dev to i64), ptr %__ptr52, align 8, !dbg !3944
  %46 = load i64, ptr %__ptr52, align 8, !dbg !3944
  %47 = load i32, ptr %cpu.addr, align 4, !dbg !3944
  %idxprom54 = zext i32 %47 to i64, !dbg !3944
  %arrayidx55 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom54, !dbg !3944
  %48 = load i64, ptr %arrayidx55, align 8, !dbg !3944
  %add56 = add i64 %46, %48, !dbg !3944
  %49 = inttoptr i64 %add56 to ptr, !dbg !3944
  store ptr %49, ptr %tmp53, align 8, !dbg !3944
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr52) #16, !dbg !3942
  %50 = load ptr, ptr %tmp53, align 8, !dbg !3944
  store ptr %50, ptr %tmp51, align 8, !dbg !3943
  %51 = load ptr, ptr %tmp51, align 8, !dbg !3942
  %52 = load ptr, ptr %51, align 8, !dbg !3945
  call void @device_unregister(ptr noundef %52) #17, !dbg !3946
  br label %do.body57, !dbg !3947

do.body57:                                        ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify58) #16, !dbg !3948
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify58, metadata !3892, metadata !DIExpression()), !dbg !3948
  store ptr null, ptr %__vpp_verify58, align 8, !dbg !3948
  %53 = load ptr, ptr %__vpp_verify58, align 8, !dbg !3948
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify58) #16, !dbg !3947
  br label %do.cond59, !dbg !3948

do.cond59:                                        ; preds = %do.body57
  br label %do.end60, !dbg !3948

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr62) #16, !dbg !3949
  call void @llvm.dbg.declare(metadata ptr %__ptr62, metadata !3895, metadata !DIExpression()), !dbg !3949
  store i64 ptrtoint (ptr @ci_cache_dev to i64), ptr %__ptr62, align 8, !dbg !3949
  %54 = load i64, ptr %__ptr62, align 8, !dbg !3949
  %55 = load i32, ptr %cpu.addr, align 4, !dbg !3949
  %idxprom64 = zext i32 %55 to i64, !dbg !3949
  %arrayidx65 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom64, !dbg !3949
  %56 = load i64, ptr %arrayidx65, align 8, !dbg !3949
  %add66 = add i64 %54, %56, !dbg !3949
  %57 = inttoptr i64 %add66 to ptr, !dbg !3949
  store ptr %57, ptr %tmp63, align 8, !dbg !3949
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr62) #16, !dbg !3947
  %58 = load ptr, ptr %tmp63, align 8, !dbg !3949
  store ptr %58, ptr %tmp61, align 8, !dbg !3948
  %59 = load ptr, ptr %tmp61, align 8, !dbg !3947
  store ptr null, ptr %59, align 8, !dbg !3950
  call void @llvm.lifetime.end.p0(i64 8, ptr %ci_dev) #16, !dbg !3951
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !3951
  ret void, !dbg !3951
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3952 dso_local ptr @get_cpu_device(i32 noundef) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @cache_default_attrs_is_visible(ptr noundef %kobj, ptr noundef %attr, i32 noundef %unused) #0 align 16 !dbg !3955 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %unused.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  %mask = alloca ptr, align 8
  %mode = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3957, metadata !DIExpression()), !dbg !3966
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3958, metadata !DIExpression()), !dbg !3967
  store i32 %unused, ptr %unused.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !3959, metadata !DIExpression()), !dbg !3968
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !3969
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3960, metadata !DIExpression()), !dbg !3970
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3971
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3961, metadata !DIExpression()), !dbg !3971
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3971
  store ptr %0, ptr %__mptr, align 8, !dbg !3971
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3971
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3971
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3971
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3972
  %2 = load ptr, ptr %tmp, align 8, !dbg !3971
  store ptr %2, ptr %dev, align 8, !dbg !3970
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !3973
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !3963, metadata !DIExpression()), !dbg !3974
  %3 = load ptr, ptr %dev, align 8, !dbg !3975
  %call = call ptr @dev_get_drvdata(ptr noundef %3) #17, !dbg !3976
  store ptr %call, ptr %this_leaf, align 8, !dbg !3974
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !3977
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3964, metadata !DIExpression()), !dbg !3978
  %4 = load ptr, ptr %this_leaf, align 8, !dbg !3979
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, ptr %4, i32 0, i32 8, !dbg !3980
  store ptr %shared_cpu_map, ptr %mask, align 8, !dbg !3978
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #16, !dbg !3981
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !3965, metadata !DIExpression()), !dbg !3982
  %5 = load ptr, ptr %attr.addr, align 8, !dbg !3983
  %mode1 = getelementptr inbounds %struct.attribute, ptr %5, i32 0, i32 1, !dbg !3984
  %6 = load i16, ptr %mode1, align 8, !dbg !3984
  store i16 %6, ptr %mode, align 2, !dbg !3982
  %7 = load ptr, ptr %attr.addr, align 8, !dbg !3985
  %cmp = icmp eq ptr %7, @dev_attr_id, !dbg !3987
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3988

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %this_leaf, align 8, !dbg !3989
  %attributes = getelementptr inbounds %struct.cacheinfo, ptr %8, i32 0, i32 9, !dbg !3990
  %9 = load i32, ptr %attributes, align 8, !dbg !3990
  %conv = zext i32 %9 to i64, !dbg !3989
  %and = and i64 %conv, 16, !dbg !3991
  %tobool = icmp ne i64 %and, 0, !dbg !3991
  br i1 %tobool, label %if.then, label %if.end, !dbg !3992

if.then:                                          ; preds = %land.lhs.true
  %10 = load i16, ptr %mode, align 2, !dbg !3993
  store i16 %10, ptr %retval, align 2, !dbg !3994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3994

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %attr.addr, align 8, !dbg !3995
  %cmp2 = icmp eq ptr %11, @dev_attr_type, !dbg !3997
  br i1 %cmp2, label %land.lhs.true4, label %if.end7, !dbg !3998

land.lhs.true4:                                   ; preds = %if.end
  %12 = load ptr, ptr %this_leaf, align 8, !dbg !3999
  %type = getelementptr inbounds %struct.cacheinfo, ptr %12, i32 0, i32 1, !dbg !4000
  %13 = load i32, ptr %type, align 4, !dbg !4000
  %tobool5 = icmp ne i32 %13, 0, !dbg !3999
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4001

if.then6:                                         ; preds = %land.lhs.true4
  %14 = load i16, ptr %mode, align 2, !dbg !4002
  store i16 %14, ptr %retval, align 2, !dbg !4003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4003

if.end7:                                          ; preds = %land.lhs.true4, %if.end
  %15 = load ptr, ptr %attr.addr, align 8, !dbg !4004
  %cmp8 = icmp eq ptr %15, @dev_attr_level, !dbg !4006
  br i1 %cmp8, label %land.lhs.true10, label %if.end13, !dbg !4007

land.lhs.true10:                                  ; preds = %if.end7
  %16 = load ptr, ptr %this_leaf, align 8, !dbg !4008
  %level = getelementptr inbounds %struct.cacheinfo, ptr %16, i32 0, i32 2, !dbg !4009
  %17 = load i32, ptr %level, align 8, !dbg !4009
  %tobool11 = icmp ne i32 %17, 0, !dbg !4008
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4010

if.then12:                                        ; preds = %land.lhs.true10
  %18 = load i16, ptr %mode, align 2, !dbg !4011
  store i16 %18, ptr %retval, align 2, !dbg !4012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4012

if.end13:                                         ; preds = %land.lhs.true10, %if.end7
  %19 = load ptr, ptr %attr.addr, align 8, !dbg !4013
  %cmp14 = icmp eq ptr %19, @dev_attr_shared_cpu_map, !dbg !4015
  br i1 %cmp14, label %land.lhs.true16, label %if.end19, !dbg !4016

land.lhs.true16:                                  ; preds = %if.end13
  %20 = load ptr, ptr %mask, align 8, !dbg !4017
  %call17 = call zeroext i1 @cpumask_empty(ptr noundef %20) #17, !dbg !4018
  br i1 %call17, label %if.end19, label %if.then18, !dbg !4019

if.then18:                                        ; preds = %land.lhs.true16
  %21 = load i16, ptr %mode, align 2, !dbg !4020
  store i16 %21, ptr %retval, align 2, !dbg !4021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4021

if.end19:                                         ; preds = %land.lhs.true16, %if.end13
  %22 = load ptr, ptr %attr.addr, align 8, !dbg !4022
  %cmp20 = icmp eq ptr %22, @dev_attr_shared_cpu_list, !dbg !4024
  br i1 %cmp20, label %land.lhs.true22, label %if.end25, !dbg !4025

land.lhs.true22:                                  ; preds = %if.end19
  %23 = load ptr, ptr %mask, align 8, !dbg !4026
  %call23 = call zeroext i1 @cpumask_empty(ptr noundef %23) #17, !dbg !4027
  br i1 %call23, label %if.end25, label %if.then24, !dbg !4028

if.then24:                                        ; preds = %land.lhs.true22
  %24 = load i16, ptr %mode, align 2, !dbg !4029
  store i16 %24, ptr %retval, align 2, !dbg !4030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4030

if.end25:                                         ; preds = %land.lhs.true22, %if.end19
  %25 = load ptr, ptr %attr.addr, align 8, !dbg !4031
  %cmp26 = icmp eq ptr %25, @dev_attr_coherency_line_size, !dbg !4033
  br i1 %cmp26, label %land.lhs.true28, label %if.end31, !dbg !4034

land.lhs.true28:                                  ; preds = %if.end25
  %26 = load ptr, ptr %this_leaf, align 8, !dbg !4035
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, ptr %26, i32 0, i32 3, !dbg !4036
  %27 = load i32, ptr %coherency_line_size, align 4, !dbg !4036
  %tobool29 = icmp ne i32 %27, 0, !dbg !4035
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4037

if.then30:                                        ; preds = %land.lhs.true28
  %28 = load i16, ptr %mode, align 2, !dbg !4038
  store i16 %28, ptr %retval, align 2, !dbg !4039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4039

if.end31:                                         ; preds = %land.lhs.true28, %if.end25
  %29 = load ptr, ptr %attr.addr, align 8, !dbg !4040
  %cmp32 = icmp eq ptr %29, @dev_attr_ways_of_associativity, !dbg !4042
  br i1 %cmp32, label %land.lhs.true34, label %if.end37, !dbg !4043

land.lhs.true34:                                  ; preds = %if.end31
  %30 = load ptr, ptr %this_leaf, align 8, !dbg !4044
  %size = getelementptr inbounds %struct.cacheinfo, ptr %30, i32 0, i32 7, !dbg !4045
  %31 = load i32, ptr %size, align 4, !dbg !4045
  %tobool35 = icmp ne i32 %31, 0, !dbg !4044
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4046

if.then36:                                        ; preds = %land.lhs.true34
  %32 = load i16, ptr %mode, align 2, !dbg !4047
  store i16 %32, ptr %retval, align 2, !dbg !4048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4048

if.end37:                                         ; preds = %land.lhs.true34, %if.end31
  %33 = load ptr, ptr %attr.addr, align 8, !dbg !4049
  %cmp38 = icmp eq ptr %33, @dev_attr_number_of_sets, !dbg !4051
  br i1 %cmp38, label %land.lhs.true40, label %if.end43, !dbg !4052

land.lhs.true40:                                  ; preds = %if.end37
  %34 = load ptr, ptr %this_leaf, align 8, !dbg !4053
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, ptr %34, i32 0, i32 4, !dbg !4054
  %35 = load i32, ptr %number_of_sets, align 8, !dbg !4054
  %tobool41 = icmp ne i32 %35, 0, !dbg !4053
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !4055

if.then42:                                        ; preds = %land.lhs.true40
  %36 = load i16, ptr %mode, align 2, !dbg !4056
  store i16 %36, ptr %retval, align 2, !dbg !4057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4057

if.end43:                                         ; preds = %land.lhs.true40, %if.end37
  %37 = load ptr, ptr %attr.addr, align 8, !dbg !4058
  %cmp44 = icmp eq ptr %37, @dev_attr_size, !dbg !4060
  br i1 %cmp44, label %land.lhs.true46, label %if.end50, !dbg !4061

land.lhs.true46:                                  ; preds = %if.end43
  %38 = load ptr, ptr %this_leaf, align 8, !dbg !4062
  %size47 = getelementptr inbounds %struct.cacheinfo, ptr %38, i32 0, i32 7, !dbg !4063
  %39 = load i32, ptr %size47, align 4, !dbg !4063
  %tobool48 = icmp ne i32 %39, 0, !dbg !4062
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4064

if.then49:                                        ; preds = %land.lhs.true46
  %40 = load i16, ptr %mode, align 2, !dbg !4065
  store i16 %40, ptr %retval, align 2, !dbg !4066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4066

if.end50:                                         ; preds = %land.lhs.true46, %if.end43
  %41 = load ptr, ptr %attr.addr, align 8, !dbg !4067
  %cmp51 = icmp eq ptr %41, @dev_attr_write_policy, !dbg !4069
  br i1 %cmp51, label %land.lhs.true53, label %if.end59, !dbg !4070

land.lhs.true53:                                  ; preds = %if.end50
  %42 = load ptr, ptr %this_leaf, align 8, !dbg !4071
  %attributes54 = getelementptr inbounds %struct.cacheinfo, ptr %42, i32 0, i32 9, !dbg !4072
  %43 = load i32, ptr %attributes54, align 8, !dbg !4072
  %conv55 = zext i32 %43 to i64, !dbg !4071
  %and56 = and i64 %conv55, 3, !dbg !4073
  %tobool57 = icmp ne i64 %and56, 0, !dbg !4073
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !4074

if.then58:                                        ; preds = %land.lhs.true53
  %44 = load i16, ptr %mode, align 2, !dbg !4075
  store i16 %44, ptr %retval, align 2, !dbg !4076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4076

if.end59:                                         ; preds = %land.lhs.true53, %if.end50
  %45 = load ptr, ptr %attr.addr, align 8, !dbg !4077
  %cmp60 = icmp eq ptr %45, @dev_attr_allocation_policy, !dbg !4079
  br i1 %cmp60, label %land.lhs.true62, label %if.end68, !dbg !4080

land.lhs.true62:                                  ; preds = %if.end59
  %46 = load ptr, ptr %this_leaf, align 8, !dbg !4081
  %attributes63 = getelementptr inbounds %struct.cacheinfo, ptr %46, i32 0, i32 9, !dbg !4082
  %47 = load i32, ptr %attributes63, align 8, !dbg !4082
  %conv64 = zext i32 %47 to i64, !dbg !4081
  %and65 = and i64 %conv64, 12, !dbg !4083
  %tobool66 = icmp ne i64 %and65, 0, !dbg !4083
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !4084

if.then67:                                        ; preds = %land.lhs.true62
  %48 = load i16, ptr %mode, align 2, !dbg !4085
  store i16 %48, ptr %retval, align 2, !dbg !4086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4086

if.end68:                                         ; preds = %land.lhs.true62, %if.end59
  %49 = load ptr, ptr %attr.addr, align 8, !dbg !4087
  %cmp69 = icmp eq ptr %49, @dev_attr_physical_line_partition, !dbg !4089
  br i1 %cmp69, label %land.lhs.true71, label %if.end74, !dbg !4090

land.lhs.true71:                                  ; preds = %if.end68
  %50 = load ptr, ptr %this_leaf, align 8, !dbg !4091
  %physical_line_partition = getelementptr inbounds %struct.cacheinfo, ptr %50, i32 0, i32 6, !dbg !4092
  %51 = load i32, ptr %physical_line_partition, align 8, !dbg !4092
  %tobool72 = icmp ne i32 %51, 0, !dbg !4091
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !4093

if.then73:                                        ; preds = %land.lhs.true71
  %52 = load i16, ptr %mode, align 2, !dbg !4094
  store i16 %52, ptr %retval, align 2, !dbg !4095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4095

if.end74:                                         ; preds = %land.lhs.true71, %if.end68
  store i16 0, ptr %retval, align 2, !dbg !4096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4096

cleanup:                                          ; preds = %if.end74, %if.then73, %if.then67, %if.then58, %if.then49, %if.then42, %if.then36, %if.then30, %if.then24, %if.then18, %if.then12, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #16, !dbg !4097
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !4097
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4097
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !4097
  %53 = load i16, ptr %retval, align 2, !dbg !4097
  ret i16 %53, !dbg !4097
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #3 align 16 !dbg !4098 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4102, metadata !DIExpression()), !dbg !4103
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4104
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !4105
  %1 = load ptr, ptr %driver_data, align 8, !dbg !4105
  ret ptr %1, !dbg !4106
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_empty(ptr noundef %srcp) #3 align 16 !dbg !4107 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4111, metadata !DIExpression()), !dbg !4112
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !4113
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4113
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4113
  %call = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef 64) #17, !dbg !4114
  ret i1 %call, !dbg !4115
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4116 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4118, metadata !DIExpression()), !dbg !4122
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4119, metadata !DIExpression()), !dbg !4122
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4120, metadata !DIExpression()), !dbg !4122
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4122
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4121, metadata !DIExpression()), !dbg !4122
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4122
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4122
  store ptr %call, ptr %this_leaf, align 8, !dbg !4122
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4122
  %2 = load ptr, ptr %this_leaf, align 8, !dbg !4122
  %id = getelementptr inbounds %struct.cacheinfo, ptr %2, i32 0, i32 0, !dbg !4122
  %3 = load i32, ptr %id, align 8, !dbg !4122
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.6, i32 noundef %3) #17, !dbg !4122
  %conv = sext i32 %call1 to i64, !dbg !4122
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4122
  ret i64 %conv, !dbg !4122
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4123 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4126 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  %output = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4128, metadata !DIExpression()), !dbg !4133
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4129, metadata !DIExpression()), !dbg !4134
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4130, metadata !DIExpression()), !dbg !4135
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4136
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4131, metadata !DIExpression()), !dbg !4137
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4138
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4139
  store ptr %call, ptr %this_leaf, align 8, !dbg !4137
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #16, !dbg !4140
  call void @llvm.dbg.declare(metadata ptr %output, metadata !4132, metadata !DIExpression()), !dbg !4141
  %1 = load ptr, ptr %this_leaf, align 8, !dbg !4142
  %type = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 1, !dbg !4143
  %2 = load i32, ptr %type, align 4, !dbg !4143
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 4, label %sw.bb2
  ], !dbg !4144

sw.bb:                                            ; preds = %entry
  store ptr @.str.8, ptr %output, align 8, !dbg !4145
  br label %sw.epilog, !dbg !4147

sw.bb1:                                           ; preds = %entry
  store ptr @.str.9, ptr %output, align 8, !dbg !4148
  br label %sw.epilog, !dbg !4149

sw.bb2:                                           ; preds = %entry
  store ptr @.str.10, ptr %output, align 8, !dbg !4150
  br label %sw.epilog, !dbg !4151

sw.default:                                       ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4152

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4153
  %4 = load ptr, ptr %output, align 8, !dbg !4154
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.11, ptr noundef %4) #17, !dbg !4155
  %conv = sext i32 %call3 to i64, !dbg !4155
  store i64 %conv, ptr %retval, align 8, !dbg !4156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4156

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #16, !dbg !4157
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4157
  %5 = load i64, ptr %retval, align 8, !dbg !4157
  ret i64 %5, !dbg !4157
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @level_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4158 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4160, metadata !DIExpression()), !dbg !4164
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4161, metadata !DIExpression()), !dbg !4164
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4162, metadata !DIExpression()), !dbg !4164
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4164
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4163, metadata !DIExpression()), !dbg !4164
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4164
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4164
  store ptr %call, ptr %this_leaf, align 8, !dbg !4164
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4164
  %2 = load ptr, ptr %this_leaf, align 8, !dbg !4164
  %level = getelementptr inbounds %struct.cacheinfo, ptr %2, i32 0, i32 2, !dbg !4164
  %3 = load i32, ptr %level, align 8, !dbg !4164
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.6, i32 noundef %3) #17, !dbg !4164
  %conv = sext i32 %call1 to i64, !dbg !4164
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4164
  ret i64 %conv, !dbg !4164
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @shared_cpu_map_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4165 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  %mask = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4167, metadata !DIExpression()), !dbg !4172
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4168, metadata !DIExpression()), !dbg !4173
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4169, metadata !DIExpression()), !dbg !4174
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4175
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4170, metadata !DIExpression()), !dbg !4176
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4177
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4178
  store ptr %call, ptr %this_leaf, align 8, !dbg !4176
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !4179
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4171, metadata !DIExpression()), !dbg !4180
  %1 = load ptr, ptr %this_leaf, align 8, !dbg !4181
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 8, !dbg !4182
  store ptr %shared_cpu_map, ptr %mask, align 8, !dbg !4180
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4183
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !4184
  %4 = load ptr, ptr %mask, align 8, !dbg !4185
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.14, i32 noundef %3, ptr noundef %4) #17, !dbg !4186
  %conv = sext i32 %call1 to i64, !dbg !4186
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !4187
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4187
  ret i64 %conv, !dbg !4188
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #3 align 16 !dbg !4189 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4194, metadata !DIExpression()), !dbg !4196
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !4195, metadata !DIExpression()), !dbg !4197
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !4198
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4198
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !4198

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !4198
  %cmp = icmp ule i32 %2, 64, !dbg !4198
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4198

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !4198
  %cmp2 = icmp ugt i32 %3, 0, !dbg !4198
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4200

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !4201
  %5 = load i64, ptr %4, align 8, !dbg !4202
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !4203
  %sub = sub i32 0, %6, !dbg !4203
  %and = and i32 %sub, 63, !dbg !4203
  %sh_prom = zext i32 %and to i64, !dbg !4203
  %shr = lshr i64 -1, %sh_prom, !dbg !4203
  %and3 = and i64 %5, %shr, !dbg !4204
  %tobool = icmp ne i64 %and3, 0, !dbg !4205
  %lnot = xor i1 %tobool, true, !dbg !4205
  store i1 %lnot, ptr %retval, align 1, !dbg !4206
  br label %return, !dbg !4206

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !4207
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !4208
  %conv = zext i32 %8 to i64, !dbg !4208
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #17, !dbg !4209
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !4210
  %conv4 = zext i32 %9 to i64, !dbg !4210
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !4211
  store i1 %cmp5, ptr %retval, align 1, !dbg !4212
  br label %return, !dbg !4212

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !4213
  ret i1 %10, !dbg !4213
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !4214 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4218, metadata !DIExpression()), !dbg !4223
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4219, metadata !DIExpression()), !dbg !4224
  %0 = load i64, ptr %size.addr, align 8, !dbg !4225
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4225
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !4225

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4225
  %cmp = icmp ule i64 %2, 64, !dbg !4225
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4225

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !4225
  %cmp2 = icmp ugt i64 %3, 0, !dbg !4225
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4226

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !4227
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4220, metadata !DIExpression()), !dbg !4228
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !4229
  %5 = load i64, ptr %4, align 8, !dbg !4230
  %6 = load i64, ptr %size.addr, align 8, !dbg !4231
  %sub = sub i64 %6, 1, !dbg !4231
  %sub3 = sub i64 63, %sub, !dbg !4231
  %shr = lshr i64 -1, %sub3, !dbg !4231
  %and = and i64 -1, %shr, !dbg !4231
  %add = add i64 0, %and, !dbg !4231
  %and4 = and i64 %5, %add, !dbg !4232
  store i64 %and4, ptr %val, align 8, !dbg !4228
  %7 = load i64, ptr %val, align 8, !dbg !4233
  %tobool = icmp ne i64 %7, 0, !dbg !4233
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !4233

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !4234
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4234
  br i1 %9, label %cond.true5, label %cond.false, !dbg !4234

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !4234
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !4234
  %cast = trunc i64 %11 to i32, !dbg !4234
  %conv = sext i32 %cast to i64, !dbg !4234
  br label %cond.end, !dbg !4234

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !4234
  %call = call i64 @variable__ffs(i64 noundef %12) #17, !dbg !4234
  br label %cond.end, !dbg !4234

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !4234
  br label %cond.end7, !dbg !4233

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !4235
  br label %cond.end7, !dbg !4233

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !4233
  store i64 %cond8, ptr %retval, align 8, !dbg !4236
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !4237
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !4238
  %15 = load i64, ptr %size.addr, align 8, !dbg !4239
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #17, !dbg !4240
  store i64 %call9, ptr %retval, align 8, !dbg !4241
  br label %return, !dbg !4241

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !4242
  ret i64 %16, !dbg !4242
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4243 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @shared_cpu_list_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4244 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  %mask = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4246, metadata !DIExpression()), !dbg !4251
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4247, metadata !DIExpression()), !dbg !4252
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4248, metadata !DIExpression()), !dbg !4253
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4254
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4249, metadata !DIExpression()), !dbg !4255
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4256
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4257
  store ptr %call, ptr %this_leaf, align 8, !dbg !4255
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !4258
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4250, metadata !DIExpression()), !dbg !4259
  %1 = load ptr, ptr %this_leaf, align 8, !dbg !4260
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 8, !dbg !4261
  store ptr %shared_cpu_map, ptr %mask, align 8, !dbg !4259
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4262
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !4263
  %4 = load ptr, ptr %mask, align 8, !dbg !4264
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.16, i32 noundef %3, ptr noundef %4) #17, !dbg !4265
  %conv = sext i32 %call1 to i64, !dbg !4265
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !4266
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4266
  ret i64 %conv, !dbg !4267
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @coherency_line_size_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4268 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4270, metadata !DIExpression()), !dbg !4274
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4271, metadata !DIExpression()), !dbg !4274
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4272, metadata !DIExpression()), !dbg !4274
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4274
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4273, metadata !DIExpression()), !dbg !4274
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4274
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4274
  store ptr %call, ptr %this_leaf, align 8, !dbg !4274
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4274
  %2 = load ptr, ptr %this_leaf, align 8, !dbg !4274
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, ptr %2, i32 0, i32 3, !dbg !4274
  %3 = load i32, ptr %coherency_line_size, align 4, !dbg !4274
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.6, i32 noundef %3) #17, !dbg !4274
  %conv = sext i32 %call1 to i64, !dbg !4274
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4274
  ret i64 %conv, !dbg !4274
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ways_of_associativity_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4275 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4277, metadata !DIExpression()), !dbg !4281
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4278, metadata !DIExpression()), !dbg !4281
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4279, metadata !DIExpression()), !dbg !4281
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4281
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4280, metadata !DIExpression()), !dbg !4281
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4281
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4281
  store ptr %call, ptr %this_leaf, align 8, !dbg !4281
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4281
  %2 = load ptr, ptr %this_leaf, align 8, !dbg !4281
  %ways_of_associativity = getelementptr inbounds %struct.cacheinfo, ptr %2, i32 0, i32 5, !dbg !4281
  %3 = load i32, ptr %ways_of_associativity, align 4, !dbg !4281
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.6, i32 noundef %3) #17, !dbg !4281
  %conv = sext i32 %call1 to i64, !dbg !4281
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4281
  ret i64 %conv, !dbg !4281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @number_of_sets_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4282 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4284, metadata !DIExpression()), !dbg !4288
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4285, metadata !DIExpression()), !dbg !4288
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4286, metadata !DIExpression()), !dbg !4288
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4288
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4287, metadata !DIExpression()), !dbg !4288
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4288
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4288
  store ptr %call, ptr %this_leaf, align 8, !dbg !4288
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4288
  %2 = load ptr, ptr %this_leaf, align 8, !dbg !4288
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, ptr %2, i32 0, i32 4, !dbg !4288
  %3 = load i32, ptr %number_of_sets, align 8, !dbg !4288
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.6, i32 noundef %3) #17, !dbg !4288
  %conv = sext i32 %call1 to i64, !dbg !4288
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4288
  ret i64 %conv, !dbg !4288
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4289 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4291, metadata !DIExpression()), !dbg !4295
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4292, metadata !DIExpression()), !dbg !4296
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4293, metadata !DIExpression()), !dbg !4297
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4298
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4294, metadata !DIExpression()), !dbg !4299
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4300
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4301
  store ptr %call, ptr %this_leaf, align 8, !dbg !4299
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4302
  %2 = load ptr, ptr %this_leaf, align 8, !dbg !4303
  %size = getelementptr inbounds %struct.cacheinfo, ptr %2, i32 0, i32 7, !dbg !4304
  %3 = load i32, ptr %size, align 4, !dbg !4304
  %shr = lshr i32 %3, 10, !dbg !4305
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.21, i32 noundef %shr) #17, !dbg !4306
  %conv = sext i32 %call1 to i64, !dbg !4306
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4307
  ret i64 %conv, !dbg !4308
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @write_policy_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4309 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  %ci_attr = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4311, metadata !DIExpression()), !dbg !4317
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4312, metadata !DIExpression()), !dbg !4318
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4313, metadata !DIExpression()), !dbg !4319
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4320
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4314, metadata !DIExpression()), !dbg !4321
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4322
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4323
  store ptr %call, ptr %this_leaf, align 8, !dbg !4321
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci_attr) #16, !dbg !4324
  call void @llvm.dbg.declare(metadata ptr %ci_attr, metadata !4315, metadata !DIExpression()), !dbg !4325
  %1 = load ptr, ptr %this_leaf, align 8, !dbg !4326
  %attributes = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 9, !dbg !4327
  %2 = load i32, ptr %attributes, align 8, !dbg !4327
  store i32 %2, ptr %ci_attr, align 4, !dbg !4325
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #16, !dbg !4328
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4316, metadata !DIExpression()), !dbg !4329
  store i32 0, ptr %n, align 4, !dbg !4329
  %3 = load i32, ptr %ci_attr, align 4, !dbg !4330
  %conv = zext i32 %3 to i64, !dbg !4330
  %and = and i64 %conv, 1, !dbg !4332
  %tobool = icmp ne i64 %and, 0, !dbg !4332
  br i1 %tobool, label %if.then, label %if.else, !dbg !4333

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !4334
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.23) #17, !dbg !4335
  store i32 %call1, ptr %n, align 4, !dbg !4336
  br label %if.end7, !dbg !4337

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %ci_attr, align 4, !dbg !4338
  %conv2 = zext i32 %5 to i64, !dbg !4338
  %and3 = and i64 %conv2, 2, !dbg !4340
  %tobool4 = icmp ne i64 %and3, 0, !dbg !4340
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !4341

if.then5:                                         ; preds = %if.else
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !4342
  %call6 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %6, ptr noundef @.str.24) #17, !dbg !4343
  store i32 %call6, ptr %n, align 4, !dbg !4344
  br label %if.end, !dbg !4345

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %7 = load i32, ptr %n, align 4, !dbg !4346
  %conv8 = sext i32 %7 to i64, !dbg !4346
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #16, !dbg !4347
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci_attr) #16, !dbg !4347
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4347
  ret i64 %conv8, !dbg !4348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @allocation_policy_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4349 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  %ci_attr = alloca i32, align 4
  %output = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4351, metadata !DIExpression()), !dbg !4357
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4352, metadata !DIExpression()), !dbg !4358
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4353, metadata !DIExpression()), !dbg !4359
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4360
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4354, metadata !DIExpression()), !dbg !4361
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4362
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4363
  store ptr %call, ptr %this_leaf, align 8, !dbg !4361
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci_attr) #16, !dbg !4364
  call void @llvm.dbg.declare(metadata ptr %ci_attr, metadata !4355, metadata !DIExpression()), !dbg !4365
  %1 = load ptr, ptr %this_leaf, align 8, !dbg !4366
  %attributes = getelementptr inbounds %struct.cacheinfo, ptr %1, i32 0, i32 9, !dbg !4367
  %2 = load i32, ptr %attributes, align 8, !dbg !4367
  store i32 %2, ptr %ci_attr, align 4, !dbg !4365
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #16, !dbg !4368
  call void @llvm.dbg.declare(metadata ptr %output, metadata !4356, metadata !DIExpression()), !dbg !4369
  %3 = load i32, ptr %ci_attr, align 4, !dbg !4370
  %conv = zext i32 %3 to i64, !dbg !4370
  %and = and i64 %conv, 4, !dbg !4372
  %tobool = icmp ne i64 %and, 0, !dbg !4372
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !4373

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %ci_attr, align 4, !dbg !4374
  %conv1 = zext i32 %4 to i64, !dbg !4374
  %and2 = and i64 %conv1, 8, !dbg !4375
  %tobool3 = icmp ne i64 %and2, 0, !dbg !4375
  br i1 %tobool3, label %if.then, label %if.else, !dbg !4376

if.then:                                          ; preds = %land.lhs.true
  store ptr @.str.26, ptr %output, align 8, !dbg !4377
  br label %if.end15, !dbg !4378

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %ci_attr, align 4, !dbg !4379
  %conv4 = zext i32 %5 to i64, !dbg !4379
  %and5 = and i64 %conv4, 4, !dbg !4381
  %tobool6 = icmp ne i64 %and5, 0, !dbg !4381
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !4382

if.then7:                                         ; preds = %if.else
  store ptr @.str.27, ptr %output, align 8, !dbg !4383
  br label %if.end14, !dbg !4384

if.else8:                                         ; preds = %if.else
  %6 = load i32, ptr %ci_attr, align 4, !dbg !4385
  %conv9 = zext i32 %6 to i64, !dbg !4385
  %and10 = and i64 %conv9, 8, !dbg !4387
  %tobool11 = icmp ne i64 %and10, 0, !dbg !4387
  br i1 %tobool11, label %if.then12, label %if.else13, !dbg !4388

if.then12:                                        ; preds = %if.else8
  store ptr @.str.28, ptr %output, align 8, !dbg !4389
  br label %if.end, !dbg !4390

if.else13:                                        ; preds = %if.else8
  store i64 0, ptr %retval, align 8, !dbg !4391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4391

if.end:                                           ; preds = %if.then12
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !4392
  %8 = load ptr, ptr %output, align 8, !dbg !4393
  %call16 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %7, ptr noundef @.str.11, ptr noundef %8) #17, !dbg !4394
  %conv17 = sext i32 %call16 to i64, !dbg !4394
  store i64 %conv17, ptr %retval, align 8, !dbg !4395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4395

cleanup:                                          ; preds = %if.end15, %if.else13
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #16, !dbg !4396
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci_attr) #16, !dbg !4396
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4396
  %9 = load i64, ptr %retval, align 8, !dbg !4396
  ret i64 %9, !dbg !4396
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @physical_line_partition_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4397 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %this_leaf = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4399, metadata !DIExpression()), !dbg !4403
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4400, metadata !DIExpression()), !dbg !4403
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4401, metadata !DIExpression()), !dbg !4403
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_leaf) #16, !dbg !4403
  call void @llvm.dbg.declare(metadata ptr %this_leaf, metadata !4402, metadata !DIExpression()), !dbg !4403
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4403
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !4403
  store ptr %call, ptr %this_leaf, align 8, !dbg !4403
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4403
  %2 = load ptr, ptr %this_leaf, align 8, !dbg !4403
  %physical_line_partition = getelementptr inbounds %struct.cacheinfo, ptr %2, i32 0, i32 6, !dbg !4403
  %3 = load i32, ptr %physical_line_partition, align 8, !dbg !4403
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.6, i32 noundef %3) #17, !dbg !4403
  %conv = sext i32 %call1 to i64, !dbg !4403
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_leaf) #16, !dbg !4403
  ret i64 %conv, !dbg !4403
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4404 dso_local void @device_unregister(ptr noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %cpu, ptr noundef %cpumask) #11 align 16 !dbg !4405 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4409, metadata !DIExpression()), !dbg !4411
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !4410, metadata !DIExpression()), !dbg !4412
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4413
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !4414
  %conv = zext i32 %call to i64, !dbg !4414
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !4415
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4415
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4415
  %call1 = call zeroext i1 @test_and_clear_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !4416
  ret i1 %call1, !dbg !4417
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !4418 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4422, metadata !DIExpression()), !dbg !4424
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4423, metadata !DIExpression()), !dbg !4425
  br label %do.body, !dbg !4426

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4427

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4429
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4430
  %div = sdiv i64 %1, 64, !dbg !4430
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4431
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !4432
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4433
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4434
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !4435
  ret i1 %call, !dbg !4436
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !4437 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4439, metadata !DIExpression()), !dbg !4441
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4440, metadata !DIExpression()), !dbg !4442
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4443
  %1 = load i64, ptr %size.addr, align 8, !dbg !4444
  %conv = trunc i64 %1 to i32, !dbg !4444
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !4445
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4446
  %3 = load i64, ptr %size.addr, align 8, !dbg !4446
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !4446
  ret void, !dbg !4447
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !4448 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4450, metadata !DIExpression()), !dbg !4454
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4451, metadata !DIExpression()), !dbg !4455
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !4456
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4452, metadata !DIExpression()), !dbg !4456
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4456
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4456
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #16, !dbg !4456, !srcloc !4457
  %3 = icmp ult i8 %2, 2, !dbg !4456
  call void @llvm.assume(i1 %3), !dbg !4456
  store i8 %2, ptr %c, align 1, !dbg !4456
  %4 = load i8, ptr %c, align 1, !dbg !4456, !range !2281, !noundef !578
  %tobool = trunc i8 %4 to i1, !dbg !4456
  %frombool = zext i1 %tobool to i8, !dbg !4456
  store i8 %frombool, ptr %tmp, align 1, !dbg !4456
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !4458
  %5 = load i8, ptr %tmp, align 1, !dbg !4456, !range !2281, !noundef !578
  %tobool1 = trunc i8 %5 to i1, !dbg !4456
  ret i1 %tobool1, !dbg !4459
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }
attributes #23 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!llvm.ident = !{!2134}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ci_cpu_cacheinfo", scope: !2, file: !3, line: 24, type: !303, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.cacheinfo.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/cacheinfo\22 -D KBUILD_BASENAME=\22cacheinfo\22 -D KBUILD_MODNAME=\22cacheinfo\22 -D __KBUILD_MODNAME=kmod_cacheinfo -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/cacheinfo.ll drivers/base/cacheinfo.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !301, globals: !1959, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/cacheinfo.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c849258eb9750258f43f3a34041d0b")
!4 = !{!5, !14, !19, !25, !35, !230, !237, !243, !250, !255, !263, !270, !276, !285, !290, !295}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cache_type", file: !6, line: 12, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/cacheinfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6f1e8fdde08fb2212a7838065ef51cd")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CACHE_TYPE_NOCACHE", value: 0)
!10 = !DIEnumerator(name: "CACHE_TYPE_INST", value: 1)
!11 = !DIEnumerator(name: "CACHE_TYPE_DATA", value: 2)
!12 = !DIEnumerator(name: "CACHE_TYPE_SEPARATE", value: 3)
!13 = !DIEnumerator(name: "CACHE_TYPE_UNIFIED", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 10, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "false", value: 0)
!18 = !DIEnumerator(name: "true", value: 1)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !20, line: 26, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!23 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!24 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !26, line: 364, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!27 = !{!28, !29, !30, !31, !32, !33, !34}
!28 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!29 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!30 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!31 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!32 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!33 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!34 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !36, line: 57, baseType: !37, size: 32, elements: !38)
!36 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!39 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!40 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!41 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!42 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!43 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!44 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!45 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!46 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!47 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!48 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!49 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!50 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!51 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!52 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!53 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!54 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!55 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!56 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!57 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!58 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!59 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!60 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!61 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!62 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!63 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!64 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!65 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!66 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!67 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!68 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!69 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!70 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!71 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!72 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!73 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!74 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!75 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!76 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!77 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!78 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!79 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!80 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!81 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!82 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!83 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!84 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!85 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!86 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!87 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!88 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!89 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!90 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!91 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!92 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!93 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!94 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!95 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!96 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!97 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!98 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!99 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!100 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!101 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!102 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!103 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!104 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!105 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!106 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!107 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!108 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!109 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!110 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!111 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!112 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!113 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!114 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!115 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!116 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!117 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!118 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!119 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!120 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!121 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!122 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!123 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!124 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!125 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!126 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!127 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!128 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!129 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!130 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!131 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!132 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!133 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!134 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!135 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!136 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!137 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!138 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!139 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!140 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!141 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!142 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!143 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!144 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!145 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!146 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!147 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!148 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!149 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!150 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!151 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!152 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!153 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!154 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!155 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!156 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!157 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!158 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!159 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!160 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!161 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!162 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!163 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!164 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!165 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!166 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!167 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!168 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!169 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!170 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!171 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!172 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!173 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!174 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!175 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!176 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!177 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!178 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!179 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!180 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!181 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!182 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!183 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!194 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!195 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!196 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!197 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!198 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!199 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!200 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!201 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!202 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!203 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!204 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!205 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!206 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!207 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!208 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!209 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!210 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!211 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!212 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!213 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!214 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!215 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!216 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!217 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!218 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!219 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!220 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!221 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!222 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!223 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!224 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!225 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!226 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!227 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!228 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!229 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !231, line: 312, baseType: !7, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!232 = !{!233, !234, !235, !236}
!233 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!234 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!235 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!236 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !238, line: 45, baseType: !7, size: 32, elements: !239)
!238 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!239 = !{!240, !241, !242}
!240 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!241 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!242 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !244, line: 487, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!245 = !{!246, !247, !248, !249}
!246 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!247 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!248 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!249 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !251, line: 65, baseType: !7, size: 32, elements: !252)
!251 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!252 = !{!253, !254}
!253 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!254 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !256, line: 620, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!257 = !{!258, !259, !260, !261, !262}
!258 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!259 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!260 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!261 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!262 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !256, line: 597, baseType: !37, size: 32, elements: !264)
!264 = !{!265, !266, !267, !268, !269}
!265 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!266 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!267 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!268 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!269 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !271, line: 30, baseType: !7, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!272 = !{!273, !274, !275}
!273 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!274 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!275 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !244, line: 547, baseType: !7, size: 32, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284}
!278 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!279 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!280 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!281 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!282 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!283 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!284 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !244, line: 564, baseType: !7, size: 32, elements: !286)
!286 = !{!287, !288, !289}
!287 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!288 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!289 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !244, line: 577, baseType: !7, size: 32, elements: !291)
!291 = !{!292, !293, !294}
!292 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!293 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!294 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !244, line: 503, baseType: !7, size: 32, elements: !296)
!296 = !{!297, !298, !299, !300}
!297 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!298 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!299 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!300 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!301 = !{!302, !329, !324, !339, !340, !7, !342, !345, !37, !348, !1958, !349, !347}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_cacheinfo", file: !6, line: 74, size: 192, elements: !304)
!304 = !{!305, !335, !336, !337, !338}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "info_list", scope: !303, file: !6, line: 75, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheinfo", file: !6, line: 49, size: 576, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !327, !328, !330, !334}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !307, file: !6, line: 50, baseType: !7, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !307, file: !6, line: 51, baseType: !5, size: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !307, file: !6, line: 52, baseType: !7, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "coherency_line_size", scope: !307, file: !6, line: 53, baseType: !7, size: 32, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sets", scope: !307, file: !6, line: 54, baseType: !7, size: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ways_of_associativity", scope: !307, file: !6, line: 55, baseType: !7, size: 32, offset: 160)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "physical_line_partition", scope: !307, file: !6, line: 56, baseType: !7, size: 32, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !307, file: !6, line: 57, baseType: !7, size: 32, offset: 224)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !307, file: !6, line: 58, baseType: !318, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !319, line: 19, baseType: !320)
!319 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !319, line: 19, size: 64, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !320, file: !319, line: 19, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 64, elements: !325)
!324 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!325 = !{!326}
!326 = !DISubrange(count: 1)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !307, file: !6, line: 59, baseType: !7, size: 32, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "fw_token", scope: !307, file: !6, line: 69, baseType: !329, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "disable_sysfs", scope: !307, file: !6, line: 70, baseType: !331, size: 8, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !332, line: 35, baseType: !333)
!332 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!333 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !307, file: !6, line: 71, baseType: !329, size: 64, offset: 512)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "num_levels", scope: !303, file: !6, line: 76, baseType: !7, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "num_leaves", scope: !303, file: !6, line: 77, baseType: !7, size: 32, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_map_populated", scope: !303, file: !6, line: 78, baseType: !331, size: 8, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "early_ci_levels", scope: !303, file: !6, line: 79, baseType: !331, size: 8, offset: 136)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !332, line: 154, baseType: !7)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !344)
!344 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !347)
!347 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !244, line: 705, size: 5824, elements: !351)
!351 = !{!352, !1015, !1016, !1019, !1020, !1073, !1541, !1542, !1543, !1544, !1545, !1552, !1722, !1735, !1745, !1749, !1751, !1752, !1753, !1757, !1764, !1765, !1768, !1771, !1897, !1898, !1899, !1902, !1903, !1904, !1905, !1935, !1936, !1937, !1940, !1943, !1952, !1953, !1954, !1955, !1956, !1957}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !350, file: !244, line: 706, baseType: !353, size: 512)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !354, line: 64, size: 512, elements: !355)
!354 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!355 = !{!356, !359, !365, !367, !456, !885, !1000, !1010, !1011, !1012, !1013, !1014}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !354, line: 65, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !353, file: !354, line: 66, baseType: !360, size: 128, offset: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !332, line: 190, size: 128, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !332, line: 191, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !360, file: !332, line: 191, baseType: !363, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !353, file: !354, line: 67, baseType: !366, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !353, file: !354, line: 68, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !354, line: 168, size: 768, elements: !370)
!370 = !{!371, !372, !415, !416}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !369, file: !354, line: 169, baseType: !360, size: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !369, file: !354, line: 170, baseType: !373, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !374, line: 29, baseType: !375)
!374 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !374, line: 17, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !374, line: 18, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !374, line: 18, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !378, file: !374, line: 19, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !382, line: 14, size: 32, elements: !383)
!382 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !381, file: !382, line: 15, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !386, line: 44, baseType: !387)
!386 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !386, line: 14, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !386, line: 15, baseType: !390, size: 32)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !386, line: 15, size: 32, elements: !391)
!391 = !{!392, !397, !407}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !390, file: !386, line: 16, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !332, line: 174, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 172, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !394, file: !332, line: 173, baseType: !37, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !386, line: 24, baseType: !398, size: 16)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !386, line: 24, size: 16, elements: !399)
!399 = !{!400, !406}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !398, file: !386, line: 25, baseType: !401, size: 8)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !402, line: 17, baseType: !403)
!402 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !404, line: 21, baseType: !405)
!404 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!405 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !398, file: !386, line: 26, baseType: !401, size: 8, offset: 8)
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !386, line: 28, baseType: !408, size: 32)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !386, line: 28, size: 32, elements: !409)
!409 = !{!410, !414}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !408, file: !386, line: 29, baseType: !411, size: 16)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !402, line: 19, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !404, line: 24, baseType: !413)
!413 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !408, file: !386, line: 30, baseType: !411, size: 16, offset: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !369, file: !354, line: 171, baseType: !353, size: 512, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !369, file: !354, line: 172, baseType: !417, size: 64, offset: 704)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !354, line: 133, size: 192, elements: !420)
!420 = !{!421, !428, !433}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !419, file: !354, line: 134, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!37, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !419, file: !354, line: 135, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!357, !426}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !419, file: !354, line: 136, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!37, !426, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !354, line: 125, size: 20736, elements: !440)
!440 = !{!441, !446, !450, !451, !455}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !439, file: !354, line: 126, baseType: !442, size: 192)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 192, elements: !444)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!444 = !{!445}
!445 = !DISubrange(count: 3)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !439, file: !354, line: 127, baseType: !447, size: 4096, offset: 192)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 4096, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !439, file: !354, line: 128, baseType: !37, size: 32, offset: 4288)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !439, file: !354, line: 129, baseType: !452, size: 16384, offset: 4320)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 16384, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 2048)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !439, file: !354, line: 130, baseType: !37, size: 32, offset: 20704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !353, file: !354, line: 69, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !354, line: 116, size: 384, elements: !460)
!460 = !{!461, !465, !492, !831, !862, !866}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !459, file: !354, line: 117, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !366}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !459, file: !354, line: 118, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !469, line: 254, size: 128, elements: !470)
!469 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!470 = !{!471, !485}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !468, file: !469, line: 255, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!475, !366, !479, !443}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !332, line: 66, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !477, line: 73, baseType: !478)
!477 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !477, line: 15, baseType: !347)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !469, line: 30, size: 128, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !480, file: !469, line: 31, baseType: !357, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !480, file: !469, line: 32, baseType: !484, size: 16, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !332, line: 24, baseType: !413)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !468, file: !469, line: 256, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!475, !366, !479, !357, !489}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !332, line: 61, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !477, line: 72, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !477, line: 16, baseType: !324)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !459, file: !354, line: 119, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !469, line: 84, size: 320, elements: !497)
!497 = !{!498, !499, !503, !827, !829}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !496, file: !469, line: 85, baseType: !357, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !496, file: !469, line: 86, baseType: !500, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!484, !366, !479, !37}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !496, file: !469, line: 88, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!484, !366, !507, !37}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !469, line: 175, size: 512, elements: !509)
!509 = !{!510, !511, !512, !513, !520, !530, !531}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !508, file: !469, line: 176, baseType: !480, size: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !508, file: !469, line: 177, baseType: !489, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !508, file: !469, line: 178, baseType: !329, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !508, file: !469, line: 179, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !519, line: 351, flags: DIFlagFwdDecl)
!519 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !508, file: !469, line: 180, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!475, !524, !366, !507, !443, !527, !489}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !526, line: 537, flags: DIFlagFwdDecl)
!526 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !332, line: 52, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !477, line: 88, baseType: !529)
!529 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !508, file: !469, line: 182, baseType: !521, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !508, file: !469, line: 184, baseType: !532, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!37, !524, !366, !507, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !537, line: 625, size: 1344, elements: !538)
!537 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!538 = !{!539, !556, !778, !784, !791, !792, !797, !798, !810, !811, !814, !818, !819, !820, !821, !822, !825}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !537, line: 628, baseType: !540, size: 128)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !537, line: 628, size: 128, elements: !541)
!541 = !{!542, !547}
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !537, line: 629, baseType: !543, size: 128)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !540, file: !537, line: 629, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !543, file: !537, line: 631, baseType: !324, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !543, file: !537, line: 632, baseType: !324, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !540, file: !537, line: 635, baseType: !548, size: 128, align: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !332, line: 232, size: 128, align: 64, elements: !549)
!549 = !{!550, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !332, line: 233, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !548, file: !332, line: 234, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !551}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !536, file: !537, line: 639, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !537, line: 733, size: 10240, elements: !559)
!559 = !{!560, !774}
!560 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !537, line: 734, baseType: !561, size: 10240)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !537, line: 734, size: 10240, elements: !562)
!562 = !{!563, !567, !581, !585, !586, !587, !588, !589, !590, !598, !599, !600, !609, !610, !619, !620, !621, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !668, !682, !685, !740, !741, !742, !745, !748, !749, !752, !753, !754, !761, !762}
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !537, line: 739, baseType: !564, size: 512, align: 512)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !561, file: !537, line: 739, size: 512, align: 512, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !564, file: !537, line: 747, baseType: !393, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !561, file: !537, line: 750, baseType: !568, size: 128, offset: 512)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !569, line: 218, size: 128, elements: !570)
!569 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!570 = !{!571, !579, !580}
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !569, line: 219, baseType: !572, size: 32)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !568, file: !569, line: 219, size: 32, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !572, file: !569, line: 220, baseType: !373, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !572, file: !569, line: 221, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !569, line: 197, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 197, elements: !578)
!578 = !{}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !568, file: !569, line: 223, baseType: !7, size: 32, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !568, file: !569, line: 224, baseType: !329, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !561, file: !537, line: 752, baseType: !582, size: 64, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!324, !524, !324, !324, !324, !324}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !561, file: !537, line: 756, baseType: !324, size: 64, offset: 704)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !561, file: !537, line: 757, baseType: !324, size: 64, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !561, file: !537, line: 760, baseType: !324, size: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !561, file: !537, line: 761, baseType: !324, size: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !561, file: !537, line: 763, baseType: !324, size: 64, offset: 960)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !561, file: !537, line: 764, baseType: !591, size: 64, offset: 1024)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !526, line: 299, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 299, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !593, file: !526, line: 299, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !597, line: 18, baseType: !324)
!597 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!598 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !561, file: !537, line: 773, baseType: !393, size: 32, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !561, file: !537, line: 785, baseType: !393, size: 32, offset: 1120)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !561, file: !537, line: 795, baseType: !601, size: 64, offset: 1152)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !537, line: 726, size: 128, elements: !603)
!603 = !{!604, !608}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !602, file: !537, line: 727, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !402, line: 23, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !404, line: 31, baseType: !607)
!607 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !602, file: !537, line: 728, baseType: !37, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !561, file: !537, line: 801, baseType: !324, size: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !561, file: !537, line: 804, baseType: !611, size: 64, offset: 1280)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !612, line: 13, baseType: !613)
!612 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !332, line: 181, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 179, size: 64, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !614, file: !332, line: 180, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !402, line: 22, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !404, line: 30, baseType: !529)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !561, file: !537, line: 806, baseType: !37, size: 32, offset: 1344)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !561, file: !537, line: 808, baseType: !373, size: 32, offset: 1376)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !561, file: !537, line: 823, baseType: !622, size: 320, offset: 1408)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !623, line: 48, size: 320, elements: !624)
!623 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!624 = !{!625, !626, !627, !632, !634}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !622, file: !623, line: 49, baseType: !611, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !622, file: !623, line: 55, baseType: !611, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !622, file: !623, line: 57, baseType: !628, size: 32, offset: 128)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !629, line: 15, size: 32, elements: !630)
!629 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !628, file: !629, line: 20, baseType: !393, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !622, file: !623, line: 59, baseType: !633, size: 32, offset: 160)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !382, line: 23, baseType: !381)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !622, file: !623, line: 60, baseType: !360, size: 128, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !561, file: !537, line: 825, baseType: !360, size: 128, offset: 1728)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !561, file: !537, line: 845, baseType: !37, size: 32, offset: 1856)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !561, file: !537, line: 849, baseType: !324, size: 64, offset: 1920)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !561, file: !537, line: 850, baseType: !324, size: 64, offset: 1984)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !561, file: !537, line: 852, baseType: !324, size: 64, offset: 2048)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !561, file: !537, line: 853, baseType: !324, size: 64, offset: 2112)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !561, file: !537, line: 854, baseType: !613, size: 64, offset: 2176)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !561, file: !537, line: 855, baseType: !324, size: 64, offset: 2240)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !561, file: !537, line: 856, baseType: !324, size: 64, offset: 2304)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !561, file: !537, line: 857, baseType: !324, size: 64, offset: 2368)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !561, file: !537, line: 858, baseType: !324, size: 64, offset: 2432)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !561, file: !537, line: 865, baseType: !647, size: 32, offset: 2496)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !648, line: 69, baseType: !649)
!648 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !648, line: 64, size: 32, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !649, file: !648, line: 65, baseType: !7, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !561, file: !537, line: 867, baseType: !373, size: 32, offset: 2528)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !561, file: !537, line: 869, baseType: !324, size: 64, offset: 2560)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !561, file: !537, line: 869, baseType: !324, size: 64, offset: 2624)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !561, file: !537, line: 869, baseType: !324, size: 64, offset: 2688)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !561, file: !537, line: 869, baseType: !324, size: 64, offset: 2752)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !561, file: !537, line: 870, baseType: !324, size: 64, offset: 2816)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !561, file: !537, line: 870, baseType: !324, size: 64, offset: 2880)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !561, file: !537, line: 870, baseType: !324, size: 64, offset: 2944)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !561, file: !537, line: 871, baseType: !324, size: 64, offset: 3008)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !561, file: !537, line: 871, baseType: !324, size: 64, offset: 3072)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !561, file: !537, line: 871, baseType: !324, size: 64, offset: 3136)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !561, file: !537, line: 871, baseType: !324, size: 64, offset: 3200)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !561, file: !537, line: 873, baseType: !665, size: 3328, offset: 3264)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 3328, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 52)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !561, file: !537, line: 875, baseType: !669, size: 1280, offset: 6592)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 1280, elements: !680)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !671, line: 22, size: 320, elements: !672)
!671 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!672 = !{!673, !674, !675, !676}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !670, file: !671, line: 23, baseType: !633, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !670, file: !671, line: 24, baseType: !617, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !670, file: !671, line: 26, baseType: !360, size: 128, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !670, file: !671, line: 28, baseType: !677, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !402, line: 20, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !404, line: 26, baseType: !37)
!680 = !{!681}
!681 = !DISubrange(count: 4)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !561, file: !537, line: 877, baseType: !683, size: 64, offset: 7872)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !537, line: 877, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !561, file: !537, line: 880, baseType: !686, size: 1088, offset: 7936)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !687, line: 72, baseType: !688)
!687 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !687, line: 23, size: 1088, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !697, !698, !706, !707, !734, !735, !736}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !688, file: !687, line: 28, baseType: !605, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !688, file: !687, line: 38, baseType: !613, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !688, file: !687, line: 40, baseType: !324, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !688, file: !687, line: 43, baseType: !622, size: 320, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !688, file: !687, line: 44, baseType: !695, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !687, line: 44, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !687, line: 48, baseType: !324, size: 64, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !688, file: !687, line: 59, baseType: !699, size: 256, offset: 640)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !700, line: 66, size: 256, elements: !701)
!700 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!701 = !{!702, !703, !704, !705}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !699, file: !700, line: 67, baseType: !611, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !699, file: !700, line: 68, baseType: !633, size: 32, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !699, file: !700, line: 70, baseType: !628, size: 32, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !699, file: !700, line: 72, baseType: !360, size: 128, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !688, file: !687, line: 60, baseType: !329, size: 64, offset: 896)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !688, file: !687, line: 61, baseType: !708, size: 64, offset: 960)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !711, line: 13, size: 1216, elements: !712)
!711 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!712 = !{!713, !714, !715, !716, !717, !718, !719, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !710, file: !711, line: 14, baseType: !329, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !710, file: !711, line: 15, baseType: !324, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !710, file: !711, line: 17, baseType: !324, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !710, file: !711, line: 17, baseType: !324, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !710, file: !711, line: 18, baseType: !324, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !710, file: !711, line: 18, baseType: !324, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !710, file: !711, line: 19, baseType: !720, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !710, file: !711, line: 21, baseType: !347, size: 64, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !710, file: !711, line: 23, baseType: !347, size: 64, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !710, file: !711, line: 24, baseType: !347, size: 64, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !710, file: !711, line: 25, baseType: !347, size: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !710, file: !711, line: 26, baseType: !347, size: 64, offset: 704)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !710, file: !711, line: 27, baseType: !347, size: 64, offset: 768)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !710, file: !711, line: 28, baseType: !347, size: 64, offset: 832)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !710, file: !711, line: 29, baseType: !347, size: 64, offset: 896)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !710, file: !711, line: 30, baseType: !347, size: 64, offset: 960)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !710, file: !711, line: 31, baseType: !347, size: 64, offset: 1024)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !710, file: !711, line: 32, baseType: !347, size: 64, offset: 1088)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !710, file: !711, line: 33, baseType: !347, size: 64, offset: 1152)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !688, file: !687, line: 63, baseType: !393, size: 32, offset: 1024)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !688, file: !687, line: 69, baseType: !411, size: 16, offset: 1056)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !688, file: !687, line: 70, baseType: !737, size: 16, offset: 1072)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !402, line: 18, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !404, line: 23, baseType: !739)
!739 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !537, line: 882, baseType: !324, size: 64, offset: 9024)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !561, file: !537, line: 885, baseType: !373, size: 32, offset: 9088)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !561, file: !537, line: 886, baseType: !743, size: 64, offset: 9152)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !537, line: 732, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !561, file: !537, line: 901, baseType: !746, size: 64, offset: 9216)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !537, line: 901, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !561, file: !537, line: 904, baseType: !524, size: 64, offset: 9280)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !561, file: !537, line: 906, baseType: !750, size: 64, offset: 9344)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !537, line: 906, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !561, file: !537, line: 930, baseType: !393, size: 32, offset: 9408)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !561, file: !537, line: 933, baseType: !393, size: 32, offset: 9440)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !561, file: !537, line: 935, baseType: !755, size: 64, offset: 9472)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !756, line: 103, size: 64, elements: !757)
!756 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !755, file: !756, line: 104, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !756, line: 101, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !561, file: !537, line: 940, baseType: !611, size: 64, offset: 9536)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !561, file: !537, line: 942, baseType: !763, size: 256, offset: 9600)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !764, line: 98, size: 256, elements: !765)
!764 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !763, file: !764, line: 99, baseType: !611, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !763, file: !764, line: 100, baseType: !360, size: 128, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !763, file: !764, line: 101, baseType: !769, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !764, line: 21, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !558, file: !537, line: 986, baseType: !775, offset: 10240)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: -1)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !536, file: !537, line: 640, baseType: !779, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !526, line: 297, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !526, line: 297, size: 64, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !780, file: !526, line: 297, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !597, line: 19, baseType: !324)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !537, line: 646, baseType: !785, size: 64, offset: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !537, line: 646, size: 64, elements: !786)
!786 = !{!787, !790}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !785, file: !537, line: 647, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !537, line: 542, baseType: !324)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !785, file: !537, line: 648, baseType: !789, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !536, file: !537, line: 666, baseType: !37, size: 32, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !536, file: !537, line: 667, baseType: !793, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !537, line: 579, size: 320, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !537, line: 580, baseType: !622, size: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !536, file: !537, line: 670, baseType: !331, size: 8, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !536, file: !537, line: 681, baseType: !799, size: 256, offset: 512)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !537, line: 678, size: 256, elements: !800)
!800 = !{!801, !809}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !799, file: !537, line: 679, baseType: !802, size: 192, align: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !803, line: 5, size: 192, align: 64, elements: !804)
!803 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!804 = !{!805, !806, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !802, file: !803, line: 6, baseType: !324, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !802, file: !803, line: 7, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !802, file: !803, line: 8, baseType: !807, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !799, file: !537, line: 680, baseType: !324, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !536, file: !537, line: 689, baseType: !360, size: 128, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !536, file: !537, line: 691, baseType: !812, size: 64, offset: 896)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !537, line: 691, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !536, file: !537, line: 694, baseType: !815, size: 64, offset: 960)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !537, line: 694, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !536, file: !537, line: 697, baseType: !324, size: 64, offset: 1024)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !536, file: !537, line: 699, baseType: !524, size: 64, offset: 1088)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !536, file: !537, line: 700, baseType: !329, size: 64, offset: 1152)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !536, file: !537, line: 711, baseType: !611, size: 64, offset: 1216)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !536, file: !537, line: 717, baseType: !823, size: 64, offset: 1280)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !537, line: 717, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !536, file: !537, line: 722, baseType: !826, offset: 1344)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !537, line: 570, elements: !578)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !496, file: !469, line: 90, baseType: !828, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !496, file: !469, line: 91, baseType: !830, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !459, file: !354, line: 120, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!835, !426}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !20, line: 39, size: 384, elements: !838)
!838 = !{!839, !840, !844, !848, !854, !858}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !837, file: !20, line: 40, baseType: !19, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !837, file: !20, line: 41, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!331}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !837, file: !20, line: 42, baseType: !845, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!329}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !837, file: !20, line: 43, baseType: !849, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!720, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !20, line: 19, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !837, file: !20, line: 44, baseType: !855, size: 64, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!720}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !837, file: !20, line: 45, baseType: !859, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !329}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !459, file: !354, line: 121, baseType: !863, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!720, !426}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !459, file: !354, line: 122, baseType: !867, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !426, !870, !878}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !872, line: 23, baseType: !873)
!872 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !872, line: 21, size: 32, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !873, file: !872, line: 22, baseType: !876, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !332, line: 37, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !477, line: 49, baseType: !7)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !872, line: 28, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !872, line: 26, size: 32, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !880, file: !872, line: 27, baseType: !883, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !332, line: 38, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !477, line: 50, baseType: !7)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !353, file: !354, line: 70, baseType: !886, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !888, line: 190, size: 1152, elements: !889)
!888 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!889 = !{!890, !891, !892, !893, !894, !895, !896, !897, !992, !993, !994, !995, !996, !999}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !887, file: !888, line: 191, baseType: !393, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !887, file: !888, line: 192, baseType: !393, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !887, file: !888, line: 202, baseType: !886, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !887, file: !888, line: 203, baseType: !357, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !887, file: !888, line: 205, baseType: !802, size: 192, align: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !887, file: !888, line: 207, baseType: !720, size: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !887, file: !888, line: 208, baseType: !7, size: 32, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 209, baseType: !898, size: 256, offset: 512)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 209, size: 256, elements: !899)
!899 = !{!900, !912, !916}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !898, file: !888, line: 210, baseType: !901, size: 256)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !888, line: 153, size: 256, elements: !902)
!902 = !{!903, !904, !908, !911}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !901, file: !888, line: 154, baseType: !324, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !901, file: !888, line: 156, baseType: !905, size: 64, offset: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !803, line: 12, size: 64, elements: !906)
!906 = !{!907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !905, file: !803, line: 13, baseType: !807, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !901, file: !888, line: 162, baseType: !909, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !888, line: 162, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !901, file: !888, line: 167, baseType: !324, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !898, file: !888, line: 211, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !888, line: 170, size: 64, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !913, file: !888, line: 171, baseType: !886, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !898, file: !888, line: 212, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !888, line: 174, size: 256, elements: !918)
!918 = !{!919, !987, !990, !991}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !917, file: !888, line: 175, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !888, line: 271, size: 768, elements: !923)
!923 = !{!924, !947, !951, !955, !960, !964, !968, !972, !973, !974, !975, !983}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !922, file: !888, line: 276, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!37, !928}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !888, line: 251, size: 1216, elements: !930)
!930 = !{!931, !932, !933, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !929, file: !888, line: 253, baseType: !886, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !929, file: !888, line: 254, baseType: !524, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !929, file: !888, line: 255, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !936, line: 66, flags: DIFlagFwdDecl)
!936 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!937 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !929, file: !888, line: 256, baseType: !329, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !929, file: !888, line: 259, baseType: !699, size: 256, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !929, file: !888, line: 260, baseType: !699, size: 256, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !929, file: !888, line: 261, baseType: !37, size: 32, offset: 768)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !929, file: !888, line: 262, baseType: !360, size: 128, offset: 832)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !929, file: !888, line: 263, baseType: !443, size: 64, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !929, file: !888, line: 265, baseType: !489, size: 64, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !929, file: !888, line: 266, baseType: !331, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !929, file: !888, line: 267, baseType: !331, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !929, file: !888, line: 268, baseType: !815, size: 64, offset: 1152)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !922, file: !888, line: 277, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !928}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !922, file: !888, line: 290, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!37, !934, !329}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !922, file: !888, line: 292, baseType: !956, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!329, !934, !959}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !922, file: !888, line: 293, baseType: !961, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!329, !934, !329, !959}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !922, file: !888, line: 294, baseType: !965, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !934, !329}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !922, file: !888, line: 296, baseType: !969, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!475, !928, !443, !489, !527}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !922, file: !888, line: 306, baseType: !489, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !922, file: !888, line: 313, baseType: !331, size: 8, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !922, file: !888, line: 314, baseType: !969, size: 64, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !922, file: !888, line: 317, baseType: !976, size: 64, offset: 640)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!979, !928, !981}
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !980, line: 59, baseType: !7)
!980 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !888, line: 31, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !922, file: !888, line: 320, baseType: !984, size: 64, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!37, !928, !535}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !917, file: !888, line: 176, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !888, line: 35, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !917, file: !888, line: 177, baseType: !527, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !917, file: !888, line: 178, baseType: !886, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !887, file: !888, line: 215, baseType: !329, size: 64, offset: 768)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !887, file: !888, line: 221, baseType: !605, size: 64, offset: 832)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !888, line: 223, baseType: !413, size: 16, offset: 896)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !887, file: !888, line: 224, baseType: !484, size: 16, offset: 912)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !887, file: !888, line: 225, baseType: !997, size: 64, offset: 960)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !888, line: 36, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !887, file: !888, line: 227, baseType: !548, size: 128, align: 64, offset: 1024)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !353, file: !354, line: 71, baseType: !1001, size: 32, offset: 448)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1002, line: 19, size: 32, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1001, file: !1002, line: 20, baseType: !1005, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1006, line: 113, baseType: !1007)
!1006 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1006, line: 111, size: 32, elements: !1008)
!1008 = !{!1009}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1007, file: !1006, line: 112, baseType: !393, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !353, file: !354, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !353, file: !354, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !353, file: !354, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !353, file: !354, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !353, file: !354, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !350, file: !244, line: 707, baseType: !349, size: 64, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !350, file: !244, line: 709, baseType: !1017, size: 64, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !244, line: 37, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !350, file: !244, line: 711, baseType: !357, size: 64, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !350, file: !244, line: 712, baseType: !1021, size: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !244, line: 89, size: 384, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1033, !1038, !1042}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1023, file: !244, line: 90, baseType: !357, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1023, file: !244, line: 91, baseType: !493, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1023, file: !244, line: 92, baseType: !1028, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!37, !1031, !438}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1023, file: !244, line: 93, baseType: !1034, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!443, !1031, !1037, !870, !878}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1023, file: !244, line: 95, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !349}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1023, file: !244, line: 97, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !256, line: 286, size: 1472, elements: !1046)
!1046 = !{!1047, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1045, file: !256, line: 287, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!37, !349}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1045, file: !256, line: 288, baseType: !1039, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1045, file: !256, line: 289, baseType: !1048, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1045, file: !256, line: 290, baseType: !1048, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1045, file: !256, line: 291, baseType: !1048, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1045, file: !256, line: 292, baseType: !1048, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1045, file: !256, line: 293, baseType: !1048, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1045, file: !256, line: 294, baseType: !1048, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1045, file: !256, line: 295, baseType: !1048, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1045, file: !256, line: 296, baseType: !1048, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1045, file: !256, line: 297, baseType: !1048, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1045, file: !256, line: 298, baseType: !1048, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1045, file: !256, line: 299, baseType: !1048, size: 64, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1045, file: !256, line: 300, baseType: !1048, size: 64, offset: 832)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1045, file: !256, line: 301, baseType: !1048, size: 64, offset: 896)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1045, file: !256, line: 302, baseType: !1048, size: 64, offset: 960)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1045, file: !256, line: 303, baseType: !1048, size: 64, offset: 1024)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1045, file: !256, line: 304, baseType: !1048, size: 64, offset: 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1045, file: !256, line: 305, baseType: !1048, size: 64, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1045, file: !256, line: 306, baseType: !1048, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1045, file: !256, line: 307, baseType: !1048, size: 64, offset: 1280)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1045, file: !256, line: 308, baseType: !1048, size: 64, offset: 1344)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1045, file: !256, line: 309, baseType: !1048, size: 64, offset: 1408)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !350, file: !244, line: 714, baseType: !1074, size: 64, offset: 768)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1077, line: 80, size: 1344, elements: !1078)
!1077 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1540}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1076, file: !1077, line: 81, baseType: !357, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1076, file: !1077, line: 82, baseType: !357, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1076, file: !1077, line: 83, baseType: !493, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1076, file: !1077, line: 84, baseType: !493, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1076, file: !1077, line: 85, baseType: !493, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1076, file: !1077, line: 87, baseType: !1085, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!37, !349, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !238, line: 96, size: 1152, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1471, !1472, !1473, !1474, !1490, !1503, !1504, !1505, !1506, !1507, !1515, !1516, !1517, !1518, !1519, !1520}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1089, file: !238, line: 97, baseType: !357, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1089, file: !238, line: 98, baseType: !1074, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1089, file: !238, line: 100, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !231, line: 402, size: 9216, align: 512, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1103, !1124, !1150, !1151, !1152, !1153, !1157, !1160, !1161, !1162, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1225, !1229, !1249, !1267, !1268, !1269, !1270, !1279, !1303, !1304, !1307, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1321, !1322, !1429, !1437, !1438, !1439, !1441, !1445, !1446, !1450, !1451, !1452, !1453, !1455, !1456, !1457, !1464, !1465, !1466, !1470}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1095, file: !231, line: 403, baseType: !230, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1095, file: !231, line: 406, baseType: !360, size: 128, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1095, file: !231, line: 409, baseType: !1100, size: 448, offset: 192)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 448, elements: !1101)
!1101 = !{!1102}
!1102 = !DISubrange(count: 56)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1095, file: !231, line: 417, baseType: !1104, size: 768, offset: 640)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !231, line: 45, size: 768, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1112}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1104, file: !231, line: 46, baseType: !353, size: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1104, file: !231, line: 47, baseType: !1094, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1104, file: !231, line: 48, baseType: !366, size: 64, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1104, file: !231, line: 49, baseType: !1110, size: 64, offset: 640)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !231, line: 49, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1104, file: !231, line: 50, baseType: !1113, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1115, line: 26, size: 256, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1114, file: !1115, line: 27, baseType: !7, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1114, file: !1115, line: 28, baseType: !1119, size: 192, offset: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1120, line: 43, size: 192, elements: !1121)
!1120 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1119, file: !1120, line: 44, baseType: !633, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1119, file: !1120, line: 45, baseType: !360, size: 128, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1095, file: !231, line: 418, baseType: !1125, size: 64, offset: 1408)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !231, line: 53, size: 448, elements: !1127)
!1127 = !{!1128, !1129, !1134, !1138, !1142, !1146}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1126, file: !231, line: 54, baseType: !480, size: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1126, file: !231, line: 55, baseType: !1130, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!475, !1125, !1133, !443}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1126, file: !231, line: 57, baseType: !1135, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!475, !1125, !1133, !357, !489}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1126, file: !231, line: 59, baseType: !1139, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1094, !357}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1126, file: !231, line: 60, baseType: !1143, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!37, !1094}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1126, file: !231, line: 61, baseType: !1147, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !1094}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1095, file: !231, line: 419, baseType: !357, size: 64, offset: 1472)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1095, file: !231, line: 420, baseType: !357, size: 64, offset: 1536)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1095, file: !231, line: 421, baseType: !366, size: 64, offset: 1600)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1095, file: !231, line: 424, baseType: !1154, size: 64, offset: 1664)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !231, line: 424, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1095, file: !231, line: 425, baseType: !1158, size: 64, offset: 1728)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1095, file: !231, line: 426, baseType: !7, size: 32, offset: 1792)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1095, file: !231, line: 435, baseType: !699, size: 256, offset: 1856)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1095, file: !231, line: 437, baseType: !1163, size: 64, offset: 2112)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1165, line: 69, size: 320, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1166 = !{!1167, !1168, !1169, !1186, !1188, !1192, !1193}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1164, file: !1165, line: 70, baseType: !357, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1164, file: !1165, line: 71, baseType: !1094, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1164, file: !1165, line: 72, baseType: !1170, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1165, line: 47, size: 256, elements: !1173)
!1173 = !{!1174, !1175, !1181, !1185}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1172, file: !1165, line: 49, baseType: !7, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1172, file: !1165, line: 51, baseType: !1176, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!37, !357, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1172, file: !1165, line: 53, baseType: !1182, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!37, !443, !1179}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1172, file: !1165, line: 55, baseType: !859, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1164, file: !1165, line: 73, baseType: !1187, size: 16, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1164, file: !1165, line: 74, baseType: !1189, size: 8, offset: 208)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !402, line: 16, baseType: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !404, line: 20, baseType: !1191)
!1191 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1164, file: !1165, line: 75, baseType: !401, size: 8, offset: 216)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !1165, line: 76, baseType: !1194, size: 64, offset: 256)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1164, file: !1165, line: 76, size: 64, elements: !1195)
!1195 = !{!1196, !1197, !1204}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1194, file: !1165, line: 77, baseType: !329, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1194, file: !1165, line: 78, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1165, line: 86, size: 128, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1200, file: !1165, line: 87, baseType: !7, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1200, file: !1165, line: 88, baseType: !443, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1194, file: !1165, line: 79, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1165, line: 92, size: 256, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1213, !1214}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1207, file: !1165, line: 94, baseType: !7, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1207, file: !1165, line: 95, baseType: !7, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1207, file: !1165, line: 96, baseType: !1212, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1207, file: !1165, line: 97, baseType: !1170, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1207, file: !1165, line: 98, baseType: !329, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1095, file: !231, line: 438, baseType: !7, size: 32, offset: 2176)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1095, file: !231, line: 441, baseType: !7, size: 32, offset: 2208)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1095, file: !231, line: 442, baseType: !1154, size: 64, offset: 2240)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1095, file: !231, line: 443, baseType: !1158, size: 64, offset: 2304)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1095, file: !231, line: 444, baseType: !331, size: 8, offset: 2368)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1095, file: !231, line: 451, baseType: !331, size: 8, offset: 2376)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1095, file: !231, line: 454, baseType: !7, size: 32, offset: 2400)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1095, file: !231, line: 455, baseType: !1223, size: 64, offset: 2432)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !231, line: 43, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1095, file: !231, line: 458, baseType: !1226, size: 64, offset: 2496)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!37}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1095, file: !231, line: 460, baseType: !1230, size: 4032, align: 512, offset: 2560)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 4032, elements: !1247)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !231, line: 362, size: 576, elements: !1232)
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1231, file: !231, line: 363, baseType: !329, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1231, file: !231, line: 364, baseType: !7, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1231, file: !231, line: 367, baseType: !1236, size: 448, offset: 128)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !231, line: 319, size: 448, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1236, file: !231, line: 320, baseType: !1094, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1236, file: !231, line: 321, baseType: !1240, size: 384, offset: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1241, line: 40, size: 384, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1240, file: !1241, line: 41, baseType: !1244, size: 384, align: 64)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 384, align: 64, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 2)
!1247 = !{!1248}
!1248 = !DISubrange(count: 7)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1095, file: !231, line: 463, baseType: !1250, size: 192, offset: 6592)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1251, line: 8, size: 192, elements: !1252)
!1251 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1252 = !{!1253, !1254, !1256}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1250, file: !1251, line: 10, baseType: !7, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1250, file: !1251, line: 11, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1250, file: !1251, line: 12, baseType: !1257, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1259, line: 59, size: 48, elements: !1260)
!1259 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1258, file: !1259, line: 60, baseType: !737, size: 16)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1258, file: !1259, line: 61, baseType: !737, size: 16, offset: 16)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1258, file: !1259, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1258, file: !1259, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1258, file: !1259, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1258, file: !1259, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1095, file: !231, line: 465, baseType: !324, size: 64, offset: 6784)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1095, file: !231, line: 469, baseType: !7, size: 32, offset: 6848)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1095, file: !231, line: 470, baseType: !360, size: 128, offset: 6912)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1095, file: !231, line: 471, baseType: !1271, size: 64, offset: 7040)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1273, line: 33, size: 96, elements: !1274)
!1273 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1274 = !{!1275, !1276, !1277, !1278}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1272, file: !1273, line: 37, baseType: !37, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1272, file: !1273, line: 43, baseType: !37, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1272, file: !1273, line: 45, baseType: !413, size: 16, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !1273, line: 47, baseType: !413, size: 16, offset: 80)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1095, file: !231, line: 476, baseType: !1280, size: 64, offset: 7104)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !231, line: 378, size: 256, elements: !1282)
!1282 = !{!1283, !1300, !1301, !1302}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1281, file: !231, line: 379, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1286, line: 204, baseType: !1287)
!1286 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1286, line: 197, size: 192, elements: !1288)
!1288 = !{!1289, !1292, !1293, !1294, !1296, !1298}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1287, file: !1286, line: 198, baseType: !1290, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1286, line: 21, baseType: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !404, line: 27, baseType: !7)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1287, file: !1286, line: 199, baseType: !405, size: 8, offset: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1287, file: !1286, line: 200, baseType: !405, size: 8, offset: 40)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1287, file: !1286, line: 201, baseType: !1295, size: 16, offset: 48)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1286, line: 17, baseType: !412)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1287, file: !1286, line: 202, baseType: !1297, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1286, line: 16, baseType: !606)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1287, file: !1286, line: 203, baseType: !1299, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1286, line: 22, baseType: !606)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1281, file: !231, line: 380, baseType: !7, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1281, file: !231, line: 381, baseType: !443, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1281, file: !231, line: 382, baseType: !443, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1095, file: !231, line: 477, baseType: !1281, size: 256, offset: 7168)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1095, file: !231, line: 480, baseType: !1305, size: 64, offset: 7424)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !231, line: 480, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1095, file: !231, line: 483, baseType: !1308, size: 64, offset: 7488)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !231, line: 483, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1095, file: !231, line: 488, baseType: !443, size: 64, offset: 7552)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1095, file: !231, line: 492, baseType: !329, size: 64, offset: 7616)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1095, file: !231, line: 493, baseType: !7, size: 32, offset: 7680)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1095, file: !231, line: 495, baseType: !329, size: 64, offset: 7744)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1095, file: !231, line: 496, baseType: !7, size: 32, offset: 7808)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1095, file: !231, line: 499, baseType: !7, size: 32, offset: 7840)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1095, file: !231, line: 500, baseType: !1317, size: 64, offset: 7872)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1319, line: 45, baseType: !1320)
!1319 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1095, file: !231, line: 503, baseType: !7, size: 32, offset: 7936)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1095, file: !231, line: 504, baseType: !1323, size: 64, offset: 8000)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1326, line: 96, size: 192, elements: !1327)
!1326 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1327 = !{!1328, !1329, !1390, !1393}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1325, file: !1326, line: 97, baseType: !7, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1325, file: !1326, line: 98, baseType: !1330, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1326, line: 24, size: 3072, elements: !1332)
!1332 = !{!1333, !1335, !1336, !1337, !1338, !1352, !1353, !1354, !1355, !1374, !1375, !1376, !1387, !1388, !1389}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1331, file: !1326, line: 26, baseType: !1334, size: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 128, elements: !1245)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1331, file: !1326, line: 27, baseType: !1334, size: 128, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1331, file: !1326, line: 28, baseType: !37, size: 32, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1331, file: !1326, line: 31, baseType: !373, size: 32, align: 512, offset: 512)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1331, file: !1326, line: 32, baseType: !1339, size: 960, offset: 576)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1340, line: 206, size: 960, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1341 = !{!1342, !1343, !1346, !1348, !1349, !1351}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1339, file: !1340, line: 207, baseType: !551, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1339, file: !1340, line: 208, baseType: !1344, size: 256, offset: 64)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 256, elements: !680)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1339, file: !1340, line: 209, baseType: !1347, size: 256, offset: 320)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !680)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1339, file: !1340, line: 213, baseType: !347, size: 64, offset: 576)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1339, file: !1340, line: 215, baseType: !1350, size: 256, offset: 640)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 256, elements: !680)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1339, file: !1340, line: 216, baseType: !401, size: 8, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1331, file: !1326, line: 33, baseType: !324, size: 64, offset: 1536)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1331, file: !1326, line: 34, baseType: !324, size: 64, offset: 1600)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1331, file: !1326, line: 35, baseType: !331, size: 8, offset: 1664)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1331, file: !1326, line: 36, baseType: !1356, size: 320, offset: 1728)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1357, line: 11, size: 320, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1358 = !{!1359, !1366, !1367, !1372}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1356, file: !1357, line: 16, baseType: !1360, size: 128)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !332, line: 198, size: 128, elements: !1361)
!1361 = !{!1362, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1360, file: !332, line: 199, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1360, file: !332, line: 199, baseType: !1365, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1356, file: !1357, line: 17, baseType: !324, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1356, file: !1357, line: 18, baseType: !1368, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1356, file: !1357, line: 19, baseType: !1373, size: 32, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !402, line: 21, baseType: !1291)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1331, file: !1326, line: 37, baseType: !763, size: 256, offset: 2048)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1331, file: !1326, line: 38, baseType: !548, size: 128, align: 64, offset: 2304)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1331, file: !1326, line: 39, baseType: !1377, size: 64, offset: 2432)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1326, line: 49, size: 768, elements: !1379)
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1378, file: !1326, line: 50, baseType: !373, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1378, file: !1326, line: 51, baseType: !1347, size: 256, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1378, file: !1326, line: 53, baseType: !1347, size: 256, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1378, file: !1326, line: 54, baseType: !324, size: 64, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1378, file: !1326, line: 55, baseType: !1377, size: 64, offset: 640)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1378, file: !1326, line: 56, baseType: !37, size: 32, offset: 704)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1378, file: !1326, line: 57, baseType: !37, size: 32, offset: 736)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1331, file: !1326, line: 40, baseType: !324, size: 64, offset: 2496)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1331, file: !1326, line: 42, baseType: !37, size: 32, offset: 2560)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1331, file: !1326, line: 43, baseType: !1324, size: 64, offset: 2624)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1325, file: !1326, line: 99, baseType: !1391, offset: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1392, line: 211, elements: !578)
!1392 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1325, file: !1326, line: 100, baseType: !1394, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1326, line: 63, size: 3008, elements: !1396)
!1396 = !{!1397, !1398, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1428}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1395, file: !1326, line: 64, baseType: !1377, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1395, file: !1326, line: 65, baseType: !1399, size: 192, offset: 64)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 192, elements: !444)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1395, file: !1326, line: 67, baseType: !37, size: 32, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1395, file: !1326, line: 68, baseType: !699, size: 256, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1395, file: !1326, line: 69, baseType: !373, size: 32, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1395, file: !1326, line: 70, baseType: !699, size: 256, offset: 640)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1395, file: !1326, line: 71, baseType: !324, size: 64, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1395, file: !1326, line: 72, baseType: !324, size: 64, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1395, file: !1326, line: 73, baseType: !324, size: 64, offset: 1024)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1395, file: !1326, line: 74, baseType: !324, size: 64, offset: 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1395, file: !1326, line: 75, baseType: !324, size: 64, offset: 1152)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1395, file: !1326, line: 76, baseType: !324, size: 64, offset: 1216)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1395, file: !1326, line: 77, baseType: !324, size: 64, offset: 1280)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1395, file: !1326, line: 78, baseType: !324, size: 64, offset: 1344)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1395, file: !1326, line: 79, baseType: !331, size: 8, offset: 1408)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1395, file: !1326, line: 80, baseType: !324, size: 64, offset: 1472)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1395, file: !1326, line: 81, baseType: !699, size: 256, offset: 1536)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1395, file: !1326, line: 82, baseType: !1114, size: 256, offset: 1792)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1395, file: !1326, line: 84, baseType: !393, size: 32, offset: 2048)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1395, file: !1326, line: 87, baseType: !324, size: 64, offset: 2112)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1395, file: !1326, line: 88, baseType: !324, size: 64, offset: 2176)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1395, file: !1326, line: 89, baseType: !1420, size: 704, offset: 2240)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !764, line: 111, size: 704, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1427}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1420, file: !764, line: 112, baseType: !763, size: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1420, file: !764, line: 113, baseType: !1356, size: 320, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1420, file: !764, line: 116, baseType: !1425, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !764, line: 18, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1420, file: !764, line: 117, baseType: !37, size: 32, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1395, file: !1326, line: 90, baseType: !1324, size: 64, offset: 2944)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1095, file: !231, line: 515, baseType: !1430, size: 64, offset: 8064)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1432, line: 117, size: 128, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1433 = !{!1434, !1435, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1431, file: !1432, line: 118, baseType: !678, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1431, file: !1432, line: 119, baseType: !678, size: 32, offset: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1431, file: !1432, line: 120, baseType: !347, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1095, file: !231, line: 516, baseType: !7, size: 32, offset: 8128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1095, file: !231, line: 519, baseType: !7, size: 32, offset: 8160)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1095, file: !231, line: 520, baseType: !1440, size: 64, offset: 8192)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1095, file: !231, line: 523, baseType: !1442, size: 64, offset: 8256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !231, line: 523, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1095, file: !231, line: 524, baseType: !7, size: 32, offset: 8320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1095, file: !231, line: 525, baseType: !1447, size: 64, offset: 8384)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !231, line: 525, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1095, file: !231, line: 526, baseType: !7, size: 32, offset: 8448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1095, file: !231, line: 533, baseType: !329, size: 64, offset: 8512)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1095, file: !231, line: 534, baseType: !7, size: 32, offset: 8576)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1095, file: !231, line: 535, baseType: !1454, size: 64, offset: 8640)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1095, file: !231, line: 536, baseType: !7, size: 32, offset: 8704)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1095, file: !231, line: 539, baseType: !37, size: 32, offset: 8736)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1095, file: !231, line: 540, baseType: !1458, size: 64, offset: 8768)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1460, line: 32, size: 64, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1459, file: !1460, line: 33, baseType: !678, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1459, file: !1460, line: 34, baseType: !678, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1095, file: !231, line: 563, baseType: !360, size: 128, offset: 8832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1095, file: !231, line: 565, baseType: !360, size: 128, offset: 8960)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1095, file: !231, line: 568, baseType: !1467, size: 64, offset: 9088)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1095, file: !231, line: 570, baseType: !393, size: 32, offset: 9152)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1089, file: !238, line: 101, baseType: !357, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1089, file: !238, line: 103, baseType: !331, size: 8, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1089, file: !238, line: 104, baseType: !237, size: 32, offset: 288)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1089, file: !238, line: 106, baseType: !1475, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1478, line: 282, size: 1600, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1479 = !{!1480, !1484, !1485, !1489}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1477, file: !1478, line: 283, baseType: !1481, size: 256)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 256, elements: !1482)
!1482 = !{!1483}
!1483 = !DISubrange(count: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1477, file: !1478, line: 284, baseType: !1481, size: 256, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1477, file: !1478, line: 285, baseType: !1486, size: 1024, offset: 512)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 1024, elements: !1487)
!1487 = !{!1488}
!1488 = !DISubrange(count: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1477, file: !1478, line: 286, baseType: !720, size: 64, offset: 1536)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1089, file: !238, line: 107, baseType: !1491, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1478, line: 217, size: 256, elements: !1494)
!1494 = !{!1495, !1499, !1501, !1502}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1493, file: !1478, line: 218, baseType: !1496, size: 128)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 128, elements: !1497)
!1497 = !{!1498}
!1498 = !DISubrange(count: 16)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1493, file: !1478, line: 219, baseType: !1500, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1478, line: 15, baseType: !324)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1493, file: !1478, line: 220, baseType: !1291, size: 32, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1493, file: !1478, line: 221, baseType: !1291, size: 32, offset: 224)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1089, file: !238, line: 109, baseType: !1048, size: 64, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1089, file: !238, line: 110, baseType: !1039, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1089, file: !238, line: 111, baseType: !1048, size: 64, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1089, file: !238, line: 112, baseType: !1039, size: 64, offset: 640)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1089, file: !238, line: 113, baseType: !1508, size: 64, offset: 704)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!37, !349, !1511}
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !256, line: 60, baseType: !1512)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !256, line: 58, size: 32, elements: !1513)
!1513 = !{!1514}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1512, file: !256, line: 59, baseType: !37, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1089, file: !238, line: 114, baseType: !1048, size: 64, offset: 768)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1089, file: !238, line: 115, baseType: !493, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1089, file: !238, line: 116, baseType: !493, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1089, file: !238, line: 118, baseType: !1043, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1089, file: !238, line: 119, baseType: !1039, size: 64, offset: 1024)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1089, file: !238, line: 121, baseType: !1521, size: 64, offset: 1088)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !238, line: 121, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1076, file: !1077, line: 88, baseType: !1028, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1076, file: !1077, line: 89, baseType: !1048, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1076, file: !1077, line: 90, baseType: !1039, size: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1076, file: !1077, line: 91, baseType: !1039, size: 64, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1076, file: !1077, line: 92, baseType: !1039, size: 64, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1076, file: !1077, line: 94, baseType: !1048, size: 64, offset: 704)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1076, file: !1077, line: 95, baseType: !1048, size: 64, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1076, file: !1077, line: 97, baseType: !1508, size: 64, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1076, file: !1077, line: 98, baseType: !1048, size: 64, offset: 896)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1076, file: !1077, line: 100, baseType: !1048, size: 64, offset: 960)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1076, file: !1077, line: 102, baseType: !1048, size: 64, offset: 1024)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1076, file: !1077, line: 103, baseType: !1039, size: 64, offset: 1088)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1076, file: !1077, line: 105, baseType: !1043, size: 64, offset: 1152)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1076, file: !1077, line: 107, baseType: !1537, size: 64, offset: 1216)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1077, line: 107, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1076, file: !1077, line: 109, baseType: !331, size: 8, offset: 1280)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !350, file: !244, line: 715, baseType: !1088, size: 64, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !350, file: !244, line: 717, baseType: !329, size: 64, offset: 896)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !350, file: !244, line: 719, baseType: !329, size: 64, offset: 960)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !350, file: !244, line: 721, baseType: !699, size: 256, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !350, file: !244, line: 725, baseType: !1546, size: 448, offset: 1280)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !244, line: 517, size: 448, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1546, file: !244, line: 518, baseType: !360, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1546, file: !244, line: 519, baseType: !360, size: 128, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1546, file: !244, line: 520, baseType: !360, size: 128, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1546, file: !244, line: 521, baseType: !243, size: 32, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !350, file: !244, line: 726, baseType: !1553, size: 2496, offset: 1728)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !256, line: 663, size: 2496, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1599, !1600, !1601, !1602, !1603, !1604, !1675, !1676, !1677, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1715, !1719}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1553, file: !256, line: 664, baseType: !1511, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1553, file: !256, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1553, file: !256, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1553, file: !256, line: 667, baseType: !331, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1553, file: !256, line: 668, baseType: !331, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1553, file: !256, line: 669, baseType: !331, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1553, file: !256, line: 670, baseType: !331, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1553, file: !256, line: 671, baseType: !331, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1553, file: !256, line: 672, baseType: !331, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1553, file: !256, line: 673, baseType: !331, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1553, file: !256, line: 674, baseType: !331, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1553, file: !256, line: 675, baseType: !1373, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1553, file: !256, line: 676, baseType: !373, size: 32, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1553, file: !256, line: 678, baseType: !360, size: 128, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1553, file: !256, line: 679, baseType: !1114, size: 256, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1553, file: !256, line: 680, baseType: !1571, size: 64, offset: 512)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1573, line: 43, size: 1536, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1582, !1583, !1584, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1572, file: !1573, line: 44, baseType: !357, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1572, file: !1573, line: 45, baseType: !37, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1572, file: !1573, line: 46, baseType: !360, size: 128, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1572, file: !1573, line: 47, baseType: !373, size: 32, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1572, file: !1573, line: 48, baseType: !1580, size: 64, offset: 320)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !256, line: 629, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1572, file: !1573, line: 49, baseType: !1356, size: 320, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1572, file: !1573, line: 50, baseType: !324, size: 64, offset: 704)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1572, file: !1573, line: 51, baseType: !1585, size: 64, offset: 768)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1586, line: 29, baseType: !617)
!1586 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1572, file: !1573, line: 52, baseType: !1585, size: 64, offset: 832)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1572, file: !1573, line: 53, baseType: !1585, size: 64, offset: 896)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1572, file: !1573, line: 54, baseType: !1585, size: 64, offset: 960)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1572, file: !1573, line: 55, baseType: !1585, size: 64, offset: 1024)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1572, file: !1573, line: 56, baseType: !324, size: 64, offset: 1088)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1572, file: !1573, line: 57, baseType: !324, size: 64, offset: 1152)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1572, file: !1573, line: 58, baseType: !324, size: 64, offset: 1216)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1572, file: !1573, line: 59, baseType: !324, size: 64, offset: 1280)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1572, file: !1573, line: 60, baseType: !324, size: 64, offset: 1344)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1572, file: !1573, line: 61, baseType: !349, size: 64, offset: 1408)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1572, file: !1573, line: 62, baseType: !331, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1572, file: !1573, line: 63, baseType: !331, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1553, file: !256, line: 681, baseType: !331, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1553, file: !256, line: 682, baseType: !331, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1553, file: !256, line: 683, baseType: !331, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1553, file: !256, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1553, file: !256, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1553, file: !256, line: 690, baseType: !1605, size: 512, offset: 640)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !251, line: 118, size: 512, elements: !1606)
!1606 = !{!1607, !1613, !1614, !1619, !1671, !1672, !1673, !1674}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1605, file: !251, line: 119, baseType: !1608, size: 256)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1609, line: 9, size: 256, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1608, file: !1609, line: 10, baseType: !802, size: 192, align: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1608, file: !1609, line: 11, baseType: !1585, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1605, file: !251, line: 120, baseType: !1585, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1605, file: !251, line: 121, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!250, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1605, file: !251, line: 122, baseType: !1620, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !251, line: 159, size: 512, align: 512, elements: !1622)
!1622 = !{!1623, !1648, !1649, !1652, !1657, !1658, !1666, !1670}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1621, file: !251, line: 160, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !251, line: 215, size: 4608, align: 512, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1625, file: !251, line: 216, baseType: !633, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1625, file: !251, line: 217, baseType: !7, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1625, file: !251, line: 218, baseType: !7, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1625, file: !251, line: 219, baseType: !7, size: 32, offset: 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1625, file: !251, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1625, file: !251, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1625, file: !251, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1625, file: !251, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1625, file: !251, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1625, file: !251, line: 226, baseType: !7, size: 32, offset: 160)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1625, file: !251, line: 227, baseType: !413, size: 16, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1625, file: !251, line: 228, baseType: !413, size: 16, offset: 208)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1625, file: !251, line: 229, baseType: !7, size: 32, offset: 224)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1625, file: !251, line: 235, baseType: !1585, size: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1625, file: !251, line: 236, baseType: !1618, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1625, file: !251, line: 237, baseType: !1585, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1625, file: !251, line: 238, baseType: !1618, size: 64, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1625, file: !251, line: 239, baseType: !1645, size: 4096, align: 512, offset: 512)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1621, size: 4096, align: 512, elements: !1646)
!1646 = !{!1647}
!1647 = !DISubrange(count: 8)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1621, file: !251, line: 161, baseType: !7, size: 32, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1621, file: !251, line: 162, baseType: !1650, size: 32, offset: 96)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !332, line: 32, baseType: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !477, line: 96, baseType: !37)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1621, file: !251, line: 163, baseType: !1653, size: 32, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !648, line: 274, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !648, line: 274, size: 32, elements: !1655)
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1654, file: !648, line: 274, baseType: !647, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1621, file: !251, line: 164, baseType: !1618, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1621, file: !251, line: 165, baseType: !1659, size: 128, offset: 256)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1609, line: 14, size: 128, elements: !1660)
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1659, file: !1609, line: 15, baseType: !1662, size: 128)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !803, line: 26, size: 128, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1662, file: !803, line: 27, baseType: !905, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1662, file: !803, line: 28, baseType: !807, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1621, file: !251, line: 166, baseType: !1667, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1585}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1621, file: !251, line: 167, baseType: !1585, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1605, file: !251, line: 123, baseType: !401, size: 8, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1605, file: !251, line: 124, baseType: !401, size: 8, offset: 456)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1605, file: !251, line: 125, baseType: !401, size: 8, offset: 464)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1605, file: !251, line: 126, baseType: !401, size: 8, offset: 472)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1553, file: !256, line: 691, baseType: !605, size: 64, offset: 1152)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1553, file: !256, line: 692, baseType: !763, size: 256, offset: 1216)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1553, file: !256, line: 693, baseType: !1678, size: 192, offset: 1472)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1679, line: 41, baseType: !1680)
!1679 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1679, line: 37, size: 192, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1680, file: !1679, line: 38, baseType: !373, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1680, file: !1679, line: 39, baseType: !360, size: 128, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1553, file: !256, line: 694, baseType: !1580, size: 64, offset: 1664)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1553, file: !256, line: 695, baseType: !393, size: 32, offset: 1728)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1553, file: !256, line: 696, baseType: !393, size: 32, offset: 1760)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1553, file: !256, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1553, file: !256, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1553, file: !256, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1553, file: !256, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1553, file: !256, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1553, file: !256, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1553, file: !256, line: 703, baseType: !331, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1553, file: !256, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1553, file: !256, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1553, file: !256, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1553, file: !256, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1553, file: !256, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1553, file: !256, line: 709, baseType: !7, size: 32, offset: 1824)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1553, file: !256, line: 710, baseType: !255, size: 32, offset: 1856)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1553, file: !256, line: 711, baseType: !263, size: 32, offset: 1888)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1553, file: !256, line: 712, baseType: !263, size: 32, offset: 1920)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1553, file: !256, line: 713, baseType: !37, size: 32, offset: 1952)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1553, file: !256, line: 714, baseType: !37, size: 32, offset: 1984)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1553, file: !256, line: 715, baseType: !605, size: 64, offset: 2048)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1553, file: !256, line: 716, baseType: !605, size: 64, offset: 2112)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1553, file: !256, line: 717, baseType: !605, size: 64, offset: 2176)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1553, file: !256, line: 718, baseType: !605, size: 64, offset: 2240)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1553, file: !256, line: 720, baseType: !1710, size: 64, offset: 2304)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !256, line: 632, size: 64, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1711, file: !256, line: 633, baseType: !373, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1711, file: !256, line: 634, baseType: !7, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1553, file: !256, line: 721, baseType: !1716, size: 64, offset: 2368)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !349, !678}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1553, file: !256, line: 722, baseType: !1720, size: 64, offset: 2432)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !256, line: 722, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !350, file: !244, line: 727, baseType: !1723, size: 64, offset: 4224)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !256, line: 742, size: 1792, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1732, !1733, !1734}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1724, file: !256, line: 743, baseType: !1045, size: 1472)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1724, file: !256, line: 744, baseType: !1048, size: 64, offset: 1472)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1724, file: !256, line: 745, baseType: !1729, size: 64, offset: 1536)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !349, !331}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1724, file: !256, line: 746, baseType: !1048, size: 64, offset: 1600)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1724, file: !256, line: 747, baseType: !1039, size: 64, offset: 1664)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1724, file: !256, line: 748, baseType: !1039, size: 64, offset: 1728)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !350, file: !244, line: 736, baseType: !1736, size: 128, offset: 4288)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !244, line: 529, size: 128, elements: !1737)
!1737 = !{!1738, !1742}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1736, file: !244, line: 531, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1741, line: 13, flags: DIFlagFwdDecl)
!1741 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1736, file: !244, line: 532, baseType: !1743, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !244, line: 49, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !350, file: !244, line: 738, baseType: !1746, size: 64, offset: 4416)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !244, line: 738, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !350, file: !244, line: 740, baseType: !1750, size: 64, offset: 4480)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !350, file: !244, line: 741, baseType: !605, size: 64, offset: 4544)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !350, file: !244, line: 746, baseType: !605, size: 64, offset: 4608)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !350, file: !244, line: 747, baseType: !1754, size: 64, offset: 4672)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1756)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !244, line: 747, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !350, file: !244, line: 749, baseType: !1758, size: 64, offset: 4736)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !244, line: 428, size: 128, elements: !1760)
!1760 = !{!1761, !1762, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1759, file: !244, line: 433, baseType: !7, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1759, file: !244, line: 434, baseType: !7, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1759, file: !244, line: 435, baseType: !324, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !350, file: !244, line: 751, baseType: !360, size: 128, offset: 4800)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !350, file: !244, line: 762, baseType: !1766, size: 64, offset: 4928)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !244, line: 762, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !350, file: !244, line: 770, baseType: !1769, offset: 4992)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1770, line: 5, elements: !578)
!1770 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !350, file: !244, line: 772, baseType: !1772, size: 64, offset: 4992)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1774, line: 48, size: 1152, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1775 = !{!1776, !1777, !1779, !1780, !1883, !1891, !1892, !1893, !1894, !1895, !1896}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1773, file: !1774, line: 49, baseType: !357, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1773, file: !1774, line: 50, baseType: !1778, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1774, line: 25, baseType: !1373)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1773, file: !1774, line: 51, baseType: !357, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1773, file: !1774, line: 52, baseType: !1781, size: 512, offset: 192)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1782, line: 41, size: 512, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1783 = !{!1784, !1786, !1879, !1880, !1881, !1882}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1781, file: !1782, line: 42, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1781, file: !1782, line: 43, baseType: !1787, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1782, line: 125, size: 1408, elements: !1790)
!1790 = !{!1791, !1795, !1799, !1805, !1809, !1810, !1814, !1818, !1822, !1826, !1830, !1831, !1835, !1839, !1843, !1854, !1855, !1856, !1857, !1867, !1871, !1875}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1789, file: !1782, line: 126, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!1785, !1785}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1789, file: !1782, line: 127, baseType: !1796, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !1785}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1789, file: !1782, line: 128, baseType: !1800, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!331, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1781)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1789, file: !1782, line: 129, baseType: !1806, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!720, !1803, !1031}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1789, file: !1782, line: 131, baseType: !1800, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1789, file: !1782, line: 133, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!270, !1803}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1789, file: !1782, line: 134, baseType: !1815, size: 64, offset: 384)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!331, !1803, !357}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1789, file: !1782, line: 136, baseType: !1819, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!37, !1803, !357, !7, !329, !489}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1789, file: !1782, line: 141, baseType: !1823, size: 64, offset: 512)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!37, !1803, !357, !1440, !489}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1789, file: !1782, line: 144, baseType: !1827, size: 64, offset: 576)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!357, !1803}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1789, file: !1782, line: 145, baseType: !1827, size: 64, offset: 640)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1789, file: !1782, line: 146, baseType: !1832, size: 64, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1785, !1803}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1789, file: !1782, line: 148, baseType: !1836, size: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!1785, !1803, !1785}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1789, file: !1782, line: 151, baseType: !1840, size: 64, offset: 832)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1785, !1803, !357}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1789, file: !1782, line: 153, baseType: !1844, size: 64, offset: 896)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!37, !1803, !357, !357, !7, !7, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1782, line: 94, size: 640, elements: !1849)
!1849 = !{!1850, !1851, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1848, file: !1782, line: 95, baseType: !1785, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1848, file: !1782, line: 96, baseType: !7, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1848, file: !1782, line: 97, baseType: !1853, size: 512, offset: 128)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 512, elements: !1646)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1789, file: !1782, line: 158, baseType: !1836, size: 64, offset: 960)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1789, file: !1782, line: 161, baseType: !1832, size: 64, offset: 1024)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1789, file: !1782, line: 163, baseType: !1792, size: 64, offset: 1088)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1789, file: !1782, line: 164, baseType: !1858, size: 64, offset: 1152)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!37, !1803, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1782, line: 73, size: 128, elements: !1863)
!1863 = !{!1864, !1865, !1866}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1862, file: !1782, line: 74, baseType: !7, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1862, file: !1782, line: 75, baseType: !7, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1862, file: !1782, line: 76, baseType: !1803, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1789, file: !1782, line: 166, baseType: !1868, size: 64, offset: 1216)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!329, !1785, !37}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1789, file: !1782, line: 167, baseType: !1872, size: 64, offset: 1280)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!37, !1803, !7}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1789, file: !1782, line: 168, baseType: !1876, size: 64, offset: 1344)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!37, !1785}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1781, file: !1782, line: 44, baseType: !349, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1781, file: !1782, line: 45, baseType: !360, size: 128, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1781, file: !1782, line: 46, baseType: !360, size: 128, offset: 320)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1781, file: !1782, line: 47, baseType: !401, size: 8, offset: 448)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1773, file: !1774, line: 54, baseType: !1884, size: 64, offset: 704)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1774, line: 28, size: 256, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1885, file: !1774, line: 29, baseType: !443, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1885, file: !1774, line: 30, baseType: !37, size: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1885, file: !1774, line: 31, baseType: !329, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1885, file: !1774, line: 32, baseType: !1884, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1773, file: !1774, line: 55, baseType: !1884, size: 64, offset: 768)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1773, file: !1774, line: 56, baseType: !1772, size: 64, offset: 832)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1773, file: !1774, line: 57, baseType: !1772, size: 64, offset: 896)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1773, file: !1774, line: 58, baseType: !1772, size: 64, offset: 960)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1773, file: !1774, line: 62, baseType: !324, size: 64, offset: 1024)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1773, file: !1774, line: 63, baseType: !329, size: 64, offset: 1088)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !350, file: !244, line: 773, baseType: !1785, size: 64, offset: 5056)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !350, file: !244, line: 776, baseType: !37, size: 32, offset: 5120)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !350, file: !244, line: 778, baseType: !1900, size: 32, offset: 5152)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !332, line: 21, baseType: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !332, line: 18, baseType: !1373)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !350, file: !244, line: 779, baseType: !1373, size: 32, offset: 5184)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !350, file: !244, line: 781, baseType: !373, size: 32, offset: 5216)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !350, file: !244, line: 782, baseType: !360, size: 128, offset: 5248)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !350, file: !244, line: 784, baseType: !1906, size: 64, offset: 5376)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1909, line: 52, size: 768, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1919, !1923, !1924, !1925, !1926, !1930, !1934}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1908, file: !1909, line: 53, baseType: !357, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1908, file: !1909, line: 55, baseType: !493, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1908, file: !1909, line: 56, baseType: !493, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1908, file: !1909, line: 58, baseType: !1028, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1908, file: !1909, line: 59, baseType: !1916, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!443, !1031, !1037}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1908, file: !1909, line: 61, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1906}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1908, file: !1909, line: 62, baseType: !1039, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1908, file: !1909, line: 64, baseType: !1048, size: 64, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1908, file: !1909, line: 66, baseType: !835, size: 64, offset: 512)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1908, file: !1909, line: 67, baseType: !1927, size: 64, offset: 576)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!720, !1031}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1908, file: !1909, line: 69, baseType: !1931, size: 64, offset: 640)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !1031, !870, !878}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1908, file: !1909, line: 71, baseType: !1043, size: 64, offset: 704)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !350, file: !244, line: 785, baseType: !493, size: 64, offset: 5440)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !350, file: !244, line: 787, baseType: !1039, size: 64, offset: 5504)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !350, file: !244, line: 788, baseType: !1938, size: 64, offset: 5568)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !244, line: 46, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !350, file: !244, line: 789, baseType: !1941, size: 64, offset: 5632)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !244, line: 48, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !350, file: !244, line: 791, baseType: !1944, size: 64, offset: 5696)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !244, line: 597, size: 128, elements: !1946)
!1946 = !{!1947, !1948, !1949, !1950, !1951}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1945, file: !244, line: 598, baseType: !276, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1945, file: !244, line: 599, baseType: !285, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1945, file: !244, line: 600, baseType: !290, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1945, file: !244, line: 601, baseType: !331, size: 8, offset: 96)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1945, file: !244, line: 602, baseType: !331, size: 8, offset: 104)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !350, file: !244, line: 793, baseType: !295, size: 32, offset: 5760)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !350, file: !244, line: 795, baseType: !331, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !350, file: !244, line: 796, baseType: !331, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !350, file: !244, line: 797, baseType: !331, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !350, file: !244, line: 798, baseType: !331, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !350, file: !244, line: 799, baseType: !331, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!1959 = !{!1960, !1965, !0, !1967, !1969, !1971, !1976, !1981, !1986, !1991, !1993, !1996, !1998, !2001, !2015, !2018, !2023, !2025, !2027, !2032, !2035, !2037, !2039, !2041, !2046, !2048, !2050, !2053, !2055, !2058, !2063, !2065, !2067, !2069, !2071, !2073, !2075, !2077, !2079, !2084, !2086, !2091, !2096, !2101, !2103, !2105, !2107, !2109, !2114, !2116, !2119, !2122, !2124}
!1960 = !DIGlobalVariableExpression(var: !1961, expr: !DIExpression())
!1961 = distinct !DIGlobalVariable(scope: null, file: !3, line: 595, type: !1962, isLocal: true, isDefinition: true)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 464, elements: !1963)
!1963 = !{!1964}
!1964 = !DISubrange(count: 58)
!1965 = !DIGlobalVariableExpression(var: !1966, expr: !DIExpression())
!1966 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_cacheinfo__206_930_cacheinfo_sysfs_init6207", scope: !2, file: !3, line: 930, type: !329, isLocal: true, isDefinition: true)
!1967 = !DIGlobalVariableExpression(var: !1968, expr: !DIExpression())
!1968 = distinct !DIGlobalVariable(name: "coherency_max_size", scope: !2, file: !3, line: 339, type: !7, isLocal: false, isDefinition: true)
!1969 = !DIGlobalVariableExpression(var: !1970, expr: !DIExpression())
!1970 = distinct !DIGlobalVariable(name: "use_arch_info", scope: !2, file: !3, line: 32, type: !331, isLocal: true, isDefinition: true)
!1971 = !DIGlobalVariableExpression(var: !1972, expr: !DIExpression())
!1972 = distinct !DIGlobalVariable(scope: null, file: !26, line: 480, type: !1973, isLocal: true, isDefinition: true)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 168, elements: !1974)
!1974 = !{!1975}
!1975 = !DISubrange(count: 21)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(scope: null, file: !3, line: 927, type: !1978, isLocal: true, isDefinition: true)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 176, elements: !1979)
!1979 = !{!1980}
!1980 = !DISubrange(count: 22)
!1981 = !DIGlobalVariableExpression(var: !1982, expr: !DIExpression())
!1982 = distinct !DIGlobalVariable(scope: null, file: !3, line: 888, type: !1983, isLocal: true, isDefinition: true)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 72, elements: !1984)
!1984 = !{!1985}
!1985 = !DISubrange(count: 9)
!1986 = !DIGlobalVariableExpression(var: !1987, expr: !DIExpression())
!1987 = distinct !DIGlobalVariable(scope: null, file: !3, line: 850, type: !1988, isLocal: true, isDefinition: true)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 48, elements: !1989)
!1989 = !{!1990}
!1990 = !DISubrange(count: 6)
!1991 = !DIGlobalVariableExpression(var: !1992, expr: !DIExpression())
!1992 = distinct !DIGlobalVariable(name: "ci_cache_dev", scope: !2, file: !3, line: 607, type: !349, isLocal: true, isDefinition: true)
!1993 = !DIGlobalVariableExpression(var: !1994, expr: !DIExpression())
!1994 = distinct !DIGlobalVariable(name: "cache_default_groups", scope: !2, file: !3, line: 791, type: !1995, isLocal: true, isDefinition: true)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 128, elements: !1245)
!1996 = !DIGlobalVariableExpression(var: !1997, expr: !DIExpression())
!1997 = distinct !DIGlobalVariable(name: "cache_default_group", scope: !2, file: !3, line: 786, type: !495, isLocal: true, isDefinition: true)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(scope: null, file: !3, line: 714, type: !2000, isLocal: true, isDefinition: true)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 24, elements: !444)
!2001 = !DIGlobalVariableExpression(var: !2002, expr: !DIExpression())
!2002 = distinct !DIGlobalVariable(name: "dev_attr_id", scope: !2, file: !3, line: 714, type: !2003, isLocal: true, isDefinition: true)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !244, line: 106, size: 256, elements: !2004)
!2004 = !{!2005, !2006, !2011}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2003, file: !244, line: 107, baseType: !480, size: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2003, file: !244, line: 108, baseType: !2007, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!475, !349, !2010, !443}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2003, file: !244, line: 110, baseType: !2012, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!475, !349, !2010, !357, !489}
!2015 = !DIGlobalVariableExpression(var: !2016, expr: !DIExpression())
!2016 = distinct !DIGlobalVariable(scope: null, file: !3, line: 625, type: !2017, isLocal: true, isDefinition: true)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 32, elements: !680)
!2018 = !DIGlobalVariableExpression(var: !2019, expr: !DIExpression())
!2019 = distinct !DIGlobalVariable(scope: null, file: !3, line: 716, type: !2020, isLocal: true, isDefinition: true)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 40, elements: !2021)
!2021 = !{!2022}
!2022 = !DISubrange(count: 5)
!2023 = !DIGlobalVariableExpression(var: !2024, expr: !DIExpression())
!2024 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 716, type: !2003, isLocal: true, isDefinition: true)
!2025 = !DIGlobalVariableExpression(var: !2026, expr: !DIExpression())
!2026 = distinct !DIGlobalVariable(scope: null, file: !3, line: 666, type: !2020, isLocal: true, isDefinition: true)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(scope: null, file: !3, line: 669, type: !2029, isLocal: true, isDefinition: true)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 96, elements: !2030)
!2030 = !{!2031}
!2031 = !DISubrange(count: 12)
!2032 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression())
!2033 = distinct !DIGlobalVariable(scope: null, file: !3, line: 672, type: !2034, isLocal: true, isDefinition: true)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 64, elements: !1646)
!2035 = !DIGlobalVariableExpression(var: !2036, expr: !DIExpression())
!2036 = distinct !DIGlobalVariable(scope: null, file: !3, line: 678, type: !2017, isLocal: true, isDefinition: true)
!2037 = !DIGlobalVariableExpression(var: !2038, expr: !DIExpression())
!2038 = distinct !DIGlobalVariable(scope: null, file: !3, line: 715, type: !1988, isLocal: true, isDefinition: true)
!2039 = !DIGlobalVariableExpression(var: !2040, expr: !DIExpression())
!2040 = distinct !DIGlobalVariable(name: "dev_attr_level", scope: !2, file: !3, line: 715, type: !2003, isLocal: true, isDefinition: true)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(scope: null, file: !3, line: 723, type: !2043, isLocal: true, isDefinition: true)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 120, elements: !2044)
!2044 = !{!2045}
!2045 = !DISubrange(count: 15)
!2046 = !DIGlobalVariableExpression(var: !2047, expr: !DIExpression())
!2047 = distinct !DIGlobalVariable(name: "dev_attr_shared_cpu_map", scope: !2, file: !3, line: 723, type: !2003, isLocal: true, isDefinition: true)
!2048 = !DIGlobalVariableExpression(var: !2049, expr: !DIExpression())
!2049 = distinct !DIGlobalVariable(scope: null, file: !3, line: 646, type: !1988, isLocal: true, isDefinition: true)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 724, type: !2052, isLocal: true, isDefinition: true)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 128, elements: !1497)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(name: "dev_attr_shared_cpu_list", scope: !2, file: !3, line: 724, type: !2003, isLocal: true, isDefinition: true)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 655, type: !2057, isLocal: true, isDefinition: true)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 56, elements: !1247)
!2058 = !DIGlobalVariableExpression(var: !2059, expr: !DIExpression())
!2059 = distinct !DIGlobalVariable(scope: null, file: !3, line: 717, type: !2060, isLocal: true, isDefinition: true)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 160, elements: !2061)
!2061 = !{!2062}
!2062 = !DISubrange(count: 20)
!2063 = !DIGlobalVariableExpression(var: !2064, expr: !DIExpression())
!2064 = distinct !DIGlobalVariable(name: "dev_attr_coherency_line_size", scope: !2, file: !3, line: 717, type: !2003, isLocal: true, isDefinition: true)
!2065 = !DIGlobalVariableExpression(var: !2066, expr: !DIExpression())
!2066 = distinct !DIGlobalVariable(scope: null, file: !3, line: 718, type: !1978, isLocal: true, isDefinition: true)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(name: "dev_attr_ways_of_associativity", scope: !2, file: !3, line: 718, type: !2003, isLocal: true, isDefinition: true)
!2069 = !DIGlobalVariableExpression(var: !2070, expr: !DIExpression())
!2070 = distinct !DIGlobalVariable(scope: null, file: !3, line: 719, type: !2043, isLocal: true, isDefinition: true)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(name: "dev_attr_number_of_sets", scope: !2, file: !3, line: 719, type: !2003, isLocal: true, isDefinition: true)
!2073 = !DIGlobalVariableExpression(var: !2074, expr: !DIExpression())
!2074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 720, type: !2020, isLocal: true, isDefinition: true)
!2075 = !DIGlobalVariableExpression(var: !2076, expr: !DIExpression())
!2076 = distinct !DIGlobalVariable(name: "dev_attr_size", scope: !2, file: !3, line: 720, type: !2003, isLocal: true, isDefinition: true)
!2077 = !DIGlobalVariableExpression(var: !2078, expr: !DIExpression())
!2078 = distinct !DIGlobalVariable(scope: null, file: !3, line: 637, type: !2020, isLocal: true, isDefinition: true)
!2079 = !DIGlobalVariableExpression(var: !2080, expr: !DIExpression())
!2080 = distinct !DIGlobalVariable(scope: null, file: !3, line: 722, type: !2081, isLocal: true, isDefinition: true)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 104, elements: !2082)
!2082 = !{!2083}
!2083 = !DISubrange(count: 13)
!2084 = !DIGlobalVariableExpression(var: !2085, expr: !DIExpression())
!2085 = distinct !DIGlobalVariable(name: "dev_attr_write_policy", scope: !2, file: !3, line: 722, type: !2003, isLocal: true, isDefinition: true)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(scope: null, file: !3, line: 708, type: !2088, isLocal: true, isDefinition: true)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 112, elements: !2089)
!2089 = !{!2090}
!2090 = !DISubrange(count: 14)
!2091 = !DIGlobalVariableExpression(var: !2092, expr: !DIExpression())
!2092 = distinct !DIGlobalVariable(scope: null, file: !3, line: 710, type: !2093, isLocal: true, isDefinition: true)
!2093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 88, elements: !2094)
!2094 = !{!2095}
!2095 = !DISubrange(count: 11)
!2096 = !DIGlobalVariableExpression(var: !2097, expr: !DIExpression())
!2097 = distinct !DIGlobalVariable(scope: null, file: !3, line: 721, type: !2098, isLocal: true, isDefinition: true)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 144, elements: !2099)
!2099 = !{!2100}
!2100 = !DISubrange(count: 18)
!2101 = !DIGlobalVariableExpression(var: !2102, expr: !DIExpression())
!2102 = distinct !DIGlobalVariable(name: "dev_attr_allocation_policy", scope: !2, file: !3, line: 721, type: !2003, isLocal: true, isDefinition: true)
!2103 = !DIGlobalVariableExpression(var: !2104, expr: !DIExpression())
!2104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 689, type: !2098, isLocal: true, isDefinition: true)
!2105 = !DIGlobalVariableExpression(var: !2106, expr: !DIExpression())
!2106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 691, type: !2081, isLocal: true, isDefinition: true)
!2107 = !DIGlobalVariableExpression(var: !2108, expr: !DIExpression())
!2108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 693, type: !2088, isLocal: true, isDefinition: true)
!2109 = !DIGlobalVariableExpression(var: !2110, expr: !DIExpression())
!2110 = distinct !DIGlobalVariable(scope: null, file: !3, line: 725, type: !2111, isLocal: true, isDefinition: true)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 192, elements: !2112)
!2112 = !{!2113}
!2113 = !DISubrange(count: 24)
!2114 = !DIGlobalVariableExpression(var: !2115, expr: !DIExpression())
!2115 = distinct !DIGlobalVariable(name: "dev_attr_physical_line_partition", scope: !2, file: !3, line: 725, type: !2003, isLocal: true, isDefinition: true)
!2116 = !DIGlobalVariableExpression(var: !2117, expr: !DIExpression())
!2117 = distinct !DIGlobalVariable(name: "cache_default_attrs", scope: !2, file: !3, line: 727, type: !2118, isLocal: true, isDefinition: true)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 832, elements: !2082)
!2119 = !DIGlobalVariableExpression(var: !2120, expr: !DIExpression())
!2120 = distinct !DIGlobalVariable(name: "cache_private_groups", scope: !2, file: !3, line: 796, type: !2121, isLocal: true, isDefinition: true)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 192, elements: !444)
!2122 = !DIGlobalVariableExpression(var: !2123, expr: !DIExpression())
!2123 = distinct !DIGlobalVariable(name: "ci_index_dev", scope: !2, file: !3, line: 613, type: !348, isLocal: true, isDefinition: true)
!2124 = !DIGlobalVariableExpression(var: !2125, expr: !DIExpression())
!2125 = distinct !DIGlobalVariable(name: "cache_dev_map", scope: !2, file: !3, line: 610, type: !318, isLocal: true, isDefinition: true)
!2126 = !{i32 7, !"Dwarf Version", i32 5}
!2127 = !{i32 2, !"Debug Info Version", i32 3}
!2128 = !{i32 1, !"wchar_size", i32 2}
!2129 = !{i32 8, !"cf-protection-branch", i32 1}
!2130 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2131 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2132 = !{i32 1, !"Code Model", i32 2}
!2133 = !{i32 1, !"override-stack-alignment", i32 8}
!2134 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2135 = distinct !DISubprogram(name: "get_cpu_cacheinfo", scope: !3, file: !3, line: 34, type: !2136, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!302, !7}
!2138 = !{!2139, !2140, !2143}
!2139 = !DILocalVariable(name: "cpu", arg: 1, scope: !2135, file: !3, line: 34, type: !7)
!2140 = !DILocalVariable(name: "__vpp_verify", scope: !2141, file: !3, line: 36, type: !720)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 36, column: 9)
!2142 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 36, column: 9)
!2143 = !DILocalVariable(name: "__ptr", scope: !2144, file: !3, line: 36, type: !324)
!2144 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 36, column: 9)
!2145 = !DILocation(line: 34, column: 54, scope: !2135)
!2146 = !DILocation(line: 36, column: 9, scope: !2142)
!2147 = !DILocation(line: 36, column: 9, scope: !2141)
!2148 = !DILocation(line: 36, column: 9, scope: !2144)
!2149 = !DILocation(line: 36, column: 2, scope: !2135)
!2150 = distinct !DISubprogram(name: "last_level_cache_is_valid", scope: !3, file: !3, line: 57, type: !2151, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!331, !7}
!2153 = !{!2154, !2155, !2156, !2160, !2162, !2165, !2167, !2170, !2172, !2175}
!2154 = !DILocalVariable(name: "cpu", arg: 1, scope: !2150, file: !3, line: 57, type: !7)
!2155 = !DILocalVariable(name: "llc", scope: !2150, file: !3, line: 59, type: !306)
!2156 = !DILocalVariable(name: "__vpp_verify", scope: !2157, file: !3, line: 61, type: !720)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 61, column: 7)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 61, column: 7)
!2159 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 61, column: 6)
!2160 = !DILocalVariable(name: "__ptr", scope: !2161, file: !3, line: 61, type: !324)
!2161 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 61, column: 7)
!2162 = !DILocalVariable(name: "__vpp_verify", scope: !2163, file: !3, line: 61, type: !720)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 61, column: 29)
!2164 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 61, column: 29)
!2165 = !DILocalVariable(name: "__ptr", scope: !2166, file: !3, line: 61, type: !324)
!2166 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 61, column: 29)
!2167 = !DILocalVariable(name: "__vpp_verify", scope: !2168, file: !3, line: 64, type: !720)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 64, column: 8)
!2169 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 64, column: 8)
!2170 = !DILocalVariable(name: "__ptr", scope: !2171, file: !3, line: 64, type: !324)
!2171 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 64, column: 8)
!2172 = !DILocalVariable(name: "__vpp_verify", scope: !2173, file: !3, line: 64, type: !720)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 64, column: 8)
!2174 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 64, column: 8)
!2175 = !DILocalVariable(name: "__ptr", scope: !2176, file: !3, line: 64, type: !324)
!2176 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 64, column: 8)
!2177 = !DILocation(line: 57, column: 45, scope: !2150)
!2178 = !DILocation(line: 59, column: 2, scope: !2150)
!2179 = !DILocation(line: 59, column: 20, scope: !2150)
!2180 = !DILocation(line: 61, column: 7, scope: !2158)
!2181 = !DILocation(line: 61, column: 7, scope: !2157)
!2182 = !DILocation(line: 61, column: 7, scope: !2161)
!2183 = !DILocation(line: 61, column: 7, scope: !2159)
!2184 = !DILocation(line: 61, column: 25, scope: !2159)
!2185 = !DILocation(line: 61, column: 29, scope: !2164)
!2186 = !DILocation(line: 61, column: 29, scope: !2163)
!2187 = !DILocation(line: 61, column: 29, scope: !2166)
!2188 = !DILocation(line: 61, column: 29, scope: !2159)
!2189 = !DILocation(line: 61, column: 6, scope: !2150)
!2190 = !DILocation(line: 62, column: 3, scope: !2159)
!2191 = !DILocation(line: 64, column: 8, scope: !2169)
!2192 = !DILocation(line: 64, column: 8, scope: !2168)
!2193 = !DILocation(line: 64, column: 8, scope: !2171)
!2194 = !DILocation(line: 64, column: 8, scope: !2150)
!2195 = !DILocation(line: 64, column: 8, scope: !2174)
!2196 = !DILocation(line: 64, column: 8, scope: !2173)
!2197 = !DILocation(line: 64, column: 8, scope: !2176)
!2198 = !DILocation(line: 64, column: 6, scope: !2150)
!2199 = !DILocation(line: 66, column: 10, scope: !2150)
!2200 = !DILocation(line: 66, column: 15, scope: !2150)
!2201 = !DILocation(line: 66, column: 26, scope: !2150)
!2202 = !DILocation(line: 66, column: 38, scope: !2150)
!2203 = !DILocation(line: 66, column: 43, scope: !2150)
!2204 = !DILocation(line: 66, column: 48, scope: !2150)
!2205 = !DILocation(line: 66, column: 42, scope: !2150)
!2206 = !DILocation(line: 66, column: 41, scope: !2150)
!2207 = !DILocation(line: 66, column: 2, scope: !2150)
!2208 = !DILocation(line: 68, column: 1, scope: !2150)
!2209 = distinct !DISubprogram(name: "last_level_cache_is_shared", scope: !3, file: !3, line: 70, type: !2210, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!331, !7, !7}
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2220, !2222, !2225, !2227, !2230, !2232, !2235}
!2213 = !DILocalVariable(name: "cpu_x", arg: 1, scope: !2209, file: !3, line: 70, type: !7)
!2214 = !DILocalVariable(name: "cpu_y", arg: 2, scope: !2209, file: !3, line: 70, type: !7)
!2215 = !DILocalVariable(name: "llc_x", scope: !2209, file: !3, line: 72, type: !306)
!2216 = !DILocalVariable(name: "llc_y", scope: !2209, file: !3, line: 72, type: !306)
!2217 = !DILocalVariable(name: "__vpp_verify", scope: !2218, file: !3, line: 78, type: !720)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 78, column: 10)
!2219 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 78, column: 10)
!2220 = !DILocalVariable(name: "__ptr", scope: !2221, file: !3, line: 78, type: !324)
!2221 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 78, column: 10)
!2222 = !DILocalVariable(name: "__vpp_verify", scope: !2223, file: !3, line: 78, type: !720)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 78, column: 10)
!2224 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 78, column: 10)
!2225 = !DILocalVariable(name: "__ptr", scope: !2226, file: !3, line: 78, type: !324)
!2226 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 78, column: 10)
!2227 = !DILocalVariable(name: "__vpp_verify", scope: !2228, file: !3, line: 79, type: !720)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 79, column: 10)
!2229 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 79, column: 10)
!2230 = !DILocalVariable(name: "__ptr", scope: !2231, file: !3, line: 79, type: !324)
!2231 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 79, column: 10)
!2232 = !DILocalVariable(name: "__vpp_verify", scope: !2233, file: !3, line: 79, type: !720)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 79, column: 10)
!2234 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 79, column: 10)
!2235 = !DILocalVariable(name: "__ptr", scope: !2236, file: !3, line: 79, type: !324)
!2236 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 79, column: 10)
!2237 = !DILocation(line: 70, column: 46, scope: !2209)
!2238 = !DILocation(line: 70, column: 66, scope: !2209)
!2239 = !DILocation(line: 72, column: 2, scope: !2209)
!2240 = !DILocation(line: 72, column: 20, scope: !2209)
!2241 = !DILocation(line: 72, column: 28, scope: !2209)
!2242 = !DILocation(line: 74, column: 33, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 74, column: 6)
!2244 = !DILocation(line: 74, column: 7, scope: !2243)
!2245 = !DILocation(line: 74, column: 40, scope: !2243)
!2246 = !DILocation(line: 75, column: 33, scope: !2243)
!2247 = !DILocation(line: 75, column: 7, scope: !2243)
!2248 = !DILocation(line: 74, column: 6, scope: !2209)
!2249 = !DILocation(line: 76, column: 3, scope: !2243)
!2250 = !DILocation(line: 78, column: 10, scope: !2219)
!2251 = !DILocation(line: 78, column: 10, scope: !2218)
!2252 = !DILocation(line: 78, column: 10, scope: !2221)
!2253 = !DILocation(line: 78, column: 10, scope: !2209)
!2254 = !DILocation(line: 78, column: 10, scope: !2224)
!2255 = !DILocation(line: 78, column: 10, scope: !2223)
!2256 = !DILocation(line: 78, column: 10, scope: !2226)
!2257 = !DILocation(line: 78, column: 8, scope: !2209)
!2258 = !DILocation(line: 79, column: 10, scope: !2229)
!2259 = !DILocation(line: 79, column: 10, scope: !2228)
!2260 = !DILocation(line: 79, column: 10, scope: !2231)
!2261 = !DILocation(line: 79, column: 10, scope: !2209)
!2262 = !DILocation(line: 79, column: 10, scope: !2234)
!2263 = !DILocation(line: 79, column: 10, scope: !2233)
!2264 = !DILocation(line: 79, column: 10, scope: !2236)
!2265 = !DILocation(line: 79, column: 8, scope: !2209)
!2266 = !DILocation(line: 81, column: 33, scope: !2209)
!2267 = !DILocation(line: 81, column: 40, scope: !2209)
!2268 = !DILocation(line: 81, column: 9, scope: !2209)
!2269 = !DILocation(line: 81, column: 2, scope: !2209)
!2270 = !DILocation(line: 82, column: 1, scope: !2209)
!2271 = distinct !DISubprogram(name: "cache_leaves_are_shared", scope: !3, file: !3, line: 39, type: !2272, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!331, !306, !306}
!2274 = !{!2275, !2276}
!2275 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !2271, file: !3, line: 39, type: !306)
!2276 = !DILocalVariable(name: "sib_leaf", arg: 2, scope: !2271, file: !3, line: 40, type: !306)
!2277 = !DILocation(line: 39, column: 62, scope: !2271)
!2278 = !DILocation(line: 40, column: 27, scope: !2271)
!2279 = !DILocation(line: 47, column: 6, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 46, column: 6)
!2281 = !{i8 0, i8 2}
!2282 = !DILocation(line: 46, column: 6, scope: !2271)
!2283 = !DILocation(line: 48, column: 11, scope: !2280)
!2284 = !DILocation(line: 48, column: 22, scope: !2280)
!2285 = !DILocation(line: 48, column: 28, scope: !2280)
!2286 = !DILocation(line: 48, column: 34, scope: !2280)
!2287 = !DILocation(line: 48, column: 38, scope: !2280)
!2288 = !DILocation(line: 48, column: 48, scope: !2280)
!2289 = !DILocation(line: 48, column: 54, scope: !2280)
!2290 = !DILocation(line: 0, scope: !2280)
!2291 = !DILocation(line: 48, column: 3, scope: !2280)
!2292 = !DILocation(line: 50, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 50, column: 6)
!2294 = !DILocation(line: 50, column: 17, scope: !2293)
!2295 = !DILocation(line: 50, column: 28, scope: !2293)
!2296 = !DILocation(line: 50, column: 40, scope: !2293)
!2297 = !DILocation(line: 51, column: 7, scope: !2293)
!2298 = !DILocation(line: 51, column: 18, scope: !2293)
!2299 = !DILocation(line: 51, column: 29, scope: !2293)
!2300 = !DILocation(line: 50, column: 6, scope: !2271)
!2301 = !DILocation(line: 52, column: 10, scope: !2293)
!2302 = !DILocation(line: 52, column: 20, scope: !2293)
!2303 = !DILocation(line: 52, column: 26, scope: !2293)
!2304 = !DILocation(line: 52, column: 37, scope: !2293)
!2305 = !DILocation(line: 52, column: 23, scope: !2293)
!2306 = !DILocation(line: 52, column: 3, scope: !2293)
!2307 = !DILocation(line: 54, column: 9, scope: !2271)
!2308 = !DILocation(line: 54, column: 19, scope: !2271)
!2309 = !DILocation(line: 54, column: 31, scope: !2271)
!2310 = !DILocation(line: 54, column: 42, scope: !2271)
!2311 = !DILocation(line: 54, column: 28, scope: !2271)
!2312 = !DILocation(line: 54, column: 2, scope: !2271)
!2313 = !DILocation(line: 55, column: 1, scope: !2271)
!2314 = distinct !DISubprogram(name: "init_of_cache_level", scope: !3, file: !3, line: 331, type: !2315, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!37, !7}
!2317 = !{!2318}
!2318 = !DILocalVariable(name: "cpu", arg: 1, scope: !2314, file: !3, line: 331, type: !7)
!2319 = !DILocation(line: 331, column: 38, scope: !2314)
!2320 = !DILocation(line: 331, column: 45, scope: !2314)
!2321 = distinct !DISubprogram(name: "cache_setup_acpi", scope: !3, file: !3, line: 334, type: !2315, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2322)
!2322 = !{!2323}
!2323 = !DILocalVariable(name: "cpu", arg: 1, scope: !2321, file: !3, line: 334, type: !7)
!2324 = !DILocation(line: 334, column: 42, scope: !2321)
!2325 = !DILocation(line: 336, column: 2, scope: !2321)
!2326 = distinct !DISubprogram(name: "early_cache_level", scope: !3, file: !3, line: 466, type: !2315, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2327)
!2327 = !{!2328}
!2328 = !DILocalVariable(name: "cpu", arg: 1, scope: !2326, file: !3, line: 466, type: !7)
!2329 = !DILocation(line: 466, column: 43, scope: !2326)
!2330 = !DILocation(line: 468, column: 2, scope: !2326)
!2331 = distinct !DISubprogram(name: "init_cache_level", scope: !3, file: !3, line: 471, type: !2315, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2332)
!2332 = !{!2333}
!2333 = !DILocalVariable(name: "cpu", arg: 1, scope: !2331, file: !3, line: 471, type: !7)
!2334 = !DILocation(line: 471, column: 42, scope: !2331)
!2335 = !DILocation(line: 473, column: 2, scope: !2331)
!2336 = distinct !DISubprogram(name: "populate_cache_leaves", scope: !3, file: !3, line: 476, type: !2315, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2337 = !{!2338}
!2338 = !DILocalVariable(name: "cpu", arg: 1, scope: !2336, file: !3, line: 476, type: !7)
!2339 = !DILocation(line: 476, column: 47, scope: !2336)
!2340 = !DILocation(line: 478, column: 2, scope: !2336)
!2341 = distinct !DISubprogram(name: "fetch_cache_info", scope: !3, file: !3, line: 492, type: !2315, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2342)
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2352, !2354, !2359}
!2343 = !DILocalVariable(name: "cpu", arg: 1, scope: !2341, file: !3, line: 492, type: !7)
!2344 = !DILocalVariable(name: "this_cpu_ci", scope: !2341, file: !3, line: 494, type: !302)
!2345 = !DILocalVariable(name: "levels", scope: !2341, file: !3, line: 495, type: !7)
!2346 = !DILocalVariable(name: "split_levels", scope: !2341, file: !3, line: 495, type: !7)
!2347 = !DILocalVariable(name: "ret", scope: !2341, file: !3, line: 496, type: !37)
!2348 = !DILocalVariable(name: "__vpp_verify", scope: !2349, file: !3, line: 514, type: !720)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 514, column: 14)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 514, column: 14)
!2351 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 514, column: 6)
!2352 = !DILocalVariable(name: "__ptr", scope: !2353, file: !3, line: 514, type: !324)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 514, column: 14)
!2354 = !DILocalVariable(name: "__vpp_verify", scope: !2355, file: !3, line: 519, type: !720)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 519, column: 8)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 519, column: 8)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 519, column: 7)
!2358 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 514, column: 33)
!2359 = !DILocalVariable(name: "__ptr", scope: !2360, file: !3, line: 519, type: !324)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 519, column: 8)
!2361 = !DILocation(line: 492, column: 35, scope: !2341)
!2362 = !DILocation(line: 494, column: 2, scope: !2341)
!2363 = !DILocation(line: 494, column: 24, scope: !2341)
!2364 = !DILocation(line: 494, column: 56, scope: !2341)
!2365 = !DILocation(line: 494, column: 38, scope: !2341)
!2366 = !DILocation(line: 495, column: 2, scope: !2341)
!2367 = !DILocation(line: 495, column: 15, scope: !2341)
!2368 = !DILocation(line: 495, column: 27, scope: !2341)
!2369 = !DILocation(line: 496, column: 2, scope: !2341)
!2370 = !DILocation(line: 496, column: 6, scope: !2341)
!2371 = !DILocation(line: 498, column: 6, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 498, column: 6)
!2373 = !DILocation(line: 498, column: 6, scope: !2341)
!2374 = !DILocation(line: 499, column: 29, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 498, column: 21)
!2376 = !DILocation(line: 499, column: 9, scope: !2375)
!2377 = !DILocation(line: 499, column: 7, scope: !2375)
!2378 = !DILocation(line: 500, column: 2, scope: !2375)
!2379 = !DILocation(line: 501, column: 29, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 500, column: 9)
!2381 = !DILocation(line: 501, column: 9, scope: !2380)
!2382 = !DILocation(line: 501, column: 7, scope: !2380)
!2383 = !DILocation(line: 502, column: 8, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 502, column: 7)
!2385 = !DILocation(line: 502, column: 7, scope: !2380)
!2386 = !DILocation(line: 503, column: 30, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 502, column: 13)
!2388 = !DILocation(line: 503, column: 4, scope: !2387)
!2389 = !DILocation(line: 503, column: 17, scope: !2387)
!2390 = !DILocation(line: 503, column: 28, scope: !2387)
!2391 = !DILocation(line: 510, column: 30, scope: !2387)
!2392 = !DILocation(line: 510, column: 39, scope: !2387)
!2393 = !DILocation(line: 510, column: 37, scope: !2387)
!2394 = !DILocation(line: 510, column: 4, scope: !2387)
!2395 = !DILocation(line: 510, column: 17, scope: !2387)
!2396 = !DILocation(line: 510, column: 28, scope: !2387)
!2397 = !DILocation(line: 511, column: 3, scope: !2387)
!2398 = !DILocation(line: 514, column: 6, scope: !2351)
!2399 = !DILocation(line: 514, column: 10, scope: !2351)
!2400 = !DILocation(line: 514, column: 14, scope: !2350)
!2401 = !DILocation(line: 514, column: 14, scope: !2349)
!2402 = !DILocation(line: 514, column: 14, scope: !2353)
!2403 = !DILocation(line: 514, column: 14, scope: !2351)
!2404 = !DILocation(line: 514, column: 6, scope: !2341)
!2405 = !DILocation(line: 515, column: 27, scope: !2358)
!2406 = !DILocation(line: 515, column: 9, scope: !2358)
!2407 = !DILocation(line: 515, column: 7, scope: !2358)
!2408 = !DILocation(line: 516, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 516, column: 7)
!2410 = !DILocation(line: 516, column: 7, scope: !2358)
!2411 = !DILocation(line: 517, column: 11, scope: !2409)
!2412 = !DILocation(line: 517, column: 4, scope: !2409)
!2413 = !DILocation(line: 519, column: 8, scope: !2356)
!2414 = !DILocation(line: 519, column: 8, scope: !2355)
!2415 = !DILocation(line: 519, column: 8, scope: !2360)
!2416 = !DILocation(line: 519, column: 8, scope: !2357)
!2417 = !DILocation(line: 519, column: 7, scope: !2358)
!2418 = !DILocation(line: 520, column: 4, scope: !2357)
!2419 = !DILocation(line: 522, column: 3, scope: !2358)
!2420 = !DILocation(line: 522, column: 16, scope: !2358)
!2421 = !DILocation(line: 522, column: 32, scope: !2358)
!2422 = !DILocation(line: 523, column: 2, scope: !2358)
!2423 = !DILocation(line: 525, column: 29, scope: !2341)
!2424 = !DILocation(line: 525, column: 9, scope: !2341)
!2425 = !DILocation(line: 525, column: 2, scope: !2341)
!2426 = !DILocation(line: 526, column: 1, scope: !2341)
!2427 = distinct !DISubprogram(name: "acpi_get_cache_info", scope: !6, file: !6, line: 102, type: !2428, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!37, !7, !1212, !1212}
!2430 = !{!2431, !2432, !2433}
!2431 = !DILocalVariable(name: "cpu", arg: 1, scope: !2427, file: !6, line: 102, type: !7)
!2432 = !DILocalVariable(name: "levels", arg: 2, scope: !2427, file: !6, line: 103, type: !1212)
!2433 = !DILocalVariable(name: "split_levels", arg: 3, scope: !2427, file: !6, line: 103, type: !1212)
!2434 = !DILocation(line: 102, column: 38, scope: !2427)
!2435 = !DILocation(line: 103, column: 18, scope: !2427)
!2436 = !DILocation(line: 103, column: 40, scope: !2427)
!2437 = !DILocation(line: 105, column: 2, scope: !2427)
!2438 = distinct !DISubprogram(name: "allocate_cache_info", scope: !3, file: !3, line: 481, type: !2439, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!37, !37}
!2441 = !{!2442, !2443, !2446, !2448, !2451, !2453, !2457, !2459, !2463}
!2442 = !DILocalVariable(name: "cpu", arg: 1, scope: !2438, file: !3, line: 481, type: !37)
!2443 = !DILocalVariable(name: "__vpp_verify", scope: !2444, file: !3, line: 483, type: !720)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 483, column: 35)
!2445 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 483, column: 35)
!2446 = !DILocalVariable(name: "__ptr", scope: !2447, file: !3, line: 483, type: !324)
!2447 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 483, column: 35)
!2448 = !DILocalVariable(name: "__vpp_verify", scope: !2449, file: !3, line: 483, type: !720)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 483, column: 2)
!2450 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 483, column: 2)
!2451 = !DILocalVariable(name: "__ptr", scope: !2452, file: !3, line: 483, type: !324)
!2452 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 483, column: 2)
!2453 = !DILocalVariable(name: "__vpp_verify", scope: !2454, file: !3, line: 484, type: !720)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 484, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 484, column: 7)
!2456 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 484, column: 6)
!2457 = !DILocalVariable(name: "__ptr", scope: !2458, file: !3, line: 484, type: !324)
!2458 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 484, column: 7)
!2459 = !DILocalVariable(name: "__vpp_verify", scope: !2460, file: !3, line: 485, type: !720)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 485, column: 3)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 485, column: 3)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 484, column: 31)
!2463 = !DILocalVariable(name: "__ptr", scope: !2464, file: !3, line: 485, type: !324)
!2464 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 485, column: 3)
!2465 = !DILocation(line: 481, column: 43, scope: !2438)
!2466 = !DILocation(line: 483, column: 35, scope: !2445)
!2467 = !DILocation(line: 483, column: 35, scope: !2444)
!2468 = !DILocation(line: 483, column: 35, scope: !2447)
!2469 = !DILocation(line: 483, column: 35, scope: !2438)
!2470 = !DILocation(line: 483, column: 27, scope: !2438)
!2471 = !DILocation(line: 483, column: 2, scope: !2450)
!2472 = !DILocation(line: 483, column: 2, scope: !2449)
!2473 = !DILocation(line: 483, column: 2, scope: !2452)
!2474 = !DILocation(line: 483, column: 2, scope: !2438)
!2475 = !DILocation(line: 483, column: 25, scope: !2438)
!2476 = !DILocation(line: 484, column: 7, scope: !2455)
!2477 = !DILocation(line: 484, column: 7, scope: !2454)
!2478 = !DILocation(line: 484, column: 7, scope: !2458)
!2479 = !DILocation(line: 484, column: 7, scope: !2456)
!2480 = !DILocation(line: 484, column: 6, scope: !2438)
!2481 = !DILocation(line: 485, column: 3, scope: !2461)
!2482 = !DILocation(line: 485, column: 3, scope: !2460)
!2483 = !DILocation(line: 485, column: 3, scope: !2464)
!2484 = !DILocation(line: 485, column: 3, scope: !2462)
!2485 = !DILocation(line: 485, column: 21, scope: !2462)
!2486 = !DILocation(line: 486, column: 3, scope: !2462)
!2487 = !DILocation(line: 489, column: 2, scope: !2438)
!2488 = !DILocation(line: 490, column: 1, scope: !2438)
!2489 = distinct !DISubprogram(name: "detect_cache_attributes", scope: !3, file: !3, line: 566, type: !2315, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2490 = !{!2491, !2492, !2493}
!2491 = !DILocalVariable(name: "cpu", arg: 1, scope: !2489, file: !3, line: 566, type: !7)
!2492 = !DILocalVariable(name: "ret", scope: !2489, file: !3, line: 568, type: !37)
!2493 = !DILabel(scope: !2489, name: "free_ci", file: !3, line: 601)
!2494 = !DILocation(line: 566, column: 42, scope: !2489)
!2495 = !DILocation(line: 568, column: 2, scope: !2489)
!2496 = !DILocation(line: 568, column: 6, scope: !2489)
!2497 = !DILocation(line: 570, column: 31, scope: !2489)
!2498 = !DILocation(line: 570, column: 8, scope: !2489)
!2499 = !DILocation(line: 570, column: 6, scope: !2489)
!2500 = !DILocation(line: 571, column: 6, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 571, column: 6)
!2502 = !DILocation(line: 571, column: 6, scope: !2489)
!2503 = !DILocation(line: 572, column: 10, scope: !2501)
!2504 = !DILocation(line: 572, column: 3, scope: !2501)
!2505 = !DILocation(line: 578, column: 33, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 578, column: 6)
!2507 = !DILocation(line: 578, column: 7, scope: !2506)
!2508 = !DILocation(line: 578, column: 6, scope: !2489)
!2509 = !DILocation(line: 583, column: 31, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 578, column: 39)
!2511 = !DILocation(line: 583, column: 9, scope: !2510)
!2512 = !DILocation(line: 583, column: 7, scope: !2510)
!2513 = !DILocation(line: 584, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 584, column: 7)
!2515 = !DILocation(line: 584, column: 7, scope: !2510)
!2516 = !DILocation(line: 585, column: 4, scope: !2514)
!2517 = !DILocation(line: 586, column: 2, scope: !2510)
!2518 = !DILocation(line: 593, column: 35, scope: !2489)
!2519 = !DILocation(line: 593, column: 8, scope: !2489)
!2520 = !DILocation(line: 593, column: 6, scope: !2489)
!2521 = !DILocation(line: 594, column: 6, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 594, column: 6)
!2523 = !DILocation(line: 594, column: 6, scope: !2489)
!2524 = !DILocation(line: 595, column: 3, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 595, column: 3)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 594, column: 11)
!2527 = !DILocation(line: 595, column: 3, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 595, column: 3)
!2529 = !DILocation(line: 596, column: 3, scope: !2526)
!2530 = !DILocation(line: 599, column: 2, scope: !2489)
!2531 = !DILocation(line: 601, column: 1, scope: !2489)
!2532 = !DILocation(line: 602, column: 24, scope: !2489)
!2533 = !DILocation(line: 602, column: 2, scope: !2489)
!2534 = !DILocation(line: 603, column: 9, scope: !2489)
!2535 = !DILocation(line: 603, column: 2, scope: !2489)
!2536 = !DILocation(line: 604, column: 1, scope: !2489)
!2537 = distinct !DISubprogram(name: "init_level_allocate_ci", scope: !3, file: !3, line: 528, type: !2315, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2538)
!2538 = !{!2539, !2540, !2541, !2544, !2546, !2550, !2552, !2555, !2557, !2561, !2563, !2566, !2568, !2572, !2574, !2577, !2579, !2582}
!2539 = !DILocalVariable(name: "cpu", arg: 1, scope: !2537, file: !3, line: 528, type: !7)
!2540 = !DILocalVariable(name: "early_leaves", scope: !2537, file: !3, line: 530, type: !7)
!2541 = !DILocalVariable(name: "__vpp_verify", scope: !2542, file: !3, line: 530, type: !720)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 530, column: 30)
!2543 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 530, column: 30)
!2544 = !DILocalVariable(name: "__ptr", scope: !2545, file: !3, line: 530, type: !324)
!2545 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 530, column: 30)
!2546 = !DILocalVariable(name: "__vpp_verify", scope: !2547, file: !3, line: 542, type: !720)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 542, column: 6)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 542, column: 6)
!2549 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 542, column: 6)
!2550 = !DILocalVariable(name: "__ptr", scope: !2551, file: !3, line: 542, type: !324)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 542, column: 6)
!2552 = !DILocalVariable(name: "__vpp_verify", scope: !2553, file: !3, line: 542, type: !720)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 542, column: 33)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 542, column: 33)
!2555 = !DILocalVariable(name: "__ptr", scope: !2556, file: !3, line: 542, type: !324)
!2556 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 542, column: 33)
!2557 = !DILocalVariable(name: "__vpp_verify", scope: !2558, file: !3, line: 545, type: !720)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 545, column: 32)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 545, column: 32)
!2560 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 545, column: 6)
!2561 = !DILocalVariable(name: "__ptr", scope: !2562, file: !3, line: 545, type: !324)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 545, column: 32)
!2563 = !DILocalVariable(name: "__vpp_verify", scope: !2564, file: !3, line: 553, type: !720)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 553, column: 2)
!2565 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 553, column: 2)
!2566 = !DILocalVariable(name: "__ptr", scope: !2567, file: !3, line: 553, type: !324)
!2567 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 553, column: 2)
!2568 = !DILocalVariable(name: "__vpp_verify", scope: !2569, file: !3, line: 559, type: !720)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 559, column: 6)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 559, column: 6)
!2571 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 559, column: 6)
!2572 = !DILocalVariable(name: "__ptr", scope: !2573, file: !3, line: 559, type: !324)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 559, column: 6)
!2574 = !DILocalVariable(name: "__vpp_verify", scope: !2575, file: !3, line: 559, type: !720)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 559, column: 43)
!2576 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 559, column: 43)
!2577 = !DILocalVariable(name: "__ptr", scope: !2578, file: !3, line: 559, type: !324)
!2578 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 559, column: 43)
!2579 = !DILocalVariable(name: "__vpp_verify", scope: !2580, file: !3, line: 562, type: !720)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 562, column: 8)
!2581 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 562, column: 8)
!2582 = !DILocalVariable(name: "__ptr", scope: !2583, file: !3, line: 562, type: !324)
!2583 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 562, column: 8)
!2584 = !DILocation(line: 528, column: 55, scope: !2537)
!2585 = !DILocation(line: 530, column: 2, scope: !2537)
!2586 = !DILocation(line: 530, column: 15, scope: !2537)
!2587 = !DILocation(line: 530, column: 30, scope: !2543)
!2588 = !DILocation(line: 530, column: 30, scope: !2542)
!2589 = !DILocation(line: 530, column: 30, scope: !2545)
!2590 = !DILocation(line: 530, column: 30, scope: !2537)
!2591 = !DILocation(line: 542, column: 6, scope: !2548)
!2592 = !DILocation(line: 542, column: 6, scope: !2547)
!2593 = !DILocation(line: 542, column: 6, scope: !2551)
!2594 = !DILocation(line: 542, column: 6, scope: !2549)
!2595 = !DILocation(line: 542, column: 29, scope: !2549)
!2596 = !DILocation(line: 542, column: 33, scope: !2554)
!2597 = !DILocation(line: 542, column: 33, scope: !2553)
!2598 = !DILocation(line: 542, column: 33, scope: !2556)
!2599 = !DILocation(line: 542, column: 52, scope: !2549)
!2600 = !DILocation(line: 542, column: 6, scope: !2537)
!2601 = !DILocation(line: 543, column: 3, scope: !2549)
!2602 = !DILocation(line: 545, column: 23, scope: !2560)
!2603 = !DILocation(line: 545, column: 6, scope: !2560)
!2604 = !DILocation(line: 545, column: 28, scope: !2560)
!2605 = !DILocation(line: 545, column: 32, scope: !2559)
!2606 = !DILocation(line: 545, column: 32, scope: !2558)
!2607 = !DILocation(line: 545, column: 32, scope: !2562)
!2608 = !DILocation(line: 545, column: 32, scope: !2560)
!2609 = !DILocation(line: 545, column: 6, scope: !2537)
!2610 = !DILocation(line: 546, column: 3, scope: !2560)
!2611 = !DILocation(line: 553, column: 2, scope: !2565)
!2612 = !DILocation(line: 553, column: 2, scope: !2564)
!2613 = !DILocation(line: 553, column: 2, scope: !2567)
!2614 = !DILocation(line: 553, column: 21, scope: !2537)
!2615 = !DILocation(line: 553, column: 37, scope: !2537)
!2616 = !DILocation(line: 559, column: 6, scope: !2570)
!2617 = !DILocation(line: 559, column: 6, scope: !2569)
!2618 = !DILocation(line: 559, column: 6, scope: !2573)
!2619 = !DILocation(line: 559, column: 6, scope: !2571)
!2620 = !DILocation(line: 559, column: 27, scope: !2571)
!2621 = !DILocation(line: 559, column: 24, scope: !2571)
!2622 = !DILocation(line: 559, column: 40, scope: !2571)
!2623 = !DILocation(line: 559, column: 43, scope: !2576)
!2624 = !DILocation(line: 559, column: 43, scope: !2575)
!2625 = !DILocation(line: 559, column: 43, scope: !2578)
!2626 = !DILocation(line: 559, column: 43, scope: !2571)
!2627 = !DILocation(line: 559, column: 6, scope: !2537)
!2628 = !DILocation(line: 560, column: 3, scope: !2571)
!2629 = !DILocation(line: 562, column: 8, scope: !2581)
!2630 = !DILocation(line: 562, column: 8, scope: !2580)
!2631 = !DILocation(line: 562, column: 8, scope: !2583)
!2632 = !DILocation(line: 562, column: 8, scope: !2537)
!2633 = !DILocation(line: 562, column: 2, scope: !2537)
!2634 = !DILocation(line: 563, column: 29, scope: !2537)
!2635 = !DILocation(line: 563, column: 9, scope: !2537)
!2636 = !DILocation(line: 563, column: 2, scope: !2537)
!2637 = !DILocation(line: 564, column: 1, scope: !2537)
!2638 = distinct !DISubprogram(name: "cache_shared_cpu_map_setup", scope: !3, file: !3, line: 357, type: !2315, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2652, !2654, !2656, !2659, !2661, !2665, !2670, !2672, !2676}
!2640 = !DILocalVariable(name: "cpu", arg: 1, scope: !2638, file: !3, line: 357, type: !7)
!2641 = !DILocalVariable(name: "this_cpu_ci", scope: !2638, file: !3, line: 359, type: !302)
!2642 = !DILocalVariable(name: "this_leaf", scope: !2638, file: !3, line: 360, type: !306)
!2643 = !DILocalVariable(name: "sib_leaf", scope: !2638, file: !3, line: 360, type: !306)
!2644 = !DILocalVariable(name: "index", scope: !2638, file: !3, line: 361, type: !7)
!2645 = !DILocalVariable(name: "sib_index", scope: !2638, file: !3, line: 361, type: !7)
!2646 = !DILocalVariable(name: "ret", scope: !2638, file: !3, line: 362, type: !37)
!2647 = !DILocalVariable(name: "__vpp_verify", scope: !2648, file: !3, line: 378, type: !720)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 378, column: 26)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 378, column: 26)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 378, column: 2)
!2651 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 378, column: 2)
!2652 = !DILocalVariable(name: "__ptr", scope: !2653, file: !3, line: 378, type: !324)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 378, column: 26)
!2654 = !DILocalVariable(name: "i", scope: !2655, file: !3, line: 379, type: !7)
!2655 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 378, column: 54)
!2656 = !DILocalVariable(name: "__vpp_verify", scope: !2657, file: !3, line: 381, type: !720)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 381, column: 15)
!2658 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 381, column: 15)
!2659 = !DILocalVariable(name: "__ptr", scope: !2660, file: !3, line: 381, type: !324)
!2660 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 381, column: 15)
!2661 = !DILocalVariable(name: "sib_cpu_ci", scope: !2662, file: !3, line: 385, type: !302)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 384, column: 26)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 384, column: 3)
!2664 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 384, column: 3)
!2665 = !DILocalVariable(name: "__vpp_verify", scope: !2666, file: !3, line: 389, type: !720)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 389, column: 36)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 389, column: 36)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 389, column: 4)
!2669 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 389, column: 4)
!2670 = !DILocalVariable(name: "__ptr", scope: !2671, file: !3, line: 389, type: !324)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 389, column: 36)
!2672 = !DILocalVariable(name: "__vpp_verify", scope: !2673, file: !3, line: 390, type: !720)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 390, column: 16)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 390, column: 16)
!2675 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 389, column: 66)
!2676 = !DILocalVariable(name: "__ptr", scope: !2677, file: !3, line: 390, type: !324)
!2677 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 390, column: 16)
!2678 = !DILocation(line: 357, column: 52, scope: !2638)
!2679 = !DILocation(line: 359, column: 2, scope: !2638)
!2680 = !DILocation(line: 359, column: 24, scope: !2638)
!2681 = !DILocation(line: 359, column: 56, scope: !2638)
!2682 = !DILocation(line: 359, column: 38, scope: !2638)
!2683 = !DILocation(line: 360, column: 2, scope: !2638)
!2684 = !DILocation(line: 360, column: 20, scope: !2638)
!2685 = !DILocation(line: 360, column: 32, scope: !2638)
!2686 = !DILocation(line: 361, column: 2, scope: !2638)
!2687 = !DILocation(line: 361, column: 15, scope: !2638)
!2688 = !DILocation(line: 361, column: 22, scope: !2638)
!2689 = !DILocation(line: 362, column: 2, scope: !2638)
!2690 = !DILocation(line: 362, column: 6, scope: !2638)
!2691 = !DILocation(line: 364, column: 6, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 364, column: 6)
!2693 = !DILocation(line: 364, column: 19, scope: !2692)
!2694 = !DILocation(line: 364, column: 6, scope: !2638)
!2695 = !DILocation(line: 365, column: 3, scope: !2692)
!2696 = !DILocation(line: 372, column: 33, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 372, column: 6)
!2698 = !DILocation(line: 372, column: 7, scope: !2697)
!2699 = !DILocation(line: 372, column: 38, scope: !2697)
!2700 = !DILocation(line: 372, column: 42, scope: !2697)
!2701 = !DILocation(line: 372, column: 6, scope: !2638)
!2702 = !DILocation(line: 373, column: 32, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 372, column: 57)
!2704 = !DILocation(line: 373, column: 9, scope: !2703)
!2705 = !DILocation(line: 373, column: 7, scope: !2703)
!2706 = !DILocation(line: 374, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 374, column: 7)
!2708 = !DILocation(line: 374, column: 7, scope: !2703)
!2709 = !DILocation(line: 375, column: 11, scope: !2707)
!2710 = !DILocation(line: 375, column: 4, scope: !2707)
!2711 = !DILocation(line: 376, column: 2, scope: !2703)
!2712 = !DILocation(line: 378, column: 13, scope: !2651)
!2713 = !DILocation(line: 378, column: 7, scope: !2651)
!2714 = !DILocation(line: 378, column: 18, scope: !2650)
!2715 = !DILocation(line: 378, column: 26, scope: !2649)
!2716 = !DILocation(line: 378, column: 26, scope: !2648)
!2717 = !DILocation(line: 378, column: 26, scope: !2653)
!2718 = !DILocation(line: 378, column: 26, scope: !2650)
!2719 = !DILocation(line: 378, column: 24, scope: !2650)
!2720 = !DILocation(line: 378, column: 2, scope: !2651)
!2721 = !DILocation(line: 379, column: 3, scope: !2655)
!2722 = !DILocation(line: 379, column: 16, scope: !2655)
!2723 = !DILocation(line: 381, column: 15, scope: !2658)
!2724 = !DILocation(line: 381, column: 15, scope: !2657)
!2725 = !DILocation(line: 381, column: 15, scope: !2660)
!2726 = !DILocation(line: 381, column: 15, scope: !2655)
!2727 = !DILocation(line: 381, column: 13, scope: !2655)
!2728 = !DILocation(line: 383, column: 19, scope: !2655)
!2729 = !DILocation(line: 383, column: 25, scope: !2655)
!2730 = !DILocation(line: 383, column: 36, scope: !2655)
!2731 = !DILocation(line: 383, column: 3, scope: !2655)
!2732 = !DILocation(line: 384, column: 3, scope: !2664)
!2733 = !DILocation(line: 384, column: 3, scope: !2663)
!2734 = !DILocation(line: 385, column: 4, scope: !2662)
!2735 = !DILocation(line: 385, column: 26, scope: !2662)
!2736 = !DILocation(line: 385, column: 57, scope: !2662)
!2737 = !DILocation(line: 385, column: 39, scope: !2662)
!2738 = !DILocation(line: 387, column: 8, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 387, column: 8)
!2740 = !DILocation(line: 387, column: 13, scope: !2739)
!2741 = !DILocation(line: 387, column: 10, scope: !2739)
!2742 = !DILocation(line: 387, column: 17, scope: !2739)
!2743 = !DILocation(line: 387, column: 21, scope: !2739)
!2744 = !DILocation(line: 387, column: 33, scope: !2739)
!2745 = !DILocation(line: 387, column: 8, scope: !2662)
!2746 = !DILocation(line: 388, column: 5, scope: !2739)
!2747 = !DILocation(line: 389, column: 19, scope: !2669)
!2748 = !DILocation(line: 389, column: 9, scope: !2669)
!2749 = !DILocation(line: 389, column: 24, scope: !2668)
!2750 = !DILocation(line: 389, column: 36, scope: !2667)
!2751 = !DILocation(line: 389, column: 36, scope: !2666)
!2752 = !DILocation(line: 389, column: 36, scope: !2671)
!2753 = !DILocation(line: 389, column: 36, scope: !2668)
!2754 = !DILocation(line: 389, column: 34, scope: !2668)
!2755 = !DILocation(line: 389, column: 4, scope: !2669)
!2756 = !DILocation(line: 390, column: 16, scope: !2674)
!2757 = !DILocation(line: 390, column: 16, scope: !2673)
!2758 = !DILocation(line: 390, column: 16, scope: !2677)
!2759 = !DILocation(line: 390, column: 16, scope: !2675)
!2760 = !DILocation(line: 390, column: 14, scope: !2675)
!2761 = !DILocation(line: 397, column: 9, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 397, column: 9)
!2763 = !DILocation(line: 397, column: 19, scope: !2762)
!2764 = !DILocation(line: 397, column: 28, scope: !2762)
!2765 = !DILocation(line: 397, column: 39, scope: !2762)
!2766 = !DILocation(line: 397, column: 25, scope: !2762)
!2767 = !DILocation(line: 397, column: 45, scope: !2762)
!2768 = !DILocation(line: 398, column: 9, scope: !2762)
!2769 = !DILocation(line: 398, column: 19, scope: !2762)
!2770 = !DILocation(line: 398, column: 27, scope: !2762)
!2771 = !DILocation(line: 398, column: 38, scope: !2762)
!2772 = !DILocation(line: 398, column: 24, scope: !2762)
!2773 = !DILocation(line: 397, column: 9, scope: !2675)
!2774 = !DILocation(line: 399, column: 6, scope: !2762)
!2775 = !DILocation(line: 401, column: 33, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 401, column: 9)
!2777 = !DILocation(line: 401, column: 44, scope: !2776)
!2778 = !DILocation(line: 401, column: 9, scope: !2776)
!2779 = !DILocation(line: 401, column: 9, scope: !2675)
!2780 = !DILocation(line: 402, column: 22, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 401, column: 55)
!2782 = !DILocation(line: 402, column: 28, scope: !2781)
!2783 = !DILocation(line: 402, column: 38, scope: !2781)
!2784 = !DILocation(line: 402, column: 6, scope: !2781)
!2785 = !DILocation(line: 403, column: 22, scope: !2781)
!2786 = !DILocation(line: 403, column: 26, scope: !2781)
!2787 = !DILocation(line: 403, column: 37, scope: !2781)
!2788 = !DILocation(line: 403, column: 6, scope: !2781)
!2789 = !DILocation(line: 404, column: 6, scope: !2781)
!2790 = !DILocation(line: 406, column: 4, scope: !2675)
!2791 = !DILocation(line: 389, column: 62, scope: !2668)
!2792 = !DILocation(line: 389, column: 4, scope: !2668)
!2793 = distinct !{!2793, !2755, !2794, !2795, !2796}
!2794 = !DILocation(line: 406, column: 4, scope: !2669)
!2795 = !{!"llvm.loop.mustprogress"}
!2796 = !{!"llvm.loop.unroll.disable"}
!2797 = !DILocation(line: 407, column: 3, scope: !2663)
!2798 = !DILocation(line: 407, column: 3, scope: !2662)
!2799 = distinct !{!2799, !2732, !2800, !2795, !2796}
!2800 = !DILocation(line: 407, column: 3, scope: !2664)
!2801 = !DILocation(line: 409, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 409, column: 7)
!2803 = !DILocation(line: 409, column: 18, scope: !2802)
!2804 = !DILocation(line: 409, column: 40, scope: !2802)
!2805 = !DILocation(line: 409, column: 38, scope: !2802)
!2806 = !DILocation(line: 409, column: 7, scope: !2655)
!2807 = !DILocation(line: 410, column: 25, scope: !2802)
!2808 = !DILocation(line: 410, column: 36, scope: !2802)
!2809 = !DILocation(line: 410, column: 23, scope: !2802)
!2810 = !DILocation(line: 410, column: 4, scope: !2802)
!2811 = !DILocation(line: 411, column: 2, scope: !2650)
!2812 = !DILocation(line: 411, column: 2, scope: !2655)
!2813 = !DILocation(line: 378, column: 50, scope: !2650)
!2814 = !DILocation(line: 378, column: 2, scope: !2650)
!2815 = distinct !{!2815, !2720, !2816, !2795, !2796}
!2816 = !DILocation(line: 411, column: 2, scope: !2651)
!2817 = !DILocation(line: 414, column: 2, scope: !2638)
!2818 = !DILocation(line: 414, column: 15, scope: !2638)
!2819 = !DILocation(line: 414, column: 33, scope: !2638)
!2820 = !DILocation(line: 415, column: 2, scope: !2638)
!2821 = !DILocation(line: 416, column: 1, scope: !2638)
!2822 = !DISubprogram(name: "_printk", scope: !2823, file: !2823, line: 153, type: !2824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2823 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!37, !357, null}
!2826 = distinct !DISubprogram(name: "free_cache_attributes", scope: !3, file: !3, line: 458, type: !2827, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !7}
!2829 = !{!2830, !2831, !2835}
!2830 = !DILocalVariable(name: "cpu", arg: 1, scope: !2826, file: !3, line: 458, type: !7)
!2831 = !DILocalVariable(name: "__vpp_verify", scope: !2832, file: !3, line: 460, type: !720)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 460, column: 7)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 460, column: 7)
!2834 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 460, column: 6)
!2835 = !DILocalVariable(name: "__ptr", scope: !2836, file: !3, line: 460, type: !324)
!2836 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 460, column: 7)
!2837 = !DILocation(line: 458, column: 48, scope: !2826)
!2838 = !DILocation(line: 460, column: 7, scope: !2833)
!2839 = !DILocation(line: 460, column: 7, scope: !2832)
!2840 = !DILocation(line: 460, column: 7, scope: !2836)
!2841 = !DILocation(line: 460, column: 7, scope: !2834)
!2842 = !DILocation(line: 460, column: 6, scope: !2826)
!2843 = !DILocation(line: 461, column: 3, scope: !2834)
!2844 = !DILocation(line: 463, column: 30, scope: !2826)
!2845 = !DILocation(line: 463, column: 2, scope: !2826)
!2846 = !DILocation(line: 464, column: 1, scope: !2826)
!2847 = distinct !DISubprogram(name: "cache_get_priv_group", scope: !3, file: !3, line: 803, type: !2848, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!494, !306}
!2850 = !{!2851}
!2851 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !2847, file: !3, line: 803, type: !306)
!2852 = !DILocation(line: 803, column: 47, scope: !2847)
!2853 = !DILocation(line: 805, column: 2, scope: !2847)
!2854 = distinct !DISubprogram(name: "__initstub__kmod_cacheinfo__206_930_cacheinfo_sysfs_init6", scope: !3, file: !3, line: 930, type: !1227, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2855 = !DILocation(line: 930, column: 1, scope: !2854)
!2856 = distinct !DISubprogram(name: "cacheinfo_sysfs_init", scope: !3, file: !3, line: 924, type: !1227, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2857 = !DILocation(line: 926, column: 9, scope: !2856)
!2858 = !DILocation(line: 926, column: 2, scope: !2856)
!2859 = distinct !DISubprogram(name: "kcalloc", scope: !26, file: !26, line: 666, type: !2860, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!329, !489, !489, !339}
!2862 = !{!2863, !2864, !2865}
!2863 = !DILocalVariable(name: "n", arg: 1, scope: !2859, file: !26, line: 666, type: !489)
!2864 = !DILocalVariable(name: "size", arg: 2, scope: !2859, file: !26, line: 666, type: !489)
!2865 = !DILocalVariable(name: "flags", arg: 3, scope: !2859, file: !26, line: 666, type: !339)
!2866 = !DILocation(line: 666, column: 55, scope: !2859)
!2867 = !DILocation(line: 666, column: 65, scope: !2859)
!2868 = !DILocation(line: 666, column: 77, scope: !2859)
!2869 = !DILocation(line: 668, column: 23, scope: !2859)
!2870 = !DILocation(line: 668, column: 26, scope: !2859)
!2871 = !DILocation(line: 668, column: 32, scope: !2859)
!2872 = !DILocation(line: 668, column: 38, scope: !2859)
!2873 = !DILocation(line: 668, column: 9, scope: !2859)
!2874 = !DILocation(line: 668, column: 2, scope: !2859)
!2875 = distinct !DISubprogram(name: "kmalloc_array", scope: !26, file: !26, line: 629, type: !2860, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2876)
!2876 = !{!2877, !2878, !2879, !2880}
!2877 = !DILocalVariable(name: "n", arg: 1, scope: !2875, file: !26, line: 629, type: !489)
!2878 = !DILocalVariable(name: "size", arg: 2, scope: !2875, file: !26, line: 629, type: !489)
!2879 = !DILocalVariable(name: "flags", arg: 3, scope: !2875, file: !26, line: 629, type: !339)
!2880 = !DILocalVariable(name: "bytes", scope: !2875, file: !26, line: 631, type: !489)
!2881 = !DILocation(line: 629, column: 61, scope: !2875)
!2882 = !DILocation(line: 629, column: 71, scope: !2875)
!2883 = !DILocation(line: 629, column: 83, scope: !2875)
!2884 = !DILocation(line: 631, column: 2, scope: !2875)
!2885 = !DILocation(line: 631, column: 9, scope: !2875)
!2886 = !DILocation(line: 633, column: 6, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2875, file: !26, line: 633, column: 6)
!2888 = !DILocation(line: 633, column: 6, scope: !2875)
!2889 = !DILocation(line: 634, column: 3, scope: !2887)
!2890 = !DILocation(line: 635, column: 27, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2875, file: !26, line: 635, column: 6)
!2892 = !DILocation(line: 635, column: 6, scope: !2891)
!2893 = !DILocation(line: 635, column: 30, scope: !2891)
!2894 = !DILocation(line: 635, column: 54, scope: !2891)
!2895 = !DILocation(line: 635, column: 33, scope: !2891)
!2896 = !DILocation(line: 635, column: 6, scope: !2875)
!2897 = !DILocation(line: 636, column: 18, scope: !2891)
!2898 = !DILocation(line: 636, column: 25, scope: !2891)
!2899 = !DILocation(line: 636, column: 10, scope: !2891)
!2900 = !DILocation(line: 636, column: 3, scope: !2891)
!2901 = !DILocation(line: 637, column: 19, scope: !2875)
!2902 = !DILocation(line: 637, column: 26, scope: !2875)
!2903 = !DILocation(line: 637, column: 9, scope: !2875)
!2904 = !DILocation(line: 637, column: 2, scope: !2875)
!2905 = !DILocation(line: 638, column: 1, scope: !2875)
!2906 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2907, file: !2907, line: 51, type: !2908, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2910)
!2907 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!331, !331}
!2910 = !{!2911}
!2911 = !DILocalVariable(name: "overflow", arg: 1, scope: !2906, file: !2907, line: 51, type: !331)
!2912 = !DILocation(line: 51, column: 60, scope: !2906)
!2913 = !DILocation(line: 53, column: 9, scope: !2906)
!2914 = !DILocation(line: 53, column: 2, scope: !2906)
!2915 = distinct !DISubprogram(name: "kmalloc", scope: !26, file: !26, line: 591, type: !2916, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!329, !489, !339}
!2918 = !{!2919, !2920, !2921}
!2919 = !DILocalVariable(name: "size", arg: 1, scope: !2915, file: !26, line: 591, type: !489)
!2920 = !DILocalVariable(name: "flags", arg: 2, scope: !2915, file: !26, line: 591, type: !339)
!2921 = !DILocalVariable(name: "index", scope: !2922, file: !26, line: 594, type: !7)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !26, line: 593, column: 42)
!2923 = distinct !DILexicalBlock(scope: !2915, file: !26, line: 593, column: 6)
!2924 = !DILocation(line: 591, column: 61, scope: !2915)
!2925 = !DILocation(line: 591, column: 73, scope: !2915)
!2926 = !DILocation(line: 593, column: 27, scope: !2923)
!2927 = !DILocation(line: 593, column: 6, scope: !2923)
!2928 = !DILocation(line: 593, column: 33, scope: !2923)
!2929 = !DILocation(line: 593, column: 36, scope: !2923)
!2930 = !DILocation(line: 593, column: 6, scope: !2915)
!2931 = !DILocation(line: 594, column: 3, scope: !2922)
!2932 = !DILocation(line: 594, column: 16, scope: !2922)
!2933 = !DILocation(line: 596, column: 7, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2922, file: !26, line: 596, column: 7)
!2935 = !DILocation(line: 596, column: 12, scope: !2934)
!2936 = !DILocation(line: 596, column: 7, scope: !2922)
!2937 = !DILocation(line: 597, column: 25, scope: !2934)
!2938 = !DILocation(line: 597, column: 31, scope: !2934)
!2939 = !DILocation(line: 597, column: 11, scope: !2934)
!2940 = !DILocation(line: 597, column: 4, scope: !2934)
!2941 = !DILocation(line: 599, column: 11, scope: !2922)
!2942 = !DILocation(line: 599, column: 9, scope: !2922)
!2943 = !DILocation(line: 601, column: 33, scope: !2922)
!2944 = !DILocation(line: 601, column: 40, scope: !2922)
!2945 = !DILocation(line: 601, column: 20, scope: !2922)
!2946 = !DILocation(line: 601, column: 5, scope: !2922)
!2947 = !DILocation(line: 601, column: 51, scope: !2922)
!2948 = !DILocation(line: 602, column: 5, scope: !2922)
!2949 = !DILocation(line: 602, column: 12, scope: !2922)
!2950 = !DILocation(line: 600, column: 10, scope: !2922)
!2951 = !DILocation(line: 600, column: 3, scope: !2922)
!2952 = !DILocation(line: 603, column: 2, scope: !2923)
!2953 = !DILocation(line: 604, column: 19, scope: !2915)
!2954 = !DILocation(line: 604, column: 25, scope: !2915)
!2955 = !DILocation(line: 604, column: 9, scope: !2915)
!2956 = !DILocation(line: 604, column: 2, scope: !2915)
!2957 = !DILocation(line: 605, column: 1, scope: !2915)
!2958 = !DISubprogram(name: "__kmalloc", scope: !26, file: !26, line: 488, type: !2916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2959 = !DISubprogram(name: "kmalloc_large", scope: !26, file: !26, line: 531, type: !2916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2960 = distinct !DISubprogram(name: "__kmalloc_index", scope: !26, file: !26, line: 444, type: !2961, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!7, !489, !331}
!2963 = !{!2964, !2965}
!2964 = !DILocalVariable(name: "size", arg: 1, scope: !2960, file: !26, line: 444, type: !489)
!2965 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2960, file: !26, line: 445, type: !331)
!2966 = !DILocation(line: 444, column: 60, scope: !2960)
!2967 = !DILocation(line: 445, column: 16, scope: !2960)
!2968 = !DILocation(line: 447, column: 7, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 447, column: 6)
!2970 = !DILocation(line: 447, column: 6, scope: !2960)
!2971 = !DILocation(line: 448, column: 3, scope: !2969)
!2972 = !DILocation(line: 450, column: 6, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 450, column: 6)
!2974 = !DILocation(line: 450, column: 11, scope: !2973)
!2975 = !DILocation(line: 450, column: 6, scope: !2960)
!2976 = !DILocation(line: 451, column: 3, scope: !2973)
!2977 = !DILocation(line: 453, column: 32, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 453, column: 6)
!2979 = !DILocation(line: 453, column: 37, scope: !2978)
!2980 = !DILocation(line: 453, column: 42, scope: !2978)
!2981 = !DILocation(line: 453, column: 45, scope: !2978)
!2982 = !DILocation(line: 453, column: 50, scope: !2978)
!2983 = !DILocation(line: 453, column: 6, scope: !2960)
!2984 = !DILocation(line: 454, column: 3, scope: !2978)
!2985 = !DILocation(line: 455, column: 32, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 455, column: 6)
!2987 = !DILocation(line: 455, column: 37, scope: !2986)
!2988 = !DILocation(line: 455, column: 43, scope: !2986)
!2989 = !DILocation(line: 455, column: 46, scope: !2986)
!2990 = !DILocation(line: 455, column: 51, scope: !2986)
!2991 = !DILocation(line: 455, column: 6, scope: !2960)
!2992 = !DILocation(line: 456, column: 3, scope: !2986)
!2993 = !DILocation(line: 457, column: 6, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 457, column: 6)
!2995 = !DILocation(line: 457, column: 11, scope: !2994)
!2996 = !DILocation(line: 457, column: 6, scope: !2960)
!2997 = !DILocation(line: 457, column: 26, scope: !2994)
!2998 = !DILocation(line: 458, column: 6, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 458, column: 6)
!3000 = !DILocation(line: 458, column: 11, scope: !2999)
!3001 = !DILocation(line: 458, column: 6, scope: !2960)
!3002 = !DILocation(line: 458, column: 26, scope: !2999)
!3003 = !DILocation(line: 459, column: 6, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 459, column: 6)
!3005 = !DILocation(line: 459, column: 11, scope: !3004)
!3006 = !DILocation(line: 459, column: 6, scope: !2960)
!3007 = !DILocation(line: 459, column: 26, scope: !3004)
!3008 = !DILocation(line: 460, column: 6, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 460, column: 6)
!3010 = !DILocation(line: 460, column: 11, scope: !3009)
!3011 = !DILocation(line: 460, column: 6, scope: !2960)
!3012 = !DILocation(line: 460, column: 26, scope: !3009)
!3013 = !DILocation(line: 461, column: 6, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 461, column: 6)
!3015 = !DILocation(line: 461, column: 11, scope: !3014)
!3016 = !DILocation(line: 461, column: 6, scope: !2960)
!3017 = !DILocation(line: 461, column: 26, scope: !3014)
!3018 = !DILocation(line: 462, column: 6, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 462, column: 6)
!3020 = !DILocation(line: 462, column: 11, scope: !3019)
!3021 = !DILocation(line: 462, column: 6, scope: !2960)
!3022 = !DILocation(line: 462, column: 26, scope: !3019)
!3023 = !DILocation(line: 463, column: 6, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 463, column: 6)
!3025 = !DILocation(line: 463, column: 11, scope: !3024)
!3026 = !DILocation(line: 463, column: 6, scope: !2960)
!3027 = !DILocation(line: 463, column: 26, scope: !3024)
!3028 = !DILocation(line: 464, column: 6, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 464, column: 6)
!3030 = !DILocation(line: 464, column: 11, scope: !3029)
!3031 = !DILocation(line: 464, column: 6, scope: !2960)
!3032 = !DILocation(line: 464, column: 26, scope: !3029)
!3033 = !DILocation(line: 465, column: 6, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 465, column: 6)
!3035 = !DILocation(line: 465, column: 11, scope: !3034)
!3036 = !DILocation(line: 465, column: 6, scope: !2960)
!3037 = !DILocation(line: 465, column: 26, scope: !3034)
!3038 = !DILocation(line: 466, column: 6, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 466, column: 6)
!3040 = !DILocation(line: 466, column: 11, scope: !3039)
!3041 = !DILocation(line: 466, column: 6, scope: !2960)
!3042 = !DILocation(line: 466, column: 26, scope: !3039)
!3043 = !DILocation(line: 467, column: 6, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 467, column: 6)
!3045 = !DILocation(line: 467, column: 11, scope: !3044)
!3046 = !DILocation(line: 467, column: 6, scope: !2960)
!3047 = !DILocation(line: 467, column: 26, scope: !3044)
!3048 = !DILocation(line: 468, column: 6, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 468, column: 6)
!3050 = !DILocation(line: 468, column: 11, scope: !3049)
!3051 = !DILocation(line: 468, column: 6, scope: !2960)
!3052 = !DILocation(line: 468, column: 26, scope: !3049)
!3053 = !DILocation(line: 469, column: 6, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 469, column: 6)
!3055 = !DILocation(line: 469, column: 11, scope: !3054)
!3056 = !DILocation(line: 469, column: 6, scope: !2960)
!3057 = !DILocation(line: 469, column: 26, scope: !3054)
!3058 = !DILocation(line: 470, column: 6, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 470, column: 6)
!3060 = !DILocation(line: 470, column: 11, scope: !3059)
!3061 = !DILocation(line: 470, column: 6, scope: !2960)
!3062 = !DILocation(line: 470, column: 26, scope: !3059)
!3063 = !DILocation(line: 471, column: 6, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 471, column: 6)
!3065 = !DILocation(line: 471, column: 11, scope: !3064)
!3066 = !DILocation(line: 471, column: 6, scope: !2960)
!3067 = !DILocation(line: 471, column: 26, scope: !3064)
!3068 = !DILocation(line: 472, column: 6, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 472, column: 6)
!3070 = !DILocation(line: 472, column: 11, scope: !3069)
!3071 = !DILocation(line: 472, column: 6, scope: !2960)
!3072 = !DILocation(line: 472, column: 26, scope: !3069)
!3073 = !DILocation(line: 473, column: 6, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 473, column: 6)
!3075 = !DILocation(line: 473, column: 11, scope: !3074)
!3076 = !DILocation(line: 473, column: 6, scope: !2960)
!3077 = !DILocation(line: 473, column: 26, scope: !3074)
!3078 = !DILocation(line: 474, column: 6, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 474, column: 6)
!3080 = !DILocation(line: 474, column: 11, scope: !3079)
!3081 = !DILocation(line: 474, column: 6, scope: !2960)
!3082 = !DILocation(line: 474, column: 27, scope: !3079)
!3083 = !DILocation(line: 475, column: 6, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 475, column: 6)
!3085 = !DILocation(line: 475, column: 11, scope: !3084)
!3086 = !DILocation(line: 475, column: 6, scope: !2960)
!3087 = !DILocation(line: 475, column: 32, scope: !3084)
!3088 = !DILocation(line: 477, column: 50, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !2960, file: !26, line: 477, column: 6)
!3090 = !DILocation(line: 477, column: 6, scope: !2960)
!3091 = !DILocation(line: 478, column: 3, scope: !3089)
!3092 = !DILocation(line: 478, column: 3, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !26, line: 478, column: 3)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !26, line: 478, column: 3)
!3095 = !{i32 -2143445988}
!3096 = !DILocation(line: 478, column: 3, scope: !3094)
!3097 = !DILocation(line: 480, column: 3, scope: !3089)
!3098 = !DILocation(line: 480, column: 3, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3089, file: !26, line: 480, column: 3)
!3100 = !DILocation(line: 480, column: 3, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3099, file: !26, line: 480, column: 3)
!3102 = !DILocation(line: 480, column: 3, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !26, line: 480, column: 3)
!3104 = !{i64 2151521511, i64 2151521540, i64 2151521586, i64 2151521644, i64 2151521698, i64 2151521752, i64 2151521807, i64 2151521838}
!3105 = !DILocation(line: 483, column: 2, scope: !2960)
!3106 = !DILocation(line: 484, column: 1, scope: !2960)
!3107 = !DISubprogram(name: "kmalloc_trace", scope: !26, file: !26, line: 525, type: !3108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!329, !3110, !339, !489}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3112, line: 11, flags: DIFlagFwdDecl)
!3112 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3113 = distinct !DISubprogram(name: "kmalloc_type", scope: !26, file: !26, line: 401, type: !3114, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!25, !339, !324}
!3116 = !{!3117, !3118}
!3117 = !DILocalVariable(name: "flags", arg: 1, scope: !3113, file: !26, line: 401, type: !339)
!3118 = !DILocalVariable(name: "caller", arg: 2, scope: !3113, file: !26, line: 401, type: !324)
!3119 = !DILocation(line: 401, column: 67, scope: !3113)
!3120 = !DILocation(line: 401, column: 88, scope: !3113)
!3121 = !DILocation(line: 407, column: 6, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3113, file: !26, line: 407, column: 6)
!3123 = !DILocation(line: 407, column: 6, scope: !3113)
!3124 = !DILocation(line: 413, column: 3, scope: !3122)
!3125 = !DILocation(line: 423, column: 38, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3113, file: !26, line: 423, column: 6)
!3127 = !DILocation(line: 423, column: 44, scope: !3126)
!3128 = !DILocation(line: 423, column: 6, scope: !3113)
!3129 = !DILocation(line: 424, column: 3, scope: !3126)
!3130 = !DILocation(line: 426, column: 3, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3113, file: !26, line: 425, column: 6)
!3132 = !DILocation(line: 429, column: 1, scope: !3113)
!3133 = !DISubprogram(name: "__compiletime_assert_125", scope: !26, file: !26, line: 478, type: !1468, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3134 = !DISubprogram(name: "kfree", scope: !26, file: !26, line: 227, type: !3135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !720}
!3137 = distinct !DISubprogram(name: "cache_setup_properties", scope: !3, file: !3, line: 341, type: !2315, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3138)
!3138 = !{!3139, !3140}
!3139 = !DILocalVariable(name: "cpu", arg: 1, scope: !3137, file: !3, line: 341, type: !7)
!3140 = !DILocalVariable(name: "ret", scope: !3137, file: !3, line: 343, type: !37)
!3141 = !DILocation(line: 341, column: 48, scope: !3137)
!3142 = !DILocation(line: 343, column: 2, scope: !3137)
!3143 = !DILocation(line: 343, column: 6, scope: !3137)
!3144 = !DILocation(line: 345, column: 6, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 345, column: 6)
!3146 = !DILocation(line: 345, column: 6, scope: !3137)
!3147 = !DILocation(line: 346, column: 29, scope: !3145)
!3148 = !DILocation(line: 346, column: 9, scope: !3145)
!3149 = !DILocation(line: 346, column: 7, scope: !3145)
!3150 = !DILocation(line: 346, column: 3, scope: !3145)
!3151 = !DILocation(line: 347, column: 12, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 347, column: 11)
!3153 = !DILocation(line: 347, column: 11, scope: !3145)
!3154 = !DILocation(line: 348, column: 26, scope: !3152)
!3155 = !DILocation(line: 348, column: 9, scope: !3152)
!3156 = !DILocation(line: 348, column: 7, scope: !3152)
!3157 = !DILocation(line: 348, column: 3, scope: !3152)
!3158 = !DILocation(line: 351, column: 6, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 351, column: 6)
!3160 = !DILocation(line: 351, column: 10, scope: !3159)
!3161 = !DILocation(line: 351, column: 6, scope: !3137)
!3162 = !DILocation(line: 352, column: 17, scope: !3159)
!3163 = !DILocation(line: 352, column: 3, scope: !3159)
!3164 = !DILocation(line: 354, column: 9, scope: !3137)
!3165 = !DILocation(line: 355, column: 1, scope: !3137)
!3166 = !DILocation(line: 354, column: 2, scope: !3137)
!3167 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !319, file: !319, line: 469, type: !3168, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3171)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !7, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!3171 = !{!3172, !3173}
!3172 = !DILocalVariable(name: "cpu", arg: 1, scope: !3167, file: !319, line: 469, type: !7)
!3173 = !DILocalVariable(name: "dstp", arg: 2, scope: !3167, file: !319, line: 469, type: !3170)
!3174 = !DILocation(line: 469, column: 58, scope: !3167)
!3175 = !DILocation(line: 469, column: 79, scope: !3167)
!3176 = !DILocation(line: 471, column: 24, scope: !3167)
!3177 = !DILocation(line: 471, column: 10, scope: !3167)
!3178 = !DILocation(line: 471, column: 30, scope: !3167)
!3179 = !DILocation(line: 471, column: 2, scope: !3167)
!3180 = !DILocation(line: 472, column: 1, scope: !3167)
!3181 = distinct !DISubprogram(name: "find_next_bit", scope: !3182, file: !3182, line: 54, type: !3183, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3187)
!3182 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!324, !3185, !324, !324}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!3187 = !{!3188, !3189, !3190, !3191}
!3188 = !DILocalVariable(name: "addr", arg: 1, scope: !3181, file: !3182, line: 54, type: !3185)
!3189 = !DILocalVariable(name: "size", arg: 2, scope: !3181, file: !3182, line: 54, type: !324)
!3190 = !DILocalVariable(name: "offset", arg: 3, scope: !3181, file: !3182, line: 55, type: !324)
!3191 = !DILocalVariable(name: "val", scope: !3192, file: !3182, line: 58, type: !324)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !3182, line: 57, column: 31)
!3193 = distinct !DILexicalBlock(scope: !3181, file: !3182, line: 57, column: 6)
!3194 = !DILocation(line: 54, column: 50, scope: !3181)
!3195 = !DILocation(line: 54, column: 70, scope: !3181)
!3196 = !DILocation(line: 55, column: 22, scope: !3181)
!3197 = !DILocation(line: 57, column: 6, scope: !3193)
!3198 = !DILocation(line: 57, column: 6, scope: !3181)
!3199 = !DILocation(line: 58, column: 3, scope: !3192)
!3200 = !DILocation(line: 58, column: 17, scope: !3192)
!3201 = !DILocation(line: 60, column: 7, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3192, file: !3182, line: 60, column: 7)
!3203 = !DILocation(line: 60, column: 7, scope: !3192)
!3204 = !DILocation(line: 61, column: 11, scope: !3202)
!3205 = !DILocation(line: 61, column: 4, scope: !3202)
!3206 = !DILocation(line: 63, column: 10, scope: !3192)
!3207 = !DILocation(line: 63, column: 9, scope: !3192)
!3208 = !DILocation(line: 63, column: 17, scope: !3192)
!3209 = !DILocation(line: 63, column: 15, scope: !3192)
!3210 = !DILocation(line: 63, column: 7, scope: !3192)
!3211 = !DILocation(line: 64, column: 10, scope: !3192)
!3212 = !DILocation(line: 64, column: 16, scope: !3192)
!3213 = !DILocation(line: 64, column: 29, scope: !3192)
!3214 = !DILocation(line: 64, column: 3, scope: !3192)
!3215 = !DILocation(line: 65, column: 2, scope: !3193)
!3216 = !DILocation(line: 67, column: 24, scope: !3181)
!3217 = !DILocation(line: 67, column: 30, scope: !3181)
!3218 = !DILocation(line: 67, column: 36, scope: !3181)
!3219 = !DILocation(line: 67, column: 9, scope: !3181)
!3220 = !DILocation(line: 67, column: 2, scope: !3181)
!3221 = !DILocation(line: 68, column: 1, scope: !3181)
!3222 = distinct !DISubprogram(name: "of_have_populated_dt", scope: !1774, file: !1774, line: 552, type: !842, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3223 = !DILocation(line: 554, column: 2, scope: !3222)
!3224 = distinct !DISubprogram(name: "cache_setup_of_node", scope: !3, file: !3, line: 330, type: !2315, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3225)
!3225 = !{!3226}
!3226 = !DILocalVariable(name: "cpu", arg: 1, scope: !3224, file: !3, line: 330, type: !7)
!3227 = !DILocation(line: 330, column: 52, scope: !3224)
!3228 = !DILocation(line: 330, column: 59, scope: !3224)
!3229 = distinct !DISubprogram(name: "set_bit", scope: !3230, file: !3230, line: 26, type: !3231, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3235)
!3230 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !347, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !324)
!3235 = !{!3236, !3237}
!3236 = !DILocalVariable(name: "nr", arg: 1, scope: !3229, file: !3230, line: 26, type: !347)
!3237 = !DILocalVariable(name: "addr", arg: 2, scope: !3229, file: !3230, line: 26, type: !3233)
!3238 = !DILocation(line: 26, column: 42, scope: !3229)
!3239 = !DILocation(line: 26, column: 70, scope: !3229)
!3240 = !DILocation(line: 28, column: 26, scope: !3229)
!3241 = !DILocation(line: 28, column: 33, scope: !3229)
!3242 = !DILocation(line: 28, column: 31, scope: !3229)
!3243 = !DILocation(line: 28, column: 2, scope: !3229)
!3244 = !DILocation(line: 29, column: 15, scope: !3229)
!3245 = !DILocation(line: 29, column: 19, scope: !3229)
!3246 = !DILocation(line: 29, column: 2, scope: !3229)
!3247 = !DILocation(line: 30, column: 1, scope: !3229)
!3248 = distinct !DISubprogram(name: "cpumask_check", scope: !319, file: !319, line: 148, type: !3249, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!7, !7}
!3251 = !{!3252}
!3252 = !DILocalVariable(name: "cpu", arg: 1, scope: !3248, file: !319, line: 148, type: !7)
!3253 = !DILocation(line: 148, column: 64, scope: !3248)
!3254 = !DILocation(line: 150, column: 20, scope: !3248)
!3255 = !DILocation(line: 150, column: 2, scope: !3248)
!3256 = !DILocation(line: 151, column: 9, scope: !3248)
!3257 = !DILocation(line: 151, column: 2, scope: !3248)
!3258 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3259, file: !3259, line: 80, type: !3260, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3259 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !3262, !489}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3265 = !{!3266, !3267}
!3266 = !DILocalVariable(name: "v", arg: 1, scope: !3258, file: !3259, line: 80, type: !3262)
!3267 = !DILocalVariable(name: "size", arg: 2, scope: !3258, file: !3259, line: 80, type: !489)
!3268 = !DILocation(line: 80, column: 74, scope: !3258)
!3269 = !DILocation(line: 80, column: 84, scope: !3258)
!3270 = !DILocation(line: 82, column: 20, scope: !3258)
!3271 = !DILocation(line: 82, column: 23, scope: !3258)
!3272 = !DILocation(line: 82, column: 2, scope: !3258)
!3273 = !DILocation(line: 83, column: 2, scope: !3258)
!3274 = !DILocation(line: 84, column: 1, scope: !3258)
!3275 = distinct !DISubprogram(name: "arch_set_bit", scope: !3276, file: !3276, line: 52, type: !3231, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3277)
!3276 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3277 = !{!3278, !3279}
!3278 = !DILocalVariable(name: "nr", arg: 1, scope: !3275, file: !3276, line: 52, type: !347)
!3279 = !DILocalVariable(name: "addr", arg: 2, scope: !3275, file: !3276, line: 52, type: !3233)
!3280 = !DILocation(line: 52, column: 19, scope: !3275)
!3281 = !DILocation(line: 52, column: 47, scope: !3275)
!3282 = !DILocation(line: 54, column: 27, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3275, file: !3276, line: 54, column: 6)
!3284 = !DILocation(line: 54, column: 6, scope: !3283)
!3285 = !DILocation(line: 54, column: 6, scope: !3275)
!3286 = !DILocation(line: 56, column: 6, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3283, file: !3276, line: 54, column: 32)
!3288 = !DILocation(line: 57, column: 12, scope: !3287)
!3289 = !DILocation(line: 55, column: 3, scope: !3287)
!3290 = !{i64 2148207527, i64 2148207566, i64 2148207587, i64 2148207624, i64 2148207647, i64 2148207517}
!3291 = !DILocation(line: 59, column: 2, scope: !3287)
!3292 = !DILocation(line: 61, column: 8, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3283, file: !3276, line: 59, column: 9)
!3294 = !DILocation(line: 61, column: 32, scope: !3293)
!3295 = !DILocation(line: 60, column: 3, scope: !3293)
!3296 = !{i64 2148207812, i64 2148207851, i64 2148207872, i64 2148207909, i64 2148207932, i64 2148207802}
!3297 = !DILocation(line: 63, column: 1, scope: !3275)
!3298 = distinct !DISubprogram(name: "kasan_check_write", scope: !3299, file: !3299, line: 44, type: !3300, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3302)
!3299 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!331, !3262, !7}
!3302 = !{!3303, !3304}
!3303 = !DILocalVariable(name: "p", arg: 1, scope: !3298, file: !3299, line: 44, type: !3262)
!3304 = !DILocalVariable(name: "size", arg: 2, scope: !3298, file: !3299, line: 44, type: !7)
!3305 = !DILocation(line: 44, column: 59, scope: !3298)
!3306 = !DILocation(line: 44, column: 75, scope: !3298)
!3307 = !DILocation(line: 46, column: 2, scope: !3298)
!3308 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3309, file: !3309, line: 229, type: !3310, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3312)
!3309 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !3262, !489, !37}
!3312 = !{!3313, !3314, !3315}
!3313 = !DILocalVariable(name: "ptr", arg: 1, scope: !3308, file: !3309, line: 229, type: !3262)
!3314 = !DILocalVariable(name: "size", arg: 2, scope: !3308, file: !3309, line: 229, type: !489)
!3315 = !DILocalVariable(name: "type", arg: 3, scope: !3308, file: !3309, line: 230, type: !37)
!3316 = !DILocation(line: 229, column: 60, scope: !3308)
!3317 = !DILocation(line: 229, column: 72, scope: !3308)
!3318 = !DILocation(line: 230, column: 15, scope: !3308)
!3319 = !DILocation(line: 230, column: 23, scope: !3308)
!3320 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !319, file: !319, line: 140, type: !3321, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !7, !7}
!3323 = !{!3324, !3325}
!3324 = !DILocalVariable(name: "cpu", arg: 1, scope: !3320, file: !319, line: 140, type: !7)
!3325 = !DILocalVariable(name: "bits", arg: 2, scope: !3320, file: !319, line: 140, type: !7)
!3326 = !DILocation(line: 140, column: 60, scope: !3320)
!3327 = !DILocation(line: 140, column: 78, scope: !3320)
!3328 = !DILocation(line: 145, column: 1, scope: !3320)
!3329 = distinct !DISubprogram(name: "variable__ffs", scope: !3276, file: !3276, line: 250, type: !3330, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!324, !324}
!3332 = !{!3333}
!3333 = !DILocalVariable(name: "word", arg: 1, scope: !3329, file: !3276, line: 250, type: !324)
!3334 = !DILocation(line: 250, column: 66, scope: !3329)
!3335 = !DILocation(line: 254, column: 11, scope: !3329)
!3336 = !DILocation(line: 252, column: 2, scope: !3329)
!3337 = !{i64 719061}
!3338 = !DILocation(line: 255, column: 9, scope: !3329)
!3339 = !DILocation(line: 255, column: 2, scope: !3329)
!3340 = !DISubprogram(name: "_find_next_bit", scope: !3182, file: !3182, line: 11, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3341 = distinct !DISubprogram(name: "cache_shared_cpu_map_remove", scope: !3, file: !3, line: 418, type: !2827, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3342)
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3355, !3357, !3361, !3363, !3367, !3372, !3374, !3378}
!3343 = !DILocalVariable(name: "cpu", arg: 1, scope: !3341, file: !3, line: 418, type: !7)
!3344 = !DILocalVariable(name: "this_cpu_ci", scope: !3341, file: !3, line: 420, type: !302)
!3345 = !DILocalVariable(name: "this_leaf", scope: !3341, file: !3, line: 421, type: !306)
!3346 = !DILocalVariable(name: "sib_leaf", scope: !3341, file: !3, line: 421, type: !306)
!3347 = !DILocalVariable(name: "sibling", scope: !3341, file: !3, line: 422, type: !7)
!3348 = !DILocalVariable(name: "index", scope: !3341, file: !3, line: 422, type: !7)
!3349 = !DILocalVariable(name: "sib_index", scope: !3341, file: !3, line: 422, type: !7)
!3350 = !DILocalVariable(name: "__vpp_verify", scope: !3351, file: !3, line: 424, type: !720)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 424, column: 26)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 424, column: 26)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 424, column: 2)
!3354 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 424, column: 2)
!3355 = !DILocalVariable(name: "__ptr", scope: !3356, file: !3, line: 424, type: !324)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 424, column: 26)
!3357 = !DILocalVariable(name: "__vpp_verify", scope: !3358, file: !3, line: 425, type: !720)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 425, column: 15)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 425, column: 15)
!3360 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 424, column: 54)
!3361 = !DILocalVariable(name: "__ptr", scope: !3362, file: !3, line: 425, type: !324)
!3362 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 425, column: 15)
!3363 = !DILocalVariable(name: "sib_cpu_ci", scope: !3364, file: !3, line: 427, type: !302)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 426, column: 53)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 426, column: 3)
!3366 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 426, column: 3)
!3367 = !DILocalVariable(name: "__vpp_verify", scope: !3368, file: !3, line: 433, type: !720)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 433, column: 36)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 433, column: 36)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 433, column: 4)
!3371 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 433, column: 4)
!3372 = !DILocalVariable(name: "__ptr", scope: !3373, file: !3, line: 433, type: !324)
!3373 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 433, column: 36)
!3374 = !DILocalVariable(name: "__vpp_verify", scope: !3375, file: !3, line: 434, type: !720)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 434, column: 16)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 434, column: 16)
!3377 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 433, column: 72)
!3378 = !DILocalVariable(name: "__ptr", scope: !3379, file: !3, line: 434, type: !324)
!3379 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 434, column: 16)
!3380 = !DILocation(line: 418, column: 54, scope: !3341)
!3381 = !DILocation(line: 420, column: 2, scope: !3341)
!3382 = !DILocation(line: 420, column: 24, scope: !3341)
!3383 = !DILocation(line: 420, column: 56, scope: !3341)
!3384 = !DILocation(line: 420, column: 38, scope: !3341)
!3385 = !DILocation(line: 421, column: 2, scope: !3341)
!3386 = !DILocation(line: 421, column: 20, scope: !3341)
!3387 = !DILocation(line: 421, column: 32, scope: !3341)
!3388 = !DILocation(line: 422, column: 2, scope: !3341)
!3389 = !DILocation(line: 422, column: 15, scope: !3341)
!3390 = !DILocation(line: 422, column: 24, scope: !3341)
!3391 = !DILocation(line: 422, column: 31, scope: !3341)
!3392 = !DILocation(line: 424, column: 13, scope: !3354)
!3393 = !DILocation(line: 424, column: 7, scope: !3354)
!3394 = !DILocation(line: 424, column: 18, scope: !3353)
!3395 = !DILocation(line: 424, column: 26, scope: !3352)
!3396 = !DILocation(line: 424, column: 26, scope: !3351)
!3397 = !DILocation(line: 424, column: 26, scope: !3356)
!3398 = !DILocation(line: 424, column: 26, scope: !3353)
!3399 = !DILocation(line: 424, column: 24, scope: !3353)
!3400 = !DILocation(line: 424, column: 2, scope: !3354)
!3401 = !DILocation(line: 425, column: 15, scope: !3359)
!3402 = !DILocation(line: 425, column: 15, scope: !3358)
!3403 = !DILocation(line: 425, column: 15, scope: !3362)
!3404 = !DILocation(line: 425, column: 15, scope: !3360)
!3405 = !DILocation(line: 425, column: 13, scope: !3360)
!3406 = !DILocation(line: 426, column: 3, scope: !3366)
!3407 = !DILocation(line: 426, column: 3, scope: !3365)
!3408 = !DILocation(line: 427, column: 4, scope: !3364)
!3409 = !DILocation(line: 427, column: 26, scope: !3364)
!3410 = !DILocation(line: 428, column: 25, scope: !3364)
!3411 = !DILocation(line: 428, column: 7, scope: !3364)
!3412 = !DILocation(line: 430, column: 8, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 430, column: 8)
!3414 = !DILocation(line: 430, column: 19, scope: !3413)
!3415 = !DILocation(line: 430, column: 16, scope: !3413)
!3416 = !DILocation(line: 430, column: 23, scope: !3413)
!3417 = !DILocation(line: 430, column: 27, scope: !3413)
!3418 = !DILocation(line: 430, column: 39, scope: !3413)
!3419 = !DILocation(line: 430, column: 8, scope: !3364)
!3420 = !DILocation(line: 431, column: 5, scope: !3413)
!3421 = !DILocation(line: 433, column: 19, scope: !3371)
!3422 = !DILocation(line: 433, column: 9, scope: !3371)
!3423 = !DILocation(line: 433, column: 24, scope: !3370)
!3424 = !DILocation(line: 433, column: 36, scope: !3369)
!3425 = !DILocation(line: 433, column: 36, scope: !3368)
!3426 = !DILocation(line: 433, column: 36, scope: !3373)
!3427 = !DILocation(line: 433, column: 36, scope: !3370)
!3428 = !DILocation(line: 433, column: 34, scope: !3370)
!3429 = !DILocation(line: 433, column: 4, scope: !3371)
!3430 = !DILocation(line: 434, column: 16, scope: !3376)
!3431 = !DILocation(line: 434, column: 16, scope: !3375)
!3432 = !DILocation(line: 434, column: 16, scope: !3379)
!3433 = !DILocation(line: 434, column: 16, scope: !3377)
!3434 = !DILocation(line: 434, column: 14, scope: !3377)
!3435 = !DILocation(line: 441, column: 9, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 441, column: 9)
!3437 = !DILocation(line: 441, column: 19, scope: !3436)
!3438 = !DILocation(line: 441, column: 28, scope: !3436)
!3439 = !DILocation(line: 441, column: 39, scope: !3436)
!3440 = !DILocation(line: 441, column: 25, scope: !3436)
!3441 = !DILocation(line: 441, column: 45, scope: !3436)
!3442 = !DILocation(line: 442, column: 9, scope: !3436)
!3443 = !DILocation(line: 442, column: 19, scope: !3436)
!3444 = !DILocation(line: 442, column: 27, scope: !3436)
!3445 = !DILocation(line: 442, column: 38, scope: !3436)
!3446 = !DILocation(line: 442, column: 24, scope: !3436)
!3447 = !DILocation(line: 441, column: 9, scope: !3377)
!3448 = !DILocation(line: 443, column: 6, scope: !3436)
!3449 = !DILocation(line: 445, column: 33, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 445, column: 9)
!3451 = !DILocation(line: 445, column: 44, scope: !3450)
!3452 = !DILocation(line: 445, column: 9, scope: !3450)
!3453 = !DILocation(line: 445, column: 9, scope: !3377)
!3454 = !DILocation(line: 446, column: 24, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 445, column: 55)
!3456 = !DILocation(line: 446, column: 30, scope: !3455)
!3457 = !DILocation(line: 446, column: 40, scope: !3455)
!3458 = !DILocation(line: 446, column: 6, scope: !3455)
!3459 = !DILocation(line: 447, column: 24, scope: !3455)
!3460 = !DILocation(line: 447, column: 34, scope: !3455)
!3461 = !DILocation(line: 447, column: 45, scope: !3455)
!3462 = !DILocation(line: 447, column: 6, scope: !3455)
!3463 = !DILocation(line: 448, column: 6, scope: !3455)
!3464 = !DILocation(line: 450, column: 4, scope: !3377)
!3465 = !DILocation(line: 433, column: 68, scope: !3370)
!3466 = !DILocation(line: 433, column: 4, scope: !3370)
!3467 = distinct !{!3467, !3429, !3468, !2795, !2796}
!3468 = !DILocation(line: 450, column: 4, scope: !3371)
!3469 = !DILocation(line: 451, column: 3, scope: !3365)
!3470 = !DILocation(line: 451, column: 3, scope: !3364)
!3471 = distinct !{!3471, !3406, !3472, !2795, !2796}
!3472 = !DILocation(line: 451, column: 3, scope: !3366)
!3473 = !DILocation(line: 452, column: 2, scope: !3360)
!3474 = !DILocation(line: 424, column: 50, scope: !3353)
!3475 = !DILocation(line: 424, column: 2, scope: !3353)
!3476 = distinct !{!3476, !3400, !3477, !2795, !2796}
!3477 = !DILocation(line: 452, column: 2, scope: !3354)
!3478 = !DILocation(line: 455, column: 2, scope: !3341)
!3479 = !DILocation(line: 455, column: 15, scope: !3341)
!3480 = !DILocation(line: 455, column: 33, scope: !3341)
!3481 = !DILocation(line: 456, column: 1, scope: !3341)
!3482 = distinct !DISubprogram(name: "cpumask_clear_cpu", scope: !319, file: !319, line: 485, type: !3483, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !37, !3170}
!3485 = !{!3486, !3487}
!3486 = !DILocalVariable(name: "cpu", arg: 1, scope: !3482, file: !319, line: 485, type: !37)
!3487 = !DILocalVariable(name: "dstp", arg: 2, scope: !3482, file: !319, line: 485, type: !3170)
!3488 = !DILocation(line: 485, column: 51, scope: !3482)
!3489 = !DILocation(line: 485, column: 72, scope: !3482)
!3490 = !DILocation(line: 487, column: 26, scope: !3482)
!3491 = !DILocation(line: 487, column: 12, scope: !3482)
!3492 = !DILocation(line: 487, column: 32, scope: !3482)
!3493 = !DILocation(line: 487, column: 2, scope: !3482)
!3494 = !DILocation(line: 488, column: 1, scope: !3482)
!3495 = distinct !DISubprogram(name: "clear_bit", scope: !3230, file: !3230, line: 39, type: !3231, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3496)
!3496 = !{!3497, !3498}
!3497 = !DILocalVariable(name: "nr", arg: 1, scope: !3495, file: !3230, line: 39, type: !347)
!3498 = !DILocalVariable(name: "addr", arg: 2, scope: !3495, file: !3230, line: 39, type: !3233)
!3499 = !DILocation(line: 39, column: 44, scope: !3495)
!3500 = !DILocation(line: 39, column: 72, scope: !3495)
!3501 = !DILocation(line: 41, column: 26, scope: !3495)
!3502 = !DILocation(line: 41, column: 33, scope: !3495)
!3503 = !DILocation(line: 41, column: 31, scope: !3495)
!3504 = !DILocation(line: 41, column: 2, scope: !3495)
!3505 = !DILocation(line: 42, column: 17, scope: !3495)
!3506 = !DILocation(line: 42, column: 21, scope: !3495)
!3507 = !DILocation(line: 42, column: 2, scope: !3495)
!3508 = !DILocation(line: 43, column: 1, scope: !3495)
!3509 = distinct !DISubprogram(name: "arch_clear_bit", scope: !3276, file: !3276, line: 72, type: !3231, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3510)
!3510 = !{!3511, !3512}
!3511 = !DILocalVariable(name: "nr", arg: 1, scope: !3509, file: !3276, line: 72, type: !347)
!3512 = !DILocalVariable(name: "addr", arg: 2, scope: !3509, file: !3276, line: 72, type: !3233)
!3513 = !DILocation(line: 72, column: 21, scope: !3509)
!3514 = !DILocation(line: 72, column: 49, scope: !3509)
!3515 = !DILocation(line: 74, column: 27, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3509, file: !3276, line: 74, column: 6)
!3517 = !DILocation(line: 74, column: 6, scope: !3516)
!3518 = !DILocation(line: 74, column: 6, scope: !3509)
!3519 = !DILocation(line: 76, column: 6, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !3276, line: 74, column: 32)
!3521 = !DILocation(line: 77, column: 13, scope: !3520)
!3522 = !DILocation(line: 77, column: 12, scope: !3520)
!3523 = !DILocation(line: 75, column: 3, scope: !3520)
!3524 = !{i64 2148208815, i64 2148208854, i64 2148208875, i64 2148208912, i64 2148208935, i64 2148208805}
!3525 = !DILocation(line: 78, column: 2, scope: !3520)
!3526 = !DILocation(line: 80, column: 8, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3516, file: !3276, line: 78, column: 9)
!3528 = !DILocation(line: 80, column: 32, scope: !3527)
!3529 = !DILocation(line: 79, column: 3, scope: !3527)
!3530 = !{i64 2148209100, i64 2148209139, i64 2148209160, i64 2148209197, i64 2148209220, i64 2148209090}
!3531 = !DILocation(line: 82, column: 1, scope: !3509)
!3532 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !36, file: !36, line: 283, type: !3533, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3536)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!37, !35, !357, !3535, !3535}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!3536 = !{!3537, !3538, !3539, !3540}
!3537 = !DILocalVariable(name: "state", arg: 1, scope: !3532, file: !36, line: 283, type: !35)
!3538 = !DILocalVariable(name: "name", arg: 2, scope: !3532, file: !36, line: 284, type: !357)
!3539 = !DILocalVariable(name: "startup", arg: 3, scope: !3532, file: !36, line: 285, type: !3535)
!3540 = !DILocalVariable(name: "teardown", arg: 4, scope: !3532, file: !36, line: 286, type: !3535)
!3541 = !DILocation(line: 283, column: 54, scope: !3532)
!3542 = !DILocation(line: 284, column: 21, scope: !3532)
!3543 = !DILocation(line: 285, column: 15, scope: !3532)
!3544 = !DILocation(line: 286, column: 15, scope: !3532)
!3545 = !DILocation(line: 288, column: 29, scope: !3532)
!3546 = !DILocation(line: 288, column: 36, scope: !3532)
!3547 = !DILocation(line: 288, column: 48, scope: !3532)
!3548 = !DILocation(line: 288, column: 57, scope: !3532)
!3549 = !DILocation(line: 288, column: 9, scope: !3532)
!3550 = !DILocation(line: 288, column: 2, scope: !3532)
!3551 = distinct !DISubprogram(name: "cacheinfo_cpu_online", scope: !3, file: !3, line: 903, type: !2315, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3552)
!3552 = !{!3553, !3554}
!3553 = !DILocalVariable(name: "cpu", arg: 1, scope: !3551, file: !3, line: 903, type: !7)
!3554 = !DILocalVariable(name: "rc", scope: !3551, file: !3, line: 905, type: !37)
!3555 = !DILocation(line: 903, column: 46, scope: !3551)
!3556 = !DILocation(line: 905, column: 2, scope: !3551)
!3557 = !DILocation(line: 905, column: 6, scope: !3551)
!3558 = !DILocation(line: 905, column: 35, scope: !3551)
!3559 = !DILocation(line: 905, column: 11, scope: !3551)
!3560 = !DILocation(line: 907, column: 6, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 907, column: 6)
!3562 = !DILocation(line: 907, column: 6, scope: !3551)
!3563 = !DILocation(line: 908, column: 10, scope: !3561)
!3564 = !DILocation(line: 908, column: 3, scope: !3561)
!3565 = !DILocation(line: 909, column: 21, scope: !3551)
!3566 = !DILocation(line: 909, column: 7, scope: !3551)
!3567 = !DILocation(line: 909, column: 5, scope: !3551)
!3568 = !DILocation(line: 910, column: 6, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 910, column: 6)
!3570 = !DILocation(line: 910, column: 6, scope: !3551)
!3571 = !DILocation(line: 911, column: 25, scope: !3569)
!3572 = !DILocation(line: 911, column: 3, scope: !3569)
!3573 = !DILocation(line: 912, column: 9, scope: !3551)
!3574 = !DILocation(line: 912, column: 2, scope: !3551)
!3575 = !DILocation(line: 913, column: 1, scope: !3551)
!3576 = distinct !DISubprogram(name: "cacheinfo_cpu_pre_down", scope: !3, file: !3, line: 915, type: !2315, scopeLine: 916, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3577)
!3577 = !{!3578}
!3578 = !DILocalVariable(name: "cpu", arg: 1, scope: !3576, file: !3, line: 915, type: !7)
!3579 = !DILocation(line: 915, column: 48, scope: !3576)
!3580 = !DILocation(line: 917, column: 33, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 917, column: 6)
!3582 = !DILocation(line: 917, column: 6, scope: !3581)
!3583 = !DILocation(line: 917, column: 6, scope: !3576)
!3584 = !DILocation(line: 918, column: 24, scope: !3581)
!3585 = !DILocation(line: 918, column: 3, scope: !3581)
!3586 = !DILocation(line: 920, column: 24, scope: !3576)
!3587 = !DILocation(line: 920, column: 2, scope: !3576)
!3588 = !DILocation(line: 921, column: 2, scope: !3576)
!3589 = !DISubprogram(name: "__cpuhp_setup_state", scope: !36, file: !36, line: 263, type: !3590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!37, !35, !357, !331, !3535, !3535, !331}
!3592 = distinct !DISubprogram(name: "cache_add_dev", scope: !3, file: !3, line: 867, type: !2315, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3593)
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3604, !3606, !3611, !3613, !3617, !3619, !3622, !3624}
!3594 = !DILocalVariable(name: "cpu", arg: 1, scope: !3592, file: !3, line: 867, type: !7)
!3595 = !DILocalVariable(name: "i", scope: !3592, file: !3, line: 869, type: !7)
!3596 = !DILocalVariable(name: "rc", scope: !3592, file: !3, line: 870, type: !37)
!3597 = !DILocalVariable(name: "ci_dev", scope: !3592, file: !3, line: 871, type: !349)
!3598 = !DILocalVariable(name: "parent", scope: !3592, file: !3, line: 871, type: !349)
!3599 = !DILocalVariable(name: "this_leaf", scope: !3592, file: !3, line: 872, type: !306)
!3600 = !DILocalVariable(name: "cache_groups", scope: !3592, file: !3, line: 873, type: !493)
!3601 = !DILocalVariable(name: "__vpp_verify", scope: !3602, file: !3, line: 879, type: !720)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 879, column: 11)
!3603 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 879, column: 11)
!3604 = !DILocalVariable(name: "__ptr", scope: !3605, file: !3, line: 879, type: !324)
!3605 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 879, column: 11)
!3606 = !DILocalVariable(name: "__vpp_verify", scope: !3607, file: !3, line: 880, type: !720)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 880, column: 18)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 880, column: 18)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 880, column: 2)
!3610 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 880, column: 2)
!3611 = !DILocalVariable(name: "__ptr", scope: !3612, file: !3, line: 880, type: !324)
!3612 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 880, column: 18)
!3613 = !DILocalVariable(name: "__vpp_verify", scope: !3614, file: !3, line: 881, type: !720)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 881, column: 15)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 881, column: 15)
!3616 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 880, column: 42)
!3617 = !DILocalVariable(name: "__ptr", scope: !3618, file: !3, line: 881, type: !324)
!3618 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 881, column: 15)
!3619 = !DILocalVariable(name: "__vpp_verify", scope: !3620, file: !3, line: 893, type: !720)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 893, column: 3)
!3621 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 893, column: 3)
!3622 = !DILocalVariable(name: "__ptr", scope: !3623, file: !3, line: 893, type: !324)
!3623 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 893, column: 3)
!3624 = !DILabel(scope: !3592, name: "err", file: !3, line: 898)
!3625 = !DILocation(line: 867, column: 39, scope: !3592)
!3626 = !DILocation(line: 869, column: 2, scope: !3592)
!3627 = !DILocation(line: 869, column: 15, scope: !3592)
!3628 = !DILocation(line: 870, column: 2, scope: !3592)
!3629 = !DILocation(line: 870, column: 6, scope: !3592)
!3630 = !DILocation(line: 871, column: 2, scope: !3592)
!3631 = !DILocation(line: 871, column: 17, scope: !3592)
!3632 = !DILocation(line: 871, column: 26, scope: !3592)
!3633 = !DILocation(line: 872, column: 2, scope: !3592)
!3634 = !DILocation(line: 872, column: 20, scope: !3592)
!3635 = !DILocation(line: 873, column: 2, scope: !3592)
!3636 = !DILocation(line: 873, column: 33, scope: !3592)
!3637 = !DILocation(line: 875, column: 28, scope: !3592)
!3638 = !DILocation(line: 875, column: 7, scope: !3592)
!3639 = !DILocation(line: 875, column: 5, scope: !3592)
!3640 = !DILocation(line: 876, column: 6, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 876, column: 6)
!3642 = !DILocation(line: 876, column: 6, scope: !3592)
!3643 = !DILocation(line: 877, column: 10, scope: !3641)
!3644 = !DILocation(line: 877, column: 3, scope: !3641)
!3645 = !DILocation(line: 879, column: 11, scope: !3603)
!3646 = !DILocation(line: 879, column: 11, scope: !3602)
!3647 = !DILocation(line: 879, column: 11, scope: !3605)
!3648 = !DILocation(line: 879, column: 11, scope: !3592)
!3649 = !DILocation(line: 879, column: 9, scope: !3592)
!3650 = !DILocation(line: 880, column: 9, scope: !3610)
!3651 = !DILocation(line: 880, column: 7, scope: !3610)
!3652 = !DILocation(line: 880, column: 14, scope: !3609)
!3653 = !DILocation(line: 880, column: 18, scope: !3608)
!3654 = !DILocation(line: 880, column: 18, scope: !3607)
!3655 = !DILocation(line: 880, column: 18, scope: !3612)
!3656 = !DILocation(line: 880, column: 18, scope: !3609)
!3657 = !DILocation(line: 880, column: 16, scope: !3609)
!3658 = !DILocation(line: 880, column: 2, scope: !3610)
!3659 = !DILocation(line: 881, column: 15, scope: !3615)
!3660 = !DILocation(line: 881, column: 15, scope: !3614)
!3661 = !DILocation(line: 881, column: 15, scope: !3618)
!3662 = !DILocation(line: 881, column: 15, scope: !3616)
!3663 = !DILocation(line: 881, column: 13, scope: !3616)
!3664 = !DILocation(line: 882, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 882, column: 7)
!3666 = !DILocation(line: 882, column: 18, scope: !3665)
!3667 = !DILocation(line: 882, column: 7, scope: !3616)
!3668 = !DILocation(line: 883, column: 4, scope: !3665)
!3669 = !DILocation(line: 884, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 884, column: 7)
!3671 = !DILocation(line: 884, column: 18, scope: !3670)
!3672 = !DILocation(line: 884, column: 23, scope: !3670)
!3673 = !DILocation(line: 884, column: 7, scope: !3616)
!3674 = !DILocation(line: 885, column: 4, scope: !3670)
!3675 = !DILocation(line: 886, column: 45, scope: !3616)
!3676 = !DILocation(line: 886, column: 18, scope: !3616)
!3677 = !DILocation(line: 886, column: 16, scope: !3616)
!3678 = !DILocation(line: 887, column: 30, scope: !3616)
!3679 = !DILocation(line: 887, column: 38, scope: !3616)
!3680 = !DILocation(line: 887, column: 49, scope: !3616)
!3681 = !DILocation(line: 888, column: 21, scope: !3616)
!3682 = !DILocation(line: 887, column: 12, scope: !3616)
!3683 = !DILocation(line: 887, column: 10, scope: !3616)
!3684 = !DILocation(line: 889, column: 14, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 889, column: 7)
!3686 = !DILocation(line: 889, column: 7, scope: !3685)
!3687 = !DILocation(line: 889, column: 7, scope: !3616)
!3688 = !DILocation(line: 890, column: 17, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 889, column: 23)
!3690 = !DILocation(line: 890, column: 9, scope: !3689)
!3691 = !DILocation(line: 890, column: 7, scope: !3689)
!3692 = !DILocation(line: 891, column: 4, scope: !3689)
!3693 = !DILocation(line: 893, column: 33, scope: !3616)
!3694 = !DILocation(line: 893, column: 3, scope: !3621)
!3695 = !DILocation(line: 893, column: 3, scope: !3620)
!3696 = !DILocation(line: 893, column: 3, scope: !3623)
!3697 = !DILocation(line: 893, column: 3, scope: !3616)
!3698 = !DILocation(line: 893, column: 31, scope: !3616)
!3699 = !DILocation(line: 894, column: 2, scope: !3616)
!3700 = !DILocation(line: 880, column: 38, scope: !3609)
!3701 = !DILocation(line: 880, column: 2, scope: !3609)
!3702 = distinct !{!3702, !3658, !3703, !2795, !2796}
!3703 = !DILocation(line: 894, column: 2, scope: !3610)
!3704 = !DILocation(line: 895, column: 18, scope: !3592)
!3705 = !DILocation(line: 895, column: 2, scope: !3592)
!3706 = !DILocation(line: 897, column: 2, scope: !3592)
!3707 = !DILocation(line: 898, column: 1, scope: !3592)
!3708 = !DILocation(line: 899, column: 23, scope: !3592)
!3709 = !DILocation(line: 899, column: 2, scope: !3592)
!3710 = !DILocation(line: 900, column: 9, scope: !3592)
!3711 = !DILocation(line: 900, column: 2, scope: !3592)
!3712 = !DILocation(line: 901, column: 1, scope: !3592)
!3713 = distinct !DISubprogram(name: "cpu_cache_sysfs_init", scope: !3, file: !3, line: 843, type: !2315, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3714)
!3714 = !{!3715, !3716, !3717, !3721, !3723, !3726, !3728, !3732, !3734, !3737, !3739, !3742, !3744, !3747, !3749, !3753, !3755}
!3715 = !DILocalVariable(name: "cpu", arg: 1, scope: !3713, file: !3, line: 843, type: !7)
!3716 = !DILocalVariable(name: "dev", scope: !3713, file: !3, line: 845, type: !349)
!3717 = !DILocalVariable(name: "__vpp_verify", scope: !3718, file: !3, line: 847, type: !720)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 847, column: 6)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 847, column: 6)
!3720 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 847, column: 6)
!3721 = !DILocalVariable(name: "__ptr", scope: !3722, file: !3, line: 847, type: !324)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 847, column: 6)
!3723 = !DILocalVariable(name: "__vpp_verify", scope: !3724, file: !3, line: 850, type: !720)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 850, column: 2)
!3725 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 850, column: 2)
!3726 = !DILocalVariable(name: "__ptr", scope: !3727, file: !3, line: 850, type: !324)
!3727 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 850, column: 2)
!3728 = !DILocalVariable(name: "__vpp_verify", scope: !3729, file: !3, line: 851, type: !720)
!3729 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 851, column: 13)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 851, column: 13)
!3731 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 851, column: 6)
!3732 = !DILocalVariable(name: "__ptr", scope: !3733, file: !3, line: 851, type: !324)
!3733 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 851, column: 13)
!3734 = !DILocalVariable(name: "__vpp_verify", scope: !3735, file: !3, line: 852, type: !720)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 852, column: 18)
!3736 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 852, column: 18)
!3737 = !DILocalVariable(name: "__ptr", scope: !3738, file: !3, line: 852, type: !324)
!3738 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 852, column: 18)
!3739 = !DILocalVariable(name: "__vpp_verify", scope: !3740, file: !3, line: 855, type: !720)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 855, column: 35)
!3741 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 855, column: 35)
!3742 = !DILocalVariable(name: "__ptr", scope: !3743, file: !3, line: 855, type: !324)
!3743 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 855, column: 35)
!3744 = !DILocalVariable(name: "__vpp_verify", scope: !3745, file: !3, line: 855, type: !720)
!3745 = distinct !DILexicalBlock(scope: !3746, file: !3, line: 855, column: 2)
!3746 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 855, column: 2)
!3747 = !DILocalVariable(name: "__ptr", scope: !3748, file: !3, line: 855, type: !324)
!3748 = distinct !DILexicalBlock(scope: !3746, file: !3, line: 855, column: 2)
!3749 = !DILocalVariable(name: "__vpp_verify", scope: !3750, file: !3, line: 857, type: !720)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 857, column: 6)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 857, column: 6)
!3752 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 857, column: 6)
!3753 = !DILocalVariable(name: "__ptr", scope: !3754, file: !3, line: 857, type: !324)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 857, column: 6)
!3755 = !DILabel(scope: !3713, name: "err_out", file: !3, line: 862)
!3756 = !DILocation(line: 843, column: 46, scope: !3713)
!3757 = !DILocation(line: 845, column: 2, scope: !3713)
!3758 = !DILocation(line: 845, column: 17, scope: !3713)
!3759 = !DILocation(line: 845, column: 38, scope: !3713)
!3760 = !DILocation(line: 845, column: 23, scope: !3713)
!3761 = !DILocation(line: 847, column: 6, scope: !3719)
!3762 = !DILocation(line: 847, column: 6, scope: !3718)
!3763 = !DILocation(line: 847, column: 6, scope: !3722)
!3764 = !DILocation(line: 847, column: 6, scope: !3720)
!3765 = !DILocation(line: 847, column: 29, scope: !3720)
!3766 = !DILocation(line: 847, column: 6, scope: !3713)
!3767 = !DILocation(line: 848, column: 3, scope: !3720)
!3768 = !DILocation(line: 850, column: 45, scope: !3713)
!3769 = !DILocation(line: 850, column: 27, scope: !3713)
!3770 = !DILocation(line: 850, column: 2, scope: !3725)
!3771 = !DILocation(line: 850, column: 2, scope: !3724)
!3772 = !DILocation(line: 850, column: 2, scope: !3727)
!3773 = !DILocation(line: 850, column: 25, scope: !3713)
!3774 = !DILocation(line: 851, column: 13, scope: !3730)
!3775 = !DILocation(line: 851, column: 13, scope: !3729)
!3776 = !DILocation(line: 851, column: 13, scope: !3733)
!3777 = !DILocation(line: 851, column: 13, scope: !3731)
!3778 = !DILocation(line: 851, column: 6, scope: !3731)
!3779 = !DILocation(line: 851, column: 6, scope: !3713)
!3780 = !DILocation(line: 852, column: 18, scope: !3736)
!3781 = !DILocation(line: 852, column: 18, scope: !3735)
!3782 = !DILocation(line: 852, column: 18, scope: !3738)
!3783 = !DILocation(line: 852, column: 18, scope: !3731)
!3784 = !DILocation(line: 852, column: 10, scope: !3731)
!3785 = !DILocation(line: 852, column: 3, scope: !3731)
!3786 = !DILocation(line: 855, column: 35, scope: !3741)
!3787 = !DILocation(line: 855, column: 35, scope: !3740)
!3788 = !DILocation(line: 855, column: 35, scope: !3743)
!3789 = !DILocation(line: 855, column: 35, scope: !3713)
!3790 = !DILocation(line: 855, column: 27, scope: !3713)
!3791 = !DILocation(line: 855, column: 2, scope: !3746)
!3792 = !DILocation(line: 855, column: 2, scope: !3745)
!3793 = !DILocation(line: 855, column: 2, scope: !3748)
!3794 = !DILocation(line: 855, column: 25, scope: !3713)
!3795 = !DILocation(line: 857, column: 6, scope: !3751)
!3796 = !DILocation(line: 857, column: 6, scope: !3750)
!3797 = !DILocation(line: 857, column: 6, scope: !3754)
!3798 = !DILocation(line: 857, column: 6, scope: !3752)
!3799 = !DILocation(line: 857, column: 6, scope: !3713)
!3800 = !DILocation(line: 858, column: 3, scope: !3752)
!3801 = !DILocation(line: 860, column: 2, scope: !3713)
!3802 = !DILocation(line: 862, column: 1, scope: !3713)
!3803 = !DILocation(line: 863, column: 23, scope: !3713)
!3804 = !DILocation(line: 863, column: 2, scope: !3713)
!3805 = !DILocation(line: 864, column: 2, scope: !3713)
!3806 = !DILocation(line: 865, column: 1, scope: !3713)
!3807 = distinct !DISubprogram(name: "cache_get_attribute_groups", scope: !3, file: !3, line: 809, type: !3808, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!493, !306}
!3810 = !{!3811, !3812}
!3811 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !3807, file: !3, line: 809, type: !306)
!3812 = !DILocalVariable(name: "priv_group", scope: !3807, file: !3, line: 811, type: !494)
!3813 = !DILocation(line: 809, column: 46, scope: !3807)
!3814 = !DILocation(line: 811, column: 2, scope: !3807)
!3815 = !DILocation(line: 811, column: 32, scope: !3807)
!3816 = !DILocation(line: 812, column: 25, scope: !3807)
!3817 = !DILocation(line: 812, column: 4, scope: !3807)
!3818 = !DILocation(line: 814, column: 7, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3807, file: !3, line: 814, column: 6)
!3820 = !DILocation(line: 814, column: 6, scope: !3807)
!3821 = !DILocation(line: 815, column: 3, scope: !3819)
!3822 = !DILocation(line: 817, column: 7, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3807, file: !3, line: 817, column: 6)
!3824 = !DILocation(line: 817, column: 6, scope: !3807)
!3825 = !DILocation(line: 818, column: 29, scope: !3823)
!3826 = !DILocation(line: 818, column: 27, scope: !3823)
!3827 = !DILocation(line: 818, column: 3, scope: !3823)
!3828 = !DILocation(line: 820, column: 2, scope: !3807)
!3829 = !DILocation(line: 821, column: 1, scope: !3807)
!3830 = !DISubprogram(name: "cpu_device_create", scope: !3831, file: !3831, line: 82, type: !3832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3831 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!349, !349, !329, !493, !357, null}
!3834 = distinct !DISubprogram(name: "IS_ERR", scope: !3835, file: !3835, line: 59, type: !3836, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3838)
!3835 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!331, !720}
!3838 = !{!3839}
!3839 = !DILocalVariable(name: "ptr", arg: 1, scope: !3834, file: !3835, line: 59, type: !720)
!3840 = !DILocation(line: 59, column: 60, scope: !3834)
!3841 = !DILocation(line: 61, column: 9, scope: !3834)
!3842 = !DILocation(line: 61, column: 2, scope: !3834)
!3843 = distinct !DISubprogram(name: "PTR_ERR", scope: !3835, file: !3835, line: 49, type: !3844, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!347, !720}
!3846 = !{!3847}
!3847 = !DILocalVariable(name: "ptr", arg: 1, scope: !3843, file: !3835, line: 49, type: !720)
!3848 = !DILocation(line: 49, column: 61, scope: !3843)
!3849 = !DILocation(line: 51, column: 16, scope: !3843)
!3850 = !DILocation(line: 51, column: 9, scope: !3843)
!3851 = !DILocation(line: 51, column: 2, scope: !3843)
!3852 = distinct !DISubprogram(name: "cpu_cache_sysfs_exit", scope: !3, file: !3, line: 824, type: !2827, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3853)
!3853 = !{!3854, !3855, !3856, !3857, !3861, !3863, !3869, !3871, !3875, !3877, !3880, !3882, !3885, !3887, !3890, !3892, !3895}
!3854 = !DILocalVariable(name: "cpu", arg: 1, scope: !3852, file: !3, line: 824, type: !7)
!3855 = !DILocalVariable(name: "i", scope: !3852, file: !3, line: 826, type: !37)
!3856 = !DILocalVariable(name: "ci_dev", scope: !3852, file: !3, line: 827, type: !349)
!3857 = !DILocalVariable(name: "__vpp_verify", scope: !3858, file: !3, line: 829, type: !720)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 829, column: 6)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 829, column: 6)
!3860 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 829, column: 6)
!3861 = !DILocalVariable(name: "__ptr", scope: !3862, file: !3, line: 829, type: !324)
!3862 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 829, column: 6)
!3863 = !DILocalVariable(name: "__vpp_verify", scope: !3864, file: !3, line: 830, type: !720)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 830, column: 19)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 830, column: 19)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 830, column: 3)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 830, column: 3)
!3868 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 829, column: 30)
!3869 = !DILocalVariable(name: "__ptr", scope: !3870, file: !3, line: 830, type: !324)
!3870 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 830, column: 19)
!3871 = !DILocalVariable(name: "__vpp_verify", scope: !3872, file: !3, line: 831, type: !720)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 831, column: 13)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 831, column: 13)
!3874 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 830, column: 43)
!3875 = !DILocalVariable(name: "__ptr", scope: !3876, file: !3, line: 831, type: !324)
!3876 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 831, column: 13)
!3877 = !DILocalVariable(name: "__vpp_verify", scope: !3878, file: !3, line: 836, type: !720)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 836, column: 9)
!3879 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 836, column: 9)
!3880 = !DILocalVariable(name: "__ptr", scope: !3881, file: !3, line: 836, type: !324)
!3881 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 836, column: 9)
!3882 = !DILocalVariable(name: "__vpp_verify", scope: !3883, file: !3, line: 837, type: !720)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 837, column: 3)
!3884 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 837, column: 3)
!3885 = !DILocalVariable(name: "__ptr", scope: !3886, file: !3, line: 837, type: !324)
!3886 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 837, column: 3)
!3887 = !DILocalVariable(name: "__vpp_verify", scope: !3888, file: !3, line: 839, type: !720)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 839, column: 20)
!3889 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 839, column: 20)
!3890 = !DILocalVariable(name: "__ptr", scope: !3891, file: !3, line: 839, type: !324)
!3891 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 839, column: 20)
!3892 = !DILocalVariable(name: "__vpp_verify", scope: !3893, file: !3, line: 840, type: !720)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 840, column: 2)
!3894 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 840, column: 2)
!3895 = !DILocalVariable(name: "__ptr", scope: !3896, file: !3, line: 840, type: !324)
!3896 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 840, column: 2)
!3897 = !DILocation(line: 824, column: 47, scope: !3852)
!3898 = !DILocation(line: 826, column: 2, scope: !3852)
!3899 = !DILocation(line: 826, column: 6, scope: !3852)
!3900 = !DILocation(line: 827, column: 2, scope: !3852)
!3901 = !DILocation(line: 827, column: 17, scope: !3852)
!3902 = !DILocation(line: 829, column: 6, scope: !3859)
!3903 = !DILocation(line: 829, column: 6, scope: !3858)
!3904 = !DILocation(line: 829, column: 6, scope: !3862)
!3905 = !DILocation(line: 829, column: 6, scope: !3860)
!3906 = !DILocation(line: 829, column: 6, scope: !3852)
!3907 = !DILocation(line: 830, column: 10, scope: !3867)
!3908 = !DILocation(line: 830, column: 8, scope: !3867)
!3909 = !DILocation(line: 830, column: 15, scope: !3866)
!3910 = !DILocation(line: 830, column: 19, scope: !3865)
!3911 = !DILocation(line: 830, column: 19, scope: !3864)
!3912 = !DILocation(line: 830, column: 19, scope: !3870)
!3913 = !DILocation(line: 830, column: 19, scope: !3866)
!3914 = !DILocation(line: 830, column: 17, scope: !3866)
!3915 = !DILocation(line: 830, column: 3, scope: !3867)
!3916 = !DILocation(line: 831, column: 13, scope: !3873)
!3917 = !DILocation(line: 831, column: 13, scope: !3872)
!3918 = !DILocation(line: 831, column: 13, scope: !3876)
!3919 = !DILocation(line: 831, column: 13, scope: !3874)
!3920 = !DILocation(line: 831, column: 11, scope: !3874)
!3921 = !DILocation(line: 832, column: 9, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 832, column: 8)
!3923 = !DILocation(line: 832, column: 8, scope: !3874)
!3924 = !DILocation(line: 833, column: 5, scope: !3922)
!3925 = !DILocation(line: 834, column: 22, scope: !3874)
!3926 = !DILocation(line: 834, column: 4, scope: !3874)
!3927 = !DILocation(line: 835, column: 3, scope: !3874)
!3928 = !DILocation(line: 830, column: 39, scope: !3866)
!3929 = !DILocation(line: 830, column: 3, scope: !3866)
!3930 = distinct !{!3930, !3915, !3931, !2795, !2796}
!3931 = !DILocation(line: 835, column: 3, scope: !3867)
!3932 = !DILocation(line: 836, column: 9, scope: !3879)
!3933 = !DILocation(line: 836, column: 9, scope: !3878)
!3934 = !DILocation(line: 836, column: 9, scope: !3881)
!3935 = !DILocation(line: 836, column: 9, scope: !3868)
!3936 = !DILocation(line: 836, column: 3, scope: !3868)
!3937 = !DILocation(line: 837, column: 3, scope: !3884)
!3938 = !DILocation(line: 837, column: 3, scope: !3883)
!3939 = !DILocation(line: 837, column: 3, scope: !3886)
!3940 = !DILocation(line: 837, column: 26, scope: !3868)
!3941 = !DILocation(line: 838, column: 2, scope: !3868)
!3942 = !DILocation(line: 839, column: 20, scope: !3889)
!3943 = !DILocation(line: 839, column: 20, scope: !3888)
!3944 = !DILocation(line: 839, column: 20, scope: !3891)
!3945 = !DILocation(line: 839, column: 20, scope: !3852)
!3946 = !DILocation(line: 839, column: 2, scope: !3852)
!3947 = !DILocation(line: 840, column: 2, scope: !3894)
!3948 = !DILocation(line: 840, column: 2, scope: !3893)
!3949 = !DILocation(line: 840, column: 2, scope: !3896)
!3950 = !DILocation(line: 840, column: 25, scope: !3852)
!3951 = !DILocation(line: 841, column: 1, scope: !3852)
!3952 = !DISubprogram(name: "get_cpu_device", scope: !3831, file: !3831, line: 39, type: !3953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!349, !7}
!3955 = distinct !DISubprogram(name: "cache_default_attrs_is_visible", scope: !3, file: !3, line: 744, type: !501, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3956)
!3956 = !{!3957, !3958, !3959, !3960, !3961, !3963, !3964, !3965}
!3957 = !DILocalVariable(name: "kobj", arg: 1, scope: !3955, file: !3, line: 744, type: !366)
!3958 = !DILocalVariable(name: "attr", arg: 2, scope: !3955, file: !3, line: 745, type: !479)
!3959 = !DILocalVariable(name: "unused", arg: 3, scope: !3955, file: !3, line: 745, type: !37)
!3960 = !DILocalVariable(name: "dev", scope: !3955, file: !3, line: 747, type: !349)
!3961 = !DILocalVariable(name: "__mptr", scope: !3962, file: !3, line: 747, type: !329)
!3962 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 747, column: 23)
!3963 = !DILocalVariable(name: "this_leaf", scope: !3955, file: !3, line: 748, type: !306)
!3964 = !DILocalVariable(name: "mask", scope: !3955, file: !3, line: 749, type: !340)
!3965 = !DILocalVariable(name: "mode", scope: !3955, file: !3, line: 750, type: !484)
!3966 = !DILocation(line: 744, column: 48, scope: !3955)
!3967 = !DILocation(line: 745, column: 29, scope: !3955)
!3968 = !DILocation(line: 745, column: 39, scope: !3955)
!3969 = !DILocation(line: 747, column: 2, scope: !3955)
!3970 = !DILocation(line: 747, column: 17, scope: !3955)
!3971 = !DILocation(line: 747, column: 23, scope: !3962)
!3972 = !DILocation(line: 747, column: 23, scope: !3955)
!3973 = !DILocation(line: 748, column: 2, scope: !3955)
!3974 = !DILocation(line: 748, column: 20, scope: !3955)
!3975 = !DILocation(line: 748, column: 48, scope: !3955)
!3976 = !DILocation(line: 748, column: 32, scope: !3955)
!3977 = !DILocation(line: 749, column: 2, scope: !3955)
!3978 = !DILocation(line: 749, column: 24, scope: !3955)
!3979 = !DILocation(line: 749, column: 32, scope: !3955)
!3980 = !DILocation(line: 749, column: 43, scope: !3955)
!3981 = !DILocation(line: 750, column: 2, scope: !3955)
!3982 = !DILocation(line: 750, column: 10, scope: !3955)
!3983 = !DILocation(line: 750, column: 17, scope: !3955)
!3984 = !DILocation(line: 750, column: 23, scope: !3955)
!3985 = !DILocation(line: 752, column: 7, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 752, column: 6)
!3987 = !DILocation(line: 752, column: 12, scope: !3986)
!3988 = !DILocation(line: 752, column: 34, scope: !3986)
!3989 = !DILocation(line: 752, column: 38, scope: !3986)
!3990 = !DILocation(line: 752, column: 49, scope: !3986)
!3991 = !DILocation(line: 752, column: 60, scope: !3986)
!3992 = !DILocation(line: 752, column: 6, scope: !3955)
!3993 = !DILocation(line: 753, column: 10, scope: !3986)
!3994 = !DILocation(line: 753, column: 3, scope: !3986)
!3995 = !DILocation(line: 754, column: 7, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 754, column: 6)
!3997 = !DILocation(line: 754, column: 12, scope: !3996)
!3998 = !DILocation(line: 754, column: 36, scope: !3996)
!3999 = !DILocation(line: 754, column: 39, scope: !3996)
!4000 = !DILocation(line: 754, column: 50, scope: !3996)
!4001 = !DILocation(line: 754, column: 6, scope: !3955)
!4002 = !DILocation(line: 755, column: 10, scope: !3996)
!4003 = !DILocation(line: 755, column: 3, scope: !3996)
!4004 = !DILocation(line: 756, column: 7, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 756, column: 6)
!4006 = !DILocation(line: 756, column: 12, scope: !4005)
!4007 = !DILocation(line: 756, column: 37, scope: !4005)
!4008 = !DILocation(line: 756, column: 40, scope: !4005)
!4009 = !DILocation(line: 756, column: 51, scope: !4005)
!4010 = !DILocation(line: 756, column: 6, scope: !3955)
!4011 = !DILocation(line: 757, column: 10, scope: !4005)
!4012 = !DILocation(line: 757, column: 3, scope: !4005)
!4013 = !DILocation(line: 758, column: 7, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 758, column: 6)
!4015 = !DILocation(line: 758, column: 12, scope: !4014)
!4016 = !DILocation(line: 758, column: 46, scope: !4014)
!4017 = !DILocation(line: 758, column: 64, scope: !4014)
!4018 = !DILocation(line: 758, column: 50, scope: !4014)
!4019 = !DILocation(line: 758, column: 6, scope: !3955)
!4020 = !DILocation(line: 759, column: 10, scope: !4014)
!4021 = !DILocation(line: 759, column: 3, scope: !4014)
!4022 = !DILocation(line: 760, column: 7, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 760, column: 6)
!4024 = !DILocation(line: 760, column: 12, scope: !4023)
!4025 = !DILocation(line: 760, column: 47, scope: !4023)
!4026 = !DILocation(line: 760, column: 65, scope: !4023)
!4027 = !DILocation(line: 760, column: 51, scope: !4023)
!4028 = !DILocation(line: 760, column: 6, scope: !3955)
!4029 = !DILocation(line: 761, column: 10, scope: !4023)
!4030 = !DILocation(line: 761, column: 3, scope: !4023)
!4031 = !DILocation(line: 762, column: 7, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 762, column: 6)
!4033 = !DILocation(line: 762, column: 12, scope: !4032)
!4034 = !DILocation(line: 762, column: 51, scope: !4032)
!4035 = !DILocation(line: 763, column: 6, scope: !4032)
!4036 = !DILocation(line: 763, column: 17, scope: !4032)
!4037 = !DILocation(line: 762, column: 6, scope: !3955)
!4038 = !DILocation(line: 764, column: 10, scope: !4032)
!4039 = !DILocation(line: 764, column: 3, scope: !4032)
!4040 = !DILocation(line: 765, column: 7, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 765, column: 6)
!4042 = !DILocation(line: 765, column: 12, scope: !4041)
!4043 = !DILocation(line: 765, column: 53, scope: !4041)
!4044 = !DILocation(line: 766, column: 6, scope: !4041)
!4045 = !DILocation(line: 766, column: 17, scope: !4041)
!4046 = !DILocation(line: 765, column: 6, scope: !3955)
!4047 = !DILocation(line: 767, column: 10, scope: !4041)
!4048 = !DILocation(line: 767, column: 3, scope: !4041)
!4049 = !DILocation(line: 768, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 768, column: 6)
!4051 = !DILocation(line: 768, column: 12, scope: !4050)
!4052 = !DILocation(line: 768, column: 46, scope: !4050)
!4053 = !DILocation(line: 769, column: 6, scope: !4050)
!4054 = !DILocation(line: 769, column: 17, scope: !4050)
!4055 = !DILocation(line: 768, column: 6, scope: !3955)
!4056 = !DILocation(line: 770, column: 10, scope: !4050)
!4057 = !DILocation(line: 770, column: 3, scope: !4050)
!4058 = !DILocation(line: 771, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 771, column: 6)
!4060 = !DILocation(line: 771, column: 12, scope: !4059)
!4061 = !DILocation(line: 771, column: 36, scope: !4059)
!4062 = !DILocation(line: 771, column: 39, scope: !4059)
!4063 = !DILocation(line: 771, column: 50, scope: !4059)
!4064 = !DILocation(line: 771, column: 6, scope: !3955)
!4065 = !DILocation(line: 772, column: 10, scope: !4059)
!4066 = !DILocation(line: 772, column: 3, scope: !4059)
!4067 = !DILocation(line: 773, column: 7, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 773, column: 6)
!4069 = !DILocation(line: 773, column: 12, scope: !4068)
!4070 = !DILocation(line: 773, column: 44, scope: !4068)
!4071 = !DILocation(line: 774, column: 7, scope: !4068)
!4072 = !DILocation(line: 774, column: 18, scope: !4068)
!4073 = !DILocation(line: 774, column: 29, scope: !4068)
!4074 = !DILocation(line: 773, column: 6, scope: !3955)
!4075 = !DILocation(line: 775, column: 10, scope: !4068)
!4076 = !DILocation(line: 775, column: 3, scope: !4068)
!4077 = !DILocation(line: 776, column: 7, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 776, column: 6)
!4079 = !DILocation(line: 776, column: 12, scope: !4078)
!4080 = !DILocation(line: 776, column: 49, scope: !4078)
!4081 = !DILocation(line: 777, column: 7, scope: !4078)
!4082 = !DILocation(line: 777, column: 18, scope: !4078)
!4083 = !DILocation(line: 777, column: 29, scope: !4078)
!4084 = !DILocation(line: 776, column: 6, scope: !3955)
!4085 = !DILocation(line: 778, column: 10, scope: !4078)
!4086 = !DILocation(line: 778, column: 3, scope: !4078)
!4087 = !DILocation(line: 779, column: 7, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 779, column: 6)
!4089 = !DILocation(line: 779, column: 12, scope: !4088)
!4090 = !DILocation(line: 779, column: 55, scope: !4088)
!4091 = !DILocation(line: 780, column: 6, scope: !4088)
!4092 = !DILocation(line: 780, column: 17, scope: !4088)
!4093 = !DILocation(line: 779, column: 6, scope: !3955)
!4094 = !DILocation(line: 781, column: 10, scope: !4088)
!4095 = !DILocation(line: 781, column: 3, scope: !4088)
!4096 = !DILocation(line: 783, column: 2, scope: !3955)
!4097 = !DILocation(line: 784, column: 1, scope: !3955)
!4098 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !244, file: !244, line: 916, type: !4099, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!329, !1031}
!4101 = !{!4102}
!4102 = !DILocalVariable(name: "dev", arg: 1, scope: !4098, file: !244, line: 916, type: !1031)
!4103 = !DILocation(line: 916, column: 58, scope: !4098)
!4104 = !DILocation(line: 918, column: 9, scope: !4098)
!4105 = !DILocation(line: 918, column: 14, scope: !4098)
!4106 = !DILocation(line: 918, column: 2, scope: !4098)
!4107 = distinct !DISubprogram(name: "cpumask_empty", scope: !319, file: !319, line: 672, type: !4108, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!331, !340}
!4110 = !{!4111}
!4111 = !DILocalVariable(name: "srcp", arg: 1, scope: !4107, file: !319, line: 672, type: !340)
!4112 = !DILocation(line: 672, column: 56, scope: !4107)
!4113 = !DILocation(line: 674, column: 22, scope: !4107)
!4114 = !DILocation(line: 674, column: 9, scope: !4107)
!4115 = !DILocation(line: 674, column: 2, scope: !4107)
!4116 = distinct !DISubprogram(name: "id_show", scope: !3, file: !3, line: 625, type: !2008, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4117)
!4117 = !{!4118, !4119, !4120, !4121}
!4118 = !DILocalVariable(name: "dev", arg: 1, scope: !4116, file: !3, line: 625, type: !349)
!4119 = !DILocalVariable(name: "attr", arg: 2, scope: !4116, file: !3, line: 625, type: !2010)
!4120 = !DILocalVariable(name: "buf", arg: 3, scope: !4116, file: !3, line: 625, type: !443)
!4121 = !DILocalVariable(name: "this_leaf", scope: !4116, file: !3, line: 625, type: !306)
!4122 = !DILocation(line: 625, column: 1, scope: !4116)
!4123 = !DISubprogram(name: "sysfs_emit", scope: !469, file: !469, line: 357, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!37, !443, !357, null}
!4126 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 658, type: !2008, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132}
!4128 = !DILocalVariable(name: "dev", arg: 1, scope: !4126, file: !3, line: 658, type: !349)
!4129 = !DILocalVariable(name: "attr", arg: 2, scope: !4126, file: !3, line: 659, type: !2010)
!4130 = !DILocalVariable(name: "buf", arg: 3, scope: !4126, file: !3, line: 659, type: !443)
!4131 = !DILocalVariable(name: "this_leaf", scope: !4126, file: !3, line: 661, type: !306)
!4132 = !DILocalVariable(name: "output", scope: !4126, file: !3, line: 662, type: !357)
!4133 = !DILocation(line: 658, column: 41, scope: !4126)
!4134 = !DILocation(line: 659, column: 30, scope: !4126)
!4135 = !DILocation(line: 659, column: 42, scope: !4126)
!4136 = !DILocation(line: 661, column: 2, scope: !4126)
!4137 = !DILocation(line: 661, column: 20, scope: !4126)
!4138 = !DILocation(line: 661, column: 48, scope: !4126)
!4139 = !DILocation(line: 661, column: 32, scope: !4126)
!4140 = !DILocation(line: 662, column: 2, scope: !4126)
!4141 = !DILocation(line: 662, column: 14, scope: !4126)
!4142 = !DILocation(line: 664, column: 10, scope: !4126)
!4143 = !DILocation(line: 664, column: 21, scope: !4126)
!4144 = !DILocation(line: 664, column: 2, scope: !4126)
!4145 = !DILocation(line: 666, column: 10, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 664, column: 27)
!4147 = !DILocation(line: 667, column: 3, scope: !4146)
!4148 = !DILocation(line: 669, column: 10, scope: !4146)
!4149 = !DILocation(line: 670, column: 3, scope: !4146)
!4150 = !DILocation(line: 672, column: 10, scope: !4146)
!4151 = !DILocation(line: 673, column: 3, scope: !4146)
!4152 = !DILocation(line: 675, column: 3, scope: !4146)
!4153 = !DILocation(line: 678, column: 20, scope: !4126)
!4154 = !DILocation(line: 678, column: 33, scope: !4126)
!4155 = !DILocation(line: 678, column: 9, scope: !4126)
!4156 = !DILocation(line: 678, column: 2, scope: !4126)
!4157 = !DILocation(line: 679, column: 1, scope: !4126)
!4158 = distinct !DISubprogram(name: "level_show", scope: !3, file: !3, line: 626, type: !2008, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4159)
!4159 = !{!4160, !4161, !4162, !4163}
!4160 = !DILocalVariable(name: "dev", arg: 1, scope: !4158, file: !3, line: 626, type: !349)
!4161 = !DILocalVariable(name: "attr", arg: 2, scope: !4158, file: !3, line: 626, type: !2010)
!4162 = !DILocalVariable(name: "buf", arg: 3, scope: !4158, file: !3, line: 626, type: !443)
!4163 = !DILocalVariable(name: "this_leaf", scope: !4158, file: !3, line: 626, type: !306)
!4164 = !DILocation(line: 626, column: 1, scope: !4158)
!4165 = distinct !DISubprogram(name: "shared_cpu_map_show", scope: !3, file: !3, line: 640, type: !2008, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4166)
!4166 = !{!4167, !4168, !4169, !4170, !4171}
!4167 = !DILocalVariable(name: "dev", arg: 1, scope: !4165, file: !3, line: 640, type: !349)
!4168 = !DILocalVariable(name: "attr", arg: 2, scope: !4165, file: !3, line: 641, type: !2010)
!4169 = !DILocalVariable(name: "buf", arg: 3, scope: !4165, file: !3, line: 641, type: !443)
!4170 = !DILocalVariable(name: "this_leaf", scope: !4165, file: !3, line: 643, type: !306)
!4171 = !DILocalVariable(name: "mask", scope: !4165, file: !3, line: 644, type: !340)
!4172 = !DILocation(line: 640, column: 51, scope: !4165)
!4173 = !DILocation(line: 641, column: 33, scope: !4165)
!4174 = !DILocation(line: 641, column: 45, scope: !4165)
!4175 = !DILocation(line: 643, column: 2, scope: !4165)
!4176 = !DILocation(line: 643, column: 20, scope: !4165)
!4177 = !DILocation(line: 643, column: 48, scope: !4165)
!4178 = !DILocation(line: 643, column: 32, scope: !4165)
!4179 = !DILocation(line: 644, column: 2, scope: !4165)
!4180 = !DILocation(line: 644, column: 24, scope: !4165)
!4181 = !DILocation(line: 644, column: 32, scope: !4165)
!4182 = !DILocation(line: 644, column: 43, scope: !4165)
!4183 = !DILocation(line: 646, column: 20, scope: !4165)
!4184 = !DILocation(line: 646, column: 35, scope: !4165)
!4185 = !DILocation(line: 646, column: 47, scope: !4165)
!4186 = !DILocation(line: 646, column: 9, scope: !4165)
!4187 = !DILocation(line: 647, column: 1, scope: !4165)
!4188 = !DILocation(line: 646, column: 2, scope: !4165)
!4189 = distinct !DISubprogram(name: "bitmap_empty", scope: !4190, file: !4190, line: 436, type: !4191, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4193)
!4190 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!331, !3185, !7}
!4193 = !{!4194, !4195}
!4194 = !DILocalVariable(name: "src", arg: 1, scope: !4189, file: !4190, line: 436, type: !3185)
!4195 = !DILocalVariable(name: "nbits", arg: 2, scope: !4189, file: !4190, line: 436, type: !7)
!4196 = !DILocation(line: 436, column: 54, scope: !4189)
!4197 = !DILocation(line: 436, column: 68, scope: !4189)
!4198 = !DILocation(line: 438, column: 6, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4189, file: !4190, line: 438, column: 6)
!4200 = !DILocation(line: 438, column: 6, scope: !4189)
!4201 = !DILocation(line: 439, column: 14, scope: !4199)
!4202 = !DILocation(line: 439, column: 13, scope: !4199)
!4203 = !DILocation(line: 439, column: 20, scope: !4199)
!4204 = !DILocation(line: 439, column: 18, scope: !4199)
!4205 = !DILocation(line: 439, column: 10, scope: !4199)
!4206 = !DILocation(line: 439, column: 3, scope: !4199)
!4207 = !DILocation(line: 441, column: 24, scope: !4189)
!4208 = !DILocation(line: 441, column: 29, scope: !4189)
!4209 = !DILocation(line: 441, column: 9, scope: !4189)
!4210 = !DILocation(line: 441, column: 39, scope: !4189)
!4211 = !DILocation(line: 441, column: 36, scope: !4189)
!4212 = !DILocation(line: 441, column: 2, scope: !4189)
!4213 = !DILocation(line: 442, column: 1, scope: !4189)
!4214 = distinct !DISubprogram(name: "find_first_bit", scope: !3182, file: !3182, line: 200, type: !4215, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!324, !3185, !324}
!4217 = !{!4218, !4219, !4220}
!4218 = !DILocalVariable(name: "addr", arg: 1, scope: !4214, file: !3182, line: 200, type: !3185)
!4219 = !DILocalVariable(name: "size", arg: 2, scope: !4214, file: !3182, line: 200, type: !324)
!4220 = !DILocalVariable(name: "val", scope: !4221, file: !3182, line: 203, type: !324)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !3182, line: 202, column: 31)
!4222 = distinct !DILexicalBlock(scope: !4214, file: !3182, line: 202, column: 6)
!4223 = !DILocation(line: 200, column: 51, scope: !4214)
!4224 = !DILocation(line: 200, column: 71, scope: !4214)
!4225 = !DILocation(line: 202, column: 6, scope: !4222)
!4226 = !DILocation(line: 202, column: 6, scope: !4214)
!4227 = !DILocation(line: 203, column: 3, scope: !4221)
!4228 = !DILocation(line: 203, column: 17, scope: !4221)
!4229 = !DILocation(line: 203, column: 24, scope: !4221)
!4230 = !DILocation(line: 203, column: 23, scope: !4221)
!4231 = !DILocation(line: 203, column: 31, scope: !4221)
!4232 = !DILocation(line: 203, column: 29, scope: !4221)
!4233 = !DILocation(line: 205, column: 10, scope: !4221)
!4234 = !DILocation(line: 205, column: 16, scope: !4221)
!4235 = !DILocation(line: 205, column: 29, scope: !4221)
!4236 = !DILocation(line: 205, column: 3, scope: !4221)
!4237 = !DILocation(line: 206, column: 2, scope: !4222)
!4238 = !DILocation(line: 208, column: 25, scope: !4214)
!4239 = !DILocation(line: 208, column: 31, scope: !4214)
!4240 = !DILocation(line: 208, column: 9, scope: !4214)
!4241 = !DILocation(line: 208, column: 2, scope: !4214)
!4242 = !DILocation(line: 209, column: 1, scope: !4214)
!4243 = !DISubprogram(name: "_find_first_bit", scope: !3182, file: !3182, line: 21, type: !4215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4244 = distinct !DISubprogram(name: "shared_cpu_list_show", scope: !3, file: !3, line: 649, type: !2008, scopeLine: 651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4245)
!4245 = !{!4246, !4247, !4248, !4249, !4250}
!4246 = !DILocalVariable(name: "dev", arg: 1, scope: !4244, file: !3, line: 649, type: !349)
!4247 = !DILocalVariable(name: "attr", arg: 2, scope: !4244, file: !3, line: 650, type: !2010)
!4248 = !DILocalVariable(name: "buf", arg: 3, scope: !4244, file: !3, line: 650, type: !443)
!4249 = !DILocalVariable(name: "this_leaf", scope: !4244, file: !3, line: 652, type: !306)
!4250 = !DILocalVariable(name: "mask", scope: !4244, file: !3, line: 653, type: !340)
!4251 = !DILocation(line: 649, column: 52, scope: !4244)
!4252 = !DILocation(line: 650, column: 34, scope: !4244)
!4253 = !DILocation(line: 650, column: 46, scope: !4244)
!4254 = !DILocation(line: 652, column: 2, scope: !4244)
!4255 = !DILocation(line: 652, column: 20, scope: !4244)
!4256 = !DILocation(line: 652, column: 48, scope: !4244)
!4257 = !DILocation(line: 652, column: 32, scope: !4244)
!4258 = !DILocation(line: 653, column: 2, scope: !4244)
!4259 = !DILocation(line: 653, column: 24, scope: !4244)
!4260 = !DILocation(line: 653, column: 32, scope: !4244)
!4261 = !DILocation(line: 653, column: 43, scope: !4244)
!4262 = !DILocation(line: 655, column: 20, scope: !4244)
!4263 = !DILocation(line: 655, column: 36, scope: !4244)
!4264 = !DILocation(line: 655, column: 48, scope: !4244)
!4265 = !DILocation(line: 655, column: 9, scope: !4244)
!4266 = !DILocation(line: 656, column: 1, scope: !4244)
!4267 = !DILocation(line: 655, column: 2, scope: !4244)
!4268 = distinct !DISubprogram(name: "coherency_line_size_show", scope: !3, file: !3, line: 627, type: !2008, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4269)
!4269 = !{!4270, !4271, !4272, !4273}
!4270 = !DILocalVariable(name: "dev", arg: 1, scope: !4268, file: !3, line: 627, type: !349)
!4271 = !DILocalVariable(name: "attr", arg: 2, scope: !4268, file: !3, line: 627, type: !2010)
!4272 = !DILocalVariable(name: "buf", arg: 3, scope: !4268, file: !3, line: 627, type: !443)
!4273 = !DILocalVariable(name: "this_leaf", scope: !4268, file: !3, line: 627, type: !306)
!4274 = !DILocation(line: 627, column: 1, scope: !4268)
!4275 = distinct !DISubprogram(name: "ways_of_associativity_show", scope: !3, file: !3, line: 630, type: !2008, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4276)
!4276 = !{!4277, !4278, !4279, !4280}
!4277 = !DILocalVariable(name: "dev", arg: 1, scope: !4275, file: !3, line: 630, type: !349)
!4278 = !DILocalVariable(name: "attr", arg: 2, scope: !4275, file: !3, line: 630, type: !2010)
!4279 = !DILocalVariable(name: "buf", arg: 3, scope: !4275, file: !3, line: 630, type: !443)
!4280 = !DILocalVariable(name: "this_leaf", scope: !4275, file: !3, line: 630, type: !306)
!4281 = !DILocation(line: 630, column: 1, scope: !4275)
!4282 = distinct !DISubprogram(name: "number_of_sets_show", scope: !3, file: !3, line: 628, type: !2008, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4283)
!4283 = !{!4284, !4285, !4286, !4287}
!4284 = !DILocalVariable(name: "dev", arg: 1, scope: !4282, file: !3, line: 628, type: !349)
!4285 = !DILocalVariable(name: "attr", arg: 2, scope: !4282, file: !3, line: 628, type: !2010)
!4286 = !DILocalVariable(name: "buf", arg: 3, scope: !4282, file: !3, line: 628, type: !443)
!4287 = !DILocalVariable(name: "this_leaf", scope: !4282, file: !3, line: 628, type: !306)
!4288 = !DILocation(line: 628, column: 1, scope: !4282)
!4289 = distinct !DISubprogram(name: "size_show", scope: !3, file: !3, line: 632, type: !2008, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4290)
!4290 = !{!4291, !4292, !4293, !4294}
!4291 = !DILocalVariable(name: "dev", arg: 1, scope: !4289, file: !3, line: 632, type: !349)
!4292 = !DILocalVariable(name: "attr", arg: 2, scope: !4289, file: !3, line: 633, type: !2010)
!4293 = !DILocalVariable(name: "buf", arg: 3, scope: !4289, file: !3, line: 633, type: !443)
!4294 = !DILocalVariable(name: "this_leaf", scope: !4289, file: !3, line: 635, type: !306)
!4295 = !DILocation(line: 632, column: 41, scope: !4289)
!4296 = !DILocation(line: 633, column: 30, scope: !4289)
!4297 = !DILocation(line: 633, column: 42, scope: !4289)
!4298 = !DILocation(line: 635, column: 2, scope: !4289)
!4299 = !DILocation(line: 635, column: 20, scope: !4289)
!4300 = !DILocation(line: 635, column: 48, scope: !4289)
!4301 = !DILocation(line: 635, column: 32, scope: !4289)
!4302 = !DILocation(line: 637, column: 20, scope: !4289)
!4303 = !DILocation(line: 637, column: 34, scope: !4289)
!4304 = !DILocation(line: 637, column: 45, scope: !4289)
!4305 = !DILocation(line: 637, column: 50, scope: !4289)
!4306 = !DILocation(line: 637, column: 9, scope: !4289)
!4307 = !DILocation(line: 638, column: 1, scope: !4289)
!4308 = !DILocation(line: 637, column: 2, scope: !4289)
!4309 = distinct !DISubprogram(name: "write_policy_show", scope: !3, file: !3, line: 700, type: !2008, scopeLine: 702, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4310)
!4310 = !{!4311, !4312, !4313, !4314, !4315, !4316}
!4311 = !DILocalVariable(name: "dev", arg: 1, scope: !4309, file: !3, line: 700, type: !349)
!4312 = !DILocalVariable(name: "attr", arg: 2, scope: !4309, file: !3, line: 701, type: !2010)
!4313 = !DILocalVariable(name: "buf", arg: 3, scope: !4309, file: !3, line: 701, type: !443)
!4314 = !DILocalVariable(name: "this_leaf", scope: !4309, file: !3, line: 703, type: !306)
!4315 = !DILocalVariable(name: "ci_attr", scope: !4309, file: !3, line: 704, type: !7)
!4316 = !DILocalVariable(name: "n", scope: !4309, file: !3, line: 705, type: !37)
!4317 = !DILocation(line: 700, column: 49, scope: !4309)
!4318 = !DILocation(line: 701, column: 31, scope: !4309)
!4319 = !DILocation(line: 701, column: 43, scope: !4309)
!4320 = !DILocation(line: 703, column: 2, scope: !4309)
!4321 = !DILocation(line: 703, column: 20, scope: !4309)
!4322 = !DILocation(line: 703, column: 48, scope: !4309)
!4323 = !DILocation(line: 703, column: 32, scope: !4309)
!4324 = !DILocation(line: 704, column: 2, scope: !4309)
!4325 = !DILocation(line: 704, column: 15, scope: !4309)
!4326 = !DILocation(line: 704, column: 25, scope: !4309)
!4327 = !DILocation(line: 704, column: 36, scope: !4309)
!4328 = !DILocation(line: 705, column: 2, scope: !4309)
!4329 = !DILocation(line: 705, column: 6, scope: !4309)
!4330 = !DILocation(line: 707, column: 6, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 707, column: 6)
!4332 = !DILocation(line: 707, column: 14, scope: !4331)
!4333 = !DILocation(line: 707, column: 6, scope: !4309)
!4334 = !DILocation(line: 708, column: 18, scope: !4331)
!4335 = !DILocation(line: 708, column: 7, scope: !4331)
!4336 = !DILocation(line: 708, column: 5, scope: !4331)
!4337 = !DILocation(line: 708, column: 3, scope: !4331)
!4338 = !DILocation(line: 709, column: 11, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 709, column: 11)
!4340 = !DILocation(line: 709, column: 19, scope: !4339)
!4341 = !DILocation(line: 709, column: 11, scope: !4331)
!4342 = !DILocation(line: 710, column: 18, scope: !4339)
!4343 = !DILocation(line: 710, column: 7, scope: !4339)
!4344 = !DILocation(line: 710, column: 5, scope: !4339)
!4345 = !DILocation(line: 710, column: 3, scope: !4339)
!4346 = !DILocation(line: 711, column: 9, scope: !4309)
!4347 = !DILocation(line: 712, column: 1, scope: !4309)
!4348 = !DILocation(line: 711, column: 2, scope: !4309)
!4349 = distinct !DISubprogram(name: "allocation_policy_show", scope: !3, file: !3, line: 681, type: !2008, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4350)
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4356}
!4351 = !DILocalVariable(name: "dev", arg: 1, scope: !4349, file: !3, line: 681, type: !349)
!4352 = !DILocalVariable(name: "attr", arg: 2, scope: !4349, file: !3, line: 682, type: !2010)
!4353 = !DILocalVariable(name: "buf", arg: 3, scope: !4349, file: !3, line: 682, type: !443)
!4354 = !DILocalVariable(name: "this_leaf", scope: !4349, file: !3, line: 684, type: !306)
!4355 = !DILocalVariable(name: "ci_attr", scope: !4349, file: !3, line: 685, type: !7)
!4356 = !DILocalVariable(name: "output", scope: !4349, file: !3, line: 686, type: !357)
!4357 = !DILocation(line: 681, column: 54, scope: !4349)
!4358 = !DILocation(line: 682, column: 36, scope: !4349)
!4359 = !DILocation(line: 682, column: 48, scope: !4349)
!4360 = !DILocation(line: 684, column: 2, scope: !4349)
!4361 = !DILocation(line: 684, column: 20, scope: !4349)
!4362 = !DILocation(line: 684, column: 48, scope: !4349)
!4363 = !DILocation(line: 684, column: 32, scope: !4349)
!4364 = !DILocation(line: 685, column: 2, scope: !4349)
!4365 = !DILocation(line: 685, column: 15, scope: !4349)
!4366 = !DILocation(line: 685, column: 25, scope: !4349)
!4367 = !DILocation(line: 685, column: 36, scope: !4349)
!4368 = !DILocation(line: 686, column: 2, scope: !4349)
!4369 = !DILocation(line: 686, column: 14, scope: !4349)
!4370 = !DILocation(line: 688, column: 7, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 688, column: 6)
!4372 = !DILocation(line: 688, column: 15, scope: !4371)
!4373 = !DILocation(line: 688, column: 38, scope: !4371)
!4374 = !DILocation(line: 688, column: 42, scope: !4371)
!4375 = !DILocation(line: 688, column: 50, scope: !4371)
!4376 = !DILocation(line: 688, column: 6, scope: !4349)
!4377 = !DILocation(line: 689, column: 10, scope: !4371)
!4378 = !DILocation(line: 689, column: 3, scope: !4371)
!4379 = !DILocation(line: 690, column: 11, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 690, column: 11)
!4381 = !DILocation(line: 690, column: 19, scope: !4380)
!4382 = !DILocation(line: 690, column: 11, scope: !4371)
!4383 = !DILocation(line: 691, column: 10, scope: !4380)
!4384 = !DILocation(line: 691, column: 3, scope: !4380)
!4385 = !DILocation(line: 692, column: 11, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 692, column: 11)
!4387 = !DILocation(line: 692, column: 19, scope: !4386)
!4388 = !DILocation(line: 692, column: 11, scope: !4380)
!4389 = !DILocation(line: 693, column: 10, scope: !4386)
!4390 = !DILocation(line: 693, column: 3, scope: !4386)
!4391 = !DILocation(line: 695, column: 3, scope: !4386)
!4392 = !DILocation(line: 697, column: 20, scope: !4349)
!4393 = !DILocation(line: 697, column: 33, scope: !4349)
!4394 = !DILocation(line: 697, column: 9, scope: !4349)
!4395 = !DILocation(line: 697, column: 2, scope: !4349)
!4396 = !DILocation(line: 698, column: 1, scope: !4349)
!4397 = distinct !DISubprogram(name: "physical_line_partition_show", scope: !3, file: !3, line: 629, type: !2008, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4398 = !{!4399, !4400, !4401, !4402}
!4399 = !DILocalVariable(name: "dev", arg: 1, scope: !4397, file: !3, line: 629, type: !349)
!4400 = !DILocalVariable(name: "attr", arg: 2, scope: !4397, file: !3, line: 629, type: !2010)
!4401 = !DILocalVariable(name: "buf", arg: 3, scope: !4397, file: !3, line: 629, type: !443)
!4402 = !DILocalVariable(name: "this_leaf", scope: !4397, file: !3, line: 629, type: !306)
!4403 = !DILocation(line: 629, column: 1, scope: !4397)
!4404 = !DISubprogram(name: "device_unregister", scope: !244, file: !244, line: 1055, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4405 = distinct !DISubprogram(name: "cpumask_test_and_clear_cpu", scope: !319, file: !319, line: 530, type: !4406, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4408)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!331, !37, !3170}
!4408 = !{!4409, !4410}
!4409 = !DILocalVariable(name: "cpu", arg: 1, scope: !4405, file: !319, line: 530, type: !37)
!4410 = !DILocalVariable(name: "cpumask", arg: 2, scope: !4405, file: !319, line: 530, type: !3170)
!4411 = !DILocation(line: 530, column: 60, scope: !4405)
!4412 = !DILocation(line: 530, column: 81, scope: !4405)
!4413 = !DILocation(line: 532, column: 42, scope: !4405)
!4414 = !DILocation(line: 532, column: 28, scope: !4405)
!4415 = !DILocation(line: 532, column: 48, scope: !4405)
!4416 = !DILocation(line: 532, column: 9, scope: !4405)
!4417 = !DILocation(line: 532, column: 2, scope: !4405)
!4418 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !3230, file: !3230, line: 82, type: !4419, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4421)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!331, !347, !3233}
!4421 = !{!4422, !4423}
!4422 = !DILocalVariable(name: "nr", arg: 1, scope: !4418, file: !3230, line: 82, type: !347)
!4423 = !DILocalVariable(name: "addr", arg: 2, scope: !4418, file: !3230, line: 82, type: !3233)
!4424 = !DILocation(line: 82, column: 53, scope: !4418)
!4425 = !DILocation(line: 82, column: 81, scope: !4418)
!4426 = !DILocation(line: 84, column: 2, scope: !4418)
!4427 = !DILocation(line: 84, column: 2, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4418, file: !3230, line: 84, column: 2)
!4429 = !DILocation(line: 85, column: 31, scope: !4418)
!4430 = !DILocation(line: 85, column: 38, scope: !4418)
!4431 = !DILocation(line: 85, column: 36, scope: !4418)
!4432 = !DILocation(line: 85, column: 2, scope: !4418)
!4433 = !DILocation(line: 86, column: 33, scope: !4418)
!4434 = !DILocation(line: 86, column: 37, scope: !4418)
!4435 = !DILocation(line: 86, column: 9, scope: !4418)
!4436 = !DILocation(line: 86, column: 2, scope: !4418)
!4437 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3259, file: !3259, line: 94, type: !3260, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4438)
!4438 = !{!4439, !4440}
!4439 = !DILocalVariable(name: "v", arg: 1, scope: !4437, file: !3259, line: 94, type: !3262)
!4440 = !DILocalVariable(name: "size", arg: 2, scope: !4437, file: !3259, line: 94, type: !489)
!4441 = !DILocation(line: 94, column: 79, scope: !4437)
!4442 = !DILocation(line: 94, column: 89, scope: !4437)
!4443 = !DILocation(line: 96, column: 20, scope: !4437)
!4444 = !DILocation(line: 96, column: 23, scope: !4437)
!4445 = !DILocation(line: 96, column: 2, scope: !4437)
!4446 = !DILocation(line: 97, column: 2, scope: !4437)
!4447 = !DILocation(line: 98, column: 1, scope: !4437)
!4448 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !3276, file: !3276, line: 160, type: !4419, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4449)
!4449 = !{!4450, !4451, !4452}
!4450 = !DILocalVariable(name: "nr", arg: 1, scope: !4448, file: !3276, line: 160, type: !347)
!4451 = !DILocalVariable(name: "addr", arg: 2, scope: !4448, file: !3276, line: 160, type: !3233)
!4452 = !DILocalVariable(name: "c", scope: !4453, file: !3276, line: 162, type: !331)
!4453 = distinct !DILexicalBlock(scope: !4448, file: !3276, line: 162, column: 9)
!4454 = !DILocation(line: 160, column: 30, scope: !4448)
!4455 = !DILocation(line: 160, column: 58, scope: !4448)
!4456 = !DILocation(line: 162, column: 9, scope: !4453)
!4457 = !{i64 2148216880, i64 2148216919, i64 2148216940, i64 2148216977, i64 2148217000, i64 2148217009, i64 2148217112}
!4458 = !DILocation(line: 162, column: 9, scope: !4448)
!4459 = !DILocation(line: 162, column: 2, scope: !4448)
