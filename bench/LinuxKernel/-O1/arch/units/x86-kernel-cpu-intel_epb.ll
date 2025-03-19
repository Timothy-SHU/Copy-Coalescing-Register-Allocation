; ModuleID = 'arch/x86/kernel/cpu/intel_epb.c'
source_filename = "arch/x86/kernel/cpu/intel_epb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init..kmod_intel_epb__203_240_intel_epb_init\22, \22a\22\09\09"
module asm "__initcall__kmod_intel_epb__203_240_intel_epb_init4:\09\09\09"
module asm ".long\09__initstub__kmod_intel_epb__203_240_intel_epb_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.x86_cpu_id = type { i16, i16, i16, i16, i16, i16, i64 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.5 }
%struct.atomic_t = type { i32 }
%union.anon.5 = type { i64 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }

@__UNIQUE_ID___addressable___initstub__kmod_intel_epb__203_240_intel_epb_init4204 = internal global ptr @__initstub__kmod_intel_epb__203_240_intel_epb_init4, section ".discard.addressable", align 8, !dbg !0
@intel_epb_normal = internal constant [4 x %struct.x86_cpu_id] [%struct.x86_cpu_id { i16 0, i16 6, i16 154, i16 0, i16 0, i16 1, i64 7 }, %struct.x86_cpu_id { i16 0, i16 6, i16 190, i16 0, i16 0, i16 1, i64 7 }, %struct.x86_cpu_id { i16 0, i16 6, i16 186, i16 0, i16 0, i16 1, i64 7 }, %struct.x86_cpu_id zeroinitializer], align 16, !dbg !306
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@energ_perf_values = internal global [5 x i8] c"\00\04\06\08\0F", align 1, !dbg !325
@.str = private unnamed_addr constant [21 x i8] c"x86/intel/epb:online\00", align 1, !dbg !300
@intel_epb_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @intel_epb_save, ptr @intel_epb_restore, ptr null }, align 8, !dbg !1884
@cpuhp_tasks_frozen = external dso_local global i8, align 1
@intel_epb_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @intel_epb_attrs, ptr null }, align 8, !dbg !366
@saved_epb = internal global i8 0, section ".data..percpu", align 1, !dbg !364
@intel_epb_restore.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !330
@.str.1 = private unnamed_addr constant [56 x i8] c"\014ENERGY_PERF_BIAS: Set to 'normal', was 'performance'\0A\00", align 1, !dbg !359
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@power_group_name = external dso_local constant [0 x i8], align 1
@intel_epb_attrs = internal global [2 x ptr] [ptr @dev_attr_energy_perf_bias, ptr null], align 16, !dbg !1016
@dev_attr_energy_perf_bias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @energy_perf_bias_show, ptr @energy_perf_bias_store }, align 8, !dbg !1026
@.str.2 = private unnamed_addr constant [17 x i8] c"energy_perf_bias\00", align 1, !dbg !1021
@.str.3 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1, !dbg !1855
@energy_perf_strings = internal constant [5 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 16, !dbg !1880
@.str.4 = private unnamed_addr constant [12 x i8] c"performance\00", align 1, !dbg !1860
@.str.5 = private unnamed_addr constant [20 x i8] c"balance-performance\00", align 1, !dbg !1865
@.str.6 = private unnamed_addr constant [7 x i8] c"normal\00", align 1, !dbg !1870
@.str.7 = private unnamed_addr constant [14 x i8] c"balance-power\00", align 1, !dbg !1873
@.str.8 = private unnamed_addr constant [6 x i8] c"power\00", align 1, !dbg !1878
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_intel_epb__203_240_intel_epb_init4204], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_intel_epb__203_240_intel_epb_init4() #0 section ".init.text" align 16 !dbg !1902 {
entry:
  %call = call i32 @intel_epb_init() #11, !dbg !1903
  ret i32 %call, !dbg !1903
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @intel_epb_init() #0 section ".init.text" align 16 !dbg !1904 {
entry:
  %retval = alloca i32, align 4
  %id = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #12, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %id, metadata !1906, metadata !DIExpression()), !dbg !1911
  %call = call ptr @x86_match_cpu(ptr noundef @intel_epb_normal) #13, !dbg !1912
  store ptr %call, ptr %id, align 8, !dbg !1911
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1908, metadata !DIExpression()), !dbg !1914
  br i1 false, label %cond.true, label %cond.false, !dbg !1915

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !1916

cond.false:                                       ; preds = %entry
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 227, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1916
  br i1 %call1, label %if.end, label %if.then, !dbg !1915

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 -19, ptr %retval, align 4, !dbg !1918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1918

if.end:                                           ; preds = %cond.false, %cond.true
  %0 = load ptr, ptr %id, align 8, !dbg !1919
  %tobool = icmp ne ptr %0, null, !dbg !1919
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !1921

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr %id, align 8, !dbg !1922
  %driver_data = getelementptr inbounds %struct.x86_cpu_id, ptr %1, i32 0, i32 6, !dbg !1923
  %2 = load i64, ptr %driver_data, align 8, !dbg !1923
  %conv = trunc i64 %2 to i8, !dbg !1922
  store i8 %conv, ptr getelementptr inbounds ([5 x i8], ptr @energ_perf_values, i64 0, i64 2), align 1, !dbg !1924
  br label %if.end3, !dbg !1925

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call i32 @cpuhp_setup_state(i32 noundef 162, ptr noundef @.str, ptr noundef @intel_epb_online, ptr noundef @intel_epb_offline) #13, !dbg !1926
  store i32 %call4, ptr %ret, align 4, !dbg !1927
  %3 = load i32, ptr %ret, align 4, !dbg !1928
  %cmp = icmp slt i32 %3, 0, !dbg !1930
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !1931

if.then6:                                         ; preds = %if.end3
  br label %err_out_online, !dbg !1932

if.end7:                                          ; preds = %if.end3
  call void @register_syscore_ops(ptr noundef @intel_epb_syscore_ops) #13, !dbg !1933
  store i32 0, ptr %retval, align 4, !dbg !1934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1934

err_out_online:                                   ; preds = %if.then6
  call void @llvm.dbg.label(metadata !1909), !dbg !1935
  call void @cpuhp_remove_state(i32 noundef 162) #13, !dbg !1936
  %4 = load i32, ptr %ret, align 4, !dbg !1937
  store i32 %4, ptr %retval, align 4, !dbg !1938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1938

cleanup:                                          ; preds = %err_out_online, %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !1939
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #12, !dbg !1939
  %5 = load i32, ptr %retval, align 4, !dbg !1939
  ret i32 %5, !dbg !1939
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1940 dso_local ptr @x86_match_cpu(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1944 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1952, metadata !DIExpression()), !dbg !1954
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1953, metadata !DIExpression()), !dbg !1955
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1956
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1957
  br i1 %1, label %cond.true, label %cond.false, !dbg !1957

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1958
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1959
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !1960
  %conv = zext i1 %call to i32, !dbg !1960
  br label %cond.end, !dbg !1957

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1961
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1962
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !1963
  %conv2 = zext i1 %call1 to i32, !dbg !1963
  br label %cond.end, !dbg !1957

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1957
  %tobool = icmp ne i32 %cond, 0, !dbg !1957
  ret i1 %tobool, !dbg !1964
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #5 align 16 !dbg !1965 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1972, metadata !DIExpression()), !dbg !1976
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1973, metadata !DIExpression()), !dbg !1977
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !1974, metadata !DIExpression()), !dbg !1978
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !1975, metadata !DIExpression()), !dbg !1979
  %0 = load i32, ptr %state.addr, align 4, !dbg !1980
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1981
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !1982
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !1983
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #13, !dbg !1984
  ret i32 %call, !dbg !1985
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_epb_online(i32 noundef %cpu) #6 align 16 !dbg !1986 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpu_dev = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1988, metadata !DIExpression()), !dbg !1990
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_dev) #12, !dbg !1991
  call void @llvm.dbg.declare(metadata ptr %cpu_dev, metadata !1989, metadata !DIExpression()), !dbg !1992
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1993
  %call = call ptr @get_cpu_device(i32 noundef %0) #13, !dbg !1994
  store ptr %call, ptr %cpu_dev, align 8, !dbg !1992
  call void @intel_epb_restore() #13, !dbg !1995
  %1 = load i8, ptr @cpuhp_tasks_frozen, align 1, !dbg !1996, !range !1998, !noundef !747
  %tobool = trunc i8 %1 to i1, !dbg !1996
  br i1 %tobool, label %if.end, label %if.then, !dbg !1999

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cpu_dev, align 8, !dbg !2000
  %kobj = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 0, !dbg !2001
  %call1 = call i32 @sysfs_merge_group(ptr noundef %kobj, ptr noundef @intel_epb_attr_group) #13, !dbg !2002
  br label %if.end, !dbg !2002

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_dev) #12, !dbg !2003
  ret i32 0, !dbg !2004
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_epb_offline(i32 noundef %cpu) #6 align 16 !dbg !2005 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpu_dev = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_dev) #12, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %cpu_dev, metadata !2008, metadata !DIExpression()), !dbg !2011
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2012
  %call = call ptr @get_cpu_device(i32 noundef %0) #13, !dbg !2013
  store ptr %call, ptr %cpu_dev, align 8, !dbg !2011
  %1 = load i8, ptr @cpuhp_tasks_frozen, align 1, !dbg !2014, !range !1998, !noundef !747
  %tobool = trunc i8 %1 to i1, !dbg !2014
  br i1 %tobool, label %if.end, label %if.then, !dbg !2016

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cpu_dev, align 8, !dbg !2017
  %kobj = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 0, !dbg !2018
  call void @sysfs_unmerge_group(ptr noundef %kobj, ptr noundef @intel_epb_attr_group) #13, !dbg !2019
  br label %if.end, !dbg !2019

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @intel_epb_save() #13, !dbg !2020
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_dev) #12, !dbg !2021
  ret i32 0, !dbg !2022
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2023 dso_local void @register_syscore_ops(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuhp_remove_state(i32 noundef %state) #5 align 16 !dbg !2027 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2031, metadata !DIExpression()), !dbg !2032
  %0 = load i32, ptr %state.addr, align 4, !dbg !2033
  call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext true) #13, !dbg !2034
  ret void, !dbg !2035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2036 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2040, metadata !DIExpression()), !dbg !2042
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2041, metadata !DIExpression()), !dbg !2043
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2044
  %and = and i64 %0, 63, !dbg !2045
  %shl = shl i64 1, %and, !dbg !2046
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2047
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2048
  %shr = ashr i64 %2, 6, !dbg !2049
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2047
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2047
  %and1 = and i64 %shl, %3, !dbg !2050
  %cmp = icmp ne i64 %and1, 0, !dbg !2051
  ret i1 %cmp, !dbg !2052
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2053 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2055, metadata !DIExpression()), !dbg !2058
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2056, metadata !DIExpression()), !dbg !2059
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !2060
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2057, metadata !DIExpression()), !dbg !2061
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2062
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2063
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !2064, !srcloc !2065
  %3 = icmp ult i8 %2, 2, !dbg !2064
  call void @llvm.assume(i1 %3), !dbg !2064
  store i8 %2, ptr %oldbit, align 1, !dbg !2064
  %4 = load i8, ptr %oldbit, align 1, !dbg !2066, !range !1998, !noundef !747
  %tobool = trunc i8 %4 to i1, !dbg !2066
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !2067
  ret i1 %tobool, !dbg !2068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2069 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2072 dso_local ptr @get_cpu_device(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_epb_restore() #6 align 16 !dbg !332 {
entry:
  %val = alloca i64, align 8
  %pscr_ret__ = alloca i8, align 1
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i8, align 1
  %tmp = alloca i8, align 1
  %tmp2 = alloca i8, align 1
  %epb = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp19 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  %tmp35 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !2076
  call void @llvm.dbg.declare(metadata ptr %val, metadata !336, metadata !DIExpression()), !dbg !2077
  call void @llvm.lifetime.start.p0(i64 1, ptr %pscr_ret__) #12, !dbg !2078
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !337, metadata !DIExpression()), !dbg !2078
  br label %do.body, !dbg !2078

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !2079
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !339, metadata !DIExpression()), !dbg !2079
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2079
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !2078
  br label %do.cond, !dbg !2079

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2079

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %pfo_val__) #12, !dbg !2080
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !343, metadata !DIExpression()), !dbg !2080
  %1 = call i8 asm sideeffect "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) @saved_epb) #12, !dbg !2080, !srcloc !2081
  store i8 %1, ptr %pfo_val__, align 1, !dbg !2080
  %2 = load i8, ptr %pfo_val__, align 1, !dbg !2080
  %conv = zext i8 %2 to i64, !dbg !2080
  %conv1 = trunc i64 %conv to i8, !dbg !2080
  store i8 %conv1, ptr %tmp, align 1, !dbg !2080
  call void @llvm.lifetime.end.p0(i64 1, ptr %pfo_val__) #12, !dbg !2078
  %3 = load i8, ptr %tmp, align 1, !dbg !2080
  store i8 %3, ptr %pscr_ret__, align 1, !dbg !2078
  %4 = load i8, ptr %pscr_ret__, align 1, !dbg !2078
  store i8 %4, ptr %tmp2, align 1, !dbg !2078
  call void @llvm.lifetime.end.p0(i64 1, ptr %pscr_ret__) #12, !dbg !2082
  %5 = load i8, ptr %tmp2, align 1, !dbg !2078
  %conv3 = zext i8 %5 to i64, !dbg !2082
  store i64 %conv3, ptr %val, align 8, !dbg !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr %epb) #12, !dbg !2083
  call void @llvm.dbg.declare(metadata ptr %epb, metadata !345, metadata !DIExpression()), !dbg !2084
  %call = call i64 @native_read_msr(i32 noundef 432) #13, !dbg !2085
  store i64 %call, ptr %epb, align 8, !dbg !2085
  %6 = load i64, ptr %val, align 8, !dbg !2086
  %tobool = icmp ne i64 %6, 0, !dbg !2086
  br i1 %tobool, label %if.then, label %if.else, !dbg !2087

if.then:                                          ; preds = %do.end
  %7 = load i64, ptr %val, align 8, !dbg !2088
  %and = and i64 %7, 15, !dbg !2088
  store i64 %and, ptr %val, align 8, !dbg !2088
  br label %if.end44, !dbg !2090

if.else:                                          ; preds = %do.end
  %8 = load i64, ptr %epb, align 8, !dbg !2091
  %and4 = and i64 %8, 15, !dbg !2092
  store i64 %and4, ptr %val, align 8, !dbg !2093
  %9 = load i64, ptr %val, align 8, !dbg !2094
  %cmp = icmp eq i64 %9, 0, !dbg !2095
  br i1 %cmp, label %if.then6, label %if.end43, !dbg !2096

if.then6:                                         ; preds = %if.else
  %10 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @energ_perf_values, i64 0, i64 2), align 1, !dbg !2097
  %conv7 = zext i8 %10 to i64, !dbg !2097
  store i64 %conv7, ptr %val, align 8, !dbg !2098
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #12, !dbg !2099
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !346, metadata !DIExpression()), !dbg !2099
  store i8 1, ptr %__ret_do_once, align 1, !dbg !2099
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !2100
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !355, metadata !DIExpression()), !dbg !2100
  %11 = load i8, ptr %__ret_do_once, align 1, !dbg !2100, !range !1998, !noundef !747
  %tobool8 = trunc i8 %11 to i1, !dbg !2100
  %lnot = xor i1 %tobool8, true, !dbg !2100
  %lnot9 = xor i1 %lnot, true, !dbg !2100
  %frombool = zext i1 %lnot9 to i8, !dbg !2100
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !2100
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !2100
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !358, metadata !DIExpression()), !dbg !2100
  store i8 0, ptr %__ret_once, align 1, !dbg !2100
  %12 = load i8, ptr %__ret_cond, align 1, !dbg !2101, !range !1998, !noundef !747
  %tobool10 = trunc i8 %12 to i1, !dbg !2101
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !2101

land.rhs:                                         ; preds = %if.then6
  %13 = load i8, ptr @intel_epb_restore.__already_done, align 1, !dbg !2101, !range !1998, !noundef !747
  %tobool12 = trunc i8 %13 to i1, !dbg !2101
  %lnot13 = xor i1 %tobool12, true, !dbg !2101
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then6
  %14 = phi i1 [ false, %if.then6 ], [ %lnot13, %land.rhs ], !dbg !2103
  %lnot14 = xor i1 %14, true, !dbg !2101
  %lnot15 = xor i1 %lnot14, true, !dbg !2101
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !2101
  %conv16 = sext i32 %lnot.ext to i64, !dbg !2101
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !2101
  %tobool17 = icmp ne i64 %expval, 0, !dbg !2101
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !2100

if.then18:                                        ; preds = %land.end
  store i8 1, ptr @intel_epb_restore.__already_done, align 1, !dbg !2104
  store i8 1, ptr %__ret_once, align 1, !dbg !2104
  br label %if.end, !dbg !2104

if.end:                                           ; preds = %if.then18, %land.end
  %15 = load i8, ptr %__ret_once, align 1, !dbg !2100, !range !1998, !noundef !747
  %tobool20 = trunc i8 %15 to i1, !dbg !2100
  %lnot21 = xor i1 %tobool20, true, !dbg !2100
  %lnot23 = xor i1 %lnot21, true, !dbg !2100
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !2100
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !2100
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !2100
  store i64 %expval26, ptr %tmp19, align 8, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !2106
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !2106
  %16 = load i64, ptr %tmp19, align 8, !dbg !2100
  %tobool27 = icmp ne i64 %16, 0, !dbg !2106
  br i1 %tobool27, label %if.then28, label %if.end34, !dbg !2099

