; ModuleID = 'drivers/base/auxiliary.c'
source_filename = "drivers/base/auxiliary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_auxiliary_device_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad auxiliary_device_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___auxiliary_device_add: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __auxiliary_device_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_auxiliary_find_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad auxiliary_find_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___auxiliary_driver_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __auxiliary_driver_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_auxiliary_driver_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad auxiliary_driver_unregister ; .previous"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
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
%struct.auxiliary_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.auxiliary_device_id = type { [32 x i8], i64 }

@.str = private unnamed_addr constant [50 x i8] c"\013%s:%s: auxiliary_device has a NULL dev->parent\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"auxiliary\00", align 1, !dbg !7
@__func__.auxiliary_device_init = private unnamed_addr constant [22 x i8] c"auxiliary_device_init\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [43 x i8] c"\013%s:%s: auxiliary_device has a NULL name\0A\00", align 1, !dbg !18
@auxiliary_bus_type = internal global %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr @auxiliary_match, ptr @auxiliary_uevent, ptr @auxiliary_bus_probe, ptr null, ptr @auxiliary_bus_remove, ptr @auxiliary_bus_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @auxiliary_dev_pm_ops, ptr null, i8 0 }, align 8, !dbg !23
@__UNIQUE_ID___addressable_auxiliary_device_init206 = internal global ptr @auxiliary_device_init, section ".discard.addressable", align 8, !dbg !1797
@.str.3 = private unnamed_addr constant [34 x i8] c"auxiliary device modname is NULL\0A\00", align 1, !dbg !1799
@.str.4 = private unnamed_addr constant [9 x i8] c"%s.%s.%d\00", align 1, !dbg !1804
@.str.5 = private unnamed_addr constant [42 x i8] c"auxiliary device dev_set_name failed: %d\0A\00", align 1, !dbg !1809
@.str.6 = private unnamed_addr constant [37 x i8] c"adding auxiliary device failed!: %d\0A\00", align 1, !dbg !1814
@__UNIQUE_ID___addressable___auxiliary_device_add207 = internal global ptr @__auxiliary_device_add, section ".discard.addressable", align 8, !dbg !1819
@__UNIQUE_ID___addressable_auxiliary_find_device208 = internal global ptr @auxiliary_find_device, section ".discard.addressable", align 8, !dbg !1821
@.str.7 = private unnamed_addr constant [25 x i8] c"drivers/base/auxiliary.c\00", align 1, !dbg !1823
@.str.8 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1, !dbg !1828
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !1833
@__UNIQUE_ID___addressable___auxiliary_driver_register209 = internal global ptr @__auxiliary_driver_register, section ".discard.addressable", align 8, !dbg !1836
@__UNIQUE_ID___addressable_auxiliary_driver_unregister210 = internal global ptr @auxiliary_driver_unregister, section ".discard.addressable", align 8, !dbg !1838
@auxiliary_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_generic_runtime_suspend, ptr @pm_generic_runtime_resume, ptr null }, align 8, !dbg !1853
@.str.10 = private unnamed_addr constant [16 x i8] c"MODALIAS=%s%.*s\00", align 1, !dbg !1840
@.str.11 = private unnamed_addr constant [11 x i8] c"auxiliary:\00", align 1, !dbg !1843
@.str.12 = private unnamed_addr constant [36 x i8] c"Failed to attach to PM Domain : %d\0A\00", align 1, !dbg !1848
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_auxiliary_device_init206, ptr @__UNIQUE_ID___addressable___auxiliary_device_add207, ptr @__UNIQUE_ID___addressable_auxiliary_find_device208, ptr @__UNIQUE_ID___addressable___auxiliary_driver_register209, ptr @__UNIQUE_ID___addressable_auxiliary_driver_unregister210], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @auxiliary_device_init(ptr noundef %auxdev) #0 align 16 !dbg !1864 {
entry:
  %retval = alloca i32, align 4
  %auxdev.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store ptr %auxdev, ptr %auxdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auxdev.addr, metadata !1866, metadata !DIExpression()), !dbg !1868
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !1869
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1867, metadata !DIExpression()), !dbg !1870
  %0 = load ptr, ptr %auxdev.addr, align 8, !dbg !1871
  %dev1 = getelementptr inbounds %struct.auxiliary_device, ptr %0, i32 0, i32 0, !dbg !1872
  store ptr %dev1, ptr %dev, align 8, !dbg !1870
  %1 = load ptr, ptr %dev, align 8, !dbg !1873
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1, !dbg !1875
  %2 = load ptr, ptr %parent, align 8, !dbg !1875
  %tobool = icmp ne ptr %2, null, !dbg !1873
  br i1 %tobool, label %if.end, label %if.then, !dbg !1876

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1877

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1880

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1880

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.auxiliary_device_init) #9, !dbg !1877
  store i32 %call, ptr %tmp, align 4, !dbg !1880
  %3 = load i32, ptr %tmp, align 4, !dbg !1877
  store i32 -22, ptr %retval, align 4, !dbg !1882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1882

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %auxdev.addr, align 8, !dbg !1883
  %name = getelementptr inbounds %struct.auxiliary_device, ptr %4, i32 0, i32 1, !dbg !1885
  %5 = load ptr, ptr %name, align 8, !dbg !1885
  %tobool2 = icmp ne ptr %5, null, !dbg !1883
  br i1 %tobool2, label %if.end9, label %if.then3, !dbg !1886

if.then3:                                         ; preds = %if.end
  br label %do.body4, !dbg !1887

do.body4:                                         ; preds = %if.then3
  br label %do.cond5, !dbg !1890

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1890

do.end6:                                          ; preds = %do.cond5
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef @.str.1, ptr noundef @__func__.auxiliary_device_init) #9, !dbg !1887
  store i32 %call8, ptr %tmp7, align 4, !dbg !1890
  %6 = load i32, ptr %tmp7, align 4, !dbg !1887
  store i32 -22, ptr %retval, align 4, !dbg !1892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1892

if.end9:                                          ; preds = %if.end
  %7 = load ptr, ptr %dev, align 8, !dbg !1893
  %bus = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 5, !dbg !1894
  store ptr @auxiliary_bus_type, ptr %bus, align 8, !dbg !1895
  %8 = load ptr, ptr %auxdev.addr, align 8, !dbg !1896
  %dev10 = getelementptr inbounds %struct.auxiliary_device, ptr %8, i32 0, i32 0, !dbg !1897
  call void @device_initialize(ptr noundef %dev10) #10, !dbg !1898
  store i32 0, ptr %retval, align 4, !dbg !1899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1899

cleanup:                                          ; preds = %if.end9, %do.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !1900
  %9 = load i32, ptr %retval, align 4, !dbg !1900
  ret i32 %9, !dbg !1900
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1901 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1905 dso_local void @device_initialize(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__auxiliary_device_add(ptr noundef %auxdev, ptr noundef %modname) #0 align 16 !dbg !1906 {
entry:
  %retval = alloca i32, align 4
  %auxdev.addr = alloca ptr, align 8
  %modname.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auxdev, ptr %auxdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auxdev.addr, metadata !1910, metadata !DIExpression()), !dbg !1914
  store ptr %modname, ptr %modname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %modname.addr, metadata !1911, metadata !DIExpression()), !dbg !1915
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !1916
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1912, metadata !DIExpression()), !dbg !1917
  %0 = load ptr, ptr %auxdev.addr, align 8, !dbg !1918
  %dev1 = getelementptr inbounds %struct.auxiliary_device, ptr %0, i32 0, i32 0, !dbg !1919
  store ptr %dev1, ptr %dev, align 8, !dbg !1917
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1913, metadata !DIExpression()), !dbg !1921
  %1 = load ptr, ptr %modname.addr, align 8, !dbg !1922
  %tobool = icmp ne ptr %1, null, !dbg !1922
  br i1 %tobool, label %if.end, label %if.then, !dbg !1924

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1925

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1928

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1928

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %dev, align 8, !dbg !1925
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef @.str.3) #9, !dbg !1925
  store i32 -22, ptr %retval, align 4, !dbg !1930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1930

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !1931
  %4 = load ptr, ptr %modname.addr, align 8, !dbg !1932
  %5 = load ptr, ptr %auxdev.addr, align 8, !dbg !1933
  %name = getelementptr inbounds %struct.auxiliary_device, ptr %5, i32 0, i32 1, !dbg !1934
  %6 = load ptr, ptr %name, align 8, !dbg !1934
  %7 = load ptr, ptr %auxdev.addr, align 8, !dbg !1935
  %id = getelementptr inbounds %struct.auxiliary_device, ptr %7, i32 0, i32 2, !dbg !1936
  %8 = load i32, ptr %id, align 8, !dbg !1936
  %call = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %3, ptr noundef @.str.4, ptr noundef %4, ptr noundef %6, i32 noundef %8) #10, !dbg !1937
  store i32 %call, ptr %ret, align 4, !dbg !1938
  %9 = load i32, ptr %ret, align 4, !dbg !1939
  %tobool2 = icmp ne i32 %9, 0, !dbg !1939
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !1941

if.then3:                                         ; preds = %if.end
  br label %do.body4, !dbg !1942

do.body4:                                         ; preds = %if.then3
  br label %do.cond5, !dbg !1945

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1945

do.end6:                                          ; preds = %do.cond5
  %10 = load ptr, ptr %dev, align 8, !dbg !1942
  %11 = load i32, ptr %ret, align 4, !dbg !1942
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef @.str.5, i32 noundef %11) #9, !dbg !1942
  %12 = load i32, ptr %ret, align 4, !dbg !1947
  store i32 %12, ptr %retval, align 4, !dbg !1948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1948

if.end7:                                          ; preds = %if.end
  %13 = load ptr, ptr %dev, align 8, !dbg !1949
  %call8 = call i32 @device_add(ptr noundef %13) #10, !dbg !1950
  store i32 %call8, ptr %ret, align 4, !dbg !1951
  %14 = load i32, ptr %ret, align 4, !dbg !1952
  %tobool9 = icmp ne i32 %14, 0, !dbg !1952
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !1954

if.then10:                                        ; preds = %if.end7
  br label %do.body11, !dbg !1955

do.body11:                                        ; preds = %if.then10
  br label %do.cond12, !dbg !1957

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1957

do.end13:                                         ; preds = %do.cond12
  %15 = load ptr, ptr %dev, align 8, !dbg !1955
  %16 = load i32, ptr %ret, align 4, !dbg !1955
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef @.str.6, i32 noundef %16) #9, !dbg !1955
  br label %if.end14, !dbg !1959

if.end14:                                         ; preds = %do.end13, %if.end7
  %17 = load i32, ptr %ret, align 4, !dbg !1960
  store i32 %17, ptr %retval, align 4, !dbg !1961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1961

cleanup:                                          ; preds = %if.end14, %do.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !1962
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !1962
  %18 = load i32, ptr %retval, align 4, !dbg !1962
  ret i32 %18, !dbg !1962
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1963 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1967 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1970 dso_local i32 @device_add(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @auxiliary_find_device(ptr noundef %start, ptr noundef %data, ptr noundef %match) #0 align 16 !dbg !1971 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1978, metadata !DIExpression()), !dbg !1982
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1979, metadata !DIExpression()), !dbg !1983
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !1980, metadata !DIExpression()), !dbg !1984
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !1985
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1981, metadata !DIExpression()), !dbg !1986
  %0 = load ptr, ptr %start.addr, align 8, !dbg !1987
  %1 = load ptr, ptr %data.addr, align 8, !dbg !1988
  %2 = load ptr, ptr %match.addr, align 8, !dbg !1989
  %call = call ptr @bus_find_device(ptr noundef @auxiliary_bus_type, ptr noundef %0, ptr noundef %1, ptr noundef %2) #10, !dbg !1990
  store ptr %call, ptr %dev, align 8, !dbg !1991
  %3 = load ptr, ptr %dev, align 8, !dbg !1992
  %tobool = icmp ne ptr %3, null, !dbg !1992
  br i1 %tobool, label %if.end, label %if.then, !dbg !1994

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1995

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !1996
  %call1 = call ptr @to_auxiliary_dev(ptr noundef %4) #10, !dbg !1997
  store ptr %call1, ptr %retval, align 8, !dbg !1998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1998

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !1999
  %5 = load ptr, ptr %retval, align 8, !dbg !1999
  ret ptr %5, !dbg !1999
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2000 dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_auxiliary_dev(ptr noundef %dev) #5 align 16 !dbg !2003 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2007, metadata !DIExpression()), !dbg !2010
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2008, metadata !DIExpression()), !dbg !2011
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2011
  store ptr %0, ptr %__mptr, align 8, !dbg !2011
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2011
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2011
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !2012
  %2 = load ptr, ptr %tmp, align 8, !dbg !2011
  ret ptr %2, !dbg !2013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__auxiliary_driver_register(ptr noundef %auxdrv, ptr noundef %owner, ptr noundef %modname) #0 align 16 !dbg !2014 {
entry:
  %retval = alloca i32, align 4
  %auxdrv.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %modname.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on26 = alloca i32, align 4
  %__flags44 = alloca i32, align 4
  %tmp57 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %auxdrv, ptr %auxdrv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auxdrv.addr, metadata !2018, metadata !DIExpression()), !dbg !2033
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !2019, metadata !DIExpression()), !dbg !2034
  store ptr %modname, ptr %modname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %modname.addr, metadata !2020, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2021, metadata !DIExpression()), !dbg !2037
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !2038
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2022, metadata !DIExpression()), !dbg !2038
  %0 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2038
  %probe = getelementptr inbounds %struct.auxiliary_driver, ptr %0, i32 0, i32 0, !dbg !2038
  %1 = load ptr, ptr %probe, align 8, !dbg !2038
  %tobool = icmp ne ptr %1, null, !dbg !2038
  %lnot = xor i1 %tobool, true, !dbg !2038
  %lnot1 = xor i1 %lnot, true, !dbg !2038
  %lnot2 = xor i1 %lnot1, true, !dbg !2038
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2038
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2038
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !2039
  %tobool3 = icmp ne i32 %2, 0, !dbg !2039
  %lnot4 = xor i1 %tobool3, true, !dbg !2039
  %lnot6 = xor i1 %lnot4, true, !dbg !2039
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2039
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2039
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2039
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2039
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2038

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2039

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !2040
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2025, metadata !DIExpression()), !dbg !2040
  store i32 2305, ptr %__flags, align 4, !dbg !2040
  br label %do.body9, !dbg !2040

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2041

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2041

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !2040

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !2043
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 382, i32 %3, i64 12) #8, !dbg !2043, !srcloc !2045
  br label %do.cond11, !dbg !2043

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2043

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !2040

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !2046

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2046

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !2039
  br label %do.cond16, !dbg !2040

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2040

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !2040

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2038
  %tobool18 = icmp ne i32 %4, 0, !dbg !2038
  %lnot19 = xor i1 %tobool18, true, !dbg !2038
  %lnot21 = xor i1 %lnot19, true, !dbg !2038
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2038
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2038
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !2038
  store i64 %expval24, ptr %tmp, align 8, !dbg !2039
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !2048
  %5 = load i64, ptr %tmp, align 8, !dbg !2038
  %tobool25 = icmp ne i64 %5, 0, !dbg !2048
  br i1 %tobool25, label %if.then66, label %lor.lhs.false, !dbg !2049

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on26) #8, !dbg !2050
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on26, metadata !2028, metadata !DIExpression()), !dbg !2050
  %6 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2050
  %id_table = getelementptr inbounds %struct.auxiliary_driver, ptr %6, i32 0, i32 7, !dbg !2050
  %7 = load ptr, ptr %id_table, align 8, !dbg !2050
  %tobool27 = icmp ne ptr %7, null, !dbg !2050
  %lnot28 = xor i1 %tobool27, true, !dbg !2050
  %lnot30 = xor i1 %lnot28, true, !dbg !2050
  %lnot32 = xor i1 %lnot30, true, !dbg !2050
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !2050
  store i32 %lnot.ext33, ptr %__ret_warn_on26, align 4, !dbg !2050
  %8 = load i32, ptr %__ret_warn_on26, align 4, !dbg !2051
  %tobool34 = icmp ne i32 %8, 0, !dbg !2051
  %lnot35 = xor i1 %tobool34, true, !dbg !2051
  %lnot37 = xor i1 %lnot35, true, !dbg !2051
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !2051
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !2051
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !2051
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !2051
  br i1 %tobool41, label %if.then42, label %if.end56, !dbg !2050

if.then42:                                        ; preds = %lor.lhs.false
  br label %do.body43, !dbg !2051

do.body43:                                        ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags44) #8, !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %__flags44, metadata !2030, metadata !DIExpression()), !dbg !2052
  store i32 2305, ptr %__flags44, align 4, !dbg !2052
  br label %do.body45, !dbg !2052

do.body45:                                        ; preds = %do.body43
  br label %do.cond46, !dbg !2053

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !2053

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !2052

do.body48:                                        ; preds = %do.end47
  %9 = load i32, ptr %__flags44, align 4, !dbg !2055
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 382, i32 %9, i64 12) #8, !dbg !2055, !srcloc !2057
  br label %do.cond49, !dbg !2055

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !2055

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !2052

do.body51:                                        ; preds = %do.end50
  br label %do.cond52, !dbg !2058

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !2058

do.end53:                                         ; preds = %do.cond52
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags44) #8, !dbg !2051
  br label %do.cond54, !dbg !2052

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !2052

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !2052

if.end56:                                         ; preds = %do.end55, %lor.lhs.false
  %10 = load i32, ptr %__ret_warn_on26, align 4, !dbg !2050
  %tobool58 = icmp ne i32 %10, 0, !dbg !2050
  %lnot59 = xor i1 %tobool58, true, !dbg !2050
  %lnot61 = xor i1 %lnot59, true, !dbg !2050
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !2050
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !2050
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !2050
  store i64 %expval64, ptr %tmp57, align 8, !dbg !2051
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on26) #8, !dbg !2060
  %11 = load i64, ptr %tmp57, align 8, !dbg !2050
  %tobool65 = icmp ne i64 %11, 0, !dbg !2060
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !2061

if.then66:                                        ; preds = %if.end56, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !2062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2062

if.end67:                                         ; preds = %if.end56
  %12 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2063
  %name = getelementptr inbounds %struct.auxiliary_driver, ptr %12, i32 0, i32 5, !dbg !2065
  %13 = load ptr, ptr %name, align 8, !dbg !2065
  %tobool68 = icmp ne ptr %13, null, !dbg !2063
  br i1 %tobool68, label %if.then69, label %if.else, !dbg !2066

if.then69:                                        ; preds = %if.end67
  %14 = load ptr, ptr %modname.addr, align 8, !dbg !2067
  %15 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2068
  %name70 = getelementptr inbounds %struct.auxiliary_driver, ptr %15, i32 0, i32 5, !dbg !2069
  %16 = load ptr, ptr %name70, align 8, !dbg !2069
  %call = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.8, ptr noundef %14, ptr noundef %16) #10, !dbg !2070
  %17 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2071
  %driver = getelementptr inbounds %struct.auxiliary_driver, ptr %17, i32 0, i32 6, !dbg !2072
  %name71 = getelementptr inbounds %struct.device_driver, ptr %driver, i32 0, i32 0, !dbg !2073
  store ptr %call, ptr %name71, align 8, !dbg !2074
  br label %if.end75, !dbg !2071

