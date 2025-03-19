; ModuleID = 'drivers/base/power/common.c'
source_filename = "drivers/base/power/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_get_subsys_data: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_get_subsys_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_put_subsys_data: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_put_subsys_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_domain_attach: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_domain_attach ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_domain_attach_by_id: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_domain_attach_by_id ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_domain_attach_by_name: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_domain_attach_by_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_domain_detach: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_domain_detach ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_domain_start: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_domain_start ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_domain_set: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_domain_set ; .previous"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.list_head = type { ptr, ptr }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_dev_pm_get_subsys_data206 = internal global ptr @dev_pm_get_subsys_data, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_dev_pm_put_subsys_data207 = internal global ptr @dev_pm_put_subsys_data, section ".discard.addressable", align 8, !dbg !122
@__UNIQUE_ID___addressable_dev_pm_domain_attach208 = internal global ptr @dev_pm_domain_attach, section ".discard.addressable", align 8, !dbg !124
@__UNIQUE_ID___addressable_dev_pm_domain_attach_by_id209 = internal global ptr @dev_pm_domain_attach_by_id, section ".discard.addressable", align 8, !dbg !126
@__UNIQUE_ID___addressable_dev_pm_domain_attach_by_name210 = internal global ptr @dev_pm_domain_attach_by_name, section ".discard.addressable", align 8, !dbg !128
@__UNIQUE_ID___addressable_dev_pm_domain_detach211 = internal global ptr @dev_pm_domain_detach, section ".discard.addressable", align 8, !dbg !130
@__UNIQUE_ID___addressable_dev_pm_domain_start212 = internal global ptr @dev_pm_domain_start, section ".discard.addressable", align 8, !dbg !132
@.str = private unnamed_addr constant [52 x i8] c"PM domains can only be changed for unbound devices\0A\00", align 1, !dbg !134
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/base/power/common.c\00", align 1, !dbg !140
@__UNIQUE_ID___addressable_dev_pm_domain_set213 = internal global ptr @dev_pm_domain_set, section ".discard.addressable", align 8, !dbg !145
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !147
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_dev_pm_get_subsys_data206, ptr @__UNIQUE_ID___addressable_dev_pm_put_subsys_data207, ptr @__UNIQUE_ID___addressable_dev_pm_domain_attach208, ptr @__UNIQUE_ID___addressable_dev_pm_domain_attach_by_id209, ptr @__UNIQUE_ID___addressable_dev_pm_domain_attach_by_name210, ptr @__UNIQUE_ID___addressable_dev_pm_domain_detach211, ptr @__UNIQUE_ID___addressable_dev_pm_domain_start212, ptr @__UNIQUE_ID___addressable_dev_pm_domain_set213], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dev_pm_get_subsys_data(ptr noundef %dev) #0 align 16 !dbg !161 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %psd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.lifetime.start.p0(i64 8, ptr %psd) #14, !dbg !1853
  call void @llvm.dbg.declare(metadata ptr %psd, metadata !1851, metadata !DIExpression()), !dbg !1854
  %call = call noalias ptr @kzalloc(i64 noundef 8, i32 noundef 3264) #15, !dbg !1855
  store ptr %call, ptr %psd, align 8, !dbg !1856
  %0 = load ptr, ptr %psd, align 8, !dbg !1857
  %tobool = icmp ne ptr %0, null, !dbg !1857
  br i1 %tobool, label %if.end, label %if.then, !dbg !1859

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1860

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1861
  %power = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !1862
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !1863
  call void @spin_lock_irq(ptr noundef %lock) #16, !dbg !1864
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1865
  %power1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, !dbg !1867
  %subsys_data = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 26, !dbg !1868
  %3 = load ptr, ptr %subsys_data, align 8, !dbg !1868
  %tobool2 = icmp ne ptr %3, null, !dbg !1865
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1869

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !1870
  %power4 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, !dbg !1872
  %subsys_data5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 26, !dbg !1873
  %5 = load ptr, ptr %subsys_data5, align 8, !dbg !1873
  %refcount = getelementptr inbounds %struct.pm_subsys_data, ptr %5, i32 0, i32 1, !dbg !1874
  %6 = load i32, ptr %refcount, align 4, !dbg !1875
  %inc = add i32 %6, 1, !dbg !1875
  store i32 %inc, ptr %refcount, align 4, !dbg !1875
  br label %if.end12, !dbg !1876

if.else:                                          ; preds = %if.end
  br label %do.body, !dbg !1877

do.body:                                          ; preds = %if.else
  %7 = load ptr, ptr %psd, align 8, !dbg !1879
  %lock6 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 0, !dbg !1879
  %call7 = call ptr @spinlock_check(ptr noundef %lock6) #16, !dbg !1879
  %8 = load ptr, ptr %psd, align 8, !dbg !1879
  %lock8 = getelementptr inbounds %struct.pm_subsys_data, ptr %8, i32 0, i32 0, !dbg !1879
  %9 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !1879
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %9, i32 0, i32 0, !dbg !1879
  %10 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !1879
  %counter = getelementptr inbounds %struct.atomic_t, ptr %10, i32 0, i32 0, !dbg !1879
  store i32 0, ptr %counter, align 4, !dbg !1879
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock8, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !1879
  br label %do.cond, !dbg !1879

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1879

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %psd, align 8, !dbg !1881
  %refcount9 = getelementptr inbounds %struct.pm_subsys_data, ptr %11, i32 0, i32 1, !dbg !1882
  store i32 1, ptr %refcount9, align 4, !dbg !1883
  %12 = load ptr, ptr %psd, align 8, !dbg !1884
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !1885
  %power10 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, !dbg !1886
  %subsys_data11 = getelementptr inbounds %struct.dev_pm_info, ptr %power10, i32 0, i32 26, !dbg !1887
  store ptr %12, ptr %subsys_data11, align 8, !dbg !1888
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !1889
  call void @pm_clk_init(ptr noundef %14) #16, !dbg !1890
  store ptr null, ptr %psd, align 8, !dbg !1891
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then3
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !1892
  %power13 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 11, !dbg !1893
  %lock14 = getelementptr inbounds %struct.dev_pm_info, ptr %power13, i32 0, i32 3, !dbg !1894
  call void @spin_unlock_irq(ptr noundef %lock14) #16, !dbg !1895
  %16 = load ptr, ptr %psd, align 8, !dbg !1896
  call void @kfree(ptr noundef %16) #16, !dbg !1897
  store i32 0, ptr %retval, align 4, !dbg !1898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1898

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %psd) #14, !dbg !1899
  %17 = load i32, ptr %retval, align 4, !dbg !1899
  ret i32 %17, !dbg !1899
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !1900 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1904, metadata !DIExpression()), !dbg !1906
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1905, metadata !DIExpression()), !dbg !1907
  %0 = load i64, ptr %size.addr, align 8, !dbg !1908
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1909
  %or = or i32 %1, 256, !dbg !1910
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1911
  ret ptr %call, !dbg !1912
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !1913 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1919, metadata !DIExpression()), !dbg !1920
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1921
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1921
  call void @_raw_spin_lock_irq(ptr noundef %1) #16, !dbg !1921
  ret void, !dbg !1922
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !1923 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1928, metadata !DIExpression()), !dbg !1929
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1930
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1931
  ret ptr %1, !dbg !1932
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pm_clk_init(ptr noundef %dev) #6 align 16 !dbg !1933 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1936, metadata !DIExpression()), !dbg !1937
  ret void, !dbg !1938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !1939 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1941, metadata !DIExpression()), !dbg !1942
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1943
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1943
  call void @_raw_spin_unlock_irq(ptr noundef %1) #16, !dbg !1943
  ret void, !dbg !1944
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1945 dso_local void @kfree(ptr noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dev_pm_put_subsys_data(ptr noundef %dev) #0 align 16 !dbg !1948 {
entry:
  %dev.addr = alloca ptr, align 8
  %psd = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1950, metadata !DIExpression()), !dbg !1953
  call void @llvm.lifetime.start.p0(i64 8, ptr %psd) #14, !dbg !1954
  call void @llvm.dbg.declare(metadata ptr %psd, metadata !1951, metadata !DIExpression()), !dbg !1955
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1956
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !1957
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !1958
  call void @spin_lock_irq(ptr noundef %lock) #16, !dbg !1959
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1960
  %call = call ptr @dev_to_psd(ptr noundef %1) #16, !dbg !1961
  store ptr %call, ptr %psd, align 8, !dbg !1962
  %2 = load ptr, ptr %psd, align 8, !dbg !1963
  %tobool = icmp ne ptr %2, null, !dbg !1963
  br i1 %tobool, label %if.end, label %if.then, !dbg !1965

if.then:                                          ; preds = %entry
  br label %out, !dbg !1966

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %psd, align 8, !dbg !1967
  %refcount = getelementptr inbounds %struct.pm_subsys_data, ptr %3, i32 0, i32 1, !dbg !1969
  %4 = load i32, ptr %refcount, align 4, !dbg !1970
  %dec = add i32 %4, -1, !dbg !1970
  store i32 %dec, ptr %refcount, align 4, !dbg !1970
  %cmp = icmp eq i32 %dec, 0, !dbg !1971
  br i1 %cmp, label %if.then1, label %if.else, !dbg !1972

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !1973
  %power2 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, !dbg !1974
  %subsys_data = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 26, !dbg !1975
  store ptr null, ptr %subsys_data, align 8, !dbg !1976
  br label %if.end3, !dbg !1973

if.else:                                          ; preds = %if.end
  store ptr null, ptr %psd, align 8, !dbg !1977
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  br label %out, !dbg !1978

out:                                              ; preds = %if.end3, %if.then
  call void @llvm.dbg.label(metadata !1952), !dbg !1979
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !1980
  %power4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !1981
  %lock5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 3, !dbg !1982
  call void @spin_unlock_irq(ptr noundef %lock5) #16, !dbg !1983
  %7 = load ptr, ptr %psd, align 8, !dbg !1984
  call void @kfree(ptr noundef %7) #16, !dbg !1985
  call void @llvm.lifetime.end.p0(i64 8, ptr %psd) #14, !dbg !1986
  ret void, !dbg !1986
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_to_psd(ptr noundef %dev) #6 align 16 !dbg !1987 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1991, metadata !DIExpression()), !dbg !1992
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1993
  %tobool = icmp ne ptr %0, null, !dbg !1993
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1993

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1994
  %power = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !1995
  %subsys_data = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 26, !dbg !1996
  %2 = load ptr, ptr %subsys_data, align 8, !dbg !1996
  br label %cond.end, !dbg !1993

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1993

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ], !dbg !1993
  ret ptr %cond, !dbg !1997
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dev_pm_domain_attach(ptr noundef %dev, i1 noundef zeroext %power_on) #0 align 16 !dbg !1998 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %power_on.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2002, metadata !DIExpression()), !dbg !2005
  %frombool = zext i1 %power_on to i8
  store i8 %frombool, ptr %power_on.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %power_on.addr, metadata !2003, metadata !DIExpression()), !dbg !2006
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2007
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2004, metadata !DIExpression()), !dbg !2008
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2009
  %pm_domain = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12, !dbg !2011
  %1 = load ptr, ptr %pm_domain, align 8, !dbg !2011
  %tobool = icmp ne ptr %1, null, !dbg !2009
  br i1 %tobool, label %if.then, label %if.end, !dbg !2012

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2013

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2014
  %3 = load i8, ptr %power_on.addr, align 1, !dbg !2015, !range !2016, !noundef !393
  %tobool1 = trunc i8 %3 to i1, !dbg !2015
  %call = call i32 @acpi_dev_pm_attach(ptr noundef %2, i1 noundef zeroext %tobool1) #16, !dbg !2017
  store i32 %call, ptr %ret, align 4, !dbg !2018
  %4 = load i32, ptr %ret, align 4, !dbg !2019
  %tobool2 = icmp ne i32 %4, 0, !dbg !2019
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !2021

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2022
  %call4 = call i32 @genpd_dev_pm_attach(ptr noundef %5) #16, !dbg !2023
  store i32 %call4, ptr %ret, align 4, !dbg !2024
  br label %if.end5, !dbg !2025

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !2026
  %cmp = icmp slt i32 %6, 0, !dbg !2027
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2026

cond.true:                                        ; preds = %if.end5
  %7 = load i32, ptr %ret, align 4, !dbg !2028
  br label %cond.end, !dbg !2026

cond.false:                                       ; preds = %if.end5
  br label %cond.end, !dbg !2026

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false ], !dbg !2026
  store i32 %cond, ptr %retval, align 4, !dbg !2029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2029

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2030
  %8 = load i32, ptr %retval, align 4, !dbg !2030
  ret i32 %8, !dbg !2030
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2031 dso_local i32 @acpi_dev_pm_attach(ptr noundef, i1 noundef zeroext) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @genpd_dev_pm_attach(ptr noundef %dev) #6 align 16 !dbg !2033 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2036, metadata !DIExpression()), !dbg !2037
  ret i32 0, !dbg !2038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dev_pm_domain_attach_by_id(ptr noundef %dev, i32 noundef %index) #0 align 16 !dbg !2039 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2043, metadata !DIExpression()), !dbg !2045
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2044, metadata !DIExpression()), !dbg !2046
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2047
  %pm_domain = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12, !dbg !2049
  %1 = load ptr, ptr %pm_domain, align 8, !dbg !2049
  %tobool = icmp ne ptr %1, null, !dbg !2047
  br i1 %tobool, label %if.then, label %if.end, !dbg !2050

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -17) #16, !dbg !2051
  store ptr %call, ptr %retval, align 8, !dbg !2052
  br label %return, !dbg !2052

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2053
  %3 = load i32, ptr %index.addr, align 4, !dbg !2054
  %call1 = call ptr @genpd_dev_pm_attach_by_id(ptr noundef %2, i32 noundef %3) #16, !dbg !2055
  store ptr %call1, ptr %retval, align 8, !dbg !2056
  br label %return, !dbg !2056

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !2057
  ret ptr %4, !dbg !2057
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !2058 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2063, metadata !DIExpression()), !dbg !2064
  %0 = load i64, ptr %error.addr, align 8, !dbg !2065
  %1 = inttoptr i64 %0 to ptr, !dbg !2066
  ret ptr %1, !dbg !2067
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @genpd_dev_pm_attach_by_id(ptr noundef %dev, i32 noundef %index) #6 align 16 !dbg !2068 {
entry:
  %dev.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2070, metadata !DIExpression()), !dbg !2072
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2071, metadata !DIExpression()), !dbg !2073
  ret ptr null, !dbg !2074
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dev_pm_domain_attach_by_name(ptr noundef %dev, ptr noundef %name) #0 align 16 !dbg !2075 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2079, metadata !DIExpression()), !dbg !2081
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2080, metadata !DIExpression()), !dbg !2082
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2083
  %pm_domain = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12, !dbg !2085
  %1 = load ptr, ptr %pm_domain, align 8, !dbg !2085
  %tobool = icmp ne ptr %1, null, !dbg !2083
  br i1 %tobool, label %if.then, label %if.end, !dbg !2086

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -17) #16, !dbg !2087
  store ptr %call, ptr %retval, align 8, !dbg !2088
  br label %return, !dbg !2088

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2089
  %3 = load ptr, ptr %name.addr, align 8, !dbg !2090
  %call1 = call ptr @genpd_dev_pm_attach_by_name(ptr noundef %2, ptr noundef %3) #16, !dbg !2091
  store ptr %call1, ptr %retval, align 8, !dbg !2092
  br label %return, !dbg !2092

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !2093
  ret ptr %4, !dbg !2093
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @genpd_dev_pm_attach_by_name(ptr noundef %dev, ptr noundef %name) #6 align 16 !dbg !2094 {
entry:
  %dev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2096, metadata !DIExpression()), !dbg !2098
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2097, metadata !DIExpression()), !dbg !2099
  ret ptr null, !dbg !2100
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dev_pm_domain_detach(ptr noundef %dev, i1 noundef zeroext %power_off) #0 align 16 !dbg !2101 {
entry:
  %dev.addr = alloca ptr, align 8
  %power_off.addr = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2103, metadata !DIExpression()), !dbg !2105
  %frombool = zext i1 %power_off to i8
  store i8 %frombool, ptr %power_off.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %power_off.addr, metadata !2104, metadata !DIExpression()), !dbg !2106
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2107
  %pm_domain = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12, !dbg !2109
  %1 = load ptr, ptr %pm_domain, align 8, !dbg !2109
  %tobool = icmp ne ptr %1, null, !dbg !2107
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2110

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2111
  %pm_domain1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, !dbg !2112
  %3 = load ptr, ptr %pm_domain1, align 8, !dbg !2112
  %detach = getelementptr inbounds %struct.dev_pm_domain, ptr %3, i32 0, i32 2, !dbg !2113
  %4 = load ptr, ptr %detach, align 8, !dbg !2113
  %tobool2 = icmp ne ptr %4, null, !dbg !2111
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2114

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2115
  %pm_domain3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, !dbg !2116
  %6 = load ptr, ptr %pm_domain3, align 8, !dbg !2116
  %detach4 = getelementptr inbounds %struct.dev_pm_domain, ptr %6, i32 0, i32 2, !dbg !2117
  %7 = load ptr, ptr %detach4, align 8, !dbg !2117
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2118
  %9 = load i8, ptr %power_off.addr, align 1, !dbg !2119, !range !2016, !noundef !393
  %tobool5 = trunc i8 %9 to i1, !dbg !2119
  call void %7(ptr noundef %8, i1 noundef zeroext %tobool5) #16, !dbg !2115
  br label %if.end, !dbg !2115

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !2120
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dev_pm_domain_start(ptr noundef %dev) #0 align 16 !dbg !2121 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2123, metadata !DIExpression()), !dbg !2124
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2125
  %pm_domain = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12, !dbg !2127
  %1 = load ptr, ptr %pm_domain, align 8, !dbg !2127
  %tobool = icmp ne ptr %1, null, !dbg !2125
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2128

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2129
  %pm_domain1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, !dbg !2130
  %3 = load ptr, ptr %pm_domain1, align 8, !dbg !2130
  %start = getelementptr inbounds %struct.dev_pm_domain, ptr %3, i32 0, i32 1, !dbg !2131
  %4 = load ptr, ptr %start, align 8, !dbg !2131
  %tobool2 = icmp ne ptr %4, null, !dbg !2129
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2132

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2133
  %pm_domain3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, !dbg !2134
  %6 = load ptr, ptr %pm_domain3, align 8, !dbg !2134
  %start4 = getelementptr inbounds %struct.dev_pm_domain, ptr %6, i32 0, i32 1, !dbg !2135
  %7 = load ptr, ptr %start4, align 8, !dbg !2135
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2136
  %call = call i32 %7(ptr noundef %8) #16, !dbg !2133
  store i32 %call, ptr %retval, align 4, !dbg !2137
  br label %return, !dbg !2137

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !2138
  br label %return, !dbg !2138

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !2139
  ret i32 %9, !dbg !2139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dev_pm_domain_set(ptr noundef %dev, ptr noundef %pd) #0 align 16 !dbg !2140 {