if.then28:                                        ; preds = %if.end
  br label %do.body29, !dbg !2107

do.body29:                                        ; preds = %if.then28
  br label %do.cond30, !dbg !2109

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !2109

do.end31:                                         ; preds = %do.cond30
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #11, !dbg !2107
  store i32 %call33, ptr %tmp32, align 4, !dbg !2109
  %17 = load i32, ptr %tmp32, align 4, !dbg !2107
  br label %if.end34, !dbg !2106

if.end34:                                         ; preds = %do.end31, %if.end
  %18 = load i8, ptr %__ret_do_once, align 1, !dbg !2099, !range !1998, !noundef !747
  %tobool36 = trunc i8 %18 to i1, !dbg !2099
  %lnot37 = xor i1 %tobool36, true, !dbg !2099
  %lnot39 = xor i1 %lnot37, true, !dbg !2099
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !2099
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !2099
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !2099
  store i64 %expval42, ptr %tmp35, align 8, !dbg !2106
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #12, !dbg !2111
  %19 = load i64, ptr %tmp35, align 8, !dbg !2099
  br label %if.end43, !dbg !2112

if.end43:                                         ; preds = %if.end34, %if.else
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then
  %20 = load i64, ptr %epb, align 8, !dbg !2113
  %and45 = and i64 %20, -16, !dbg !2114
  %21 = load i64, ptr %val, align 8, !dbg !2115
  %or = or i64 %and45, %21, !dbg !2116
  call void @wrmsrl(i32 noundef 432, i64 noundef %or) #13, !dbg !2117
  call void @llvm.lifetime.end.p0(i64 8, ptr %epb) #12, !dbg !2118
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !2118
  ret void, !dbg !2118
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2119 dso_local i32 @sysfs_merge_group(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #5 align 16 !dbg !2122 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !2130
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2128, metadata !DIExpression()), !dbg !2131
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2132
  %call = call i64 @__rdmsr(i32 noundef %0) #13, !dbg !2133
  store i64 %call, ptr %val, align 8, !dbg !2134
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #13, !dbg !2135
  br i1 %call1, label %if.then, label %if.end, !dbg !2137

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !2138
  %2 = load i64, ptr %val, align 8, !dbg !2139
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #13, !dbg !2140
  br label %if.end, !dbg !2140

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !2141
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !2142
  ret i64 %3, !dbg !2143
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2144 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #5 align 16 !dbg !2148 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2152, metadata !DIExpression()), !dbg !2154
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2153, metadata !DIExpression()), !dbg !2155
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2156
  %1 = load i64, ptr %val.addr, align 8, !dbg !2157
  %and = and i64 %1, 4294967295, !dbg !2158
  %conv = trunc i64 %and to i32, !dbg !2159
  %2 = load i64, ptr %val.addr, align 8, !dbg !2160
  %shr = lshr i64 %2, 32, !dbg !2161
  %conv1 = trunc i64 %shr to i32, !dbg !2162
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #13, !dbg !2163
  ret void, !dbg !2164
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #4 align 16 !dbg !2165 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2167, metadata !DIExpression()), !dbg !2170
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %low, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %high, metadata !2169, metadata !DIExpression()), !dbg !2171
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2172
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !2173, !srcloc !2174
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !2173
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !2173
  store i64 %asmresult, ptr %low, align 8, !dbg !2173
  store i64 %asmresult1, ptr %high, align 8, !dbg !2173
  %2 = load i64, ptr %low, align 8, !dbg !2175
  %3 = load i64, ptr %high, align 8, !dbg !2175
  %shl = shl i64 %3, 32, !dbg !2175
  %or = or i64 %2, %shl, !dbg !2175
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !2176
  ret i64 %or, !dbg !2177
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !2178 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2194, metadata !DIExpression()), !dbg !2195
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2196
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !2197
  ret i1 %call, !dbg !2198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2199 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !2202 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2207, metadata !DIExpression()), !dbg !2210
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2208, metadata !DIExpression()), !dbg !2211
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2212
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2213, !range !1998, !noundef !747
  %tobool = trunc i8 %1 to i1, !dbg !2213
  %conv = zext i1 %tobool to i32, !dbg !2213
  %or = or i32 2, %conv, !dbg !2214
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !2215, !srcloc !2216

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2217
  br label %return, !dbg !2217

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2209), !dbg !2218
  store i1 true, ptr %retval, align 1, !dbg !2219
  br label %return, !dbg !2219

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2220
  ret i1 %2, !dbg !2220
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #5 align 16 !dbg !2221 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2225, metadata !DIExpression()), !dbg !2228
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !2226, metadata !DIExpression()), !dbg !2229
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !2227, metadata !DIExpression()), !dbg !2230
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2231
  %1 = load i32, ptr %low.addr, align 4, !dbg !2232
  %2 = load i32, ptr %high.addr, align 4, !dbg !2233
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #13, !dbg !2234
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #13, !dbg !2235
  br i1 %call, label %if.then, label %if.end, !dbg !2237

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !2238
  %4 = load i32, ptr %high.addr, align 4, !dbg !2239
  %conv = zext i32 %4 to i64, !dbg !2240
  %shl = shl i64 %conv, 32, !dbg !2241
  %5 = load i32, ptr %low.addr, align 4, !dbg !2242
  %conv1 = zext i32 %5 to i64, !dbg !2242
  %or = or i64 %shl, %conv1, !dbg !2243
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #13, !dbg !2244
  br label %if.end, !dbg !2244

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2245
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !2246 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2248, metadata !DIExpression()), !dbg !2251
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !2249, metadata !DIExpression()), !dbg !2252
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !2250, metadata !DIExpression()), !dbg !2253
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2254
  %1 = load i32, ptr %low.addr, align 4, !dbg !2255
  %2 = load i32, ptr %high.addr, align 4, !dbg !2256
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #12, !dbg !2257, !srcloc !2258
  ret void, !dbg !2259
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2260 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @energy_perf_bias_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #6 align 16 !dbg !2261 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %epb = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2263, metadata !DIExpression()), !dbg !2269
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2264, metadata !DIExpression()), !dbg !2270
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2265, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !2272
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2266, metadata !DIExpression()), !dbg !2273
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2274
  %id = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27, !dbg !2275
  %1 = load i32, ptr %id, align 8, !dbg !2275
  store i32 %1, ptr %cpu, align 4, !dbg !2273
  call void @llvm.lifetime.start.p0(i64 8, ptr %epb) #12, !dbg !2276
  call void @llvm.dbg.declare(metadata ptr %epb, metadata !2267, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2278
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2268, metadata !DIExpression()), !dbg !2279
  %2 = load i32, ptr %cpu, align 4, !dbg !2280
  %call = call i32 @rdmsrl_on_cpu(i32 noundef %2, i32 noundef 432, ptr noundef %epb) #13, !dbg !2281
  store i32 %call, ptr %ret, align 4, !dbg !2282
  %3 = load i32, ptr %ret, align 4, !dbg !2283
  %cmp = icmp slt i32 %3, 0, !dbg !2285
  br i1 %cmp, label %if.then, label %if.end, !dbg !2286

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !2287
  %conv = sext i32 %4 to i64, !dbg !2287
  store i64 %conv, ptr %retval, align 8, !dbg !2288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2288

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !2289
  %6 = load i64, ptr %epb, align 8, !dbg !2290
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.3, i64 noundef %6) #13, !dbg !2291
  %conv2 = sext i32 %call1 to i64, !dbg !2291
  store i64 %conv2, ptr %retval, align 8, !dbg !2292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2292

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2293
  call void @llvm.lifetime.end.p0(i64 8, ptr %epb) #12, !dbg !2293
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !2293
  %7 = load i64, ptr %retval, align 8, !dbg !2293
  ret i64 %7, !dbg !2293
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @energy_perf_bias_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #6 align 16 !dbg !2294 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %cpu = alloca i32, align 4
  %epb = alloca i64, align 8
  %val = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2296, metadata !DIExpression()), !dbg !2304
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2297, metadata !DIExpression()), !dbg !2305
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2298, metadata !DIExpression()), !dbg !2306
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2299, metadata !DIExpression()), !dbg !2307
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !2308
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2300, metadata !DIExpression()), !dbg !2309
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2310
  %id = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27, !dbg !2311
  %1 = load i32, ptr %id, align 8, !dbg !2311
  store i32 %1, ptr %cpu, align 4, !dbg !2309
  call void @llvm.lifetime.start.p0(i64 8, ptr %epb) #12, !dbg !2312
  call void @llvm.dbg.declare(metadata ptr %epb, metadata !2301, metadata !DIExpression()), !dbg !2313
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !2312
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2302, metadata !DIExpression()), !dbg !2314
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2303, metadata !DIExpression()), !dbg !2316
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !2317
  %call = call i32 @__sysfs_match_string(ptr noundef @energy_perf_strings, i64 noundef 5, ptr noundef %2) #13, !dbg !2318
  store i32 %call, ptr %ret, align 4, !dbg !2319
  %3 = load i32, ptr %ret, align 4, !dbg !2320
  %cmp = icmp sge i32 %3, 0, !dbg !2322
  br i1 %cmp, label %if.then, label %if.else, !dbg !2323

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !2324
  %idxprom = sext i32 %4 to i64, !dbg !2325
  %arrayidx = getelementptr [5 x i8], ptr @energ_perf_values, i64 0, i64 %idxprom, !dbg !2325
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2325
  %conv = zext i8 %5 to i64, !dbg !2325
  store i64 %conv, ptr %val, align 8, !dbg !2326
  br label %if.end5, !dbg !2327

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !2328
  %call1 = call i32 @kstrtou64(ptr noundef %6, i32 noundef 0, ptr noundef %val) #13, !dbg !2330
  %tobool = icmp ne i32 %call1, 0, !dbg !2330
  br i1 %tobool, label %if.then4, label %lor.lhs.false, !dbg !2331

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i64, ptr %val, align 8, !dbg !2332
  %cmp2 = icmp ugt i64 %7, 15, !dbg !2333
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !2334

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  store i64 -22, ptr %retval, align 8, !dbg !2335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2335

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %8 = load i32, ptr %cpu, align 4, !dbg !2336
  %call6 = call i32 @rdmsrl_on_cpu(i32 noundef %8, i32 noundef 432, ptr noundef %epb) #13, !dbg !2337
  store i32 %call6, ptr %ret, align 4, !dbg !2338
  %9 = load i32, ptr %ret, align 4, !dbg !2339
  %cmp7 = icmp slt i32 %9, 0, !dbg !2341
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !2342

if.then9:                                         ; preds = %if.end5
  %10 = load i32, ptr %ret, align 4, !dbg !2343
  %conv10 = sext i32 %10 to i64, !dbg !2343
  store i64 %conv10, ptr %retval, align 8, !dbg !2344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2344

if.end11:                                         ; preds = %if.end5
  %11 = load i32, ptr %cpu, align 4, !dbg !2345
  %12 = load i64, ptr %epb, align 8, !dbg !2346
  %and = and i64 %12, -16, !dbg !2347
  %13 = load i64, ptr %val, align 8, !dbg !2348
  %or = or i64 %and, %13, !dbg !2349
  %call12 = call i32 @wrmsrl_on_cpu(i32 noundef %11, i32 noundef 432, i64 noundef %or) #13, !dbg !2350
  store i32 %call12, ptr %ret, align 4, !dbg !2351
  %14 = load i32, ptr %ret, align 4, !dbg !2352
  %cmp13 = icmp slt i32 %14, 0, !dbg !2354
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !2355

if.then15:                                        ; preds = %if.end11
  %15 = load i32, ptr %ret, align 4, !dbg !2356
  %conv16 = sext i32 %15 to i64, !dbg !2356
  store i64 %conv16, ptr %retval, align 8, !dbg !2357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2357

if.end17:                                         ; preds = %if.end11
  %16 = load i64, ptr %count.addr, align 8, !dbg !2358
  store i64 %16, ptr %retval, align 8, !dbg !2359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2359