if.else:                                          ; preds = %if.end67
  %18 = load ptr, ptr %modname.addr, align 8, !dbg !2075
  %call72 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.9, ptr noundef %18) #10, !dbg !2076
  %19 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2077
  %driver73 = getelementptr inbounds %struct.auxiliary_driver, ptr %19, i32 0, i32 6, !dbg !2078
  %name74 = getelementptr inbounds %struct.device_driver, ptr %driver73, i32 0, i32 0, !dbg !2079
  store ptr %call72, ptr %name74, align 8, !dbg !2080
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then69
  %20 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2081
  %driver76 = getelementptr inbounds %struct.auxiliary_driver, ptr %20, i32 0, i32 6, !dbg !2083
  %name77 = getelementptr inbounds %struct.device_driver, ptr %driver76, i32 0, i32 0, !dbg !2084
  %21 = load ptr, ptr %name77, align 8, !dbg !2084
  %tobool78 = icmp ne ptr %21, null, !dbg !2081
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !2085

if.then79:                                        ; preds = %if.end75
  store i32 -12, ptr %retval, align 4, !dbg !2086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2086

if.end80:                                         ; preds = %if.end75
  %22 = load ptr, ptr %owner.addr, align 8, !dbg !2087
  %23 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2088
  %driver81 = getelementptr inbounds %struct.auxiliary_driver, ptr %23, i32 0, i32 6, !dbg !2089
  %owner82 = getelementptr inbounds %struct.device_driver, ptr %driver81, i32 0, i32 2, !dbg !2090
  store ptr %22, ptr %owner82, align 8, !dbg !2091
  %24 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2092
  %driver83 = getelementptr inbounds %struct.auxiliary_driver, ptr %24, i32 0, i32 6, !dbg !2093
  %bus = getelementptr inbounds %struct.device_driver, ptr %driver83, i32 0, i32 1, !dbg !2094
  store ptr @auxiliary_bus_type, ptr %bus, align 8, !dbg !2095
  %25 = load ptr, ptr %modname.addr, align 8, !dbg !2096
  %26 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2097
  %driver84 = getelementptr inbounds %struct.auxiliary_driver, ptr %26, i32 0, i32 6, !dbg !2098
  %mod_name = getelementptr inbounds %struct.device_driver, ptr %driver84, i32 0, i32 3, !dbg !2099
  store ptr %25, ptr %mod_name, align 8, !dbg !2100
  %27 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2101
  %driver85 = getelementptr inbounds %struct.auxiliary_driver, ptr %27, i32 0, i32 6, !dbg !2102
  %call86 = call i32 @driver_register(ptr noundef %driver85) #10, !dbg !2103
  store i32 %call86, ptr %ret, align 4, !dbg !2104
  %28 = load i32, ptr %ret, align 4, !dbg !2105
  %tobool87 = icmp ne i32 %28, 0, !dbg !2105
  br i1 %tobool87, label %if.then88, label %if.end91, !dbg !2107

if.then88:                                        ; preds = %if.end80
  %29 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2108
  %driver89 = getelementptr inbounds %struct.auxiliary_driver, ptr %29, i32 0, i32 6, !dbg !2109
  %name90 = getelementptr inbounds %struct.device_driver, ptr %driver89, i32 0, i32 0, !dbg !2110
  %30 = load ptr, ptr %name90, align 8, !dbg !2110
  call void @kfree(ptr noundef %30) #10, !dbg !2111
  br label %if.end91, !dbg !2111

if.end91:                                         ; preds = %if.then88, %if.end80
  %31 = load i32, ptr %ret, align 4, !dbg !2112
  store i32 %31, ptr %retval, align 4, !dbg !2113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2113

cleanup:                                          ; preds = %if.end91, %if.then79, %if.then66
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !2114
  %32 = load i32, ptr %retval, align 4, !dbg !2114
  ret i32 %32, !dbg !2114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2115 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2119 dso_local i32 @driver_register(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2122 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @auxiliary_driver_unregister(ptr noundef %auxdrv) #0 align 16 !dbg !2126 {
entry:
  %auxdrv.addr = alloca ptr, align 8
  store ptr %auxdrv, ptr %auxdrv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auxdrv.addr, metadata !2130, metadata !DIExpression()), !dbg !2131
  %0 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2132
  %driver = getelementptr inbounds %struct.auxiliary_driver, ptr %0, i32 0, i32 6, !dbg !2133
  call void @driver_unregister(ptr noundef %driver) #10, !dbg !2134
  %1 = load ptr, ptr %auxdrv.addr, align 8, !dbg !2135
  %driver1 = getelementptr inbounds %struct.auxiliary_driver, ptr %1, i32 0, i32 6, !dbg !2136
  %name = getelementptr inbounds %struct.device_driver, ptr %driver1, i32 0, i32 0, !dbg !2137
  %2 = load ptr, ptr %name, align 8, !dbg !2137
  call void @kfree(ptr noundef %2) #10, !dbg !2138
  ret void, !dbg !2139
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2140 dso_local void @driver_unregister(ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @auxiliary_bus_init() #7 section ".init.text" align 16 !dbg !2143 {
entry:
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !2150
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2145, metadata !DIExpression()), !dbg !2150
  %call = call i32 @bus_register(ptr noundef @auxiliary_bus_type) #10, !dbg !2150
  %tobool = icmp ne i32 %call, 0, !dbg !2150
  %lnot = xor i1 %tobool, true, !dbg !2150
  %lnot1 = xor i1 %lnot, true, !dbg !2150
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2150
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2150
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !2151
  %tobool2 = icmp ne i32 %0, 0, !dbg !2151
  %lnot3 = xor i1 %tobool2, true, !dbg !2151
  %lnot5 = xor i1 %lnot3, true, !dbg !2151
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2151
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2151
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2151
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2151
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2150

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2151

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !2152
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2147, metadata !DIExpression()), !dbg !2152
  store i32 2305, ptr %__flags, align 4, !dbg !2152
  br label %do.body8, !dbg !2152

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !2153

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !2153

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !2152

do.body9:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !2155
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 418, i32 %1, i64 12) #8, !dbg !2155, !srcloc !2157
  br label %do.cond10, !dbg !2155

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2155

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !2152

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !2158

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2158

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !2151
  br label %do.cond15, !dbg !2152

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !2152

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !2152

if.end:                                           ; preds = %do.end16, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !2150
  %tobool17 = icmp ne i32 %2, 0, !dbg !2150
  %lnot18 = xor i1 %tobool17, true, !dbg !2150
  %lnot20 = xor i1 %lnot18, true, !dbg !2150
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !2150
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !2150
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !2150
  store i64 %expval23, ptr %tmp, align 8, !dbg !2151
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !2160
  %3 = load i64, ptr %tmp, align 8, !dbg !2150
  ret void, !dbg !2161
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2162 dso_local i32 @bus_register(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @auxiliary_match(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !2165 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %auxdev = alloca ptr, align 8
  %auxdrv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2167, metadata !DIExpression()), !dbg !2171
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2168, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxdev) #8, !dbg !2173
  call void @llvm.dbg.declare(metadata ptr %auxdev, metadata !2169, metadata !DIExpression()), !dbg !2174
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2175
  %call = call ptr @to_auxiliary_dev(ptr noundef %0) #10, !dbg !2176
  store ptr %call, ptr %auxdev, align 8, !dbg !2174
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxdrv) #8, !dbg !2177
  call void @llvm.dbg.declare(metadata ptr %auxdrv, metadata !2170, metadata !DIExpression()), !dbg !2178
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !2179
  %call1 = call ptr @to_auxiliary_drv(ptr noundef %1) #10, !dbg !2180
  store ptr %call1, ptr %auxdrv, align 8, !dbg !2178
  %2 = load ptr, ptr %auxdrv, align 8, !dbg !2181
  %id_table = getelementptr inbounds %struct.auxiliary_driver, ptr %2, i32 0, i32 7, !dbg !2182
  %3 = load ptr, ptr %id_table, align 8, !dbg !2182
  %4 = load ptr, ptr %auxdev, align 8, !dbg !2183
  %call2 = call ptr @auxiliary_match_id(ptr noundef %3, ptr noundef %4) #10, !dbg !2184
  %tobool = icmp ne ptr %call2, null, !dbg !2185
  %lnot = xor i1 %tobool, true, !dbg !2185
  %lnot3 = xor i1 %lnot, true, !dbg !2186
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2186
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxdrv) #8, !dbg !2187
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxdev) #8, !dbg !2187
  ret i32 %lnot.ext, !dbg !2188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @auxiliary_uevent(ptr noundef %dev, ptr noundef %env) #0 align 16 !dbg !2189 {
entry:
  %dev.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2191, metadata !DIExpression()), !dbg !2195
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !2192, metadata !DIExpression()), !dbg !2196
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8, !dbg !2197
  call void @llvm.dbg.declare(metadata ptr %name, metadata !2193, metadata !DIExpression()), !dbg !2198
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !2197
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2194, metadata !DIExpression()), !dbg !2199
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2200
  %call = call ptr @dev_name(ptr noundef %0) #10, !dbg !2201
  store ptr %call, ptr %name, align 8, !dbg !2202
  %1 = load ptr, ptr %name, align 8, !dbg !2203
  %call1 = call ptr @strrchr(ptr noundef %1, i32 noundef 46) #10, !dbg !2204
  store ptr %call1, ptr %p, align 8, !dbg !2205
  %2 = load ptr, ptr %env.addr, align 8, !dbg !2206
  %3 = load ptr, ptr %p, align 8, !dbg !2207
  %4 = load ptr, ptr %name, align 8, !dbg !2208
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64, !dbg !2209
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64, !dbg !2209
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2209
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !2210
  %5 = load ptr, ptr %name, align 8, !dbg !2211
  %call2 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %2, ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef %conv, ptr noundef %5) #10, !dbg !2212
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !2213
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8, !dbg !2213
  ret i32 %call2, !dbg !2214
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @auxiliary_bus_probe(ptr noundef %dev) #0 align 16 !dbg !2215 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %auxdrv = alloca ptr, align 8
  %auxdev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2217, metadata !DIExpression()), !dbg !2221
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxdrv) #8, !dbg !2222
  call void @llvm.dbg.declare(metadata ptr %auxdrv, metadata !2218, metadata !DIExpression()), !dbg !2223
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2224
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !2225
  %1 = load ptr, ptr %driver, align 8, !dbg !2225
  %call = call ptr @to_auxiliary_drv(ptr noundef %1) #10, !dbg !2226
  store ptr %call, ptr %auxdrv, align 8, !dbg !2223
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxdev) #8, !dbg !2227
  call void @llvm.dbg.declare(metadata ptr %auxdev, metadata !2219, metadata !DIExpression()), !dbg !2228
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2229
  %call1 = call ptr @to_auxiliary_dev(ptr noundef %2) #10, !dbg !2230
  store ptr %call1, ptr %auxdev, align 8, !dbg !2228
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2220, metadata !DIExpression()), !dbg !2232
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2233
  %call2 = call i32 @dev_pm_domain_attach(ptr noundef %3, i1 noundef zeroext true) #10, !dbg !2234
  store i32 %call2, ptr %ret, align 4, !dbg !2235
  %4 = load i32, ptr %ret, align 4, !dbg !2236
  %tobool = icmp ne i32 %4, 0, !dbg !2236
  br i1 %tobool, label %if.then, label %if.end, !dbg !2238

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2239

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2242

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2242

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2239
  %6 = load i32, ptr %ret, align 4, !dbg !2239
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef @.str.12, i32 noundef %6) #9, !dbg !2239
  %7 = load i32, ptr %ret, align 4, !dbg !2244
  store i32 %7, ptr %retval, align 4, !dbg !2245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2245

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %auxdrv, align 8, !dbg !2246
  %probe = getelementptr inbounds %struct.auxiliary_driver, ptr %8, i32 0, i32 0, !dbg !2247
  %9 = load ptr, ptr %probe, align 8, !dbg !2247
  %10 = load ptr, ptr %auxdev, align 8, !dbg !2248
  %11 = load ptr, ptr %auxdrv, align 8, !dbg !2249
  %id_table = getelementptr inbounds %struct.auxiliary_driver, ptr %11, i32 0, i32 7, !dbg !2250
  %12 = load ptr, ptr %id_table, align 8, !dbg !2250
  %13 = load ptr, ptr %auxdev, align 8, !dbg !2251
  %call3 = call ptr @auxiliary_match_id(ptr noundef %12, ptr noundef %13) #10, !dbg !2252
  %call4 = call i32 %9(ptr noundef %10, ptr noundef %call3) #10, !dbg !2246
  store i32 %call4, ptr %ret, align 4, !dbg !2253
  %14 = load i32, ptr %ret, align 4, !dbg !2254
  %tobool5 = icmp ne i32 %14, 0, !dbg !2254
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2256

if.then6:                                         ; preds = %if.end
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2257
  call void @dev_pm_domain_detach(ptr noundef %15, i1 noundef zeroext true) #10, !dbg !2258
  br label %if.end7, !dbg !2258

if.end7:                                          ; preds = %if.then6, %if.end
  %16 = load i32, ptr %ret, align 4, !dbg !2259
  store i32 %16, ptr %retval, align 4, !dbg !2260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2260

cleanup:                                          ; preds = %if.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !2261
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxdev) #8, !dbg !2261
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxdrv) #8, !dbg !2261
  %17 = load i32, ptr %retval, align 4, !dbg !2261
  ret i32 %17, !dbg !2261
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @auxiliary_bus_remove(ptr noundef %dev) #0 align 16 !dbg !2262 {
entry:
  %dev.addr = alloca ptr, align 8
  %auxdrv = alloca ptr, align 8
  %auxdev = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2264, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxdrv) #8, !dbg !2268
  call void @llvm.dbg.declare(metadata ptr %auxdrv, metadata !2265, metadata !DIExpression()), !dbg !2269
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2270
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !2271
  %1 = load ptr, ptr %driver, align 8, !dbg !2271
  %call = call ptr @to_auxiliary_drv(ptr noundef %1) #10, !dbg !2272
  store ptr %call, ptr %auxdrv, align 8, !dbg !2269
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxdev) #8, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %auxdev, metadata !2266, metadata !DIExpression()), !dbg !2274
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2275
  %call1 = call ptr @to_auxiliary_dev(ptr noundef %2) #10, !dbg !2276
  store ptr %call1, ptr %auxdev, align 8, !dbg !2274
  %3 = load ptr, ptr %auxdrv, align 8, !dbg !2277
  %remove = getelementptr inbounds %struct.auxiliary_driver, ptr %3, i32 0, i32 1, !dbg !2279
  %4 = load ptr, ptr %remove, align 8, !dbg !2279
  %tobool = icmp ne ptr %4, null, !dbg !2277
  br i1 %tobool, label %if.then, label %if.end, !dbg !2280

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %auxdrv, align 8, !dbg !2281
  %remove2 = getelementptr inbounds %struct.auxiliary_driver, ptr %5, i32 0, i32 1, !dbg !2282
  %6 = load ptr, ptr %remove2, align 8, !dbg !2282
  %7 = load ptr, ptr %auxdev, align 8, !dbg !2283
  call void %6(ptr noundef %7) #10, !dbg !2281
  br label %if.end, !dbg !2281

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2284
  call void @dev_pm_domain_detach(ptr noundef %8, i1 noundef zeroext true) #10, !dbg !2285
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxdev) #8, !dbg !2286
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxdrv) #8, !dbg !2286
  ret void, !dbg !2286
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @auxiliary_bus_shutdown(ptr noundef %dev) #0 align 16 !dbg !2287 {
entry:
  %dev.addr = alloca ptr, align 8
  %auxdrv = alloca ptr, align 8
  %auxdev = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxdrv) #8, !dbg !2293
  call void @llvm.dbg.declare(metadata ptr %auxdrv, metadata !2290, metadata !DIExpression()), !dbg !2294
  store ptr null, ptr %auxdrv, align 8, !dbg !2294
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxdev) #8, !dbg !2295
  call void @llvm.dbg.declare(metadata ptr %auxdev, metadata !2291, metadata !DIExpression()), !dbg !2296
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2297
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !2299
  %1 = load ptr, ptr %driver, align 8, !dbg !2299
  %tobool = icmp ne ptr %1, null, !dbg !2297
  br i1 %tobool, label %if.then, label %if.end, !dbg !2300

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2301
  %driver1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !2303
  %3 = load ptr, ptr %driver1, align 8, !dbg !2303
  %call = call ptr @to_auxiliary_drv(ptr noundef %3) #10, !dbg !2304
  store ptr %call, ptr %auxdrv, align 8, !dbg !2305
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2306
  %call2 = call ptr @to_auxiliary_dev(ptr noundef %4) #10, !dbg !2307
  store ptr %call2, ptr %auxdev, align 8, !dbg !2308
  br label %if.end, !dbg !2309

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %auxdrv, align 8, !dbg !2310
  %tobool3 = icmp ne ptr %5, null, !dbg !2310
  br i1 %tobool3, label %land.lhs.true, label %if.end7, !dbg !2312

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %auxdrv, align 8, !dbg !2313
  %shutdown = getelementptr inbounds %struct.auxiliary_driver, ptr %6, i32 0, i32 2, !dbg !2314
  %7 = load ptr, ptr %shutdown, align 8, !dbg !2314
  %tobool4 = icmp ne ptr %7, null, !dbg !2313
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !2315

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %auxdrv, align 8, !dbg !2316
  %shutdown6 = getelementptr inbounds %struct.auxiliary_driver, ptr %8, i32 0, i32 2, !dbg !2317
  %9 = load ptr, ptr %shutdown6, align 8, !dbg !2317
  %10 = load ptr, ptr %auxdev, align 8, !dbg !2318
  call void %9(ptr noundef %10) #10, !dbg !2316
  br label %if.end7, !dbg !2316

if.end7:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxdev) #8, !dbg !2319
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxdrv) #8, !dbg !2319
  ret void, !dbg !2319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_auxiliary_drv(ptr noundef %drv) #5 align 16 !dbg !2320 {
entry:
  %drv.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2324, metadata !DIExpression()), !dbg !2327
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2325, metadata !DIExpression()), !dbg !2328
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2328
  store ptr %0, ptr %__mptr, align 8, !dbg !2328
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2328
  %add.ptr = getelementptr i8, ptr %1, i64 -48, !dbg !2328
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !2329
  %2 = load ptr, ptr %tmp, align 8, !dbg !2328
  ret ptr %2, !dbg !2330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @auxiliary_match_id(ptr noundef %id, ptr noundef %auxdev) #0 align 16 !dbg !2331 {
