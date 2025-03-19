; ModuleID = 'drivers/pnp/system.c'
source_filename = "drivers/pnp/system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init..kmod_pnp__207_113_pnp_system_init\22, \22a\22\09\09"
module asm "__initcall__kmod_pnp__207_113_pnp_system_init5:\09\09\09"
module asm ".long\09__initstub__kmod_pnp__207_113_pnp_system_init5 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.pnp_driver = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, ptr, ptr }
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

@__UNIQUE_ID___addressable___initstub__kmod_pnp__207_113_pnp_system_init5208 = internal global ptr @__initstub__kmod_pnp__207_113_pnp_system_init5, section ".discard.addressable", align 8, !dbg !0
@system_pnp_driver = internal global %struct.pnp_driver { ptr @.str, ptr @pnp_dev_table, i32 1, ptr @system_pnp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, align 8, !dbg !105
@.str = private unnamed_addr constant [7 x i8] c"system\00", align 1, !dbg !99
@pnp_dev_table = internal constant [3 x %struct.pnp_device_id] [%struct.pnp_device_id { [8 x i8] c"PNP0c02\00", i64 0 }, %struct.pnp_device_id { [8 x i8] c"PNP0c01\00", i64 0 }, %struct.pnp_device_id zeroinitializer], align 16, !dbg !1740
@.str.1 = private unnamed_addr constant [7 x i8] c"pnp %s\00", align 1, !dbg !1743
@ioport_resource = external dso_local global %struct.resource, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"%pR %s reserved\0A\00", align 1, !dbg !1745
@.str.3 = private unnamed_addr constant [9 x i8] c"has been\00", align 1, !dbg !1750
@.str.4 = private unnamed_addr constant [13 x i8] c"could not be\00", align 1, !dbg !1755
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1760
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_pnp__207_113_pnp_system_init5208], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pnp__207_113_pnp_system_init5() #0 section ".init.text" align 16 !dbg !1774 {
entry:
  %call = call i32 @pnp_system_init() #14, !dbg !1775
  ret i32 %call, !dbg !1775
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pnp_system_init() #0 section ".init.text" align 16 !dbg !1776 {
entry:
  %call = call i32 @pnp_register_driver(ptr noundef @system_pnp_driver) #15, !dbg !1777
  ret i32 %call, !dbg !1778
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1779 dso_local i32 @pnp_register_driver(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @system_pnp_probe(ptr noundef %dev, ptr noundef %dev_id) #2 align 16 !dbg !1782 {
entry:
  %dev.addr = alloca ptr, align 8
  %dev_id.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1784, metadata !DIExpression()), !dbg !1786
  store ptr %dev_id, ptr %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !1785, metadata !DIExpression()), !dbg !1787
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1788
  call void @reserve_resources_of_dev(ptr noundef %0) #15, !dbg !1789
  ret i32 0, !dbg !1790
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reserve_resources_of_dev(ptr noundef %dev) #2 align 16 !dbg !1791 {
entry:
  %dev.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1793, metadata !DIExpression()), !dbg !1810
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !1811
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1794, metadata !DIExpression()), !dbg !1812
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !1813
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1809, metadata !DIExpression()), !dbg !1814
  store i32 0, ptr %i, align 4, !dbg !1815
  br label %for.cond, !dbg !1817

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1818
  %1 = load i32, ptr %i, align 4, !dbg !1820
  %call = call ptr @pnp_get_resource(ptr noundef %0, i64 noundef 256, i32 noundef %1) #15, !dbg !1821
  store ptr %call, ptr %res, align 8, !dbg !1822
  %tobool = icmp ne ptr %call, null, !dbg !1823
  br i1 %tobool, label %for.body, label %for.end, !dbg !1823

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %res, align 8, !dbg !1824
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3, !dbg !1827
  %3 = load i64, ptr %flags, align 8, !dbg !1827
  %and = and i64 %3, 268435456, !dbg !1828
  %tobool1 = icmp ne i64 %and, 0, !dbg !1828
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1829

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1830

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %res, align 8, !dbg !1831
  %start = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 0, !dbg !1833
  %5 = load i64, ptr %start, align 8, !dbg !1833
  %cmp = icmp eq i64 %5, 0, !dbg !1834
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1835

if.then2:                                         ; preds = %if.end
  br label %for.inc, !dbg !1836

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %res, align 8, !dbg !1837
  %start4 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 0, !dbg !1839
  %7 = load i64, ptr %start4, align 8, !dbg !1839
  %cmp5 = icmp ult i64 %7, 256, !dbg !1840
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1841

if.then6:                                         ; preds = %if.end3
  br label %for.inc, !dbg !1842

if.end7:                                          ; preds = %if.end3
  %8 = load ptr, ptr %res, align 8, !dbg !1843
  %end = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1, !dbg !1845
  %9 = load i64, ptr %end, align 8, !dbg !1845
  %10 = load ptr, ptr %res, align 8, !dbg !1846
  %start8 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 0, !dbg !1847
  %11 = load i64, ptr %start8, align 8, !dbg !1847
  %cmp9 = icmp ult i64 %9, %11, !dbg !1848
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1849

if.then10:                                        ; preds = %if.end7
  br label %for.inc, !dbg !1850

if.end11:                                         ; preds = %if.end7
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !1851
  %13 = load ptr, ptr %res, align 8, !dbg !1852
  call void @reserve_range(ptr noundef %12, ptr noundef %13, i32 noundef 1) #15, !dbg !1853
  br label %for.inc, !dbg !1854

for.inc:                                          ; preds = %if.end11, %if.then10, %if.then6, %if.then2, %if.then
  %14 = load i32, ptr %i, align 4, !dbg !1855
  %inc = add i32 %14, 1, !dbg !1855
  store i32 %inc, ptr %i, align 4, !dbg !1855
  br label %for.cond, !dbg !1856, !llvm.loop !1857

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1861
  br label %for.cond12, !dbg !1863

for.cond12:                                       ; preds = %for.inc21, %for.end
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !1864
  %16 = load i32, ptr %i, align 4, !dbg !1866
  %call13 = call ptr @pnp_get_resource(ptr noundef %15, i64 noundef 512, i32 noundef %16) #15, !dbg !1867
  store ptr %call13, ptr %res, align 8, !dbg !1868
  %tobool14 = icmp ne ptr %call13, null, !dbg !1869
  br i1 %tobool14, label %for.body15, label %for.end23, !dbg !1869

for.body15:                                       ; preds = %for.cond12
  %17 = load ptr, ptr %res, align 8, !dbg !1870
  %flags16 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 3, !dbg !1873
  %18 = load i64, ptr %flags16, align 8, !dbg !1873
  %and17 = and i64 %18, 268435456, !dbg !1874
  %tobool18 = icmp ne i64 %and17, 0, !dbg !1874
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1875

if.then19:                                        ; preds = %for.body15
  br label %for.inc21, !dbg !1876

if.end20:                                         ; preds = %for.body15
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !1877
  %20 = load ptr, ptr %res, align 8, !dbg !1878
  call void @reserve_range(ptr noundef %19, ptr noundef %20, i32 noundef 0) #15, !dbg !1879
  br label %for.inc21, !dbg !1880

for.inc21:                                        ; preds = %if.end20, %if.then19
  %21 = load i32, ptr %i, align 4, !dbg !1881
  %inc22 = add i32 %21, 1, !dbg !1881
  store i32 %inc22, ptr %i, align 4, !dbg !1881
  br label %for.cond12, !dbg !1882, !llvm.loop !1883

for.end23:                                        ; preds = %for.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !1885
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !1885
  ret void, !dbg !1885
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1886 dso_local ptr @pnp_get_resource(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reserve_range(ptr noundef %dev, ptr noundef %r, i32 noundef %port) #2 align 16 !dbg !1889 {
entry:
  %dev.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %regionid = alloca ptr, align 8
  %pnpid = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1893, metadata !DIExpression()), !dbg !1901
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1894, metadata !DIExpression()), !dbg !1902
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1895, metadata !DIExpression()), !dbg !1903
  call void @llvm.lifetime.start.p0(i64 8, ptr %regionid) #16, !dbg !1904
  call void @llvm.dbg.declare(metadata ptr %regionid, metadata !1896, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnpid) #16, !dbg !1906
  call void @llvm.dbg.declare(metadata ptr %pnpid, metadata !1897, metadata !DIExpression()), !dbg !1907
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1908
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 0, !dbg !1909
  %call = call ptr @dev_name(ptr noundef %dev1) #15, !dbg !1910
  store ptr %call, ptr %pnpid, align 8, !dbg !1907
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1898, metadata !DIExpression()), !dbg !1912
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1913
  %start2 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 0, !dbg !1914
  %2 = load i64, ptr %start2, align 8, !dbg !1914
  store i64 %2, ptr %start, align 8, !dbg !1912
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1899, metadata !DIExpression()), !dbg !1915
  %3 = load ptr, ptr %r.addr, align 8, !dbg !1916
  %end3 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1, !dbg !1917
  %4 = load i64, ptr %end3, align 8, !dbg !1917
  store i64 %4, ptr %end, align 8, !dbg !1915
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !1918
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1900, metadata !DIExpression()), !dbg !1919
  %call4 = call noalias ptr @kmalloc(i64 noundef 16, i32 noundef 3264) #17, !dbg !1920
  store ptr %call4, ptr %regionid, align 8, !dbg !1921
  %5 = load ptr, ptr %regionid, align 8, !dbg !1922
  %tobool = icmp ne ptr %5, null, !dbg !1922
  br i1 %tobool, label %if.end, label %if.then, !dbg !1924

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1925

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %regionid, align 8, !dbg !1926
  %7 = load ptr, ptr %pnpid, align 8, !dbg !1927
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %6, i64 noundef 16, ptr noundef @.str.1, ptr noundef %7) #15, !dbg !1928
  %8 = load i32, ptr %port.addr, align 4, !dbg !1929
  %tobool6 = icmp ne i32 %8, 0, !dbg !1929
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !1931

if.then7:                                         ; preds = %if.end
  %9 = load i64, ptr %start, align 8, !dbg !1932
  %10 = load i64, ptr %end, align 8, !dbg !1932
  %11 = load i64, ptr %start, align 8, !dbg !1932
  %sub = sub i64 %10, %11, !dbg !1932
  %add = add i64 %sub, 1, !dbg !1932
  %12 = load ptr, ptr %regionid, align 8, !dbg !1932
  %call8 = call ptr @__request_region(ptr noundef @ioport_resource, i64 noundef %9, i64 noundef %add, ptr noundef %12, i32 noundef 0) #15, !dbg !1932
  store ptr %call8, ptr %res, align 8, !dbg !1933
  br label %if.end12, !dbg !1934

if.else:                                          ; preds = %if.end
  %13 = load i64, ptr %start, align 8, !dbg !1935
  %14 = load i64, ptr %end, align 8, !dbg !1935
  %15 = load i64, ptr %start, align 8, !dbg !1935
  %sub9 = sub i64 %14, %15, !dbg !1935
  %add10 = add i64 %sub9, 1, !dbg !1935
  %16 = load ptr, ptr %regionid, align 8, !dbg !1935
  %call11 = call ptr @__request_region(ptr noundef @iomem_resource, i64 noundef %13, i64 noundef %add10, ptr noundef %16, i32 noundef 0) #15, !dbg !1935
  store ptr %call11, ptr %res, align 8, !dbg !1936
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %17 = load ptr, ptr %res, align 8, !dbg !1937
  %tobool13 = icmp ne ptr %17, null, !dbg !1937
  br i1 %tobool13, label %if.then14, label %if.else15, !dbg !1939

if.then14:                                        ; preds = %if.end12
  %18 = load ptr, ptr %res, align 8, !dbg !1940
  %flags = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 3, !dbg !1941
  %19 = load i64, ptr %flags, align 8, !dbg !1942
  %and = and i64 %19, 2147483647, !dbg !1942
  store i64 %and, ptr %flags, align 8, !dbg !1942
  br label %if.end16, !dbg !1940

if.else15:                                        ; preds = %if.end12
  %20 = load ptr, ptr %regionid, align 8, !dbg !1943
  call void @kfree(ptr noundef %20) #15, !dbg !1944
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  br label %do.body, !dbg !1945