cleanup:                                          ; preds = %if.end17, %if.then15, %if.then9, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2360
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !2360
  call void @llvm.lifetime.end.p0(i64 8, ptr %epb) #12, !dbg !2360
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !2360
  %17 = load i64, ptr %retval, align 8, !dbg !2360
  ret i64 %17, !dbg !2360
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2361 dso_local i32 @rdmsrl_on_cpu(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2364 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2368 dso_local i32 @__sysfs_match_string(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtou64(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !2373 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2378, metadata !DIExpression()), !dbg !2381
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !2379, metadata !DIExpression()), !dbg !2382
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2380, metadata !DIExpression()), !dbg !2383
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2384
  %1 = load i32, ptr %base.addr, align 4, !dbg !2385
  %2 = load ptr, ptr %res.addr, align 8, !dbg !2386
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #13, !dbg !2387
  ret i32 %call, !dbg !2388
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2389 dso_local i32 @wrmsrl_on_cpu(i32 noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2392 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2396 dso_local void @sysfs_unmerge_group(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_epb_save() #6 align 16 !dbg !2399 {
entry:
  %epb = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %epb) #12, !dbg !2407
  call void @llvm.dbg.declare(metadata ptr %epb, metadata !2401, metadata !DIExpression()), !dbg !2408
  %call = call i64 @native_read_msr(i32 noundef 432) #13, !dbg !2409
  store i64 %call, ptr %epb, align 8, !dbg !2409
  br label %do.body, !dbg !2410

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2411

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !2412
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2402, metadata !DIExpression()), !dbg !2412
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2412
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2412
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !2411
  br label %do.cond, !dbg !2412

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2412

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !2411

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %pto_val__) #12, !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2405, metadata !DIExpression()), !dbg !2413
  %1 = load i64, ptr %epb, align 8, !dbg !2413
  %and = and i64 %1, 15, !dbg !2413
  %or = or i64 %and, 16, !dbg !2413
  %and3 = and i64 %or, 255, !dbg !2413
  %conv = trunc i64 %and3 to i8, !dbg !2413
  store i8 %conv, ptr %pto_val__, align 1, !dbg !2413
  %2 = load i8, ptr %pto_val__, align 1, !dbg !2413
  call void asm sideeffect "movb $1, %gs:$0", "=*m,qi,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) @saved_epb, i8 %2, ptr elementtype(i8) @saved_epb) #12, !dbg !2413, !srcloc !2414
  call void @llvm.lifetime.end.p0(i64 1, ptr %pto_val__) #12, !dbg !2411
  br label %do.cond4, !dbg !2413

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !2413

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !2411

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !2411

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.end.p0(i64 8, ptr %epb) #12, !dbg !2415
  ret i32 0, !dbg !2416
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2417 dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind }
attributes #13 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900}
!llvm.ident = !{!1901}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_intel_epb__203_240_intel_epb_init4204", scope: !2, file: !3, line: 240, type: !285, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.intel_epb.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/intel_epb\22 -D KBUILD_BASENAME=\22intel_epb\22 -D KBUILD_MODNAME=\22intel_epb\22 -D __KBUILD_MODNAME=kmod_intel_epb -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/intel_epb.ll arch/x86/kernel/cpu/intel_epb.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !284, globals: !299, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/intel_epb.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6aa57da6f8b57dbdaecebd15a1be6684")
!4 = !{!5, !13, !208, !213, !219, !226, !232, !239, !244, !252, !259, !268, !273, !278}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "energy_perf_value_index", file: !3, line: 62, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "EPB_INDEX_PERFORMANCE", value: 0)
!9 = !DIEnumerator(name: "EPB_INDEX_BALANCE_PERFORMANCE", value: 1)
!10 = !DIEnumerator(name: "EPB_INDEX_NORMAL", value: 2)
!11 = !DIEnumerator(name: "EPB_INDEX_BALANCE_POWERSAVE", value: 3)
!12 = !DIEnumerator(name: "EPB_INDEX_POWERSAVE", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !14, line: 57, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!17 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!18 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!19 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!20 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!21 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!22 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!23 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!24 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!25 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!26 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!27 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!28 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!29 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!30 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!31 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!32 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!33 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!34 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!35 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!36 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!37 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!38 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!39 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!40 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!41 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!42 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!43 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!44 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!45 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!46 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!47 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!48 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!49 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!50 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!51 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!52 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!53 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!54 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!55 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!56 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!57 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!58 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!59 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!60 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!61 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!62 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!63 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!64 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!65 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!66 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!67 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!68 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!69 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!70 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!71 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!72 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!73 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!74 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!75 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!76 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!77 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!78 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!79 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!80 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!81 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!82 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!83 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!84 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!85 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!86 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!87 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!88 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!89 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!90 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!91 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!92 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!93 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!94 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!95 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!96 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!97 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!98 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!99 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!100 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!101 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!102 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!103 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!104 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!105 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!106 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!107 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!108 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!109 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!110 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!111 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!112 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!113 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!114 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!115 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!116 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!117 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!118 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!119 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!120 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!121 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!122 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!123 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!124 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!125 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!126 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!127 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!128 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!129 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!130 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!131 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!132 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!133 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!134 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!135 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!136 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!137 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!138 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!139 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!140 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!141 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!142 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!143 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!144 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!145 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!146 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!147 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!148 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!149 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!150 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!151 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!152 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!153 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!154 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!155 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!156 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!157 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!158 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!159 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!160 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!161 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!178 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!179 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!180 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!181 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!182 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!183 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!194 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!195 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!196 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!197 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!198 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!199 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!200 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!201 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!202 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!203 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!204 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!205 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!206 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!207 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !209, line: 10, baseType: !6, size: 32, elements: !210)
!209 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!210 = !{!211, !212}
!211 = !DIEnumerator(name: "false", value: 0)
!212 = !DIEnumerator(name: "true", value: 1)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !214, line: 26, baseType: !6, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!215 = !{!216, !217, !218}
!216 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!217 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!218 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !220, line: 312, baseType: !6, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!221 = !{!222, !223, !224, !225}
!222 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!223 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!224 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!225 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !227, line: 45, baseType: !6, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!230 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!231 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !233, line: 487, baseType: !6, size: 32, elements: !234)
!233 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!234 = !{!235, !236, !237, !238}
!235 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!236 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!237 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!238 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !240, line: 65, baseType: !6, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!241 = !{!242, !243}
!242 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!243 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !245, line: 620, baseType: !6, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!246 = !{!247, !248, !249, !250, !251}
!247 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!248 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!249 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!250 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!251 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !245, line: 597, baseType: !15, size: 32, elements: !253)
!253 = !{!254, !255, !256, !257, !258}
!254 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!255 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!256 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!257 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!258 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !233, line: 547, baseType: !6, size: 32, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267}
!261 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!262 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!263 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!264 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!265 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!266 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!267 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !233, line: 564, baseType: !6, size: 32, elements: !269)
!269 = !{!270, !271, !272}
!270 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!271 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!272 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !233, line: 577, baseType: !6, size: 32, elements: !274)
!274 = !{!275, !276, !277}
!275 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!276 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!277 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !233, line: 503, baseType: !6, size: 32, elements: !279)
!279 = !{!280, !281, !282, !283}
!280 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!281 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!282 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!283 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!284 = !{!285, !15, !286, !287, !288, !289, !294, !296}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !290, line: 17, baseType: !291)
!290 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !292, line: 21, baseType: !293)
!292 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!293 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !290, line: 21, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !292, line: 27, baseType: !6)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !290, line: 23, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !292, line: 31, baseType: !298)
!298 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!299 = !{!0, !300, !306, !325, !330, !359, !364, !366, !1016, !1021, !1026, !1855, !1860, !1865, !1870, !1873, !1878, !1880, !1884}
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 168, elements: !304)
!303 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!304 = !{!305}
!305 = !DISubrange(count: 21)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "intel_epb_normal", scope: !2, file: !3, line: 206, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 768, elements: !323)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_cpu_id", file: !311, line: 687, size: 192, elements: !312)
!311 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!312 = !{!313, !316, !317, !318, !319, !320, !321}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !310, file: !311, line: 688, baseType: !314, size: 16)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !292, line: 24, baseType: !315)
!315 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !310, file: !311, line: 689, baseType: !314, size: 16, offset: 16)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !310, file: !311, line: 690, baseType: !314, size: 16, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "steppings", scope: !310, file: !311, line: 691, baseType: !314, size: 16, offset: 48)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !310, file: !311, line: 692, baseType: !314, size: 16, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !311, line: 694, baseType: !314, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !310, file: !311, line: 695, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !311, line: 15, baseType: !287)
!323 = !{!324}
!324 = !DISubrange(count: 4)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "energ_perf_values", scope: !2, file: !3, line: 70, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 40, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 5)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "__already_done", scope: !332, file: !3, line: 111, type: !352, isLocal: true, isDefinition: true)
!332 = distinct !DISubprogram(name: "intel_epb_restore", scope: !3, file: !3, line: 92, type: !333, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{null}
!335 = !{!336, !337, !339, !343, !345, !346, !355, !358}
!336 = !DILocalVariable(name: "val", scope: !332, file: !3, line: 94, type: !296)
!337 = !DILocalVariable(name: "pscr_ret__", scope: !338, file: !3, line: 94, type: !289)
!338 = distinct !DILexicalBlock(scope: !332, file: !3, line: 94, column: 12)
!339 = !DILocalVariable(name: "__vpp_verify", scope: !340, file: !3, line: 94, type: !341)
!340 = distinct !DILexicalBlock(scope: !338, file: !3, line: 94, column: 12)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!343 = !DILocalVariable(name: "pfo_val__", scope: !344, file: !3, line: 94, type: !289)
!344 = distinct !DILexicalBlock(scope: !338, file: !3, line: 94, column: 12)
!345 = !DILocalVariable(name: "epb", scope: !332, file: !3, line: 95, type: !296)
!346 = !DILocalVariable(name: "__ret_do_once", scope: !347, file: !3, line: 111, type: !352)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 111, column: 4)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 109, column: 44)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 109, column: 7)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 100, column: 9)
!351 = distinct !DILexicalBlock(scope: !332, file: !3, line: 98, column: 6)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !353, line: 35, baseType: !354)
!353 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!354 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!355 = !DILocalVariable(name: "__ret_cond", scope: !356, file: !3, line: 111, type: !352)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 111, column: 4)
!357 = distinct !DILexicalBlock(scope: !347, file: !3, line: 111, column: 4)
!358 = !DILocalVariable(name: "__ret_once", scope: !356, file: !3, line: 111, type: !352)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 448, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 56)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "saved_epb", scope: !2, file: !3, line: 56, type: !289, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "intel_epb_attr_group", scope: !2, file: !3, line: 179, type: !368, isLocal: true, isDefinition: true)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !370, line: 84, size: 320, elements: !371)
!370 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!371 = !{!372, !375, !987, !1012, !1014}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !370, line: 85, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !369, file: !370, line: 86, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !380, !497, !15}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !353, line: 24, baseType: !315)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !382, line: 64, size: 512, elements: !383)
!382 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!383 = !{!384, !385, !391, !392, !474, !566, !972, !982, !983, !984, !985, !986}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !382, line: 65, baseType: !373, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !381, file: !382, line: 66, baseType: !386, size: 128, offset: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !353, line: 190, size: 128, elements: !387)
!387 = !{!388, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !353, line: 191, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !386, file: !353, line: 191, baseType: !389, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !381, file: !382, line: 67, baseType: !380, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !381, file: !382, line: 68, baseType: !393, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !382, line: 168, size: 768, elements: !395)
!395 = !{!396, !397, !433, !434}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !394, file: !382, line: 169, baseType: !386, size: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !394, file: !382, line: 170, baseType: !398, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !399, line: 29, baseType: !400)
!399 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !399, line: 17, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !399, line: 18, baseType: !403, size: 32)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !399, line: 18, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !403, file: !399, line: 19, baseType: !406, size: 32)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !407, line: 14, size: 32, elements: !408)
!407 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !406, file: !407, line: 15, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !411, line: 44, baseType: !412)
!411 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !411, line: 14, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !411, line: 15, baseType: !415, size: 32)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !411, line: 15, size: 32, elements: !416)
!416 = !{!417, !422, !427}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !415, file: !411, line: 16, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !353, line: 174, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 172, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !419, file: !353, line: 173, baseType: !15, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !411, line: 24, baseType: !423, size: 16)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !411, line: 24, size: 16, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !423, file: !411, line: 25, baseType: !289, size: 8)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !423, file: !411, line: 26, baseType: !289, size: 8, offset: 8)
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !411, line: 28, baseType: !428, size: 32)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !411, line: 28, size: 32, elements: !429)
!429 = !{!430, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !428, file: !411, line: 29, baseType: !431, size: 16)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !290, line: 19, baseType: !314)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !428, file: !411, line: 30, baseType: !431, size: 16, offset: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !394, file: !382, line: 171, baseType: !381, size: 512, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !394, file: !382, line: 172, baseType: !435, size: 64, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !382, line: 133, size: 192, elements: !438)
!438 = !{!439, !446, !451}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !437, file: !382, line: 134, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!15, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !437, file: !382, line: 135, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!373, !444}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !437, file: !382, line: 136, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!15, !444, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !382, line: 125, size: 20736, elements: !458)
!458 = !{!459, !464, !468, !469, !473}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !457, file: !382, line: 126, baseType: !460, size: 192)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 192, elements: !462)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!462 = !{!463}
!463 = !DISubrange(count: 3)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !457, file: !382, line: 127, baseType: !465, size: 4096, offset: 192)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 4096, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !457, file: !382, line: 128, baseType: !15, size: 32, offset: 4288)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !457, file: !382, line: 129, baseType: !470, size: 16384, offset: 4320)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 16384, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 2048)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !457, file: !382, line: 130, baseType: !15, size: 32, offset: 20704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !381, file: !382, line: 69, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !382, line: 116, size: 384, elements: !478)
!478 = !{!479, !483, !509, !512, !543, !547}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !477, file: !382, line: 117, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !380}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !477, file: !382, line: 118, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !370, line: 254, size: 128, elements: !487)
!487 = !{!488, !502}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !486, file: !370, line: 255, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !380, !497, !461}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !353, line: 66, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !494, line: 73, baseType: !495)
!494 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !494, line: 15, baseType: !496)
!496 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !370, line: 30, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !370, line: 31, baseType: !373, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !498, file: !370, line: 32, baseType: !379, size: 16, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !486, file: !370, line: 256, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!492, !380, !497, !373, !506}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !353, line: 61, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !494, line: 72, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !494, line: 16, baseType: !287)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !477, file: !382, line: 119, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !477, file: !382, line: 120, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!516, !444}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !214, line: 39, size: 384, elements: !519)
!519 = !{!520, !521, !525, !529, !535, !539}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !214, line: 40, baseType: !213, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !518, file: !214, line: 41, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!352}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !518, file: !214, line: 42, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!285}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !518, file: !214, line: 43, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!341, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !214, line: 19, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !518, file: !214, line: 44, baseType: !536, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!341}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !518, file: !214, line: 45, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !285}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !477, file: !382, line: 121, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!341, !444}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !477, file: !382, line: 122, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !444, !551, !559}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !553, line: 23, baseType: !554)
!553 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 21, size: 32, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !554, file: !553, line: 22, baseType: !557, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !353, line: 37, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !494, line: 49, baseType: !6)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !553, line: 28, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 26, size: 32, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !561, file: !553, line: 27, baseType: !564, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !353, line: 38, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !494, line: 50, baseType: !6)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !381, file: !382, line: 70, baseType: !567, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !569, line: 190, size: 1152, elements: !570)
!569 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!570 = !{!571, !572, !573, !574, !575, !583, !584, !585, !964, !965, !966, !967, !968, !971}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !568, file: !569, line: 191, baseType: !418, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !568, file: !569, line: 192, baseType: !418, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !568, file: !569, line: 202, baseType: !567, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !568, file: !569, line: 203, baseType: !373, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !568, file: !569, line: 205, baseType: !576, size: 192, align: 64, offset: 192)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !577, line: 5, size: 192, align: 64, elements: !578)
!577 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!578 = !{!579, !580, !582}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !576, file: !577, line: 6, baseType: !287, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !576, file: !577, line: 7, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !576, file: !577, line: 8, baseType: !581, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !568, file: !569, line: 207, baseType: !341, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !568, file: !569, line: 208, baseType: !6, size: 32, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !569, line: 209, baseType: !586, size: 256, offset: 512)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !568, file: !569, line: 209, size: 256, elements: !587)
!587 = !{!588, !600, !604}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !586, file: !569, line: 210, baseType: !589, size: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !569, line: 153, size: 256, elements: !590)
!590 = !{!591, !592, !596, !599}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !589, file: !569, line: 154, baseType: !287, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !589, file: !569, line: 156, baseType: !593, size: 64, offset: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !577, line: 12, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !593, file: !577, line: 13, baseType: !581, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !589, file: !569, line: 162, baseType: !597, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !569, line: 162, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !589, file: !569, line: 167, baseType: !287, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !586, file: !569, line: 211, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !569, line: 170, size: 64, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !601, file: !569, line: 171, baseType: !567, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !586, file: !569, line: 212, baseType: !605, size: 256)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !569, line: 174, size: 256, elements: !606)
!606 = !{!607, !959, !962, !963}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !605, file: !569, line: 175, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !569, line: 271, size: 768, elements: !611)
!611 = !{!612, !663, !667, !671, !678, !682, !686, !690, !691, !692, !693, !701}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !610, file: !569, line: 276, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!15, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !569, line: 251, size: 1216, elements: !618)
!618 = !{!619, !620, !624, !628, !629, !651, !652, !653, !654, !655, !656, !657, !658}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !617, file: !569, line: 253, baseType: !567, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !617, file: !569, line: 254, baseType: !621, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !623, line: 537, flags: DIFlagFwdDecl)
!623 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !617, file: !569, line: 255, baseType: !625, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !627, line: 66, flags: DIFlagFwdDecl)
!627 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !617, file: !569, line: 256, baseType: !285, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !617, file: !569, line: 259, baseType: !630, size: 256, offset: 256)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !631, line: 66, size: 256, elements: !632)
!631 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!632 = !{!633, !643, !645, !650}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !630, file: !631, line: 67, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !635, line: 13, baseType: !636)
!635 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !353, line: 181, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 179, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !637, file: !353, line: 180, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !290, line: 22, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !292, line: 30, baseType: !642)
!642 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !630, file: !631, line: 68, baseType: !644, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !407, line: 23, baseType: !406)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !630, file: !631, line: 70, baseType: !646, size: 32, offset: 96)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !647, line: 15, size: 32, elements: !648)
!647 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !646, file: !647, line: 20, baseType: !418, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !630, file: !631, line: 72, baseType: !386, size: 128, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !617, file: !569, line: 260, baseType: !630, size: 256, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !617, file: !569, line: 261, baseType: !15, size: 32, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !617, file: !569, line: 262, baseType: !386, size: 128, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !617, file: !569, line: 263, baseType: !461, size: 64, offset: 960)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !617, file: !569, line: 265, baseType: !506, size: 64, offset: 1024)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !617, file: !569, line: 266, baseType: !352, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !617, file: !569, line: 267, baseType: !352, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !617, file: !569, line: 268, baseType: !659, size: 64, offset: 1152)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !662, line: 694, flags: DIFlagFwdDecl)
!662 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !610, file: !569, line: 277, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !616}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !610, file: !569, line: 290, baseType: !668, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!15, !625, !285}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !610, file: !569, line: 292, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!285, !625, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !353, line: 52, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !494, line: 88, baseType: !642)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !610, file: !569, line: 293, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!285, !625, !285, !675}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !610, file: !569, line: 294, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !625, !285}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !610, file: !569, line: 296, baseType: !687, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!492, !616, !461, !506, !676}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !610, file: !569, line: 306, baseType: !506, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !610, file: !569, line: 313, baseType: !352, size: 8, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !610, file: !569, line: 314, baseType: !687, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !610, file: !569, line: 317, baseType: !694, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !616, !699}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !698, line: 59, baseType: !6)
!698 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !569, line: 31, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !610, file: !569, line: 320, baseType: !702, size: 64, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!15, !616, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !662, line: 625, size: 1344, elements: !707)
!707 = !{!708, !725, !920, !926, !933, !934, !939, !940, !945, !946, !949, !950, !951, !952, !953, !954, !957}
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !662, line: 628, baseType: !709, size: 128)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !662, line: 628, size: 128, elements: !710)
!710 = !{!711, !716}
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !662, line: 629, baseType: !712, size: 128)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !662, line: 629, size: 128, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !712, file: !662, line: 631, baseType: !287, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !712, file: !662, line: 632, baseType: !287, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !709, file: !662, line: 635, baseType: !717, size: 128, align: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !353, line: 232, size: 128, align: 64, elements: !718)
!718 = !{!719, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !353, line: 233, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !717, file: !353, line: 234, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !720}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !706, file: !662, line: 639, baseType: !726, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !662, line: 733, size: 10240, elements: !728)
!728 = !{!729, !916}
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !662, line: 734, baseType: !730, size: 10240)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !662, line: 734, size: 10240, elements: !731)
!731 = !{!732, !736, !750, !754, !755, !756, !757, !758, !759, !767, !768, !769, !775, !776, !777, !778, !779, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !821, !833, !836, !882, !883, !884, !887, !890, !891, !894, !895, !896, !903, !904}
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !662, line: 739, baseType: !733, size: 512, align: 512)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !662, line: 739, size: 512, align: 512, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !733, file: !662, line: 747, baseType: !418, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !730, file: !662, line: 750, baseType: !737, size: 128, offset: 512)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !738, line: 218, size: 128, elements: !739)
!738 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!739 = !{!740, !748, !749}
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !738, line: 219, baseType: !741, size: 32)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !738, line: 219, size: 32, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !741, file: !738, line: 220, baseType: !398, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !741, file: !738, line: 221, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !738, line: 197, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 197, elements: !747)
!747 = !{}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !737, file: !738, line: 223, baseType: !6, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !737, file: !738, line: 224, baseType: !285, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !730, file: !662, line: 752, baseType: !751, size: 64, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!287, !621, !287, !287, !287, !287}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !730, file: !662, line: 756, baseType: !287, size: 64, offset: 704)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !730, file: !662, line: 757, baseType: !287, size: 64, offset: 768)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !730, file: !662, line: 760, baseType: !287, size: 64, offset: 832)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !730, file: !662, line: 761, baseType: !287, size: 64, offset: 896)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !730, file: !662, line: 763, baseType: !287, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !730, file: !662, line: 764, baseType: !760, size: 64, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !623, line: 299, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 299, size: 64, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !762, file: !623, line: 299, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !766, line: 18, baseType: !287)
!766 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !730, file: !662, line: 773, baseType: !418, size: 32, offset: 1088)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !730, file: !662, line: 785, baseType: !418, size: 32, offset: 1120)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !730, file: !662, line: 795, baseType: !770, size: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !662, line: 726, size: 128, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !771, file: !662, line: 727, baseType: !296, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !771, file: !662, line: 728, baseType: !15, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !730, file: !662, line: 801, baseType: !287, size: 64, offset: 1216)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !730, file: !662, line: 804, baseType: !634, size: 64, offset: 1280)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !730, file: !662, line: 806, baseType: !15, size: 32, offset: 1344)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !730, file: !662, line: 808, baseType: !398, size: 32, offset: 1376)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !730, file: !662, line: 823, baseType: !780, size: 320, offset: 1408)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !781, line: 48, size: 320, elements: !782)
!781 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!782 = !{!783, !784, !785, !786, !787}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !780, file: !781, line: 49, baseType: !634, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !780, file: !781, line: 55, baseType: !634, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !780, file: !781, line: 57, baseType: !646, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !780, file: !781, line: 59, baseType: !644, size: 32, offset: 160)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !780, file: !781, line: 60, baseType: !386, size: 128, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !730, file: !662, line: 825, baseType: !386, size: 128, offset: 1728)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !730, file: !662, line: 845, baseType: !15, size: 32, offset: 1856)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !730, file: !662, line: 849, baseType: !287, size: 64, offset: 1920)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !730, file: !662, line: 850, baseType: !287, size: 64, offset: 1984)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !730, file: !662, line: 852, baseType: !287, size: 64, offset: 2048)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !730, file: !662, line: 853, baseType: !287, size: 64, offset: 2112)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !730, file: !662, line: 854, baseType: !636, size: 64, offset: 2176)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !730, file: !662, line: 855, baseType: !287, size: 64, offset: 2240)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !730, file: !662, line: 856, baseType: !287, size: 64, offset: 2304)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !730, file: !662, line: 857, baseType: !287, size: 64, offset: 2368)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !730, file: !662, line: 858, baseType: !287, size: 64, offset: 2432)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !730, file: !662, line: 865, baseType: !800, size: 32, offset: 2496)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !801, line: 69, baseType: !802)
!801 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !801, line: 64, size: 32, elements: !803)
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !802, file: !801, line: 65, baseType: !6, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !730, file: !662, line: 867, baseType: !398, size: 32, offset: 2528)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !730, file: !662, line: 869, baseType: !287, size: 64, offset: 2560)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !730, file: !662, line: 869, baseType: !287, size: 64, offset: 2624)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !730, file: !662, line: 869, baseType: !287, size: 64, offset: 2688)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !730, file: !662, line: 869, baseType: !287, size: 64, offset: 2752)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !730, file: !662, line: 870, baseType: !287, size: 64, offset: 2816)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !730, file: !662, line: 870, baseType: !287, size: 64, offset: 2880)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !730, file: !662, line: 870, baseType: !287, size: 64, offset: 2944)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !730, file: !662, line: 871, baseType: !287, size: 64, offset: 3008)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !730, file: !662, line: 871, baseType: !287, size: 64, offset: 3072)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !730, file: !662, line: 871, baseType: !287, size: 64, offset: 3136)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !730, file: !662, line: 871, baseType: !287, size: 64, offset: 3200)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !730, file: !662, line: 873, baseType: !818, size: 3328, offset: 3264)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 3328, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 52)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !730, file: !662, line: 875, baseType: !822, size: 1280, offset: 6592)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 1280, elements: !323)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !824, line: 22, size: 320, elements: !825)
!824 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!825 = !{!826, !827, !828, !829}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !823, file: !824, line: 23, baseType: !644, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !823, file: !824, line: 24, baseType: !640, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !823, file: !824, line: 26, baseType: !386, size: 128, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !823, file: !824, line: 28, baseType: !830, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !290, line: 20, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !292, line: 26, baseType: !15)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !730, file: !662, line: 877, baseType: !834, size: 64, offset: 7872)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !662, line: 877, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !730, file: !662, line: 880, baseType: !837, size: 1088, offset: 7936)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !838, line: 72, baseType: !839)
!838 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !838, line: 23, size: 1088, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !848, !849, !850, !851, !876, !877, !878}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !839, file: !838, line: 28, baseType: !296, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !839, file: !838, line: 38, baseType: !636, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !839, file: !838, line: 40, baseType: !287, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !839, file: !838, line: 43, baseType: !780, size: 320, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !839, file: !838, line: 44, baseType: !846, size: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !838, line: 44, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !839, file: !838, line: 48, baseType: !287, size: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !839, file: !838, line: 59, baseType: !630, size: 256, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !839, file: !838, line: 60, baseType: !285, size: 64, offset: 896)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !839, file: !838, line: 61, baseType: !852, size: 64, offset: 960)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !855, line: 13, size: 1216, elements: !856)
!855 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !854, file: !855, line: 14, baseType: !285, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !854, file: !855, line: 15, baseType: !287, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !854, file: !855, line: 17, baseType: !287, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !854, file: !855, line: 17, baseType: !287, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !854, file: !855, line: 18, baseType: !287, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !854, file: !855, line: 18, baseType: !287, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !854, file: !855, line: 19, baseType: !341, size: 64, offset: 384)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !854, file: !855, line: 21, baseType: !496, size: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !854, file: !855, line: 23, baseType: !496, size: 64, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !854, file: !855, line: 24, baseType: !496, size: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !854, file: !855, line: 25, baseType: !496, size: 64, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !854, file: !855, line: 26, baseType: !496, size: 64, offset: 704)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !854, file: !855, line: 27, baseType: !496, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !854, file: !855, line: 28, baseType: !496, size: 64, offset: 832)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !854, file: !855, line: 29, baseType: !496, size: 64, offset: 896)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !854, file: !855, line: 30, baseType: !496, size: 64, offset: 960)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !854, file: !855, line: 31, baseType: !496, size: 64, offset: 1024)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !854, file: !855, line: 32, baseType: !496, size: 64, offset: 1088)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !854, file: !855, line: 33, baseType: !496, size: 64, offset: 1152)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !839, file: !838, line: 63, baseType: !418, size: 32, offset: 1024)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !839, file: !838, line: 69, baseType: !431, size: 16, offset: 1056)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !839, file: !838, line: 70, baseType: !879, size: 16, offset: 1072)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !290, line: 18, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !292, line: 23, baseType: !881)
!881 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !662, line: 882, baseType: !287, size: 64, offset: 9024)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !730, file: !662, line: 885, baseType: !398, size: 32, offset: 9088)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !730, file: !662, line: 886, baseType: !885, size: 64, offset: 9152)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !662, line: 732, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !730, file: !662, line: 901, baseType: !888, size: 64, offset: 9216)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !553, line: 18, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !730, file: !662, line: 904, baseType: !621, size: 64, offset: 9280)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !730, file: !662, line: 906, baseType: !892, size: 64, offset: 9344)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !662, line: 906, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !730, file: !662, line: 930, baseType: !418, size: 32, offset: 9408)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !730, file: !662, line: 933, baseType: !418, size: 32, offset: 9440)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !730, file: !662, line: 935, baseType: !897, size: 64, offset: 9472)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !898, line: 103, size: 64, elements: !899)
!898 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !897, file: !898, line: 104, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !898, line: 101, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !730, file: !662, line: 940, baseType: !634, size: 64, offset: 9536)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !730, file: !662, line: 942, baseType: !905, size: 256, offset: 9600)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !906, line: 98, size: 256, elements: !907)
!906 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !905, file: !906, line: 99, baseType: !634, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !905, file: !906, line: 100, baseType: !386, size: 128, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !905, file: !906, line: 101, baseType: !911, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !906, line: 21, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !915}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !727, file: !662, line: 986, baseType: !917, offset: 10240)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: -1)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !706, file: !662, line: 640, baseType: !921, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !623, line: 297, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !623, line: 297, size: 64, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !922, file: !623, line: 297, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !766, line: 19, baseType: !287)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !662, line: 646, baseType: !927, size: 64, offset: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !662, line: 646, size: 64, elements: !928)
!928 = !{!929, !932}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !927, file: !662, line: 647, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !662, line: 542, baseType: !287)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !927, file: !662, line: 648, baseType: !931, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !706, file: !662, line: 666, baseType: !15, size: 32, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !706, file: !662, line: 667, baseType: !935, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !662, line: 579, size: 320, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !662, line: 580, baseType: !780, size: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !706, file: !662, line: 670, baseType: !352, size: 8, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !706, file: !662, line: 681, baseType: !941, size: 256, offset: 512)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !706, file: !662, line: 678, size: 256, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !941, file: !662, line: 679, baseType: !576, size: 192, align: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !941, file: !662, line: 680, baseType: !287, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !706, file: !662, line: 689, baseType: !386, size: 128, offset: 768)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !706, file: !662, line: 691, baseType: !947, size: 64, offset: 896)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !662, line: 691, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !706, file: !662, line: 694, baseType: !659, size: 64, offset: 960)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !706, file: !662, line: 697, baseType: !287, size: 64, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !706, file: !662, line: 699, baseType: !621, size: 64, offset: 1088)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !706, file: !662, line: 700, baseType: !285, size: 64, offset: 1152)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !706, file: !662, line: 711, baseType: !634, size: 64, offset: 1216)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !706, file: !662, line: 717, baseType: !955, size: 64, offset: 1280)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !627, line: 54, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !706, file: !662, line: 722, baseType: !958, offset: 1344)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !662, line: 570, elements: !747)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !605, file: !569, line: 176, baseType: !960, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !569, line: 35, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !605, file: !569, line: 177, baseType: !676, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !605, file: !569, line: 178, baseType: !567, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !568, file: !569, line: 215, baseType: !285, size: 64, offset: 768)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !568, file: !569, line: 221, baseType: !296, size: 64, offset: 832)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !569, line: 223, baseType: !315, size: 16, offset: 896)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !568, file: !569, line: 224, baseType: !379, size: 16, offset: 912)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !568, file: !569, line: 225, baseType: !969, size: 64, offset: 960)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !569, line: 36, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !568, file: !569, line: 227, baseType: !717, size: 128, align: 64, offset: 1024)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !381, file: !382, line: 71, baseType: !973, size: 32, offset: 448)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !974, line: 19, size: 32, elements: !975)
!974 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !973, file: !974, line: 20, baseType: !977, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !978, line: 113, baseType: !979)
!978 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !978, line: 111, size: 32, elements: !980)
!980 = !{!981}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !979, file: !978, line: 112, baseType: !418, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !381, file: !382, line: 73, baseType: !6, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !381, file: !382, line: 74, baseType: !6, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !381, file: !382, line: 75, baseType: !6, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !381, file: !382, line: 76, baseType: !6, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !381, file: !382, line: 77, baseType: !6, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !369, file: !370, line: 88, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!379, !380, !991, !15}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !370, line: 175, size: 512, elements: !993)
!993 = !{!994, !995, !996, !997, !1003, !1007, !1008}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !992, file: !370, line: 176, baseType: !498, size: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !370, line: 177, baseType: !506, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !992, file: !370, line: 178, baseType: !285, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !992, file: !370, line: 179, baseType: !998, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !662, line: 32, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !992, file: !370, line: 180, baseType: !1004, size: 64, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!492, !621, !380, !991, !461, !676, !506}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !992, file: !370, line: 182, baseType: !1004, size: 64, offset: 384)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !992, file: !370, line: 184, baseType: !1009, size: 64, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!15, !621, !380, !991, !705}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !369, file: !370, line: 90, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !369, file: !370, line: 91, baseType: !1015, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!1016 = !DIGlobalVariableExpression(var: !1017, expr: !DIExpression())
!1017 = distinct !DIGlobalVariable(name: "intel_epb_attrs", scope: !2, file: !3, line: 174, type: !1018, isLocal: true, isDefinition: true)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 128, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 2)
!1021 = !DIGlobalVariableExpression(var: !1022, expr: !DIExpression())
!1022 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !1023, isLocal: true, isDefinition: true)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 136, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 17)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(name: "dev_attr_energy_perf_bias", scope: !2, file: !3, line: 172, type: !1028, isLocal: true, isDefinition: true)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !233, line: 106, size: 256, elements: !1029)
!1029 = !{!1030, !1031, !1851}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1028, file: !233, line: 107, baseType: !498, size: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1028, file: !233, line: 108, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!492, !1035, !1850, !461}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !233, line: 705, size: 5824, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1043, !1044, !1097, !1553, !1554, !1555, !1556, !1557, !1564, !1734, !1747, !1757, !1761, !1763, !1764, !1765, !1769, !1776, !1777, !1780, !1783, !1787, !1790, !1791, !1794, !1795, !1796, !1797, !1827, !1828, !1829, !1832, !1835, !1844, !1845, !1846, !1847, !1848, !1849}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1036, file: !233, line: 706, baseType: !381, size: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1036, file: !233, line: 707, baseType: !1035, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1036, file: !233, line: 709, baseType: !1041, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !233, line: 37, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1036, file: !233, line: 711, baseType: !373, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1036, file: !233, line: 712, baseType: !1045, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !233, line: 89, size: 384, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1057, !1062, !1066}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !233, line: 90, baseType: !373, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1047, file: !233, line: 91, baseType: !510, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1047, file: !233, line: 92, baseType: !1052, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!15, !1055, !456}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1036)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1047, file: !233, line: 93, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!461, !1055, !1061, !551, !559}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1047, file: !233, line: 95, baseType: !1063, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !1035}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1047, file: !233, line: 97, baseType: !1067, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !245, line: 286, size: 1472, elements: !1070)
!1070 = !{!1071, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1069, file: !245, line: 287, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!15, !1035}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1069, file: !245, line: 288, baseType: !1063, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1069, file: !245, line: 289, baseType: !1072, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1069, file: !245, line: 290, baseType: !1072, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1069, file: !245, line: 291, baseType: !1072, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1069, file: !245, line: 292, baseType: !1072, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1069, file: !245, line: 293, baseType: !1072, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1069, file: !245, line: 294, baseType: !1072, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1069, file: !245, line: 295, baseType: !1072, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1069, file: !245, line: 296, baseType: !1072, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1069, file: !245, line: 297, baseType: !1072, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1069, file: !245, line: 298, baseType: !1072, size: 64, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1069, file: !245, line: 299, baseType: !1072, size: 64, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1069, file: !245, line: 300, baseType: !1072, size: 64, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1069, file: !245, line: 301, baseType: !1072, size: 64, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1069, file: !245, line: 302, baseType: !1072, size: 64, offset: 960)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1069, file: !245, line: 303, baseType: !1072, size: 64, offset: 1024)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1069, file: !245, line: 304, baseType: !1072, size: 64, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1069, file: !245, line: 305, baseType: !1072, size: 64, offset: 1152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1069, file: !245, line: 306, baseType: !1072, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1069, file: !245, line: 307, baseType: !1072, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1069, file: !245, line: 308, baseType: !1072, size: 64, offset: 1344)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1069, file: !245, line: 309, baseType: !1072, size: 64, offset: 1408)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1036, file: !233, line: 714, baseType: !1098, size: 64, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1101, line: 80, size: 1344, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1552}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1100, file: !1101, line: 81, baseType: !373, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1100, file: !1101, line: 82, baseType: !373, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1100, file: !1101, line: 83, baseType: !510, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1100, file: !1101, line: 84, baseType: !510, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1100, file: !1101, line: 85, baseType: !510, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1100, file: !1101, line: 87, baseType: !1109, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!15, !1035, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !227, line: 96, size: 1152, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1485, !1486, !1487, !1488, !1503, !1515, !1516, !1517, !1518, !1519, !1527, !1528, !1529, !1530, !1531, !1532}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1113, file: !227, line: 97, baseType: !373, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1113, file: !227, line: 98, baseType: !1098, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1113, file: !227, line: 100, baseType: !1118, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !220, line: 402, size: 9216, align: 512, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1145, !1171, !1172, !1173, !1174, !1178, !1181, !1182, !1183, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1246, !1250, !1268, !1286, !1287, !1288, !1289, !1298, !1321, !1322, !1325, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1339, !1340, !1446, !1454, !1455, !1456, !1458, !1462, !1463, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1480, !1481, !1482, !1484}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1119, file: !220, line: 403, baseType: !219, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1119, file: !220, line: 406, baseType: !386, size: 128, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1119, file: !220, line: 409, baseType: !361, size: 448, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1119, file: !220, line: 417, baseType: !1125, size: 768, offset: 640)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !220, line: 45, size: 768, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1133}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1125, file: !220, line: 46, baseType: !381, size: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1125, file: !220, line: 47, baseType: !1118, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1125, file: !220, line: 48, baseType: !380, size: 64, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1125, file: !220, line: 49, baseType: !1131, size: 64, offset: 640)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !220, line: 49, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1125, file: !220, line: 50, baseType: !1134, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1136, line: 26, size: 256, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1135, file: !1136, line: 27, baseType: !6, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1135, file: !1136, line: 28, baseType: !1140, size: 192, offset: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1141, line: 43, size: 192, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1140, file: !1141, line: 44, baseType: !644, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1140, file: !1141, line: 45, baseType: !386, size: 128, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1119, file: !220, line: 418, baseType: !1146, size: 64, offset: 1408)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !220, line: 53, size: 448, elements: !1148)
!1148 = !{!1149, !1150, !1155, !1159, !1163, !1167}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1147, file: !220, line: 54, baseType: !498, size: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1147, file: !220, line: 55, baseType: !1151, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!492, !1146, !1154, !461}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1147, file: !220, line: 57, baseType: !1156, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!492, !1146, !1154, !373, !506}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1147, file: !220, line: 59, baseType: !1160, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !1118, !373}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1147, file: !220, line: 60, baseType: !1164, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!15, !1118}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1147, file: !220, line: 61, baseType: !1168, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1118}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1119, file: !220, line: 419, baseType: !373, size: 64, offset: 1472)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1119, file: !220, line: 420, baseType: !373, size: 64, offset: 1536)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1119, file: !220, line: 421, baseType: !380, size: 64, offset: 1600)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1119, file: !220, line: 424, baseType: !1175, size: 64, offset: 1664)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !220, line: 424, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1119, file: !220, line: 425, baseType: !1179, size: 64, offset: 1728)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1119, file: !220, line: 426, baseType: !6, size: 32, offset: 1792)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1119, file: !220, line: 435, baseType: !630, size: 256, offset: 1856)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1119, file: !220, line: 437, baseType: !1184, size: 64, offset: 2112)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1186, line: 69, size: 320, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1187 = !{!1188, !1189, !1190, !1207, !1209, !1213, !1214}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1185, file: !1186, line: 70, baseType: !373, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1185, file: !1186, line: 71, baseType: !1118, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1185, file: !1186, line: 72, baseType: !1191, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1186, line: 47, size: 256, elements: !1194)
!1194 = !{!1195, !1196, !1202, !1206}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1193, file: !1186, line: 49, baseType: !6, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1193, file: !1186, line: 51, baseType: !1197, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!15, !373, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1193, file: !1186, line: 53, baseType: !1203, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!15, !461, !1200}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1193, file: !1186, line: 55, baseType: !540, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1185, file: !1186, line: 73, baseType: !1208, size: 16, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1185, file: !1186, line: 74, baseType: !1210, size: 8, offset: 208)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !290, line: 16, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !292, line: 20, baseType: !1212)
!1212 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !1186, line: 75, baseType: !289, size: 8, offset: 216)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !1186, line: 76, baseType: !1215, size: 64, offset: 256)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !1186, line: 76, size: 64, elements: !1216)
!1216 = !{!1217, !1218, !1225}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1215, file: !1186, line: 77, baseType: !285, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1215, file: !1186, line: 78, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1186, line: 86, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1221, file: !1186, line: 87, baseType: !6, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1221, file: !1186, line: 88, baseType: !461, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1215, file: !1186, line: 79, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1186, line: 92, size: 256, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1234, !1235}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1228, file: !1186, line: 94, baseType: !6, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1228, file: !1186, line: 95, baseType: !6, size: 32, offset: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1228, file: !1186, line: 96, baseType: !1233, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1228, file: !1186, line: 97, baseType: !1191, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1228, file: !1186, line: 98, baseType: !285, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1119, file: !220, line: 438, baseType: !6, size: 32, offset: 2176)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1119, file: !220, line: 441, baseType: !6, size: 32, offset: 2208)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1119, file: !220, line: 442, baseType: !1175, size: 64, offset: 2240)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1119, file: !220, line: 443, baseType: !1179, size: 64, offset: 2304)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1119, file: !220, line: 444, baseType: !352, size: 8, offset: 2368)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1119, file: !220, line: 451, baseType: !352, size: 8, offset: 2376)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1119, file: !220, line: 454, baseType: !6, size: 32, offset: 2400)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1119, file: !220, line: 455, baseType: !1244, size: 64, offset: 2432)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !220, line: 43, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1119, file: !220, line: 458, baseType: !1247, size: 64, offset: 2496)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!15}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1119, file: !220, line: 460, baseType: !1251, size: 4032, align: 512, offset: 2560)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1252, size: 4032, elements: !1266)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !220, line: 362, size: 576, elements: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1252, file: !220, line: 363, baseType: !285, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1252, file: !220, line: 364, baseType: !6, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1252, file: !220, line: 367, baseType: !1257, size: 448, offset: 128)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !220, line: 319, size: 448, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1257, file: !220, line: 320, baseType: !1118, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1257, file: !220, line: 321, baseType: !1261, size: 384, offset: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1262, line: 40, size: 384, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1261, file: !1262, line: 41, baseType: !1265, size: 384, align: 64)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 384, align: 64, elements: !1019)
!1266 = !{!1267}
!1267 = !DISubrange(count: 7)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1119, file: !220, line: 463, baseType: !1269, size: 192, offset: 6592)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1270, line: 8, size: 192, elements: !1271)
!1270 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1271 = !{!1272, !1273, !1275}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1269, file: !1270, line: 10, baseType: !6, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1269, file: !1270, line: 11, baseType: !1274, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1269, file: !1270, line: 12, baseType: !1276, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1278, line: 59, size: 48, elements: !1279)
!1278 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1277, file: !1278, line: 60, baseType: !879, size: 16)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1277, file: !1278, line: 61, baseType: !879, size: 16, offset: 16)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1277, file: !1278, line: 63, baseType: !6, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1277, file: !1278, line: 64, baseType: !6, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1277, file: !1278, line: 65, baseType: !6, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1277, file: !1278, line: 66, baseType: !6, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1119, file: !220, line: 465, baseType: !287, size: 64, offset: 6784)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1119, file: !220, line: 469, baseType: !6, size: 32, offset: 6848)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1119, file: !220, line: 470, baseType: !386, size: 128, offset: 6912)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1119, file: !220, line: 471, baseType: !1290, size: 64, offset: 7040)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1292, line: 33, size: 96, elements: !1293)
!1292 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1293 = !{!1294, !1295, !1296, !1297}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1291, file: !1292, line: 37, baseType: !15, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1291, file: !1292, line: 43, baseType: !15, size: 32, offset: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1291, file: !1292, line: 45, baseType: !315, size: 16, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1291, file: !1292, line: 47, baseType: !315, size: 16, offset: 80)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1119, file: !220, line: 476, baseType: !1299, size: 64, offset: 7104)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !220, line: 378, size: 256, elements: !1301)
!1301 = !{!1302, !1318, !1319, !1320}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1300, file: !220, line: 379, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1305, line: 204, baseType: !1306)
!1305 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1305, line: 197, size: 192, elements: !1307)
!1307 = !{!1308, !1310, !1311, !1312, !1314, !1316}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1306, file: !1305, line: 198, baseType: !1309, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1305, line: 21, baseType: !295)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1306, file: !1305, line: 199, baseType: !293, size: 8, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1306, file: !1305, line: 200, baseType: !293, size: 8, offset: 40)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1306, file: !1305, line: 201, baseType: !1313, size: 16, offset: 48)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1305, line: 17, baseType: !314)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1306, file: !1305, line: 202, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1305, line: 16, baseType: !297)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1306, file: !1305, line: 203, baseType: !1317, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1305, line: 22, baseType: !297)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1300, file: !220, line: 380, baseType: !6, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1300, file: !220, line: 381, baseType: !461, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1300, file: !220, line: 382, baseType: !461, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1119, file: !220, line: 477, baseType: !1300, size: 256, offset: 7168)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1119, file: !220, line: 480, baseType: !1323, size: 64, offset: 7424)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !220, line: 480, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1119, file: !220, line: 483, baseType: !1326, size: 64, offset: 7488)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !220, line: 483, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1119, file: !220, line: 488, baseType: !461, size: 64, offset: 7552)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1119, file: !220, line: 492, baseType: !285, size: 64, offset: 7616)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1119, file: !220, line: 493, baseType: !6, size: 32, offset: 7680)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1119, file: !220, line: 495, baseType: !285, size: 64, offset: 7744)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1119, file: !220, line: 496, baseType: !6, size: 32, offset: 7808)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1119, file: !220, line: 499, baseType: !6, size: 32, offset: 7840)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1119, file: !220, line: 500, baseType: !1335, size: 64, offset: 7872)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1337, line: 45, baseType: !1338)
!1337 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1119, file: !220, line: 503, baseType: !6, size: 32, offset: 7936)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1119, file: !220, line: 504, baseType: !1341, size: 64, offset: 8000)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1344, line: 96, size: 192, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1345 = !{!1346, !1347, !1407, !1410}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1343, file: !1344, line: 97, baseType: !6, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1343, file: !1344, line: 98, baseType: !1348, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1344, line: 24, size: 3072, elements: !1350)
!1350 = !{!1351, !1353, !1354, !1355, !1356, !1370, !1371, !1372, !1373, !1391, !1392, !1393, !1404, !1405, !1406}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1349, file: !1344, line: 26, baseType: !1352, size: 128)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 128, elements: !1019)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1349, file: !1344, line: 27, baseType: !1352, size: 128, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1349, file: !1344, line: 28, baseType: !15, size: 32, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1349, file: !1344, line: 31, baseType: !398, size: 32, align: 512, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1349, file: !1344, line: 32, baseType: !1357, size: 960, offset: 576)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1358, line: 206, size: 960, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1359 = !{!1360, !1361, !1364, !1366, !1367, !1369}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1357, file: !1358, line: 207, baseType: !720, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1357, file: !1358, line: 208, baseType: !1362, size: 256, offset: 64)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, size: 256, elements: !323)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1357, file: !1358, line: 209, baseType: !1365, size: 256, offset: 320)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !323)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1357, file: !1358, line: 213, baseType: !496, size: 64, offset: 576)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1357, file: !1358, line: 215, baseType: !1368, size: 256, offset: 640)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 256, elements: !323)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1358, line: 216, baseType: !289, size: 8, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1349, file: !1344, line: 33, baseType: !287, size: 64, offset: 1536)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1349, file: !1344, line: 34, baseType: !287, size: 64, offset: 1600)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1349, file: !1344, line: 35, baseType: !352, size: 8, offset: 1664)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1349, file: !1344, line: 36, baseType: !1374, size: 320, offset: 1728)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1375, line: 11, size: 320, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1376 = !{!1377, !1384, !1385, !1390}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1374, file: !1375, line: 16, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !353, line: 198, size: 128, elements: !1379)
!1379 = !{!1380, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1378, file: !353, line: 199, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1378, file: !353, line: 199, baseType: !1383, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1374, file: !1375, line: 17, baseType: !287, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1374, file: !1375, line: 18, baseType: !1386, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1374, file: !1375, line: 19, baseType: !294, size: 32, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1349, file: !1344, line: 37, baseType: !905, size: 256, offset: 2048)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1349, file: !1344, line: 38, baseType: !717, size: 128, align: 64, offset: 2304)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1349, file: !1344, line: 39, baseType: !1394, size: 64, offset: 2432)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1344, line: 49, size: 768, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1395, file: !1344, line: 50, baseType: !398, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1395, file: !1344, line: 51, baseType: !1365, size: 256, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1395, file: !1344, line: 53, baseType: !1365, size: 256, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1395, file: !1344, line: 54, baseType: !287, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1395, file: !1344, line: 55, baseType: !1394, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1395, file: !1344, line: 56, baseType: !15, size: 32, offset: 704)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1395, file: !1344, line: 57, baseType: !15, size: 32, offset: 736)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1349, file: !1344, line: 40, baseType: !287, size: 64, offset: 2496)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1349, file: !1344, line: 42, baseType: !15, size: 32, offset: 2560)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1349, file: !1344, line: 43, baseType: !1342, size: 64, offset: 2624)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1343, file: !1344, line: 99, baseType: !1408, offset: 128)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1409, line: 211, elements: !747)
!1409 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1343, file: !1344, line: 100, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1344, line: 63, size: 3008, elements: !1413)
!1413 = !{!1414, !1415, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1445}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1412, file: !1344, line: 64, baseType: !1394, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1412, file: !1344, line: 65, baseType: !1416, size: 192, offset: 64)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 192, elements: !462)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1412, file: !1344, line: 67, baseType: !15, size: 32, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1412, file: !1344, line: 68, baseType: !630, size: 256, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1412, file: !1344, line: 69, baseType: !398, size: 32, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1412, file: !1344, line: 70, baseType: !630, size: 256, offset: 640)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1412, file: !1344, line: 71, baseType: !287, size: 64, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1412, file: !1344, line: 72, baseType: !287, size: 64, offset: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1412, file: !1344, line: 73, baseType: !287, size: 64, offset: 1024)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1412, file: !1344, line: 74, baseType: !287, size: 64, offset: 1088)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1412, file: !1344, line: 75, baseType: !287, size: 64, offset: 1152)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1412, file: !1344, line: 76, baseType: !287, size: 64, offset: 1216)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1412, file: !1344, line: 77, baseType: !287, size: 64, offset: 1280)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1412, file: !1344, line: 78, baseType: !287, size: 64, offset: 1344)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1412, file: !1344, line: 79, baseType: !352, size: 8, offset: 1408)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1412, file: !1344, line: 80, baseType: !287, size: 64, offset: 1472)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1412, file: !1344, line: 81, baseType: !630, size: 256, offset: 1536)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1412, file: !1344, line: 82, baseType: !1135, size: 256, offset: 1792)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1412, file: !1344, line: 84, baseType: !418, size: 32, offset: 2048)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1412, file: !1344, line: 87, baseType: !287, size: 64, offset: 2112)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1412, file: !1344, line: 88, baseType: !287, size: 64, offset: 2176)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1412, file: !1344, line: 89, baseType: !1437, size: 704, offset: 2240)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !906, line: 111, size: 704, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1444}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1437, file: !906, line: 112, baseType: !905, size: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1437, file: !906, line: 113, baseType: !1374, size: 320, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1437, file: !906, line: 116, baseType: !1442, size: 64, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !906, line: 18, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1437, file: !906, line: 117, baseType: !15, size: 32, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1412, file: !1344, line: 90, baseType: !1342, size: 64, offset: 2944)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1119, file: !220, line: 515, baseType: !1447, size: 64, offset: 8064)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1449, line: 117, size: 128, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1450 = !{!1451, !1452, !1453}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1448, file: !1449, line: 118, baseType: !831, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1448, file: !1449, line: 119, baseType: !831, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1448, file: !1449, line: 120, baseType: !496, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1119, file: !220, line: 516, baseType: !6, size: 32, offset: 8128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1119, file: !220, line: 519, baseType: !6, size: 32, offset: 8160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1119, file: !220, line: 520, baseType: !1457, size: 64, offset: 8192)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1119, file: !220, line: 523, baseType: !1459, size: 64, offset: 8256)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !220, line: 523, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1119, file: !220, line: 524, baseType: !6, size: 32, offset: 8320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1119, file: !220, line: 525, baseType: !1464, size: 64, offset: 8384)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !220, line: 525, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1119, file: !220, line: 526, baseType: !6, size: 32, offset: 8448)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1119, file: !220, line: 533, baseType: !285, size: 64, offset: 8512)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1119, file: !220, line: 534, baseType: !6, size: 32, offset: 8576)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1119, file: !220, line: 535, baseType: !286, size: 64, offset: 8640)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1119, file: !220, line: 536, baseType: !6, size: 32, offset: 8704)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1119, file: !220, line: 539, baseType: !15, size: 32, offset: 8736)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1119, file: !220, line: 540, baseType: !1474, size: 64, offset: 8768)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1476, line: 32, size: 64, elements: !1477)
!1476 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1475, file: !1476, line: 33, baseType: !831, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1475, file: !1476, line: 34, baseType: !831, size: 32, offset: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1119, file: !220, line: 563, baseType: !386, size: 128, offset: 8832)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1119, file: !220, line: 565, baseType: !386, size: 128, offset: 8960)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1119, file: !220, line: 568, baseType: !1483, size: 64, offset: 9088)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1119, file: !220, line: 570, baseType: !418, size: 32, offset: 9152)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1113, file: !227, line: 101, baseType: !373, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1113, file: !227, line: 103, baseType: !352, size: 8, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1113, file: !227, line: 104, baseType: !226, size: 32, offset: 288)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1113, file: !227, line: 106, baseType: !1489, size: 64, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !311, line: 282, size: 1600, elements: !1492)
!1492 = !{!1493, !1497, !1498, !1502}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1491, file: !311, line: 283, baseType: !1494, size: 256)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 256, elements: !1495)
!1495 = !{!1496}
!1496 = !DISubrange(count: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1491, file: !311, line: 284, baseType: !1494, size: 256, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1491, file: !311, line: 285, baseType: !1499, size: 1024, offset: 512)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 1024, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1491, file: !311, line: 286, baseType: !341, size: 64, offset: 1536)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1113, file: !227, line: 107, baseType: !1504, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !311, line: 217, size: 256, elements: !1507)
!1507 = !{!1508, !1512, !1513, !1514}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1506, file: !311, line: 218, baseType: !1509, size: 128)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 128, elements: !1510)
!1510 = !{!1511}
!1511 = !DISubrange(count: 16)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1506, file: !311, line: 219, baseType: !322, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1506, file: !311, line: 220, baseType: !295, size: 32, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1506, file: !311, line: 221, baseType: !295, size: 32, offset: 224)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1113, file: !227, line: 109, baseType: !1072, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1113, file: !227, line: 110, baseType: !1063, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1113, file: !227, line: 111, baseType: !1072, size: 64, offset: 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1113, file: !227, line: 112, baseType: !1063, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1113, file: !227, line: 113, baseType: !1520, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!15, !1035, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !245, line: 60, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !245, line: 58, size: 32, elements: !1525)
!1525 = !{!1526}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1524, file: !245, line: 59, baseType: !15, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1113, file: !227, line: 114, baseType: !1072, size: 64, offset: 768)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1113, file: !227, line: 115, baseType: !510, size: 64, offset: 832)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1113, file: !227, line: 116, baseType: !510, size: 64, offset: 896)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1113, file: !227, line: 118, baseType: !1067, size: 64, offset: 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1113, file: !227, line: 119, baseType: !1063, size: 64, offset: 1024)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1113, file: !227, line: 121, baseType: !1533, size: 64, offset: 1088)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !227, line: 121, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1100, file: !1101, line: 88, baseType: !1052, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1100, file: !1101, line: 89, baseType: !1072, size: 64, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1100, file: !1101, line: 90, baseType: !1063, size: 64, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1100, file: !1101, line: 91, baseType: !1063, size: 64, offset: 576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1100, file: !1101, line: 92, baseType: !1063, size: 64, offset: 640)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1100, file: !1101, line: 94, baseType: !1072, size: 64, offset: 704)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1100, file: !1101, line: 95, baseType: !1072, size: 64, offset: 768)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1100, file: !1101, line: 97, baseType: !1520, size: 64, offset: 832)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1100, file: !1101, line: 98, baseType: !1072, size: 64, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1100, file: !1101, line: 100, baseType: !1072, size: 64, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1100, file: !1101, line: 102, baseType: !1072, size: 64, offset: 1024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1100, file: !1101, line: 103, baseType: !1063, size: 64, offset: 1088)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1100, file: !1101, line: 105, baseType: !1067, size: 64, offset: 1152)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1100, file: !1101, line: 107, baseType: !1549, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1101, line: 107, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1100, file: !1101, line: 109, baseType: !352, size: 8, offset: 1280)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1036, file: !233, line: 715, baseType: !1112, size: 64, offset: 832)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1036, file: !233, line: 717, baseType: !285, size: 64, offset: 896)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1036, file: !233, line: 719, baseType: !285, size: 64, offset: 960)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1036, file: !233, line: 721, baseType: !630, size: 256, offset: 1024)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1036, file: !233, line: 725, baseType: !1558, size: 448, offset: 1280)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !233, line: 517, size: 448, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1558, file: !233, line: 518, baseType: !386, size: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1558, file: !233, line: 519, baseType: !386, size: 128, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1558, file: !233, line: 520, baseType: !386, size: 128, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1558, file: !233, line: 521, baseType: !232, size: 32, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1036, file: !233, line: 726, baseType: !1565, size: 2496, offset: 1728)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !245, line: 663, size: 2496, elements: !1566)
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1611, !1612, !1613, !1614, !1615, !1616, !1687, !1688, !1689, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1727, !1731}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1565, file: !245, line: 664, baseType: !1523, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1565, file: !245, line: 665, baseType: !6, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1565, file: !245, line: 666, baseType: !6, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1565, file: !245, line: 667, baseType: !352, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1565, file: !245, line: 668, baseType: !352, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1565, file: !245, line: 669, baseType: !352, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1565, file: !245, line: 670, baseType: !352, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1565, file: !245, line: 671, baseType: !352, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1565, file: !245, line: 672, baseType: !352, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1565, file: !245, line: 673, baseType: !352, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1565, file: !245, line: 674, baseType: !352, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1565, file: !245, line: 675, baseType: !294, size: 32, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1565, file: !245, line: 676, baseType: !398, size: 32, offset: 96)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1565, file: !245, line: 678, baseType: !386, size: 128, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1565, file: !245, line: 679, baseType: !1135, size: 256, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1565, file: !245, line: 680, baseType: !1583, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1585, line: 43, size: 1536, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1594, !1595, !1596, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1584, file: !1585, line: 44, baseType: !373, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1584, file: !1585, line: 45, baseType: !15, size: 32, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1584, file: !1585, line: 46, baseType: !386, size: 128, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1584, file: !1585, line: 47, baseType: !398, size: 32, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1584, file: !1585, line: 48, baseType: !1592, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !245, line: 629, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1584, file: !1585, line: 49, baseType: !1374, size: 320, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1584, file: !1585, line: 50, baseType: !287, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1584, file: !1585, line: 51, baseType: !1597, size: 64, offset: 768)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1598, line: 29, baseType: !640)
!1598 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1584, file: !1585, line: 52, baseType: !1597, size: 64, offset: 832)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1584, file: !1585, line: 53, baseType: !1597, size: 64, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1584, file: !1585, line: 54, baseType: !1597, size: 64, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1584, file: !1585, line: 55, baseType: !1597, size: 64, offset: 1024)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1584, file: !1585, line: 56, baseType: !287, size: 64, offset: 1088)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1584, file: !1585, line: 57, baseType: !287, size: 64, offset: 1152)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1584, file: !1585, line: 58, baseType: !287, size: 64, offset: 1216)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1584, file: !1585, line: 59, baseType: !287, size: 64, offset: 1280)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1584, file: !1585, line: 60, baseType: !287, size: 64, offset: 1344)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1584, file: !1585, line: 61, baseType: !1035, size: 64, offset: 1408)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1584, file: !1585, line: 62, baseType: !352, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1584, file: !1585, line: 63, baseType: !352, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1565, file: !245, line: 681, baseType: !352, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1565, file: !245, line: 682, baseType: !352, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1565, file: !245, line: 683, baseType: !352, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1565, file: !245, line: 684, baseType: !6, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1565, file: !245, line: 685, baseType: !6, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1565, file: !245, line: 690, baseType: !1617, size: 512, offset: 640)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !240, line: 118, size: 512, elements: !1618)
!1618 = !{!1619, !1625, !1626, !1631, !1683, !1684, !1685, !1686}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1617, file: !240, line: 119, baseType: !1620, size: 256)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1621, line: 9, size: 256, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1620, file: !1621, line: 10, baseType: !576, size: 192, align: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1620, file: !1621, line: 11, baseType: !1597, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1617, file: !240, line: 120, baseType: !1597, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1617, file: !240, line: 121, baseType: !1627, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!239, !1630}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1617, file: !240, line: 122, baseType: !1632, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !240, line: 159, size: 512, align: 512, elements: !1634)
!1634 = !{!1635, !1660, !1661, !1664, !1669, !1670, !1678, !1682}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1633, file: !240, line: 160, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !240, line: 215, size: 4608, align: 512, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1637, file: !240, line: 216, baseType: !644, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1637, file: !240, line: 217, baseType: !6, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1637, file: !240, line: 218, baseType: !6, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1637, file: !240, line: 219, baseType: !6, size: 32, offset: 96)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1637, file: !240, line: 220, baseType: !6, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1637, file: !240, line: 221, baseType: !6, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1637, file: !240, line: 222, baseType: !6, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1637, file: !240, line: 223, baseType: !6, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1637, file: !240, line: 224, baseType: !6, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1637, file: !240, line: 226, baseType: !6, size: 32, offset: 160)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1637, file: !240, line: 227, baseType: !315, size: 16, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1637, file: !240, line: 228, baseType: !315, size: 16, offset: 208)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1637, file: !240, line: 229, baseType: !6, size: 32, offset: 224)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1637, file: !240, line: 235, baseType: !1597, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1637, file: !240, line: 236, baseType: !1630, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1637, file: !240, line: 237, baseType: !1597, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1637, file: !240, line: 238, baseType: !1630, size: 64, offset: 448)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1637, file: !240, line: 239, baseType: !1657, size: 4096, align: 512, offset: 512)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1633, size: 4096, align: 512, elements: !1658)
!1658 = !{!1659}
!1659 = !DISubrange(count: 8)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1633, file: !240, line: 161, baseType: !6, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1633, file: !240, line: 162, baseType: !1662, size: 32, offset: 96)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !353, line: 32, baseType: !1663)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !494, line: 96, baseType: !15)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1633, file: !240, line: 163, baseType: !1665, size: 32, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !801, line: 274, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !801, line: 274, size: 32, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1666, file: !801, line: 274, baseType: !800, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1633, file: !240, line: 164, baseType: !1630, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1633, file: !240, line: 165, baseType: !1671, size: 128, offset: 256)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1621, line: 14, size: 128, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1671, file: !1621, line: 15, baseType: !1674, size: 128)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !577, line: 26, size: 128, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1674, file: !577, line: 27, baseType: !593, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1674, file: !577, line: 28, baseType: !581, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1633, file: !240, line: 166, baseType: !1679, size: 64, offset: 384)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1597}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1633, file: !240, line: 167, baseType: !1597, size: 64, offset: 448)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1617, file: !240, line: 123, baseType: !289, size: 8, offset: 448)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1617, file: !240, line: 124, baseType: !289, size: 8, offset: 456)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1617, file: !240, line: 125, baseType: !289, size: 8, offset: 464)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1617, file: !240, line: 126, baseType: !289, size: 8, offset: 472)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1565, file: !245, line: 691, baseType: !296, size: 64, offset: 1152)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1565, file: !245, line: 692, baseType: !905, size: 256, offset: 1216)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1565, file: !245, line: 693, baseType: !1690, size: 192, offset: 1472)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1691, line: 41, baseType: !1692)
!1691 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1691, line: 37, size: 192, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1692, file: !1691, line: 38, baseType: !398, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1692, file: !1691, line: 39, baseType: !386, size: 128, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1565, file: !245, line: 694, baseType: !1592, size: 64, offset: 1664)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1565, file: !245, line: 695, baseType: !418, size: 32, offset: 1728)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1565, file: !245, line: 696, baseType: !418, size: 32, offset: 1760)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1565, file: !245, line: 697, baseType: !6, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1565, file: !245, line: 698, baseType: !6, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1565, file: !245, line: 699, baseType: !6, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1565, file: !245, line: 700, baseType: !6, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1565, file: !245, line: 701, baseType: !6, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1565, file: !245, line: 702, baseType: !6, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1565, file: !245, line: 703, baseType: !352, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1565, file: !245, line: 704, baseType: !6, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1565, file: !245, line: 705, baseType: !6, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1565, file: !245, line: 706, baseType: !6, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1565, file: !245, line: 707, baseType: !6, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1565, file: !245, line: 708, baseType: !6, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1565, file: !245, line: 709, baseType: !6, size: 32, offset: 1824)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1565, file: !245, line: 710, baseType: !244, size: 32, offset: 1856)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1565, file: !245, line: 711, baseType: !252, size: 32, offset: 1888)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1565, file: !245, line: 712, baseType: !252, size: 32, offset: 1920)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1565, file: !245, line: 713, baseType: !15, size: 32, offset: 1952)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1565, file: !245, line: 714, baseType: !15, size: 32, offset: 1984)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1565, file: !245, line: 715, baseType: !296, size: 64, offset: 2048)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1565, file: !245, line: 716, baseType: !296, size: 64, offset: 2112)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1565, file: !245, line: 717, baseType: !296, size: 64, offset: 2176)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1565, file: !245, line: 718, baseType: !296, size: 64, offset: 2240)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1565, file: !245, line: 720, baseType: !1722, size: 64, offset: 2304)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !245, line: 632, size: 64, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1723, file: !245, line: 633, baseType: !398, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1723, file: !245, line: 634, baseType: !6, size: 32, offset: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1565, file: !245, line: 721, baseType: !1728, size: 64, offset: 2368)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !1035, !831}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1565, file: !245, line: 722, baseType: !1732, size: 64, offset: 2432)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !245, line: 722, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1036, file: !233, line: 727, baseType: !1735, size: 64, offset: 4224)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !245, line: 742, size: 1792, elements: !1737)
!1737 = !{!1738, !1739, !1740, !1744, !1745, !1746}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1736, file: !245, line: 743, baseType: !1069, size: 1472)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1736, file: !245, line: 744, baseType: !1072, size: 64, offset: 1472)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1736, file: !245, line: 745, baseType: !1741, size: 64, offset: 1536)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1035, !352}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1736, file: !245, line: 746, baseType: !1072, size: 64, offset: 1600)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1736, file: !245, line: 747, baseType: !1063, size: 64, offset: 1664)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1736, file: !245, line: 748, baseType: !1063, size: 64, offset: 1728)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1036, file: !233, line: 736, baseType: !1748, size: 128, offset: 4288)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !233, line: 529, size: 128, elements: !1749)
!1749 = !{!1750, !1754}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1748, file: !233, line: 531, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1753, line: 13, flags: DIFlagFwdDecl)
!1753 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1748, file: !233, line: 532, baseType: !1755, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !233, line: 49, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1036, file: !233, line: 738, baseType: !1758, size: 64, offset: 4416)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1760)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !233, line: 738, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1036, file: !233, line: 740, baseType: !1762, size: 64, offset: 4480)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1036, file: !233, line: 741, baseType: !296, size: 64, offset: 4544)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1036, file: !233, line: 746, baseType: !296, size: 64, offset: 4608)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1036, file: !233, line: 747, baseType: !1766, size: 64, offset: 4672)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1768)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !233, line: 747, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1036, file: !233, line: 749, baseType: !1770, size: 64, offset: 4736)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !233, line: 428, size: 128, elements: !1772)
!1772 = !{!1773, !1774, !1775}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1771, file: !233, line: 433, baseType: !6, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1771, file: !233, line: 434, baseType: !6, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1771, file: !233, line: 435, baseType: !287, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1036, file: !233, line: 751, baseType: !386, size: 128, offset: 4800)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1036, file: !233, line: 762, baseType: !1778, size: 64, offset: 4928)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !233, line: 762, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1036, file: !233, line: 770, baseType: !1781, offset: 4992)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1782, line: 5, elements: !747)
!1782 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1036, file: !233, line: 772, baseType: !1784, size: 64, offset: 4992)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1786, line: 18, flags: DIFlagFwdDecl)
!1786 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1036, file: !233, line: 773, baseType: !1788, size: 64, offset: 5056)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1101, line: 22, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1036, file: !233, line: 776, baseType: !15, size: 32, offset: 5120)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1036, file: !233, line: 778, baseType: !1792, size: 32, offset: 5152)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !353, line: 21, baseType: !1793)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !353, line: 18, baseType: !294)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1036, file: !233, line: 779, baseType: !294, size: 32, offset: 5184)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1036, file: !233, line: 781, baseType: !398, size: 32, offset: 5216)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1036, file: !233, line: 782, baseType: !386, size: 128, offset: 5248)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1036, file: !233, line: 784, baseType: !1798, size: 64, offset: 5376)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1801, line: 52, size: 768, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1811, !1815, !1816, !1817, !1818, !1822, !1826}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1800, file: !1801, line: 53, baseType: !373, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1800, file: !1801, line: 55, baseType: !510, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1800, file: !1801, line: 56, baseType: !510, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1800, file: !1801, line: 58, baseType: !1052, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1800, file: !1801, line: 59, baseType: !1808, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!461, !1055, !1061}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1800, file: !1801, line: 61, baseType: !1812, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !1798}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1800, file: !1801, line: 62, baseType: !1063, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1800, file: !1801, line: 64, baseType: !1072, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1800, file: !1801, line: 66, baseType: !516, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1800, file: !1801, line: 67, baseType: !1819, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!341, !1055}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1800, file: !1801, line: 69, baseType: !1823, size: 64, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1055, !551, !559}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1800, file: !1801, line: 71, baseType: !1067, size: 64, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1036, file: !233, line: 785, baseType: !510, size: 64, offset: 5440)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1036, file: !233, line: 787, baseType: !1063, size: 64, offset: 5504)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1036, file: !233, line: 788, baseType: !1830, size: 64, offset: 5568)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !233, line: 46, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1036, file: !233, line: 789, baseType: !1833, size: 64, offset: 5632)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !233, line: 48, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1036, file: !233, line: 791, baseType: !1836, size: 64, offset: 5696)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !233, line: 597, size: 128, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1842, !1843}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1837, file: !233, line: 598, baseType: !259, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1837, file: !233, line: 599, baseType: !268, size: 32, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1837, file: !233, line: 600, baseType: !273, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1837, file: !233, line: 601, baseType: !352, size: 8, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1837, file: !233, line: 602, baseType: !352, size: 8, offset: 104)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1036, file: !233, line: 793, baseType: !278, size: 32, offset: 5760)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1036, file: !233, line: 795, baseType: !352, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1036, file: !233, line: 796, baseType: !352, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1036, file: !233, line: 797, baseType: !352, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1036, file: !233, line: 798, baseType: !352, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1036, file: !233, line: 799, baseType: !352, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1028, file: !233, line: 110, baseType: !1852, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!492, !1035, !1850, !373, !506}
!1855 = !DIGlobalVariableExpression(var: !1856, expr: !DIExpression())
!1856 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !1857, isLocal: true, isDefinition: true)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 48, elements: !1858)
!1858 = !{!1859}
!1859 = !DISubrange(count: 6)
!1860 = !DIGlobalVariableExpression(var: !1861, expr: !DIExpression())
!1861 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !1862, isLocal: true, isDefinition: true)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 96, elements: !1863)
!1863 = !{!1864}
!1864 = !DISubrange(count: 12)
!1865 = !DIGlobalVariableExpression(var: !1866, expr: !DIExpression())
!1866 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !1867, isLocal: true, isDefinition: true)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 160, elements: !1868)
!1868 = !{!1869}
!1869 = !DISubrange(count: 20)
!1870 = !DIGlobalVariableExpression(var: !1871, expr: !DIExpression())
!1871 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !1872, isLocal: true, isDefinition: true)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 56, elements: !1266)
!1873 = !DIGlobalVariableExpression(var: !1874, expr: !DIExpression())
!1874 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !1875, isLocal: true, isDefinition: true)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 112, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 14)
!1878 = !DIGlobalVariableExpression(var: !1879, expr: !DIExpression())
!1879 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !1857, isLocal: true, isDefinition: true)
!1880 = !DIGlobalVariableExpression(var: !1881, expr: !DIExpression())
!1881 = distinct !DIGlobalVariable(name: "energy_perf_strings", scope: !2, file: !3, line: 122, type: !1882, isLocal: true, isDefinition: true)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, size: 320, elements: !328)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!1884 = !DIGlobalVariableExpression(var: !1885, expr: !DIExpression())
!1885 = distinct !DIGlobalVariable(name: "intel_epb_syscore_ops", scope: !2, file: !3, line: 117, type: !1886, isLocal: true, isDefinition: true)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscore_ops", file: !1887, line: 13, size: 320, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/syscore_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59d2685cd3ea081e18f1bbec40d890d")
!1888 = !{!1889, !1890, !1891, !1892}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1886, file: !1887, line: 14, baseType: !386, size: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1886, file: !1887, line: 15, baseType: !1247, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1886, file: !1887, line: 16, baseType: !1483, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1886, file: !1887, line: 17, baseType: !1483, size: 64, offset: 256)
!1893 = !{i32 7, !"Dwarf Version", i32 5}
!1894 = !{i32 2, !"Debug Info Version", i32 3}
!1895 = !{i32 1, !"wchar_size", i32 2}
!1896 = !{i32 8, !"cf-protection-branch", i32 1}
!1897 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1898 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1899 = !{i32 1, !"Code Model", i32 2}
!1900 = !{i32 1, !"override-stack-alignment", i32 8}
!1901 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1902 = distinct !DISubprogram(name: "__initstub__kmod_intel_epb__203_240_intel_epb_init4", scope: !3, file: !3, line: 240, type: !1248, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1903 = !DILocation(line: 240, column: 1, scope: !1902)
!1904 = distinct !DISubprogram(name: "intel_epb_init", scope: !3, file: !3, line: 216, type: !1248, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1905)
!1905 = !{!1906, !1908, !1909}
!1906 = !DILocalVariable(name: "id", scope: !1904, file: !3, line: 218, type: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1908 = !DILocalVariable(name: "ret", scope: !1904, file: !3, line: 219, type: !15)
!1909 = !DILabel(scope: !1904, name: "err_out_online", file: !3, line: 236)
!1910 = !DILocation(line: 218, column: 2, scope: !1904)
!1911 = !DILocation(line: 218, column: 27, scope: !1904)
!1912 = !DILocation(line: 218, column: 32, scope: !1904)
!1913 = !DILocation(line: 219, column: 2, scope: !1904)
!1914 = !DILocation(line: 219, column: 6, scope: !1904)
!1915 = !DILocation(line: 221, column: 6, scope: !1904)
!1916 = !DILocation(line: 221, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 221, column: 6)
!1918 = !DILocation(line: 222, column: 3, scope: !1917)
!1919 = !DILocation(line: 224, column: 6, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 224, column: 6)
!1921 = !DILocation(line: 224, column: 6, scope: !1904)
!1922 = !DILocation(line: 225, column: 41, scope: !1920)
!1923 = !DILocation(line: 225, column: 45, scope: !1920)
!1924 = !DILocation(line: 225, column: 39, scope: !1920)
!1925 = !DILocation(line: 225, column: 3, scope: !1920)
!1926 = !DILocation(line: 227, column: 8, scope: !1904)
!1927 = !DILocation(line: 227, column: 6, scope: !1904)
!1928 = !DILocation(line: 230, column: 6, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 230, column: 6)
!1930 = !DILocation(line: 230, column: 10, scope: !1929)
!1931 = !DILocation(line: 230, column: 6, scope: !1904)
!1932 = !DILocation(line: 231, column: 3, scope: !1929)
!1933 = !DILocation(line: 233, column: 2, scope: !1904)
!1934 = !DILocation(line: 234, column: 2, scope: !1904)
!1935 = !DILocation(line: 236, column: 1, scope: !1904)
!1936 = !DILocation(line: 237, column: 2, scope: !1904)
!1937 = !DILocation(line: 238, column: 9, scope: !1904)
!1938 = !DILocation(line: 238, column: 2, scope: !1904)
!1939 = !DILocation(line: 239, column: 1, scope: !1904)
!1940 = !DISubprogram(name: "x86_match_cpu", scope: !1941, file: !1941, line: 291, type: !1942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1941 = !DIFile(filename: "./arch/x86/include/asm/cpu_device_id.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e1a78964618b7c8a5d697bb345982db")
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1907, !1907}
!1944 = distinct !DISubprogram(name: "arch_test_bit", scope: !1945, file: !1945, line: 237, type: !1946, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1951)
!1945 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!352, !287, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !287)
!1951 = !{!1952, !1953}
!1952 = !DILocalVariable(name: "nr", arg: 1, scope: !1944, file: !1945, line: 237, type: !287)
!1953 = !DILocalVariable(name: "addr", arg: 2, scope: !1944, file: !1945, line: 237, type: !1948)
!1954 = !DILocation(line: 237, column: 29, scope: !1944)
!1955 = !DILocation(line: 237, column: 63, scope: !1944)
!1956 = !DILocation(line: 239, column: 30, scope: !1944)
!1957 = !DILocation(line: 239, column: 9, scope: !1944)
!1958 = !DILocation(line: 239, column: 54, scope: !1944)
!1959 = !DILocation(line: 239, column: 58, scope: !1944)
!1960 = !DILocation(line: 239, column: 36, scope: !1944)
!1961 = !DILocation(line: 240, column: 26, scope: !1944)
!1962 = !DILocation(line: 240, column: 30, scope: !1944)
!1963 = !DILocation(line: 240, column: 8, scope: !1944)
!1964 = !DILocation(line: 239, column: 2, scope: !1944)
!1965 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !14, file: !14, line: 283, type: !1966, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!15, !13, !373, !1968, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!15, !6}
!1971 = !{!1972, !1973, !1974, !1975}
!1972 = !DILocalVariable(name: "state", arg: 1, scope: !1965, file: !14, line: 283, type: !13)
!1973 = !DILocalVariable(name: "name", arg: 2, scope: !1965, file: !14, line: 284, type: !373)
!1974 = !DILocalVariable(name: "startup", arg: 3, scope: !1965, file: !14, line: 285, type: !1968)
!1975 = !DILocalVariable(name: "teardown", arg: 4, scope: !1965, file: !14, line: 286, type: !1968)
!1976 = !DILocation(line: 283, column: 54, scope: !1965)
!1977 = !DILocation(line: 284, column: 21, scope: !1965)
!1978 = !DILocation(line: 285, column: 15, scope: !1965)
!1979 = !DILocation(line: 286, column: 15, scope: !1965)
!1980 = !DILocation(line: 288, column: 29, scope: !1965)
!1981 = !DILocation(line: 288, column: 36, scope: !1965)
!1982 = !DILocation(line: 288, column: 48, scope: !1965)
!1983 = !DILocation(line: 288, column: 57, scope: !1965)
!1984 = !DILocation(line: 288, column: 9, scope: !1965)
!1985 = !DILocation(line: 288, column: 2, scope: !1965)
!1986 = distinct !DISubprogram(name: "intel_epb_online", scope: !3, file: !3, line: 184, type: !1969, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1987 = !{!1988, !1989}
!1988 = !DILocalVariable(name: "cpu", arg: 1, scope: !1986, file: !3, line: 184, type: !6)
!1989 = !DILocalVariable(name: "cpu_dev", scope: !1986, file: !3, line: 186, type: !1035)
!1990 = !DILocation(line: 184, column: 42, scope: !1986)
!1991 = !DILocation(line: 186, column: 2, scope: !1986)
!1992 = !DILocation(line: 186, column: 17, scope: !1986)
!1993 = !DILocation(line: 186, column: 42, scope: !1986)
!1994 = !DILocation(line: 186, column: 27, scope: !1986)
!1995 = !DILocation(line: 188, column: 2, scope: !1986)
!1996 = !DILocation(line: 189, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 189, column: 6)
!1998 = !{i8 0, i8 2}
!1999 = !DILocation(line: 189, column: 6, scope: !1986)
!2000 = !DILocation(line: 190, column: 22, scope: !1997)
!2001 = !DILocation(line: 190, column: 31, scope: !1997)
!2002 = !DILocation(line: 190, column: 3, scope: !1997)
!2003 = !DILocation(line: 193, column: 1, scope: !1986)
!2004 = !DILocation(line: 192, column: 2, scope: !1986)
!2005 = distinct !DISubprogram(name: "intel_epb_offline", scope: !3, file: !3, line: 195, type: !1969, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2006)
!2006 = !{!2007, !2008}
!2007 = !DILocalVariable(name: "cpu", arg: 1, scope: !2005, file: !3, line: 195, type: !6)
!2008 = !DILocalVariable(name: "cpu_dev", scope: !2005, file: !3, line: 197, type: !1035)
!2009 = !DILocation(line: 195, column: 43, scope: !2005)
!2010 = !DILocation(line: 197, column: 2, scope: !2005)
!2011 = !DILocation(line: 197, column: 17, scope: !2005)
!2012 = !DILocation(line: 197, column: 42, scope: !2005)
!2013 = !DILocation(line: 197, column: 27, scope: !2005)
!2014 = !DILocation(line: 199, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 199, column: 6)
!2016 = !DILocation(line: 199, column: 6, scope: !2005)
!2017 = !DILocation(line: 200, column: 24, scope: !2015)
!2018 = !DILocation(line: 200, column: 33, scope: !2015)
!2019 = !DILocation(line: 200, column: 3, scope: !2015)
!2020 = !DILocation(line: 202, column: 2, scope: !2005)
!2021 = !DILocation(line: 204, column: 1, scope: !2005)
!2022 = !DILocation(line: 203, column: 2, scope: !2005)
!2023 = !DISubprogram(name: "register_syscore_ops", scope: !1887, file: !1887, line: 20, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!2027 = distinct !DISubprogram(name: "cpuhp_remove_state", scope: !14, file: !14, line: 444, type: !2028, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !13}
!2030 = !{!2031}
!2031 = !DILocalVariable(name: "state", arg: 1, scope: !2027, file: !14, line: 444, type: !13)
!2032 = !DILocation(line: 444, column: 56, scope: !2027)
!2033 = !DILocation(line: 446, column: 23, scope: !2027)
!2034 = !DILocation(line: 446, column: 2, scope: !2027)
!2035 = !DILocation(line: 447, column: 1, scope: !2027)
!2036 = distinct !DISubprogram(name: "constant_test_bit", scope: !1945, file: !1945, line: 204, type: !2037, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!352, !496, !1948}
!2039 = !{!2040, !2041}
!2040 = !DILocalVariable(name: "nr", arg: 1, scope: !2036, file: !1945, line: 204, type: !496)
!2041 = !DILocalVariable(name: "addr", arg: 2, scope: !2036, file: !1945, line: 204, type: !1948)
!2042 = !DILocation(line: 204, column: 52, scope: !2036)
!2043 = !DILocation(line: 204, column: 86, scope: !2036)
!2044 = !DILocation(line: 206, column: 19, scope: !2036)
!2045 = !DILocation(line: 206, column: 22, scope: !2036)
!2046 = !DILocation(line: 206, column: 15, scope: !2036)
!2047 = !DILocation(line: 207, column: 4, scope: !2036)
!2048 = !DILocation(line: 207, column: 9, scope: !2036)
!2049 = !DILocation(line: 207, column: 12, scope: !2036)
!2050 = !DILocation(line: 206, column: 44, scope: !2036)
!2051 = !DILocation(line: 207, column: 37, scope: !2036)
!2052 = !DILocation(line: 206, column: 2, scope: !2036)
!2053 = distinct !DISubprogram(name: "variable_test_bit", scope: !1945, file: !1945, line: 224, type: !2037, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2054)
!2054 = !{!2055, !2056, !2057}
!2055 = !DILocalVariable(name: "nr", arg: 1, scope: !2053, file: !1945, line: 224, type: !496)
!2056 = !DILocalVariable(name: "addr", arg: 2, scope: !2053, file: !1945, line: 224, type: !1948)
!2057 = !DILocalVariable(name: "oldbit", scope: !2053, file: !1945, line: 226, type: !352)
!2058 = !DILocation(line: 224, column: 52, scope: !2053)
!2059 = !DILocation(line: 224, column: 86, scope: !2053)
!2060 = !DILocation(line: 226, column: 2, scope: !2053)
!2061 = !DILocation(line: 226, column: 7, scope: !2053)
!2062 = !DILocation(line: 231, column: 33, scope: !2053)
!2063 = !DILocation(line: 231, column: 46, scope: !2053)
!2064 = !DILocation(line: 228, column: 2, scope: !2053)
!2065 = !{i64 2148032845, i64 2148032919}
!2066 = !DILocation(line: 233, column: 9, scope: !2053)
!2067 = !DILocation(line: 234, column: 1, scope: !2053)
!2068 = !DILocation(line: 233, column: 2, scope: !2053)
!2069 = !DISubprogram(name: "__cpuhp_setup_state", scope: !14, file: !14, line: 263, type: !2070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!15, !13, !373, !352, !1968, !1968, !352}
!2072 = !DISubprogram(name: "get_cpu_device", scope: !2073, file: !2073, line: 39, type: !2074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2073 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!1035, !6}
!2076 = !DILocation(line: 94, column: 2, scope: !332)
!2077 = !DILocation(line: 94, column: 6, scope: !332)
!2078 = !DILocation(line: 94, column: 12, scope: !338)
!2079 = !DILocation(line: 94, column: 12, scope: !340)
!2080 = !DILocation(line: 94, column: 12, scope: !344)
!2081 = !{i64 2152632443}
!2082 = !DILocation(line: 94, column: 12, scope: !332)
!2083 = !DILocation(line: 95, column: 2, scope: !332)
!2084 = !DILocation(line: 95, column: 6, scope: !332)
!2085 = !DILocation(line: 97, column: 2, scope: !332)
!2086 = !DILocation(line: 98, column: 6, scope: !351)
!2087 = !DILocation(line: 98, column: 6, scope: !332)
!2088 = !DILocation(line: 99, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !351, file: !3, line: 98, column: 11)
!2090 = !DILocation(line: 100, column: 2, scope: !2089)
!2091 = !DILocation(line: 108, column: 9, scope: !350)
!2092 = !DILocation(line: 108, column: 13, scope: !350)
!2093 = !DILocation(line: 108, column: 7, scope: !350)
!2094 = !DILocation(line: 109, column: 7, scope: !349)
!2095 = !DILocation(line: 109, column: 11, scope: !349)
!2096 = !DILocation(line: 109, column: 7, scope: !350)
!2097 = !DILocation(line: 110, column: 10, scope: !348)
!2098 = !DILocation(line: 110, column: 8, scope: !348)
!2099 = !DILocation(line: 111, column: 4, scope: !347)
!2100 = !DILocation(line: 111, column: 4, scope: !356)
!2101 = !DILocation(line: 111, column: 4, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !356, file: !3, line: 111, column: 4)
!2103 = !DILocation(line: 0, scope: !2102)
!2104 = !DILocation(line: 111, column: 4, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 111, column: 4)
!2106 = !DILocation(line: 111, column: 4, scope: !357)
!2107 = !DILocation(line: 111, column: 4, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !357, file: !3, line: 111, column: 4)
!2109 = !DILocation(line: 111, column: 4, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 111, column: 4)
!2111 = !DILocation(line: 111, column: 4, scope: !348)
!2112 = !DILocation(line: 112, column: 3, scope: !348)
!2113 = !DILocation(line: 114, column: 37, scope: !332)
!2114 = !DILocation(line: 114, column: 41, scope: !332)
!2115 = !DILocation(line: 114, column: 56, scope: !332)
!2116 = !DILocation(line: 114, column: 54, scope: !332)
!2117 = !DILocation(line: 114, column: 2, scope: !332)
!2118 = !DILocation(line: 115, column: 1, scope: !332)
!2119 = !DISubprogram(name: "sysfs_merge_group", scope: !370, file: !370, line: 323, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!15, !380, !511}
!2122 = distinct !DISubprogram(name: "native_read_msr", scope: !2123, file: !2123, line: 114, type: !2124, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2123 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!298, !6}
!2126 = !{!2127, !2128}
!2127 = !DILocalVariable(name: "msr", arg: 1, scope: !2122, file: !2123, line: 114, type: !6)
!2128 = !DILocalVariable(name: "val", scope: !2122, file: !2123, line: 116, type: !298)
!2129 = !DILocation(line: 114, column: 63, scope: !2122)
!2130 = !DILocation(line: 116, column: 2, scope: !2122)
!2131 = !DILocation(line: 116, column: 21, scope: !2122)
!2132 = !DILocation(line: 118, column: 16, scope: !2122)
!2133 = !DILocation(line: 118, column: 8, scope: !2122)
!2134 = !DILocation(line: 118, column: 6, scope: !2122)
!2135 = !DILocation(line: 120, column: 6, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2122, file: !2123, line: 120, column: 6)
!2137 = !DILocation(line: 120, column: 6, scope: !2122)
!2138 = !DILocation(line: 121, column: 21, scope: !2136)
!2139 = !DILocation(line: 121, column: 26, scope: !2136)
!2140 = !DILocation(line: 121, column: 3, scope: !2136)
!2141 = !DILocation(line: 123, column: 9, scope: !2122)
!2142 = !DILocation(line: 124, column: 1, scope: !2122)
!2143 = !DILocation(line: 123, column: 2, scope: !2122)
!2144 = !DISubprogram(name: "_printk", scope: !2145, file: !2145, line: 153, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2145 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!15, !373, null}
!2148 = distinct !DISubprogram(name: "wrmsrl", scope: !2123, file: !2123, line: 260, type: !2149, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !6, !296}
!2151 = !{!2152, !2153}
!2152 = !DILocalVariable(name: "msr", arg: 1, scope: !2148, file: !2123, line: 260, type: !6)
!2153 = !DILocalVariable(name: "val", arg: 2, scope: !2148, file: !2123, line: 260, type: !296)
!2154 = !DILocation(line: 260, column: 40, scope: !2148)
!2155 = !DILocation(line: 260, column: 49, scope: !2148)
!2156 = !DILocation(line: 262, column: 19, scope: !2148)
!2157 = !DILocation(line: 262, column: 30, scope: !2148)
!2158 = !DILocation(line: 262, column: 34, scope: !2148)
!2159 = !DILocation(line: 262, column: 24, scope: !2148)
!2160 = !DILocation(line: 262, column: 58, scope: !2148)
!2161 = !DILocation(line: 262, column: 62, scope: !2148)
!2162 = !DILocation(line: 262, column: 52, scope: !2148)
!2163 = !DILocation(line: 262, column: 2, scope: !2148)
!2164 = !DILocation(line: 263, column: 1, scope: !2148)
!2165 = distinct !DISubprogram(name: "__rdmsr", scope: !2123, file: !2123, line: 80, type: !2124, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2166 = !{!2167, !2168, !2169}
!2167 = !DILocalVariable(name: "msr", arg: 1, scope: !2165, file: !2123, line: 80, type: !6)
!2168 = !DILocalVariable(name: "low", scope: !2165, file: !2123, line: 82, type: !287)
!2169 = !DILocalVariable(name: "high", scope: !2165, file: !2123, line: 82, type: !287)
!2170 = !DILocation(line: 80, column: 64, scope: !2165)
!2171 = !DILocation(line: 82, column: 2, scope: !2165)
!2172 = !DILocation(line: 87, column: 45, scope: !2165)
!2173 = !DILocation(line: 84, column: 2, scope: !2165)
!2174 = !{i64 1906552, i64 1906573, i64 2149584175, i64 2149584219, i64 2149584242, i64 2149584275, i64 2149584306, i64 2149584345}
!2175 = !DILocation(line: 89, column: 9, scope: !2165)
!2176 = !DILocation(line: 90, column: 1, scope: !2165)
!2177 = !DILocation(line: 89, column: 2, scope: !2165)
!2178 = distinct !DISubprogram(name: "static_key_false", scope: !1449, file: !1449, line: 205, type: !2179, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2193)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!352, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1449, line: 85, size: 128, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2182, file: !1449, line: 86, baseType: !418, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !1449, line: 101, baseType: !2186, size: 64, offset: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2182, file: !1449, line: 101, size: 64, elements: !2187)
!2187 = !{!2188, !2189, !2190}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2186, file: !1449, line: 102, baseType: !287, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2186, file: !1449, line: 103, baseType: !1447, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2186, file: !1449, line: 104, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1449, line: 104, flags: DIFlagFwdDecl)
!2193 = !{!2194}
!2194 = !DILocalVariable(name: "key", arg: 1, scope: !2178, file: !1449, line: 205, type: !2181)
!2195 = !DILocation(line: 205, column: 65, scope: !2178)
!2196 = !DILocation(line: 207, column: 28, scope: !2178)
!2197 = !DILocation(line: 207, column: 9, scope: !2178)
!2198 = !DILocation(line: 207, column: 2, scope: !2178)
!2199 = !DISubprogram(name: "do_trace_read_msr", scope: !2123, file: !2123, line: 65, type: !2200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !6, !296, !15}
!2202 = distinct !DISubprogram(name: "arch_static_branch", scope: !2203, file: !2203, line: 25, type: !2204, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2206)
!2203 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!352, !2181, !352}
!2206 = !{!2207, !2208, !2209}
!2207 = !DILocalVariable(name: "key", arg: 1, scope: !2202, file: !2203, line: 25, type: !2181)
!2208 = !DILocalVariable(name: "branch", arg: 2, scope: !2202, file: !2203, line: 25, type: !352)
!2209 = !DILabel(scope: !2202, name: "l_yes", file: !2203, line: 33)
!2210 = !DILocation(line: 25, column: 67, scope: !2202)
!2211 = !DILocation(line: 25, column: 77, scope: !2202)
!2212 = !DILocation(line: 30, column: 13, scope: !2202)
!2213 = !DILocation(line: 30, column: 28, scope: !2202)
!2214 = !DILocation(line: 30, column: 26, scope: !2202)
!2215 = !DILocation(line: 27, column: 2, scope: !2202)
!2216 = !{i64 1570874, i64 1570918, i64 2149055601, i64 2149055622, i64 2149055648, i64 2149055681, i64 2149055715, i64 2149055739}
!2217 = !DILocation(line: 32, column: 2, scope: !2202)
!2218 = !DILocation(line: 33, column: 1, scope: !2202)
!2219 = !DILocation(line: 34, column: 2, scope: !2202)
!2220 = !DILocation(line: 35, column: 1, scope: !2202)
!2221 = distinct !DISubprogram(name: "native_write_msr", scope: !2123, file: !2123, line: 143, type: !2222, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !6, !294, !294}
!2224 = !{!2225, !2226, !2227}
!2225 = !DILocalVariable(name: "msr", arg: 1, scope: !2221, file: !2123, line: 143, type: !6)
!2226 = !DILocalVariable(name: "low", arg: 2, scope: !2221, file: !2123, line: 143, type: !294)
!2227 = !DILocalVariable(name: "high", arg: 3, scope: !2221, file: !2123, line: 143, type: !294)
!2228 = !DILocation(line: 143, column: 31, scope: !2221)
!2229 = !DILocation(line: 143, column: 40, scope: !2221)
!2230 = !DILocation(line: 143, column: 49, scope: !2221)
!2231 = !DILocation(line: 145, column: 10, scope: !2221)
!2232 = !DILocation(line: 145, column: 15, scope: !2221)
!2233 = !DILocation(line: 145, column: 20, scope: !2221)
!2234 = !DILocation(line: 145, column: 2, scope: !2221)
!2235 = !DILocation(line: 147, column: 6, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2221, file: !2123, line: 147, column: 6)
!2237 = !DILocation(line: 147, column: 6, scope: !2221)
!2238 = !DILocation(line: 148, column: 22, scope: !2236)
!2239 = !DILocation(line: 148, column: 33, scope: !2236)
!2240 = !DILocation(line: 148, column: 28, scope: !2236)
!2241 = !DILocation(line: 148, column: 38, scope: !2236)
!2242 = !DILocation(line: 148, column: 46, scope: !2236)
!2243 = !DILocation(line: 148, column: 44, scope: !2236)
!2244 = !DILocation(line: 148, column: 3, scope: !2236)
!2245 = !DILocation(line: 149, column: 1, scope: !2221)
!2246 = distinct !DISubprogram(name: "__wrmsr", scope: !2123, file: !2123, line: 92, type: !2222, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2247)
!2247 = !{!2248, !2249, !2250}
!2248 = !DILocalVariable(name: "msr", arg: 1, scope: !2246, file: !2123, line: 92, type: !6)
!2249 = !DILocalVariable(name: "low", arg: 2, scope: !2246, file: !2123, line: 92, type: !294)
!2250 = !DILocalVariable(name: "high", arg: 3, scope: !2246, file: !2123, line: 92, type: !294)
!2251 = !DILocation(line: 92, column: 50, scope: !2246)
!2252 = !DILocation(line: 92, column: 59, scope: !2246)
!2253 = !DILocation(line: 92, column: 68, scope: !2246)
!2254 = !DILocation(line: 97, column: 17, scope: !2246)
!2255 = !DILocation(line: 97, column: 27, scope: !2246)
!2256 = !DILocation(line: 97, column: 38, scope: !2246)
!2257 = !DILocation(line: 94, column: 2, scope: !2246)
!2258 = !{i64 1906808, i64 1906829, i64 2149584674, i64 2149584718, i64 2149584741, i64 2149584774, i64 2149584805, i64 2149584844}
!2259 = !DILocation(line: 98, column: 1, scope: !2246)
!2260 = !DISubprogram(name: "do_trace_write_msr", scope: !2123, file: !2123, line: 64, type: !2200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2261 = distinct !DISubprogram(name: "energy_perf_bias_show", scope: !3, file: !3, line: 130, type: !1033, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2262)
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2268}
!2263 = !DILocalVariable(name: "dev", arg: 1, scope: !2261, file: !3, line: 130, type: !1035)
!2264 = !DILocalVariable(name: "attr", arg: 2, scope: !2261, file: !3, line: 131, type: !1850)
!2265 = !DILocalVariable(name: "buf", arg: 3, scope: !2261, file: !3, line: 132, type: !461)
!2266 = !DILocalVariable(name: "cpu", scope: !2261, file: !3, line: 134, type: !6)
!2267 = !DILocalVariable(name: "epb", scope: !2261, file: !3, line: 135, type: !296)
!2268 = !DILocalVariable(name: "ret", scope: !2261, file: !3, line: 136, type: !15)
!2269 = !DILocation(line: 130, column: 53, scope: !2261)
!2270 = !DILocation(line: 131, column: 35, scope: !2261)
!2271 = !DILocation(line: 132, column: 16, scope: !2261)
!2272 = !DILocation(line: 134, column: 2, scope: !2261)
!2273 = !DILocation(line: 134, column: 15, scope: !2261)
!2274 = !DILocation(line: 134, column: 21, scope: !2261)
!2275 = !DILocation(line: 134, column: 26, scope: !2261)
!2276 = !DILocation(line: 135, column: 2, scope: !2261)
!2277 = !DILocation(line: 135, column: 6, scope: !2261)
!2278 = !DILocation(line: 136, column: 2, scope: !2261)
!2279 = !DILocation(line: 136, column: 6, scope: !2261)
!2280 = !DILocation(line: 138, column: 22, scope: !2261)
!2281 = !DILocation(line: 138, column: 8, scope: !2261)
!2282 = !DILocation(line: 138, column: 6, scope: !2261)
!2283 = !DILocation(line: 139, column: 6, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 139, column: 6)
!2285 = !DILocation(line: 139, column: 10, scope: !2284)
!2286 = !DILocation(line: 139, column: 6, scope: !2261)
!2287 = !DILocation(line: 140, column: 10, scope: !2284)
!2288 = !DILocation(line: 140, column: 3, scope: !2284)
!2289 = !DILocation(line: 142, column: 17, scope: !2261)
!2290 = !DILocation(line: 142, column: 32, scope: !2261)
!2291 = !DILocation(line: 142, column: 9, scope: !2261)
!2292 = !DILocation(line: 142, column: 2, scope: !2261)
!2293 = !DILocation(line: 143, column: 1, scope: !2261)
!2294 = distinct !DISubprogram(name: "energy_perf_bias_store", scope: !3, file: !3, line: 145, type: !1853, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303}
!2296 = !DILocalVariable(name: "dev", arg: 1, scope: !2294, file: !3, line: 145, type: !1035)
!2297 = !DILocalVariable(name: "attr", arg: 2, scope: !2294, file: !3, line: 146, type: !1850)
!2298 = !DILocalVariable(name: "buf", arg: 3, scope: !2294, file: !3, line: 147, type: !373)
!2299 = !DILocalVariable(name: "count", arg: 4, scope: !2294, file: !3, line: 147, type: !506)
!2300 = !DILocalVariable(name: "cpu", scope: !2294, file: !3, line: 149, type: !6)
!2301 = !DILocalVariable(name: "epb", scope: !2294, file: !3, line: 150, type: !296)
!2302 = !DILocalVariable(name: "val", scope: !2294, file: !3, line: 150, type: !296)
!2303 = !DILocalVariable(name: "ret", scope: !2294, file: !3, line: 151, type: !15)
!2304 = !DILocation(line: 145, column: 54, scope: !2294)
!2305 = !DILocation(line: 146, column: 36, scope: !2294)
!2306 = !DILocation(line: 147, column: 23, scope: !2294)
!2307 = !DILocation(line: 147, column: 35, scope: !2294)
!2308 = !DILocation(line: 149, column: 2, scope: !2294)
!2309 = !DILocation(line: 149, column: 15, scope: !2294)
!2310 = !DILocation(line: 149, column: 21, scope: !2294)
!2311 = !DILocation(line: 149, column: 26, scope: !2294)
!2312 = !DILocation(line: 150, column: 2, scope: !2294)
!2313 = !DILocation(line: 150, column: 6, scope: !2294)
!2314 = !DILocation(line: 150, column: 11, scope: !2294)
!2315 = !DILocation(line: 151, column: 2, scope: !2294)
!2316 = !DILocation(line: 151, column: 6, scope: !2294)
!2317 = !DILocation(line: 154, column: 41, scope: !2294)
!2318 = !DILocation(line: 153, column: 8, scope: !2294)
!2319 = !DILocation(line: 153, column: 6, scope: !2294)
!2320 = !DILocation(line: 155, column: 6, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 155, column: 6)
!2322 = !DILocation(line: 155, column: 10, scope: !2321)
!2323 = !DILocation(line: 155, column: 6, scope: !2294)
!2324 = !DILocation(line: 156, column: 27, scope: !2321)
!2325 = !DILocation(line: 156, column: 9, scope: !2321)
!2326 = !DILocation(line: 156, column: 7, scope: !2321)
!2327 = !DILocation(line: 156, column: 3, scope: !2321)
!2328 = !DILocation(line: 157, column: 21, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 157, column: 11)
!2330 = !DILocation(line: 157, column: 11, scope: !2329)
!2331 = !DILocation(line: 157, column: 35, scope: !2329)
!2332 = !DILocation(line: 157, column: 38, scope: !2329)
!2333 = !DILocation(line: 157, column: 42, scope: !2329)
!2334 = !DILocation(line: 157, column: 11, scope: !2321)
!2335 = !DILocation(line: 158, column: 3, scope: !2329)
!2336 = !DILocation(line: 160, column: 22, scope: !2294)
!2337 = !DILocation(line: 160, column: 8, scope: !2294)
!2338 = !DILocation(line: 160, column: 6, scope: !2294)
!2339 = !DILocation(line: 161, column: 6, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 161, column: 6)
!2341 = !DILocation(line: 161, column: 10, scope: !2340)
!2342 = !DILocation(line: 161, column: 6, scope: !2294)
!2343 = !DILocation(line: 162, column: 10, scope: !2340)
!2344 = !DILocation(line: 162, column: 3, scope: !2340)
!2345 = !DILocation(line: 164, column: 22, scope: !2294)
!2346 = !DILocation(line: 165, column: 9, scope: !2294)
!2347 = !DILocation(line: 165, column: 13, scope: !2294)
!2348 = !DILocation(line: 165, column: 28, scope: !2294)
!2349 = !DILocation(line: 165, column: 26, scope: !2294)
!2350 = !DILocation(line: 164, column: 8, scope: !2294)
!2351 = !DILocation(line: 164, column: 6, scope: !2294)
!2352 = !DILocation(line: 166, column: 6, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 166, column: 6)
!2354 = !DILocation(line: 166, column: 10, scope: !2353)
!2355 = !DILocation(line: 166, column: 6, scope: !2294)
!2356 = !DILocation(line: 167, column: 10, scope: !2353)
!2357 = !DILocation(line: 167, column: 3, scope: !2353)
!2358 = !DILocation(line: 169, column: 9, scope: !2294)
!2359 = !DILocation(line: 169, column: 2, scope: !2294)
!2360 = !DILocation(line: 170, column: 1, scope: !2294)
!2361 = !DISubprogram(name: "rdmsrl_on_cpu", scope: !2123, file: !2123, line: 316, type: !2362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!15, !6, !294, !1762}
!2364 = !DISubprogram(name: "sprintf", scope: !2365, file: !2365, line: 10, type: !2366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2365 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!15, !461, !373, null}
!2368 = !DISubprogram(name: "__sysfs_match_string", scope: !2369, file: !2369, line: 228, type: !2370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2369 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!15, !2372, !506, !373}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!2373 = distinct !DISubprogram(name: "kstrtou64", scope: !2374, file: !2374, line: 74, type: !2375, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2377)
!2374 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!15, !373, !6, !1762}
!2377 = !{!2378, !2379, !2380}
!2378 = !DILocalVariable(name: "s", arg: 1, scope: !2373, file: !2374, line: 74, type: !373)
!2379 = !DILocalVariable(name: "base", arg: 2, scope: !2373, file: !2374, line: 74, type: !6)
!2380 = !DILocalVariable(name: "res", arg: 3, scope: !2373, file: !2374, line: 74, type: !1762)
!2381 = !DILocation(line: 74, column: 54, scope: !2373)
!2382 = !DILocation(line: 74, column: 70, scope: !2373)
!2383 = !DILocation(line: 74, column: 81, scope: !2373)
!2384 = !DILocation(line: 76, column: 19, scope: !2373)
!2385 = !DILocation(line: 76, column: 22, scope: !2373)
!2386 = !DILocation(line: 76, column: 28, scope: !2373)
!2387 = !DILocation(line: 76, column: 9, scope: !2373)
!2388 = !DILocation(line: 76, column: 2, scope: !2373)
!2389 = !DISubprogram(name: "wrmsrl_on_cpu", scope: !2123, file: !2123, line: 317, type: !2390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!15, !6, !294, !296}
!2392 = !DISubprogram(name: "kstrtoull", scope: !2374, file: !2374, line: 12, type: !2393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!15, !373, !6, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!2396 = !DISubprogram(name: "sysfs_unmerge_group", scope: !370, file: !370, line: 325, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{null, !380, !511}
!2399 = distinct !DISubprogram(name: "intel_epb_save", scope: !3, file: !3, line: 78, type: !1248, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2400)
!2400 = !{!2401, !2402, !2405}
!2401 = !DILocalVariable(name: "epb", scope: !2399, file: !3, line: 80, type: !296)
!2402 = !DILocalVariable(name: "__vpp_verify", scope: !2403, file: !3, line: 87, type: !341)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 87, column: 2)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 87, column: 2)
!2405 = !DILocalVariable(name: "pto_val__", scope: !2406, file: !3, line: 87, type: !289)
!2406 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 87, column: 2)
!2407 = !DILocation(line: 80, column: 2, scope: !2399)
!2408 = !DILocation(line: 80, column: 6, scope: !2399)
!2409 = !DILocation(line: 82, column: 2, scope: !2399)
!2410 = !DILocation(line: 87, column: 2, scope: !2399)
!2411 = !DILocation(line: 87, column: 2, scope: !2404)
!2412 = !DILocation(line: 87, column: 2, scope: !2403)
!2413 = !DILocation(line: 87, column: 2, scope: !2406)
!2414 = !{i64 2152628413}
!2415 = !DILocation(line: 90, column: 1, scope: !2399)
!2416 = !DILocation(line: 89, column: 2, scope: !2399)
!2417 = !DISubprogram(name: "__cpuhp_remove_state", scope: !14, file: !14, line: 434, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{null, !13, !352}