entry:
  %retval = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %auxdev.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %match_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2337, metadata !DIExpression()), !dbg !2344
  store ptr %auxdev, ptr %auxdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %auxdev.addr, metadata !2338, metadata !DIExpression()), !dbg !2345
  br label %for.cond, !dbg !2346

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %id.addr, align 8, !dbg !2347
  %name = getelementptr inbounds %struct.auxiliary_device_id, ptr %0, i32 0, i32 0, !dbg !2348
  %arrayidx = getelementptr [32 x i8], ptr %name, i64 0, i64 0, !dbg !2347
  %1 = load i8, ptr %arrayidx, align 8, !dbg !2347
  %tobool = icmp ne i8 %1, 0, !dbg !2349
  br i1 %tobool, label %for.body, label %for.end, !dbg !2349

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !2350
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2339, metadata !DIExpression()), !dbg !2351
  %2 = load ptr, ptr %auxdev.addr, align 8, !dbg !2352
  %dev = getelementptr inbounds %struct.auxiliary_device, ptr %2, i32 0, i32 0, !dbg !2353
  %call = call ptr @dev_name(ptr noundef %dev) #10, !dbg !2354
  %call1 = call ptr @strrchr(ptr noundef %call, i32 noundef 46) #10, !dbg !2355
  store ptr %call1, ptr %p, align 8, !dbg !2351
  call void @llvm.lifetime.start.p0(i64 4, ptr %match_size) #8, !dbg !2356
  call void @llvm.dbg.declare(metadata ptr %match_size, metadata !2343, metadata !DIExpression()), !dbg !2357
  %3 = load ptr, ptr %p, align 8, !dbg !2358
  %tobool2 = icmp ne ptr %3, null, !dbg !2358
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2360

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2361

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %p, align 8, !dbg !2362
  %5 = load ptr, ptr %auxdev.addr, align 8, !dbg !2363
  %dev3 = getelementptr inbounds %struct.auxiliary_device, ptr %5, i32 0, i32 0, !dbg !2364
  %call4 = call ptr @dev_name(ptr noundef %dev3) #10, !dbg !2365
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64, !dbg !2366
  %sub.ptr.rhs.cast = ptrtoint ptr %call4 to i64, !dbg !2366
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2366
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !2362
  store i32 %conv, ptr %match_size, align 4, !dbg !2367
  %6 = load ptr, ptr %id.addr, align 8, !dbg !2368
  %name5 = getelementptr inbounds %struct.auxiliary_device_id, ptr %6, i32 0, i32 0, !dbg !2370
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name5, i64 0, i64 0, !dbg !2368
  %call6 = call i64 @strlen(ptr noundef %arraydecay) #10, !dbg !2371
  %7 = load i32, ptr %match_size, align 4, !dbg !2372
  %conv7 = sext i32 %7 to i64, !dbg !2372
  %cmp = icmp eq i64 %call6, %conv7, !dbg !2373
  br i1 %cmp, label %land.lhs.true, label %if.end17, !dbg !2374

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %auxdev.addr, align 8, !dbg !2375
  %dev9 = getelementptr inbounds %struct.auxiliary_device, ptr %8, i32 0, i32 0, !dbg !2376
  %call10 = call ptr @dev_name(ptr noundef %dev9) #10, !dbg !2377
  %9 = load ptr, ptr %id.addr, align 8, !dbg !2378
  %name11 = getelementptr inbounds %struct.auxiliary_device_id, ptr %9, i32 0, i32 0, !dbg !2379
  %arraydecay12 = getelementptr inbounds [32 x i8], ptr %name11, i64 0, i64 0, !dbg !2378
  %10 = load i32, ptr %match_size, align 4, !dbg !2380
  %conv13 = sext i32 %10 to i64, !dbg !2380
  %call14 = call i32 @strncmp(ptr noundef %call10, ptr noundef %arraydecay12, i64 noundef %conv13) #10, !dbg !2381
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2381
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !2382

if.then16:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %id.addr, align 8, !dbg !2383
  store ptr %11, ptr %retval, align 8, !dbg !2384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2384

if.end17:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2385
  br label %cleanup, !dbg !2385

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %match_size) #8, !dbg !2385
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !2385
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2386

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %12 = load ptr, ptr %id.addr, align 8, !dbg !2387
  %incdec.ptr = getelementptr %struct.auxiliary_device_id, ptr %12, i32 1, !dbg !2387
  store ptr %incdec.ptr, ptr %id.addr, align 8, !dbg !2387
  br label %for.cond, !dbg !2388, !llvm.loop !2389

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2393
  br label %return, !dbg !2393

return:                                           ; preds = %for.end, %cleanup
  %13 = load ptr, ptr %retval, align 8, !dbg !2394
  ret ptr %13, !dbg !2394

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2395 dso_local ptr @strrchr(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !2399 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2405
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !2407
  %1 = load ptr, ptr %init_name, align 8, !dbg !2407
  %tobool = icmp ne ptr %1, null, !dbg !2405
  br i1 %tobool, label %if.then, label %if.end, !dbg !2408

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2409
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !2410
  %3 = load ptr, ptr %init_name1, align 8, !dbg !2410
  store ptr %3, ptr %retval, align 8, !dbg !2411
  br label %return, !dbg !2411

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2412
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !2413
  %call = call ptr @kobject_name(ptr noundef %kobj) #10, !dbg !2414
  store ptr %call, ptr %retval, align 8, !dbg !2415
  br label %return, !dbg !2415

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !2416
  ret ptr %5, !dbg !2416
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2417 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2420 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !2423 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2425, metadata !DIExpression()), !dbg !2426
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2427
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !2428
  %1 = load ptr, ptr %name, align 8, !dbg !2428
  ret ptr %1, !dbg !2429
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2430 dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2433 dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2437 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2438 dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pm_generic_resume(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone }

!llvm.dbg.cu = !{!25}
!llvm.module.flags = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!llvm.ident = !{!1863}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/base/auxiliary.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90217837c792af96eabda25bd559a0f0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 50)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 22)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 43)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "auxiliary_bus_type", scope: !25, file: !2, line: 247, type: !831, isLocal: true, isDefinition: true)
!25 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.auxiliary.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/auxiliary\22 -D KBUILD_BASENAME=\22auxiliary\22 -D KBUILD_MODNAME=\22auxiliary\22 -D __KBUILD_MODNAME=kmod_auxiliary -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/auxiliary.ll drivers/base/auxiliary.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !26, retainedTypes: !111, globals: !1796, splitDebugInlining: false, nameTableKind: None)
!26 = !{!27, !34, !41, !47, !54, !59, !67, !75, !81, !90, !95, !100, !106}
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !28, line: 26, baseType: !29, size: 32, elements: !30)
!28 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !35, line: 312, baseType: !29, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!38 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!39 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!40 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !42, line: 45, baseType: !29, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!43 = !{!44, !45, !46}
!44 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!45 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!46 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !48, line: 487, baseType: !29, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!51 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!52 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!53 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !55, line: 65, baseType: !29, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!58 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !60, line: 620, baseType: !29, size: 32, elements: !61)
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
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !76, line: 30, baseType: !29, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!79 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!80 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !48, line: 547, baseType: !29, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89}
!83 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!84 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!85 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!86 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!87 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!88 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!89 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !48, line: 564, baseType: !29, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!93 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!94 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !48, line: 577, baseType: !29, size: 32, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!98 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!99 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !48, line: 503, baseType: !29, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!103 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!104 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!105 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 10, baseType: !29, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "false", value: 0)
!110 = !DIEnumerator(name: "true", value: 1)
!111 = !{!112, !113, !115, !68, !123}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !114, line: 154, baseType: !29)
!114 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "auxiliary_driver", file: !117, line: 180, size: 1600, elements: !118)
!117 = !DIFile(filename: "./include/linux/auxiliary_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19790f70edfd66eb00062f4be2091025")
!118 = !{!119, !1780, !1784, !1785, !1789, !1793, !1794, !1795}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !116, file: !117, line: 181, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!68, !123, !1774}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "auxiliary_device", file: !117, line: 138, size: 5952, elements: !125)
!125 = !{!126, !1772, !1773}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !124, file: !117, line: 139, baseType: !127, size: 5824)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !48, line: 705, size: 5824, elements: !128)
!128 = !{!129, !794, !796, !1338, !1339, !1354, !1355, !1356, !1357, !1358, !1359, !1366, !1536, !1549, !1559, !1563, !1565, !1566, !1567, !1571, !1578, !1579, !1582, !1585, !1711, !1712, !1713, !1716, !1717, !1718, !1719, !1749, !1750, !1751, !1754, !1757, !1766, !1767, !1768, !1769, !1770, !1771}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !127, file: !48, line: 706, baseType: !130, size: 512)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !131, line: 64, size: 512, elements: !132)
!131 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!132 = !{!133, !135, !141, !143, !232, !665, !779, !789, !790, !791, !792, !793}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !131, line: 65, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !130, file: !131, line: 66, baseType: !136, size: 128, offset: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !114, line: 190, size: 128, elements: !137)
!137 = !{!138, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !114, line: 191, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !136, file: !114, line: 191, baseType: !139, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !130, file: !131, line: 67, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !130, file: !131, line: 68, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !131, line: 168, size: 768, elements: !146)
!146 = !{!147, !148, !191, !192}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !145, file: !131, line: 169, baseType: !136, size: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !145, file: !131, line: 170, baseType: !149, size: 32, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !150, line: 29, baseType: !151)
!150 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !150, line: 17, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !150, line: 18, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !150, line: 18, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !154, file: !150, line: 19, baseType: !157, size: 32)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !158, line: 14, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !157, file: !158, line: 15, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !162, line: 44, baseType: !163)
!162 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !162, line: 14, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !162, line: 15, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !162, line: 15, size: 32, elements: !167)
!167 = !{!168, !173, !183}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !166, file: !162, line: 16, baseType: !169, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !114, line: 174, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 172, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !170, file: !114, line: 173, baseType: !68, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !162, line: 24, baseType: !174, size: 16)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !162, line: 24, size: 16, elements: !175)
!175 = !{!176, !182}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !174, file: !162, line: 25, baseType: !177, size: 8)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !178, line: 17, baseType: !179)
!178 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !180, line: 21, baseType: !181)
!180 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!181 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !174, file: !162, line: 26, baseType: !177, size: 8, offset: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !162, line: 28, baseType: !184, size: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !162, line: 28, size: 32, elements: !185)
!185 = !{!186, !190}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !184, file: !162, line: 29, baseType: !187, size: 16)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !178, line: 19, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !180, line: 24, baseType: !189)
!189 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !184, file: !162, line: 30, baseType: !187, size: 16, offset: 16)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !145, file: !131, line: 171, baseType: !130, size: 512, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !145, file: !131, line: 172, baseType: !193, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !131, line: 133, size: 192, elements: !196)
!196 = !{!197, !204, !209}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !195, file: !131, line: 134, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!68, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !131, line: 135, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!134, !202}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !195, file: !131, line: 136, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!68, !202, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !131, line: 125, size: 20736, elements: !216)
!216 = !{!217, !222, !226, !227, !231}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !215, file: !131, line: 126, baseType: !218, size: 192)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 192, elements: !220)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!220 = !{!221}
!221 = !DISubrange(count: 3)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !215, file: !131, line: 127, baseType: !223, size: 4096, offset: 192)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 4096, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !215, file: !131, line: 128, baseType: !68, size: 32, offset: 4288)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !215, file: !131, line: 129, baseType: !228, size: 16384, offset: 4320)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !215, file: !131, line: 130, baseType: !68, size: 32, offset: 20704)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !130, file: !131, line: 69, baseType: !233, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !131, line: 116, size: 384, elements: !236)
!236 = !{!237, !241, !270, !612, !643, !647}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !235, file: !131, line: 117, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !142}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !235, file: !131, line: 118, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !245, line: 254, size: 128, elements: !246)
!245 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!246 = !{!247, !262}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !244, file: !245, line: 255, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !142, !256, !219}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !114, line: 66, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !253, line: 73, baseType: !254)
!253 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !253, line: 15, baseType: !255)
!255 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !245, line: 30, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !245, line: 31, baseType: !134, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !257, file: !245, line: 32, baseType: !261, size: 16, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !114, line: 24, baseType: !189)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !244, file: !245, line: 256, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!251, !142, !256, !134, !266}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 61, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !253, line: 72, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !253, line: 16, baseType: !269)
!269 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !235, file: !131, line: 119, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !245, line: 84, size: 320, elements: !275)
!275 = !{!276, !277, !281, !608, !610}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !245, line: 85, baseType: !134, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !274, file: !245, line: 86, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!261, !142, !256, !68}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !274, file: !245, line: 88, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!261, !142, !285, !68}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !245, line: 175, size: 512, elements: !287)
!287 = !{!288, !289, !290, !291, !298, !308, !309}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !286, file: !245, line: 176, baseType: !257, size: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !286, file: !245, line: 177, baseType: !266, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !286, file: !245, line: 178, baseType: !112, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !286, file: !245, line: 179, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !297, line: 32, flags: DIFlagFwdDecl)
!297 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!298 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !286, file: !245, line: 180, baseType: !299, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!251, !302, !142, !285, !219, !305, !266}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !304, line: 537, flags: DIFlagFwdDecl)
!304 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !114, line: 52, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !253, line: 88, baseType: !307)
!307 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !286, file: !245, line: 182, baseType: !299, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !286, file: !245, line: 184, baseType: !310, size: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!68, !302, !142, !285, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !297, line: 625, size: 1344, elements: !315)
!315 = !{!316, !333, !556, !562, !569, !570, !575, !578, !590, !591, !594, !598, !599, !600, !601, !602, !606}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !297, line: 628, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !297, line: 628, size: 128, elements: !318)
!318 = !{!319, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !297, line: 629, baseType: !320, size: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !297, line: 629, size: 128, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !320, file: !297, line: 631, baseType: !269, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !320, file: !297, line: 632, baseType: !269, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !317, file: !297, line: 635, baseType: !325, size: 128, align: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !114, line: 232, size: 128, align: 64, elements: !326)
!326 = !{!327, !329}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !114, line: 233, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !325, file: !114, line: 234, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !328}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !314, file: !297, line: 639, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !297, line: 733, size: 10240, elements: !336)
!336 = !{!337, !552}
!337 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !297, line: 734, baseType: !338, size: 10240)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !297, line: 734, size: 10240, elements: !339)
!339 = !{!340, !344, !358, !362, !363, !364, !365, !366, !367, !375, !376, !377, !386, !387, !396, !397, !398, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !445, !459, !462, !517, !518, !519, !522, !526, !527, !530, !531, !532, !539, !540}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !297, line: 739, baseType: !341, size: 512, align: 512)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !297, line: 739, size: 512, align: 512, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !341, file: !297, line: 747, baseType: !169, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !338, file: !297, line: 750, baseType: !345, size: 128, offset: 512)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !346, line: 218, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!347 = !{!348, !356, !357}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !346, line: 219, baseType: !349, size: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !346, line: 219, size: 32, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !349, file: !346, line: 220, baseType: !149, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !349, file: !346, line: 221, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !346, line: 197, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 197, elements: !355)
!355 = !{}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !345, file: !346, line: 223, baseType: !29, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !345, file: !346, line: 224, baseType: !112, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !338, file: !297, line: 752, baseType: !359, size: 64, offset: 640)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!269, !302, !269, !269, !269, !269}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !338, file: !297, line: 756, baseType: !269, size: 64, offset: 704)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !338, file: !297, line: 757, baseType: !269, size: 64, offset: 768)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !338, file: !297, line: 760, baseType: !269, size: 64, offset: 832)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !338, file: !297, line: 761, baseType: !269, size: 64, offset: 896)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !338, file: !297, line: 763, baseType: !269, size: 64, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !338, file: !297, line: 764, baseType: !368, size: 64, offset: 1024)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !304, line: 299, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 299, size: 64, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !370, file: !304, line: 299, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !374, line: 18, baseType: !269)
!374 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!375 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !338, file: !297, line: 773, baseType: !169, size: 32, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !338, file: !297, line: 785, baseType: !169, size: 32, offset: 1120)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !338, file: !297, line: 795, baseType: !378, size: 64, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !297, line: 726, size: 128, elements: !380)
!380 = !{!381, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !379, file: !297, line: 727, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !178, line: 23, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !180, line: 31, baseType: !384)
!384 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !379, file: !297, line: 728, baseType: !68, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !338, file: !297, line: 801, baseType: !269, size: 64, offset: 1216)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !338, file: !297, line: 804, baseType: !388, size: 64, offset: 1280)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !389, line: 13, baseType: !390)
!389 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !114, line: 181, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 179, size: 64, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !391, file: !114, line: 180, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !178, line: 22, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !180, line: 30, baseType: !307)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !338, file: !297, line: 806, baseType: !68, size: 32, offset: 1344)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !338, file: !297, line: 808, baseType: !149, size: 32, offset: 1376)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !338, file: !297, line: 823, baseType: !399, size: 320, offset: 1408)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !400, line: 48, size: 320, elements: !401)
!400 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!401 = !{!402, !403, !404, !409, !411}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !399, file: !400, line: 49, baseType: !388, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !399, file: !400, line: 55, baseType: !388, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !399, file: !400, line: 57, baseType: !405, size: 32, offset: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !406, line: 15, size: 32, elements: !407)
!406 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !405, file: !406, line: 20, baseType: !169, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !399, file: !400, line: 59, baseType: !410, size: 32, offset: 160)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !158, line: 23, baseType: !157)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !399, file: !400, line: 60, baseType: !136, size: 128, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !338, file: !297, line: 825, baseType: !136, size: 128, offset: 1728)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !338, file: !297, line: 845, baseType: !68, size: 32, offset: 1856)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !338, file: !297, line: 849, baseType: !269, size: 64, offset: 1920)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !338, file: !297, line: 850, baseType: !269, size: 64, offset: 1984)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !338, file: !297, line: 852, baseType: !269, size: 64, offset: 2048)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !338, file: !297, line: 853, baseType: !269, size: 64, offset: 2112)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !338, file: !297, line: 854, baseType: !390, size: 64, offset: 2176)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !338, file: !297, line: 855, baseType: !269, size: 64, offset: 2240)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !338, file: !297, line: 856, baseType: !269, size: 64, offset: 2304)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !338, file: !297, line: 857, baseType: !269, size: 64, offset: 2368)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !338, file: !297, line: 858, baseType: !269, size: 64, offset: 2432)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !338, file: !297, line: 865, baseType: !424, size: 32, offset: 2496)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !425, line: 69, baseType: !426)
!425 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !425, line: 64, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !426, file: !425, line: 65, baseType: !29, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !338, file: !297, line: 867, baseType: !149, size: 32, offset: 2528)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !338, file: !297, line: 869, baseType: !269, size: 64, offset: 2560)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !338, file: !297, line: 869, baseType: !269, size: 64, offset: 2624)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !338, file: !297, line: 869, baseType: !269, size: 64, offset: 2688)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !338, file: !297, line: 869, baseType: !269, size: 64, offset: 2752)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !338, file: !297, line: 870, baseType: !269, size: 64, offset: 2816)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !338, file: !297, line: 870, baseType: !269, size: 64, offset: 2880)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !338, file: !297, line: 870, baseType: !269, size: 64, offset: 2944)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !338, file: !297, line: 871, baseType: !269, size: 64, offset: 3008)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !338, file: !297, line: 871, baseType: !269, size: 64, offset: 3072)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !338, file: !297, line: 871, baseType: !269, size: 64, offset: 3136)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !338, file: !297, line: 871, baseType: !269, size: 64, offset: 3200)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !338, file: !297, line: 873, baseType: !442, size: 3328, offset: 3264)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 3328, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 52)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !338, file: !297, line: 875, baseType: !446, size: 1280, offset: 6592)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 1280, elements: !457)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !448, line: 22, size: 320, elements: !449)
!448 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!449 = !{!450, !451, !452, !453}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !447, file: !448, line: 23, baseType: !410, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !447, file: !448, line: 24, baseType: !394, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !447, file: !448, line: 26, baseType: !136, size: 128, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !447, file: !448, line: 28, baseType: !454, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !178, line: 20, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !180, line: 26, baseType: !68)
!457 = !{!458}
!458 = !DISubrange(count: 4)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !338, file: !297, line: 877, baseType: !460, size: 64, offset: 7872)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !297, line: 877, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !338, file: !297, line: 880, baseType: !463, size: 1088, offset: 7936)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !464, line: 72, baseType: !465)
!464 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 23, size: 1088, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !474, !475, !483, !484, !511, !512, !513}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !465, file: !464, line: 28, baseType: !382, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !465, file: !464, line: 38, baseType: !390, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !465, file: !464, line: 40, baseType: !269, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !465, file: !464, line: 43, baseType: !399, size: 320, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !465, file: !464, line: 44, baseType: !472, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !464, line: 44, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !464, line: 48, baseType: !269, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !465, file: !464, line: 59, baseType: !476, size: 256, offset: 640)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !477, line: 66, size: 256, elements: !478)
!477 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!478 = !{!479, !480, !481, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !476, file: !477, line: 67, baseType: !388, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !476, file: !477, line: 68, baseType: !410, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !476, file: !477, line: 70, baseType: !405, size: 32, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !476, file: !477, line: 72, baseType: !136, size: 128, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !465, file: !464, line: 60, baseType: !112, size: 64, offset: 896)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !465, file: !464, line: 61, baseType: !485, size: 64, offset: 960)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !488, line: 13, size: 1216, elements: !489)
!488 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!489 = !{!490, !491, !492, !493, !494, !495, !496, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !487, file: !488, line: 14, baseType: !112, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !487, file: !488, line: 15, baseType: !269, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !487, file: !488, line: 17, baseType: !269, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !487, file: !488, line: 17, baseType: !269, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !487, file: !488, line: 18, baseType: !269, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !487, file: !488, line: 18, baseType: !269, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !487, file: !488, line: 19, baseType: !497, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !487, file: !488, line: 21, baseType: !255, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !487, file: !488, line: 23, baseType: !255, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !487, file: !488, line: 24, baseType: !255, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !487, file: !488, line: 25, baseType: !255, size: 64, offset: 640)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !487, file: !488, line: 26, baseType: !255, size: 64, offset: 704)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !487, file: !488, line: 27, baseType: !255, size: 64, offset: 768)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !487, file: !488, line: 28, baseType: !255, size: 64, offset: 832)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !487, file: !488, line: 29, baseType: !255, size: 64, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !487, file: !488, line: 30, baseType: !255, size: 64, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !487, file: !488, line: 31, baseType: !255, size: 64, offset: 1024)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !487, file: !488, line: 32, baseType: !255, size: 64, offset: 1088)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !487, file: !488, line: 33, baseType: !255, size: 64, offset: 1152)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !465, file: !464, line: 63, baseType: !169, size: 32, offset: 1024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !465, file: !464, line: 69, baseType: !187, size: 16, offset: 1056)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !465, file: !464, line: 70, baseType: !514, size: 16, offset: 1072)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !178, line: 18, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !180, line: 23, baseType: !516)
!516 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !297, line: 882, baseType: !269, size: 64, offset: 9024)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !338, file: !297, line: 885, baseType: !149, size: 32, offset: 9088)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !338, file: !297, line: 886, baseType: !520, size: 64, offset: 9152)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !297, line: 732, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !338, file: !297, line: 901, baseType: !523, size: 64, offset: 9216)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !525, line: 18, flags: DIFlagFwdDecl)
!525 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !338, file: !297, line: 904, baseType: !302, size: 64, offset: 9280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !338, file: !297, line: 906, baseType: !528, size: 64, offset: 9344)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !297, line: 906, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !338, file: !297, line: 930, baseType: !169, size: 32, offset: 9408)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !338, file: !297, line: 933, baseType: !169, size: 32, offset: 9440)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !338, file: !297, line: 935, baseType: !533, size: 64, offset: 9472)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !534, line: 103, size: 64, elements: !535)
!534 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !533, file: !534, line: 104, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !534, line: 101, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !338, file: !297, line: 940, baseType: !388, size: 64, offset: 9536)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !338, file: !297, line: 942, baseType: !541, size: 256, offset: 9600)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !542, line: 98, size: 256, elements: !543)
!542 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!543 = !{!544, !545, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !541, file: !542, line: 99, baseType: !388, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !541, file: !542, line: 100, baseType: !136, size: 128, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !541, file: !542, line: 101, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !542, line: 21, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !335, file: !297, line: 986, baseType: !553, offset: 10240)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: -1)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !314, file: !297, line: 640, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !304, line: 297, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !304, line: 297, size: 64, elements: !559)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !558, file: !304, line: 297, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !374, line: 19, baseType: !269)
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !297, line: 646, baseType: !563, size: 64, offset: 256)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !297, line: 646, size: 64, elements: !564)
!564 = !{!565, !568}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !563, file: !297, line: 647, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !297, line: 542, baseType: !269)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !563, file: !297, line: 648, baseType: !567, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !314, file: !297, line: 666, baseType: !68, size: 32, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !314, file: !297, line: 667, baseType: !571, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !297, line: 579, size: 320, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !572, file: !297, line: 580, baseType: !399, size: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !314, file: !297, line: 670, baseType: !576, size: 8, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !114, line: 35, baseType: !577)
!577 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !314, file: !297, line: 681, baseType: !579, size: 256, offset: 512)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !297, line: 678, size: 256, elements: !580)
!580 = !{!581, !589}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !579, file: !297, line: 679, baseType: !582, size: 192, align: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !583, line: 5, size: 192, align: 64, elements: !584)
!583 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!584 = !{!585, !586, !588}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !582, file: !583, line: 6, baseType: !269, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !582, file: !583, line: 7, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !582, file: !583, line: 8, baseType: !587, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !579, file: !297, line: 680, baseType: !269, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !314, file: !297, line: 689, baseType: !136, size: 128, offset: 768)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !314, file: !297, line: 691, baseType: !592, size: 64, offset: 896)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !297, line: 691, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !314, file: !297, line: 694, baseType: !595, size: 64, offset: 960)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !297, line: 694, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !314, file: !297, line: 697, baseType: !269, size: 64, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !314, file: !297, line: 699, baseType: !302, size: 64, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !314, file: !297, line: 700, baseType: !112, size: 64, offset: 1152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !314, file: !297, line: 711, baseType: !388, size: 64, offset: 1216)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !314, file: !297, line: 717, baseType: !603, size: 64, offset: 1280)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !605, line: 54, flags: DIFlagFwdDecl)
!605 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !314, file: !297, line: 722, baseType: !607, offset: 1344)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !297, line: 570, elements: !355)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !274, file: !245, line: 90, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !274, file: !245, line: 91, baseType: !611, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !235, file: !131, line: 120, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!616, !202}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !28, line: 39, size: 384, elements: !619)
!619 = !{!620, !621, !625, !629, !635, !639}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !28, line: 40, baseType: !27, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !618, file: !28, line: 41, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!576}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !618, file: !28, line: 42, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!112}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !618, file: !28, line: 43, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!497, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !28, line: 19, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !618, file: !28, line: 44, baseType: !636, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!497}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !618, file: !28, line: 45, baseType: !640, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !112}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !235, file: !131, line: 121, baseType: !644, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!497, !202}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !235, file: !131, line: 122, baseType: !648, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !202, !651, !658}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !525, line: 23, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 21, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !653, file: !525, line: 22, baseType: !656, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !114, line: 37, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !253, line: 49, baseType: !29)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !525, line: 28, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 26, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !660, file: !525, line: 27, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !114, line: 38, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !253, line: 50, baseType: !29)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !130, file: !131, line: 70, baseType: !666, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !668, line: 190, size: 1152, elements: !669)
!668 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !771, !772, !773, !774, !775, !778}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !667, file: !668, line: 191, baseType: !169, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !667, file: !668, line: 192, baseType: !169, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !667, file: !668, line: 202, baseType: !666, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !667, file: !668, line: 203, baseType: !134, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !667, file: !668, line: 205, baseType: !582, size: 192, align: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !667, file: !668, line: 207, baseType: !497, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !667, file: !668, line: 208, baseType: !29, size: 32, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !668, line: 209, baseType: !678, size: 256, offset: 512)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !668, line: 209, size: 256, elements: !679)
!679 = !{!680, !692, !696}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !678, file: !668, line: 210, baseType: !681, size: 256)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !668, line: 153, size: 256, elements: !682)
!682 = !{!683, !684, !688, !691}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !681, file: !668, line: 154, baseType: !269, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !681, file: !668, line: 156, baseType: !685, size: 64, offset: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !583, line: 12, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !685, file: !583, line: 13, baseType: !587, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !681, file: !668, line: 162, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !668, line: 162, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !681, file: !668, line: 167, baseType: !269, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !678, file: !668, line: 211, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !668, line: 170, size: 64, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !693, file: !668, line: 171, baseType: !666, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !678, file: !668, line: 212, baseType: !697, size: 256)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !668, line: 174, size: 256, elements: !698)
!698 = !{!699, !766, !769, !770}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !697, file: !668, line: 175, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !668, line: 271, size: 768, elements: !703)
!703 = !{!704, !726, !730, !734, !739, !743, !747, !751, !752, !753, !754, !762}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !702, file: !668, line: 276, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!68, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !668, line: 251, size: 1216, elements: !710)
!710 = !{!711, !712, !713, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !709, file: !668, line: 253, baseType: !666, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !709, file: !668, line: 254, baseType: !302, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !709, file: !668, line: 255, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !605, line: 66, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !709, file: !668, line: 256, baseType: !112, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !709, file: !668, line: 259, baseType: !476, size: 256, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !709, file: !668, line: 260, baseType: !476, size: 256, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !709, file: !668, line: 261, baseType: !68, size: 32, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !709, file: !668, line: 262, baseType: !136, size: 128, offset: 832)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !709, file: !668, line: 263, baseType: !219, size: 64, offset: 960)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !709, file: !668, line: 265, baseType: !266, size: 64, offset: 1024)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !709, file: !668, line: 266, baseType: !576, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !709, file: !668, line: 267, baseType: !576, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !709, file: !668, line: 268, baseType: !595, size: 64, offset: 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !702, file: !668, line: 277, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !708}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !702, file: !668, line: 290, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!68, !714, !112}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !702, file: !668, line: 292, baseType: !735, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!112, !714, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !702, file: !668, line: 293, baseType: !740, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!112, !714, !112, !738}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !702, file: !668, line: 294, baseType: !744, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !714, !112}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !702, file: !668, line: 296, baseType: !748, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!251, !708, !219, !266, !305}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !702, file: !668, line: 306, baseType: !266, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !702, file: !668, line: 313, baseType: !576, size: 8, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !702, file: !668, line: 314, baseType: !748, size: 64, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !702, file: !668, line: 317, baseType: !755, size: 64, offset: 640)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!758, !708, !760}
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !759, line: 59, baseType: !29)
!759 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !668, line: 31, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !702, file: !668, line: 320, baseType: !763, size: 64, offset: 704)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!68, !708, !313}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !697, file: !668, line: 176, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !668, line: 35, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !697, file: !668, line: 177, baseType: !305, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !697, file: !668, line: 178, baseType: !666, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !667, file: !668, line: 215, baseType: !112, size: 64, offset: 768)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !667, file: !668, line: 221, baseType: !382, size: 64, offset: 832)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !668, line: 223, baseType: !189, size: 16, offset: 896)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !667, file: !668, line: 224, baseType: !261, size: 16, offset: 912)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !667, file: !668, line: 225, baseType: !776, size: 64, offset: 960)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !668, line: 36, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !667, file: !668, line: 227, baseType: !325, size: 128, align: 64, offset: 1024)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !130, file: !131, line: 71, baseType: !780, size: 32, offset: 448)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !781, line: 19, size: 32, elements: !782)
!781 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !780, file: !781, line: 20, baseType: !784, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !785, line: 113, baseType: !786)
!785 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !785, line: 111, size: 32, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !786, file: !785, line: 112, baseType: !169, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !130, file: !131, line: 73, baseType: !29, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !130, file: !131, line: 74, baseType: !29, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !130, file: !131, line: 75, baseType: !29, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !130, file: !131, line: 76, baseType: !29, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !130, file: !131, line: 77, baseType: !29, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !127, file: !48, line: 707, baseType: !795, size: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !127, file: !48, line: 709, baseType: !797, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !799, line: 108, size: 1728, elements: !800)
!799 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!800 = !{!801, !818, !819, !820, !821, !822, !823, !1335, !1336, !1337}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !798, file: !799, line: 109, baseType: !802, size: 320, align: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !803, line: 18, size: 320, align: 64, elements: !804)
!803 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!804 = !{!805, !806, !807, !817}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !802, file: !803, line: 19, baseType: !149, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !802, file: !803, line: 20, baseType: !136, size: 128, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !802, file: !803, line: 21, baseType: !808, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !803, line: 37, size: 256, elements: !813)
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !812, file: !803, line: 38, baseType: !112, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !812, file: !803, line: 39, baseType: !136, size: 128, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !812, file: !803, line: 40, baseType: !780, size: 32, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !802, file: !803, line: 22, baseType: !808, size: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !798, file: !799, line: 110, baseType: !812, size: 256, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !798, file: !799, line: 111, baseType: !812, size: 256, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !798, file: !799, line: 112, baseType: !812, size: 256, offset: 832)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !798, file: !799, line: 113, baseType: !812, size: 256, offset: 1088)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !798, file: !799, line: 114, baseType: !136, size: 128, offset: 1344)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !798, file: !799, line: 115, baseType: !824, size: 64, offset: 1472)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !42, line: 96, size: 1152, elements: !826)
!826 = !{!827, !828, !906, !1284, !1285, !1286, !1287, !1303, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !825, file: !42, line: 97, baseType: !134, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !825, file: !42, line: 98, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !832, line: 80, size: 1344, elements: !833)
!832 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!833 = !{!834, !835, !836, !837, !838, !839, !843, !849, !853, !857, !858, !859, !860, !861, !869, !870, !871, !872, !873, !901, !905}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !831, file: !832, line: 81, baseType: !134, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !831, file: !832, line: 82, baseType: !134, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !831, file: !832, line: 83, baseType: !271, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !831, file: !832, line: 84, baseType: !271, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !831, file: !832, line: 85, baseType: !271, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !831, file: !832, line: 87, baseType: !840, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!68, !795, !824}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !831, file: !832, line: 88, baseType: !844, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!68, !847, !214}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !831, file: !832, line: 89, baseType: !850, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!68, !795}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !831, file: !832, line: 90, baseType: !854, size: 64, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !795}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !831, file: !832, line: 91, baseType: !854, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !831, file: !832, line: 92, baseType: !854, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !831, file: !832, line: 94, baseType: !850, size: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !831, file: !832, line: 95, baseType: !850, size: 64, offset: 768)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !831, file: !832, line: 97, baseType: !862, size: 64, offset: 832)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!68, !795, !865}
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !60, line: 60, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !60, line: 58, size: 32, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !866, file: !60, line: 59, baseType: !68, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !831, file: !832, line: 98, baseType: !850, size: 64, offset: 896)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !831, file: !832, line: 100, baseType: !850, size: 64, offset: 960)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !831, file: !832, line: 102, baseType: !850, size: 64, offset: 1024)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !831, file: !832, line: 103, baseType: !854, size: 64, offset: 1088)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !831, file: !832, line: 105, baseType: !874, size: 64, offset: 1152)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !60, line: 286, size: 1472, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !876, file: !60, line: 287, baseType: !850, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !876, file: !60, line: 288, baseType: !854, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !876, file: !60, line: 289, baseType: !850, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !876, file: !60, line: 290, baseType: !850, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !876, file: !60, line: 291, baseType: !850, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !876, file: !60, line: 292, baseType: !850, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !876, file: !60, line: 293, baseType: !850, size: 64, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !876, file: !60, line: 294, baseType: !850, size: 64, offset: 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !876, file: !60, line: 295, baseType: !850, size: 64, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !876, file: !60, line: 296, baseType: !850, size: 64, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !876, file: !60, line: 297, baseType: !850, size: 64, offset: 640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !876, file: !60, line: 298, baseType: !850, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !876, file: !60, line: 299, baseType: !850, size: 64, offset: 768)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !876, file: !60, line: 300, baseType: !850, size: 64, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !876, file: !60, line: 301, baseType: !850, size: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !876, file: !60, line: 302, baseType: !850, size: 64, offset: 960)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !876, file: !60, line: 303, baseType: !850, size: 64, offset: 1024)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !876, file: !60, line: 304, baseType: !850, size: 64, offset: 1088)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !876, file: !60, line: 305, baseType: !850, size: 64, offset: 1152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !876, file: !60, line: 306, baseType: !850, size: 64, offset: 1216)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !876, file: !60, line: 307, baseType: !850, size: 64, offset: 1280)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !876, file: !60, line: 308, baseType: !850, size: 64, offset: 1344)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !876, file: !60, line: 309, baseType: !850, size: 64, offset: 1408)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !831, file: !832, line: 107, baseType: !902, size: 64, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !832, line: 107, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !831, file: !832, line: 109, baseType: !576, size: 8, offset: 1280)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !825, file: !42, line: 100, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !35, line: 402, size: 9216, align: 512, elements: !909)
!909 = !{!910, !911, !912, !916, !937, !963, !964, !965, !966, !970, !973, !974, !975, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1038, !1042, !1062, !1080, !1081, !1082, !1083, !1092, !1116, !1117, !1120, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1134, !1135, !1242, !1250, !1251, !1252, !1254, !1258, !1259, !1263, !1264, !1265, !1266, !1268, !1269, !1270, !1277, !1278, !1279, !1283}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !908, file: !35, line: 403, baseType: !34, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !908, file: !35, line: 406, baseType: !136, size: 128, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !908, file: !35, line: 409, baseType: !913, size: 448, offset: 192)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 56)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !908, file: !35, line: 417, baseType: !917, size: 768, offset: 640)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !35, line: 45, size: 768, elements: !918)
!918 = !{!919, !920, !921, !922, !925}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !917, file: !35, line: 46, baseType: !130, size: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !917, file: !35, line: 47, baseType: !907, size: 64, offset: 512)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !917, file: !35, line: 48, baseType: !142, size: 64, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !917, file: !35, line: 49, baseType: !923, size: 64, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !35, line: 49, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !917, file: !35, line: 50, baseType: !926, size: 64, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !928, line: 26, size: 256, elements: !929)
!928 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !927, file: !928, line: 27, baseType: !29, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !927, file: !928, line: 28, baseType: !932, size: 192, offset: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !933, line: 43, size: 192, elements: !934)
!933 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !932, file: !933, line: 44, baseType: !410, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !932, file: !933, line: 45, baseType: !136, size: 128, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !908, file: !35, line: 418, baseType: !938, size: 64, offset: 1408)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !35, line: 53, size: 448, elements: !940)
!940 = !{!941, !942, !947, !951, !955, !959}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !939, file: !35, line: 54, baseType: !257, size: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !939, file: !35, line: 55, baseType: !943, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!251, !938, !946, !219}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !939, file: !35, line: 57, baseType: !948, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!251, !938, !946, !134, !266}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !939, file: !35, line: 59, baseType: !952, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !907, !134}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !939, file: !35, line: 60, baseType: !956, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!68, !907}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !939, file: !35, line: 61, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !907}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !908, file: !35, line: 419, baseType: !134, size: 64, offset: 1472)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !908, file: !35, line: 420, baseType: !134, size: 64, offset: 1536)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !908, file: !35, line: 421, baseType: !142, size: 64, offset: 1600)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !908, file: !35, line: 424, baseType: !967, size: 64, offset: 1664)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !35, line: 424, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !908, file: !35, line: 425, baseType: !971, size: 64, offset: 1728)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !908, file: !35, line: 426, baseType: !29, size: 32, offset: 1792)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !908, file: !35, line: 435, baseType: !476, size: 256, offset: 1856)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !908, file: !35, line: 437, baseType: !976, size: 64, offset: 2112)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !978, line: 69, size: 320, elements: !979)
!978 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!979 = !{!980, !981, !982, !999, !1001, !1005, !1006}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !977, file: !978, line: 70, baseType: !134, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !977, file: !978, line: 71, baseType: !907, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !977, file: !978, line: 72, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !978, line: 47, size: 256, elements: !986)
!986 = !{!987, !988, !994, !998}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !985, file: !978, line: 49, baseType: !29, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !985, file: !978, line: 51, baseType: !989, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!68, !134, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !985, file: !978, line: 53, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!68, !219, !992}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !985, file: !978, line: 55, baseType: !640, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !977, file: !978, line: 73, baseType: !1000, size: 16, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !977, file: !978, line: 74, baseType: !1002, size: 8, offset: 208)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !178, line: 16, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !180, line: 20, baseType: !1004)
!1004 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !978, line: 75, baseType: !177, size: 8, offset: 216)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !978, line: 76, baseType: !1007, size: 64, offset: 256)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !978, line: 76, size: 64, elements: !1008)
!1008 = !{!1009, !1010, !1017}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1007, file: !978, line: 77, baseType: !112, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1007, file: !978, line: 78, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !978, line: 86, size: 128, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1013, file: !978, line: 87, baseType: !29, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1013, file: !978, line: 88, baseType: !219, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1007, file: !978, line: 79, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !978, line: 92, size: 256, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1026, !1027}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1020, file: !978, line: 94, baseType: !29, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1020, file: !978, line: 95, baseType: !29, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1020, file: !978, line: 96, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1020, file: !978, line: 97, baseType: !983, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1020, file: !978, line: 98, baseType: !112, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !908, file: !35, line: 438, baseType: !29, size: 32, offset: 2176)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !908, file: !35, line: 441, baseType: !29, size: 32, offset: 2208)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !908, file: !35, line: 442, baseType: !967, size: 64, offset: 2240)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !908, file: !35, line: 443, baseType: !971, size: 64, offset: 2304)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !908, file: !35, line: 444, baseType: !576, size: 8, offset: 2368)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !908, file: !35, line: 451, baseType: !576, size: 8, offset: 2376)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !908, file: !35, line: 454, baseType: !29, size: 32, offset: 2400)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !908, file: !35, line: 455, baseType: !1036, size: 64, offset: 2432)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !35, line: 43, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !908, file: !35, line: 458, baseType: !1039, size: 64, offset: 2496)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!68}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !908, file: !35, line: 460, baseType: !1043, size: 4032, align: 512, offset: 2560)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1044, size: 4032, elements: !1060)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !35, line: 362, size: 576, elements: !1045)
!1045 = !{!1046, !1047, !1048}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1044, file: !35, line: 363, baseType: !112, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1044, file: !35, line: 364, baseType: !29, size: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1044, file: !35, line: 367, baseType: !1049, size: 448, offset: 128)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !35, line: 319, size: 448, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1049, file: !35, line: 320, baseType: !907, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1049, file: !35, line: 321, baseType: !1053, size: 384, offset: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1054, line: 40, size: 384, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1053, file: !1054, line: 41, baseType: !1057, size: 384, align: 64)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 384, align: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 2)
!1060 = !{!1061}
!1061 = !DISubrange(count: 7)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !908, file: !35, line: 463, baseType: !1063, size: 192, offset: 6592)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1064, line: 8, size: 192, elements: !1065)
!1064 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1065 = !{!1066, !1067, !1069}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1063, file: !1064, line: 10, baseType: !29, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1063, file: !1064, line: 11, baseType: !1068, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1063, file: !1064, line: 12, baseType: !1070, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1072, line: 59, size: 48, elements: !1073)
!1072 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1071, file: !1072, line: 60, baseType: !514, size: 16)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1071, file: !1072, line: 61, baseType: !514, size: 16, offset: 16)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1071, file: !1072, line: 63, baseType: !29, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1071, file: !1072, line: 64, baseType: !29, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1071, file: !1072, line: 65, baseType: !29, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1071, file: !1072, line: 66, baseType: !29, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !908, file: !35, line: 465, baseType: !269, size: 64, offset: 6784)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !908, file: !35, line: 469, baseType: !29, size: 32, offset: 6848)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !908, file: !35, line: 470, baseType: !136, size: 128, offset: 6912)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !908, file: !35, line: 471, baseType: !1084, size: 64, offset: 7040)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1086, line: 33, size: 96, elements: !1087)
!1086 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1087 = !{!1088, !1089, !1090, !1091}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1085, file: !1086, line: 37, baseType: !68, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1085, file: !1086, line: 43, baseType: !68, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1085, file: !1086, line: 45, baseType: !189, size: 16, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1085, file: !1086, line: 47, baseType: !189, size: 16, offset: 80)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !908, file: !35, line: 476, baseType: !1093, size: 64, offset: 7104)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !35, line: 378, size: 256, elements: !1095)
!1095 = !{!1096, !1113, !1114, !1115}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1094, file: !35, line: 379, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1099, line: 204, baseType: !1100)
!1099 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1099, line: 197, size: 192, elements: !1101)
!1101 = !{!1102, !1105, !1106, !1107, !1109, !1111}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1100, file: !1099, line: 198, baseType: !1103, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1099, line: 21, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !180, line: 27, baseType: !29)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1100, file: !1099, line: 199, baseType: !181, size: 8, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1100, file: !1099, line: 200, baseType: !181, size: 8, offset: 40)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1100, file: !1099, line: 201, baseType: !1108, size: 16, offset: 48)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1099, line: 17, baseType: !188)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1100, file: !1099, line: 202, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1099, line: 16, baseType: !383)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1100, file: !1099, line: 203, baseType: !1112, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1099, line: 22, baseType: !383)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1094, file: !35, line: 380, baseType: !29, size: 32, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1094, file: !35, line: 381, baseType: !219, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1094, file: !35, line: 382, baseType: !219, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !908, file: !35, line: 477, baseType: !1094, size: 256, offset: 7168)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !908, file: !35, line: 480, baseType: !1118, size: 64, offset: 7424)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !35, line: 480, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !908, file: !35, line: 483, baseType: !1121, size: 64, offset: 7488)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !35, line: 483, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !908, file: !35, line: 488, baseType: !219, size: 64, offset: 7552)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !908, file: !35, line: 492, baseType: !112, size: 64, offset: 7616)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !908, file: !35, line: 493, baseType: !29, size: 32, offset: 7680)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !908, file: !35, line: 495, baseType: !112, size: 64, offset: 7744)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !908, file: !35, line: 496, baseType: !29, size: 32, offset: 7808)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !908, file: !35, line: 499, baseType: !29, size: 32, offset: 7840)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !908, file: !35, line: 500, baseType: !1130, size: 64, offset: 7872)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1132, line: 45, baseType: !1133)
!1132 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !908, file: !35, line: 503, baseType: !29, size: 32, offset: 7936)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !908, file: !35, line: 504, baseType: !1136, size: 64, offset: 8000)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1139, line: 96, size: 192, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1140 = !{!1141, !1142, !1203, !1206}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1138, file: !1139, line: 97, baseType: !29, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1138, file: !1139, line: 98, baseType: !1143, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1139, line: 24, size: 3072, elements: !1145)
!1145 = !{!1146, !1148, !1149, !1150, !1151, !1165, !1166, !1167, !1168, !1187, !1188, !1189, !1200, !1201, !1202}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1144, file: !1139, line: 26, baseType: !1147, size: 128)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, elements: !1058)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1144, file: !1139, line: 27, baseType: !1147, size: 128, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1144, file: !1139, line: 28, baseType: !68, size: 32, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1144, file: !1139, line: 31, baseType: !149, size: 32, align: 512, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1144, file: !1139, line: 32, baseType: !1152, size: 960, offset: 576)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1153, line: 206, size: 960, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1154 = !{!1155, !1156, !1159, !1161, !1162, !1164}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1152, file: !1153, line: 207, baseType: !328, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1152, file: !1153, line: 208, baseType: !1157, size: 256, offset: 64)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1158, size: 256, elements: !457)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1152, file: !1153, line: 209, baseType: !1160, size: 256, offset: 320)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 256, elements: !457)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1152, file: !1153, line: 213, baseType: !255, size: 64, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1152, file: !1153, line: 215, baseType: !1163, size: 256, offset: 640)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !457)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1152, file: !1153, line: 216, baseType: !177, size: 8, offset: 896)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1144, file: !1139, line: 33, baseType: !269, size: 64, offset: 1536)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1144, file: !1139, line: 34, baseType: !269, size: 64, offset: 1600)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1144, file: !1139, line: 35, baseType: !576, size: 8, offset: 1664)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1144, file: !1139, line: 36, baseType: !1169, size: 320, offset: 1728)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1170, line: 11, size: 320, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1171 = !{!1172, !1179, !1180, !1185}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1169, file: !1170, line: 16, baseType: !1173, size: 128)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !114, line: 198, size: 128, elements: !1174)
!1174 = !{!1175, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1173, file: !114, line: 199, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1173, file: !114, line: 199, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1169, file: !1170, line: 17, baseType: !269, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1169, file: !1170, line: 18, baseType: !1181, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1169, file: !1170, line: 19, baseType: !1186, size: 32, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !178, line: 21, baseType: !1104)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1144, file: !1139, line: 37, baseType: !541, size: 256, offset: 2048)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1144, file: !1139, line: 38, baseType: !325, size: 128, align: 64, offset: 2304)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1144, file: !1139, line: 39, baseType: !1190, size: 64, offset: 2432)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1139, line: 49, size: 768, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1191, file: !1139, line: 50, baseType: !149, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1191, file: !1139, line: 51, baseType: !1160, size: 256, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1191, file: !1139, line: 53, baseType: !1160, size: 256, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1191, file: !1139, line: 54, baseType: !269, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1191, file: !1139, line: 55, baseType: !1190, size: 64, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1191, file: !1139, line: 56, baseType: !68, size: 32, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1191, file: !1139, line: 57, baseType: !68, size: 32, offset: 736)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1144, file: !1139, line: 40, baseType: !269, size: 64, offset: 2496)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1144, file: !1139, line: 42, baseType: !68, size: 32, offset: 2560)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1144, file: !1139, line: 43, baseType: !1137, size: 64, offset: 2624)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1138, file: !1139, line: 99, baseType: !1204, offset: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1205, line: 211, elements: !355)
!1205 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1138, file: !1139, line: 100, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1139, line: 63, size: 3008, elements: !1209)
!1209 = !{!1210, !1211, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1241}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1208, file: !1139, line: 64, baseType: !1190, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1208, file: !1139, line: 65, baseType: !1212, size: 192, offset: 64)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 192, elements: !220)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1208, file: !1139, line: 67, baseType: !68, size: 32, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1208, file: !1139, line: 68, baseType: !476, size: 256, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1208, file: !1139, line: 69, baseType: !149, size: 32, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1208, file: !1139, line: 70, baseType: !476, size: 256, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1208, file: !1139, line: 71, baseType: !269, size: 64, offset: 896)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1208, file: !1139, line: 72, baseType: !269, size: 64, offset: 960)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1208, file: !1139, line: 73, baseType: !269, size: 64, offset: 1024)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1208, file: !1139, line: 74, baseType: !269, size: 64, offset: 1088)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1208, file: !1139, line: 75, baseType: !269, size: 64, offset: 1152)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1208, file: !1139, line: 76, baseType: !269, size: 64, offset: 1216)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1208, file: !1139, line: 77, baseType: !269, size: 64, offset: 1280)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1208, file: !1139, line: 78, baseType: !269, size: 64, offset: 1344)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1208, file: !1139, line: 79, baseType: !576, size: 8, offset: 1408)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1208, file: !1139, line: 80, baseType: !269, size: 64, offset: 1472)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1208, file: !1139, line: 81, baseType: !476, size: 256, offset: 1536)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1208, file: !1139, line: 82, baseType: !927, size: 256, offset: 1792)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1208, file: !1139, line: 84, baseType: !169, size: 32, offset: 2048)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1208, file: !1139, line: 87, baseType: !269, size: 64, offset: 2112)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1208, file: !1139, line: 88, baseType: !269, size: 64, offset: 2176)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1208, file: !1139, line: 89, baseType: !1233, size: 704, offset: 2240)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !542, line: 111, size: 704, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1240}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1233, file: !542, line: 112, baseType: !541, size: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1233, file: !542, line: 113, baseType: !1169, size: 320, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1233, file: !542, line: 116, baseType: !1238, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !542, line: 18, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1233, file: !542, line: 117, baseType: !68, size: 32, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1208, file: !1139, line: 90, baseType: !1137, size: 64, offset: 2944)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !908, file: !35, line: 515, baseType: !1243, size: 64, offset: 8064)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1245, line: 117, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1246 = !{!1247, !1248, !1249}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1244, file: !1245, line: 118, baseType: !455, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1244, file: !1245, line: 119, baseType: !455, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1244, file: !1245, line: 120, baseType: !255, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !908, file: !35, line: 516, baseType: !29, size: 32, offset: 8128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !908, file: !35, line: 519, baseType: !29, size: 32, offset: 8160)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !908, file: !35, line: 520, baseType: !1253, size: 64, offset: 8192)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !908, file: !35, line: 523, baseType: !1255, size: 64, offset: 8256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !35, line: 523, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !908, file: !35, line: 524, baseType: !29, size: 32, offset: 8320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !908, file: !35, line: 525, baseType: !1260, size: 64, offset: 8384)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !35, line: 525, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !908, file: !35, line: 526, baseType: !29, size: 32, offset: 8448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !908, file: !35, line: 533, baseType: !112, size: 64, offset: 8512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !908, file: !35, line: 534, baseType: !29, size: 32, offset: 8576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !908, file: !35, line: 535, baseType: !1267, size: 64, offset: 8640)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !908, file: !35, line: 536, baseType: !29, size: 32, offset: 8704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !908, file: !35, line: 539, baseType: !68, size: 32, offset: 8736)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !908, file: !35, line: 540, baseType: !1271, size: 64, offset: 8768)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1273, line: 32, size: 64, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1272, file: !1273, line: 33, baseType: !455, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1272, file: !1273, line: 34, baseType: !455, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !908, file: !35, line: 563, baseType: !136, size: 128, offset: 8832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !908, file: !35, line: 565, baseType: !136, size: 128, offset: 8960)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !908, file: !35, line: 568, baseType: !1280, size: 64, offset: 9088)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !908, file: !35, line: 570, baseType: !169, size: 32, offset: 9152)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !825, file: !42, line: 101, baseType: !134, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !825, file: !42, line: 103, baseType: !576, size: 8, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !825, file: !42, line: 104, baseType: !41, size: 32, offset: 288)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !825, file: !42, line: 106, baseType: !1288, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1291, line: 282, size: 1600, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1292 = !{!1293, !1297, !1298, !1302}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !1291, line: 283, baseType: !1294, size: 256)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1290, file: !1291, line: 284, baseType: !1294, size: 256, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1290, file: !1291, line: 285, baseType: !1299, size: 1024, offset: 512)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1290, file: !1291, line: 286, baseType: !497, size: 64, offset: 1536)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !825, file: !42, line: 107, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1291, line: 217, size: 256, elements: !1307)
!1307 = !{!1308, !1312, !1314, !1315}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1306, file: !1291, line: 218, baseType: !1309, size: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 16)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1306, file: !1291, line: 219, baseType: !1313, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1291, line: 15, baseType: !269)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1306, file: !1291, line: 220, baseType: !1104, size: 32, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1306, file: !1291, line: 221, baseType: !1104, size: 32, offset: 224)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !825, file: !42, line: 109, baseType: !850, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !825, file: !42, line: 110, baseType: !854, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !825, file: !42, line: 111, baseType: !850, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !825, file: !42, line: 112, baseType: !854, size: 64, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !825, file: !42, line: 113, baseType: !862, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !825, file: !42, line: 114, baseType: !850, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !825, file: !42, line: 115, baseType: !271, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !825, file: !42, line: 116, baseType: !271, size: 64, offset: 896)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !825, file: !42, line: 118, baseType: !874, size: 64, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !825, file: !42, line: 119, baseType: !854, size: 64, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !825, file: !42, line: 121, baseType: !1327, size: 64, offset: 1088)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !799, line: 78, size: 1216, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1328, file: !799, line: 79, baseType: !130, size: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1328, file: !799, line: 80, baseType: !802, size: 320, align: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1328, file: !799, line: 81, baseType: !812, size: 256, offset: 832)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1328, file: !799, line: 82, baseType: !946, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1328, file: !799, line: 83, baseType: !824, size: 64, offset: 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !798, file: !799, line: 116, baseType: !219, size: 64, offset: 1536)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !798, file: !799, line: 117, baseType: !795, size: 64, offset: 1600)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !798, file: !799, line: 118, baseType: !177, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !127, file: !48, line: 711, baseType: !134, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !48, line: 712, baseType: !1340, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !48, line: 89, size: 384, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1352, !1353}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1342, file: !48, line: 90, baseType: !134, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1342, file: !48, line: 91, baseType: !271, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1342, file: !48, line: 92, baseType: !844, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1342, file: !48, line: 93, baseType: !1348, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!219, !847, !1351, !651, !658}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1342, file: !48, line: 95, baseType: !854, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1342, file: !48, line: 97, baseType: !874, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !127, file: !48, line: 714, baseType: !829, size: 64, offset: 768)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !127, file: !48, line: 715, baseType: !824, size: 64, offset: 832)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !127, file: !48, line: 717, baseType: !112, size: 64, offset: 896)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !127, file: !48, line: 719, baseType: !112, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !127, file: !48, line: 721, baseType: !476, size: 256, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !127, file: !48, line: 725, baseType: !1360, size: 448, offset: 1280)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !48, line: 517, size: 448, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1360, file: !48, line: 518, baseType: !136, size: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1360, file: !48, line: 519, baseType: !136, size: 128, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1360, file: !48, line: 520, baseType: !136, size: 128, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1360, file: !48, line: 521, baseType: !47, size: 32, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !127, file: !48, line: 726, baseType: !1367, size: 2496, offset: 1728)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !60, line: 663, size: 2496, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1413, !1414, !1415, !1416, !1417, !1418, !1489, !1490, !1491, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1529, !1533}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1367, file: !60, line: 664, baseType: !865, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1367, file: !60, line: 665, baseType: !29, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1367, file: !60, line: 666, baseType: !29, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1367, file: !60, line: 667, baseType: !576, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1367, file: !60, line: 668, baseType: !576, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1367, file: !60, line: 669, baseType: !576, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1367, file: !60, line: 670, baseType: !576, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1367, file: !60, line: 671, baseType: !576, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1367, file: !60, line: 672, baseType: !576, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1367, file: !60, line: 673, baseType: !576, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1367, file: !60, line: 674, baseType: !576, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1367, file: !60, line: 675, baseType: !1186, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1367, file: !60, line: 676, baseType: !149, size: 32, offset: 96)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1367, file: !60, line: 678, baseType: !136, size: 128, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1367, file: !60, line: 679, baseType: !927, size: 256, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1367, file: !60, line: 680, baseType: !1385, size: 64, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1387, line: 43, size: 1536, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1396, !1397, !1398, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1386, file: !1387, line: 44, baseType: !134, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1386, file: !1387, line: 45, baseType: !68, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1386, file: !1387, line: 46, baseType: !136, size: 128, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !1387, line: 47, baseType: !149, size: 32, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1386, file: !1387, line: 48, baseType: !1394, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !60, line: 629, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1386, file: !1387, line: 49, baseType: !1169, size: 320, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1386, file: !1387, line: 50, baseType: !269, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1386, file: !1387, line: 51, baseType: !1399, size: 64, offset: 768)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1400, line: 29, baseType: !394)
!1400 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1386, file: !1387, line: 52, baseType: !1399, size: 64, offset: 832)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1386, file: !1387, line: 53, baseType: !1399, size: 64, offset: 896)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1386, file: !1387, line: 54, baseType: !1399, size: 64, offset: 960)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1386, file: !1387, line: 55, baseType: !1399, size: 64, offset: 1024)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1386, file: !1387, line: 56, baseType: !269, size: 64, offset: 1088)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1386, file: !1387, line: 57, baseType: !269, size: 64, offset: 1152)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1386, file: !1387, line: 58, baseType: !269, size: 64, offset: 1216)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1386, file: !1387, line: 59, baseType: !269, size: 64, offset: 1280)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1386, file: !1387, line: 60, baseType: !269, size: 64, offset: 1344)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1386, file: !1387, line: 61, baseType: !795, size: 64, offset: 1408)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1386, file: !1387, line: 62, baseType: !576, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1386, file: !1387, line: 63, baseType: !576, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1367, file: !60, line: 681, baseType: !576, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1367, file: !60, line: 682, baseType: !576, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1367, file: !60, line: 683, baseType: !576, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1367, file: !60, line: 684, baseType: !29, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1367, file: !60, line: 685, baseType: !29, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1367, file: !60, line: 690, baseType: !1419, size: 512, offset: 640)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !55, line: 118, size: 512, elements: !1420)
!1420 = !{!1421, !1427, !1428, !1433, !1485, !1486, !1487, !1488}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1419, file: !55, line: 119, baseType: !1422, size: 256)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1423, line: 9, size: 256, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1422, file: !1423, line: 10, baseType: !582, size: 192, align: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1422, file: !1423, line: 11, baseType: !1399, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1419, file: !55, line: 120, baseType: !1399, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1419, file: !55, line: 121, baseType: !1429, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!54, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1419, file: !55, line: 122, baseType: !1434, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !55, line: 159, size: 512, align: 512, elements: !1436)
!1436 = !{!1437, !1462, !1463, !1466, !1471, !1472, !1480, !1484}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1435, file: !55, line: 160, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !55, line: 215, size: 4608, align: 512, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1439, file: !55, line: 216, baseType: !410, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1439, file: !55, line: 217, baseType: !29, size: 32, offset: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1439, file: !55, line: 218, baseType: !29, size: 32, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1439, file: !55, line: 219, baseType: !29, size: 32, offset: 96)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1439, file: !55, line: 220, baseType: !29, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1439, file: !55, line: 221, baseType: !29, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1439, file: !55, line: 222, baseType: !29, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1439, file: !55, line: 223, baseType: !29, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1439, file: !55, line: 224, baseType: !29, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1439, file: !55, line: 226, baseType: !29, size: 32, offset: 160)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1439, file: !55, line: 227, baseType: !189, size: 16, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1439, file: !55, line: 228, baseType: !189, size: 16, offset: 208)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1439, file: !55, line: 229, baseType: !29, size: 32, offset: 224)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1439, file: !55, line: 235, baseType: !1399, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1439, file: !55, line: 236, baseType: !1432, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1439, file: !55, line: 237, baseType: !1399, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1439, file: !55, line: 238, baseType: !1432, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1439, file: !55, line: 239, baseType: !1459, size: 4096, align: 512, offset: 512)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1435, size: 4096, align: 512, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 8)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1435, file: !55, line: 161, baseType: !29, size: 32, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1435, file: !55, line: 162, baseType: !1464, size: 32, offset: 96)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !114, line: 32, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !253, line: 96, baseType: !68)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1435, file: !55, line: 163, baseType: !1467, size: 32, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !425, line: 274, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !425, line: 274, size: 32, elements: !1469)
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1468, file: !425, line: 274, baseType: !424, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1435, file: !55, line: 164, baseType: !1432, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1435, file: !55, line: 165, baseType: !1473, size: 128, offset: 256)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1423, line: 14, size: 128, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1473, file: !1423, line: 15, baseType: !1476, size: 128)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !583, line: 26, size: 128, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1476, file: !583, line: 27, baseType: !685, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1476, file: !583, line: 28, baseType: !587, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1435, file: !55, line: 166, baseType: !1481, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!1399}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1435, file: !55, line: 167, baseType: !1399, size: 64, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1419, file: !55, line: 123, baseType: !177, size: 8, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1419, file: !55, line: 124, baseType: !177, size: 8, offset: 456)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1419, file: !55, line: 125, baseType: !177, size: 8, offset: 464)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1419, file: !55, line: 126, baseType: !177, size: 8, offset: 472)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1367, file: !60, line: 691, baseType: !382, size: 64, offset: 1152)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1367, file: !60, line: 692, baseType: !541, size: 256, offset: 1216)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1367, file: !60, line: 693, baseType: !1492, size: 192, offset: 1472)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1493, line: 41, baseType: !1494)
!1493 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1493, line: 37, size: 192, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1494, file: !1493, line: 38, baseType: !149, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1494, file: !1493, line: 39, baseType: !136, size: 128, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1367, file: !60, line: 694, baseType: !1394, size: 64, offset: 1664)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1367, file: !60, line: 695, baseType: !169, size: 32, offset: 1728)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1367, file: !60, line: 696, baseType: !169, size: 32, offset: 1760)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1367, file: !60, line: 697, baseType: !29, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1367, file: !60, line: 698, baseType: !29, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1367, file: !60, line: 699, baseType: !29, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1367, file: !60, line: 700, baseType: !29, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1367, file: !60, line: 701, baseType: !29, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1367, file: !60, line: 702, baseType: !29, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1367, file: !60, line: 703, baseType: !576, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1367, file: !60, line: 704, baseType: !29, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1367, file: !60, line: 705, baseType: !29, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1367, file: !60, line: 706, baseType: !29, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1367, file: !60, line: 707, baseType: !29, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1367, file: !60, line: 708, baseType: !29, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1367, file: !60, line: 709, baseType: !29, size: 32, offset: 1824)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1367, file: !60, line: 710, baseType: !59, size: 32, offset: 1856)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1367, file: !60, line: 711, baseType: !67, size: 32, offset: 1888)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1367, file: !60, line: 712, baseType: !67, size: 32, offset: 1920)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1367, file: !60, line: 713, baseType: !68, size: 32, offset: 1952)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1367, file: !60, line: 714, baseType: !68, size: 32, offset: 1984)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1367, file: !60, line: 715, baseType: !382, size: 64, offset: 2048)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1367, file: !60, line: 716, baseType: !382, size: 64, offset: 2112)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1367, file: !60, line: 717, baseType: !382, size: 64, offset: 2176)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1367, file: !60, line: 718, baseType: !382, size: 64, offset: 2240)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1367, file: !60, line: 720, baseType: !1524, size: 64, offset: 2304)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !60, line: 632, size: 64, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !60, line: 633, baseType: !149, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1525, file: !60, line: 634, baseType: !29, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1367, file: !60, line: 721, baseType: !1530, size: 64, offset: 2368)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !795, !455}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1367, file: !60, line: 722, baseType: !1534, size: 64, offset: 2432)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !60, line: 722, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !127, file: !48, line: 727, baseType: !1537, size: 64, offset: 4224)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !60, line: 742, size: 1792, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1546, !1547, !1548}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1538, file: !60, line: 743, baseType: !876, size: 1472)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1538, file: !60, line: 744, baseType: !850, size: 64, offset: 1472)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1538, file: !60, line: 745, baseType: !1543, size: 64, offset: 1536)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !795, !576}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1538, file: !60, line: 746, baseType: !850, size: 64, offset: 1600)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1538, file: !60, line: 747, baseType: !854, size: 64, offset: 1664)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1538, file: !60, line: 748, baseType: !854, size: 64, offset: 1728)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !127, file: !48, line: 736, baseType: !1550, size: 128, offset: 4288)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !48, line: 529, size: 128, elements: !1551)
!1551 = !{!1552, !1556}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1550, file: !48, line: 531, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1555, line: 13, flags: DIFlagFwdDecl)
!1555 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1550, file: !48, line: 532, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !48, line: 49, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !127, file: !48, line: 738, baseType: !1560, size: 64, offset: 4416)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1562)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !48, line: 738, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !127, file: !48, line: 740, baseType: !1564, size: 64, offset: 4480)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !127, file: !48, line: 741, baseType: !382, size: 64, offset: 4544)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !127, file: !48, line: 746, baseType: !382, size: 64, offset: 4608)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !127, file: !48, line: 747, baseType: !1568, size: 64, offset: 4672)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !48, line: 747, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !127, file: !48, line: 749, baseType: !1572, size: 64, offset: 4736)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !48, line: 428, size: 128, elements: !1574)
!1574 = !{!1575, !1576, !1577}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1573, file: !48, line: 433, baseType: !29, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1573, file: !48, line: 434, baseType: !29, size: 32, offset: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1573, file: !48, line: 435, baseType: !269, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !127, file: !48, line: 751, baseType: !136, size: 128, offset: 4800)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !127, file: !48, line: 762, baseType: !1580, size: 64, offset: 4928)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !48, line: 762, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !127, file: !48, line: 770, baseType: !1583, offset: 4992)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1584, line: 5, elements: !355)
!1584 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !127, file: !48, line: 772, baseType: !1586, size: 64, offset: 4992)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1588, line: 48, size: 1152, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1589 = !{!1590, !1591, !1593, !1594, !1697, !1705, !1706, !1707, !1708, !1709, !1710}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1587, file: !1588, line: 49, baseType: !134, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1587, file: !1588, line: 50, baseType: !1592, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1588, line: 25, baseType: !1186)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1587, file: !1588, line: 51, baseType: !134, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1587, file: !1588, line: 52, baseType: !1595, size: 512, offset: 192)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1596, line: 41, size: 512, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1597 = !{!1598, !1600, !1693, !1694, !1695, !1696}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1595, file: !1596, line: 42, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1595, file: !1596, line: 43, baseType: !1601, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1596, line: 125, size: 1408, elements: !1604)
!1604 = !{!1605, !1609, !1613, !1619, !1623, !1624, !1628, !1632, !1636, !1640, !1644, !1645, !1649, !1653, !1657, !1668, !1669, !1670, !1671, !1681, !1685, !1689}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1603, file: !1596, line: 126, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!1599, !1599}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1603, file: !1596, line: 127, baseType: !1610, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !1599}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1603, file: !1596, line: 128, baseType: !1614, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!576, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1603, file: !1596, line: 129, baseType: !1620, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!497, !1617, !847}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1603, file: !1596, line: 131, baseType: !1614, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1603, file: !1596, line: 133, baseType: !1625, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!75, !1617}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1603, file: !1596, line: 134, baseType: !1629, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!576, !1617, !134}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1603, file: !1596, line: 136, baseType: !1633, size: 64, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!68, !1617, !134, !29, !112, !266}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1603, file: !1596, line: 141, baseType: !1637, size: 64, offset: 512)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!68, !1617, !134, !1253, !266}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1603, file: !1596, line: 144, baseType: !1641, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!134, !1617}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1603, file: !1596, line: 145, baseType: !1641, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1603, file: !1596, line: 146, baseType: !1646, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!1599, !1617}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1603, file: !1596, line: 148, baseType: !1650, size: 64, offset: 768)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1599, !1617, !1599}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1603, file: !1596, line: 151, baseType: !1654, size: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1599, !1617, !134}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1603, file: !1596, line: 153, baseType: !1658, size: 64, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!68, !1617, !134, !134, !29, !29, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1596, line: 94, size: 640, elements: !1663)
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1662, file: !1596, line: 95, baseType: !1599, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1662, file: !1596, line: 96, baseType: !29, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1662, file: !1596, line: 97, baseType: !1667, size: 512, offset: 128)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 512, elements: !1460)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1603, file: !1596, line: 158, baseType: !1650, size: 64, offset: 960)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1603, file: !1596, line: 161, baseType: !1646, size: 64, offset: 1024)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1603, file: !1596, line: 163, baseType: !1606, size: 64, offset: 1088)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1603, file: !1596, line: 164, baseType: !1672, size: 64, offset: 1152)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!68, !1617, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1596, line: 73, size: 128, elements: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1676, file: !1596, line: 74, baseType: !29, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1676, file: !1596, line: 75, baseType: !29, size: 32, offset: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1676, file: !1596, line: 76, baseType: !1617, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1603, file: !1596, line: 166, baseType: !1682, size: 64, offset: 1216)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!112, !1599, !68}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1603, file: !1596, line: 167, baseType: !1686, size: 64, offset: 1280)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!68, !1617, !29}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1603, file: !1596, line: 168, baseType: !1690, size: 64, offset: 1344)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!68, !1599}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1595, file: !1596, line: 44, baseType: !795, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1595, file: !1596, line: 45, baseType: !136, size: 128, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1595, file: !1596, line: 46, baseType: !136, size: 128, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1595, file: !1596, line: 47, baseType: !177, size: 8, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1587, file: !1588, line: 54, baseType: !1698, size: 64, offset: 704)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1588, line: 28, size: 256, elements: !1700)
!1700 = !{!1701, !1702, !1703, !1704}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1699, file: !1588, line: 29, baseType: !219, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1699, file: !1588, line: 30, baseType: !68, size: 32, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1699, file: !1588, line: 31, baseType: !112, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1699, file: !1588, line: 32, baseType: !1698, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1587, file: !1588, line: 55, baseType: !1698, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1587, file: !1588, line: 56, baseType: !1586, size: 64, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1587, file: !1588, line: 57, baseType: !1586, size: 64, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1587, file: !1588, line: 58, baseType: !1586, size: 64, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1587, file: !1588, line: 62, baseType: !269, size: 64, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1587, file: !1588, line: 63, baseType: !112, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !127, file: !48, line: 773, baseType: !1599, size: 64, offset: 5056)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !127, file: !48, line: 776, baseType: !68, size: 32, offset: 5120)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !127, file: !48, line: 778, baseType: !1714, size: 32, offset: 5152)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !114, line: 21, baseType: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !114, line: 18, baseType: !1186)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !127, file: !48, line: 779, baseType: !1186, size: 32, offset: 5184)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !127, file: !48, line: 781, baseType: !149, size: 32, offset: 5216)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !127, file: !48, line: 782, baseType: !136, size: 128, offset: 5248)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !127, file: !48, line: 784, baseType: !1720, size: 64, offset: 5376)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1723, line: 52, size: 768, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1733, !1737, !1738, !1739, !1740, !1744, !1748}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1722, file: !1723, line: 53, baseType: !134, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1722, file: !1723, line: 55, baseType: !271, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1722, file: !1723, line: 56, baseType: !271, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1722, file: !1723, line: 58, baseType: !844, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1722, file: !1723, line: 59, baseType: !1730, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!219, !847, !1351}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1722, file: !1723, line: 61, baseType: !1734, size: 64, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1720}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1722, file: !1723, line: 62, baseType: !854, size: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1722, file: !1723, line: 64, baseType: !850, size: 64, offset: 448)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1722, file: !1723, line: 66, baseType: !616, size: 64, offset: 512)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1722, file: !1723, line: 67, baseType: !1741, size: 64, offset: 576)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!497, !847}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1722, file: !1723, line: 69, baseType: !1745, size: 64, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !847, !651, !658}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1722, file: !1723, line: 71, baseType: !874, size: 64, offset: 704)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !127, file: !48, line: 785, baseType: !271, size: 64, offset: 5440)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !127, file: !48, line: 787, baseType: !854, size: 64, offset: 5504)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !127, file: !48, line: 788, baseType: !1752, size: 64, offset: 5568)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !48, line: 46, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !127, file: !48, line: 789, baseType: !1755, size: 64, offset: 5632)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !48, line: 48, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !127, file: !48, line: 791, baseType: !1758, size: 64, offset: 5696)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !48, line: 597, size: 128, elements: !1760)
!1760 = !{!1761, !1762, !1763, !1764, !1765}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1759, file: !48, line: 598, baseType: !81, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1759, file: !48, line: 599, baseType: !90, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1759, file: !48, line: 600, baseType: !95, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1759, file: !48, line: 601, baseType: !576, size: 8, offset: 96)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1759, file: !48, line: 602, baseType: !576, size: 8, offset: 104)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !127, file: !48, line: 793, baseType: !100, size: 32, offset: 5760)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !127, file: !48, line: 795, baseType: !576, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !127, file: !48, line: 796, baseType: !576, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !127, file: !48, line: 797, baseType: !576, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !127, file: !48, line: 798, baseType: !576, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !127, file: !48, line: 799, baseType: !576, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !117, line: 140, baseType: !134, size: 64, offset: 5824)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !124, file: !117, line: 141, baseType: !1186, size: 32, offset: 5888)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "auxiliary_device_id", file: !1291, line: 869, size: 320, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1776, file: !1291, line: 870, baseType: !1294, size: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1776, file: !1291, line: 871, baseType: !1313, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !116, file: !117, line: 182, baseType: !1781, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !123}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !116, file: !117, line: 183, baseType: !1781, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !116, file: !117, line: 184, baseType: !1786, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!68, !123, !865}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !116, file: !117, line: 185, baseType: !1790, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!68, !123}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !117, line: 186, baseType: !134, size: 64, offset: 320)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !116, file: !117, line: 187, baseType: !825, size: 1152, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !116, file: !117, line: 188, baseType: !1774, size: 64, offset: 1536)
!1796 = !{!0, !7, !12, !18, !1797, !1799, !1804, !1809, !1814, !1819, !1821, !1823, !1828, !1833, !1836, !1838, !23, !1840, !1843, !1848, !1853}
!1797 = !DIGlobalVariableExpression(var: !1798, expr: !DIExpression())
!1798 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_auxiliary_device_init206", scope: !25, file: !2, line: 292, type: !112, isLocal: true, isDefinition: true)
!1799 = !DIGlobalVariableExpression(var: !1800, expr: !DIExpression())
!1800 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !1801, isLocal: true, isDefinition: true)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !1802)
!1802 = !{!1803}
!1803 = !DISubrange(count: 34)
!1804 = !DIGlobalVariableExpression(var: !1805, expr: !DIExpression())
!1805 = distinct !DIGlobalVariable(scope: null, file: !2, line: 323, type: !1806, isLocal: true, isDefinition: true)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !1807)
!1807 = !{!1808}
!1808 = !DISubrange(count: 9)
!1809 = !DIGlobalVariableExpression(var: !1810, expr: !DIExpression())
!1810 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !1811, isLocal: true, isDefinition: true)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !1812)
!1812 = !{!1813}
!1813 = !DISubrange(count: 42)
!1814 = !DIGlobalVariableExpression(var: !1815, expr: !DIExpression())
!1815 = distinct !DIGlobalVariable(scope: null, file: !2, line: 331, type: !1816, isLocal: true, isDefinition: true)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !1817)
!1817 = !{!1818}
!1818 = !DISubrange(count: 37)
!1819 = !DIGlobalVariableExpression(var: !1820, expr: !DIExpression())
!1820 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___auxiliary_device_add207", scope: !25, file: !2, line: 335, type: !112, isLocal: true, isDefinition: true)
!1821 = !DIGlobalVariableExpression(var: !1822, expr: !DIExpression())
!1822 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_auxiliary_find_device208", scope: !25, file: !2, line: 364, type: !112, isLocal: true, isDefinition: true)
!1823 = !DIGlobalVariableExpression(var: !1824, expr: !DIExpression())
!1824 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !1825, isLocal: true, isDefinition: true)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !1826)
!1826 = !{!1827}
!1827 = !DISubrange(count: 25)
!1828 = !DIGlobalVariableExpression(var: !1829, expr: !DIExpression())
!1829 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !1830, isLocal: true, isDefinition: true)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1831)
!1831 = !{!1832}
!1832 = !DISubrange(count: 6)
!1833 = !DIGlobalVariableExpression(var: !1834, expr: !DIExpression())
!1834 = distinct !DIGlobalVariable(scope: null, file: !2, line: 389, type: !1835, isLocal: true, isDefinition: true)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !220)
!1836 = !DIGlobalVariableExpression(var: !1837, expr: !DIExpression())
!1837 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___auxiliary_driver_register209", scope: !25, file: !2, line: 403, type: !112, isLocal: true, isDefinition: true)
!1838 = !DIGlobalVariableExpression(var: !1839, expr: !DIExpression())
!1839 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_auxiliary_driver_unregister210", scope: !25, file: !2, line: 414, type: !112, isLocal: true, isDefinition: true)
!1840 = !DIGlobalVariableExpression(var: !1841, expr: !DIExpression())
!1841 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !1842, isLocal: true, isDefinition: true)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1310)
!1843 = !DIGlobalVariableExpression(var: !1844, expr: !DIExpression())
!1844 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !1845, isLocal: true, isDefinition: true)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !1846)
!1846 = !{!1847}
!1847 = !DISubrange(count: 11)
!1848 = !DIGlobalVariableExpression(var: !1849, expr: !DIExpression())
!1849 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !1850, isLocal: true, isDefinition: true)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !1851)
!1851 = !{!1852}
!1852 = !DISubrange(count: 36)
!1853 = !DIGlobalVariableExpression(var: !1854, expr: !DIExpression())
!1854 = distinct !DIGlobalVariable(name: "auxiliary_dev_pm_ops", scope: !25, file: !2, line: 199, type: !875, isLocal: true, isDefinition: true)
!1855 = !{i32 7, !"Dwarf Version", i32 5}
!1856 = !{i32 2, !"Debug Info Version", i32 3}
!1857 = !{i32 1, !"wchar_size", i32 2}
!1858 = !{i32 8, !"cf-protection-branch", i32 1}
!1859 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1860 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1861 = !{i32 1, !"Code Model", i32 2}
!1862 = !{i32 1, !"override-stack-alignment", i32 8}
!1863 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1864 = distinct !DISubprogram(name: "auxiliary_device_init", scope: !2, file: !2, line: 274, type: !1791, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1865)
!1865 = !{!1866, !1867}
!1866 = !DILocalVariable(name: "auxdev", arg: 1, scope: !1864, file: !2, line: 274, type: !123)
!1867 = !DILocalVariable(name: "dev", scope: !1864, file: !2, line: 276, type: !795)
!1868 = !DILocation(line: 274, column: 52, scope: !1864)
!1869 = !DILocation(line: 276, column: 2, scope: !1864)
!1870 = !DILocation(line: 276, column: 17, scope: !1864)
!1871 = !DILocation(line: 276, column: 24, scope: !1864)
!1872 = !DILocation(line: 276, column: 32, scope: !1864)
!1873 = !DILocation(line: 278, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 278, column: 6)
!1875 = !DILocation(line: 278, column: 12, scope: !1874)
!1876 = !DILocation(line: 278, column: 6, scope: !1864)
!1877 = !DILocation(line: 279, column: 3, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 279, column: 3)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 278, column: 20)
!1880 = !DILocation(line: 279, column: 3, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1878, file: !2, line: 279, column: 3)
!1882 = !DILocation(line: 280, column: 3, scope: !1879)
!1883 = !DILocation(line: 283, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 283, column: 6)
!1885 = !DILocation(line: 283, column: 15, scope: !1884)
!1886 = !DILocation(line: 283, column: 6, scope: !1864)
!1887 = !DILocation(line: 284, column: 3, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 284, column: 3)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 283, column: 21)
!1890 = !DILocation(line: 284, column: 3, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 284, column: 3)
!1892 = !DILocation(line: 285, column: 3, scope: !1889)
!1893 = !DILocation(line: 288, column: 2, scope: !1864)
!1894 = !DILocation(line: 288, column: 7, scope: !1864)
!1895 = !DILocation(line: 288, column: 11, scope: !1864)
!1896 = !DILocation(line: 289, column: 21, scope: !1864)
!1897 = !DILocation(line: 289, column: 29, scope: !1864)
!1898 = !DILocation(line: 289, column: 2, scope: !1864)
!1899 = !DILocation(line: 290, column: 2, scope: !1864)
!1900 = !DILocation(line: 291, column: 1, scope: !1864)
!1901 = !DISubprogram(name: "_printk", scope: !1902, file: !1902, line: 153, type: !1903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1902 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!68, !134, null}
!1905 = !DISubprogram(name: "device_initialize", scope: !48, file: !48, line: 1056, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1906 = distinct !DISubprogram(name: "__auxiliary_device_add", scope: !2, file: !2, line: 313, type: !1907, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!68, !123, !134}
!1909 = !{!1910, !1911, !1912, !1913}
!1910 = !DILocalVariable(name: "auxdev", arg: 1, scope: !1906, file: !2, line: 313, type: !123)
!1911 = !DILocalVariable(name: "modname", arg: 2, scope: !1906, file: !2, line: 313, type: !134)
!1912 = !DILocalVariable(name: "dev", scope: !1906, file: !2, line: 315, type: !795)
!1913 = !DILocalVariable(name: "ret", scope: !1906, file: !2, line: 316, type: !68)
!1914 = !DILocation(line: 313, column: 53, scope: !1906)
!1915 = !DILocation(line: 313, column: 73, scope: !1906)
!1916 = !DILocation(line: 315, column: 2, scope: !1906)
!1917 = !DILocation(line: 315, column: 17, scope: !1906)
!1918 = !DILocation(line: 315, column: 24, scope: !1906)
!1919 = !DILocation(line: 315, column: 32, scope: !1906)
!1920 = !DILocation(line: 316, column: 2, scope: !1906)
!1921 = !DILocation(line: 316, column: 6, scope: !1906)
!1922 = !DILocation(line: 318, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 318, column: 6)
!1924 = !DILocation(line: 318, column: 6, scope: !1906)
!1925 = !DILocation(line: 319, column: 3, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 319, column: 3)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !2, line: 318, column: 16)
!1928 = !DILocation(line: 319, column: 3, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 319, column: 3)
!1930 = !DILocation(line: 320, column: 3, scope: !1927)
!1931 = !DILocation(line: 323, column: 21, scope: !1906)
!1932 = !DILocation(line: 323, column: 38, scope: !1906)
!1933 = !DILocation(line: 323, column: 47, scope: !1906)
!1934 = !DILocation(line: 323, column: 55, scope: !1906)
!1935 = !DILocation(line: 323, column: 61, scope: !1906)
!1936 = !DILocation(line: 323, column: 69, scope: !1906)
!1937 = !DILocation(line: 323, column: 8, scope: !1906)
!1938 = !DILocation(line: 323, column: 6, scope: !1906)
!1939 = !DILocation(line: 324, column: 6, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 324, column: 6)
!1941 = !DILocation(line: 324, column: 6, scope: !1906)
!1942 = !DILocation(line: 325, column: 3, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 325, column: 3)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !2, line: 324, column: 11)
!1945 = !DILocation(line: 325, column: 3, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 325, column: 3)
!1947 = !DILocation(line: 326, column: 10, scope: !1944)
!1948 = !DILocation(line: 326, column: 3, scope: !1944)
!1949 = !DILocation(line: 329, column: 19, scope: !1906)
!1950 = !DILocation(line: 329, column: 8, scope: !1906)
!1951 = !DILocation(line: 329, column: 6, scope: !1906)
!1952 = !DILocation(line: 330, column: 6, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 330, column: 6)
!1954 = !DILocation(line: 330, column: 6, scope: !1906)
!1955 = !DILocation(line: 331, column: 3, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 331, column: 3)
!1957 = !DILocation(line: 331, column: 3, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 331, column: 3)
!1959 = !DILocation(line: 331, column: 3, scope: !1953)
!1960 = !DILocation(line: 333, column: 9, scope: !1906)
!1961 = !DILocation(line: 333, column: 2, scope: !1906)
!1962 = !DILocation(line: 334, column: 1, scope: !1906)
!1963 = !DISubprogram(name: "_dev_err", scope: !1964, file: !1964, line: 50, type: !1965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1964 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !847, !134, null}
!1967 = !DISubprogram(name: "dev_set_name", scope: !48, file: !48, line: 879, type: !1968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!68, !795, !134, null}
!1970 = !DISubprogram(name: "device_add", scope: !48, file: !48, line: 1057, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1971 = distinct !DISubprogram(name: "auxiliary_find_device", scope: !2, file: !2, line: 352, type: !1972, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1977)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!123, !795, !497, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!68, !795, !497}
!1977 = !{!1978, !1979, !1980, !1981}
!1978 = !DILocalVariable(name: "start", arg: 1, scope: !1971, file: !2, line: 352, type: !795)
!1979 = !DILocalVariable(name: "data", arg: 2, scope: !1971, file: !2, line: 353, type: !497)
!1980 = !DILocalVariable(name: "match", arg: 3, scope: !1971, file: !2, line: 354, type: !1974)
!1981 = !DILocalVariable(name: "dev", scope: !1971, file: !2, line: 356, type: !795)
!1982 = !DILocation(line: 352, column: 63, scope: !1971)
!1983 = !DILocation(line: 353, column: 25, scope: !1971)
!1984 = !DILocation(line: 354, column: 19, scope: !1971)
!1985 = !DILocation(line: 356, column: 2, scope: !1971)
!1986 = !DILocation(line: 356, column: 17, scope: !1971)
!1987 = !DILocation(line: 358, column: 45, scope: !1971)
!1988 = !DILocation(line: 358, column: 52, scope: !1971)
!1989 = !DILocation(line: 358, column: 58, scope: !1971)
!1990 = !DILocation(line: 358, column: 8, scope: !1971)
!1991 = !DILocation(line: 358, column: 6, scope: !1971)
!1992 = !DILocation(line: 359, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1971, file: !2, line: 359, column: 6)
!1994 = !DILocation(line: 359, column: 6, scope: !1971)
!1995 = !DILocation(line: 360, column: 3, scope: !1993)
!1996 = !DILocation(line: 362, column: 26, scope: !1971)
!1997 = !DILocation(line: 362, column: 9, scope: !1971)
!1998 = !DILocation(line: 362, column: 2, scope: !1971)
!1999 = !DILocation(line: 363, column: 1, scope: !1971)
!2000 = !DISubprogram(name: "bus_find_device", scope: !832, file: !832, line: 146, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!795, !829, !795, !497, !1974}
!2003 = distinct !DISubprogram(name: "to_auxiliary_dev", scope: !117, file: !117, line: 201, type: !2004, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!123, !795}
!2006 = !{!2007, !2008}
!2007 = !DILocalVariable(name: "dev", arg: 1, scope: !2003, file: !117, line: 201, type: !795)
!2008 = !DILocalVariable(name: "__mptr", scope: !2009, file: !117, line: 203, type: !112)
!2009 = distinct !DILexicalBlock(scope: !2003, file: !117, line: 203, column: 9)
!2010 = !DILocation(line: 201, column: 72, scope: !2003)
!2011 = !DILocation(line: 203, column: 9, scope: !2009)
!2012 = !DILocation(line: 203, column: 9, scope: !2003)
!2013 = !DILocation(line: 203, column: 2, scope: !2003)
!2014 = distinct !DISubprogram(name: "__auxiliary_driver_register", scope: !2, file: !2, line: 377, type: !2015, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!68, !115, !907, !134}
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2025, !2028, !2030}
!2018 = !DILocalVariable(name: "auxdrv", arg: 1, scope: !2014, file: !2, line: 377, type: !115)
!2019 = !DILocalVariable(name: "owner", arg: 2, scope: !2014, file: !2, line: 378, type: !907)
!2020 = !DILocalVariable(name: "modname", arg: 3, scope: !2014, file: !2, line: 378, type: !134)
!2021 = !DILocalVariable(name: "ret", scope: !2014, file: !2, line: 380, type: !68)
!2022 = !DILocalVariable(name: "__ret_warn_on", scope: !2023, file: !2, line: 382, type: !68)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !2, line: 382, column: 6)
!2024 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 382, column: 6)
!2025 = !DILocalVariable(name: "__flags", scope: !2026, file: !2, line: 382, type: !68)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !2, line: 382, column: 6)
!2027 = distinct !DILexicalBlock(scope: !2023, file: !2, line: 382, column: 6)
!2028 = !DILocalVariable(name: "__ret_warn_on", scope: !2029, file: !2, line: 382, type: !68)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !2, line: 382, column: 33)
!2030 = !DILocalVariable(name: "__flags", scope: !2031, file: !2, line: 382, type: !68)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 382, column: 33)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 382, column: 33)
!2033 = !DILocation(line: 377, column: 58, scope: !2014)
!2034 = !DILocation(line: 378, column: 20, scope: !2014)
!2035 = !DILocation(line: 378, column: 39, scope: !2014)
!2036 = !DILocation(line: 380, column: 2, scope: !2014)
!2037 = !DILocation(line: 380, column: 6, scope: !2014)
!2038 = !DILocation(line: 382, column: 6, scope: !2023)
!2039 = !DILocation(line: 382, column: 6, scope: !2027)
!2040 = !DILocation(line: 382, column: 6, scope: !2026)
!2041 = !DILocation(line: 382, column: 6, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 382, column: 6)
!2043 = !DILocation(line: 382, column: 6, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 382, column: 6)
!2045 = !{i64 2152892188, i64 2152892217, i64 2152892263, i64 2152892321, i64 2152892375, i64 2152892429, i64 2152892484, i64 2152892515, i64 2152892823, i64 2152892829, i64 2152892876, i64 2152892899, i64 2152892925}
!2046 = !DILocation(line: 382, column: 6, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 382, column: 6)
!2048 = !DILocation(line: 382, column: 6, scope: !2024)
!2049 = !DILocation(line: 382, column: 30, scope: !2024)
!2050 = !DILocation(line: 382, column: 33, scope: !2029)
!2051 = !DILocation(line: 382, column: 33, scope: !2032)
!2052 = !DILocation(line: 382, column: 33, scope: !2031)
!2053 = !DILocation(line: 382, column: 33, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 382, column: 33)
!2055 = !DILocation(line: 382, column: 33, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 382, column: 33)
!2057 = !{i64 2152893693, i64 2152893722, i64 2152893768, i64 2152893826, i64 2152893880, i64 2152893934, i64 2152893989, i64 2152894020, i64 2152894328, i64 2152894334, i64 2152894381, i64 2152894404, i64 2152894430}
!2058 = !DILocation(line: 382, column: 33, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 382, column: 33)
!2060 = !DILocation(line: 382, column: 33, scope: !2024)
!2061 = !DILocation(line: 382, column: 6, scope: !2014)
!2062 = !DILocation(line: 383, column: 3, scope: !2024)
!2063 = !DILocation(line: 385, column: 6, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 385, column: 6)
!2065 = !DILocation(line: 385, column: 14, scope: !2064)
!2066 = !DILocation(line: 385, column: 6, scope: !2014)
!2067 = !DILocation(line: 386, column: 56, scope: !2064)
!2068 = !DILocation(line: 387, column: 7, scope: !2064)
!2069 = !DILocation(line: 387, column: 15, scope: !2064)
!2070 = !DILocation(line: 386, column: 25, scope: !2064)
!2071 = !DILocation(line: 386, column: 3, scope: !2064)
!2072 = !DILocation(line: 386, column: 11, scope: !2064)
!2073 = !DILocation(line: 386, column: 18, scope: !2064)
!2074 = !DILocation(line: 386, column: 23, scope: !2064)
!2075 = !DILocation(line: 389, column: 53, scope: !2064)
!2076 = !DILocation(line: 389, column: 25, scope: !2064)
!2077 = !DILocation(line: 389, column: 3, scope: !2064)
!2078 = !DILocation(line: 389, column: 11, scope: !2064)
!2079 = !DILocation(line: 389, column: 18, scope: !2064)
!2080 = !DILocation(line: 389, column: 23, scope: !2064)
!2081 = !DILocation(line: 390, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 390, column: 6)
!2083 = !DILocation(line: 390, column: 15, scope: !2082)
!2084 = !DILocation(line: 390, column: 22, scope: !2082)
!2085 = !DILocation(line: 390, column: 6, scope: !2014)
!2086 = !DILocation(line: 391, column: 3, scope: !2082)
!2087 = !DILocation(line: 393, column: 25, scope: !2014)
!2088 = !DILocation(line: 393, column: 2, scope: !2014)
!2089 = !DILocation(line: 393, column: 10, scope: !2014)
!2090 = !DILocation(line: 393, column: 17, scope: !2014)
!2091 = !DILocation(line: 393, column: 23, scope: !2014)
!2092 = !DILocation(line: 394, column: 2, scope: !2014)
!2093 = !DILocation(line: 394, column: 10, scope: !2014)
!2094 = !DILocation(line: 394, column: 17, scope: !2014)
!2095 = !DILocation(line: 394, column: 21, scope: !2014)
!2096 = !DILocation(line: 395, column: 28, scope: !2014)
!2097 = !DILocation(line: 395, column: 2, scope: !2014)
!2098 = !DILocation(line: 395, column: 10, scope: !2014)
!2099 = !DILocation(line: 395, column: 17, scope: !2014)
!2100 = !DILocation(line: 395, column: 26, scope: !2014)
!2101 = !DILocation(line: 397, column: 25, scope: !2014)
!2102 = !DILocation(line: 397, column: 33, scope: !2014)
!2103 = !DILocation(line: 397, column: 8, scope: !2014)
!2104 = !DILocation(line: 397, column: 6, scope: !2014)
!2105 = !DILocation(line: 398, column: 6, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 398, column: 6)
!2107 = !DILocation(line: 398, column: 6, scope: !2014)
!2108 = !DILocation(line: 399, column: 9, scope: !2106)
!2109 = !DILocation(line: 399, column: 17, scope: !2106)
!2110 = !DILocation(line: 399, column: 24, scope: !2106)
!2111 = !DILocation(line: 399, column: 3, scope: !2106)
!2112 = !DILocation(line: 401, column: 9, scope: !2014)
!2113 = !DILocation(line: 401, column: 2, scope: !2014)
!2114 = !DILocation(line: 402, column: 1, scope: !2014)
!2115 = !DISubprogram(name: "kasprintf", scope: !2116, file: !2116, line: 16, type: !2117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2116 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!219, !113, !134, null}
!2119 = !DISubprogram(name: "driver_register", scope: !42, file: !42, line: 125, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!68, !824}
!2122 = !DISubprogram(name: "kfree", scope: !2123, file: !2123, line: 227, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2123 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !497}
!2126 = distinct !DISubprogram(name: "auxiliary_driver_unregister", scope: !2, file: !2, line: 409, type: !2127, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !115}
!2129 = !{!2130}
!2130 = !DILocalVariable(name: "auxdrv", arg: 1, scope: !2126, file: !2, line: 409, type: !115)
!2131 = !DILocation(line: 409, column: 59, scope: !2126)
!2132 = !DILocation(line: 411, column: 21, scope: !2126)
!2133 = !DILocation(line: 411, column: 29, scope: !2126)
!2134 = !DILocation(line: 411, column: 2, scope: !2126)
!2135 = !DILocation(line: 412, column: 8, scope: !2126)
!2136 = !DILocation(line: 412, column: 16, scope: !2126)
!2137 = !DILocation(line: 412, column: 23, scope: !2126)
!2138 = !DILocation(line: 412, column: 2, scope: !2126)
!2139 = !DILocation(line: 413, column: 1, scope: !2126)
!2140 = !DISubprogram(name: "driver_unregister", scope: !42, file: !42, line: 126, type: !2141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !824}
!2143 = distinct !DISubprogram(name: "auxiliary_bus_init", scope: !2, file: !2, line: 416, type: !1281, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2144)
!2144 = !{!2145, !2147}
!2145 = !DILocalVariable(name: "__ret_warn_on", scope: !2146, file: !2, line: 418, type: !68)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !2, line: 418, column: 2)
!2147 = !DILocalVariable(name: "__flags", scope: !2148, file: !2, line: 418, type: !68)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 418, column: 2)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 418, column: 2)
!2150 = !DILocation(line: 418, column: 2, scope: !2146)
!2151 = !DILocation(line: 418, column: 2, scope: !2149)
!2152 = !DILocation(line: 418, column: 2, scope: !2148)
!2153 = !DILocation(line: 418, column: 2, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 418, column: 2)
!2155 = !DILocation(line: 418, column: 2, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 418, column: 2)
!2157 = !{i64 2152899854, i64 2152899883, i64 2152899929, i64 2152899987, i64 2152900041, i64 2152900095, i64 2152900150, i64 2152900181, i64 2152900489, i64 2152900495, i64 2152900542, i64 2152900565, i64 2152900591}
!2158 = !DILocation(line: 418, column: 2, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 418, column: 2)
!2160 = !DILocation(line: 418, column: 2, scope: !2143)
!2161 = !DILocation(line: 419, column: 1, scope: !2143)
!2162 = !DISubprogram(name: "bus_register", scope: !832, file: !832, line: 112, type: !2163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!68, !829}
!2165 = distinct !DISubprogram(name: "auxiliary_match", scope: !2, file: !2, line: 180, type: !841, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2166)
!2166 = !{!2167, !2168, !2169, !2170}
!2167 = !DILocalVariable(name: "dev", arg: 1, scope: !2165, file: !2, line: 180, type: !795)
!2168 = !DILocalVariable(name: "drv", arg: 2, scope: !2165, file: !2, line: 180, type: !824)
!2169 = !DILocalVariable(name: "auxdev", scope: !2165, file: !2, line: 182, type: !123)
!2170 = !DILocalVariable(name: "auxdrv", scope: !2165, file: !2, line: 183, type: !115)
!2171 = !DILocation(line: 180, column: 43, scope: !2165)
!2172 = !DILocation(line: 180, column: 70, scope: !2165)
!2173 = !DILocation(line: 182, column: 2, scope: !2165)
!2174 = !DILocation(line: 182, column: 27, scope: !2165)
!2175 = !DILocation(line: 182, column: 53, scope: !2165)
!2176 = !DILocation(line: 182, column: 36, scope: !2165)
!2177 = !DILocation(line: 183, column: 2, scope: !2165)
!2178 = !DILocation(line: 183, column: 27, scope: !2165)
!2179 = !DILocation(line: 183, column: 53, scope: !2165)
!2180 = !DILocation(line: 183, column: 36, scope: !2165)
!2181 = !DILocation(line: 185, column: 30, scope: !2165)
!2182 = !DILocation(line: 185, column: 38, scope: !2165)
!2183 = !DILocation(line: 185, column: 48, scope: !2165)
!2184 = !DILocation(line: 185, column: 11, scope: !2165)
!2185 = !DILocation(line: 185, column: 10, scope: !2165)
!2186 = !DILocation(line: 185, column: 9, scope: !2165)
!2187 = !DILocation(line: 186, column: 1, scope: !2165)
!2188 = !DILocation(line: 185, column: 2, scope: !2165)
!2189 = distinct !DISubprogram(name: "auxiliary_uevent", scope: !2, file: !2, line: 188, type: !845, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2190)
!2190 = !{!2191, !2192, !2193, !2194}
!2191 = !DILocalVariable(name: "dev", arg: 1, scope: !2189, file: !2, line: 188, type: !847)
!2192 = !DILocalVariable(name: "env", arg: 2, scope: !2189, file: !2, line: 188, type: !214)
!2193 = !DILocalVariable(name: "name", scope: !2189, file: !2, line: 190, type: !134)
!2194 = !DILocalVariable(name: "p", scope: !2189, file: !2, line: 190, type: !134)
!2195 = !DILocation(line: 188, column: 50, scope: !2189)
!2196 = !DILocation(line: 188, column: 79, scope: !2189)
!2197 = !DILocation(line: 190, column: 2, scope: !2189)
!2198 = !DILocation(line: 190, column: 14, scope: !2189)
!2199 = !DILocation(line: 190, column: 21, scope: !2189)
!2200 = !DILocation(line: 192, column: 18, scope: !2189)
!2201 = !DILocation(line: 192, column: 9, scope: !2189)
!2202 = !DILocation(line: 192, column: 7, scope: !2189)
!2203 = !DILocation(line: 193, column: 14, scope: !2189)
!2204 = !DILocation(line: 193, column: 6, scope: !2189)
!2205 = !DILocation(line: 193, column: 4, scope: !2189)
!2206 = !DILocation(line: 195, column: 24, scope: !2189)
!2207 = !DILocation(line: 196, column: 16, scope: !2189)
!2208 = !DILocation(line: 196, column: 20, scope: !2189)
!2209 = !DILocation(line: 196, column: 18, scope: !2189)
!2210 = !DILocation(line: 196, column: 10, scope: !2189)
!2211 = !DILocation(line: 196, column: 27, scope: !2189)
!2212 = !DILocation(line: 195, column: 9, scope: !2189)
!2213 = !DILocation(line: 197, column: 1, scope: !2189)
!2214 = !DILocation(line: 195, column: 2, scope: !2189)
!2215 = distinct !DISubprogram(name: "auxiliary_bus_probe", scope: !2, file: !2, line: 204, type: !851, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2216)
!2216 = !{!2217, !2218, !2219, !2220}
!2217 = !DILocalVariable(name: "dev", arg: 1, scope: !2215, file: !2, line: 204, type: !795)
!2218 = !DILocalVariable(name: "auxdrv", scope: !2215, file: !2, line: 206, type: !115)
!2219 = !DILocalVariable(name: "auxdev", scope: !2215, file: !2, line: 207, type: !123)
!2220 = !DILocalVariable(name: "ret", scope: !2215, file: !2, line: 208, type: !68)
!2221 = !DILocation(line: 204, column: 47, scope: !2215)
!2222 = !DILocation(line: 206, column: 2, scope: !2215)
!2223 = !DILocation(line: 206, column: 27, scope: !2215)
!2224 = !DILocation(line: 206, column: 53, scope: !2215)
!2225 = !DILocation(line: 206, column: 58, scope: !2215)
!2226 = !DILocation(line: 206, column: 36, scope: !2215)
!2227 = !DILocation(line: 207, column: 2, scope: !2215)
!2228 = !DILocation(line: 207, column: 27, scope: !2215)
!2229 = !DILocation(line: 207, column: 53, scope: !2215)
!2230 = !DILocation(line: 207, column: 36, scope: !2215)
!2231 = !DILocation(line: 208, column: 2, scope: !2215)
!2232 = !DILocation(line: 208, column: 6, scope: !2215)
!2233 = !DILocation(line: 210, column: 29, scope: !2215)
!2234 = !DILocation(line: 210, column: 8, scope: !2215)
!2235 = !DILocation(line: 210, column: 6, scope: !2215)
!2236 = !DILocation(line: 211, column: 6, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 211, column: 6)
!2238 = !DILocation(line: 211, column: 6, scope: !2215)
!2239 = !DILocation(line: 212, column: 3, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 212, column: 3)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 211, column: 11)
!2242 = !DILocation(line: 212, column: 3, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2240, file: !2, line: 212, column: 3)
!2244 = !DILocation(line: 213, column: 10, scope: !2241)
!2245 = !DILocation(line: 213, column: 3, scope: !2241)
!2246 = !DILocation(line: 216, column: 8, scope: !2215)
!2247 = !DILocation(line: 216, column: 16, scope: !2215)
!2248 = !DILocation(line: 216, column: 22, scope: !2215)
!2249 = !DILocation(line: 216, column: 49, scope: !2215)
!2250 = !DILocation(line: 216, column: 57, scope: !2215)
!2251 = !DILocation(line: 216, column: 67, scope: !2215)
!2252 = !DILocation(line: 216, column: 30, scope: !2215)
!2253 = !DILocation(line: 216, column: 6, scope: !2215)
!2254 = !DILocation(line: 217, column: 6, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 217, column: 6)
!2256 = !DILocation(line: 217, column: 6, scope: !2215)
!2257 = !DILocation(line: 218, column: 24, scope: !2255)
!2258 = !DILocation(line: 218, column: 3, scope: !2255)
!2259 = !DILocation(line: 220, column: 9, scope: !2215)
!2260 = !DILocation(line: 220, column: 2, scope: !2215)
!2261 = !DILocation(line: 221, column: 1, scope: !2215)
!2262 = distinct !DISubprogram(name: "auxiliary_bus_remove", scope: !2, file: !2, line: 223, type: !855, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2263)
!2263 = !{!2264, !2265, !2266}
!2264 = !DILocalVariable(name: "dev", arg: 1, scope: !2262, file: !2, line: 223, type: !795)
!2265 = !DILocalVariable(name: "auxdrv", scope: !2262, file: !2, line: 225, type: !115)
!2266 = !DILocalVariable(name: "auxdev", scope: !2262, file: !2, line: 226, type: !123)
!2267 = !DILocation(line: 223, column: 49, scope: !2262)
!2268 = !DILocation(line: 225, column: 2, scope: !2262)
!2269 = !DILocation(line: 225, column: 27, scope: !2262)
!2270 = !DILocation(line: 225, column: 53, scope: !2262)
!2271 = !DILocation(line: 225, column: 58, scope: !2262)
!2272 = !DILocation(line: 225, column: 36, scope: !2262)
!2273 = !DILocation(line: 226, column: 2, scope: !2262)
!2274 = !DILocation(line: 226, column: 27, scope: !2262)
!2275 = !DILocation(line: 226, column: 53, scope: !2262)
!2276 = !DILocation(line: 226, column: 36, scope: !2262)
!2277 = !DILocation(line: 228, column: 6, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 228, column: 6)
!2279 = !DILocation(line: 228, column: 14, scope: !2278)
!2280 = !DILocation(line: 228, column: 6, scope: !2262)
!2281 = !DILocation(line: 229, column: 3, scope: !2278)
!2282 = !DILocation(line: 229, column: 11, scope: !2278)
!2283 = !DILocation(line: 229, column: 18, scope: !2278)
!2284 = !DILocation(line: 230, column: 23, scope: !2262)
!2285 = !DILocation(line: 230, column: 2, scope: !2262)
!2286 = !DILocation(line: 231, column: 1, scope: !2262)
!2287 = distinct !DISubprogram(name: "auxiliary_bus_shutdown", scope: !2, file: !2, line: 233, type: !855, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2288)
!2288 = !{!2289, !2290, !2291}
!2289 = !DILocalVariable(name: "dev", arg: 1, scope: !2287, file: !2, line: 233, type: !795)
!2290 = !DILocalVariable(name: "auxdrv", scope: !2287, file: !2, line: 235, type: !115)
!2291 = !DILocalVariable(name: "auxdev", scope: !2287, file: !2, line: 236, type: !123)
!2292 = !DILocation(line: 233, column: 51, scope: !2287)
!2293 = !DILocation(line: 235, column: 2, scope: !2287)
!2294 = !DILocation(line: 235, column: 27, scope: !2287)
!2295 = !DILocation(line: 236, column: 2, scope: !2287)
!2296 = !DILocation(line: 236, column: 27, scope: !2287)
!2297 = !DILocation(line: 238, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 238, column: 6)
!2299 = !DILocation(line: 238, column: 11, scope: !2298)
!2300 = !DILocation(line: 238, column: 6, scope: !2287)
!2301 = !DILocation(line: 239, column: 29, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 238, column: 19)
!2303 = !DILocation(line: 239, column: 34, scope: !2302)
!2304 = !DILocation(line: 239, column: 12, scope: !2302)
!2305 = !DILocation(line: 239, column: 10, scope: !2302)
!2306 = !DILocation(line: 240, column: 29, scope: !2302)
!2307 = !DILocation(line: 240, column: 12, scope: !2302)
!2308 = !DILocation(line: 240, column: 10, scope: !2302)
!2309 = !DILocation(line: 241, column: 2, scope: !2302)
!2310 = !DILocation(line: 243, column: 6, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 243, column: 6)
!2312 = !DILocation(line: 243, column: 13, scope: !2311)
!2313 = !DILocation(line: 243, column: 16, scope: !2311)
!2314 = !DILocation(line: 243, column: 24, scope: !2311)
!2315 = !DILocation(line: 243, column: 6, scope: !2287)
!2316 = !DILocation(line: 244, column: 3, scope: !2311)
!2317 = !DILocation(line: 244, column: 11, scope: !2311)
!2318 = !DILocation(line: 244, column: 20, scope: !2311)
!2319 = !DILocation(line: 245, column: 1, scope: !2287)
!2320 = distinct !DISubprogram(name: "to_auxiliary_drv", scope: !117, file: !117, line: 206, type: !2321, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!115, !824}
!2323 = !{!2324, !2325}
!2324 = !DILocalVariable(name: "drv", arg: 1, scope: !2320, file: !117, line: 206, type: !824)
!2325 = !DILocalVariable(name: "__mptr", scope: !2326, file: !117, line: 208, type: !112)
!2326 = distinct !DILexicalBlock(scope: !2320, file: !117, line: 208, column: 9)
!2327 = !DILocation(line: 206, column: 79, scope: !2320)
!2328 = !DILocation(line: 208, column: 9, scope: !2326)
!2329 = !DILocation(line: 208, column: 9, scope: !2320)
!2330 = !DILocation(line: 208, column: 2, scope: !2320)
!2331 = distinct !DISubprogram(name: "auxiliary_match_id", scope: !2, file: !2, line: 161, type: !2332, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2336)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!1774, !1774, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!2336 = !{!2337, !2338, !2339, !2343}
!2337 = !DILocalVariable(name: "id", arg: 1, scope: !2331, file: !2, line: 161, type: !1774)
!2338 = !DILocalVariable(name: "auxdev", arg: 2, scope: !2331, file: !2, line: 162, type: !2334)
!2339 = !DILocalVariable(name: "p", scope: !2340, file: !2, line: 165, type: !134)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !2, line: 164, column: 28)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !2, line: 164, column: 2)
!2342 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 164, column: 2)
!2343 = !DILocalVariable(name: "match_size", scope: !2340, file: !2, line: 166, type: !68)
!2344 = !DILocation(line: 161, column: 95, scope: !2331)
!2345 = !DILocation(line: 162, column: 43, scope: !2331)
!2346 = !DILocation(line: 164, column: 2, scope: !2331)
!2347 = !DILocation(line: 164, column: 9, scope: !2341)
!2348 = !DILocation(line: 164, column: 13, scope: !2341)
!2349 = !DILocation(line: 164, column: 2, scope: !2342)
!2350 = !DILocation(line: 165, column: 3, scope: !2340)
!2351 = !DILocation(line: 165, column: 15, scope: !2340)
!2352 = !DILocation(line: 165, column: 37, scope: !2340)
!2353 = !DILocation(line: 165, column: 45, scope: !2340)
!2354 = !DILocation(line: 165, column: 27, scope: !2340)
!2355 = !DILocation(line: 165, column: 19, scope: !2340)
!2356 = !DILocation(line: 166, column: 3, scope: !2340)
!2357 = !DILocation(line: 166, column: 7, scope: !2340)
!2358 = !DILocation(line: 168, column: 8, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2340, file: !2, line: 168, column: 7)
!2360 = !DILocation(line: 168, column: 7, scope: !2340)
!2361 = !DILocation(line: 169, column: 4, scope: !2359)
!2362 = !DILocation(line: 170, column: 16, scope: !2340)
!2363 = !DILocation(line: 170, column: 30, scope: !2340)
!2364 = !DILocation(line: 170, column: 38, scope: !2340)
!2365 = !DILocation(line: 170, column: 20, scope: !2340)
!2366 = !DILocation(line: 170, column: 18, scope: !2340)
!2367 = !DILocation(line: 170, column: 14, scope: !2340)
!2368 = !DILocation(line: 173, column: 14, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2340, file: !2, line: 173, column: 7)
!2370 = !DILocation(line: 173, column: 18, scope: !2369)
!2371 = !DILocation(line: 173, column: 7, scope: !2369)
!2372 = !DILocation(line: 173, column: 27, scope: !2369)
!2373 = !DILocation(line: 173, column: 24, scope: !2369)
!2374 = !DILocation(line: 173, column: 38, scope: !2369)
!2375 = !DILocation(line: 174, column: 26, scope: !2369)
!2376 = !DILocation(line: 174, column: 34, scope: !2369)
!2377 = !DILocation(line: 174, column: 16, scope: !2369)
!2378 = !DILocation(line: 174, column: 40, scope: !2369)
!2379 = !DILocation(line: 174, column: 44, scope: !2369)
!2380 = !DILocation(line: 174, column: 50, scope: !2369)
!2381 = !DILocation(line: 174, column: 8, scope: !2369)
!2382 = !DILocation(line: 173, column: 7, scope: !2340)
!2383 = !DILocation(line: 175, column: 11, scope: !2369)
!2384 = !DILocation(line: 175, column: 4, scope: !2369)
!2385 = !DILocation(line: 176, column: 2, scope: !2341)
!2386 = !DILocation(line: 176, column: 2, scope: !2340)
!2387 = !DILocation(line: 164, column: 24, scope: !2341)
!2388 = !DILocation(line: 164, column: 2, scope: !2341)
!2389 = distinct !{!2389, !2349, !2390, !2391, !2392}
!2390 = !DILocation(line: 176, column: 2, scope: !2342)
!2391 = !{!"llvm.loop.mustprogress"}
!2392 = !{!"llvm.loop.unroll.disable"}
!2393 = !DILocation(line: 177, column: 2, scope: !2331)
!2394 = !DILocation(line: 178, column: 1, scope: !2331)
!2395 = !DISubprogram(name: "strrchr", scope: !2396, file: !2396, line: 110, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2396 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!219, !134, !68}
!2399 = distinct !DISubprogram(name: "dev_name", scope: !48, file: !48, line: 858, type: !2400, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!134, !847}
!2402 = !{!2403}
!2403 = !DILocalVariable(name: "dev", arg: 1, scope: !2399, file: !48, line: 858, type: !847)
!2404 = !DILocation(line: 858, column: 57, scope: !2399)
!2405 = !DILocation(line: 861, column: 6, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2399, file: !48, line: 861, column: 6)
!2407 = !DILocation(line: 861, column: 11, scope: !2406)
!2408 = !DILocation(line: 861, column: 6, scope: !2399)
!2409 = !DILocation(line: 862, column: 10, scope: !2406)
!2410 = !DILocation(line: 862, column: 15, scope: !2406)
!2411 = !DILocation(line: 862, column: 3, scope: !2406)
!2412 = !DILocation(line: 864, column: 23, scope: !2399)
!2413 = !DILocation(line: 864, column: 28, scope: !2399)
!2414 = !DILocation(line: 864, column: 9, scope: !2399)
!2415 = !DILocation(line: 864, column: 2, scope: !2399)
!2416 = !DILocation(line: 865, column: 1, scope: !2399)
!2417 = !DISubprogram(name: "strlen", scope: !2396, file: !2396, line: 128, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!269, !134}
!2420 = !DISubprogram(name: "strncmp", scope: !2396, file: !2396, line: 91, type: !2421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!68, !134, !134, !267}
!2423 = distinct !DISubprogram(name: "kobject_name", scope: !131, file: !131, line: 87, type: !207, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !2424)
!2424 = !{!2425}
!2425 = !DILocalVariable(name: "kobj", arg: 1, scope: !2423, file: !131, line: 87, type: !202)
!2426 = !DILocation(line: 87, column: 62, scope: !2423)
!2427 = !DILocation(line: 89, column: 9, scope: !2423)
!2428 = !DILocation(line: 89, column: 15, scope: !2423)
!2429 = !DILocation(line: 89, column: 2, scope: !2423)
!2430 = !DISubprogram(name: "add_uevent_var", scope: !131, file: !131, line: 220, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!68, !214, !134, null}
!2433 = !DISubprogram(name: "dev_pm_domain_attach", scope: !2434, file: !2434, line: 425, type: !2435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2434 = !DIFile(filename: "./include/linux/pm_domain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b941e44fcc9ec96a433ceb91a0ad979e")
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!68, !795, !576}
!2437 = !DISubprogram(name: "_dev_warn", scope: !1964, file: !1964, line: 52, type: !1965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2438 = !DISubprogram(name: "dev_pm_domain_detach", scope: !2434, file: !2434, line: 430, type: !1544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