do.body:                                          ; preds = %if.end16
  br label %do.cond, !dbg !1947

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1947

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !1945
  %dev17 = getelementptr inbounds %struct.pnp_dev, ptr %21, i32 0, i32 0, !dbg !1945
  %22 = load ptr, ptr %r.addr, align 8, !dbg !1945
  %23 = load ptr, ptr %res, align 8, !dbg !1945
  %tobool18 = icmp ne ptr %23, null, !dbg !1945
  %24 = zext i1 %tobool18 to i64, !dbg !1945
  %cond = select i1 %tobool18, ptr @.str.3, ptr @.str.4, !dbg !1945
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef @.str.2, ptr noundef %22, ptr noundef %cond) #14, !dbg !1945
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1949
  br label %cleanup, !dbg !1949

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !1949
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !1949
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !1949
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnpid) #16, !dbg !1949
  call void @llvm.lifetime.end.p0(i64 8, ptr %regionid) #16, !dbg !1949
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1949

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !1950 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1954, metadata !DIExpression()), !dbg !1955
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1956
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !1958
  %1 = load ptr, ptr %init_name, align 8, !dbg !1958
  %tobool = icmp ne ptr %1, null, !dbg !1956
  br i1 %tobool, label %if.then, label %if.end, !dbg !1959

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1960
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !1961
  %3 = load ptr, ptr %init_name1, align 8, !dbg !1961
  store ptr %3, ptr %retval, align 8, !dbg !1962
  br label %return, !dbg !1962

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !1963
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !1964
  %call = call ptr @kobject_name(ptr noundef %kobj) #15, !dbg !1965
  store ptr %call, ptr %retval, align 8, !dbg !1966
  br label %return, !dbg !1966

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !1967
  ret ptr %5, !dbg !1967
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1968 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1972, metadata !DIExpression()), !dbg !1977
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1973, metadata !DIExpression()), !dbg !1978
  %0 = load i64, ptr %size.addr, align 8, !dbg !1979
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1980
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1981

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1982
  %tobool = icmp ne i64 %2, 0, !dbg !1982
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1983

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !1984
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1974, metadata !DIExpression()), !dbg !1985
  %3 = load i64, ptr %size.addr, align 8, !dbg !1986
  %cmp = icmp ugt i64 %3, 8192, !dbg !1988
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1989

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1990
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1991
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !1992
  store ptr %call, ptr %retval, align 8, !dbg !1993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1993

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1994
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1994
  store i32 %call2, ptr %index, align 4, !dbg !1995
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1996
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1997
  %9 = ptrtoint ptr %8 to i64, !dbg !1997
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1998
  %idxprom = zext i32 %call3 to i64, !dbg !1999
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1999
  %10 = load i32, ptr %index, align 4, !dbg !2000
  %idxprom4 = zext i32 %10 to i64, !dbg !1999
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1999
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1999
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2001
  %13 = load i64, ptr %size.addr, align 8, !dbg !2002
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !2003
  store ptr %call6, ptr %retval, align 8, !dbg !2004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2004

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !2005
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2006
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2007
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !2008
  store ptr %call8, ptr %retval, align 8, !dbg !2009
  br label %return, !dbg !2009

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2010
  ret ptr %16, !dbg !2010
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2011 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2015 dso_local ptr @__request_region(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2018 dso_local void @kfree(ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2021 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !2025 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2027, metadata !DIExpression()), !dbg !2028
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2029
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !2030
  %1 = load ptr, ptr %name, align 8, !dbg !2030
  ret ptr %1, !dbg !2031
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2032 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !2033 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2037, metadata !DIExpression()), !dbg !2039
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2038, metadata !DIExpression()), !dbg !2040
  %0 = load i64, ptr %size.addr, align 8, !dbg !2041
  %tobool = icmp ne i64 %0, 0, !dbg !2041
  br i1 %tobool, label %if.end, label %if.then, !dbg !2043

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2044
  br label %return, !dbg !2044

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2045
  %cmp = icmp ule i64 %1, 8, !dbg !2047
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2048

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2049
  br label %return, !dbg !2049

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2050
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2052
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2053

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2054
  %cmp4 = icmp ule i64 %3, 96, !dbg !2055
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2056

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2057
  br label %return, !dbg !2057

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2058
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2060
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2061

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2062
  %cmp9 = icmp ule i64 %5, 192, !dbg !2063
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2064

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2065
  br label %return, !dbg !2065

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2066
  %cmp12 = icmp ule i64 %6, 8, !dbg !2068
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2069

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2070
  br label %return, !dbg !2070

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2071
  %cmp15 = icmp ule i64 %7, 16, !dbg !2073
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2074

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2075
  br label %return, !dbg !2075

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2076
  %cmp18 = icmp ule i64 %8, 32, !dbg !2078
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2079

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2080
  br label %return, !dbg !2080

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2081
  %cmp21 = icmp ule i64 %9, 64, !dbg !2083
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2084

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2085
  br label %return, !dbg !2085

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2086
  %cmp24 = icmp ule i64 %10, 128, !dbg !2088
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2089

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2090
  br label %return, !dbg !2090

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2091
  %cmp27 = icmp ule i64 %11, 256, !dbg !2093
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2094

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2095
  br label %return, !dbg !2095

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2096
  %cmp30 = icmp ule i64 %12, 512, !dbg !2098
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2099

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2100
  br label %return, !dbg !2100

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2101
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2103
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2104

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2105
  br label %return, !dbg !2105

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2106
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2108
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2109

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2110
  br label %return, !dbg !2110

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2111
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2113
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2114

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2115
  br label %return, !dbg !2115

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2116
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2118
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2119

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2120
  br label %return, !dbg !2120

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2121
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2123
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2124

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2125
  br label %return, !dbg !2125

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2126
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2128
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2129

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2130
  br label %return, !dbg !2130

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2131
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2133
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2134

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2135
  br label %return, !dbg !2135

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2136
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2138
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2139

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2140
  br label %return, !dbg !2140

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2141
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2143
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2144

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2145
  br label %return, !dbg !2145

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2146
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2148
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2149

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2150
  br label %return, !dbg !2150

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2151
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2153
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2154

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2155
  br label %return, !dbg !2155

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2156
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2158
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2159

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2160
  br label %return, !dbg !2160

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2161, !range !2163, !noundef !360
  %tobool69 = trunc i8 %25 to i1, !dbg !2161
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2164

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2165

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #19, !dbg !2166, !srcloc !2169
  unreachable, !dbg !2166

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2170

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2171

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2172

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2174

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2172

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #16, !dbg !2176, !srcloc !2178
  br label %do.end75, !dbg !2176

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2172

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2179
  br label %return, !dbg !2179

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2180
  ret i32 %26, !dbg !2180
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2181 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !2187 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2191, metadata !DIExpression()), !dbg !2193
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2192, metadata !DIExpression()), !dbg !2194
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2195
  %and = and i32 %0, 17, !dbg !2195
  %cmp = icmp eq i32 %and, 0, !dbg !2195
  %lnot = xor i1 %cmp, true, !dbg !2195
  %lnot1 = xor i1 %lnot, true, !dbg !2195
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2195
  %conv = sext i32 %lnot.ext to i64, !dbg !2195
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2195
  %tobool = icmp ne i64 %expval, 0, !dbg !2195
  br i1 %tobool, label %if.then, label %if.end, !dbg !2197

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2198
  br label %return, !dbg !2198

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2199
  %and2 = and i32 %1, 1, !dbg !2201
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2201
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2202

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2203
  br label %return, !dbg !2203

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2204
  br label %return, !dbg !2204

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2206
  ret i32 %2, !dbg !2206
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2207 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2208 dso_local void @__compiletime_assert_206() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { cold noredzone }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772}
!llvm.ident = !{!1773}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pnp__207_113_pnp_system_init5208", scope: !2, file: !3, line: 113, type: !94, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pnp/.system.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pnp/pnp\22 -D KBUILD_BASENAME=\22system\22 -D KBUILD_MODNAME=\22pnp\22 -D __KBUILD_MODNAME=kmod_pnp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pnp/system.ll drivers/pnp/system.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !98, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/system.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fbb421e69f63a223177e9665a30ac251")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !83}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!56 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!57 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!58 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!59 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!60 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!61 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!65 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!66 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!70 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!76 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!77 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 10, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!80 = !{!81, !82}
!81 = !DIEnumerator(name: "false", value: 0)
!82 = !DIEnumerator(name: "true", value: 1)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !84, line: 364, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!87 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!88 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!89 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!90 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!91 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!92 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!93 = !{!94, !95, !97}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !96, line: 154, baseType: !7)
!96 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!97 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!98 = !{!0, !99, !105, !1740, !1743, !1745, !1750, !1755, !1760}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 56, elements: !103)
!102 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !{!104}
!104 = !DISubrange(count: 7)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "system_pnp_driver", scope: !2, file: !3, line: 97, type: !107, isLocal: true, isDefinition: true)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !108, line: 374, size: 1664, elements: !109)
!108 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71a2b05a7bea4745f52d5f98f7dc6ac6")
!109 = !{!110, !113, !128, !129, !1732, !1736, !1737, !1738, !1739}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !108, line: 375, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !107, file: !108, line: 376, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !117, line: 240, size: 128, elements: !118)
!117 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!118 = !{!119, !126}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !116, file: !117, line: 241, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !124)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !122, line: 21, baseType: !123)
!122 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!123 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !{!125}
!125 = !DISubrange(count: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !116, file: !117, line: 242, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !117, line: 15, baseType: !97)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !108, line: 377, baseType: !7, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !107, file: !108, line: 378, baseType: !130, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!46, !133, !114}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !108, line: 243, size: 7744, elements: !135)
!135 = !{!136, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1649, !1677, !1679, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !134, file: !108, line: 244, baseType: !137, size: 5824)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !138)
!138 = !{!139, !799, !801, !804, !805, !858, !1322, !1323, !1324, !1325, !1326, !1333, !1501, !1514, !1524, !1528, !1530, !1531, !1532, !1536, !1543, !1544, !1547, !1550, !1554, !1557, !1558, !1561, !1562, !1563, !1564, !1594, !1595, !1596, !1599, !1602, !1611, !1612, !1613, !1614, !1615, !1616}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !137, file: !26, line: 706, baseType: !140, size: 512)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !141, line: 64, size: 512, elements: !142)
!141 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!142 = !{!143, !144, !150, !152, !238, !670, !784, !794, !795, !796, !797, !798}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !141, line: 65, baseType: !111, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !140, file: !141, line: 66, baseType: !145, size: 128, offset: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !96, line: 190, size: 128, elements: !146)
!146 = !{!147, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !96, line: 191, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !96, line: 191, baseType: !148, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !140, file: !141, line: 67, baseType: !151, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !140, file: !141, line: 68, baseType: !153, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !141, line: 168, size: 768, elements: !155)
!155 = !{!156, !157, !197, !198}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !154, file: !141, line: 169, baseType: !145, size: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !154, file: !141, line: 170, baseType: !158, size: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !159, line: 29, baseType: !160)
!159 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !159, line: 17, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 18, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 18, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !163, file: !159, line: 19, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !167, line: 14, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !166, file: !167, line: 15, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !171, line: 44, baseType: !172)
!171 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !171, line: 14, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !171, line: 15, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !171, line: 15, size: 32, elements: !176)
!176 = !{!177, !182, !189}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !175, file: !171, line: 16, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !96, line: 174, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 172, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !179, file: !96, line: 173, baseType: !46, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !171, line: 24, baseType: !183, size: 16)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !171, line: 24, size: 16, elements: !184)
!184 = !{!185, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !183, file: !171, line: 25, baseType: !186, size: 8)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !187, line: 17, baseType: !121)
!187 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !183, file: !171, line: 26, baseType: !186, size: 8, offset: 8)
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !171, line: 28, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !171, line: 28, size: 32, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !190, file: !171, line: 29, baseType: !193, size: 16)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !187, line: 19, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !122, line: 24, baseType: !195)
!195 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !190, file: !171, line: 30, baseType: !193, size: 16, offset: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !154, file: !141, line: 171, baseType: !140, size: 512, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !154, file: !141, line: 172, baseType: !199, size: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !141, line: 133, size: 192, elements: !202)
!202 = !{!203, !210, !215}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !201, file: !141, line: 134, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!46, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !141, line: 135, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!111, !208}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !201, file: !141, line: 136, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!46, !208, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !141, line: 125, size: 20736, elements: !222)
!222 = !{!223, !228, !232, !233, !237}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !221, file: !141, line: 126, baseType: !224, size: 192)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 192, elements: !226)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!226 = !{!227}
!227 = !DISubrange(count: 3)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !221, file: !141, line: 127, baseType: !229, size: 4096, offset: 192)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 4096, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !221, file: !141, line: 128, baseType: !46, size: 32, offset: 4288)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !221, file: !141, line: 129, baseType: !234, size: 16384, offset: 4320)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16384, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 2048)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !221, file: !141, line: 130, baseType: !46, size: 32, offset: 20704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !140, file: !141, line: 69, baseType: !239, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !141, line: 116, size: 384, elements: !242)
!242 = !{!243, !247, !275, !617, !648, !652}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !241, file: !141, line: 117, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !151}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !241, file: !141, line: 118, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !251, line: 254, size: 128, elements: !252)
!251 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!252 = !{!253, !268}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !250, file: !251, line: 255, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !151, !262, !225}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !96, line: 66, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !259, line: 73, baseType: !260)
!259 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !259, line: 15, baseType: !261)
!261 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !251, line: 30, size: 128, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !251, line: 31, baseType: !111, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !263, file: !251, line: 32, baseType: !267, size: 16, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !96, line: 24, baseType: !195)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !250, file: !251, line: 256, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!257, !151, !262, !111, !272}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 61, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !259, line: 72, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !259, line: 16, baseType: !97)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !241, file: !141, line: 119, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !251, line: 84, size: 320, elements: !280)
!280 = !{!281, !282, !286, !613, !615}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !251, line: 85, baseType: !111, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !279, file: !251, line: 86, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!267, !151, !262, !46}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !279, file: !251, line: 88, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!267, !151, !290, !46}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !251, line: 175, size: 512, elements: !292)
!292 = !{!293, !294, !295, !296, !303, !313, !314}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !291, file: !251, line: 176, baseType: !263, size: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !291, file: !251, line: 177, baseType: !272, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !291, file: !251, line: 178, baseType: !94, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !291, file: !251, line: 179, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !302, line: 32, flags: DIFlagFwdDecl)
!302 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!303 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !291, file: !251, line: 180, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!257, !307, !151, !290, !225, !310, !272}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !309, line: 537, flags: DIFlagFwdDecl)
!309 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !96, line: 52, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !259, line: 88, baseType: !312)
!312 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !291, file: !251, line: 182, baseType: !304, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !291, file: !251, line: 184, baseType: !315, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!46, !307, !151, !290, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !302, line: 625, size: 1344, elements: !320)
!320 = !{!321, !338, !561, !567, !574, !575, !580, !583, !595, !596, !599, !603, !604, !605, !606, !607, !611}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !302, line: 628, baseType: !322, size: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !302, line: 628, size: 128, elements: !323)
!323 = !{!324, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !302, line: 629, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !302, line: 629, size: 128, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !325, file: !302, line: 631, baseType: !97, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !325, file: !302, line: 632, baseType: !97, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !322, file: !302, line: 635, baseType: !330, size: 128, align: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !96, line: 232, size: 128, align: 64, elements: !331)
!331 = !{!332, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !96, line: 233, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !330, file: !96, line: 234, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !333}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !319, file: !302, line: 639, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !302, line: 733, size: 10240, elements: !341)
!341 = !{!342, !557}
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !302, line: 734, baseType: !343, size: 10240)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !302, line: 734, size: 10240, elements: !344)
!344 = !{!345, !349, !363, !367, !368, !369, !370, !371, !372, !380, !381, !382, !391, !392, !401, !402, !403, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !450, !464, !467, !522, !523, !524, !527, !531, !532, !535, !536, !537, !544, !545}
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !302, line: 739, baseType: !346, size: 512, align: 512)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !302, line: 739, size: 512, align: 512, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !346, file: !302, line: 747, baseType: !178, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !343, file: !302, line: 750, baseType: !350, size: 128, offset: 512)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !351, line: 218, size: 128, elements: !352)
!351 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!352 = !{!353, !361, !362}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !351, line: 219, baseType: !354, size: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !351, line: 219, size: 32, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !354, file: !351, line: 220, baseType: !158, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !354, file: !351, line: 221, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !351, line: 197, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 197, elements: !360)
!360 = !{}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !350, file: !351, line: 223, baseType: !7, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !350, file: !351, line: 224, baseType: !94, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !343, file: !302, line: 752, baseType: !364, size: 64, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!97, !307, !97, !97, !97, !97}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !343, file: !302, line: 756, baseType: !97, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !343, file: !302, line: 757, baseType: !97, size: 64, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !343, file: !302, line: 760, baseType: !97, size: 64, offset: 832)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !343, file: !302, line: 761, baseType: !97, size: 64, offset: 896)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !343, file: !302, line: 763, baseType: !97, size: 64, offset: 960)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !343, file: !302, line: 764, baseType: !373, size: 64, offset: 1024)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !309, line: 299, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 299, size: 64, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !375, file: !309, line: 299, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !379, line: 18, baseType: !97)
!379 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!380 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !343, file: !302, line: 773, baseType: !178, size: 32, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !343, file: !302, line: 785, baseType: !178, size: 32, offset: 1120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !343, file: !302, line: 795, baseType: !383, size: 64, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !302, line: 726, size: 128, elements: !385)
!385 = !{!386, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !384, file: !302, line: 727, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !187, line: 23, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !122, line: 31, baseType: !389)
!389 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !384, file: !302, line: 728, baseType: !46, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !343, file: !302, line: 801, baseType: !97, size: 64, offset: 1216)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !343, file: !302, line: 804, baseType: !393, size: 64, offset: 1280)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !394, line: 13, baseType: !395)
!394 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !96, line: 181, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 179, size: 64, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !396, file: !96, line: 180, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !187, line: 22, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !122, line: 30, baseType: !312)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !343, file: !302, line: 806, baseType: !46, size: 32, offset: 1344)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !343, file: !302, line: 808, baseType: !158, size: 32, offset: 1376)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !343, file: !302, line: 823, baseType: !404, size: 320, offset: 1408)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !405, line: 48, size: 320, elements: !406)
!405 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!406 = !{!407, !408, !409, !414, !416}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !404, file: !405, line: 49, baseType: !393, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !404, file: !405, line: 55, baseType: !393, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !404, file: !405, line: 57, baseType: !410, size: 32, offset: 128)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !411, line: 15, size: 32, elements: !412)
!411 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !410, file: !411, line: 20, baseType: !178, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !404, file: !405, line: 59, baseType: !415, size: 32, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !167, line: 23, baseType: !166)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !404, file: !405, line: 60, baseType: !145, size: 128, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !343, file: !302, line: 825, baseType: !145, size: 128, offset: 1728)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !343, file: !302, line: 845, baseType: !46, size: 32, offset: 1856)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !343, file: !302, line: 849, baseType: !97, size: 64, offset: 1920)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !343, file: !302, line: 850, baseType: !97, size: 64, offset: 1984)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !343, file: !302, line: 852, baseType: !97, size: 64, offset: 2048)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !343, file: !302, line: 853, baseType: !97, size: 64, offset: 2112)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !343, file: !302, line: 854, baseType: !395, size: 64, offset: 2176)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !343, file: !302, line: 855, baseType: !97, size: 64, offset: 2240)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !343, file: !302, line: 856, baseType: !97, size: 64, offset: 2304)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !343, file: !302, line: 857, baseType: !97, size: 64, offset: 2368)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !343, file: !302, line: 858, baseType: !97, size: 64, offset: 2432)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !343, file: !302, line: 865, baseType: !429, size: 32, offset: 2496)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !430, line: 69, baseType: !431)
!430 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !430, line: 64, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !431, file: !430, line: 65, baseType: !7, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !343, file: !302, line: 867, baseType: !158, size: 32, offset: 2528)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !343, file: !302, line: 869, baseType: !97, size: 64, offset: 2560)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !343, file: !302, line: 869, baseType: !97, size: 64, offset: 2624)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !343, file: !302, line: 869, baseType: !97, size: 64, offset: 2688)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !343, file: !302, line: 869, baseType: !97, size: 64, offset: 2752)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !343, file: !302, line: 870, baseType: !97, size: 64, offset: 2816)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !343, file: !302, line: 870, baseType: !97, size: 64, offset: 2880)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !343, file: !302, line: 870, baseType: !97, size: 64, offset: 2944)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !343, file: !302, line: 871, baseType: !97, size: 64, offset: 3008)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !343, file: !302, line: 871, baseType: !97, size: 64, offset: 3072)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !343, file: !302, line: 871, baseType: !97, size: 64, offset: 3136)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !343, file: !302, line: 871, baseType: !97, size: 64, offset: 3200)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !343, file: !302, line: 873, baseType: !447, size: 3328, offset: 3264)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 3328, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 52)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !343, file: !302, line: 875, baseType: !451, size: 1280, offset: 6592)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 1280, elements: !462)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !453, line: 22, size: 320, elements: !454)
!453 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!454 = !{!455, !456, !457, !458}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !452, file: !453, line: 23, baseType: !415, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !452, file: !453, line: 24, baseType: !399, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !452, file: !453, line: 26, baseType: !145, size: 128, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !452, file: !453, line: 28, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !187, line: 20, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !122, line: 26, baseType: !46)
!462 = !{!463}
!463 = !DISubrange(count: 4)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !343, file: !302, line: 877, baseType: !465, size: 64, offset: 7872)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !302, line: 877, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !343, file: !302, line: 880, baseType: !468, size: 1088, offset: 7936)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !469, line: 72, baseType: !470)
!469 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !469, line: 23, size: 1088, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !479, !480, !488, !489, !516, !517, !518}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !470, file: !469, line: 28, baseType: !387, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !470, file: !469, line: 38, baseType: !395, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !470, file: !469, line: 40, baseType: !97, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !470, file: !469, line: 43, baseType: !404, size: 320, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !470, file: !469, line: 44, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !469, line: 44, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !469, line: 48, baseType: !97, size: 64, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !470, file: !469, line: 59, baseType: !481, size: 256, offset: 640)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !482, line: 66, size: 256, elements: !483)
!482 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!483 = !{!484, !485, !486, !487}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !481, file: !482, line: 67, baseType: !393, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !481, file: !482, line: 68, baseType: !415, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !481, file: !482, line: 70, baseType: !410, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !481, file: !482, line: 72, baseType: !145, size: 128, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !470, file: !469, line: 60, baseType: !94, size: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !470, file: !469, line: 61, baseType: !490, size: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !493, line: 13, size: 1216, elements: !494)
!493 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!494 = !{!495, !496, !497, !498, !499, !500, !501, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !492, file: !493, line: 14, baseType: !94, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !492, file: !493, line: 15, baseType: !97, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !492, file: !493, line: 17, baseType: !97, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !492, file: !493, line: 17, baseType: !97, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !492, file: !493, line: 18, baseType: !97, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !492, file: !493, line: 18, baseType: !97, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !492, file: !493, line: 19, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !492, file: !493, line: 21, baseType: !261, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !492, file: !493, line: 23, baseType: !261, size: 64, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !492, file: !493, line: 24, baseType: !261, size: 64, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !492, file: !493, line: 25, baseType: !261, size: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !492, file: !493, line: 26, baseType: !261, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !492, file: !493, line: 27, baseType: !261, size: 64, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !492, file: !493, line: 28, baseType: !261, size: 64, offset: 832)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !492, file: !493, line: 29, baseType: !261, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !492, file: !493, line: 30, baseType: !261, size: 64, offset: 960)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !492, file: !493, line: 31, baseType: !261, size: 64, offset: 1024)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !492, file: !493, line: 32, baseType: !261, size: 64, offset: 1088)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !492, file: !493, line: 33, baseType: !261, size: 64, offset: 1152)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !470, file: !469, line: 63, baseType: !178, size: 32, offset: 1024)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !470, file: !469, line: 69, baseType: !193, size: 16, offset: 1056)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !470, file: !469, line: 70, baseType: !519, size: 16, offset: 1072)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !187, line: 18, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !122, line: 23, baseType: !521)
!521 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !302, line: 882, baseType: !97, size: 64, offset: 9024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !343, file: !302, line: 885, baseType: !158, size: 32, offset: 9088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !343, file: !302, line: 886, baseType: !525, size: 64, offset: 9152)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !302, line: 732, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !343, file: !302, line: 901, baseType: !528, size: 64, offset: 9216)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !530, line: 18, flags: DIFlagFwdDecl)
!530 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !343, file: !302, line: 904, baseType: !307, size: 64, offset: 9280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !343, file: !302, line: 906, baseType: !533, size: 64, offset: 9344)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !302, line: 906, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !343, file: !302, line: 930, baseType: !178, size: 32, offset: 9408)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !343, file: !302, line: 933, baseType: !178, size: 32, offset: 9440)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !343, file: !302, line: 935, baseType: !538, size: 64, offset: 9472)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !539, line: 103, size: 64, elements: !540)
!539 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !538, file: !539, line: 104, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !539, line: 101, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !343, file: !302, line: 940, baseType: !393, size: 64, offset: 9536)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !343, file: !302, line: 942, baseType: !546, size: 256, offset: 9600)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !547, line: 98, size: 256, elements: !548)
!547 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!548 = !{!549, !550, !551}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !546, file: !547, line: 99, baseType: !393, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !546, file: !547, line: 100, baseType: !145, size: 128, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !546, file: !547, line: 101, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !547, line: 21, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !340, file: !302, line: 986, baseType: !558, offset: 10240)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: -1)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !319, file: !302, line: 640, baseType: !562, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !309, line: 297, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !309, line: 297, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !563, file: !309, line: 297, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !379, line: 19, baseType: !97)
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !302, line: 646, baseType: !568, size: 64, offset: 256)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !302, line: 646, size: 64, elements: !569)
!569 = !{!570, !573}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !568, file: !302, line: 647, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !302, line: 542, baseType: !97)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !568, file: !302, line: 648, baseType: !572, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !319, file: !302, line: 666, baseType: !46, size: 32, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !319, file: !302, line: 667, baseType: !576, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !302, line: 579, size: 320, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !577, file: !302, line: 580, baseType: !404, size: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !319, file: !302, line: 670, baseType: !581, size: 8, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !96, line: 35, baseType: !582)
!582 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !319, file: !302, line: 681, baseType: !584, size: 256, offset: 512)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !302, line: 678, size: 256, elements: !585)
!585 = !{!586, !594}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !584, file: !302, line: 679, baseType: !587, size: 192, align: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !588, line: 5, size: 192, align: 64, elements: !589)
!588 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!589 = !{!590, !591, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !587, file: !588, line: 6, baseType: !97, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !587, file: !588, line: 7, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !587, file: !588, line: 8, baseType: !592, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !584, file: !302, line: 680, baseType: !97, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !319, file: !302, line: 689, baseType: !145, size: 128, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !319, file: !302, line: 691, baseType: !597, size: 64, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !302, line: 691, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !319, file: !302, line: 694, baseType: !600, size: 64, offset: 960)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !302, line: 694, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !319, file: !302, line: 697, baseType: !97, size: 64, offset: 1024)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !319, file: !302, line: 699, baseType: !307, size: 64, offset: 1088)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !319, file: !302, line: 700, baseType: !94, size: 64, offset: 1152)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !319, file: !302, line: 711, baseType: !393, size: 64, offset: 1216)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !319, file: !302, line: 717, baseType: !608, size: 64, offset: 1280)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !610, line: 54, flags: DIFlagFwdDecl)
!610 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !319, file: !302, line: 722, baseType: !612, offset: 1344)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !302, line: 570, elements: !360)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !279, file: !251, line: 90, baseType: !614, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !279, file: !251, line: 91, baseType: !616, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !241, file: !141, line: 120, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !208}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !624)
!624 = !{!625, !626, !630, !634, !640, !644}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !6, line: 40, baseType: !5, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !623, file: !6, line: 41, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!581}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !623, file: !6, line: 42, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!94}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !623, file: !6, line: 43, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!502, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !623, file: !6, line: 44, baseType: !641, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!502}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !623, file: !6, line: 45, baseType: !645, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !94}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !241, file: !141, line: 121, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!502, !208}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !241, file: !141, line: 122, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !208, !656, !663}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !530, line: 23, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 21, size: 32, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !658, file: !530, line: 22, baseType: !661, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !96, line: 37, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !259, line: 49, baseType: !7)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !530, line: 28, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 26, size: 32, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !665, file: !530, line: 27, baseType: !668, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !96, line: 38, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !259, line: 50, baseType: !7)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !140, file: !141, line: 70, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !673, line: 190, size: 1152, elements: !674)
!673 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !776, !777, !778, !779, !780, !783}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !672, file: !673, line: 191, baseType: !178, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !672, file: !673, line: 192, baseType: !178, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !672, file: !673, line: 202, baseType: !671, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !672, file: !673, line: 203, baseType: !111, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !672, file: !673, line: 205, baseType: !587, size: 192, align: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !672, file: !673, line: 207, baseType: !502, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !672, file: !673, line: 208, baseType: !7, size: 32, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 209, baseType: !683, size: 256, offset: 512)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 209, size: 256, elements: !684)
!684 = !{!685, !697, !701}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !683, file: !673, line: 210, baseType: !686, size: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !673, line: 153, size: 256, elements: !687)
!687 = !{!688, !689, !693, !696}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !686, file: !673, line: 154, baseType: !97, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !686, file: !673, line: 156, baseType: !690, size: 64, offset: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !588, line: 12, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !690, file: !588, line: 13, baseType: !592, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !686, file: !673, line: 162, baseType: !694, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !673, line: 162, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !686, file: !673, line: 167, baseType: !97, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !683, file: !673, line: 211, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !673, line: 170, size: 64, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !698, file: !673, line: 171, baseType: !671, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !683, file: !673, line: 212, baseType: !702, size: 256)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !673, line: 174, size: 256, elements: !703)
!703 = !{!704, !771, !774, !775}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !702, file: !673, line: 175, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !673, line: 271, size: 768, elements: !708)
!708 = !{!709, !731, !735, !739, !744, !748, !752, !756, !757, !758, !759, !767}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !707, file: !673, line: 276, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!46, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !673, line: 251, size: 1216, elements: !715)
!715 = !{!716, !717, !718, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !714, file: !673, line: 253, baseType: !671, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !714, file: !673, line: 254, baseType: !307, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !714, file: !673, line: 255, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !610, line: 66, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !714, file: !673, line: 256, baseType: !94, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !714, file: !673, line: 259, baseType: !481, size: 256, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !714, file: !673, line: 260, baseType: !481, size: 256, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !714, file: !673, line: 261, baseType: !46, size: 32, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !714, file: !673, line: 262, baseType: !145, size: 128, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !714, file: !673, line: 263, baseType: !225, size: 64, offset: 960)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !714, file: !673, line: 265, baseType: !272, size: 64, offset: 1024)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !714, file: !673, line: 266, baseType: !581, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !714, file: !673, line: 267, baseType: !581, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !714, file: !673, line: 268, baseType: !600, size: 64, offset: 1152)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !707, file: !673, line: 277, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !713}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !707, file: !673, line: 290, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!46, !719, !94}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !707, file: !673, line: 292, baseType: !740, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!94, !719, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !707, file: !673, line: 293, baseType: !745, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!94, !719, !94, !743}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !707, file: !673, line: 294, baseType: !749, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !719, !94}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !707, file: !673, line: 296, baseType: !753, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!257, !713, !225, !272, !310}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !707, file: !673, line: 306, baseType: !272, size: 64, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !707, file: !673, line: 313, baseType: !581, size: 8, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !707, file: !673, line: 314, baseType: !753, size: 64, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !707, file: !673, line: 317, baseType: !760, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!763, !713, !765}
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !764, line: 59, baseType: !7)
!764 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !673, line: 31, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !707, file: !673, line: 320, baseType: !768, size: 64, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!46, !713, !318}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !702, file: !673, line: 176, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !673, line: 35, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !702, file: !673, line: 177, baseType: !310, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !702, file: !673, line: 178, baseType: !671, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !672, file: !673, line: 215, baseType: !94, size: 64, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !672, file: !673, line: 221, baseType: !387, size: 64, offset: 832)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !673, line: 223, baseType: !195, size: 16, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !672, file: !673, line: 224, baseType: !267, size: 16, offset: 912)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !672, file: !673, line: 225, baseType: !781, size: 64, offset: 960)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !673, line: 36, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !672, file: !673, line: 227, baseType: !330, size: 128, align: 64, offset: 1024)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !140, file: !141, line: 71, baseType: !785, size: 32, offset: 448)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !786, line: 19, size: 32, elements: !787)
!786 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !785, file: !786, line: 20, baseType: !789, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !790, line: 113, baseType: !791)
!790 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !790, line: 111, size: 32, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !791, file: !790, line: 112, baseType: !178, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !140, file: !141, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !140, file: !141, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !140, file: !141, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !140, file: !141, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !140, file: !141, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !137, file: !26, line: 707, baseType: !800, size: 64, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !137, file: !26, line: 709, baseType: !802, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !137, file: !26, line: 711, baseType: !111, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !26, line: 712, baseType: !806, size: 64, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !809)
!809 = !{!810, !811, !812, !818, !823, !827}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !808, file: !26, line: 90, baseType: !111, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !808, file: !26, line: 91, baseType: !276, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !808, file: !26, line: 92, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!46, !816, !220}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !808, file: !26, line: 93, baseType: !819, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!225, !816, !822, !656, !663}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !808, file: !26, line: 95, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !800}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !808, file: !26, line: 97, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !831)
!831 = !{!832, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !830, file: !38, line: 287, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!46, !800}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !830, file: !38, line: 288, baseType: !824, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !830, file: !38, line: 289, baseType: !833, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !830, file: !38, line: 290, baseType: !833, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !830, file: !38, line: 291, baseType: !833, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !830, file: !38, line: 292, baseType: !833, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !830, file: !38, line: 293, baseType: !833, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !830, file: !38, line: 294, baseType: !833, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !830, file: !38, line: 295, baseType: !833, size: 64, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !830, file: !38, line: 296, baseType: !833, size: 64, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !830, file: !38, line: 297, baseType: !833, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !830, file: !38, line: 298, baseType: !833, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !830, file: !38, line: 299, baseType: !833, size: 64, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !830, file: !38, line: 300, baseType: !833, size: 64, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !830, file: !38, line: 301, baseType: !833, size: 64, offset: 896)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !830, file: !38, line: 302, baseType: !833, size: 64, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !830, file: !38, line: 303, baseType: !833, size: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !830, file: !38, line: 304, baseType: !833, size: 64, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !830, file: !38, line: 305, baseType: !833, size: 64, offset: 1152)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !830, file: !38, line: 306, baseType: !833, size: 64, offset: 1216)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !830, file: !38, line: 307, baseType: !833, size: 64, offset: 1280)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !830, file: !38, line: 308, baseType: !833, size: 64, offset: 1344)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !830, file: !38, line: 309, baseType: !833, size: 64, offset: 1408)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !137, file: !26, line: 714, baseType: !859, size: 64, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !862, line: 80, size: 1344, elements: !863)
!862 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!863 = !{!864, !865, !866, !867, !868, !869, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1321}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !862, line: 81, baseType: !111, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !861, file: !862, line: 82, baseType: !111, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !861, file: !862, line: 83, baseType: !276, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !861, file: !862, line: 84, baseType: !276, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !861, file: !862, line: 85, baseType: !276, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !861, file: !862, line: 87, baseType: !870, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!46, !800, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !875)
!875 = !{!876, !877, !878, !1254, !1255, !1256, !1257, !1272, !1284, !1285, !1286, !1287, !1288, !1296, !1297, !1298, !1299, !1300, !1301}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !874, file: !20, line: 97, baseType: !111, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !874, file: !20, line: 98, baseType: !859, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !874, file: !20, line: 100, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !881)
!881 = !{!882, !883, !884, !888, !909, !935, !936, !937, !938, !942, !945, !946, !947, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1010, !1014, !1032, !1050, !1051, !1052, !1053, !1062, !1086, !1087, !1090, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1104, !1105, !1212, !1220, !1221, !1222, !1224, !1228, !1229, !1233, !1234, !1235, !1236, !1238, !1239, !1240, !1247, !1248, !1249, !1253}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !880, file: !13, line: 403, baseType: !12, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !880, file: !13, line: 406, baseType: !145, size: 128, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !880, file: !13, line: 409, baseType: !885, size: 448, offset: 192)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 448, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 56)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !880, file: !13, line: 417, baseType: !889, size: 768, offset: 640)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !890)
!890 = !{!891, !892, !893, !894, !897}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !889, file: !13, line: 46, baseType: !140, size: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !889, file: !13, line: 47, baseType: !879, size: 64, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !889, file: !13, line: 48, baseType: !151, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !889, file: !13, line: 49, baseType: !895, size: 64, offset: 640)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !889, file: !13, line: 50, baseType: !898, size: 64, offset: 704)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !900, line: 26, size: 256, elements: !901)
!900 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !899, file: !900, line: 27, baseType: !7, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !899, file: !900, line: 28, baseType: !904, size: 192, offset: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !905, line: 43, size: 192, elements: !906)
!905 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !904, file: !905, line: 44, baseType: !415, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !904, file: !905, line: 45, baseType: !145, size: 128, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !880, file: !13, line: 418, baseType: !910, size: 64, offset: 1408)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !912)
!912 = !{!913, !914, !919, !923, !927, !931}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !911, file: !13, line: 54, baseType: !263, size: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !911, file: !13, line: 55, baseType: !915, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!257, !910, !918, !225}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !911, file: !13, line: 57, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!257, !910, !918, !111, !272}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !911, file: !13, line: 59, baseType: !924, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !879, !111}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !911, file: !13, line: 60, baseType: !928, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!46, !879}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !911, file: !13, line: 61, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !879}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !880, file: !13, line: 419, baseType: !111, size: 64, offset: 1472)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !880, file: !13, line: 420, baseType: !111, size: 64, offset: 1536)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !880, file: !13, line: 421, baseType: !151, size: 64, offset: 1600)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !880, file: !13, line: 424, baseType: !939, size: 64, offset: 1664)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !880, file: !13, line: 425, baseType: !943, size: 64, offset: 1728)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !880, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !880, file: !13, line: 435, baseType: !481, size: 256, offset: 1856)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !880, file: !13, line: 437, baseType: !948, size: 64, offset: 2112)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !950, line: 69, size: 320, elements: !951)
!950 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!951 = !{!952, !953, !954, !971, !973, !977, !978}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !949, file: !950, line: 70, baseType: !111, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !949, file: !950, line: 71, baseType: !879, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !949, file: !950, line: 72, baseType: !955, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !950, line: 47, size: 256, elements: !958)
!958 = !{!959, !960, !966, !970}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !957, file: !950, line: 49, baseType: !7, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !957, file: !950, line: 51, baseType: !961, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!46, !111, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !957, file: !950, line: 53, baseType: !967, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!46, !225, !964}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !957, file: !950, line: 55, baseType: !645, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !949, file: !950, line: 73, baseType: !972, size: 16, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !949, file: !950, line: 74, baseType: !974, size: 8, offset: 208)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !187, line: 16, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !122, line: 20, baseType: !976)
!976 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !950, line: 75, baseType: !186, size: 8, offset: 216)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !950, line: 76, baseType: !979, size: 64, offset: 256)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !950, line: 76, size: 64, elements: !980)
!980 = !{!981, !982, !989}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !979, file: !950, line: 77, baseType: !94, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !979, file: !950, line: 78, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !950, line: 86, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !985, file: !950, line: 87, baseType: !7, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !985, file: !950, line: 88, baseType: !225, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !979, file: !950, line: 79, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !950, line: 92, size: 256, elements: !993)
!993 = !{!994, !995, !996, !998, !999}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !992, file: !950, line: 94, baseType: !7, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !992, file: !950, line: 95, baseType: !7, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !992, file: !950, line: 96, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !992, file: !950, line: 97, baseType: !955, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !992, file: !950, line: 98, baseType: !94, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !880, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !880, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !880, file: !13, line: 442, baseType: !939, size: 64, offset: 2240)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !880, file: !13, line: 443, baseType: !943, size: 64, offset: 2304)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !880, file: !13, line: 444, baseType: !581, size: 8, offset: 2368)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !880, file: !13, line: 451, baseType: !581, size: 8, offset: 2376)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !880, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !880, file: !13, line: 455, baseType: !1008, size: 64, offset: 2432)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !880, file: !13, line: 458, baseType: !1011, size: 64, offset: 2496)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!46}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !880, file: !13, line: 460, baseType: !1015, size: 4032, align: 512, offset: 2560)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 4032, elements: !103)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1017)
!1017 = !{!1018, !1019, !1020}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1016, file: !13, line: 363, baseType: !94, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1016, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1016, file: !13, line: 367, baseType: !1021, size: 448, offset: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1021, file: !13, line: 320, baseType: !879, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1021, file: !13, line: 321, baseType: !1025, size: 384, offset: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1026, line: 40, size: 384, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1025, file: !1026, line: 41, baseType: !1029, size: 384, align: 64)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 384, align: 64, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 2)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !880, file: !13, line: 463, baseType: !1033, size: 192, offset: 6592)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1034, line: 8, size: 192, elements: !1035)
!1034 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1035 = !{!1036, !1037, !1039}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1033, file: !1034, line: 10, baseType: !7, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1033, file: !1034, line: 11, baseType: !1038, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1033, file: !1034, line: 12, baseType: !1040, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1042, line: 59, size: 48, elements: !1043)
!1042 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1041, file: !1042, line: 60, baseType: !519, size: 16)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1041, file: !1042, line: 61, baseType: !519, size: 16, offset: 16)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1041, file: !1042, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1041, file: !1042, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1041, file: !1042, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1041, file: !1042, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !880, file: !13, line: 465, baseType: !97, size: 64, offset: 6784)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !880, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !880, file: !13, line: 470, baseType: !145, size: 128, offset: 6912)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !880, file: !13, line: 471, baseType: !1054, size: 64, offset: 7040)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1056, line: 33, size: 96, elements: !1057)
!1056 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1055, file: !1056, line: 37, baseType: !46, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1055, file: !1056, line: 43, baseType: !46, size: 32, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1055, file: !1056, line: 45, baseType: !195, size: 16, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !1056, line: 47, baseType: !195, size: 16, offset: 80)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !880, file: !13, line: 476, baseType: !1063, size: 64, offset: 7104)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1065)
!1065 = !{!1066, !1083, !1084, !1085}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1064, file: !13, line: 379, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1069, line: 204, baseType: !1070)
!1069 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1069, line: 197, size: 192, elements: !1071)
!1071 = !{!1072, !1075, !1076, !1077, !1079, !1081}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1070, file: !1069, line: 198, baseType: !1073, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1069, line: 21, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !122, line: 27, baseType: !7)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1070, file: !1069, line: 199, baseType: !123, size: 8, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1070, file: !1069, line: 200, baseType: !123, size: 8, offset: 40)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1070, file: !1069, line: 201, baseType: !1078, size: 16, offset: 48)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1069, line: 17, baseType: !194)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1070, file: !1069, line: 202, baseType: !1080, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1069, line: 16, baseType: !388)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1070, file: !1069, line: 203, baseType: !1082, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1069, line: 22, baseType: !388)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1064, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1064, file: !13, line: 381, baseType: !225, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1064, file: !13, line: 382, baseType: !225, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !880, file: !13, line: 477, baseType: !1064, size: 256, offset: 7168)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !880, file: !13, line: 480, baseType: !1088, size: 64, offset: 7424)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !880, file: !13, line: 483, baseType: !1091, size: 64, offset: 7488)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !880, file: !13, line: 488, baseType: !225, size: 64, offset: 7552)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !880, file: !13, line: 492, baseType: !94, size: 64, offset: 7616)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !880, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !880, file: !13, line: 495, baseType: !94, size: 64, offset: 7744)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !880, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !880, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !880, file: !13, line: 500, baseType: !1100, size: 64, offset: 7872)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1102, line: 45, baseType: !1103)
!1102 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !880, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !880, file: !13, line: 504, baseType: !1106, size: 64, offset: 8000)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1109, line: 96, size: 192, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1110 = !{!1111, !1112, !1173, !1176}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1108, file: !1109, line: 97, baseType: !7, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1108, file: !1109, line: 98, baseType: !1113, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1109, line: 24, size: 3072, elements: !1115)
!1115 = !{!1116, !1118, !1119, !1120, !1121, !1135, !1136, !1137, !1138, !1157, !1158, !1159, !1170, !1171, !1172}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1114, file: !1109, line: 26, baseType: !1117, size: 128)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 128, elements: !1030)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1114, file: !1109, line: 27, baseType: !1117, size: 128, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1114, file: !1109, line: 28, baseType: !46, size: 32, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1114, file: !1109, line: 31, baseType: !158, size: 32, align: 512, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1114, file: !1109, line: 32, baseType: !1122, size: 960, offset: 576)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1123, line: 206, size: 960, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1124 = !{!1125, !1126, !1129, !1131, !1132, !1134}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1122, file: !1123, line: 207, baseType: !333, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1122, file: !1123, line: 208, baseType: !1127, size: 256, offset: 64)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 256, elements: !462)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1122, file: !1123, line: 209, baseType: !1130, size: 256, offset: 320)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !462)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1122, file: !1123, line: 213, baseType: !261, size: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1122, file: !1123, line: 215, baseType: !1133, size: 256, offset: 640)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 256, elements: !462)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1122, file: !1123, line: 216, baseType: !186, size: 8, offset: 896)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1114, file: !1109, line: 33, baseType: !97, size: 64, offset: 1536)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1114, file: !1109, line: 34, baseType: !97, size: 64, offset: 1600)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1114, file: !1109, line: 35, baseType: !581, size: 8, offset: 1664)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1114, file: !1109, line: 36, baseType: !1139, size: 320, offset: 1728)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1140, line: 11, size: 320, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1141 = !{!1142, !1149, !1150, !1155}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1139, file: !1140, line: 16, baseType: !1143, size: 128)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !96, line: 198, size: 128, elements: !1144)
!1144 = !{!1145, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1143, file: !96, line: 199, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1143, file: !96, line: 199, baseType: !1148, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1139, file: !1140, line: 17, baseType: !97, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1139, file: !1140, line: 18, baseType: !1151, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !1154}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !1140, line: 19, baseType: !1156, size: 32, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !187, line: 21, baseType: !1074)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1114, file: !1109, line: 37, baseType: !546, size: 256, offset: 2048)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1114, file: !1109, line: 38, baseType: !330, size: 128, align: 64, offset: 2304)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1114, file: !1109, line: 39, baseType: !1160, size: 64, offset: 2432)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1109, line: 49, size: 768, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1161, file: !1109, line: 50, baseType: !158, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1161, file: !1109, line: 51, baseType: !1130, size: 256, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1161, file: !1109, line: 53, baseType: !1130, size: 256, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1161, file: !1109, line: 54, baseType: !97, size: 64, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1161, file: !1109, line: 55, baseType: !1160, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1161, file: !1109, line: 56, baseType: !46, size: 32, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1161, file: !1109, line: 57, baseType: !46, size: 32, offset: 736)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1114, file: !1109, line: 40, baseType: !97, size: 64, offset: 2496)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1114, file: !1109, line: 42, baseType: !46, size: 32, offset: 2560)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1114, file: !1109, line: 43, baseType: !1107, size: 64, offset: 2624)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1108, file: !1109, line: 99, baseType: !1174, offset: 128)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1175, line: 211, elements: !360)
!1175 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1108, file: !1109, line: 100, baseType: !1177, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1109, line: 63, size: 3008, elements: !1179)
!1179 = !{!1180, !1181, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1211}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1178, file: !1109, line: 64, baseType: !1160, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1178, file: !1109, line: 65, baseType: !1182, size: 192, offset: 64)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 192, elements: !226)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1178, file: !1109, line: 67, baseType: !46, size: 32, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1178, file: !1109, line: 68, baseType: !481, size: 256, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1178, file: !1109, line: 69, baseType: !158, size: 32, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1178, file: !1109, line: 70, baseType: !481, size: 256, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1178, file: !1109, line: 71, baseType: !97, size: 64, offset: 896)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1178, file: !1109, line: 72, baseType: !97, size: 64, offset: 960)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1178, file: !1109, line: 73, baseType: !97, size: 64, offset: 1024)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1178, file: !1109, line: 74, baseType: !97, size: 64, offset: 1088)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1178, file: !1109, line: 75, baseType: !97, size: 64, offset: 1152)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1178, file: !1109, line: 76, baseType: !97, size: 64, offset: 1216)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1178, file: !1109, line: 77, baseType: !97, size: 64, offset: 1280)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1178, file: !1109, line: 78, baseType: !97, size: 64, offset: 1344)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1178, file: !1109, line: 79, baseType: !581, size: 8, offset: 1408)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1178, file: !1109, line: 80, baseType: !97, size: 64, offset: 1472)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1178, file: !1109, line: 81, baseType: !481, size: 256, offset: 1536)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1178, file: !1109, line: 82, baseType: !899, size: 256, offset: 1792)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1178, file: !1109, line: 84, baseType: !178, size: 32, offset: 2048)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1178, file: !1109, line: 87, baseType: !97, size: 64, offset: 2112)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1178, file: !1109, line: 88, baseType: !97, size: 64, offset: 2176)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1178, file: !1109, line: 89, baseType: !1203, size: 704, offset: 2240)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !547, line: 111, size: 704, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1210}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1203, file: !547, line: 112, baseType: !546, size: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1203, file: !547, line: 113, baseType: !1139, size: 320, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1203, file: !547, line: 116, baseType: !1208, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !547, line: 18, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1203, file: !547, line: 117, baseType: !46, size: 32, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1178, file: !1109, line: 90, baseType: !1107, size: 64, offset: 2944)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !880, file: !13, line: 515, baseType: !1213, size: 64, offset: 8064)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1215, line: 117, size: 128, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1214, file: !1215, line: 118, baseType: !460, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1214, file: !1215, line: 119, baseType: !460, size: 32, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1214, file: !1215, line: 120, baseType: !261, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !880, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !880, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !880, file: !13, line: 520, baseType: !1223, size: 64, offset: 8192)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !880, file: !13, line: 523, baseType: !1225, size: 64, offset: 8256)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !880, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !880, file: !13, line: 525, baseType: !1230, size: 64, offset: 8384)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !880, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !880, file: !13, line: 533, baseType: !94, size: 64, offset: 8512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !880, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !880, file: !13, line: 535, baseType: !1237, size: 64, offset: 8640)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !880, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !880, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !880, file: !13, line: 540, baseType: !1241, size: 64, offset: 8768)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1243, line: 32, size: 64, elements: !1244)
!1243 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1242, file: !1243, line: 33, baseType: !460, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1242, file: !1243, line: 34, baseType: !460, size: 32, offset: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !880, file: !13, line: 563, baseType: !145, size: 128, offset: 8832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !880, file: !13, line: 565, baseType: !145, size: 128, offset: 8960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !880, file: !13, line: 568, baseType: !1250, size: 64, offset: 9088)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !880, file: !13, line: 570, baseType: !178, size: 32, offset: 9152)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !874, file: !20, line: 101, baseType: !111, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !874, file: !20, line: 103, baseType: !581, size: 8, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !874, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !874, file: !20, line: 106, baseType: !1258, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !117, line: 282, size: 1600, elements: !1261)
!1261 = !{!1262, !1266, !1267, !1271}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1260, file: !117, line: 283, baseType: !1263, size: 256)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !1264)
!1264 = !{!1265}
!1265 = !DISubrange(count: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1260, file: !117, line: 284, baseType: !1263, size: 256, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1260, file: !117, line: 285, baseType: !1268, size: 1024, offset: 512)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 1024, elements: !1269)
!1269 = !{!1270}
!1270 = !DISubrange(count: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1260, file: !117, line: 286, baseType: !502, size: 64, offset: 1536)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !874, file: !20, line: 107, baseType: !1273, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !117, line: 217, size: 256, elements: !1276)
!1276 = !{!1277, !1281, !1282, !1283}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1275, file: !117, line: 218, baseType: !1278, size: 128)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 16)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1275, file: !117, line: 219, baseType: !127, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1275, file: !117, line: 220, baseType: !1074, size: 32, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1275, file: !117, line: 221, baseType: !1074, size: 32, offset: 224)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !874, file: !20, line: 109, baseType: !833, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !874, file: !20, line: 110, baseType: !824, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !874, file: !20, line: 111, baseType: !833, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !874, file: !20, line: 112, baseType: !824, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !874, file: !20, line: 113, baseType: !1289, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!46, !800, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1294)
!1294 = !{!1295}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1293, file: !38, line: 59, baseType: !46, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !874, file: !20, line: 114, baseType: !833, size: 64, offset: 768)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !874, file: !20, line: 115, baseType: !276, size: 64, offset: 832)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !874, file: !20, line: 116, baseType: !276, size: 64, offset: 896)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !874, file: !20, line: 118, baseType: !828, size: 64, offset: 960)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !874, file: !20, line: 119, baseType: !824, size: 64, offset: 1024)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !874, file: !20, line: 121, baseType: !1302, size: 64, offset: 1088)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !861, file: !862, line: 88, baseType: !813, size: 64, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !861, file: !862, line: 89, baseType: !833, size: 64, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !861, file: !862, line: 90, baseType: !824, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !861, file: !862, line: 91, baseType: !824, size: 64, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !861, file: !862, line: 92, baseType: !824, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !861, file: !862, line: 94, baseType: !833, size: 64, offset: 704)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !861, file: !862, line: 95, baseType: !833, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !861, file: !862, line: 97, baseType: !1289, size: 64, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !861, file: !862, line: 98, baseType: !833, size: 64, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !861, file: !862, line: 100, baseType: !833, size: 64, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !861, file: !862, line: 102, baseType: !833, size: 64, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !861, file: !862, line: 103, baseType: !824, size: 64, offset: 1088)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !861, file: !862, line: 105, baseType: !828, size: 64, offset: 1152)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !861, file: !862, line: 107, baseType: !1318, size: 64, offset: 1216)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !862, line: 107, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !861, file: !862, line: 109, baseType: !581, size: 8, offset: 1280)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !137, file: !26, line: 715, baseType: !873, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !137, file: !26, line: 717, baseType: !94, size: 64, offset: 896)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !137, file: !26, line: 719, baseType: !94, size: 64, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !137, file: !26, line: 721, baseType: !481, size: 256, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !137, file: !26, line: 725, baseType: !1327, size: 448, offset: 1280)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1327, file: !26, line: 518, baseType: !145, size: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1327, file: !26, line: 519, baseType: !145, size: 128, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1327, file: !26, line: 520, baseType: !145, size: 128, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1327, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !137, file: !26, line: 726, baseType: !1334, size: 2496, offset: 1728)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1380, !1381, !1382, !1383, !1384, !1385, !1454, !1455, !1456, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1494, !1498}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1334, file: !38, line: 664, baseType: !1292, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1334, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1334, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1334, file: !38, line: 667, baseType: !581, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1334, file: !38, line: 668, baseType: !581, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1334, file: !38, line: 669, baseType: !581, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1334, file: !38, line: 670, baseType: !581, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1334, file: !38, line: 671, baseType: !581, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1334, file: !38, line: 672, baseType: !581, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1334, file: !38, line: 673, baseType: !581, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1334, file: !38, line: 674, baseType: !581, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1334, file: !38, line: 675, baseType: !1156, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1334, file: !38, line: 676, baseType: !158, size: 32, offset: 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1334, file: !38, line: 678, baseType: !145, size: 128, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1334, file: !38, line: 679, baseType: !899, size: 256, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1334, file: !38, line: 680, baseType: !1352, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1354, line: 43, size: 1536, elements: !1355)
!1354 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1363, !1364, !1365, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1353, file: !1354, line: 44, baseType: !111, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1353, file: !1354, line: 45, baseType: !46, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1353, file: !1354, line: 46, baseType: !145, size: 128, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1353, file: !1354, line: 47, baseType: !158, size: 32, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1353, file: !1354, line: 48, baseType: !1361, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1353, file: !1354, line: 49, baseType: !1139, size: 320, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1353, file: !1354, line: 50, baseType: !97, size: 64, offset: 704)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1353, file: !1354, line: 51, baseType: !1366, size: 64, offset: 768)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1367, line: 29, baseType: !399)
!1367 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1353, file: !1354, line: 52, baseType: !1366, size: 64, offset: 832)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1353, file: !1354, line: 53, baseType: !1366, size: 64, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1353, file: !1354, line: 54, baseType: !1366, size: 64, offset: 960)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1353, file: !1354, line: 55, baseType: !1366, size: 64, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1353, file: !1354, line: 56, baseType: !97, size: 64, offset: 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1353, file: !1354, line: 57, baseType: !97, size: 64, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1353, file: !1354, line: 58, baseType: !97, size: 64, offset: 1216)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1353, file: !1354, line: 59, baseType: !97, size: 64, offset: 1280)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1353, file: !1354, line: 60, baseType: !97, size: 64, offset: 1344)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1353, file: !1354, line: 61, baseType: !800, size: 64, offset: 1408)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1353, file: !1354, line: 62, baseType: !581, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1353, file: !1354, line: 63, baseType: !581, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1334, file: !38, line: 681, baseType: !581, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1334, file: !38, line: 682, baseType: !581, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1334, file: !38, line: 683, baseType: !581, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1334, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1334, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1334, file: !38, line: 690, baseType: !1386, size: 512, offset: 640)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1387)
!1387 = !{!1388, !1394, !1395, !1400, !1450, !1451, !1452, !1453}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1386, file: !33, line: 119, baseType: !1389, size: 256)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1390, line: 9, size: 256, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1389, file: !1390, line: 10, baseType: !587, size: 192, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1389, file: !1390, line: 11, baseType: !1366, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1386, file: !33, line: 120, baseType: !1366, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1386, file: !33, line: 121, baseType: !1396, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!32, !1399}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1386, file: !33, line: 122, baseType: !1401, size: 64, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1403)
!1403 = !{!1404, !1427, !1428, !1431, !1436, !1437, !1445, !1449}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1402, file: !33, line: 160, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1406, file: !33, line: 216, baseType: !415, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1406, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1406, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1406, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1406, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1406, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1406, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1406, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1406, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1406, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1406, file: !33, line: 227, baseType: !195, size: 16, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1406, file: !33, line: 228, baseType: !195, size: 16, offset: 208)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1406, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1406, file: !33, line: 235, baseType: !1366, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1406, file: !33, line: 236, baseType: !1399, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1406, file: !33, line: 237, baseType: !1366, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1406, file: !33, line: 238, baseType: !1399, size: 64, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1406, file: !33, line: 239, baseType: !1426, size: 4096, align: 512, offset: 512)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1402, size: 4096, align: 512, elements: !124)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1402, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1402, file: !33, line: 162, baseType: !1429, size: 32, offset: 96)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !96, line: 32, baseType: !1430)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !259, line: 96, baseType: !46)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1402, file: !33, line: 163, baseType: !1432, size: 32, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !430, line: 274, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !430, line: 274, size: 32, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1433, file: !430, line: 274, baseType: !429, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1402, file: !33, line: 164, baseType: !1399, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1402, file: !33, line: 165, baseType: !1438, size: 128, offset: 256)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1390, line: 14, size: 128, elements: !1439)
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1438, file: !1390, line: 15, baseType: !1441, size: 128)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !588, line: 26, size: 128, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1441, file: !588, line: 27, baseType: !690, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1441, file: !588, line: 28, baseType: !592, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1402, file: !33, line: 166, baseType: !1446, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!1366}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1402, file: !33, line: 167, baseType: !1366, size: 64, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1386, file: !33, line: 123, baseType: !186, size: 8, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1386, file: !33, line: 124, baseType: !186, size: 8, offset: 456)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1386, file: !33, line: 125, baseType: !186, size: 8, offset: 464)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1386, file: !33, line: 126, baseType: !186, size: 8, offset: 472)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1334, file: !38, line: 691, baseType: !387, size: 64, offset: 1152)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1334, file: !38, line: 692, baseType: !546, size: 256, offset: 1216)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1334, file: !38, line: 693, baseType: !1457, size: 192, offset: 1472)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1458, line: 41, baseType: !1459)
!1458 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1458, line: 37, size: 192, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1459, file: !1458, line: 38, baseType: !158, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1459, file: !1458, line: 39, baseType: !145, size: 128, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1334, file: !38, line: 694, baseType: !1361, size: 64, offset: 1664)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1334, file: !38, line: 695, baseType: !178, size: 32, offset: 1728)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1334, file: !38, line: 696, baseType: !178, size: 32, offset: 1760)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1334, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1334, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1334, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1334, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1334, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1334, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1334, file: !38, line: 703, baseType: !581, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1334, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1334, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1334, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1334, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1334, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1334, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1334, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1334, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1334, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1334, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1334, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1334, file: !38, line: 715, baseType: !387, size: 64, offset: 2048)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1334, file: !38, line: 716, baseType: !387, size: 64, offset: 2112)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1334, file: !38, line: 717, baseType: !387, size: 64, offset: 2176)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1334, file: !38, line: 718, baseType: !387, size: 64, offset: 2240)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1334, file: !38, line: 720, baseType: !1489, size: 64, offset: 2304)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !38, line: 633, baseType: !158, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1490, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1334, file: !38, line: 721, baseType: !1495, size: 64, offset: 2368)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !800, !460}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1334, file: !38, line: 722, baseType: !1499, size: 64, offset: 2432)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !137, file: !26, line: 727, baseType: !1502, size: 64, offset: 4224)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1511, !1512, !1513}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1503, file: !38, line: 743, baseType: !830, size: 1472)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1503, file: !38, line: 744, baseType: !833, size: 64, offset: 1472)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1503, file: !38, line: 745, baseType: !1508, size: 64, offset: 1536)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !800, !581}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1503, file: !38, line: 746, baseType: !833, size: 64, offset: 1600)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1503, file: !38, line: 747, baseType: !824, size: 64, offset: 1664)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1503, file: !38, line: 748, baseType: !824, size: 64, offset: 1728)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !137, file: !26, line: 736, baseType: !1515, size: 128, offset: 4288)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1516)
!1516 = !{!1517, !1521}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1515, file: !26, line: 531, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1520, line: 13, flags: DIFlagFwdDecl)
!1520 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1515, file: !26, line: 532, baseType: !1522, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !137, file: !26, line: 738, baseType: !1525, size: 64, offset: 4416)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1527)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !137, file: !26, line: 740, baseType: !1529, size: 64, offset: 4480)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !137, file: !26, line: 741, baseType: !387, size: 64, offset: 4544)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !137, file: !26, line: 746, baseType: !387, size: 64, offset: 4608)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !137, file: !26, line: 747, baseType: !1533, size: 64, offset: 4672)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !137, file: !26, line: 749, baseType: !1537, size: 64, offset: 4736)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1539)
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1538, file: !26, line: 433, baseType: !7, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1538, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1538, file: !26, line: 435, baseType: !97, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !137, file: !26, line: 751, baseType: !145, size: 128, offset: 4800)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !137, file: !26, line: 762, baseType: !1545, size: 64, offset: 4928)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !137, file: !26, line: 770, baseType: !1548, offset: 4992)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1549, line: 5, elements: !360)
!1549 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !137, file: !26, line: 772, baseType: !1551, size: 64, offset: 4992)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1553, line: 18, flags: DIFlagFwdDecl)
!1553 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !137, file: !26, line: 773, baseType: !1555, size: 64, offset: 5056)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !862, line: 22, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !137, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !137, file: !26, line: 778, baseType: !1559, size: 32, offset: 5152)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !96, line: 21, baseType: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !96, line: 18, baseType: !1156)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !137, file: !26, line: 779, baseType: !1156, size: 32, offset: 5184)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !137, file: !26, line: 781, baseType: !158, size: 32, offset: 5216)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !137, file: !26, line: 782, baseType: !145, size: 128, offset: 5248)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !137, file: !26, line: 784, baseType: !1565, size: 64, offset: 5376)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1568, line: 52, size: 768, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1578, !1582, !1583, !1584, !1585, !1589, !1593}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1567, file: !1568, line: 53, baseType: !111, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1567, file: !1568, line: 55, baseType: !276, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1567, file: !1568, line: 56, baseType: !276, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1567, file: !1568, line: 58, baseType: !813, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1567, file: !1568, line: 59, baseType: !1575, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!225, !816, !822}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1567, file: !1568, line: 61, baseType: !1579, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !1565}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1567, file: !1568, line: 62, baseType: !824, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1567, file: !1568, line: 64, baseType: !833, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1567, file: !1568, line: 66, baseType: !621, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1567, file: !1568, line: 67, baseType: !1586, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!502, !816}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1567, file: !1568, line: 69, baseType: !1590, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !816, !656, !663}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1567, file: !1568, line: 71, baseType: !828, size: 64, offset: 704)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !137, file: !26, line: 785, baseType: !276, size: 64, offset: 5440)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !137, file: !26, line: 787, baseType: !824, size: 64, offset: 5504)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !137, file: !26, line: 788, baseType: !1597, size: 64, offset: 5568)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !137, file: !26, line: 789, baseType: !1600, size: 64, offset: 5632)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !137, file: !26, line: 791, baseType: !1603, size: 64, offset: 5696)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1604, file: !26, line: 598, baseType: !53, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1604, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1604, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1604, file: !26, line: 601, baseType: !581, size: 8, offset: 96)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1604, file: !26, line: 602, baseType: !581, size: 8, offset: 104)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !137, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !137, file: !26, line: 795, baseType: !581, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !137, file: !26, line: 796, baseType: !581, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !137, file: !26, line: 797, baseType: !581, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !137, file: !26, line: 798, baseType: !581, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !137, file: !26, line: 799, baseType: !581, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !134, file: !108, line: 245, baseType: !387, size: 64, offset: 5824)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !134, file: !108, line: 246, baseType: !7, size: 32, offset: 5888)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !134, file: !108, line: 247, baseType: !46, size: 32, offset: 5920)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !134, file: !108, line: 249, baseType: !145, size: 128, offset: 5952)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !134, file: !108, line: 250, baseType: !145, size: 128, offset: 6080)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !134, file: !108, line: 251, baseType: !145, size: 128, offset: 6208)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !134, file: !108, line: 252, baseType: !145, size: 128, offset: 6336)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !134, file: !108, line: 254, baseType: !1625, size: 64, offset: 6464)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !108, line: 411, size: 6720, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1634, !1635, !1636, !1640, !1644, !1645, !1646, !1647, !1648}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1626, file: !108, line: 412, baseType: !145, size: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1626, file: !108, line: 413, baseType: !225, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1626, file: !108, line: 416, baseType: !1631, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!46, !133}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1626, file: !108, line: 417, baseType: !1631, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1626, file: !108, line: 418, baseType: !1631, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1626, file: !108, line: 421, baseType: !1637, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!581, !133}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1626, file: !108, line: 422, baseType: !1641, size: 64, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!46, !133, !1292}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1626, file: !108, line: 423, baseType: !1631, size: 64, offset: 512)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1626, file: !108, line: 426, baseType: !123, size: 8, offset: 576)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1626, file: !108, line: 427, baseType: !137, size: 5824, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !1626, file: !108, line: 428, baseType: !145, size: 128, offset: 6464)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1626, file: !108, line: 429, baseType: !145, size: 128, offset: 6592)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !134, file: !108, line: 255, baseType: !1650, size: 64, offset: 6528)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !108, line: 202, size: 6976, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1666, !1670, !1671, !1672, !1673, !1674}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1651, file: !108, line: 203, baseType: !137, size: 5824)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1651, file: !108, line: 204, baseType: !123, size: 8, offset: 5824)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1651, file: !108, line: 205, baseType: !145, size: 128, offset: 5888)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1651, file: !108, line: 206, baseType: !145, size: 128, offset: 6016)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1651, file: !108, line: 207, baseType: !145, size: 128, offset: 6144)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1651, file: !108, line: 209, baseType: !1625, size: 64, offset: 6272)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1651, file: !108, line: 210, baseType: !1660, size: 64, offset: 6336)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !108, line: 369, size: 128, elements: !1662)
!1662 = !{!1663, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1661, file: !108, line: 370, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !124)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1661, file: !108, line: 371, baseType: !1660, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1651, file: !108, line: 212, baseType: !1667, size: 400, offset: 6400)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 400, elements: !1668)
!1668 = !{!1669}
!1669 = !DISubrange(count: 50)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !1651, file: !108, line: 213, baseType: !123, size: 8, offset: 6800)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !1651, file: !108, line: 214, baseType: !123, size: 8, offset: 6808)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1651, file: !108, line: 215, baseType: !7, size: 32, offset: 6816)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1651, file: !108, line: 216, baseType: !123, size: 8, offset: 6848)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1651, file: !108, line: 217, baseType: !1675, size: 64, offset: 6912)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !108, line: 217, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !134, file: !108, line: 256, baseType: !1678, size: 64, offset: 6592)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !134, file: !108, line: 257, baseType: !1680, size: 64, offset: 6656)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !108, line: 226, size: 256, elements: !1682)
!1682 = !{!1683, !1684, !1720, !1721}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !1681, file: !108, line: 227, baseType: !1650, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1681, file: !108, line: 228, baseType: !1685, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !108, line: 388, size: 2240, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1702, !1703, !1707, !1711, !1715, !1719}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1686, file: !108, line: 389, baseType: !145, size: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1686, file: !108, line: 390, baseType: !225, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1686, file: !108, line: 391, baseType: !1691, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !117, line: 245, size: 640, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1693, file: !117, line: 246, baseType: !120, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1693, file: !117, line: 247, baseType: !127, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !1693, file: !117, line: 250, baseType: !1698, size: 512, offset: 128)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1699, size: 512, elements: !124)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !117, line: 248, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1699, file: !117, line: 249, baseType: !120, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !108, line: 392, baseType: !7, size: 32, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1686, file: !108, line: 393, baseType: !1704, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!46, !1680, !1691}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1686, file: !108, line: 395, baseType: !1708, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1680}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1686, file: !108, line: 396, baseType: !1712, size: 64, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!46, !1680, !1292}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1686, file: !108, line: 397, baseType: !1716, size: 64, offset: 512)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!46, !1680}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1686, file: !108, line: 398, baseType: !107, size: 1664, offset: 576)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1681, file: !108, line: 229, baseType: !94, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !1681, file: !108, line: 230, baseType: !1292, size: 32, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !134, file: !108, line: 259, baseType: !1660, size: 64, offset: 6720)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !134, file: !108, line: 261, baseType: !46, size: 32, offset: 6784)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !134, file: !108, line: 262, baseType: !46, size: 32, offset: 6816)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !134, file: !108, line: 263, baseType: !7, size: 32, offset: 6848)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !134, file: !108, line: 264, baseType: !145, size: 128, offset: 6912)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !134, file: !108, line: 265, baseType: !145, size: 128, offset: 7040)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !108, line: 267, baseType: !1667, size: 400, offset: 7168)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !108, line: 268, baseType: !46, size: 32, offset: 7584)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !134, file: !108, line: 269, baseType: !1675, size: 64, offset: 7616)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !134, file: !108, line: 270, baseType: !94, size: 64, offset: 7680)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !107, file: !108, line: 379, baseType: !1733, size: 64, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !133}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !107, file: !108, line: 380, baseType: !1733, size: 64, offset: 320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !107, file: !108, line: 381, baseType: !1641, size: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !107, file: !108, line: 382, baseType: !1631, size: 64, offset: 448)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !107, file: !108, line: 383, baseType: !874, size: 1152, offset: 512)
!1740 = !DIGlobalVariableExpression(var: !1741, expr: !DIExpression())
!1741 = distinct !DIGlobalVariable(name: "pnp_dev_table", scope: !2, file: !3, line: 18, type: !1742, isLocal: true, isDefinition: true)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 384, elements: !226)
!1743 = !DIGlobalVariableExpression(var: !1744, expr: !DIExpression())
!1744 = distinct !DIGlobalVariable(scope: null, file: !3, line: 37, type: !101, isLocal: true, isDefinition: true)
!1745 = !DIGlobalVariableExpression(var: !1746, expr: !DIExpression())
!1746 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !1747, isLocal: true, isDefinition: true)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 136, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 17)
!1750 = !DIGlobalVariableExpression(var: !1751, expr: !DIExpression())
!1751 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !1752, isLocal: true, isDefinition: true)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 72, elements: !1753)
!1753 = !{!1754}
!1754 = !DISubrange(count: 9)
!1755 = !DIGlobalVariableExpression(var: !1756, expr: !DIExpression())
!1756 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !1757, isLocal: true, isDefinition: true)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 104, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 13)
!1760 = !DIGlobalVariableExpression(var: !1761, expr: !DIExpression())
!1761 = distinct !DIGlobalVariable(scope: null, file: !84, line: 480, type: !1762, isLocal: true, isDefinition: true)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 168, elements: !1763)
!1763 = !{!1764}
!1764 = !DISubrange(count: 21)
!1765 = !{i32 7, !"Dwarf Version", i32 5}
!1766 = !{i32 2, !"Debug Info Version", i32 3}
!1767 = !{i32 1, !"wchar_size", i32 2}
!1768 = !{i32 8, !"cf-protection-branch", i32 1}
!1769 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1770 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1771 = !{i32 1, !"Code Model", i32 2}
!1772 = !{i32 1, !"override-stack-alignment", i32 8}
!1773 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1774 = distinct !DISubprogram(name: "__initstub__kmod_pnp__207_113_pnp_system_init5", scope: !3, file: !3, line: 113, type: !1012, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1775 = !DILocation(line: 113, column: 1, scope: !1774)
!1776 = distinct !DISubprogram(name: "pnp_system_init", scope: !3, file: !3, line: 104, type: !1012, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1777 = !DILocation(line: 106, column: 9, scope: !1776)
!1778 = !DILocation(line: 106, column: 2, scope: !1776)
!1779 = !DISubprogram(name: "pnp_register_driver", scope: !108, file: !108, line: 469, type: !1780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!46, !1678}
!1782 = distinct !DISubprogram(name: "system_pnp_probe", scope: !3, file: !3, line: 90, type: !131, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1783)
!1783 = !{!1784, !1785}
!1784 = !DILocalVariable(name: "dev", arg: 1, scope: !1782, file: !3, line: 90, type: !133)
!1785 = !DILocalVariable(name: "dev_id", arg: 2, scope: !1782, file: !3, line: 91, type: !114)
!1786 = !DILocation(line: 90, column: 45, scope: !1782)
!1787 = !DILocation(line: 91, column: 36, scope: !1782)
!1788 = !DILocation(line: 93, column: 27, scope: !1782)
!1789 = !DILocation(line: 93, column: 2, scope: !1782)
!1790 = !DILocation(line: 94, column: 2, scope: !1782)
!1791 = distinct !DISubprogram(name: "reserve_resources_of_dev", scope: !3, file: !3, line: 56, type: !1734, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1792)
!1792 = !{!1793, !1794, !1809}
!1793 = !DILocalVariable(name: "dev", arg: 1, scope: !1791, file: !3, line: 56, type: !133)
!1794 = !DILocalVariable(name: "res", scope: !1791, file: !3, line: 58, type: !1795)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !1797, line: 21, size: 512, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!1798 = !{!1799, !1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1796, file: !1797, line: 22, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !96, line: 164, baseType: !1801)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !96, line: 159, baseType: !387)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1796, file: !1797, line: 23, baseType: !1800, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1796, file: !1797, line: 24, baseType: !111, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1796, file: !1797, line: 25, baseType: !97, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1796, file: !1797, line: 26, baseType: !97, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1796, file: !1797, line: 27, baseType: !1795, size: 64, offset: 320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1796, file: !1797, line: 27, baseType: !1795, size: 64, offset: 384)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1796, file: !1797, line: 27, baseType: !1795, size: 64, offset: 448)
!1809 = !DILocalVariable(name: "i", scope: !1791, file: !3, line: 59, type: !46)
!1810 = !DILocation(line: 56, column: 54, scope: !1791)
!1811 = !DILocation(line: 58, column: 2, scope: !1791)
!1812 = !DILocation(line: 58, column: 19, scope: !1791)
!1813 = !DILocation(line: 59, column: 2, scope: !1791)
!1814 = !DILocation(line: 59, column: 6, scope: !1791)
!1815 = !DILocation(line: 61, column: 9, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 61, column: 2)
!1817 = !DILocation(line: 61, column: 7, scope: !1816)
!1818 = !DILocation(line: 61, column: 38, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 61, column: 2)
!1820 = !DILocation(line: 61, column: 58, scope: !1819)
!1821 = !DILocation(line: 61, column: 21, scope: !1819)
!1822 = !DILocation(line: 61, column: 19, scope: !1819)
!1823 = !DILocation(line: 61, column: 2, scope: !1816)
!1824 = !DILocation(line: 62, column: 7, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 62, column: 7)
!1826 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 61, column: 68)
!1827 = !DILocation(line: 62, column: 12, scope: !1825)
!1828 = !DILocation(line: 62, column: 18, scope: !1825)
!1829 = !DILocation(line: 62, column: 7, scope: !1826)
!1830 = !DILocation(line: 63, column: 4, scope: !1825)
!1831 = !DILocation(line: 64, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 64, column: 7)
!1833 = !DILocation(line: 64, column: 12, scope: !1832)
!1834 = !DILocation(line: 64, column: 18, scope: !1832)
!1835 = !DILocation(line: 64, column: 7, scope: !1826)
!1836 = !DILocation(line: 65, column: 4, scope: !1832)
!1837 = !DILocation(line: 66, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 66, column: 7)
!1839 = !DILocation(line: 66, column: 12, scope: !1838)
!1840 = !DILocation(line: 66, column: 18, scope: !1838)
!1841 = !DILocation(line: 66, column: 7, scope: !1826)
!1842 = !DILocation(line: 75, column: 4, scope: !1838)
!1843 = !DILocation(line: 76, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 76, column: 7)
!1845 = !DILocation(line: 76, column: 12, scope: !1844)
!1846 = !DILocation(line: 76, column: 18, scope: !1844)
!1847 = !DILocation(line: 76, column: 23, scope: !1844)
!1848 = !DILocation(line: 76, column: 16, scope: !1844)
!1849 = !DILocation(line: 76, column: 7, scope: !1826)
!1850 = !DILocation(line: 77, column: 4, scope: !1844)
!1851 = !DILocation(line: 79, column: 17, scope: !1826)
!1852 = !DILocation(line: 79, column: 22, scope: !1826)
!1853 = !DILocation(line: 79, column: 3, scope: !1826)
!1854 = !DILocation(line: 80, column: 2, scope: !1826)
!1855 = !DILocation(line: 61, column: 64, scope: !1819)
!1856 = !DILocation(line: 61, column: 2, scope: !1819)
!1857 = distinct !{!1857, !1823, !1858, !1859, !1860}
!1858 = !DILocation(line: 80, column: 2, scope: !1816)
!1859 = !{!"llvm.loop.mustprogress"}
!1860 = !{!"llvm.loop.unroll.disable"}
!1861 = !DILocation(line: 82, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 82, column: 2)
!1863 = !DILocation(line: 82, column: 7, scope: !1862)
!1864 = !DILocation(line: 82, column: 38, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 82, column: 2)
!1866 = !DILocation(line: 82, column: 59, scope: !1865)
!1867 = !DILocation(line: 82, column: 21, scope: !1865)
!1868 = !DILocation(line: 82, column: 19, scope: !1865)
!1869 = !DILocation(line: 82, column: 2, scope: !1862)
!1870 = !DILocation(line: 83, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 83, column: 7)
!1872 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 82, column: 69)
!1873 = !DILocation(line: 83, column: 12, scope: !1871)
!1874 = !DILocation(line: 83, column: 18, scope: !1871)
!1875 = !DILocation(line: 83, column: 7, scope: !1872)
!1876 = !DILocation(line: 84, column: 4, scope: !1871)
!1877 = !DILocation(line: 86, column: 17, scope: !1872)
!1878 = !DILocation(line: 86, column: 22, scope: !1872)
!1879 = !DILocation(line: 86, column: 3, scope: !1872)
!1880 = !DILocation(line: 87, column: 2, scope: !1872)
!1881 = !DILocation(line: 82, column: 65, scope: !1865)
!1882 = !DILocation(line: 82, column: 2, scope: !1865)
!1883 = distinct !{!1883, !1869, !1884, !1859, !1860}
!1884 = !DILocation(line: 87, column: 2, scope: !1862)
!1885 = !DILocation(line: 88, column: 1, scope: !1791)
!1886 = !DISubprogram(name: "pnp_get_resource", scope: !108, file: !108, line: 27, type: !1887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!1795, !133, !97, !7}
!1889 = distinct !DISubprogram(name: "reserve_range", scope: !3, file: !3, line: 26, type: !1890, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !133, !1795, !46}
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900}
!1893 = !DILocalVariable(name: "dev", arg: 1, scope: !1889, file: !3, line: 26, type: !133)
!1894 = !DILocalVariable(name: "r", arg: 2, scope: !1889, file: !3, line: 26, type: !1795)
!1895 = !DILocalVariable(name: "port", arg: 3, scope: !1889, file: !3, line: 26, type: !46)
!1896 = !DILocalVariable(name: "regionid", scope: !1889, file: !3, line: 28, type: !225)
!1897 = !DILocalVariable(name: "pnpid", scope: !1889, file: !3, line: 29, type: !111)
!1898 = !DILocalVariable(name: "start", scope: !1889, file: !3, line: 30, type: !1800)
!1899 = !DILocalVariable(name: "end", scope: !1889, file: !3, line: 30, type: !1800)
!1900 = !DILocalVariable(name: "res", scope: !1889, file: !3, line: 31, type: !1795)
!1901 = !DILocation(line: 26, column: 43, scope: !1889)
!1902 = !DILocation(line: 26, column: 65, scope: !1889)
!1903 = !DILocation(line: 26, column: 72, scope: !1889)
!1904 = !DILocation(line: 28, column: 2, scope: !1889)
!1905 = !DILocation(line: 28, column: 8, scope: !1889)
!1906 = !DILocation(line: 29, column: 2, scope: !1889)
!1907 = !DILocation(line: 29, column: 14, scope: !1889)
!1908 = !DILocation(line: 29, column: 32, scope: !1889)
!1909 = !DILocation(line: 29, column: 37, scope: !1889)
!1910 = !DILocation(line: 29, column: 22, scope: !1889)
!1911 = !DILocation(line: 30, column: 2, scope: !1889)
!1912 = !DILocation(line: 30, column: 18, scope: !1889)
!1913 = !DILocation(line: 30, column: 26, scope: !1889)
!1914 = !DILocation(line: 30, column: 29, scope: !1889)
!1915 = !DILocation(line: 30, column: 36, scope: !1889)
!1916 = !DILocation(line: 30, column: 42, scope: !1889)
!1917 = !DILocation(line: 30, column: 45, scope: !1889)
!1918 = !DILocation(line: 31, column: 2, scope: !1889)
!1919 = !DILocation(line: 31, column: 19, scope: !1889)
!1920 = !DILocation(line: 33, column: 13, scope: !1889)
!1921 = !DILocation(line: 33, column: 11, scope: !1889)
!1922 = !DILocation(line: 34, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 34, column: 6)
!1924 = !DILocation(line: 34, column: 6, scope: !1889)
!1925 = !DILocation(line: 35, column: 3, scope: !1923)
!1926 = !DILocation(line: 37, column: 11, scope: !1889)
!1927 = !DILocation(line: 37, column: 35, scope: !1889)
!1928 = !DILocation(line: 37, column: 2, scope: !1889)
!1929 = !DILocation(line: 38, column: 6, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 38, column: 6)
!1931 = !DILocation(line: 38, column: 6, scope: !1889)
!1932 = !DILocation(line: 39, column: 9, scope: !1930)
!1933 = !DILocation(line: 39, column: 7, scope: !1930)
!1934 = !DILocation(line: 39, column: 3, scope: !1930)
!1935 = !DILocation(line: 41, column: 9, scope: !1930)
!1936 = !DILocation(line: 41, column: 7, scope: !1930)
!1937 = !DILocation(line: 42, column: 6, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 42, column: 6)
!1939 = !DILocation(line: 42, column: 6, scope: !1889)
!1940 = !DILocation(line: 43, column: 3, scope: !1938)
!1941 = !DILocation(line: 43, column: 8, scope: !1938)
!1942 = !DILocation(line: 43, column: 14, scope: !1938)
!1943 = !DILocation(line: 45, column: 9, scope: !1938)
!1944 = !DILocation(line: 45, column: 3, scope: !1938)
!1945 = !DILocation(line: 52, column: 2, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 52, column: 2)
!1947 = !DILocation(line: 52, column: 2, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 52, column: 2)
!1949 = !DILocation(line: 54, column: 1, scope: !1889)
!1950 = distinct !DISubprogram(name: "dev_name", scope: !26, file: !26, line: 858, type: !1951, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!111, !816}
!1953 = !{!1954}
!1954 = !DILocalVariable(name: "dev", arg: 1, scope: !1950, file: !26, line: 858, type: !816)
!1955 = !DILocation(line: 858, column: 57, scope: !1950)
!1956 = !DILocation(line: 861, column: 6, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1950, file: !26, line: 861, column: 6)
!1958 = !DILocation(line: 861, column: 11, scope: !1957)
!1959 = !DILocation(line: 861, column: 6, scope: !1950)
!1960 = !DILocation(line: 862, column: 10, scope: !1957)
!1961 = !DILocation(line: 862, column: 15, scope: !1957)
!1962 = !DILocation(line: 862, column: 3, scope: !1957)
!1963 = !DILocation(line: 864, column: 23, scope: !1950)
!1964 = !DILocation(line: 864, column: 28, scope: !1950)
!1965 = !DILocation(line: 864, column: 9, scope: !1950)
!1966 = !DILocation(line: 864, column: 2, scope: !1950)
!1967 = !DILocation(line: 865, column: 1, scope: !1950)
!1968 = distinct !DISubprogram(name: "kmalloc", scope: !84, file: !84, line: 591, type: !1969, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!94, !272, !95}
!1971 = !{!1972, !1973, !1974}
!1972 = !DILocalVariable(name: "size", arg: 1, scope: !1968, file: !84, line: 591, type: !272)
!1973 = !DILocalVariable(name: "flags", arg: 2, scope: !1968, file: !84, line: 591, type: !95)
!1974 = !DILocalVariable(name: "index", scope: !1975, file: !84, line: 594, type: !7)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !84, line: 593, column: 42)
!1976 = distinct !DILexicalBlock(scope: !1968, file: !84, line: 593, column: 6)
!1977 = !DILocation(line: 591, column: 61, scope: !1968)
!1978 = !DILocation(line: 591, column: 73, scope: !1968)
!1979 = !DILocation(line: 593, column: 27, scope: !1976)
!1980 = !DILocation(line: 593, column: 6, scope: !1976)
!1981 = !DILocation(line: 593, column: 33, scope: !1976)
!1982 = !DILocation(line: 593, column: 36, scope: !1976)
!1983 = !DILocation(line: 593, column: 6, scope: !1968)
!1984 = !DILocation(line: 594, column: 3, scope: !1975)
!1985 = !DILocation(line: 594, column: 16, scope: !1975)
!1986 = !DILocation(line: 596, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1975, file: !84, line: 596, column: 7)
!1988 = !DILocation(line: 596, column: 12, scope: !1987)
!1989 = !DILocation(line: 596, column: 7, scope: !1975)
!1990 = !DILocation(line: 597, column: 25, scope: !1987)
!1991 = !DILocation(line: 597, column: 31, scope: !1987)
!1992 = !DILocation(line: 597, column: 11, scope: !1987)
!1993 = !DILocation(line: 597, column: 4, scope: !1987)
!1994 = !DILocation(line: 599, column: 11, scope: !1975)
!1995 = !DILocation(line: 599, column: 9, scope: !1975)
!1996 = !DILocation(line: 601, column: 33, scope: !1975)
!1997 = !DILocation(line: 601, column: 40, scope: !1975)
!1998 = !DILocation(line: 601, column: 20, scope: !1975)
!1999 = !DILocation(line: 601, column: 5, scope: !1975)
!2000 = !DILocation(line: 601, column: 51, scope: !1975)
!2001 = !DILocation(line: 602, column: 5, scope: !1975)
!2002 = !DILocation(line: 602, column: 12, scope: !1975)
!2003 = !DILocation(line: 600, column: 10, scope: !1975)
!2004 = !DILocation(line: 600, column: 3, scope: !1975)
!2005 = !DILocation(line: 603, column: 2, scope: !1976)
!2006 = !DILocation(line: 604, column: 19, scope: !1968)
!2007 = !DILocation(line: 604, column: 25, scope: !1968)
!2008 = !DILocation(line: 604, column: 9, scope: !1968)
!2009 = !DILocation(line: 604, column: 2, scope: !1968)
!2010 = !DILocation(line: 605, column: 1, scope: !1968)
!2011 = !DISubprogram(name: "snprintf", scope: !2012, file: !2012, line: 12, type: !2013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2012 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!46, !225, !272, !111, null}
!2015 = !DISubprogram(name: "__request_region", scope: !1797, file: !1797, line: 278, type: !2016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!1795, !1795, !1800, !1800, !111, !46}
!2018 = !DISubprogram(name: "kfree", scope: !84, file: !84, line: 227, type: !2019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !502}
!2021 = !DISubprogram(name: "_dev_info", scope: !2022, file: !2022, line: 56, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !816, !111, null}
!2025 = distinct !DISubprogram(name: "kobject_name", scope: !141, file: !141, line: 87, type: !213, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2026 = !{!2027}
!2027 = !DILocalVariable(name: "kobj", arg: 1, scope: !2025, file: !141, line: 87, type: !208)
!2028 = !DILocation(line: 87, column: 62, scope: !2025)
!2029 = !DILocation(line: 89, column: 9, scope: !2025)
!2030 = !DILocation(line: 89, column: 15, scope: !2025)
!2031 = !DILocation(line: 89, column: 2, scope: !2025)
!2032 = !DISubprogram(name: "kmalloc_large", scope: !84, file: !84, line: 531, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2033 = distinct !DISubprogram(name: "__kmalloc_index", scope: !84, file: !84, line: 444, type: !2034, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!7, !272, !581}
!2036 = !{!2037, !2038}
!2037 = !DILocalVariable(name: "size", arg: 1, scope: !2033, file: !84, line: 444, type: !272)
!2038 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2033, file: !84, line: 445, type: !581)
!2039 = !DILocation(line: 444, column: 60, scope: !2033)
!2040 = !DILocation(line: 445, column: 16, scope: !2033)
!2041 = !DILocation(line: 447, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 447, column: 6)
!2043 = !DILocation(line: 447, column: 6, scope: !2033)
!2044 = !DILocation(line: 448, column: 3, scope: !2042)
!2045 = !DILocation(line: 450, column: 6, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 450, column: 6)
!2047 = !DILocation(line: 450, column: 11, scope: !2046)
!2048 = !DILocation(line: 450, column: 6, scope: !2033)
!2049 = !DILocation(line: 451, column: 3, scope: !2046)
!2050 = !DILocation(line: 453, column: 32, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 453, column: 6)
!2052 = !DILocation(line: 453, column: 37, scope: !2051)
!2053 = !DILocation(line: 453, column: 42, scope: !2051)
!2054 = !DILocation(line: 453, column: 45, scope: !2051)
!2055 = !DILocation(line: 453, column: 50, scope: !2051)
!2056 = !DILocation(line: 453, column: 6, scope: !2033)
!2057 = !DILocation(line: 454, column: 3, scope: !2051)
!2058 = !DILocation(line: 455, column: 32, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 455, column: 6)
!2060 = !DILocation(line: 455, column: 37, scope: !2059)
!2061 = !DILocation(line: 455, column: 43, scope: !2059)
!2062 = !DILocation(line: 455, column: 46, scope: !2059)
!2063 = !DILocation(line: 455, column: 51, scope: !2059)
!2064 = !DILocation(line: 455, column: 6, scope: !2033)
!2065 = !DILocation(line: 456, column: 3, scope: !2059)
!2066 = !DILocation(line: 457, column: 6, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 457, column: 6)
!2068 = !DILocation(line: 457, column: 11, scope: !2067)
!2069 = !DILocation(line: 457, column: 6, scope: !2033)
!2070 = !DILocation(line: 457, column: 26, scope: !2067)
!2071 = !DILocation(line: 458, column: 6, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 458, column: 6)
!2073 = !DILocation(line: 458, column: 11, scope: !2072)
!2074 = !DILocation(line: 458, column: 6, scope: !2033)
!2075 = !DILocation(line: 458, column: 26, scope: !2072)
!2076 = !DILocation(line: 459, column: 6, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 459, column: 6)
!2078 = !DILocation(line: 459, column: 11, scope: !2077)
!2079 = !DILocation(line: 459, column: 6, scope: !2033)
!2080 = !DILocation(line: 459, column: 26, scope: !2077)
!2081 = !DILocation(line: 460, column: 6, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 460, column: 6)
!2083 = !DILocation(line: 460, column: 11, scope: !2082)
!2084 = !DILocation(line: 460, column: 6, scope: !2033)
!2085 = !DILocation(line: 460, column: 26, scope: !2082)
!2086 = !DILocation(line: 461, column: 6, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 461, column: 6)
!2088 = !DILocation(line: 461, column: 11, scope: !2087)
!2089 = !DILocation(line: 461, column: 6, scope: !2033)
!2090 = !DILocation(line: 461, column: 26, scope: !2087)
!2091 = !DILocation(line: 462, column: 6, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 462, column: 6)
!2093 = !DILocation(line: 462, column: 11, scope: !2092)
!2094 = !DILocation(line: 462, column: 6, scope: !2033)
!2095 = !DILocation(line: 462, column: 26, scope: !2092)
!2096 = !DILocation(line: 463, column: 6, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 463, column: 6)
!2098 = !DILocation(line: 463, column: 11, scope: !2097)
!2099 = !DILocation(line: 463, column: 6, scope: !2033)
!2100 = !DILocation(line: 463, column: 26, scope: !2097)
!2101 = !DILocation(line: 464, column: 6, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 464, column: 6)
!2103 = !DILocation(line: 464, column: 11, scope: !2102)
!2104 = !DILocation(line: 464, column: 6, scope: !2033)
!2105 = !DILocation(line: 464, column: 26, scope: !2102)
!2106 = !DILocation(line: 465, column: 6, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 465, column: 6)
!2108 = !DILocation(line: 465, column: 11, scope: !2107)
!2109 = !DILocation(line: 465, column: 6, scope: !2033)
!2110 = !DILocation(line: 465, column: 26, scope: !2107)
!2111 = !DILocation(line: 466, column: 6, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 466, column: 6)
!2113 = !DILocation(line: 466, column: 11, scope: !2112)
!2114 = !DILocation(line: 466, column: 6, scope: !2033)
!2115 = !DILocation(line: 466, column: 26, scope: !2112)
!2116 = !DILocation(line: 467, column: 6, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 467, column: 6)
!2118 = !DILocation(line: 467, column: 11, scope: !2117)
!2119 = !DILocation(line: 467, column: 6, scope: !2033)
!2120 = !DILocation(line: 467, column: 26, scope: !2117)
!2121 = !DILocation(line: 468, column: 6, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 468, column: 6)
!2123 = !DILocation(line: 468, column: 11, scope: !2122)
!2124 = !DILocation(line: 468, column: 6, scope: !2033)
!2125 = !DILocation(line: 468, column: 26, scope: !2122)
!2126 = !DILocation(line: 469, column: 6, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 469, column: 6)
!2128 = !DILocation(line: 469, column: 11, scope: !2127)
!2129 = !DILocation(line: 469, column: 6, scope: !2033)
!2130 = !DILocation(line: 469, column: 26, scope: !2127)
!2131 = !DILocation(line: 470, column: 6, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 470, column: 6)
!2133 = !DILocation(line: 470, column: 11, scope: !2132)
!2134 = !DILocation(line: 470, column: 6, scope: !2033)
!2135 = !DILocation(line: 470, column: 26, scope: !2132)
!2136 = !DILocation(line: 471, column: 6, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 471, column: 6)
!2138 = !DILocation(line: 471, column: 11, scope: !2137)
!2139 = !DILocation(line: 471, column: 6, scope: !2033)
!2140 = !DILocation(line: 471, column: 26, scope: !2137)
!2141 = !DILocation(line: 472, column: 6, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 472, column: 6)
!2143 = !DILocation(line: 472, column: 11, scope: !2142)
!2144 = !DILocation(line: 472, column: 6, scope: !2033)
!2145 = !DILocation(line: 472, column: 26, scope: !2142)
!2146 = !DILocation(line: 473, column: 6, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 473, column: 6)
!2148 = !DILocation(line: 473, column: 11, scope: !2147)
!2149 = !DILocation(line: 473, column: 6, scope: !2033)
!2150 = !DILocation(line: 473, column: 26, scope: !2147)
!2151 = !DILocation(line: 474, column: 6, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 474, column: 6)
!2153 = !DILocation(line: 474, column: 11, scope: !2152)
!2154 = !DILocation(line: 474, column: 6, scope: !2033)
!2155 = !DILocation(line: 474, column: 27, scope: !2152)
!2156 = !DILocation(line: 475, column: 6, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 475, column: 6)
!2158 = !DILocation(line: 475, column: 11, scope: !2157)
!2159 = !DILocation(line: 475, column: 6, scope: !2033)
!2160 = !DILocation(line: 475, column: 32, scope: !2157)
!2161 = !DILocation(line: 477, column: 50, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2033, file: !84, line: 477, column: 6)
!2163 = !{i8 0, i8 2}
!2164 = !DILocation(line: 477, column: 6, scope: !2033)
!2165 = !DILocation(line: 478, column: 3, scope: !2162)
!2166 = !DILocation(line: 478, column: 3, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !84, line: 478, column: 3)
!2168 = distinct !DILexicalBlock(scope: !2162, file: !84, line: 478, column: 3)
!2169 = !{i32 -2142244634}
!2170 = !DILocation(line: 478, column: 3, scope: !2168)
!2171 = !DILocation(line: 480, column: 3, scope: !2162)
!2172 = !DILocation(line: 480, column: 3, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2162, file: !84, line: 480, column: 3)
!2174 = !DILocation(line: 480, column: 3, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2173, file: !84, line: 480, column: 3)
!2176 = !DILocation(line: 480, column: 3, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !84, line: 480, column: 3)
!2178 = !{i64 2152722865, i64 2152722894, i64 2152722940, i64 2152722998, i64 2152723052, i64 2152723106, i64 2152723161, i64 2152723192}
!2179 = !DILocation(line: 483, column: 2, scope: !2033)
!2180 = !DILocation(line: 484, column: 1, scope: !2033)
!2181 = !DISubprogram(name: "kmalloc_trace", scope: !84, file: !84, line: 525, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!94, !2184, !95, !272}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2186, line: 11, flags: DIFlagFwdDecl)
!2186 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2187 = distinct !DISubprogram(name: "kmalloc_type", scope: !84, file: !84, line: 401, type: !2188, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!83, !95, !97}
!2190 = !{!2191, !2192}
!2191 = !DILocalVariable(name: "flags", arg: 1, scope: !2187, file: !84, line: 401, type: !95)
!2192 = !DILocalVariable(name: "caller", arg: 2, scope: !2187, file: !84, line: 401, type: !97)
!2193 = !DILocation(line: 401, column: 67, scope: !2187)
!2194 = !DILocation(line: 401, column: 88, scope: !2187)
!2195 = !DILocation(line: 407, column: 6, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2187, file: !84, line: 407, column: 6)
!2197 = !DILocation(line: 407, column: 6, scope: !2187)
!2198 = !DILocation(line: 413, column: 3, scope: !2196)
!2199 = !DILocation(line: 423, column: 38, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2187, file: !84, line: 423, column: 6)
!2201 = !DILocation(line: 423, column: 44, scope: !2200)
!2202 = !DILocation(line: 423, column: 6, scope: !2187)
!2203 = !DILocation(line: 424, column: 3, scope: !2200)
!2204 = !DILocation(line: 426, column: 3, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2187, file: !84, line: 425, column: 6)
!2206 = !DILocation(line: 429, column: 1, scope: !2187)
!2207 = !DISubprogram(name: "__kmalloc", scope: !84, file: !84, line: 488, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2208 = !DISubprogram(name: "__compiletime_assert_206", scope: !84, file: !84, line: 478, type: !1251, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