entry:
  %dev.addr = alloca ptr, align 8
  %pd.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2144, metadata !DIExpression()), !dbg !2152
  store ptr %pd, ptr %pd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pd.addr, metadata !2145, metadata !DIExpression()), !dbg !2153
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2154
  %pm_domain = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12, !dbg !2156
  %1 = load ptr, ptr %pm_domain, align 8, !dbg !2156
  %2 = load ptr, ptr %pd.addr, align 8, !dbg !2157
  %cmp = icmp eq ptr %1, %2, !dbg !2158
  br i1 %cmp, label %if.then, label %if.end, !dbg !2159

if.then:                                          ; preds = %entry
  br label %return, !dbg !2160

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2161
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2146, metadata !DIExpression()), !dbg !2161
  %3 = load ptr, ptr %pd.addr, align 8, !dbg !2161
  %tobool = icmp ne ptr %3, null, !dbg !2161
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2161

land.rhs:                                         ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2161
  %call = call zeroext i1 @device_is_bound(ptr noundef %4) #16, !dbg !2161
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %5 = phi i1 [ false, %if.end ], [ %call, %land.rhs ], !dbg !2162
  %lnot = xor i1 %5, true, !dbg !2161
  %lnot1 = xor i1 %lnot, true, !dbg !2161
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2161
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2161
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2163
  %tobool2 = icmp ne i32 %6, 0, !dbg !2163
  %lnot3 = xor i1 %tobool2, true, !dbg !2163
  %lnot5 = xor i1 %lnot3, true, !dbg !2163
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2163
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2163
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2163
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2163
  br i1 %tobool7, label %if.then8, label %if.end27, !dbg !2161

if.then8:                                         ; preds = %land.end
  br label %do.body, !dbg !2163

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !2164

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2165

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2165

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #16, !dbg !2164
  br label %do.body10, !dbg !2164

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2167
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2148, metadata !DIExpression()), !dbg !2167
  store i32 2313, ptr %__flags, align 4, !dbg !2167
  br label %do.body11, !dbg !2167

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2168

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2168

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2167

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !2170
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 226, i32 %7, i64 12) #14, !dbg !2170, !srcloc !2172
  br label %do.cond15, !dbg !2170

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2170

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2167

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2173

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2173

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2164
  br label %do.cond20, !dbg !2167

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2167

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !2164

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !2175

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2175

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !2164

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !2164

do.end26:                                         ; preds = %do.cond25
  br label %if.end27, !dbg !2164

if.end27:                                         ; preds = %do.end26, %land.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !2161
  %tobool28 = icmp ne i32 %8, 0, !dbg !2161
  %lnot29 = xor i1 %tobool28, true, !dbg !2161
  %lnot31 = xor i1 %lnot29, true, !dbg !2161
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !2161
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !2161
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !2161
  store i64 %expval34, ptr %tmp, align 8, !dbg !2163
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2177
  %9 = load i64, ptr %tmp, align 8, !dbg !2161
  %10 = load ptr, ptr %pd.addr, align 8, !dbg !2178
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !2179
  %pm_domain35 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, !dbg !2180
  store ptr %10, ptr %pm_domain35, align 8, !dbg !2181
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2182
  call void @device_pm_check_callbacks(ptr noundef %12) #16, !dbg !2183
  br label %return, !dbg !2184

return:                                           ; preds = %if.end27, %if.then
  ret void, !dbg !2184
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2185 dso_local zeroext i1 @device_is_bound(ptr noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2188 dso_local void @__warn_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2191 dso_local void @device_pm_check_callbacks(ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !2192 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2194, metadata !DIExpression()), !dbg !2199
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2195, metadata !DIExpression()), !dbg !2200
  %0 = load i64, ptr %size.addr, align 8, !dbg !2201
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2202
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2203

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2204
  %tobool = icmp ne i64 %2, 0, !dbg !2204
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2205

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2196, metadata !DIExpression()), !dbg !2207
  %3 = load i64, ptr %size.addr, align 8, !dbg !2208
  %cmp = icmp ugt i64 %3, 8192, !dbg !2210
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2211

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2212
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2213
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2214
  store ptr %call, ptr %retval, align 8, !dbg !2215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2215

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2216
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2216
  store i32 %call2, ptr %index, align 4, !dbg !2217
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2218
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2219
  %9 = ptrtoint ptr %8 to i64, !dbg !2219
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2220
  %idxprom = zext i32 %call3 to i64, !dbg !2221
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2221
  %10 = load i32, ptr %index, align 4, !dbg !2222
  %idxprom4 = zext i32 %10 to i64, !dbg !2221
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2221
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2221
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2223
  %13 = load i64, ptr %size.addr, align 8, !dbg !2224
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !2225
  store ptr %call6, ptr %retval, align 8, !dbg !2226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2226

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !2227
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2228
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2229
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2230
  store ptr %call8, ptr %retval, align 8, !dbg !2231
  br label %return, !dbg !2231

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2232
  ret ptr %16, !dbg !2232
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2233 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !2234 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2238, metadata !DIExpression()), !dbg !2240
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2239, metadata !DIExpression()), !dbg !2241
  %0 = load i64, ptr %size.addr, align 8, !dbg !2242
  %tobool = icmp ne i64 %0, 0, !dbg !2242
  br i1 %tobool, label %if.end, label %if.then, !dbg !2244

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2245
  br label %return, !dbg !2245

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2246
  %cmp = icmp ule i64 %1, 8, !dbg !2248
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2249

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2250
  br label %return, !dbg !2250

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2251
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2253
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2254

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2255
  %cmp4 = icmp ule i64 %3, 96, !dbg !2256
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2257

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2258
  br label %return, !dbg !2258

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2259
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2261
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2262

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2263
  %cmp9 = icmp ule i64 %5, 192, !dbg !2264
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2265

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2266
  br label %return, !dbg !2266

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2267
  %cmp12 = icmp ule i64 %6, 8, !dbg !2269
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2270

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2271
  br label %return, !dbg !2271

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2272
  %cmp15 = icmp ule i64 %7, 16, !dbg !2274
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2275

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2276
  br label %return, !dbg !2276

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2277
  %cmp18 = icmp ule i64 %8, 32, !dbg !2279
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2280

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2281
  br label %return, !dbg !2281

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2282
  %cmp21 = icmp ule i64 %9, 64, !dbg !2284
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2285

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2286
  br label %return, !dbg !2286

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2287
  %cmp24 = icmp ule i64 %10, 128, !dbg !2289
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2290

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2291
  br label %return, !dbg !2291

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2292
  %cmp27 = icmp ule i64 %11, 256, !dbg !2294
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2295

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2296
  br label %return, !dbg !2296

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2297
  %cmp30 = icmp ule i64 %12, 512, !dbg !2299
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2300

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2301
  br label %return, !dbg !2301

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2302
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2304
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2305

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2306
  br label %return, !dbg !2306

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2307
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2309
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2310

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2311
  br label %return, !dbg !2311

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2312
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2314
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2315

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2317
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2319
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2320

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2321
  br label %return, !dbg !2321

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2322
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2324
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2325

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2326
  br label %return, !dbg !2326

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2327
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2329
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2330

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2331
  br label %return, !dbg !2331

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2332
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2334
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2335

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2336
  br label %return, !dbg !2336

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2337
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2339
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2340

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2341
  br label %return, !dbg !2341

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2342
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2344
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2345

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2346
  br label %return, !dbg !2346

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2347
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2349
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2350

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2351
  br label %return, !dbg !2351

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2352
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2354
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2355

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2356
  br label %return, !dbg !2356

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2357
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2359
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2360

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2361
  br label %return, !dbg !2361

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2362, !range !2016, !noundef !393
  %tobool69 = trunc i8 %25 to i1, !dbg !2362
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2364

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2365

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #18, !dbg !2366, !srcloc !2369
  unreachable, !dbg !2366

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2370

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2371

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2372

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2374

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2372

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #14, !dbg !2376, !srcloc !2378
  br label %do.end75, !dbg !2376

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2372

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2379
  br label %return, !dbg !2379

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2380
  ret i32 %26, !dbg !2380
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2381 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !2387 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2391, metadata !DIExpression()), !dbg !2393
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2392, metadata !DIExpression()), !dbg !2394
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2395
  %and = and i32 %0, 17, !dbg !2395
  %cmp = icmp eq i32 %and, 0, !dbg !2395
  %lnot = xor i1 %cmp, true, !dbg !2395
  %lnot1 = xor i1 %lnot, true, !dbg !2395
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2395
  %conv = sext i32 %lnot.ext to i64, !dbg !2395
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2395
  %tobool = icmp ne i64 %expval, 0, !dbg !2395
  br i1 %tobool, label %if.then, label %if.end, !dbg !2397

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2398
  br label %return, !dbg !2398

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2399
  %and2 = and i32 %1, 1, !dbg !2401
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2401
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2402

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2403
  br label %return, !dbg !2403

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2404
  br label %return, !dbg !2404

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2406
  ret i32 %2, !dbg !2406
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2407 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2408 dso_local void @__compiletime_assert_204() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2409 dso_local void @_raw_spin_lock_irq(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2413 dso_local void @_raw_spin_unlock_irq(ptr noundef) #7 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_get_subsys_data206", scope: !2, file: !3, line: 52, type: !119, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/power/.common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/power/common\22 -D KBUILD_BASENAME=\22common\22 -D KBUILD_MODNAME=\22common\22 -D __KBUILD_MODNAME=kmod_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/power/common.ll drivers/base/power/common.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !116, globals: !121, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/power/common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fbffdcdb32e638437810a0300d45912")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !66, !70, !76, !85, !90, !95, !101, !106}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !54, line: 41, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!57 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!58 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !54, line: 99, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!62 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!63 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!64 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!65 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !54, line: 80, baseType: !7, size: 32, elements: !67)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!69 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !71, line: 30, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!74 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!75 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!79 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!80 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!81 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!82 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!83 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!84 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!88 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!89 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!93 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!94 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!98 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!99 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!100 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 10, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!103 = !{!104, !105}
!104 = !DIEnumerator(name: "false", value: 0)
!105 = !DIEnumerator(name: "true", value: 1)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !107, line: 364, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!108 = !{!109, !110, !111, !112, !113, !114, !115}
!109 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!110 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!111 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!112 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!113 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!114 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!115 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!116 = !{!117, !119, !120}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !118, line: 154, baseType: !7)
!118 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!121 = !{!0, !122, !124, !126, !128, !130, !132, !134, !140, !145, !147}
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_put_subsys_data207", scope: !2, file: !3, line: 80, type: !119, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_domain_attach208", scope: !2, file: !3, line: 115, type: !119, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_domain_attach_by_id209", scope: !2, file: !3, line: 151, type: !119, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_domain_attach_by_name210", scope: !2, file: !3, line: 168, type: !119, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_domain_detach211", scope: !2, file: !3, line: 188, type: !119, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_domain_start212", scope: !2, file: !3, line: 208, type: !119, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !3, line: 225, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 416, elements: !138)
!137 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !{!139}
!139 = !DISubrange(count: 52)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 225, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 224, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 28)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_domain_set213", scope: !2, file: !3, line: 230, type: !119, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !107, line: 480, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 168, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 21)
!152 = !{i32 7, !"Dwarf Version", i32 5}
!153 = !{i32 2, !"Debug Info Version", i32 3}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 8, !"cf-protection-branch", i32 1}
!156 = !{i32 4, !"function_return_thunk_extern", i32 1}
!157 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!158 = !{i32 1, !"Code Model", i32 2}
!159 = !{i32 1, !"override-stack-alignment", i32 8}
!160 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!161 = distinct !DISubprogram(name: "dev_pm_get_subsys_data", scope: !3, file: !3, line: 25, type: !162, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!162 = !DISubroutineType(types: !163)
!163 = !{!46, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !166)
!166 = !{!167, !830, !831, !834, !835, !886, !1354, !1355, !1356, !1357, !1358, !1365, !1613, !1626, !1636, !1640, !1642, !1643, !1644, !1648, !1655, !1656, !1659, !1662, !1788, !1789, !1790, !1793, !1794, !1795, !1796, !1826, !1827, !1828, !1831, !1834, !1843, !1844, !1845, !1846, !1847, !1848}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !26, line: 706, baseType: !168, size: 512)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !169, line: 64, size: 512, elements: !170)
!169 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!170 = !{!171, !174, !180, !182, !271, !701, !815, !825, !826, !827, !828, !829}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !169, line: 65, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !168, file: !169, line: 66, baseType: !175, size: 128, offset: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !118, line: 190, size: 128, elements: !176)
!176 = !{!177, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !118, line: 191, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !175, file: !118, line: 191, baseType: !178, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !169, line: 67, baseType: !181, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !168, file: !169, line: 68, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !169, line: 168, size: 768, elements: !185)
!185 = !{!186, !187, !230, !231}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !184, file: !169, line: 169, baseType: !175, size: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !184, file: !169, line: 170, baseType: !188, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !189, line: 29, baseType: !190)
!189 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !189, line: 17, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !189, line: 18, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !189, line: 18, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !193, file: !189, line: 19, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !197, line: 14, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !196, file: !197, line: 15, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !201, line: 44, baseType: !202)
!201 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !201, line: 14, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !201, line: 15, baseType: !205, size: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !201, line: 15, size: 32, elements: !206)
!206 = !{!207, !212, !222}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !205, file: !201, line: 16, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !118, line: 174, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 172, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !209, file: !118, line: 173, baseType: !46, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !201, line: 24, baseType: !213, size: 16)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !201, line: 24, size: 16, elements: !214)
!214 = !{!215, !221}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !213, file: !201, line: 25, baseType: !216, size: 8)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !217, line: 17, baseType: !218)
!217 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !219, line: 21, baseType: !220)
!219 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!220 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !213, file: !201, line: 26, baseType: !216, size: 8, offset: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !201, line: 28, baseType: !223, size: 32)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !201, line: 28, size: 32, elements: !224)
!224 = !{!225, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !223, file: !201, line: 29, baseType: !226, size: 16)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !217, line: 19, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !219, line: 24, baseType: !228)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !223, file: !201, line: 30, baseType: !226, size: 16, offset: 16)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !184, file: !169, line: 171, baseType: !168, size: 512, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !184, file: !169, line: 172, baseType: !232, size: 64, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !169, line: 133, size: 192, elements: !235)
!235 = !{!236, !243, !248}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !234, file: !169, line: 134, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!46, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !169, line: 135, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!172, !241}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !234, file: !169, line: 136, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!46, !241, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !169, line: 125, size: 20736, elements: !255)
!255 = !{!256, !261, !265, !266, !270}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !254, file: !169, line: 126, baseType: !257, size: 192)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 192, elements: !259)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!259 = !{!260}
!260 = !DISubrange(count: 3)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !254, file: !169, line: 127, baseType: !262, size: 4096, offset: 192)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 4096, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !254, file: !169, line: 128, baseType: !46, size: 32, offset: 4288)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !254, file: !169, line: 129, baseType: !267, size: 16384, offset: 4320)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16384, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 2048)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !254, file: !169, line: 130, baseType: !46, size: 32, offset: 20704)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !168, file: !169, line: 69, baseType: !272, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !169, line: 116, size: 384, elements: !275)
!275 = !{!276, !280, !308, !648, !679, !683}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !274, file: !169, line: 117, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !181}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !274, file: !169, line: 118, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !284, line: 254, size: 128, elements: !285)
!284 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!285 = !{!286, !301}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !283, file: !284, line: 255, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !181, !295, !258}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !118, line: 66, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !292, line: 73, baseType: !293)
!292 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !292, line: 15, baseType: !294)
!294 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !284, line: 30, size: 128, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !284, line: 31, baseType: !172, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !296, file: !284, line: 32, baseType: !300, size: 16, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !118, line: 24, baseType: !228)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !283, file: !284, line: 256, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!290, !181, !295, !172, !305}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 61, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !292, line: 72, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !292, line: 16, baseType: !120)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !274, file: !169, line: 119, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !284, line: 84, size: 320, elements: !313)
!313 = !{!314, !315, !319, !644, !646}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !284, line: 85, baseType: !172, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !312, file: !284, line: 86, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!300, !181, !295, !46}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !312, file: !284, line: 88, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!300, !181, !323, !46}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !284, line: 175, size: 512, elements: !325)
!325 = !{!326, !327, !328, !329, !336, !346, !347}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !324, file: !284, line: 176, baseType: !296, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !324, file: !284, line: 177, baseType: !305, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !324, file: !284, line: 178, baseType: !119, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !324, file: !284, line: 179, baseType: !330, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !335, line: 32, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !324, file: !284, line: 180, baseType: !337, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!290, !340, !181, !323, !258, !343, !305}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !342, line: 537, flags: DIFlagFwdDecl)
!342 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !118, line: 52, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !292, line: 88, baseType: !345)
!345 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !324, file: !284, line: 182, baseType: !337, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !324, file: !284, line: 184, baseType: !348, size: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!46, !340, !181, !323, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !335, line: 625, size: 1344, elements: !353)
!353 = !{!354, !371, !592, !598, !605, !606, !611, !614, !626, !627, !630, !634, !635, !636, !637, !638, !642}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !335, line: 628, baseType: !355, size: 128)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !335, line: 628, size: 128, elements: !356)
!356 = !{!357, !362}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !335, line: 629, baseType: !358, size: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !335, line: 629, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !358, file: !335, line: 631, baseType: !120, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !358, file: !335, line: 632, baseType: !120, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !355, file: !335, line: 635, baseType: !363, size: 128, align: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !118, line: 232, size: 128, align: 64, elements: !364)
!364 = !{!365, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !118, line: 233, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !363, file: !118, line: 234, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !366}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !352, file: !335, line: 639, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !335, line: 733, size: 10240, elements: !374)
!374 = !{!375, !588}
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !335, line: 734, baseType: !376, size: 10240)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !335, line: 734, size: 10240, elements: !377)
!377 = !{!378, !382, !396, !400, !401, !402, !403, !404, !405, !413, !414, !415, !424, !425, !434, !435, !436, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !481, !495, !498, !553, !554, !555, !558, !562, !563, !566, !567, !568, !575, !576}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !335, line: 739, baseType: !379, size: 512, align: 512)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !335, line: 739, size: 512, align: 512, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !379, file: !335, line: 747, baseType: !208, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !376, file: !335, line: 750, baseType: !383, size: 128, offset: 512)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !384, line: 218, size: 128, elements: !385)
!384 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!385 = !{!386, !394, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !384, line: 219, baseType: !387, size: 32)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !384, line: 219, size: 32, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !387, file: !384, line: 220, baseType: !188, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !387, file: !384, line: 221, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !384, line: 197, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 197, elements: !393)
!393 = !{}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !383, file: !384, line: 223, baseType: !7, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !383, file: !384, line: 224, baseType: !119, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !376, file: !335, line: 752, baseType: !397, size: 64, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!120, !340, !120, !120, !120, !120}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !376, file: !335, line: 756, baseType: !120, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !376, file: !335, line: 757, baseType: !120, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !376, file: !335, line: 760, baseType: !120, size: 64, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !376, file: !335, line: 761, baseType: !120, size: 64, offset: 896)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !376, file: !335, line: 763, baseType: !120, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !376, file: !335, line: 764, baseType: !406, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !342, line: 299, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 299, size: 64, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !408, file: !342, line: 299, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !412, line: 18, baseType: !120)
!412 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!413 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !376, file: !335, line: 773, baseType: !208, size: 32, offset: 1088)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !376, file: !335, line: 785, baseType: !208, size: 32, offset: 1120)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !376, file: !335, line: 795, baseType: !416, size: 64, offset: 1152)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !335, line: 726, size: 128, elements: !418)
!418 = !{!419, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !417, file: !335, line: 727, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !217, line: 23, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !219, line: 31, baseType: !422)
!422 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !417, file: !335, line: 728, baseType: !46, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !376, file: !335, line: 801, baseType: !120, size: 64, offset: 1216)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !376, file: !335, line: 804, baseType: !426, size: 64, offset: 1280)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !427, line: 13, baseType: !428)
!427 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !118, line: 181, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 179, size: 64, elements: !430)
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !429, file: !118, line: 180, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !217, line: 22, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !219, line: 30, baseType: !345)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !376, file: !335, line: 806, baseType: !46, size: 32, offset: 1344)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !376, file: !335, line: 808, baseType: !188, size: 32, offset: 1376)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !376, file: !335, line: 823, baseType: !437, size: 320, offset: 1408)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !438, line: 48, size: 320, elements: !439)
!438 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!439 = !{!440, !441, !442, !447, !449}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !437, file: !438, line: 49, baseType: !426, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !437, file: !438, line: 55, baseType: !426, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !437, file: !438, line: 57, baseType: !443, size: 32, offset: 128)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !444, line: 15, size: 32, elements: !445)
!444 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !443, file: !444, line: 20, baseType: !208, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !437, file: !438, line: 59, baseType: !448, size: 32, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !197, line: 23, baseType: !196)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !437, file: !438, line: 60, baseType: !175, size: 128, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !376, file: !335, line: 825, baseType: !175, size: 128, offset: 1728)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !376, file: !335, line: 845, baseType: !46, size: 32, offset: 1856)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !376, file: !335, line: 849, baseType: !120, size: 64, offset: 1920)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !376, file: !335, line: 850, baseType: !120, size: 64, offset: 1984)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !376, file: !335, line: 852, baseType: !120, size: 64, offset: 2048)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !376, file: !335, line: 853, baseType: !120, size: 64, offset: 2112)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !376, file: !335, line: 854, baseType: !428, size: 64, offset: 2176)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !376, file: !335, line: 855, baseType: !120, size: 64, offset: 2240)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !376, file: !335, line: 856, baseType: !120, size: 64, offset: 2304)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !376, file: !335, line: 857, baseType: !120, size: 64, offset: 2368)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !376, file: !335, line: 858, baseType: !120, size: 64, offset: 2432)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !376, file: !335, line: 865, baseType: !462, size: 32, offset: 2496)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !463, line: 69, baseType: !464)
!463 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !463, line: 64, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !464, file: !463, line: 65, baseType: !7, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !376, file: !335, line: 867, baseType: !188, size: 32, offset: 2528)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !376, file: !335, line: 869, baseType: !120, size: 64, offset: 2560)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !376, file: !335, line: 869, baseType: !120, size: 64, offset: 2624)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !376, file: !335, line: 869, baseType: !120, size: 64, offset: 2688)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !376, file: !335, line: 869, baseType: !120, size: 64, offset: 2752)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !376, file: !335, line: 870, baseType: !120, size: 64, offset: 2816)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !376, file: !335, line: 870, baseType: !120, size: 64, offset: 2880)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !376, file: !335, line: 870, baseType: !120, size: 64, offset: 2944)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !376, file: !335, line: 871, baseType: !120, size: 64, offset: 3008)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !376, file: !335, line: 871, baseType: !120, size: 64, offset: 3072)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !376, file: !335, line: 871, baseType: !120, size: 64, offset: 3136)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !376, file: !335, line: 871, baseType: !120, size: 64, offset: 3200)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !376, file: !335, line: 873, baseType: !480, size: 3328, offset: 3264)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 3328, elements: !138)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !376, file: !335, line: 875, baseType: !482, size: 1280, offset: 6592)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 1280, elements: !493)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !484, line: 22, size: 320, elements: !485)
!484 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !483, file: !484, line: 23, baseType: !448, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !483, file: !484, line: 24, baseType: !432, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !483, file: !484, line: 26, baseType: !175, size: 128, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !483, file: !484, line: 28, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !217, line: 20, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !219, line: 26, baseType: !46)
!493 = !{!494}
!494 = !DISubrange(count: 4)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !376, file: !335, line: 877, baseType: !496, size: 64, offset: 7872)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !335, line: 877, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !376, file: !335, line: 880, baseType: !499, size: 1088, offset: 7936)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !500, line: 72, baseType: !501)
!500 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 23, size: 1088, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !510, !511, !519, !520, !547, !548, !549}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !501, file: !500, line: 28, baseType: !420, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !501, file: !500, line: 38, baseType: !428, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !501, file: !500, line: 40, baseType: !120, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !501, file: !500, line: 43, baseType: !437, size: 320, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !501, file: !500, line: 44, baseType: !508, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !500, line: 44, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !500, line: 48, baseType: !120, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !501, file: !500, line: 59, baseType: !512, size: 256, offset: 640)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !513, line: 66, size: 256, elements: !514)
!513 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !513, line: 67, baseType: !426, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !512, file: !513, line: 68, baseType: !448, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !512, file: !513, line: 70, baseType: !443, size: 32, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !512, file: !513, line: 72, baseType: !175, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !501, file: !500, line: 60, baseType: !119, size: 64, offset: 896)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !501, file: !500, line: 61, baseType: !521, size: 64, offset: 960)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !524, line: 13, size: 1216, elements: !525)
!524 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!525 = !{!526, !527, !528, !529, !530, !531, !532, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !523, file: !524, line: 14, baseType: !119, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !523, file: !524, line: 15, baseType: !120, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !523, file: !524, line: 17, baseType: !120, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !523, file: !524, line: 17, baseType: !120, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !523, file: !524, line: 18, baseType: !120, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !523, file: !524, line: 18, baseType: !120, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !523, file: !524, line: 19, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !523, file: !524, line: 21, baseType: !294, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !523, file: !524, line: 23, baseType: !294, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !523, file: !524, line: 24, baseType: !294, size: 64, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !523, file: !524, line: 25, baseType: !294, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !523, file: !524, line: 26, baseType: !294, size: 64, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !523, file: !524, line: 27, baseType: !294, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !523, file: !524, line: 28, baseType: !294, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !523, file: !524, line: 29, baseType: !294, size: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !523, file: !524, line: 30, baseType: !294, size: 64, offset: 960)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !523, file: !524, line: 31, baseType: !294, size: 64, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !523, file: !524, line: 32, baseType: !294, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !523, file: !524, line: 33, baseType: !294, size: 64, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !501, file: !500, line: 63, baseType: !208, size: 32, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !501, file: !500, line: 69, baseType: !226, size: 16, offset: 1056)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !501, file: !500, line: 70, baseType: !550, size: 16, offset: 1072)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !217, line: 18, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !219, line: 23, baseType: !552)
!552 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !335, line: 882, baseType: !120, size: 64, offset: 9024)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !376, file: !335, line: 885, baseType: !188, size: 32, offset: 9088)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !376, file: !335, line: 886, baseType: !556, size: 64, offset: 9152)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !335, line: 732, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !376, file: !335, line: 901, baseType: !559, size: 64, offset: 9216)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !561, line: 18, flags: DIFlagFwdDecl)
!561 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !376, file: !335, line: 904, baseType: !340, size: 64, offset: 9280)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !376, file: !335, line: 906, baseType: !564, size: 64, offset: 9344)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !335, line: 906, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !376, file: !335, line: 930, baseType: !208, size: 32, offset: 9408)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !376, file: !335, line: 933, baseType: !208, size: 32, offset: 9440)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !376, file: !335, line: 935, baseType: !569, size: 64, offset: 9472)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !570, line: 103, size: 64, elements: !571)
!570 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !569, file: !570, line: 104, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !570, line: 101, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !376, file: !335, line: 940, baseType: !426, size: 64, offset: 9536)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !376, file: !335, line: 942, baseType: !577, size: 256, offset: 9600)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !578, line: 98, size: 256, elements: !579)
!578 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!579 = !{!580, !581, !582}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !577, file: !578, line: 99, baseType: !426, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !577, file: !578, line: 100, baseType: !175, size: 128, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !577, file: !578, line: 101, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !578, line: 21, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !373, file: !335, line: 986, baseType: !589, offset: 10240)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: -1)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !352, file: !335, line: 640, baseType: !593, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !342, line: 297, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !342, line: 297, size: 64, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !594, file: !342, line: 297, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !412, line: 19, baseType: !120)
!598 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !335, line: 646, baseType: !599, size: 64, offset: 256)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !335, line: 646, size: 64, elements: !600)
!600 = !{!601, !604}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !599, file: !335, line: 647, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !335, line: 542, baseType: !120)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !599, file: !335, line: 648, baseType: !603, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !352, file: !335, line: 666, baseType: !46, size: 32, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !352, file: !335, line: 667, baseType: !607, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !335, line: 579, size: 320, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !608, file: !335, line: 580, baseType: !437, size: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !352, file: !335, line: 670, baseType: !612, size: 8, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !118, line: 35, baseType: !613)
!613 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !352, file: !335, line: 681, baseType: !615, size: 256, offset: 512)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !335, line: 678, size: 256, elements: !616)
!616 = !{!617, !625}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !615, file: !335, line: 679, baseType: !618, size: 192, align: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !619, line: 5, size: 192, align: 64, elements: !620)
!619 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!620 = !{!621, !622, !624}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !618, file: !619, line: 6, baseType: !120, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !618, file: !619, line: 7, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !618, file: !619, line: 8, baseType: !623, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !615, file: !335, line: 680, baseType: !120, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !352, file: !335, line: 689, baseType: !175, size: 128, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !352, file: !335, line: 691, baseType: !628, size: 64, offset: 896)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !335, line: 691, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !352, file: !335, line: 694, baseType: !631, size: 64, offset: 960)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !335, line: 694, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !352, file: !335, line: 697, baseType: !120, size: 64, offset: 1024)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !352, file: !335, line: 699, baseType: !340, size: 64, offset: 1088)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !352, file: !335, line: 700, baseType: !119, size: 64, offset: 1152)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !352, file: !335, line: 711, baseType: !426, size: 64, offset: 1216)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !352, file: !335, line: 717, baseType: !639, size: 64, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !641, line: 54, flags: DIFlagFwdDecl)
!641 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !352, file: !335, line: 722, baseType: !643, offset: 1344)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !335, line: 570, elements: !393)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !312, file: !284, line: 90, baseType: !645, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !312, file: !284, line: 91, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !274, file: !169, line: 120, baseType: !649, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!652, !241}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !655)
!655 = !{!656, !657, !661, !665, !671, !675}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !654, file: !6, line: 40, baseType: !5, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !654, file: !6, line: 41, baseType: !658, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!612}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !654, file: !6, line: 42, baseType: !662, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!119}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !654, file: !6, line: 43, baseType: !666, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!533, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !654, file: !6, line: 44, baseType: !672, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!533}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !654, file: !6, line: 45, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !119}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !274, file: !169, line: 121, baseType: !680, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!533, !241}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !274, file: !169, line: 122, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !241, !687, !694}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !561, line: 23, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 21, size: 32, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !689, file: !561, line: 22, baseType: !692, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !118, line: 37, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !292, line: 49, baseType: !7)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !561, line: 28, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 26, size: 32, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !696, file: !561, line: 27, baseType: !699, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !118, line: 38, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !292, line: 50, baseType: !7)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !168, file: !169, line: 70, baseType: !702, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !704, line: 190, size: 1152, elements: !705)
!704 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !807, !808, !809, !810, !811, !814}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !703, file: !704, line: 191, baseType: !208, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !703, file: !704, line: 192, baseType: !208, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !703, file: !704, line: 202, baseType: !702, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !703, file: !704, line: 203, baseType: !172, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !703, file: !704, line: 205, baseType: !618, size: 192, align: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !703, file: !704, line: 207, baseType: !533, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !703, file: !704, line: 208, baseType: !7, size: 32, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !704, line: 209, baseType: !714, size: 256, offset: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !704, line: 209, size: 256, elements: !715)
!715 = !{!716, !728, !732}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !714, file: !704, line: 210, baseType: !717, size: 256)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !704, line: 153, size: 256, elements: !718)
!718 = !{!719, !720, !724, !727}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !717, file: !704, line: 154, baseType: !120, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !717, file: !704, line: 156, baseType: !721, size: 64, offset: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !619, line: 12, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !721, file: !619, line: 13, baseType: !623, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !717, file: !704, line: 162, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !704, line: 162, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !717, file: !704, line: 167, baseType: !120, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !714, file: !704, line: 211, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !704, line: 170, size: 64, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !729, file: !704, line: 171, baseType: !702, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !714, file: !704, line: 212, baseType: !733, size: 256)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !704, line: 174, size: 256, elements: !734)
!734 = !{!735, !802, !805, !806}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !733, file: !704, line: 175, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !704, line: 271, size: 768, elements: !739)
!739 = !{!740, !762, !766, !770, !775, !779, !783, !787, !788, !789, !790, !798}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !738, file: !704, line: 276, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!46, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !704, line: 251, size: 1216, elements: !746)
!746 = !{!747, !748, !749, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !745, file: !704, line: 253, baseType: !702, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !745, file: !704, line: 254, baseType: !340, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !745, file: !704, line: 255, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !641, line: 66, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !745, file: !704, line: 256, baseType: !119, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !745, file: !704, line: 259, baseType: !512, size: 256, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !745, file: !704, line: 260, baseType: !512, size: 256, offset: 512)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !745, file: !704, line: 261, baseType: !46, size: 32, offset: 768)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !745, file: !704, line: 262, baseType: !175, size: 128, offset: 832)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !745, file: !704, line: 263, baseType: !258, size: 64, offset: 960)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !745, file: !704, line: 265, baseType: !305, size: 64, offset: 1024)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !745, file: !704, line: 266, baseType: !612, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !745, file: !704, line: 267, baseType: !612, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !745, file: !704, line: 268, baseType: !631, size: 64, offset: 1152)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !738, file: !704, line: 277, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !744}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !738, file: !704, line: 290, baseType: !767, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!46, !750, !119}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !738, file: !704, line: 292, baseType: !771, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!119, !750, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !738, file: !704, line: 293, baseType: !776, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!119, !750, !119, !774}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !738, file: !704, line: 294, baseType: !780, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !750, !119}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !738, file: !704, line: 296, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!290, !744, !258, !305, !343}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !738, file: !704, line: 306, baseType: !305, size: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !738, file: !704, line: 313, baseType: !612, size: 8, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !738, file: !704, line: 314, baseType: !784, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !738, file: !704, line: 317, baseType: !791, size: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!794, !744, !796}
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !795, line: 59, baseType: !7)
!795 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !704, line: 31, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !738, file: !704, line: 320, baseType: !799, size: 64, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!46, !744, !351}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !733, file: !704, line: 176, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !704, line: 35, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !733, file: !704, line: 177, baseType: !343, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !733, file: !704, line: 178, baseType: !702, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !703, file: !704, line: 215, baseType: !119, size: 64, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !703, file: !704, line: 221, baseType: !420, size: 64, offset: 832)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !704, line: 223, baseType: !228, size: 16, offset: 896)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !703, file: !704, line: 224, baseType: !300, size: 16, offset: 912)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !703, file: !704, line: 225, baseType: !812, size: 64, offset: 960)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !704, line: 36, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !703, file: !704, line: 227, baseType: !363, size: 128, align: 64, offset: 1024)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !168, file: !169, line: 71, baseType: !816, size: 32, offset: 448)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !817, line: 19, size: 32, elements: !818)
!817 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !816, file: !817, line: 20, baseType: !820, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !821, line: 113, baseType: !822)
!821 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !821, line: 111, size: 32, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !822, file: !821, line: 112, baseType: !208, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !168, file: !169, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !168, file: !169, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !168, file: !169, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !168, file: !169, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !168, file: !169, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !26, line: 707, baseType: !164, size: 64, offset: 512)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !165, file: !26, line: 709, baseType: !832, size: 64, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !165, file: !26, line: 711, baseType: !172, size: 64, offset: 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !26, line: 712, baseType: !836, size: 64, offset: 704)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !839)
!839 = !{!840, !841, !842, !848, !853, !857}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !838, file: !26, line: 90, baseType: !172, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !838, file: !26, line: 91, baseType: !309, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !838, file: !26, line: 92, baseType: !843, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!46, !846, !253}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !838, file: !26, line: 93, baseType: !849, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!258, !846, !852, !687, !694}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !838, file: !26, line: 95, baseType: !854, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !164}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !838, file: !26, line: 97, baseType: !858, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !861)
!861 = !{!862, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !860, file: !38, line: 287, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !860, file: !38, line: 288, baseType: !854, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !860, file: !38, line: 289, baseType: !863, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !860, file: !38, line: 290, baseType: !863, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !860, file: !38, line: 291, baseType: !863, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !860, file: !38, line: 292, baseType: !863, size: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !860, file: !38, line: 293, baseType: !863, size: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !860, file: !38, line: 294, baseType: !863, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !860, file: !38, line: 295, baseType: !863, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !860, file: !38, line: 296, baseType: !863, size: 64, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !860, file: !38, line: 297, baseType: !863, size: 64, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !860, file: !38, line: 298, baseType: !863, size: 64, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !860, file: !38, line: 299, baseType: !863, size: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !860, file: !38, line: 300, baseType: !863, size: 64, offset: 832)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !860, file: !38, line: 301, baseType: !863, size: 64, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !860, file: !38, line: 302, baseType: !863, size: 64, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !860, file: !38, line: 303, baseType: !863, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !860, file: !38, line: 304, baseType: !863, size: 64, offset: 1088)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !860, file: !38, line: 305, baseType: !863, size: 64, offset: 1152)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !860, file: !38, line: 306, baseType: !863, size: 64, offset: 1216)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !860, file: !38, line: 307, baseType: !863, size: 64, offset: 1280)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !860, file: !38, line: 308, baseType: !863, size: 64, offset: 1344)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !860, file: !38, line: 309, baseType: !863, size: 64, offset: 1408)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !165, file: !26, line: 714, baseType: !887, size: 64, offset: 768)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !890, line: 80, size: 1344, elements: !891)
!890 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!891 = !{!892, !893, !894, !895, !896, !897, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1353}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !889, file: !890, line: 81, baseType: !172, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !889, file: !890, line: 82, baseType: !172, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !889, file: !890, line: 83, baseType: !309, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !889, file: !890, line: 84, baseType: !309, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !889, file: !890, line: 85, baseType: !309, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !889, file: !890, line: 87, baseType: !898, size: 64, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!46, !164, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !903)
!903 = !{!904, !905, !906, !1284, !1285, !1286, !1287, !1303, !1316, !1317, !1318, !1319, !1320, !1328, !1329, !1330, !1331, !1332, !1333}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !902, file: !20, line: 97, baseType: !172, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !902, file: !20, line: 98, baseType: !887, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !902, file: !20, line: 100, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !909)
!909 = !{!910, !911, !912, !916, !937, !963, !964, !965, !966, !970, !973, !974, !975, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1038, !1042, !1062, !1080, !1081, !1082, !1083, !1092, !1116, !1117, !1120, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1134, !1135, !1242, !1250, !1251, !1252, !1254, !1258, !1259, !1263, !1264, !1265, !1266, !1268, !1269, !1270, !1277, !1278, !1279, !1283}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !908, file: !13, line: 403, baseType: !12, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !908, file: !13, line: 406, baseType: !175, size: 128, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !908, file: !13, line: 409, baseType: !913, size: 448, offset: 192)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 448, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 56)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !908, file: !13, line: 417, baseType: !917, size: 768, offset: 640)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !918)
!918 = !{!919, !920, !921, !922, !925}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !917, file: !13, line: 46, baseType: !168, size: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !917, file: !13, line: 47, baseType: !907, size: 64, offset: 512)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !917, file: !13, line: 48, baseType: !181, size: 64, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !917, file: !13, line: 49, baseType: !923, size: 64, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !917, file: !13, line: 50, baseType: !926, size: 64, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !928, line: 26, size: 256, elements: !929)
!928 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !927, file: !928, line: 27, baseType: !7, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !927, file: !928, line: 28, baseType: !932, size: 192, offset: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !933, line: 43, size: 192, elements: !934)
!933 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !932, file: !933, line: 44, baseType: !448, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !932, file: !933, line: 45, baseType: !175, size: 128, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !908, file: !13, line: 418, baseType: !938, size: 64, offset: 1408)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !940)
!940 = !{!941, !942, !947, !951, !955, !959}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !939, file: !13, line: 54, baseType: !296, size: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !939, file: !13, line: 55, baseType: !943, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!290, !938, !946, !258}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !939, file: !13, line: 57, baseType: !948, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!290, !938, !946, !172, !305}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !939, file: !13, line: 59, baseType: !952, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !907, !172}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !939, file: !13, line: 60, baseType: !956, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!46, !907}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !939, file: !13, line: 61, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !907}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !908, file: !13, line: 419, baseType: !172, size: 64, offset: 1472)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !908, file: !13, line: 420, baseType: !172, size: 64, offset: 1536)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !908, file: !13, line: 421, baseType: !181, size: 64, offset: 1600)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !908, file: !13, line: 424, baseType: !967, size: 64, offset: 1664)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !908, file: !13, line: 425, baseType: !971, size: 64, offset: 1728)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !908, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !908, file: !13, line: 435, baseType: !512, size: 256, offset: 1856)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !908, file: !13, line: 437, baseType: !976, size: 64, offset: 2112)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !978, line: 69, size: 320, elements: !979)
!978 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!979 = !{!980, !981, !982, !999, !1001, !1005, !1006}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !977, file: !978, line: 70, baseType: !172, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !977, file: !978, line: 71, baseType: !907, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !977, file: !978, line: 72, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !978, line: 47, size: 256, elements: !986)
!986 = !{!987, !988, !994, !998}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !985, file: !978, line: 49, baseType: !7, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !985, file: !978, line: 51, baseType: !989, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!46, !172, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !985, file: !978, line: 53, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!46, !258, !992}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !985, file: !978, line: 55, baseType: !676, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !977, file: !978, line: 73, baseType: !1000, size: 16, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !977, file: !978, line: 74, baseType: !1002, size: 8, offset: 208)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !217, line: 16, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !219, line: 20, baseType: !1004)
!1004 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !978, line: 75, baseType: !216, size: 8, offset: 216)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !978, line: 76, baseType: !1007, size: 64, offset: 256)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !978, line: 76, size: 64, elements: !1008)
!1008 = !{!1009, !1010, !1017}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1007, file: !978, line: 77, baseType: !119, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1007, file: !978, line: 78, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !978, line: 86, size: 128, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1013, file: !978, line: 87, baseType: !7, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1013, file: !978, line: 88, baseType: !258, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1007, file: !978, line: 79, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !978, line: 92, size: 256, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1026, !1027}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1020, file: !978, line: 94, baseType: !7, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1020, file: !978, line: 95, baseType: !7, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1020, file: !978, line: 96, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1020, file: !978, line: 97, baseType: !983, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1020, file: !978, line: 98, baseType: !119, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !908, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !908, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !908, file: !13, line: 442, baseType: !967, size: 64, offset: 2240)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !908, file: !13, line: 443, baseType: !971, size: 64, offset: 2304)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !908, file: !13, line: 444, baseType: !612, size: 8, offset: 2368)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !908, file: !13, line: 451, baseType: !612, size: 8, offset: 2376)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !908, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !908, file: !13, line: 455, baseType: !1036, size: 64, offset: 2432)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !908, file: !13, line: 458, baseType: !1039, size: 64, offset: 2496)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!46}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !908, file: !13, line: 460, baseType: !1043, size: 4032, align: 512, offset: 2560)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1044, size: 4032, elements: !1060)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1045)
!1045 = !{!1046, !1047, !1048}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1044, file: !13, line: 363, baseType: !119, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1044, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1044, file: !13, line: 367, baseType: !1049, size: 448, offset: 128)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1049, file: !13, line: 320, baseType: !907, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1049, file: !13, line: 321, baseType: !1053, size: 384, offset: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1054, line: 40, size: 384, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1053, file: !1054, line: 41, baseType: !1057, size: 384, align: 64)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 384, align: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 2)
!1060 = !{!1061}
!1061 = !DISubrange(count: 7)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !908, file: !13, line: 463, baseType: !1063, size: 192, offset: 6592)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1064, line: 8, size: 192, elements: !1065)
!1064 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1065 = !{!1066, !1067, !1069}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1063, file: !1064, line: 10, baseType: !7, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1063, file: !1064, line: 11, baseType: !1068, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1063, file: !1064, line: 12, baseType: !1070, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1072, line: 59, size: 48, elements: !1073)
!1072 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1071, file: !1072, line: 60, baseType: !550, size: 16)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1071, file: !1072, line: 61, baseType: !550, size: 16, offset: 16)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1071, file: !1072, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1071, file: !1072, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1071, file: !1072, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1071, file: !1072, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !908, file: !13, line: 465, baseType: !120, size: 64, offset: 6784)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !908, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !908, file: !13, line: 470, baseType: !175, size: 128, offset: 6912)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !908, file: !13, line: 471, baseType: !1084, size: 64, offset: 7040)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1086, line: 33, size: 96, elements: !1087)
!1086 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1087 = !{!1088, !1089, !1090, !1091}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1085, file: !1086, line: 37, baseType: !46, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1085, file: !1086, line: 43, baseType: !46, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1085, file: !1086, line: 45, baseType: !228, size: 16, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1085, file: !1086, line: 47, baseType: !228, size: 16, offset: 80)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !908, file: !13, line: 476, baseType: !1093, size: 64, offset: 7104)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1095)
!1095 = !{!1096, !1113, !1114, !1115}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1094, file: !13, line: 379, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1099, line: 204, baseType: !1100)
!1099 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1099, line: 197, size: 192, elements: !1101)
!1101 = !{!1102, !1105, !1106, !1107, !1109, !1111}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1100, file: !1099, line: 198, baseType: !1103, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1099, line: 21, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !219, line: 27, baseType: !7)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1100, file: !1099, line: 199, baseType: !220, size: 8, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1100, file: !1099, line: 200, baseType: !220, size: 8, offset: 40)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1100, file: !1099, line: 201, baseType: !1108, size: 16, offset: 48)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1099, line: 17, baseType: !227)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1100, file: !1099, line: 202, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1099, line: 16, baseType: !421)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1100, file: !1099, line: 203, baseType: !1112, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1099, line: 22, baseType: !421)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1094, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1094, file: !13, line: 381, baseType: !258, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1094, file: !13, line: 382, baseType: !258, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !908, file: !13, line: 477, baseType: !1094, size: 256, offset: 7168)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !908, file: !13, line: 480, baseType: !1118, size: 64, offset: 7424)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !908, file: !13, line: 483, baseType: !1121, size: 64, offset: 7488)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !908, file: !13, line: 488, baseType: !258, size: 64, offset: 7552)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !908, file: !13, line: 492, baseType: !119, size: 64, offset: 7616)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !908, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !908, file: !13, line: 495, baseType: !119, size: 64, offset: 7744)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !908, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !908, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !908, file: !13, line: 500, baseType: !1130, size: 64, offset: 7872)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1132, line: 45, baseType: !1133)
!1132 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !908, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !908, file: !13, line: 504, baseType: !1136, size: 64, offset: 8000)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1139, line: 96, size: 192, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1140 = !{!1141, !1142, !1203, !1206}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1138, file: !1139, line: 97, baseType: !7, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1138, file: !1139, line: 98, baseType: !1143, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1139, line: 24, size: 3072, elements: !1145)
!1145 = !{!1146, !1148, !1149, !1150, !1151, !1165, !1166, !1167, !1168, !1187, !1188, !1189, !1200, !1201, !1202}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1144, file: !1139, line: 26, baseType: !1147, size: 128)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 128, elements: !1058)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1144, file: !1139, line: 27, baseType: !1147, size: 128, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1144, file: !1139, line: 28, baseType: !46, size: 32, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1144, file: !1139, line: 31, baseType: !188, size: 32, align: 512, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1144, file: !1139, line: 32, baseType: !1152, size: 960, offset: 576)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1153, line: 206, size: 960, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1154 = !{!1155, !1156, !1159, !1161, !1162, !1164}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1152, file: !1153, line: 207, baseType: !366, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1152, file: !1153, line: 208, baseType: !1157, size: 256, offset: 64)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1158, size: 256, elements: !493)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1152, file: !1153, line: 209, baseType: !1160, size: 256, offset: 320)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !493)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1152, file: !1153, line: 213, baseType: !294, size: 64, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1152, file: !1153, line: 215, baseType: !1163, size: 256, offset: 640)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 256, elements: !493)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1152, file: !1153, line: 216, baseType: !216, size: 8, offset: 896)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1144, file: !1139, line: 33, baseType: !120, size: 64, offset: 1536)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1144, file: !1139, line: 34, baseType: !120, size: 64, offset: 1600)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1144, file: !1139, line: 35, baseType: !612, size: 8, offset: 1664)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1144, file: !1139, line: 36, baseType: !1169, size: 320, offset: 1728)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1170, line: 11, size: 320, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1171 = !{!1172, !1179, !1180, !1185}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1169, file: !1170, line: 16, baseType: !1173, size: 128)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !118, line: 198, size: 128, elements: !1174)
!1174 = !{!1175, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1173, file: !118, line: 199, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1173, file: !118, line: 199, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1169, file: !1170, line: 17, baseType: !120, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1169, file: !1170, line: 18, baseType: !1181, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1169, file: !1170, line: 19, baseType: !1186, size: 32, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !217, line: 21, baseType: !1104)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1144, file: !1139, line: 37, baseType: !577, size: 256, offset: 2048)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1144, file: !1139, line: 38, baseType: !363, size: 128, align: 64, offset: 2304)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1144, file: !1139, line: 39, baseType: !1190, size: 64, offset: 2432)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1139, line: 49, size: 768, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1191, file: !1139, line: 50, baseType: !188, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1191, file: !1139, line: 51, baseType: !1160, size: 256, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1191, file: !1139, line: 53, baseType: !1160, size: 256, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1191, file: !1139, line: 54, baseType: !120, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1191, file: !1139, line: 55, baseType: !1190, size: 64, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1191, file: !1139, line: 56, baseType: !46, size: 32, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1191, file: !1139, line: 57, baseType: !46, size: 32, offset: 736)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1144, file: !1139, line: 40, baseType: !120, size: 64, offset: 2496)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1144, file: !1139, line: 42, baseType: !46, size: 32, offset: 2560)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1144, file: !1139, line: 43, baseType: !1137, size: 64, offset: 2624)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1138, file: !1139, line: 99, baseType: !1204, offset: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1205, line: 211, elements: !393)
!1205 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1138, file: !1139, line: 100, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1139, line: 63, size: 3008, elements: !1209)
!1209 = !{!1210, !1211, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1241}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1208, file: !1139, line: 64, baseType: !1190, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1208, file: !1139, line: 65, baseType: !1212, size: 192, offset: 64)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 192, elements: !259)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1208, file: !1139, line: 67, baseType: !46, size: 32, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1208, file: !1139, line: 68, baseType: !512, size: 256, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1208, file: !1139, line: 69, baseType: !188, size: 32, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1208, file: !1139, line: 70, baseType: !512, size: 256, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1208, file: !1139, line: 71, baseType: !120, size: 64, offset: 896)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1208, file: !1139, line: 72, baseType: !120, size: 64, offset: 960)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1208, file: !1139, line: 73, baseType: !120, size: 64, offset: 1024)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1208, file: !1139, line: 74, baseType: !120, size: 64, offset: 1088)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1208, file: !1139, line: 75, baseType: !120, size: 64, offset: 1152)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1208, file: !1139, line: 76, baseType: !120, size: 64, offset: 1216)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1208, file: !1139, line: 77, baseType: !120, size: 64, offset: 1280)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1208, file: !1139, line: 78, baseType: !120, size: 64, offset: 1344)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1208, file: !1139, line: 79, baseType: !612, size: 8, offset: 1408)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1208, file: !1139, line: 80, baseType: !120, size: 64, offset: 1472)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1208, file: !1139, line: 81, baseType: !512, size: 256, offset: 1536)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1208, file: !1139, line: 82, baseType: !927, size: 256, offset: 1792)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1208, file: !1139, line: 84, baseType: !208, size: 32, offset: 2048)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1208, file: !1139, line: 87, baseType: !120, size: 64, offset: 2112)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1208, file: !1139, line: 88, baseType: !120, size: 64, offset: 2176)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1208, file: !1139, line: 89, baseType: !1233, size: 704, offset: 2240)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !578, line: 111, size: 704, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1240}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1233, file: !578, line: 112, baseType: !577, size: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1233, file: !578, line: 113, baseType: !1169, size: 320, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1233, file: !578, line: 116, baseType: !1238, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !578, line: 18, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1233, file: !578, line: 117, baseType: !46, size: 32, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1208, file: !1139, line: 90, baseType: !1137, size: 64, offset: 2944)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !908, file: !13, line: 515, baseType: !1243, size: 64, offset: 8064)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1245, line: 117, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1246 = !{!1247, !1248, !1249}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1244, file: !1245, line: 118, baseType: !491, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1244, file: !1245, line: 119, baseType: !491, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1244, file: !1245, line: 120, baseType: !294, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !908, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !908, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !908, file: !13, line: 520, baseType: !1253, size: 64, offset: 8192)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !908, file: !13, line: 523, baseType: !1255, size: 64, offset: 8256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !908, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !908, file: !13, line: 525, baseType: !1260, size: 64, offset: 8384)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !908, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !908, file: !13, line: 533, baseType: !119, size: 64, offset: 8512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !908, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !908, file: !13, line: 535, baseType: !1267, size: 64, offset: 8640)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !908, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !908, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !908, file: !13, line: 540, baseType: !1271, size: 64, offset: 8768)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1273, line: 32, size: 64, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1272, file: !1273, line: 33, baseType: !491, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1272, file: !1273, line: 34, baseType: !491, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !908, file: !13, line: 563, baseType: !175, size: 128, offset: 8832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !908, file: !13, line: 565, baseType: !175, size: 128, offset: 8960)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !908, file: !13, line: 568, baseType: !1280, size: 64, offset: 9088)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !908, file: !13, line: 570, baseType: !208, size: 32, offset: 9152)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !902, file: !20, line: 101, baseType: !172, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !902, file: !20, line: 103, baseType: !612, size: 8, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !902, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !902, file: !20, line: 106, baseType: !1288, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1291, line: 282, size: 1600, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1292 = !{!1293, !1297, !1298, !1302}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !1291, line: 283, baseType: !1294, size: 256)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1290, file: !1291, line: 284, baseType: !1294, size: 256, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1290, file: !1291, line: 285, baseType: !1299, size: 1024, offset: 512)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 1024, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1290, file: !1291, line: 286, baseType: !533, size: 64, offset: 1536)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !902, file: !20, line: 107, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1291, line: 217, size: 256, elements: !1307)
!1307 = !{!1308, !1312, !1314, !1315}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1306, file: !1291, line: 218, baseType: !1309, size: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 16)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1306, file: !1291, line: 219, baseType: !1313, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1291, line: 15, baseType: !120)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1306, file: !1291, line: 220, baseType: !1104, size: 32, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1306, file: !1291, line: 221, baseType: !1104, size: 32, offset: 224)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !902, file: !20, line: 109, baseType: !863, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !902, file: !20, line: 110, baseType: !854, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !902, file: !20, line: 111, baseType: !863, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !902, file: !20, line: 112, baseType: !854, size: 64, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !902, file: !20, line: 113, baseType: !1321, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!46, !164, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1325, file: !38, line: 59, baseType: !46, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !902, file: !20, line: 114, baseType: !863, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !902, file: !20, line: 115, baseType: !309, size: 64, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !902, file: !20, line: 116, baseType: !309, size: 64, offset: 896)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !902, file: !20, line: 118, baseType: !858, size: 64, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !902, file: !20, line: 119, baseType: !854, size: 64, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !902, file: !20, line: 121, baseType: !1334, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !889, file: !890, line: 88, baseType: !843, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !889, file: !890, line: 89, baseType: !863, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !889, file: !890, line: 90, baseType: !854, size: 64, offset: 512)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !889, file: !890, line: 91, baseType: !854, size: 64, offset: 576)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !889, file: !890, line: 92, baseType: !854, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !889, file: !890, line: 94, baseType: !863, size: 64, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !889, file: !890, line: 95, baseType: !863, size: 64, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !889, file: !890, line: 97, baseType: !1321, size: 64, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !889, file: !890, line: 98, baseType: !863, size: 64, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !889, file: !890, line: 100, baseType: !863, size: 64, offset: 960)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !889, file: !890, line: 102, baseType: !863, size: 64, offset: 1024)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !889, file: !890, line: 103, baseType: !854, size: 64, offset: 1088)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !889, file: !890, line: 105, baseType: !858, size: 64, offset: 1152)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !889, file: !890, line: 107, baseType: !1350, size: 64, offset: 1216)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !890, line: 107, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !889, file: !890, line: 109, baseType: !612, size: 8, offset: 1280)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !165, file: !26, line: 715, baseType: !901, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !165, file: !26, line: 717, baseType: !119, size: 64, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !165, file: !26, line: 719, baseType: !119, size: 64, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !165, file: !26, line: 721, baseType: !512, size: 256, offset: 1024)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !165, file: !26, line: 725, baseType: !1359, size: 448, offset: 1280)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1359, file: !26, line: 518, baseType: !175, size: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1359, file: !26, line: 519, baseType: !175, size: 128, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1359, file: !26, line: 520, baseType: !175, size: 128, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1359, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !165, file: !26, line: 726, baseType: !1366, size: 2496, offset: 1728)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1418, !1419, !1420, !1421, !1422, !1423, !1494, !1495, !1496, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1534, !1538}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1366, file: !38, line: 664, baseType: !1324, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1366, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1366, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1366, file: !38, line: 667, baseType: !612, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1366, file: !38, line: 668, baseType: !612, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1366, file: !38, line: 669, baseType: !612, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1366, file: !38, line: 670, baseType: !612, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1366, file: !38, line: 671, baseType: !612, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1366, file: !38, line: 672, baseType: !612, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1366, file: !38, line: 673, baseType: !612, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1366, file: !38, line: 674, baseType: !612, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1366, file: !38, line: 675, baseType: !1186, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1366, file: !38, line: 676, baseType: !188, size: 32, offset: 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1366, file: !38, line: 678, baseType: !175, size: 128, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1366, file: !38, line: 679, baseType: !927, size: 256, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1366, file: !38, line: 680, baseType: !1384, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1386, line: 43, size: 1536, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1401, !1402, !1403, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1385, file: !1386, line: 44, baseType: !172, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1385, file: !1386, line: 45, baseType: !46, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1385, file: !1386, line: 46, baseType: !175, size: 128, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !1386, line: 47, baseType: !188, size: 32, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1385, file: !1386, line: 48, baseType: !1393, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1395, line: 34, size: 192, elements: !1396)
!1395 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1327210c8ac5950226b4c5538c62ec75")
!1396 = !{!1397, !1398, !1399, !1400}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1394, file: !1395, line: 35, baseType: !164, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1394, file: !1395, line: 36, baseType: !7, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1394, file: !1395, line: 37, baseType: !46, size: 32, offset: 96)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1394, file: !1395, line: 38, baseType: !172, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1385, file: !1386, line: 49, baseType: !1169, size: 320, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1385, file: !1386, line: 50, baseType: !120, size: 64, offset: 704)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1385, file: !1386, line: 51, baseType: !1404, size: 64, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1405, line: 29, baseType: !432)
!1405 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1385, file: !1386, line: 52, baseType: !1404, size: 64, offset: 832)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1385, file: !1386, line: 53, baseType: !1404, size: 64, offset: 896)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1385, file: !1386, line: 54, baseType: !1404, size: 64, offset: 960)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1385, file: !1386, line: 55, baseType: !1404, size: 64, offset: 1024)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1385, file: !1386, line: 56, baseType: !120, size: 64, offset: 1088)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1385, file: !1386, line: 57, baseType: !120, size: 64, offset: 1152)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1385, file: !1386, line: 58, baseType: !120, size: 64, offset: 1216)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1385, file: !1386, line: 59, baseType: !120, size: 64, offset: 1280)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1385, file: !1386, line: 60, baseType: !120, size: 64, offset: 1344)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1385, file: !1386, line: 61, baseType: !164, size: 64, offset: 1408)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1385, file: !1386, line: 62, baseType: !612, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1385, file: !1386, line: 63, baseType: !612, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1366, file: !38, line: 681, baseType: !612, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1366, file: !38, line: 682, baseType: !612, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1366, file: !38, line: 683, baseType: !612, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1366, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1366, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1366, file: !38, line: 690, baseType: !1424, size: 512, offset: 640)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1425)
!1425 = !{!1426, !1432, !1433, !1438, !1490, !1491, !1492, !1493}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1424, file: !33, line: 119, baseType: !1427, size: 256)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1428, line: 9, size: 256, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1427, file: !1428, line: 10, baseType: !618, size: 192, align: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1427, file: !1428, line: 11, baseType: !1404, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1424, file: !33, line: 120, baseType: !1404, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1424, file: !33, line: 121, baseType: !1434, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!32, !1437}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1424, file: !33, line: 122, baseType: !1439, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1441)
!1441 = !{!1442, !1467, !1468, !1471, !1476, !1477, !1485, !1489}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1440, file: !33, line: 160, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1444, file: !33, line: 216, baseType: !448, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1444, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1444, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1444, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1444, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1444, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1444, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1444, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1444, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1444, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1444, file: !33, line: 227, baseType: !228, size: 16, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1444, file: !33, line: 228, baseType: !228, size: 16, offset: 208)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1444, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1444, file: !33, line: 235, baseType: !1404, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1444, file: !33, line: 236, baseType: !1437, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1444, file: !33, line: 237, baseType: !1404, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1444, file: !33, line: 238, baseType: !1437, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1444, file: !33, line: 239, baseType: !1464, size: 4096, align: 512, offset: 512)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 4096, align: 512, elements: !1465)
!1465 = !{!1466}
!1466 = !DISubrange(count: 8)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1440, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1440, file: !33, line: 162, baseType: !1469, size: 32, offset: 96)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !118, line: 32, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !292, line: 96, baseType: !46)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1440, file: !33, line: 163, baseType: !1472, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !463, line: 274, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !463, line: 274, size: 32, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1473, file: !463, line: 274, baseType: !462, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1440, file: !33, line: 164, baseType: !1437, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1440, file: !33, line: 165, baseType: !1478, size: 128, offset: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1428, line: 14, size: 128, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1478, file: !1428, line: 15, baseType: !1481, size: 128)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !619, line: 26, size: 128, elements: !1482)
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1481, file: !619, line: 27, baseType: !721, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1481, file: !619, line: 28, baseType: !623, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1440, file: !33, line: 166, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!1404}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1440, file: !33, line: 167, baseType: !1404, size: 64, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1424, file: !33, line: 123, baseType: !216, size: 8, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1424, file: !33, line: 124, baseType: !216, size: 8, offset: 456)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1424, file: !33, line: 125, baseType: !216, size: 8, offset: 464)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1424, file: !33, line: 126, baseType: !216, size: 8, offset: 472)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1366, file: !38, line: 691, baseType: !420, size: 64, offset: 1152)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1366, file: !38, line: 692, baseType: !577, size: 256, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1366, file: !38, line: 693, baseType: !1497, size: 192, offset: 1472)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1498, line: 41, baseType: !1499)
!1498 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1498, line: 37, size: 192, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1499, file: !1498, line: 38, baseType: !188, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1499, file: !1498, line: 39, baseType: !175, size: 128, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1366, file: !38, line: 694, baseType: !1393, size: 64, offset: 1664)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1366, file: !38, line: 695, baseType: !208, size: 32, offset: 1728)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1366, file: !38, line: 696, baseType: !208, size: 32, offset: 1760)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1366, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1366, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1366, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1366, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1366, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1366, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1366, file: !38, line: 703, baseType: !612, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1366, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1366, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1366, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1366, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1366, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1366, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1366, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1366, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1366, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1366, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1366, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1366, file: !38, line: 715, baseType: !420, size: 64, offset: 2048)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1366, file: !38, line: 716, baseType: !420, size: 64, offset: 2112)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1366, file: !38, line: 717, baseType: !420, size: 64, offset: 2176)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1366, file: !38, line: 718, baseType: !420, size: 64, offset: 2240)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1366, file: !38, line: 720, baseType: !1529, size: 64, offset: 2304)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1530, file: !38, line: 633, baseType: !188, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1530, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1366, file: !38, line: 721, baseType: !1535, size: 64, offset: 2368)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !164, !491}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1366, file: !38, line: 722, baseType: !1539, size: 64, offset: 2432)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1541)
!1541 = !{!1542, !1571, !1572, !1579, !1584, !1611, !1612}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1540, file: !54, line: 118, baseType: !1543, size: 320)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1544)
!1544 = !{!1545, !1550, !1551, !1552, !1553, !1554}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1543, file: !54, line: 53, baseType: !1546, size: 128)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1547, line: 82, size: 128, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1548 = !{!1549}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1546, file: !1547, line: 83, baseType: !175, size: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1543, file: !54, line: 54, baseType: !491, size: 32, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1543, file: !54, line: 55, baseType: !491, size: 32, offset: 160)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1543, file: !54, line: 56, baseType: !491, size: 32, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1543, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1543, file: !54, line: 58, baseType: !1555, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1557, line: 65, size: 384, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1556, file: !1557, line: 66, baseType: !437, size: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1556, file: !1557, line: 67, baseType: !1561, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1557, line: 54, size: 192, elements: !1563)
!1563 = !{!1564, !1569, !1570}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1562, file: !1557, line: 55, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1557, line: 51, baseType: !1566)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!46, !1561, !120, !119}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1562, file: !1557, line: 56, baseType: !1561, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1562, file: !1557, line: 57, baseType: !46, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1540, file: !54, line: 119, baseType: !1543, size: 320, offset: 320)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1540, file: !54, line: 120, baseType: !1573, size: 1408, offset: 640)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1573, file: !54, line: 86, baseType: !1543, size: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1573, file: !54, line: 87, baseType: !1556, size: 384, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1573, file: !54, line: 88, baseType: !1543, size: 320, offset: 704)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1573, file: !54, line: 89, baseType: !1556, size: 384, offset: 1024)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1540, file: !54, line: 121, baseType: !1580, size: 192, offset: 2048)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1580, file: !54, line: 72, baseType: !175, size: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1580, file: !54, line: 73, baseType: !491, size: 32, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1540, file: !54, line: 122, baseType: !1585, size: 64, offset: 2240)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1587)
!1587 = !{!1588, !1589, !1610}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1586, file: !54, line: 108, baseType: !59, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1586, file: !54, line: 113, baseType: !1590, size: 448, offset: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1586, file: !54, line: 109, size: 448, elements: !1591)
!1591 = !{!1592, !1598, !1603}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1590, file: !54, line: 110, baseType: !1593, size: 320)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1547, line: 86, size: 320, elements: !1594)
!1594 = !{!1595, !1596, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1593, file: !1547, line: 87, baseType: !46, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1593, file: !1547, line: 88, baseType: !175, size: 128, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1593, file: !1547, line: 89, baseType: !175, size: 128, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1590, file: !54, line: 111, baseType: !1599, size: 192)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1599, file: !54, line: 67, baseType: !175, size: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1599, file: !54, line: 68, baseType: !491, size: 32, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1590, file: !54, line: 112, baseType: !1604, size: 448)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1604, file: !54, line: 93, baseType: !66, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1604, file: !54, line: 94, baseType: !1593, size: 320, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1604, file: !54, line: 95, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1586, file: !54, line: 114, baseType: !164, size: 64, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1540, file: !54, line: 123, baseType: !1585, size: 64, offset: 2304)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1540, file: !54, line: 124, baseType: !1585, size: 64, offset: 2368)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !165, file: !26, line: 727, baseType: !1614, size: 64, offset: 4224)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1623, !1624, !1625}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1615, file: !38, line: 743, baseType: !860, size: 1472)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1615, file: !38, line: 744, baseType: !863, size: 64, offset: 1472)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1615, file: !38, line: 745, baseType: !1620, size: 64, offset: 1536)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !164, !612}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1615, file: !38, line: 746, baseType: !863, size: 64, offset: 1600)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1615, file: !38, line: 747, baseType: !854, size: 64, offset: 1664)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1615, file: !38, line: 748, baseType: !854, size: 64, offset: 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !165, file: !26, line: 736, baseType: !1627, size: 128, offset: 4288)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1628)
!1628 = !{!1629, !1633}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1627, file: !26, line: 531, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1632, line: 13, flags: DIFlagFwdDecl)
!1632 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1627, file: !26, line: 532, baseType: !1634, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !165, file: !26, line: 738, baseType: !1637, size: 64, offset: 4416)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1639)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !165, file: !26, line: 740, baseType: !1641, size: 64, offset: 4480)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !165, file: !26, line: 741, baseType: !420, size: 64, offset: 4544)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !165, file: !26, line: 746, baseType: !420, size: 64, offset: 4608)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !165, file: !26, line: 747, baseType: !1645, size: 64, offset: 4672)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1647)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !165, file: !26, line: 749, baseType: !1649, size: 64, offset: 4736)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1651)
!1651 = !{!1652, !1653, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1650, file: !26, line: 433, baseType: !7, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1650, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1650, file: !26, line: 435, baseType: !120, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !165, file: !26, line: 751, baseType: !175, size: 128, offset: 4800)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !165, file: !26, line: 762, baseType: !1657, size: 64, offset: 4928)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !165, file: !26, line: 770, baseType: !1660, offset: 4992)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1661, line: 5, elements: !393)
!1661 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !165, file: !26, line: 772, baseType: !1663, size: 64, offset: 4992)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1665, line: 48, size: 1152, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1666 = !{!1667, !1668, !1670, !1671, !1774, !1782, !1783, !1784, !1785, !1786, !1787}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1664, file: !1665, line: 49, baseType: !172, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1664, file: !1665, line: 50, baseType: !1669, size: 32, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1665, line: 25, baseType: !1186)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1664, file: !1665, line: 51, baseType: !172, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1664, file: !1665, line: 52, baseType: !1672, size: 512, offset: 192)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1673, line: 41, size: 512, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1674 = !{!1675, !1677, !1770, !1771, !1772, !1773}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1672, file: !1673, line: 42, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1672, file: !1673, line: 43, baseType: !1678, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1673, line: 125, size: 1408, elements: !1681)
!1681 = !{!1682, !1686, !1690, !1696, !1700, !1701, !1705, !1709, !1713, !1717, !1721, !1722, !1726, !1730, !1734, !1745, !1746, !1747, !1748, !1758, !1762, !1766}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1680, file: !1673, line: 126, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1676, !1676}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1680, file: !1673, line: 127, baseType: !1687, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !1676}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1680, file: !1673, line: 128, baseType: !1691, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!612, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1680, file: !1673, line: 129, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!533, !1694, !846}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1680, file: !1673, line: 131, baseType: !1691, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1680, file: !1673, line: 133, baseType: !1702, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!70, !1694}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1680, file: !1673, line: 134, baseType: !1706, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!612, !1694, !172}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1680, file: !1673, line: 136, baseType: !1710, size: 64, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!46, !1694, !172, !7, !119, !305}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1680, file: !1673, line: 141, baseType: !1714, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!46, !1694, !172, !1253, !305}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1680, file: !1673, line: 144, baseType: !1718, size: 64, offset: 576)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!172, !1694}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1680, file: !1673, line: 145, baseType: !1718, size: 64, offset: 640)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1680, file: !1673, line: 146, baseType: !1723, size: 64, offset: 704)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!1676, !1694}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1680, file: !1673, line: 148, baseType: !1727, size: 64, offset: 768)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!1676, !1694, !1676}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1680, file: !1673, line: 151, baseType: !1731, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!1676, !1694, !172}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1680, file: !1673, line: 153, baseType: !1735, size: 64, offset: 896)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!46, !1694, !172, !172, !7, !7, !1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1673, line: 94, size: 640, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1739, file: !1673, line: 95, baseType: !1676, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1739, file: !1673, line: 96, baseType: !7, size: 32, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1739, file: !1673, line: 97, baseType: !1744, size: 512, offset: 128)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 512, elements: !1465)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1680, file: !1673, line: 158, baseType: !1727, size: 64, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1680, file: !1673, line: 161, baseType: !1723, size: 64, offset: 1024)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1680, file: !1673, line: 163, baseType: !1683, size: 64, offset: 1088)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1680, file: !1673, line: 164, baseType: !1749, size: 64, offset: 1152)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!46, !1694, !1752}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1673, line: 73, size: 128, elements: !1754)
!1754 = !{!1755, !1756, !1757}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1753, file: !1673, line: 74, baseType: !7, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1753, file: !1673, line: 75, baseType: !7, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1753, file: !1673, line: 76, baseType: !1694, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1680, file: !1673, line: 166, baseType: !1759, size: 64, offset: 1216)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!119, !1676, !46}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1680, file: !1673, line: 167, baseType: !1763, size: 64, offset: 1280)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!46, !1694, !7}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1680, file: !1673, line: 168, baseType: !1767, size: 64, offset: 1344)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!46, !1676}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1672, file: !1673, line: 44, baseType: !164, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1672, file: !1673, line: 45, baseType: !175, size: 128, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1672, file: !1673, line: 46, baseType: !175, size: 128, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1672, file: !1673, line: 47, baseType: !216, size: 8, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1664, file: !1665, line: 54, baseType: !1775, size: 64, offset: 704)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1665, line: 28, size: 256, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1776, file: !1665, line: 29, baseType: !258, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1776, file: !1665, line: 30, baseType: !46, size: 32, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1776, file: !1665, line: 31, baseType: !119, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1776, file: !1665, line: 32, baseType: !1775, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1664, file: !1665, line: 55, baseType: !1775, size: 64, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1664, file: !1665, line: 56, baseType: !1663, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1664, file: !1665, line: 57, baseType: !1663, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1664, file: !1665, line: 58, baseType: !1663, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1664, file: !1665, line: 62, baseType: !120, size: 64, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1664, file: !1665, line: 63, baseType: !119, size: 64, offset: 1088)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !165, file: !26, line: 773, baseType: !1676, size: 64, offset: 5056)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !165, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !165, file: !26, line: 778, baseType: !1791, size: 32, offset: 5152)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !118, line: 21, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !118, line: 18, baseType: !1186)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !165, file: !26, line: 779, baseType: !1186, size: 32, offset: 5184)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !165, file: !26, line: 781, baseType: !188, size: 32, offset: 5216)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !165, file: !26, line: 782, baseType: !175, size: 128, offset: 5248)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !165, file: !26, line: 784, baseType: !1797, size: 64, offset: 5376)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1799)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1800, line: 52, size: 768, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1810, !1814, !1815, !1816, !1817, !1821, !1825}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1799, file: !1800, line: 53, baseType: !172, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1799, file: !1800, line: 55, baseType: !309, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1799, file: !1800, line: 56, baseType: !309, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1799, file: !1800, line: 58, baseType: !843, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1799, file: !1800, line: 59, baseType: !1807, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!258, !846, !852}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1799, file: !1800, line: 61, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !1797}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1799, file: !1800, line: 62, baseType: !854, size: 64, offset: 384)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1799, file: !1800, line: 64, baseType: !863, size: 64, offset: 448)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1799, file: !1800, line: 66, baseType: !652, size: 64, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1799, file: !1800, line: 67, baseType: !1818, size: 64, offset: 576)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!533, !846}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1799, file: !1800, line: 69, baseType: !1822, size: 64, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !846, !687, !694}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1799, file: !1800, line: 71, baseType: !858, size: 64, offset: 704)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !165, file: !26, line: 785, baseType: !309, size: 64, offset: 5440)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !165, file: !26, line: 787, baseType: !854, size: 64, offset: 5504)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !165, file: !26, line: 788, baseType: !1829, size: 64, offset: 5568)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !165, file: !26, line: 789, baseType: !1832, size: 64, offset: 5632)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !165, file: !26, line: 791, baseType: !1835, size: 64, offset: 5696)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1841, !1842}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1836, file: !26, line: 598, baseType: !76, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1836, file: !26, line: 599, baseType: !85, size: 32, offset: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1836, file: !26, line: 600, baseType: !90, size: 32, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1836, file: !26, line: 601, baseType: !612, size: 8, offset: 96)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1836, file: !26, line: 602, baseType: !612, size: 8, offset: 104)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !165, file: !26, line: 793, baseType: !95, size: 32, offset: 5760)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !165, file: !26, line: 795, baseType: !612, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !165, file: !26, line: 796, baseType: !612, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !165, file: !26, line: 797, baseType: !612, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !165, file: !26, line: 798, baseType: !612, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !165, file: !26, line: 799, baseType: !612, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1849 = !{!1850, !1851}
!1850 = !DILocalVariable(name: "dev", arg: 1, scope: !161, file: !3, line: 25, type: !164)
!1851 = !DILocalVariable(name: "psd", scope: !161, file: !3, line: 27, type: !1529)
!1852 = !DILocation(line: 25, column: 43, scope: !161)
!1853 = !DILocation(line: 27, column: 2, scope: !161)
!1854 = !DILocation(line: 27, column: 25, scope: !161)
!1855 = !DILocation(line: 29, column: 8, scope: !161)
!1856 = !DILocation(line: 29, column: 6, scope: !161)
!1857 = !DILocation(line: 30, column: 7, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !161, file: !3, line: 30, column: 6)
!1859 = !DILocation(line: 30, column: 6, scope: !161)
!1860 = !DILocation(line: 31, column: 3, scope: !1858)
!1861 = !DILocation(line: 33, column: 17, scope: !161)
!1862 = !DILocation(line: 33, column: 22, scope: !161)
!1863 = !DILocation(line: 33, column: 28, scope: !161)
!1864 = !DILocation(line: 33, column: 2, scope: !161)
!1865 = !DILocation(line: 35, column: 6, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !161, file: !3, line: 35, column: 6)
!1867 = !DILocation(line: 35, column: 11, scope: !1866)
!1868 = !DILocation(line: 35, column: 17, scope: !1866)
!1869 = !DILocation(line: 35, column: 6, scope: !161)
!1870 = !DILocation(line: 36, column: 3, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 35, column: 30)
!1872 = !DILocation(line: 36, column: 8, scope: !1871)
!1873 = !DILocation(line: 36, column: 14, scope: !1871)
!1874 = !DILocation(line: 36, column: 27, scope: !1871)
!1875 = !DILocation(line: 36, column: 35, scope: !1871)
!1876 = !DILocation(line: 37, column: 2, scope: !1871)
!1877 = !DILocation(line: 38, column: 3, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 37, column: 9)
!1879 = !DILocation(line: 38, column: 3, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 38, column: 3)
!1881 = !DILocation(line: 39, column: 3, scope: !1878)
!1882 = !DILocation(line: 39, column: 8, scope: !1878)
!1883 = !DILocation(line: 39, column: 17, scope: !1878)
!1884 = !DILocation(line: 40, column: 28, scope: !1878)
!1885 = !DILocation(line: 40, column: 3, scope: !1878)
!1886 = !DILocation(line: 40, column: 8, scope: !1878)
!1887 = !DILocation(line: 40, column: 14, scope: !1878)
!1888 = !DILocation(line: 40, column: 26, scope: !1878)
!1889 = !DILocation(line: 41, column: 15, scope: !1878)
!1890 = !DILocation(line: 41, column: 3, scope: !1878)
!1891 = !DILocation(line: 42, column: 7, scope: !1878)
!1892 = !DILocation(line: 45, column: 19, scope: !161)
!1893 = !DILocation(line: 45, column: 24, scope: !161)
!1894 = !DILocation(line: 45, column: 30, scope: !161)
!1895 = !DILocation(line: 45, column: 2, scope: !161)
!1896 = !DILocation(line: 48, column: 8, scope: !161)
!1897 = !DILocation(line: 48, column: 2, scope: !161)
!1898 = !DILocation(line: 50, column: 2, scope: !161)
!1899 = !DILocation(line: 51, column: 1, scope: !161)
!1900 = distinct !DISubprogram(name: "kzalloc", scope: !107, file: !107, line: 719, type: !1901, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!119, !305, !117}
!1903 = !{!1904, !1905}
!1904 = !DILocalVariable(name: "size", arg: 1, scope: !1900, file: !107, line: 719, type: !305)
!1905 = !DILocalVariable(name: "flags", arg: 2, scope: !1900, file: !107, line: 719, type: !117)
!1906 = !DILocation(line: 719, column: 52, scope: !1900)
!1907 = !DILocation(line: 719, column: 64, scope: !1900)
!1908 = !DILocation(line: 721, column: 17, scope: !1900)
!1909 = !DILocation(line: 721, column: 23, scope: !1900)
!1910 = !DILocation(line: 721, column: 29, scope: !1900)
!1911 = !DILocation(line: 721, column: 9, scope: !1900)
!1912 = !DILocation(line: 721, column: 2, scope: !1900)
!1913 = distinct !DISubprogram(name: "spin_lock_irq", scope: !1914, file: !1914, line: 374, type: !1915, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1918)
!1914 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!1918 = !{!1919}
!1919 = !DILocalVariable(name: "lock", arg: 1, scope: !1913, file: !1914, line: 374, type: !1917)
!1920 = !DILocation(line: 374, column: 55, scope: !1913)
!1921 = !DILocation(line: 376, column: 2, scope: !1913)
!1922 = !DILocation(line: 377, column: 1, scope: !1913)
!1923 = distinct !DISubprogram(name: "spinlock_check", scope: !1914, file: !1914, line: 324, type: !1924, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1927)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1926, !1917}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1927 = !{!1928}
!1928 = !DILocalVariable(name: "lock", arg: 1, scope: !1923, file: !1914, line: 324, type: !1917)
!1929 = !DILocation(line: 324, column: 67, scope: !1923)
!1930 = !DILocation(line: 326, column: 10, scope: !1923)
!1931 = !DILocation(line: 326, column: 16, scope: !1923)
!1932 = !DILocation(line: 326, column: 2, scope: !1923)
!1933 = distinct !DISubprogram(name: "pm_clk_init", scope: !1934, file: !1934, line: 56, type: !855, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1935)
!1934 = !DIFile(filename: "./include/linux/pm_clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4f7b10572fb6d77c8aeb70b9790be6f")
!1935 = !{!1936}
!1936 = !DILocalVariable(name: "dev", arg: 1, scope: !1933, file: !1934, line: 56, type: !164)
!1937 = !DILocation(line: 56, column: 47, scope: !1933)
!1938 = !DILocation(line: 58, column: 1, scope: !1933)
!1939 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !1914, file: !1914, line: 399, type: !1915, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1940)
!1940 = !{!1941}
!1941 = !DILocalVariable(name: "lock", arg: 1, scope: !1939, file: !1914, line: 399, type: !1917)
!1942 = !DILocation(line: 399, column: 57, scope: !1939)
!1943 = !DILocation(line: 401, column: 2, scope: !1939)
!1944 = !DILocation(line: 402, column: 1, scope: !1939)
!1945 = !DISubprogram(name: "kfree", scope: !107, file: !107, line: 227, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !533}
!1948 = distinct !DISubprogram(name: "dev_pm_put_subsys_data", scope: !3, file: !3, line: 61, type: !855, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1949)
!1949 = !{!1950, !1951, !1952}
!1950 = !DILocalVariable(name: "dev", arg: 1, scope: !1948, file: !3, line: 61, type: !164)
!1951 = !DILocalVariable(name: "psd", scope: !1948, file: !3, line: 63, type: !1529)
!1952 = !DILabel(scope: !1948, name: "out", file: !3, line: 76)
!1953 = !DILocation(line: 61, column: 44, scope: !1948)
!1954 = !DILocation(line: 63, column: 2, scope: !1948)
!1955 = !DILocation(line: 63, column: 25, scope: !1948)
!1956 = !DILocation(line: 65, column: 17, scope: !1948)
!1957 = !DILocation(line: 65, column: 22, scope: !1948)
!1958 = !DILocation(line: 65, column: 28, scope: !1948)
!1959 = !DILocation(line: 65, column: 2, scope: !1948)
!1960 = !DILocation(line: 67, column: 19, scope: !1948)
!1961 = !DILocation(line: 67, column: 8, scope: !1948)
!1962 = !DILocation(line: 67, column: 6, scope: !1948)
!1963 = !DILocation(line: 68, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 68, column: 6)
!1965 = !DILocation(line: 68, column: 6, scope: !1948)
!1966 = !DILocation(line: 69, column: 3, scope: !1964)
!1967 = !DILocation(line: 71, column: 8, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 71, column: 6)
!1969 = !DILocation(line: 71, column: 13, scope: !1968)
!1970 = !DILocation(line: 71, column: 6, scope: !1968)
!1971 = !DILocation(line: 71, column: 22, scope: !1968)
!1972 = !DILocation(line: 71, column: 6, scope: !1948)
!1973 = !DILocation(line: 72, column: 3, scope: !1968)
!1974 = !DILocation(line: 72, column: 8, scope: !1968)
!1975 = !DILocation(line: 72, column: 14, scope: !1968)
!1976 = !DILocation(line: 72, column: 26, scope: !1968)
!1977 = !DILocation(line: 74, column: 7, scope: !1968)
!1978 = !DILocation(line: 71, column: 25, scope: !1968)
!1979 = !DILocation(line: 76, column: 2, scope: !1948)
!1980 = !DILocation(line: 77, column: 19, scope: !1948)
!1981 = !DILocation(line: 77, column: 24, scope: !1948)
!1982 = !DILocation(line: 77, column: 30, scope: !1948)
!1983 = !DILocation(line: 77, column: 2, scope: !1948)
!1984 = !DILocation(line: 78, column: 8, scope: !1948)
!1985 = !DILocation(line: 78, column: 2, scope: !1948)
!1986 = !DILocation(line: 79, column: 1, scope: !1948)
!1987 = distinct !DISubprogram(name: "dev_to_psd", scope: !26, file: !26, line: 926, type: !1988, scopeLine: 927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!1529, !164}
!1990 = !{!1991}
!1991 = !DILocalVariable(name: "dev", arg: 1, scope: !1987, file: !26, line: 926, type: !164)
!1992 = !DILocation(line: 926, column: 64, scope: !1987)
!1993 = !DILocation(line: 928, column: 9, scope: !1987)
!1994 = !DILocation(line: 928, column: 15, scope: !1987)
!1995 = !DILocation(line: 928, column: 20, scope: !1987)
!1996 = !DILocation(line: 928, column: 26, scope: !1987)
!1997 = !DILocation(line: 928, column: 2, scope: !1987)
!1998 = distinct !DISubprogram(name: "dev_pm_domain_attach", scope: !3, file: !3, line: 102, type: !1999, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!46, !164, !612}
!2001 = !{!2002, !2003, !2004}
!2002 = !DILocalVariable(name: "dev", arg: 1, scope: !1998, file: !3, line: 102, type: !164)
!2003 = !DILocalVariable(name: "power_on", arg: 2, scope: !1998, file: !3, line: 102, type: !612)
!2004 = !DILocalVariable(name: "ret", scope: !1998, file: !3, line: 104, type: !46)
!2005 = !DILocation(line: 102, column: 41, scope: !1998)
!2006 = !DILocation(line: 102, column: 51, scope: !1998)
!2007 = !DILocation(line: 104, column: 2, scope: !1998)
!2008 = !DILocation(line: 104, column: 6, scope: !1998)
!2009 = !DILocation(line: 106, column: 6, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 106, column: 6)
!2011 = !DILocation(line: 106, column: 11, scope: !2010)
!2012 = !DILocation(line: 106, column: 6, scope: !1998)
!2013 = !DILocation(line: 107, column: 3, scope: !2010)
!2014 = !DILocation(line: 109, column: 27, scope: !1998)
!2015 = !DILocation(line: 109, column: 32, scope: !1998)
!2016 = !{i8 0, i8 2}
!2017 = !DILocation(line: 109, column: 8, scope: !1998)
!2018 = !DILocation(line: 109, column: 6, scope: !1998)
!2019 = !DILocation(line: 110, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 110, column: 6)
!2021 = !DILocation(line: 110, column: 6, scope: !1998)
!2022 = !DILocation(line: 111, column: 29, scope: !2020)
!2023 = !DILocation(line: 111, column: 9, scope: !2020)
!2024 = !DILocation(line: 111, column: 7, scope: !2020)
!2025 = !DILocation(line: 111, column: 3, scope: !2020)
!2026 = !DILocation(line: 113, column: 9, scope: !1998)
!2027 = !DILocation(line: 113, column: 13, scope: !1998)
!2028 = !DILocation(line: 113, column: 19, scope: !1998)
!2029 = !DILocation(line: 113, column: 2, scope: !1998)
!2030 = !DILocation(line: 114, column: 1, scope: !1998)
!2031 = !DISubprogram(name: "acpi_dev_pm_attach", scope: !2032, file: !2032, line: 1134, type: !1999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2032 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2033 = distinct !DISubprogram(name: "genpd_dev_pm_attach", scope: !2034, file: !2034, line: 400, type: !162, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2034 = !DIFile(filename: "./include/linux/pm_domain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b941e44fcc9ec96a433ceb91a0ad979e")
!2035 = !{!2036}
!2036 = !DILocalVariable(name: "dev", arg: 1, scope: !2033, file: !2034, line: 400, type: !164)
!2037 = !DILocation(line: 400, column: 54, scope: !2033)
!2038 = !DILocation(line: 402, column: 2, scope: !2033)
!2039 = distinct !DISubprogram(name: "dev_pm_domain_attach_by_id", scope: !3, file: !3, line: 143, type: !2040, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!164, !164, !7}
!2042 = !{!2043, !2044}
!2043 = !DILocalVariable(name: "dev", arg: 1, scope: !2039, file: !3, line: 143, type: !164)
!2044 = !DILocalVariable(name: "index", arg: 2, scope: !2039, file: !3, line: 144, type: !7)
!2045 = !DILocation(line: 143, column: 58, scope: !2039)
!2046 = !DILocation(line: 144, column: 21, scope: !2039)
!2047 = !DILocation(line: 146, column: 6, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 146, column: 6)
!2049 = !DILocation(line: 146, column: 11, scope: !2048)
!2050 = !DILocation(line: 146, column: 6, scope: !2039)
!2051 = !DILocation(line: 147, column: 10, scope: !2048)
!2052 = !DILocation(line: 147, column: 3, scope: !2048)
!2053 = !DILocation(line: 149, column: 35, scope: !2039)
!2054 = !DILocation(line: 149, column: 40, scope: !2039)
!2055 = !DILocation(line: 149, column: 9, scope: !2039)
!2056 = !DILocation(line: 149, column: 2, scope: !2039)
!2057 = !DILocation(line: 150, column: 1, scope: !2039)
!2058 = distinct !DISubprogram(name: "ERR_PTR", scope: !2059, file: !2059, line: 39, type: !2060, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2059 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!119, !294}
!2062 = !{!2063}
!2063 = !DILocalVariable(name: "error", arg: 1, scope: !2058, file: !2059, line: 39, type: !294)
!2064 = !DILocation(line: 39, column: 48, scope: !2058)
!2065 = !DILocation(line: 41, column: 18, scope: !2058)
!2066 = !DILocation(line: 41, column: 9, scope: !2058)
!2067 = !DILocation(line: 41, column: 2, scope: !2058)
!2068 = distinct !DISubprogram(name: "genpd_dev_pm_attach_by_id", scope: !2034, file: !2034, line: 405, type: !2040, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2069)
!2069 = !{!2070, !2071}
!2070 = !DILocalVariable(name: "dev", arg: 1, scope: !2068, file: !2034, line: 405, type: !164)
!2071 = !DILocalVariable(name: "index", arg: 2, scope: !2068, file: !2034, line: 406, type: !7)
!2072 = !DILocation(line: 405, column: 71, scope: !2068)
!2073 = !DILocation(line: 406, column: 27, scope: !2068)
!2074 = !DILocation(line: 408, column: 2, scope: !2068)
!2075 = distinct !DISubprogram(name: "dev_pm_domain_attach_by_name", scope: !3, file: !3, line: 160, type: !2076, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!164, !164, !172}
!2078 = !{!2079, !2080}
!2079 = !DILocalVariable(name: "dev", arg: 1, scope: !2075, file: !3, line: 160, type: !164)
!2080 = !DILocalVariable(name: "name", arg: 2, scope: !2075, file: !3, line: 161, type: !172)
!2081 = !DILocation(line: 160, column: 60, scope: !2075)
!2082 = !DILocation(line: 161, column: 22, scope: !2075)
!2083 = !DILocation(line: 163, column: 6, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 163, column: 6)
!2085 = !DILocation(line: 163, column: 11, scope: !2084)
!2086 = !DILocation(line: 163, column: 6, scope: !2075)
!2087 = !DILocation(line: 164, column: 10, scope: !2084)
!2088 = !DILocation(line: 164, column: 3, scope: !2084)
!2089 = !DILocation(line: 166, column: 37, scope: !2075)
!2090 = !DILocation(line: 166, column: 42, scope: !2075)
!2091 = !DILocation(line: 166, column: 9, scope: !2075)
!2092 = !DILocation(line: 166, column: 2, scope: !2075)
!2093 = !DILocation(line: 167, column: 1, scope: !2075)
!2094 = distinct !DISubprogram(name: "genpd_dev_pm_attach_by_name", scope: !2034, file: !2034, line: 411, type: !2076, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2095 = !{!2096, !2097}
!2096 = !DILocalVariable(name: "dev", arg: 1, scope: !2094, file: !2034, line: 411, type: !164)
!2097 = !DILocalVariable(name: "name", arg: 2, scope: !2094, file: !2034, line: 412, type: !172)
!2098 = !DILocation(line: 411, column: 73, scope: !2094)
!2099 = !DILocation(line: 412, column: 21, scope: !2094)
!2100 = !DILocation(line: 414, column: 2, scope: !2094)
!2101 = distinct !DISubprogram(name: "dev_pm_domain_detach", scope: !3, file: !3, line: 183, type: !1621, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2102)
!2102 = !{!2103, !2104}
!2103 = !DILocalVariable(name: "dev", arg: 1, scope: !2101, file: !3, line: 183, type: !164)
!2104 = !DILocalVariable(name: "power_off", arg: 2, scope: !2101, file: !3, line: 183, type: !612)
!2105 = !DILocation(line: 183, column: 42, scope: !2101)
!2106 = !DILocation(line: 183, column: 52, scope: !2101)
!2107 = !DILocation(line: 185, column: 6, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 185, column: 6)
!2109 = !DILocation(line: 185, column: 11, scope: !2108)
!2110 = !DILocation(line: 185, column: 21, scope: !2108)
!2111 = !DILocation(line: 185, column: 24, scope: !2108)
!2112 = !DILocation(line: 185, column: 29, scope: !2108)
!2113 = !DILocation(line: 185, column: 40, scope: !2108)
!2114 = !DILocation(line: 185, column: 6, scope: !2101)
!2115 = !DILocation(line: 186, column: 3, scope: !2108)
!2116 = !DILocation(line: 186, column: 8, scope: !2108)
!2117 = !DILocation(line: 186, column: 19, scope: !2108)
!2118 = !DILocation(line: 186, column: 26, scope: !2108)
!2119 = !DILocation(line: 186, column: 31, scope: !2108)
!2120 = !DILocation(line: 187, column: 1, scope: !2101)
!2121 = distinct !DISubprogram(name: "dev_pm_domain_start", scope: !3, file: !3, line: 201, type: !162, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2122)
!2122 = !{!2123}
!2123 = !DILocalVariable(name: "dev", arg: 1, scope: !2121, file: !3, line: 201, type: !164)
!2124 = !DILocation(line: 201, column: 40, scope: !2121)
!2125 = !DILocation(line: 203, column: 6, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 203, column: 6)
!2127 = !DILocation(line: 203, column: 11, scope: !2126)
!2128 = !DILocation(line: 203, column: 21, scope: !2126)
!2129 = !DILocation(line: 203, column: 24, scope: !2126)
!2130 = !DILocation(line: 203, column: 29, scope: !2126)
!2131 = !DILocation(line: 203, column: 40, scope: !2126)
!2132 = !DILocation(line: 203, column: 6, scope: !2121)
!2133 = !DILocation(line: 204, column: 10, scope: !2126)
!2134 = !DILocation(line: 204, column: 15, scope: !2126)
!2135 = !DILocation(line: 204, column: 26, scope: !2126)
!2136 = !DILocation(line: 204, column: 32, scope: !2126)
!2137 = !DILocation(line: 204, column: 3, scope: !2126)
!2138 = !DILocation(line: 206, column: 2, scope: !2121)
!2139 = !DILocation(line: 207, column: 1, scope: !2121)
!2140 = distinct !DISubprogram(name: "dev_pm_domain_set", scope: !3, file: !3, line: 220, type: !2141, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !164, !1614}
!2143 = !{!2144, !2145, !2146, !2148}
!2144 = !DILocalVariable(name: "dev", arg: 1, scope: !2140, file: !3, line: 220, type: !164)
!2145 = !DILocalVariable(name: "pd", arg: 2, scope: !2140, file: !3, line: 220, type: !1614)
!2146 = !DILocalVariable(name: "__ret_warn_on", scope: !2147, file: !3, line: 225, type: !46)
!2147 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 225, column: 2)
!2148 = !DILocalVariable(name: "__flags", scope: !2149, file: !3, line: 225, type: !46)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 225, column: 2)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 225, column: 2)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 225, column: 2)
!2152 = !DILocation(line: 220, column: 39, scope: !2140)
!2153 = !DILocation(line: 220, column: 66, scope: !2140)
!2154 = !DILocation(line: 222, column: 6, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 222, column: 6)
!2156 = !DILocation(line: 222, column: 11, scope: !2155)
!2157 = !DILocation(line: 222, column: 24, scope: !2155)
!2158 = !DILocation(line: 222, column: 21, scope: !2155)
!2159 = !DILocation(line: 222, column: 6, scope: !2140)
!2160 = !DILocation(line: 223, column: 3, scope: !2155)
!2161 = !DILocation(line: 225, column: 2, scope: !2147)
!2162 = !DILocation(line: 0, scope: !2147)
!2163 = !DILocation(line: 225, column: 2, scope: !2151)
!2164 = !DILocation(line: 225, column: 2, scope: !2150)
!2165 = !DILocation(line: 225, column: 2, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 225, column: 2)
!2167 = !DILocation(line: 225, column: 2, scope: !2149)
!2168 = !DILocation(line: 225, column: 2, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 225, column: 2)
!2170 = !DILocation(line: 225, column: 2, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 225, column: 2)
!2172 = !{i64 2153602379, i64 2153602408, i64 2153602454, i64 2153602512, i64 2153602566, i64 2153602620, i64 2153602675, i64 2153602706, i64 2153603014, i64 2153603020, i64 2153603067, i64 2153603090, i64 2153603116}
!2173 = !DILocation(line: 225, column: 2, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 225, column: 2)
!2175 = !DILocation(line: 225, column: 2, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 225, column: 2)
!2177 = !DILocation(line: 225, column: 2, scope: !2140)
!2178 = !DILocation(line: 227, column: 19, scope: !2140)
!2179 = !DILocation(line: 227, column: 2, scope: !2140)
!2180 = !DILocation(line: 227, column: 7, scope: !2140)
!2181 = !DILocation(line: 227, column: 17, scope: !2140)
!2182 = !DILocation(line: 228, column: 28, scope: !2140)
!2183 = !DILocation(line: 228, column: 2, scope: !2140)
!2184 = !DILocation(line: 229, column: 1, scope: !2140)
!2185 = !DISubprogram(name: "device_is_bound", scope: !26, file: !26, line: 1175, type: !2186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!612, !164}
!2188 = !DISubprogram(name: "__warn_printk", scope: !1086, file: !1086, line: 93, type: !2189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !172, null}
!2191 = !DISubprogram(name: "device_pm_check_callbacks", scope: !1395, file: !1395, line: 120, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2192 = distinct !DISubprogram(name: "kmalloc", scope: !107, file: !107, line: 591, type: !1901, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2193)
!2193 = !{!2194, !2195, !2196}
!2194 = !DILocalVariable(name: "size", arg: 1, scope: !2192, file: !107, line: 591, type: !305)
!2195 = !DILocalVariable(name: "flags", arg: 2, scope: !2192, file: !107, line: 591, type: !117)
!2196 = !DILocalVariable(name: "index", scope: !2197, file: !107, line: 594, type: !7)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !107, line: 593, column: 42)
!2198 = distinct !DILexicalBlock(scope: !2192, file: !107, line: 593, column: 6)
!2199 = !DILocation(line: 591, column: 61, scope: !2192)
!2200 = !DILocation(line: 591, column: 73, scope: !2192)
!2201 = !DILocation(line: 593, column: 27, scope: !2198)
!2202 = !DILocation(line: 593, column: 6, scope: !2198)
!2203 = !DILocation(line: 593, column: 33, scope: !2198)
!2204 = !DILocation(line: 593, column: 36, scope: !2198)
!2205 = !DILocation(line: 593, column: 6, scope: !2192)
!2206 = !DILocation(line: 594, column: 3, scope: !2197)
!2207 = !DILocation(line: 594, column: 16, scope: !2197)
!2208 = !DILocation(line: 596, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2197, file: !107, line: 596, column: 7)
!2210 = !DILocation(line: 596, column: 12, scope: !2209)
!2211 = !DILocation(line: 596, column: 7, scope: !2197)
!2212 = !DILocation(line: 597, column: 25, scope: !2209)
!2213 = !DILocation(line: 597, column: 31, scope: !2209)
!2214 = !DILocation(line: 597, column: 11, scope: !2209)
!2215 = !DILocation(line: 597, column: 4, scope: !2209)
!2216 = !DILocation(line: 599, column: 11, scope: !2197)
!2217 = !DILocation(line: 599, column: 9, scope: !2197)
!2218 = !DILocation(line: 601, column: 33, scope: !2197)
!2219 = !DILocation(line: 601, column: 40, scope: !2197)
!2220 = !DILocation(line: 601, column: 20, scope: !2197)
!2221 = !DILocation(line: 601, column: 5, scope: !2197)
!2222 = !DILocation(line: 601, column: 51, scope: !2197)
!2223 = !DILocation(line: 602, column: 5, scope: !2197)
!2224 = !DILocation(line: 602, column: 12, scope: !2197)
!2225 = !DILocation(line: 600, column: 10, scope: !2197)
!2226 = !DILocation(line: 600, column: 3, scope: !2197)
!2227 = !DILocation(line: 603, column: 2, scope: !2198)
!2228 = !DILocation(line: 604, column: 19, scope: !2192)
!2229 = !DILocation(line: 604, column: 25, scope: !2192)
!2230 = !DILocation(line: 604, column: 9, scope: !2192)
!2231 = !DILocation(line: 604, column: 2, scope: !2192)
!2232 = !DILocation(line: 605, column: 1, scope: !2192)
!2233 = !DISubprogram(name: "kmalloc_large", scope: !107, file: !107, line: 531, type: !1901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2234 = distinct !DISubprogram(name: "__kmalloc_index", scope: !107, file: !107, line: 444, type: !2235, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!7, !305, !612}
!2237 = !{!2238, !2239}
!2238 = !DILocalVariable(name: "size", arg: 1, scope: !2234, file: !107, line: 444, type: !305)
!2239 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2234, file: !107, line: 445, type: !612)
!2240 = !DILocation(line: 444, column: 60, scope: !2234)
!2241 = !DILocation(line: 445, column: 16, scope: !2234)
!2242 = !DILocation(line: 447, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 447, column: 6)
!2244 = !DILocation(line: 447, column: 6, scope: !2234)
!2245 = !DILocation(line: 448, column: 3, scope: !2243)
!2246 = !DILocation(line: 450, column: 6, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 450, column: 6)
!2248 = !DILocation(line: 450, column: 11, scope: !2247)
!2249 = !DILocation(line: 450, column: 6, scope: !2234)
!2250 = !DILocation(line: 451, column: 3, scope: !2247)
!2251 = !DILocation(line: 453, column: 32, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 453, column: 6)
!2253 = !DILocation(line: 453, column: 37, scope: !2252)
!2254 = !DILocation(line: 453, column: 42, scope: !2252)
!2255 = !DILocation(line: 453, column: 45, scope: !2252)
!2256 = !DILocation(line: 453, column: 50, scope: !2252)
!2257 = !DILocation(line: 453, column: 6, scope: !2234)
!2258 = !DILocation(line: 454, column: 3, scope: !2252)
!2259 = !DILocation(line: 455, column: 32, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 455, column: 6)
!2261 = !DILocation(line: 455, column: 37, scope: !2260)
!2262 = !DILocation(line: 455, column: 43, scope: !2260)
!2263 = !DILocation(line: 455, column: 46, scope: !2260)
!2264 = !DILocation(line: 455, column: 51, scope: !2260)
!2265 = !DILocation(line: 455, column: 6, scope: !2234)
!2266 = !DILocation(line: 456, column: 3, scope: !2260)
!2267 = !DILocation(line: 457, column: 6, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 457, column: 6)
!2269 = !DILocation(line: 457, column: 11, scope: !2268)
!2270 = !DILocation(line: 457, column: 6, scope: !2234)
!2271 = !DILocation(line: 457, column: 26, scope: !2268)
!2272 = !DILocation(line: 458, column: 6, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 458, column: 6)
!2274 = !DILocation(line: 458, column: 11, scope: !2273)
!2275 = !DILocation(line: 458, column: 6, scope: !2234)
!2276 = !DILocation(line: 458, column: 26, scope: !2273)
!2277 = !DILocation(line: 459, column: 6, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 459, column: 6)
!2279 = !DILocation(line: 459, column: 11, scope: !2278)
!2280 = !DILocation(line: 459, column: 6, scope: !2234)
!2281 = !DILocation(line: 459, column: 26, scope: !2278)
!2282 = !DILocation(line: 460, column: 6, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 460, column: 6)
!2284 = !DILocation(line: 460, column: 11, scope: !2283)
!2285 = !DILocation(line: 460, column: 6, scope: !2234)
!2286 = !DILocation(line: 460, column: 26, scope: !2283)
!2287 = !DILocation(line: 461, column: 6, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 461, column: 6)
!2289 = !DILocation(line: 461, column: 11, scope: !2288)
!2290 = !DILocation(line: 461, column: 6, scope: !2234)
!2291 = !DILocation(line: 461, column: 26, scope: !2288)
!2292 = !DILocation(line: 462, column: 6, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 462, column: 6)
!2294 = !DILocation(line: 462, column: 11, scope: !2293)
!2295 = !DILocation(line: 462, column: 6, scope: !2234)
!2296 = !DILocation(line: 462, column: 26, scope: !2293)
!2297 = !DILocation(line: 463, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 463, column: 6)
!2299 = !DILocation(line: 463, column: 11, scope: !2298)
!2300 = !DILocation(line: 463, column: 6, scope: !2234)
!2301 = !DILocation(line: 463, column: 26, scope: !2298)
!2302 = !DILocation(line: 464, column: 6, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 464, column: 6)
!2304 = !DILocation(line: 464, column: 11, scope: !2303)
!2305 = !DILocation(line: 464, column: 6, scope: !2234)
!2306 = !DILocation(line: 464, column: 26, scope: !2303)
!2307 = !DILocation(line: 465, column: 6, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 465, column: 6)
!2309 = !DILocation(line: 465, column: 11, scope: !2308)
!2310 = !DILocation(line: 465, column: 6, scope: !2234)
!2311 = !DILocation(line: 465, column: 26, scope: !2308)
!2312 = !DILocation(line: 466, column: 6, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 466, column: 6)
!2314 = !DILocation(line: 466, column: 11, scope: !2313)
!2315 = !DILocation(line: 466, column: 6, scope: !2234)
!2316 = !DILocation(line: 466, column: 26, scope: !2313)
!2317 = !DILocation(line: 467, column: 6, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 467, column: 6)
!2319 = !DILocation(line: 467, column: 11, scope: !2318)
!2320 = !DILocation(line: 467, column: 6, scope: !2234)
!2321 = !DILocation(line: 467, column: 26, scope: !2318)
!2322 = !DILocation(line: 468, column: 6, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 468, column: 6)
!2324 = !DILocation(line: 468, column: 11, scope: !2323)
!2325 = !DILocation(line: 468, column: 6, scope: !2234)
!2326 = !DILocation(line: 468, column: 26, scope: !2323)
!2327 = !DILocation(line: 469, column: 6, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 469, column: 6)
!2329 = !DILocation(line: 469, column: 11, scope: !2328)
!2330 = !DILocation(line: 469, column: 6, scope: !2234)
!2331 = !DILocation(line: 469, column: 26, scope: !2328)
!2332 = !DILocation(line: 470, column: 6, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 470, column: 6)
!2334 = !DILocation(line: 470, column: 11, scope: !2333)
!2335 = !DILocation(line: 470, column: 6, scope: !2234)
!2336 = !DILocation(line: 470, column: 26, scope: !2333)
!2337 = !DILocation(line: 471, column: 6, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 471, column: 6)
!2339 = !DILocation(line: 471, column: 11, scope: !2338)
!2340 = !DILocation(line: 471, column: 6, scope: !2234)
!2341 = !DILocation(line: 471, column: 26, scope: !2338)
!2342 = !DILocation(line: 472, column: 6, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 472, column: 6)
!2344 = !DILocation(line: 472, column: 11, scope: !2343)
!2345 = !DILocation(line: 472, column: 6, scope: !2234)
!2346 = !DILocation(line: 472, column: 26, scope: !2343)
!2347 = !DILocation(line: 473, column: 6, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 473, column: 6)
!2349 = !DILocation(line: 473, column: 11, scope: !2348)
!2350 = !DILocation(line: 473, column: 6, scope: !2234)
!2351 = !DILocation(line: 473, column: 26, scope: !2348)
!2352 = !DILocation(line: 474, column: 6, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 474, column: 6)
!2354 = !DILocation(line: 474, column: 11, scope: !2353)
!2355 = !DILocation(line: 474, column: 6, scope: !2234)
!2356 = !DILocation(line: 474, column: 27, scope: !2353)
!2357 = !DILocation(line: 475, column: 6, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 475, column: 6)
!2359 = !DILocation(line: 475, column: 11, scope: !2358)
!2360 = !DILocation(line: 475, column: 6, scope: !2234)
!2361 = !DILocation(line: 475, column: 32, scope: !2358)
!2362 = !DILocation(line: 477, column: 50, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 477, column: 6)
!2364 = !DILocation(line: 477, column: 6, scope: !2234)
!2365 = !DILocation(line: 478, column: 3, scope: !2363)
!2366 = !DILocation(line: 478, column: 3, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !107, line: 478, column: 3)
!2368 = distinct !DILexicalBlock(scope: !2363, file: !107, line: 478, column: 3)
!2369 = !{i32 -2142319909}
!2370 = !DILocation(line: 478, column: 3, scope: !2368)
!2371 = !DILocation(line: 480, column: 3, scope: !2363)
!2372 = !DILocation(line: 480, column: 3, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2363, file: !107, line: 480, column: 3)
!2374 = !DILocation(line: 480, column: 3, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2373, file: !107, line: 480, column: 3)
!2376 = !DILocation(line: 480, column: 3, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !107, line: 480, column: 3)
!2378 = !{i64 2152647590, i64 2152647619, i64 2152647665, i64 2152647723, i64 2152647777, i64 2152647831, i64 2152647886, i64 2152647917}
!2379 = !DILocation(line: 483, column: 2, scope: !2234)
!2380 = !DILocation(line: 484, column: 1, scope: !2234)
!2381 = !DISubprogram(name: "kmalloc_trace", scope: !107, file: !107, line: 525, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!119, !2384, !117, !305}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2386, line: 11, flags: DIFlagFwdDecl)
!2386 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2387 = distinct !DISubprogram(name: "kmalloc_type", scope: !107, file: !107, line: 401, type: !2388, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!106, !117, !120}
!2390 = !{!2391, !2392}
!2391 = !DILocalVariable(name: "flags", arg: 1, scope: !2387, file: !107, line: 401, type: !117)
!2392 = !DILocalVariable(name: "caller", arg: 2, scope: !2387, file: !107, line: 401, type: !120)
!2393 = !DILocation(line: 401, column: 67, scope: !2387)
!2394 = !DILocation(line: 401, column: 88, scope: !2387)
!2395 = !DILocation(line: 407, column: 6, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2387, file: !107, line: 407, column: 6)
!2397 = !DILocation(line: 407, column: 6, scope: !2387)
!2398 = !DILocation(line: 413, column: 3, scope: !2396)
!2399 = !DILocation(line: 423, column: 38, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2387, file: !107, line: 423, column: 6)
!2401 = !DILocation(line: 423, column: 44, scope: !2400)
!2402 = !DILocation(line: 423, column: 6, scope: !2387)
!2403 = !DILocation(line: 424, column: 3, scope: !2400)
!2404 = !DILocation(line: 426, column: 3, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2387, file: !107, line: 425, column: 6)
!2406 = !DILocation(line: 429, column: 1, scope: !2387)
!2407 = !DISubprogram(name: "__kmalloc", scope: !107, file: !107, line: 488, type: !1901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2408 = !DISubprogram(name: "__compiletime_assert_204", scope: !107, file: !107, line: 478, type: !1281, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2409 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !2410, file: !2410, line: 29, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2410 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !1926}
!2413 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !2410, file: !2410, line: 41, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
