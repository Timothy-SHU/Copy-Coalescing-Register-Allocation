; ModuleID = 'drivers/pnp/support.c'
source_filename = "drivers/pnp/support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_is_active: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_is_active ; .previous"

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
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.pnp_option = type { %struct.list_head, i32, i64, %union.anon.2 }
%union.anon.2 = type { %struct.pnp_port }
%struct.pnp_port = type { i64, i64, i64, i64, i8 }
%struct.pnp_mem = type { i64, i64, i64, i64, i8 }
%struct.pnp_irq = type { %struct.pnp_irq_mask_t, i8 }
%struct.pnp_irq_mask_t = type { [4 x i64] }
%struct.pnp_dma = type { i8, i8 }

@__UNIQUE_ID___addressable_pnp_is_active205 = internal global ptr @pnp_is_active, section ".discard.addressable", align 8, !dbg !0
@hex_asc = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1, !dbg !131
@.str.1 = private unnamed_addr constant [4 x i8] c"mem\00", align 1, !dbg !136
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1, !dbg !141
@.str.3 = private unnamed_addr constant [4 x i8] c"dma\00", align 1, !dbg !143
@.str.4 = private unnamed_addr constant [4 x i8] c"bus\00", align 1, !dbg !145
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !147
@pnp_debug = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"\017\00", align 1, !dbg !152
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: no current resources\0A\00", align 1, !dbg !154
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: current resources:\0A\00", align 1, !dbg !159
@.str.9 = private unnamed_addr constant [5 x i8] c"%pr\0A\00", align 1, !dbg !164
@.str.10 = private unnamed_addr constant [10 x i8] c"preferred\00", align 1, !dbg !169
@.str.11 = private unnamed_addr constant [11 x i8] c"acceptable\00", align 1, !dbg !174
@.str.12 = private unnamed_addr constant [11 x i8] c"functional\00", align 1, !dbg !179
@.str.13 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1, !dbg !181
@.str.14 = private unnamed_addr constant [25 x i8] c"  dependent set %d (%s) \00", align 1, !dbg !183
@.str.15 = private unnamed_addr constant [15 x i8] c"  independent \00", align 1, !dbg !188
@.str.16 = private unnamed_addr constant [55 x i8] c"io  min %#llx max %#llx align %lld size %lld flags %#x\00", align 1, !dbg !193
@.str.17 = private unnamed_addr constant [55 x i8] c"mem min %#llx max %#llx align %lld size %lld flags %#x\00", align 1, !dbg !198
@.str.18 = private unnamed_addr constant [8 x i8] c" <none>\00", align 1, !dbg !200
@.str.19 = private unnamed_addr constant [4 x i8] c" %d\00", align 1, !dbg !202
@.str.20 = private unnamed_addr constant [11 x i8] c" flags %#x\00", align 1, !dbg !204
@.str.21 = private unnamed_addr constant [12 x i8] c" (optional)\00", align 1, !dbg !206
@.str.22 = private unnamed_addr constant [25 x i8] c" (bitmask %#x) flags %#x\00", align 1, !dbg !211
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !213
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_pnp_is_active205], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_is_active(ptr noundef %dev) #0 align 16 !dbg !224 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1839, metadata !DIExpression()), !dbg !1840
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1841
  %call = call i64 @pnp_port_start(ptr noundef %0, i32 noundef 0) #9, !dbg !1843
  %tobool = icmp ne i64 %call, 0, !dbg !1843
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !1844

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1845
  %call1 = call i64 @pnp_port_len(ptr noundef %1, i32 noundef 0) #9, !dbg !1846
  %cmp = icmp ule i64 %call1, 1, !dbg !1847
  br i1 %cmp, label %land.lhs.true2, label %if.else, !dbg !1848

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1849
  %call3 = call i64 @pnp_mem_start(ptr noundef %2, i32 noundef 0) #9, !dbg !1850
  %tobool4 = icmp ne i64 %call3, 0, !dbg !1850
  br i1 %tobool4, label %if.else, label %land.lhs.true5, !dbg !1851

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !1852
  %call6 = call i64 @pnp_mem_len(ptr noundef %3, i32 noundef 0) #9, !dbg !1853
  %cmp7 = icmp ule i64 %call6, 1, !dbg !1854
  br i1 %cmp7, label %land.lhs.true8, label %if.else, !dbg !1855

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !1856
  %call9 = call i64 @pnp_irq(ptr noundef %4, i32 noundef 0) #9, !dbg !1857
  %cmp10 = icmp eq i64 %call9, -1, !dbg !1858
  br i1 %cmp10, label %land.lhs.true11, label %if.else, !dbg !1859

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !1860
  %call12 = call i64 @pnp_dma(ptr noundef %5, i32 noundef 0) #9, !dbg !1861
  %cmp13 = icmp eq i64 %call12, -1, !dbg !1862
  br i1 %cmp13, label %if.then, label %if.else, !dbg !1863

if.then:                                          ; preds = %land.lhs.true11
  store i32 0, ptr %retval, align 4, !dbg !1864
  br label %return, !dbg !1864

if.else:                                          ; preds = %land.lhs.true11, %land.lhs.true8, %land.lhs.true5, %land.lhs.true2, %land.lhs.true, %entry
  store i32 1, ptr %retval, align 4, !dbg !1865
  br label %return, !dbg !1865

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !1866
  ret i32 %6, !dbg !1866
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pnp_port_start(ptr noundef %dev, i32 noundef %bar) #2 align 16 !dbg !1867 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1871, metadata !DIExpression()), !dbg !1874
  store i32 %bar, ptr %bar.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !1872, metadata !DIExpression()), !dbg !1875
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !1876
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1873, metadata !DIExpression()), !dbg !1877
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1878
  %1 = load i32, ptr %bar.addr, align 4, !dbg !1879
  %call = call ptr @pnp_get_resource(ptr noundef %0, i64 noundef 256, i32 noundef %1) #9, !dbg !1880
  store ptr %call, ptr %res, align 8, !dbg !1877
  %2 = load ptr, ptr %res, align 8, !dbg !1881
  %call1 = call i32 @pnp_resource_valid(ptr noundef %2) #9, !dbg !1883
  %tobool = icmp ne i32 %call1, 0, !dbg !1883
  br i1 %tobool, label %if.then, label %if.end, !dbg !1884

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %res, align 8, !dbg !1885
  %start = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 0, !dbg !1886
  %4 = load i64, ptr %start, align 8, !dbg !1886
  store i64 %4, ptr %retval, align 8, !dbg !1887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1887

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1888

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !1889
  %5 = load i64, ptr %retval, align 8, !dbg !1889
  ret i64 %5, !dbg !1889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pnp_port_len(ptr noundef %dev, i32 noundef %bar) #2 align 16 !dbg !1890 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1892, metadata !DIExpression()), !dbg !1895
  store i32 %bar, ptr %bar.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !1893, metadata !DIExpression()), !dbg !1896
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1894, metadata !DIExpression()), !dbg !1898
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1899
  %1 = load i32, ptr %bar.addr, align 4, !dbg !1900
  %call = call ptr @pnp_get_resource(ptr noundef %0, i64 noundef 256, i32 noundef %1) #9, !dbg !1901
  store ptr %call, ptr %res, align 8, !dbg !1898
  %2 = load ptr, ptr %res, align 8, !dbg !1902
  %call1 = call i32 @pnp_resource_valid(ptr noundef %2) #9, !dbg !1904
  %tobool = icmp ne i32 %call1, 0, !dbg !1904
  br i1 %tobool, label %if.then, label %if.end, !dbg !1905

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %res, align 8, !dbg !1906
  %call2 = call i64 @pnp_resource_len(ptr noundef %3) #9, !dbg !1907
  store i64 %call2, ptr %retval, align 8, !dbg !1908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1908

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1909

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !1910
  %4 = load i64, ptr %retval, align 8, !dbg !1910
  ret i64 %4, !dbg !1910
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pnp_mem_start(ptr noundef %dev, i32 noundef %bar) #2 align 16 !dbg !1911 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1913, metadata !DIExpression()), !dbg !1916
  store i32 %bar, ptr %bar.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !1914, metadata !DIExpression()), !dbg !1917
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !1918
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1915, metadata !DIExpression()), !dbg !1919
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1920
  %1 = load i32, ptr %bar.addr, align 4, !dbg !1921
  %call = call ptr @pnp_get_resource(ptr noundef %0, i64 noundef 512, i32 noundef %1) #9, !dbg !1922
  store ptr %call, ptr %res, align 8, !dbg !1919
  %2 = load ptr, ptr %res, align 8, !dbg !1923
  %call1 = call i32 @pnp_resource_valid(ptr noundef %2) #9, !dbg !1925
  %tobool = icmp ne i32 %call1, 0, !dbg !1925
  br i1 %tobool, label %if.then, label %if.end, !dbg !1926

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %res, align 8, !dbg !1927
  %start = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 0, !dbg !1928
  %4 = load i64, ptr %start, align 8, !dbg !1928
  store i64 %4, ptr %retval, align 8, !dbg !1929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1929

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1930

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !1931
  %5 = load i64, ptr %retval, align 8, !dbg !1931
  ret i64 %5, !dbg !1931
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pnp_mem_len(ptr noundef %dev, i32 noundef %bar) #2 align 16 !dbg !1932 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1934, metadata !DIExpression()), !dbg !1937
  store i32 %bar, ptr %bar.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !1935, metadata !DIExpression()), !dbg !1938
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !1939
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1936, metadata !DIExpression()), !dbg !1940
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1941
  %1 = load i32, ptr %bar.addr, align 4, !dbg !1942
  %call = call ptr @pnp_get_resource(ptr noundef %0, i64 noundef 512, i32 noundef %1) #9, !dbg !1943
  store ptr %call, ptr %res, align 8, !dbg !1940
  %2 = load ptr, ptr %res, align 8, !dbg !1944
  %call1 = call i32 @pnp_resource_valid(ptr noundef %2) #9, !dbg !1946
  %tobool = icmp ne i32 %call1, 0, !dbg !1946
  br i1 %tobool, label %if.then, label %if.end, !dbg !1947

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %res, align 8, !dbg !1948
  %call2 = call i64 @pnp_resource_len(ptr noundef %3) #9, !dbg !1949
  store i64 %call2, ptr %retval, align 8, !dbg !1950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1950

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1951

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !1952
  %4 = load i64, ptr %retval, align 8, !dbg !1952
  ret i64 %4, !dbg !1952
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pnp_irq(ptr noundef %dev, i32 noundef %bar) #2 align 16 !dbg !1953 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1955, metadata !DIExpression()), !dbg !1958
  store i32 %bar, ptr %bar.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !1956, metadata !DIExpression()), !dbg !1959
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !1960
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1957, metadata !DIExpression()), !dbg !1961
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1962
  %1 = load i32, ptr %bar.addr, align 4, !dbg !1963
  %call = call ptr @pnp_get_resource(ptr noundef %0, i64 noundef 1024, i32 noundef %1) #9, !dbg !1964
  store ptr %call, ptr %res, align 8, !dbg !1961
  %2 = load ptr, ptr %res, align 8, !dbg !1965
  %call1 = call i32 @pnp_resource_valid(ptr noundef %2) #9, !dbg !1967
  %tobool = icmp ne i32 %call1, 0, !dbg !1967
  br i1 %tobool, label %if.then, label %if.end, !dbg !1968

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %res, align 8, !dbg !1969
  %start = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 0, !dbg !1970
  %4 = load i64, ptr %start, align 8, !dbg !1970
  store i64 %4, ptr %retval, align 8, !dbg !1971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1971

if.end:                                           ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1972

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !1973
  %5 = load i64, ptr %retval, align 8, !dbg !1973
  ret i64 %5, !dbg !1973
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pnp_dma(ptr noundef %dev, i32 noundef %bar) #2 align 16 !dbg !1974 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1976, metadata !DIExpression()), !dbg !1979
  store i32 %bar, ptr %bar.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !1977, metadata !DIExpression()), !dbg !1980
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !1981
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1978, metadata !DIExpression()), !dbg !1982
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1983
  %1 = load i32, ptr %bar.addr, align 4, !dbg !1984
  %call = call ptr @pnp_get_resource(ptr noundef %0, i64 noundef 2048, i32 noundef %1) #9, !dbg !1985
  store ptr %call, ptr %res, align 8, !dbg !1982
  %2 = load ptr, ptr %res, align 8, !dbg !1986
  %call1 = call i32 @pnp_resource_valid(ptr noundef %2) #9, !dbg !1988
  %tobool = icmp ne i32 %call1, 0, !dbg !1988
  br i1 %tobool, label %if.then, label %if.end, !dbg !1989

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %res, align 8, !dbg !1990
  %start = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 0, !dbg !1991
  %4 = load i64, ptr %start, align 8, !dbg !1991
  store i64 %4, ptr %retval, align 8, !dbg !1992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1992

if.end:                                           ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1993

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !1994
  %5 = load i64, ptr %retval, align 8, !dbg !1994
  ret i64 %5, !dbg !1994
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pnp_eisa_id_to_string(i32 noundef %id, ptr noundef %str) #0 align 16 !dbg !1995 {
entry:
  %id.addr = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1999, metadata !DIExpression()), !dbg !2001
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2000, metadata !DIExpression()), !dbg !2002
  %0 = load i32, ptr %id.addr, align 4, !dbg !2003
  %1 = call i32 @llvm.bswap.i32(i32 %0), !dbg !2003
  store i32 %1, ptr %id.addr, align 4, !dbg !2004
  %2 = load i32, ptr %id.addr, align 4, !dbg !2005
  %shr = lshr i32 %2, 26, !dbg !2006
  %and = and i32 %shr, 63, !dbg !2007
  %add = add i32 65, %and, !dbg !2008
  %sub = sub i32 %add, 1, !dbg !2009
  %conv = trunc i32 %sub to i8, !dbg !2010
  %3 = load ptr, ptr %str.addr, align 8, !dbg !2011
  %arrayidx = getelementptr i8, ptr %3, i64 0, !dbg !2011
  store i8 %conv, ptr %arrayidx, align 1, !dbg !2012
  %4 = load i32, ptr %id.addr, align 4, !dbg !2013
  %shr1 = lshr i32 %4, 21, !dbg !2014
  %and2 = and i32 %shr1, 31, !dbg !2015
  %add3 = add i32 65, %and2, !dbg !2016
  %sub4 = sub i32 %add3, 1, !dbg !2017
  %conv5 = trunc i32 %sub4 to i8, !dbg !2018
  %5 = load ptr, ptr %str.addr, align 8, !dbg !2019
  %arrayidx6 = getelementptr i8, ptr %5, i64 1, !dbg !2019
  store i8 %conv5, ptr %arrayidx6, align 1, !dbg !2020
  %6 = load i32, ptr %id.addr, align 4, !dbg !2021
  %shr7 = lshr i32 %6, 16, !dbg !2022
  %and8 = and i32 %shr7, 31, !dbg !2023
  %add9 = add i32 65, %and8, !dbg !2024
  %sub10 = sub i32 %add9, 1, !dbg !2025
  %conv11 = trunc i32 %sub10 to i8, !dbg !2026
  %7 = load ptr, ptr %str.addr, align 8, !dbg !2027
  %arrayidx12 = getelementptr i8, ptr %7, i64 2, !dbg !2027
  store i8 %conv11, ptr %arrayidx12, align 1, !dbg !2028
  %8 = load i32, ptr %id.addr, align 4, !dbg !2029
  %shr13 = lshr i32 %8, 8, !dbg !2029
  %and14 = and i32 %shr13, 240, !dbg !2029
  %shr15 = lshr i32 %and14, 4, !dbg !2029
  %idxprom = zext i32 %shr15 to i64, !dbg !2029
  %arrayidx16 = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom, !dbg !2029
  %9 = load i8, ptr %arrayidx16, align 1, !dbg !2029
  %10 = load ptr, ptr %str.addr, align 8, !dbg !2030
  %arrayidx17 = getelementptr i8, ptr %10, i64 3, !dbg !2030
  store i8 %9, ptr %arrayidx17, align 1, !dbg !2031
  %11 = load i32, ptr %id.addr, align 4, !dbg !2032
  %shr18 = lshr i32 %11, 8, !dbg !2032
  %and19 = and i32 %shr18, 15, !dbg !2032
  %idxprom20 = zext i32 %and19 to i64, !dbg !2032
  %arrayidx21 = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom20, !dbg !2032
  %12 = load i8, ptr %arrayidx21, align 1, !dbg !2032
  %13 = load ptr, ptr %str.addr, align 8, !dbg !2033
  %arrayidx22 = getelementptr i8, ptr %13, i64 4, !dbg !2033
  store i8 %12, ptr %arrayidx22, align 1, !dbg !2034
  %14 = load i32, ptr %id.addr, align 4, !dbg !2035
  %and23 = and i32 %14, 240, !dbg !2035
  %shr24 = lshr i32 %and23, 4, !dbg !2035
  %idxprom25 = zext i32 %shr24 to i64, !dbg !2035
  %arrayidx26 = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom25, !dbg !2035
  %15 = load i8, ptr %arrayidx26, align 1, !dbg !2035
  %16 = load ptr, ptr %str.addr, align 8, !dbg !2036
  %arrayidx27 = getelementptr i8, ptr %16, i64 5, !dbg !2036
  store i8 %15, ptr %arrayidx27, align 1, !dbg !2037
  %17 = load i32, ptr %id.addr, align 4, !dbg !2038
  %and28 = and i32 %17, 15, !dbg !2038
  %idxprom29 = zext i32 %and28 to i64, !dbg !2038
  %arrayidx30 = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom29, !dbg !2038
  %18 = load i8, ptr %arrayidx30, align 1, !dbg !2038
  %19 = load ptr, ptr %str.addr, align 8, !dbg !2039
  %arrayidx31 = getelementptr i8, ptr %19, i64 6, !dbg !2039
  store i8 %18, ptr %arrayidx31, align 1, !dbg !2040
  %20 = load ptr, ptr %str.addr, align 8, !dbg !2041
  %arrayidx32 = getelementptr i8, ptr %20, i64 7, !dbg !2041
  store i8 0, ptr %arrayidx32, align 1, !dbg !2042
  ret void, !dbg !2043
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pnp_resource_type_name(ptr noundef %res) #0 align 16 !dbg !2044 {
entry:
  %retval = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2048, metadata !DIExpression()), !dbg !2049
  %0 = load ptr, ptr %res.addr, align 8, !dbg !2050
  %call = call i64 @pnp_resource_type(ptr noundef %0) #9, !dbg !2051
  switch i64 %call, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb1
    i64 1024, label %sw.bb2
    i64 2048, label %sw.bb3
    i64 4096, label %sw.bb4
  ], !dbg !2052

sw.bb:                                            ; preds = %entry
  store ptr @.str, ptr %retval, align 8, !dbg !2053
  br label %return, !dbg !2053

sw.bb1:                                           ; preds = %entry
  store ptr @.str.1, ptr %retval, align 8, !dbg !2055
  br label %return, !dbg !2055

sw.bb2:                                           ; preds = %entry
  store ptr @.str.2, ptr %retval, align 8, !dbg !2056
  br label %return, !dbg !2056

sw.bb3:                                           ; preds = %entry
  store ptr @.str.3, ptr %retval, align 8, !dbg !2057
  br label %return, !dbg !2057

sw.bb4:                                           ; preds = %entry
  store ptr @.str.4, ptr %retval, align 8, !dbg !2058
  br label %return, !dbg !2058

sw.epilog:                                        ; preds = %entry
  store ptr @.str.5, ptr %retval, align 8, !dbg !2059
  br label %return, !dbg !2059

return:                                           ; preds = %sw.epilog, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !2060
  ret ptr %1, !dbg !2060
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2061 dso_local i64 @pnp_resource_type(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dbg_pnp_show_resources(ptr noundef %dev, ptr noundef %desc) #0 align 16 !dbg !2064 {
entry:
  %dev.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %pnp_res = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp22 = alloca i32, align 4
  %__mptr23 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2068, metadata !DIExpression()), !dbg !2079
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2069, metadata !DIExpression()), !dbg !2080
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_res) #10, !dbg !2081
  call void @llvm.dbg.declare(metadata ptr %pnp_res, metadata !2070, metadata !DIExpression()), !dbg !2082
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2083
  %resources = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 16, !dbg !2084
  %call = call i32 @list_empty(ptr noundef %resources) #9, !dbg !2085
  %tobool = icmp ne i32 %call, 0, !dbg !2085
  br i1 %tobool, label %if.then, label %if.else, !dbg !2086

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @pnp_debug, align 4, !dbg !2087
  %tobool1 = icmp ne i32 %1, 0, !dbg !2087
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2090

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !2091

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !2093

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2093

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2091
  %dev3 = getelementptr inbounds %struct.pnp_dev, ptr %2, i32 0, i32 0, !dbg !2091
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !2091
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %dev3, ptr noundef @.str.7, ptr noundef %3) #11, !dbg !2091
  br label %if.end, !dbg !2087

if.end:                                           ; preds = %do.end, %if.then
  store i32 0, ptr %tmp, align 4, !dbg !2087
  %4 = load i32, ptr %tmp, align 4, !dbg !2090
  br label %if.end28, !dbg !2095

if.else:                                          ; preds = %entry
  %5 = load i32, ptr @pnp_debug, align 4, !dbg !2096
  %tobool4 = icmp ne i32 %5, 0, !dbg !2096
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !2099

if.then5:                                         ; preds = %if.else
  br label %do.body6, !dbg !2100

do.body6:                                         ; preds = %if.then5
  br label %do.cond7, !dbg !2102

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !2102

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2100
  %dev9 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 0, !dbg !2100
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !2100
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %dev9, ptr noundef @.str.8, ptr noundef %7) #11, !dbg !2100
  br label %if.end10, !dbg !2096

if.end10:                                         ; preds = %do.end8, %if.else
  store i32 0, ptr %tmp11, align 4, !dbg !2096
  %8 = load i32, ptr %tmp11, align 4, !dbg !2099
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2104
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2071, metadata !DIExpression()), !dbg !2104
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2104
  %resources12 = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 16, !dbg !2104
  %next = getelementptr inbounds %struct.list_head, ptr %resources12, i32 0, i32 0, !dbg !2104
  %10 = load ptr, ptr %next, align 8, !dbg !2104
  store ptr %10, ptr %__mptr, align 8, !dbg !2104
  %11 = load ptr, ptr %__mptr, align 8, !dbg !2104
  %add.ptr = getelementptr i8, ptr %11, i64 0, !dbg !2104
  store ptr %add.ptr, ptr %tmp13, align 8, !dbg !2104
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2105
  %12 = load ptr, ptr %tmp13, align 8, !dbg !2104
  store ptr %12, ptr %pnp_res, align 8, !dbg !2105
  br label %for.cond, !dbg !2105

for.cond:                                         ; preds = %for.inc, %if.end10
  %13 = load ptr, ptr %pnp_res, align 8, !dbg !2106
  %list = getelementptr inbounds %struct.pnp_resource, ptr %13, i32 0, i32 0, !dbg !2106
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2106
  %resources14 = getelementptr inbounds %struct.pnp_dev, ptr %14, i32 0, i32 16, !dbg !2106
  %cmp = icmp eq ptr %list, %resources14, !dbg !2106
  %lnot = xor i1 %cmp, true, !dbg !2106
  br i1 %lnot, label %for.body, label %for.end, !dbg !2105

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr @pnp_debug, align 4, !dbg !2107
  %tobool15 = icmp ne i32 %15, 0, !dbg !2107
  br i1 %tobool15, label %if.then16, label %if.end21, !dbg !2110

if.then16:                                        ; preds = %for.body
  br label %do.body17, !dbg !2111

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !2113

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2113

do.end19:                                         ; preds = %do.cond18
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2111
  %dev20 = getelementptr inbounds %struct.pnp_dev, ptr %16, i32 0, i32 0, !dbg !2111
  %17 = load ptr, ptr %pnp_res, align 8, !dbg !2111
  %res = getelementptr inbounds %struct.pnp_resource, ptr %17, i32 0, i32 1, !dbg !2111
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %dev20, ptr noundef @.str.9, ptr noundef %res) #11, !dbg !2111
  br label %if.end21, !dbg !2107

if.end21:                                         ; preds = %do.end19, %for.body
  store i32 0, ptr %tmp22, align 4, !dbg !2107
  %18 = load i32, ptr %tmp22, align 4, !dbg !2110
  br label %for.inc, !dbg !2115

for.inc:                                          ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr23) #10, !dbg !2116
  call void @llvm.dbg.declare(metadata ptr %__mptr23, metadata !2076, metadata !DIExpression()), !dbg !2116
  %19 = load ptr, ptr %pnp_res, align 8, !dbg !2116
  %list24 = getelementptr inbounds %struct.pnp_resource, ptr %19, i32 0, i32 0, !dbg !2116
  %next25 = getelementptr inbounds %struct.list_head, ptr %list24, i32 0, i32 0, !dbg !2116
  %20 = load ptr, ptr %next25, align 8, !dbg !2116
  store ptr %20, ptr %__mptr23, align 8, !dbg !2116
  %21 = load ptr, ptr %__mptr23, align 8, !dbg !2116
  %add.ptr27 = getelementptr i8, ptr %21, i64 0, !dbg !2116
  store ptr %add.ptr27, ptr %tmp26, align 8, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr23) #10, !dbg !2106
  %22 = load ptr, ptr %tmp26, align 8, !dbg !2116
  store ptr %22, ptr %pnp_res, align 8, !dbg !2106
  br label %for.cond, !dbg !2106, !llvm.loop !2117

for.end:                                          ; preds = %for.cond
  br label %if.end28

if.end28:                                         ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_res) #10, !dbg !2121
  ret void, !dbg !2121
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #2 align 16 !dbg !2122 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2129, metadata !DIExpression()), !dbg !2130
  br label %do.body, !dbg !2131

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2133

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !2131
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !2131
  %1 = load volatile ptr, ptr %next, align 8, !dbg !2131
  store ptr %1, ptr %tmp, align 8, !dbg !2133
  %2 = load ptr, ptr %tmp, align 8, !dbg !2131
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2135
  %cmp = icmp eq ptr %2, %3, !dbg !2136
  %conv = zext i1 %cmp to i32, !dbg !2136
  ret i32 %conv, !dbg !2137
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2138 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pnp_option_priority_name(ptr noundef %option) #0 align 16 !dbg !2142 {
entry:
  %retval = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2187
  %call = call i32 @pnp_option_priority(ptr noundef %0) #9, !dbg !2188
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ], !dbg !2189

sw.bb:                                            ; preds = %entry
  store ptr @.str.10, ptr %retval, align 8, !dbg !2190
  br label %return, !dbg !2190

sw.bb1:                                           ; preds = %entry
  store ptr @.str.11, ptr %retval, align 8, !dbg !2192
  br label %return, !dbg !2192

sw.bb2:                                           ; preds = %entry
  store ptr @.str.12, ptr %retval, align 8, !dbg !2193
  br label %return, !dbg !2193

sw.epilog:                                        ; preds = %entry
  store ptr @.str.13, ptr %retval, align 8, !dbg !2194
  br label %return, !dbg !2194

return:                                           ; preds = %sw.epilog, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !2195
  ret ptr %1, !dbg !2195
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_option_priority(ptr noundef %option) #2 align 16 !dbg !2196 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2200, metadata !DIExpression()), !dbg !2201
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2202
  %flags = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 1, !dbg !2203
  %1 = load i32, ptr %flags, align 8, !dbg !2203
  %shr = lshr i32 %1, 0, !dbg !2204
  %and = and i32 %shr, 4095, !dbg !2205
  ret i32 %and, !dbg !2206
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dbg_pnp_show_option(ptr noundef %dev, ptr noundef %option) #0 align 16 !dbg !2207 {
entry:
  %dev.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  %buf = alloca [128 x i8], align 16
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %port = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %irq = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2211, metadata !DIExpression()), !dbg !2224
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2212, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.start.p0(i64 128, ptr %buf) #10, !dbg !2226
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !2213, metadata !DIExpression()), !dbg !2227
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10, !dbg !2228
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2214, metadata !DIExpression()), !dbg !2229
  store i32 0, ptr %len, align 4, !dbg !2229
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !2228
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2215, metadata !DIExpression()), !dbg !2230
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #10, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %port, metadata !2216, metadata !DIExpression()), !dbg !2232
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #10, !dbg !2233
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !2218, metadata !DIExpression()), !dbg !2234
  call void @llvm.lifetime.start.p0(i64 8, ptr %irq) #10, !dbg !2235
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #10, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !2222, metadata !DIExpression()), !dbg !2238
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2239
  %call = call i32 @pnp_option_is_dependent(ptr noundef %0) #9, !dbg !2241
  %tobool = icmp ne i32 %call, 0, !dbg !2241
  br i1 %tobool, label %if.then, label %if.else, !dbg !2242

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2243
  %1 = load i32, ptr %len, align 4, !dbg !2244
  %idx.ext = sext i32 %1 to i64, !dbg !2245
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !2245
  %2 = load i32, ptr %len, align 4, !dbg !2246
  %conv = sext i32 %2 to i64, !dbg !2246
  %sub = sub i64 128, %conv, !dbg !2247
  %3 = load ptr, ptr %option.addr, align 8, !dbg !2248
  %call1 = call i32 @pnp_option_set(ptr noundef %3) #9, !dbg !2249
  %4 = load ptr, ptr %option.addr, align 8, !dbg !2250
  %call2 = call ptr @pnp_option_priority_name(ptr noundef %4) #9, !dbg !2251
  %call3 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str.14, i32 noundef %call1, ptr noundef %call2) #9, !dbg !2252
  %5 = load i32, ptr %len, align 4, !dbg !2253
  %add = add i32 %5, %call3, !dbg !2253
  store i32 %add, ptr %len, align 4, !dbg !2253
  br label %if.end, !dbg !2254

if.else:                                          ; preds = %entry
  %arraydecay4 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2255
  %6 = load i32, ptr %len, align 4, !dbg !2256
  %idx.ext5 = sext i32 %6 to i64, !dbg !2257
  %add.ptr6 = getelementptr i8, ptr %arraydecay4, i64 %idx.ext5, !dbg !2257
  %7 = load i32, ptr %len, align 4, !dbg !2258
  %conv7 = sext i32 %7 to i64, !dbg !2258
  %sub8 = sub i64 128, %conv7, !dbg !2259
  %call9 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i64 noundef %sub8, ptr noundef @.str.15) #9, !dbg !2260
  %8 = load i32, ptr %len, align 4, !dbg !2261
  %add10 = add i32 %8, %call9, !dbg !2261
  store i32 %add10, ptr %len, align 4, !dbg !2261
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %option.addr, align 8, !dbg !2262
  %type = getelementptr inbounds %struct.pnp_option, ptr %9, i32 0, i32 2, !dbg !2263
  %10 = load i64, ptr %type, align 8, !dbg !2263
  switch i64 %10, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb19
    i64 1024, label %sw.bb34
    i64 2048, label %sw.bb113
  ], !dbg !2264

sw.bb:                                            ; preds = %if.end
  %11 = load ptr, ptr %option.addr, align 8, !dbg !2265
  %u = getelementptr inbounds %struct.pnp_option, ptr %11, i32 0, i32 3, !dbg !2267
  store ptr %u, ptr %port, align 8, !dbg !2268
  %arraydecay11 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2269
  %12 = load i32, ptr %len, align 4, !dbg !2270
  %idx.ext12 = sext i32 %12 to i64, !dbg !2271
  %add.ptr13 = getelementptr i8, ptr %arraydecay11, i64 %idx.ext12, !dbg !2271
  %13 = load i32, ptr %len, align 4, !dbg !2272
  %conv14 = sext i32 %13 to i64, !dbg !2272
  %sub15 = sub i64 128, %conv14, !dbg !2273
  %14 = load ptr, ptr %port, align 8, !dbg !2274
  %min = getelementptr inbounds %struct.pnp_port, ptr %14, i32 0, i32 0, !dbg !2275
  %15 = load i64, ptr %min, align 8, !dbg !2275
  %16 = load ptr, ptr %port, align 8, !dbg !2276
  %max = getelementptr inbounds %struct.pnp_port, ptr %16, i32 0, i32 1, !dbg !2277
  %17 = load i64, ptr %max, align 8, !dbg !2277
  %18 = load ptr, ptr %port, align 8, !dbg !2278
  %align = getelementptr inbounds %struct.pnp_port, ptr %18, i32 0, i32 2, !dbg !2279
  %19 = load i64, ptr %align, align 8, !dbg !2279
  %20 = load ptr, ptr %port, align 8, !dbg !2280
  %size = getelementptr inbounds %struct.pnp_port, ptr %20, i32 0, i32 3, !dbg !2281
  %21 = load i64, ptr %size, align 8, !dbg !2281
  %22 = load ptr, ptr %port, align 8, !dbg !2282
  %flags = getelementptr inbounds %struct.pnp_port, ptr %22, i32 0, i32 4, !dbg !2283
  %23 = load i8, ptr %flags, align 8, !dbg !2283
  %conv16 = zext i8 %23 to i32, !dbg !2282
  %call17 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i64 noundef %sub15, ptr noundef @.str.16, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21, i32 noundef %conv16) #9, !dbg !2284
  %24 = load i32, ptr %len, align 4, !dbg !2285
  %add18 = add i32 %24, %call17, !dbg !2285
  store i32 %add18, ptr %len, align 4, !dbg !2285
  br label %sw.epilog, !dbg !2286

sw.bb19:                                          ; preds = %if.end
  %25 = load ptr, ptr %option.addr, align 8, !dbg !2287
  %u20 = getelementptr inbounds %struct.pnp_option, ptr %25, i32 0, i32 3, !dbg !2288
  store ptr %u20, ptr %mem, align 8, !dbg !2289
  %arraydecay21 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2290
  %26 = load i32, ptr %len, align 4, !dbg !2291
  %idx.ext22 = sext i32 %26 to i64, !dbg !2292
  %add.ptr23 = getelementptr i8, ptr %arraydecay21, i64 %idx.ext22, !dbg !2292
  %27 = load i32, ptr %len, align 4, !dbg !2293
  %conv24 = sext i32 %27 to i64, !dbg !2293
  %sub25 = sub i64 128, %conv24, !dbg !2294
  %28 = load ptr, ptr %mem, align 8, !dbg !2295
  %min26 = getelementptr inbounds %struct.pnp_mem, ptr %28, i32 0, i32 0, !dbg !2296
  %29 = load i64, ptr %min26, align 8, !dbg !2296
  %30 = load ptr, ptr %mem, align 8, !dbg !2297
  %max27 = getelementptr inbounds %struct.pnp_mem, ptr %30, i32 0, i32 1, !dbg !2298
  %31 = load i64, ptr %max27, align 8, !dbg !2298
  %32 = load ptr, ptr %mem, align 8, !dbg !2299
  %align28 = getelementptr inbounds %struct.pnp_mem, ptr %32, i32 0, i32 2, !dbg !2300
  %33 = load i64, ptr %align28, align 8, !dbg !2300
  %34 = load ptr, ptr %mem, align 8, !dbg !2301
  %size29 = getelementptr inbounds %struct.pnp_mem, ptr %34, i32 0, i32 3, !dbg !2302
  %35 = load i64, ptr %size29, align 8, !dbg !2302
  %36 = load ptr, ptr %mem, align 8, !dbg !2303
  %flags30 = getelementptr inbounds %struct.pnp_mem, ptr %36, i32 0, i32 4, !dbg !2304
  %37 = load i8, ptr %flags30, align 8, !dbg !2304
  %conv31 = zext i8 %37 to i32, !dbg !2303
  %call32 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i64 noundef %sub25, ptr noundef @.str.17, i64 noundef %29, i64 noundef %31, i64 noundef %33, i64 noundef %35, i32 noundef %conv31) #9, !dbg !2305
  %38 = load i32, ptr %len, align 4, !dbg !2306
  %add33 = add i32 %38, %call32, !dbg !2306
  store i32 %add33, ptr %len, align 4, !dbg !2306
  br label %sw.epilog, !dbg !2307

sw.bb34:                                          ; preds = %if.end
  %39 = load ptr, ptr %option.addr, align 8, !dbg !2308
  %u35 = getelementptr inbounds %struct.pnp_option, ptr %39, i32 0, i32 3, !dbg !2309
  store ptr %u35, ptr %irq, align 8, !dbg !2310
  %arraydecay36 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2311
  %40 = load i32, ptr %len, align 4, !dbg !2312
  %idx.ext37 = sext i32 %40 to i64, !dbg !2313
  %add.ptr38 = getelementptr i8, ptr %arraydecay36, i64 %idx.ext37, !dbg !2313
  %41 = load i32, ptr %len, align 4, !dbg !2314
  %conv39 = sext i32 %41 to i64, !dbg !2314
  %sub40 = sub i64 128, %conv39, !dbg !2315
  %call41 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i64 noundef %sub40, ptr noundef @.str.2) #9, !dbg !2316
  %42 = load i32, ptr %len, align 4, !dbg !2317
  %add42 = add i32 %42, %call41, !dbg !2317
  store i32 %add42, ptr %len, align 4, !dbg !2317
  %43 = load ptr, ptr %irq, align 8, !dbg !2318
  %map = getelementptr inbounds %struct.pnp_irq, ptr %43, i32 0, i32 0, !dbg !2320
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map, i32 0, i32 0, !dbg !2321
  %arraydecay43 = getelementptr inbounds [4 x i64], ptr %bits, i64 0, i64 0, !dbg !2318
  %call44 = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay43, i32 noundef 256) #9, !dbg !2322
  br i1 %call44, label %if.then45, label %if.else53, !dbg !2323

if.then45:                                        ; preds = %sw.bb34
  %arraydecay46 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2324
  %44 = load i32, ptr %len, align 4, !dbg !2325
  %idx.ext47 = sext i32 %44 to i64, !dbg !2326
  %add.ptr48 = getelementptr i8, ptr %arraydecay46, i64 %idx.ext47, !dbg !2326
  %45 = load i32, ptr %len, align 4, !dbg !2327
  %conv49 = sext i32 %45 to i64, !dbg !2327
  %sub50 = sub i64 128, %conv49, !dbg !2328
  %call51 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr48, i64 noundef %sub50, ptr noundef @.str.18) #9, !dbg !2329
  %46 = load i32, ptr %len, align 4, !dbg !2330
  %add52 = add i32 %46, %call51, !dbg !2330
  store i32 %add52, ptr %len, align 4, !dbg !2330
  br label %if.end91, !dbg !2331

if.else53:                                        ; preds = %sw.bb34
  store i32 0, ptr %i, align 4, !dbg !2332
  br label %for.cond, !dbg !2335

for.cond:                                         ; preds = %for.inc, %if.else53
  %47 = load i32, ptr %i, align 4, !dbg !2336
  %cmp = icmp slt i32 %47, 256, !dbg !2338
  br i1 %cmp, label %for.body, label %for.end, !dbg !2339

for.body:                                         ; preds = %for.cond
  %48 = load i32, ptr %i, align 4, !dbg !2340
  %49 = call i1 @llvm.is.constant.i32(i32 %48), !dbg !2340
  br i1 %49, label %land.lhs.true, label %cond.false, !dbg !2340

land.lhs.true:                                    ; preds = %for.body
  %50 = load ptr, ptr %irq, align 8, !dbg !2340
  %map55 = getelementptr inbounds %struct.pnp_irq, ptr %50, i32 0, i32 0, !dbg !2340
  %bits56 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map55, i32 0, i32 0, !dbg !2340
  %arraydecay57 = getelementptr inbounds [4 x i64], ptr %bits56, i64 0, i64 0, !dbg !2340
  %51 = ptrtoint ptr %arraydecay57 to i64, !dbg !2340
  %cmp58 = icmp ne i64 %51, 0, !dbg !2340
  %conv59 = zext i1 %cmp58 to i32, !dbg !2340
  %52 = call i1 @llvm.is.constant.i32(i32 %conv59), !dbg !2340
  br i1 %52, label %land.lhs.true60, label %cond.false, !dbg !2340

land.lhs.true60:                                  ; preds = %land.lhs.true
  %53 = load ptr, ptr %irq, align 8, !dbg !2340
  %map61 = getelementptr inbounds %struct.pnp_irq, ptr %53, i32 0, i32 0, !dbg !2340
  %bits62 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map61, i32 0, i32 0, !dbg !2340
  %arraydecay63 = getelementptr inbounds [4 x i64], ptr %bits62, i64 0, i64 0, !dbg !2340
  %54 = ptrtoint ptr %arraydecay63 to i64, !dbg !2340
  %cmp64 = icmp ne i64 %54, 0, !dbg !2340
  br i1 %cmp64, label %land.lhs.true66, label %cond.false, !dbg !2340

land.lhs.true66:                                  ; preds = %land.lhs.true60
  %55 = load ptr, ptr %irq, align 8, !dbg !2340
  %map67 = getelementptr inbounds %struct.pnp_irq, ptr %55, i32 0, i32 0, !dbg !2340
  %bits68 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map67, i32 0, i32 0, !dbg !2340
  %arraydecay69 = getelementptr inbounds [4 x i64], ptr %bits68, i64 0, i64 0, !dbg !2340
  %56 = load i64, ptr %arraydecay69, align 8, !dbg !2340
  %57 = call i1 @llvm.is.constant.i64(i64 %56), !dbg !2340
  br i1 %57, label %cond.true, label %cond.false, !dbg !2342

cond.true:                                        ; preds = %land.lhs.true66
  %58 = load i32, ptr %i, align 4, !dbg !2340
  %conv70 = sext i32 %58 to i64, !dbg !2340
  %59 = load ptr, ptr %irq, align 8, !dbg !2340
  %map71 = getelementptr inbounds %struct.pnp_irq, ptr %59, i32 0, i32 0, !dbg !2340
  %bits72 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map71, i32 0, i32 0, !dbg !2340
  %arraydecay73 = getelementptr inbounds [4 x i64], ptr %bits72, i64 0, i64 0, !dbg !2340
  %call74 = call zeroext i1 @const_test_bit(i64 noundef %conv70, ptr noundef %arraydecay73) #9, !dbg !2340
  br i1 %call74, label %if.then82, label %if.end90, !dbg !2340

cond.false:                                       ; preds = %land.lhs.true66, %land.lhs.true60, %land.lhs.true, %for.body
  %60 = load i32, ptr %i, align 4, !dbg !2340
  %conv76 = sext i32 %60 to i64, !dbg !2340
  %61 = load ptr, ptr %irq, align 8, !dbg !2340
  %map77 = getelementptr inbounds %struct.pnp_irq, ptr %61, i32 0, i32 0, !dbg !2340
  %bits78 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map77, i32 0, i32 0, !dbg !2340
  %arraydecay79 = getelementptr inbounds [4 x i64], ptr %bits78, i64 0, i64 0, !dbg !2340
  %call80 = call zeroext i1 @_test_bit(i64 noundef %conv76, ptr noundef %arraydecay79) #9, !dbg !2340
  br i1 %call80, label %if.then82, label %if.end90, !dbg !2342

if.then82:                                        ; preds = %cond.false, %cond.true
  %arraydecay83 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2343
  %62 = load i32, ptr %len, align 4, !dbg !2344
  %idx.ext84 = sext i32 %62 to i64, !dbg !2345
  %add.ptr85 = getelementptr i8, ptr %arraydecay83, i64 %idx.ext84, !dbg !2345
  %63 = load i32, ptr %len, align 4, !dbg !2346
  %conv86 = sext i32 %63 to i64, !dbg !2346
  %sub87 = sub i64 128, %conv86, !dbg !2347
  %64 = load i32, ptr %i, align 4, !dbg !2348
  %call88 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i64 noundef %sub87, ptr noundef @.str.19, i32 noundef %64) #9, !dbg !2349
  %65 = load i32, ptr %len, align 4, !dbg !2350
  %add89 = add i32 %65, %call88, !dbg !2350
  store i32 %add89, ptr %len, align 4, !dbg !2350
  br label %if.end90, !dbg !2351

if.end90:                                         ; preds = %if.then82, %cond.false, %cond.true
  br label %for.inc, !dbg !2340

for.inc:                                          ; preds = %if.end90
  %66 = load i32, ptr %i, align 4, !dbg !2352
  %inc = add i32 %66, 1, !dbg !2352
  store i32 %inc, ptr %i, align 4, !dbg !2352
  br label %for.cond, !dbg !2353, !llvm.loop !2354

for.end:                                          ; preds = %for.cond
  br label %if.end91

if.end91:                                         ; preds = %for.end, %if.then45
  %arraydecay92 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2356
  %67 = load i32, ptr %len, align 4, !dbg !2357
  %idx.ext93 = sext i32 %67 to i64, !dbg !2358
  %add.ptr94 = getelementptr i8, ptr %arraydecay92, i64 %idx.ext93, !dbg !2358
  %68 = load i32, ptr %len, align 4, !dbg !2359
  %conv95 = sext i32 %68 to i64, !dbg !2359
  %sub96 = sub i64 128, %conv95, !dbg !2360
  %69 = load ptr, ptr %irq, align 8, !dbg !2361
  %flags97 = getelementptr inbounds %struct.pnp_irq, ptr %69, i32 0, i32 1, !dbg !2362
  %70 = load i8, ptr %flags97, align 8, !dbg !2362
  %conv98 = zext i8 %70 to i32, !dbg !2361
  %call99 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr94, i64 noundef %sub96, ptr noundef @.str.20, i32 noundef %conv98) #9, !dbg !2363
  %71 = load i32, ptr %len, align 4, !dbg !2364
  %add100 = add i32 %71, %call99, !dbg !2364
  store i32 %add100, ptr %len, align 4, !dbg !2364
  %72 = load ptr, ptr %irq, align 8, !dbg !2365
  %flags101 = getelementptr inbounds %struct.pnp_irq, ptr %72, i32 0, i32 1, !dbg !2367
  %73 = load i8, ptr %flags101, align 8, !dbg !2367
  %conv102 = zext i8 %73 to i32, !dbg !2365
  %and = and i32 %conv102, 32, !dbg !2368
  %tobool103 = icmp ne i32 %and, 0, !dbg !2368
  br i1 %tobool103, label %if.then104, label %if.end112, !dbg !2369

if.then104:                                       ; preds = %if.end91
  %arraydecay105 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2370
  %74 = load i32, ptr %len, align 4, !dbg !2371
  %idx.ext106 = sext i32 %74 to i64, !dbg !2372
  %add.ptr107 = getelementptr i8, ptr %arraydecay105, i64 %idx.ext106, !dbg !2372
  %75 = load i32, ptr %len, align 4, !dbg !2373
  %conv108 = sext i32 %75 to i64, !dbg !2373
  %sub109 = sub i64 128, %conv108, !dbg !2374
  %call110 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr107, i64 noundef %sub109, ptr noundef @.str.21) #9, !dbg !2375
  %76 = load i32, ptr %len, align 4, !dbg !2376
  %add111 = add i32 %76, %call110, !dbg !2376
  store i32 %add111, ptr %len, align 4, !dbg !2376
  br label %if.end112, !dbg !2377

if.end112:                                        ; preds = %if.then104, %if.end91
  br label %sw.epilog, !dbg !2378

sw.bb113:                                         ; preds = %if.end
  %77 = load ptr, ptr %option.addr, align 8, !dbg !2379
  %u114 = getelementptr inbounds %struct.pnp_option, ptr %77, i32 0, i32 3, !dbg !2380
  store ptr %u114, ptr %dma, align 8, !dbg !2381
  %arraydecay115 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2382
  %78 = load i32, ptr %len, align 4, !dbg !2383
  %idx.ext116 = sext i32 %78 to i64, !dbg !2384
  %add.ptr117 = getelementptr i8, ptr %arraydecay115, i64 %idx.ext116, !dbg !2384
  %79 = load i32, ptr %len, align 4, !dbg !2385
  %conv118 = sext i32 %79 to i64, !dbg !2385
  %sub119 = sub i64 128, %conv118, !dbg !2386
  %call120 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr117, i64 noundef %sub119, ptr noundef @.str.3) #9, !dbg !2387
  %80 = load i32, ptr %len, align 4, !dbg !2388
  %add121 = add i32 %80, %call120, !dbg !2388
  store i32 %add121, ptr %len, align 4, !dbg !2388
  %81 = load ptr, ptr %dma, align 8, !dbg !2389
  %map122 = getelementptr inbounds %struct.pnp_dma, ptr %81, i32 0, i32 0, !dbg !2391
  %82 = load i8, ptr %map122, align 1, !dbg !2391
  %tobool123 = icmp ne i8 %82, 0, !dbg !2389
  br i1 %tobool123, label %if.else132, label %if.then124, !dbg !2392

if.then124:                                       ; preds = %sw.bb113
  %arraydecay125 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2393
  %83 = load i32, ptr %len, align 4, !dbg !2394
  %idx.ext126 = sext i32 %83 to i64, !dbg !2395
  %add.ptr127 = getelementptr i8, ptr %arraydecay125, i64 %idx.ext126, !dbg !2395
  %84 = load i32, ptr %len, align 4, !dbg !2396
  %conv128 = sext i32 %84 to i64, !dbg !2396
  %sub129 = sub i64 128, %conv128, !dbg !2397
  %call130 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr127, i64 noundef %sub129, ptr noundef @.str.18) #9, !dbg !2398
  %85 = load i32, ptr %len, align 4, !dbg !2399
  %add131 = add i32 %85, %call130, !dbg !2399
  store i32 %add131, ptr %len, align 4, !dbg !2399
  br label %if.end153, !dbg !2400

if.else132:                                       ; preds = %sw.bb113
  store i32 0, ptr %i, align 4, !dbg !2401
  br label %for.cond133, !dbg !2404

for.cond133:                                      ; preds = %for.inc150, %if.else132
  %86 = load i32, ptr %i, align 4, !dbg !2405
  %cmp134 = icmp slt i32 %86, 8, !dbg !2407
  br i1 %cmp134, label %for.body136, label %for.end152, !dbg !2408

for.body136:                                      ; preds = %for.cond133
  %87 = load ptr, ptr %dma, align 8, !dbg !2409
  %map137 = getelementptr inbounds %struct.pnp_dma, ptr %87, i32 0, i32 0, !dbg !2411
  %88 = load i8, ptr %map137, align 1, !dbg !2411
  %conv138 = zext i8 %88 to i32, !dbg !2409
  %89 = load i32, ptr %i, align 4, !dbg !2412
  %shl = shl i32 1, %89, !dbg !2413
  %and139 = and i32 %conv138, %shl, !dbg !2414
  %tobool140 = icmp ne i32 %and139, 0, !dbg !2414
  br i1 %tobool140, label %if.then141, label %if.end149, !dbg !2415

if.then141:                                       ; preds = %for.body136
  %arraydecay142 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2416
  %90 = load i32, ptr %len, align 4, !dbg !2417
  %idx.ext143 = sext i32 %90 to i64, !dbg !2418
  %add.ptr144 = getelementptr i8, ptr %arraydecay142, i64 %idx.ext143, !dbg !2418
  %91 = load i32, ptr %len, align 4, !dbg !2419
  %conv145 = sext i32 %91 to i64, !dbg !2419
  %sub146 = sub i64 128, %conv145, !dbg !2420
  %92 = load i32, ptr %i, align 4, !dbg !2421
  %call147 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr144, i64 noundef %sub146, ptr noundef @.str.19, i32 noundef %92) #9, !dbg !2422
  %93 = load i32, ptr %len, align 4, !dbg !2423
  %add148 = add i32 %93, %call147, !dbg !2423
  store i32 %add148, ptr %len, align 4, !dbg !2423
  br label %if.end149, !dbg !2424

if.end149:                                        ; preds = %if.then141, %for.body136
  br label %for.inc150, !dbg !2425

for.inc150:                                       ; preds = %if.end149
  %94 = load i32, ptr %i, align 4, !dbg !2426
  %inc151 = add i32 %94, 1, !dbg !2426
  store i32 %inc151, ptr %i, align 4, !dbg !2426
  br label %for.cond133, !dbg !2427, !llvm.loop !2428

for.end152:                                       ; preds = %for.cond133
  br label %if.end153

if.end153:                                        ; preds = %for.end152, %if.then124
  %arraydecay154 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2430
  %95 = load i32, ptr %len, align 4, !dbg !2431
  %idx.ext155 = sext i32 %95 to i64, !dbg !2432
  %add.ptr156 = getelementptr i8, ptr %arraydecay154, i64 %idx.ext155, !dbg !2432
  %96 = load i32, ptr %len, align 4, !dbg !2433
  %conv157 = sext i32 %96 to i64, !dbg !2433
  %sub158 = sub i64 128, %conv157, !dbg !2434
  %97 = load ptr, ptr %dma, align 8, !dbg !2435
  %map159 = getelementptr inbounds %struct.pnp_dma, ptr %97, i32 0, i32 0, !dbg !2436
  %98 = load i8, ptr %map159, align 1, !dbg !2436
  %conv160 = zext i8 %98 to i32, !dbg !2435
  %99 = load ptr, ptr %dma, align 8, !dbg !2437
  %flags161 = getelementptr inbounds %struct.pnp_dma, ptr %99, i32 0, i32 1, !dbg !2438
  %100 = load i8, ptr %flags161, align 1, !dbg !2438
  %conv162 = zext i8 %100 to i32, !dbg !2437
  %call163 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr156, i64 noundef %sub158, ptr noundef @.str.22, i32 noundef %conv160, i32 noundef %conv162) #9, !dbg !2439
  %101 = load i32, ptr %len, align 4, !dbg !2440
  %add164 = add i32 %101, %call163, !dbg !2440
  store i32 %add164, ptr %len, align 4, !dbg !2440
  br label %sw.epilog, !dbg !2441

sw.epilog:                                        ; preds = %if.end, %if.end153, %if.end112, %sw.bb19, %sw.bb
  %102 = load i32, ptr @pnp_debug, align 4, !dbg !2442
  %tobool165 = icmp ne i32 %102, 0, !dbg !2442
  br i1 %tobool165, label %if.then166, label %if.end169, !dbg !2445

if.then166:                                       ; preds = %sw.epilog
  br label %do.body, !dbg !2446

do.body:                                          ; preds = %if.then166
  br label %do.cond, !dbg !2448

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2448

do.end:                                           ; preds = %do.cond
  %103 = load ptr, ptr %dev.addr, align 8, !dbg !2446
  %dev167 = getelementptr inbounds %struct.pnp_dev, ptr %103, i32 0, i32 0, !dbg !2446
  %arraydecay168 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !2446
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %dev167, ptr noundef @.str.23, ptr noundef %arraydecay168) #11, !dbg !2446
  br label %if.end169, !dbg !2442

if.end169:                                        ; preds = %do.end, %sw.epilog
  store i32 0, ptr %tmp, align 4, !dbg !2442
  %104 = load i32, ptr %tmp, align 4, !dbg !2445
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #10, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 8, ptr %irq) #10, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #10, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #10, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 128, ptr %buf) #10, !dbg !2450
  ret void, !dbg !2450
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_option_is_dependent(ptr noundef %option) #2 align 16 !dbg !2451 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2455, metadata !DIExpression()), !dbg !2456
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2457
  %flags = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 1, !dbg !2458
  %1 = load i32, ptr %flags, align 8, !dbg !2458
  %and = and i32 %1, -2147483648, !dbg !2459
  %tobool = icmp ne i32 %and, 0, !dbg !2457
  %2 = zext i1 %tobool to i64, !dbg !2457
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2457
  ret i32 %cond, !dbg !2460
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2461 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_option_set(ptr noundef %option) #2 align 16 !dbg !2465 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2467, metadata !DIExpression()), !dbg !2468
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2469
  %flags = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 1, !dbg !2470
  %1 = load i32, ptr %flags, align 8, !dbg !2470
  %shr = lshr i32 %1, 12, !dbg !2471
  %and = and i32 %shr, 65535, !dbg !2472
  ret i32 %and, !dbg !2473
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #2 align 16 !dbg !2474 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2479, metadata !DIExpression()), !dbg !2481
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !2480, metadata !DIExpression()), !dbg !2482
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !2483
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2483
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2483

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !2483
  %cmp = icmp ule i32 %2, 64, !dbg !2483
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2483

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !2483
  %cmp2 = icmp ugt i32 %3, 0, !dbg !2483
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2485

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !2486
  %5 = load i64, ptr %4, align 8, !dbg !2487
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !2488
  %sub = sub i32 0, %6, !dbg !2488
  %and = and i32 %sub, 63, !dbg !2488
  %sh_prom = zext i32 %and to i64, !dbg !2488
  %shr = lshr i64 -1, %sh_prom, !dbg !2488
  %and3 = and i64 %5, %shr, !dbg !2489
  %tobool = icmp ne i64 %and3, 0, !dbg !2490
  %lnot = xor i1 %tobool, true, !dbg !2490
  store i1 %lnot, ptr %retval, align 1, !dbg !2491
  br label %return, !dbg !2491

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !2492
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !2493
  %conv = zext i32 %8 to i64, !dbg !2493
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #9, !dbg !2494
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !2495
  %conv4 = zext i32 %9 to i64, !dbg !2495
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !2496
  store i1 %cmp5, ptr %retval, align 1, !dbg !2497
  br label %return, !dbg !2497

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !2498
  ret i1 %10, !dbg !2498
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2499 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2507, metadata !DIExpression()), !dbg !2512
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2508, metadata !DIExpression()), !dbg !2513
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !2514
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2509, metadata !DIExpression()), !dbg !2515
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2516
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2517
  %div = udiv i64 %1, 64, !dbg !2517
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2518
  store ptr %add.ptr, ptr %p, align 8, !dbg !2515
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !2519
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2510, metadata !DIExpression()), !dbg !2520
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2521
  %rem = urem i64 %2, 64, !dbg !2521
  %shl = shl i64 1, %rem, !dbg !2521
  store i64 %shl, ptr %mask, align 8, !dbg !2520
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2511, metadata !DIExpression()), !dbg !2523
  %3 = load ptr, ptr %p, align 8, !dbg !2524
  %4 = load i64, ptr %3, align 8, !dbg !2525
  store i64 %4, ptr %val, align 8, !dbg !2523
  %5 = load i64, ptr %val, align 8, !dbg !2526
  %6 = load i64, ptr %mask, align 8, !dbg !2527
  %and = and i64 %5, %6, !dbg !2528
  %tobool = icmp ne i64 %and, 0, !dbg !2529
  %lnot = xor i1 %tobool, true, !dbg !2529
  %lnot1 = xor i1 %lnot, true, !dbg !2530
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !2531
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !2531
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !2531
  ret i1 %lnot1, !dbg !2532
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2533 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2536, metadata !DIExpression()), !dbg !2538
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2537, metadata !DIExpression()), !dbg !2539
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2540
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2541
  %div = udiv i64 %1, 64, !dbg !2541
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2542
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !2543
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2544
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2545
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !2546
  ret i1 %call, !dbg !2547
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2548 dso_local ptr @pnp_get_resource(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_resource_valid(ptr noundef %res) #2 align 16 !dbg !2551 {
entry:
  %retval = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2555, metadata !DIExpression()), !dbg !2556
  %0 = load ptr, ptr %res.addr, align 8, !dbg !2557
  %tobool = icmp ne ptr %0, null, !dbg !2557
  br i1 %tobool, label %if.then, label %if.end, !dbg !2559

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !2560
  br label %return, !dbg !2560

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2561
  br label %return, !dbg !2561

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !2562
  ret i32 %1, !dbg !2562
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pnp_resource_len(ptr noundef %res) #2 align 16 !dbg !2563 {
entry:
  %retval = alloca i64, align 8
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2567, metadata !DIExpression()), !dbg !2568
  %0 = load ptr, ptr %res.addr, align 8, !dbg !2569
  %start = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 0, !dbg !2571
  %1 = load i64, ptr %start, align 8, !dbg !2571
  %cmp = icmp eq i64 %1, 0, !dbg !2572
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2573

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %res.addr, align 8, !dbg !2574
  %end = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1, !dbg !2575
  %3 = load i64, ptr %end, align 8, !dbg !2575
  %cmp1 = icmp eq i64 %3, 0, !dbg !2576
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2577

if.then:                                          ; preds = %land.lhs.true
  store i64 0, ptr %retval, align 8, !dbg !2578
  br label %return, !dbg !2578

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %res.addr, align 8, !dbg !2579
  %call = call i64 @resource_size(ptr noundef %4) #9, !dbg !2580
  store i64 %call, ptr %retval, align 8, !dbg !2581
  br label %return, !dbg !2581

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !2582
  ret i64 %5, !dbg !2582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #2 align 16 !dbg !2583 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2589, metadata !DIExpression()), !dbg !2590
  %0 = load ptr, ptr %res.addr, align 8, !dbg !2591
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !2592
  %1 = load i64, ptr %end, align 8, !dbg !2592
  %2 = load ptr, ptr %res.addr, align 8, !dbg !2593
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !2594
  %3 = load i64, ptr %start, align 8, !dbg !2594
  %sub = sub i64 %1, %3, !dbg !2595
  %add = add i64 %sub, 1, !dbg !2596
  ret i64 %add, !dbg !2597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #2 align 16 !dbg !2598 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2603, metadata !DIExpression()), !dbg !2608
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2604, metadata !DIExpression()), !dbg !2609
  %0 = load i64, ptr %size.addr, align 8, !dbg !2610
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2610
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2610

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2610
  %cmp = icmp ule i64 %2, 64, !dbg !2610
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2610

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2610
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2610
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2611

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2605, metadata !DIExpression()), !dbg !2613
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !2614
  %5 = load i64, ptr %4, align 8, !dbg !2615
  %6 = load i64, ptr %size.addr, align 8, !dbg !2616
  %sub = sub i64 %6, 1, !dbg !2616
  %sub3 = sub i64 63, %sub, !dbg !2616
  %shr = lshr i64 -1, %sub3, !dbg !2616
  %and = and i64 -1, %shr, !dbg !2616
  %add = add i64 0, %and, !dbg !2616
  %and4 = and i64 %5, %add, !dbg !2617
  store i64 %and4, ptr %val, align 8, !dbg !2613
  %7 = load i64, ptr %val, align 8, !dbg !2618
  %tobool = icmp ne i64 %7, 0, !dbg !2618
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !2618

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !2619
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !2619
  br i1 %9, label %cond.true5, label %cond.false, !dbg !2619

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !2619
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !2619
  %cast = trunc i64 %11 to i32, !dbg !2619
  %conv = sext i32 %cast to i64, !dbg !2619
  br label %cond.end, !dbg !2619

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !2619
  %call = call i64 @variable__ffs(i64 noundef %12) #9, !dbg !2619
  br label %cond.end, !dbg !2619

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !2619
  br label %cond.end7, !dbg !2618

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !2620
  br label %cond.end7, !dbg !2618

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !2618
  store i64 %cond8, ptr %retval, align 8, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !2622
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !2623
  %15 = load i64, ptr %size.addr, align 8, !dbg !2624
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #9, !dbg !2625
  store i64 %call9, ptr %retval, align 8, !dbg !2626
  br label %return, !dbg !2626

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !2627
  ret i64 %16, !dbg !2627
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !2628 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2633, metadata !DIExpression()), !dbg !2634
  %0 = load i64, ptr %word.addr, align 8, !dbg !2635
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !2636, !srcloc !2637
  store i64 %1, ptr %word.addr, align 8, !dbg !2636
  %2 = load i64, ptr %word.addr, align 8, !dbg !2638
  ret i64 %2, !dbg !2639
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2640 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !2641 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2649, metadata !DIExpression()), !dbg !2651
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2650, metadata !DIExpression()), !dbg !2652
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2653
  %1 = load i64, ptr %size.addr, align 8, !dbg !2654
  %conv = trunc i64 %1 to i32, !dbg !2654
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !2655
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2656
  %3 = load i64, ptr %size.addr, align 8, !dbg !2656
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !2656
  ret void, !dbg !2657
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2658 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2660, metadata !DIExpression()), !dbg !2662
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2661, metadata !DIExpression()), !dbg !2663
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2664
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2665
  br i1 %1, label %cond.true, label %cond.false, !dbg !2665

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2666
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2667
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !2668
  %conv = zext i1 %call to i32, !dbg !2668
  br label %cond.end, !dbg !2665

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2669
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2670
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #9, !dbg !2671
  %conv2 = zext i1 %call1 to i32, !dbg !2671
  br label %cond.end, !dbg !2665

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2665
  %tobool = icmp ne i32 %cond, 0, !dbg !2665
  ret i1 %tobool, !dbg !2672
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !2673 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2678, metadata !DIExpression()), !dbg !2680
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2679, metadata !DIExpression()), !dbg !2681
  ret i1 true, !dbg !2682
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !2683 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2688, metadata !DIExpression()), !dbg !2691
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2689, metadata !DIExpression()), !dbg !2692
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2690, metadata !DIExpression()), !dbg !2693
  ret void, !dbg !2694
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2695 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2699, metadata !DIExpression()), !dbg !2701
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2700, metadata !DIExpression()), !dbg !2702
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2703
  %and = and i64 %0, 63, !dbg !2704
  %shl = shl i64 1, %and, !dbg !2705
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2706
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2707
  %shr = ashr i64 %2, 6, !dbg !2708
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2706
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2706
  %and1 = and i64 %shl, %3, !dbg !2709
  %cmp = icmp ne i64 %and1, 0, !dbg !2710
  ret i1 %cmp, !dbg !2711
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2712 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2714, metadata !DIExpression()), !dbg !2717
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !2719
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2716, metadata !DIExpression()), !dbg !2720
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2721
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2722
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !2723, !srcloc !2724
  %3 = icmp ult i8 %2, 2, !dbg !2723
  call void @llvm.assume(i1 %3), !dbg !2723
  store i8 %2, ptr %oldbit, align 1, !dbg !2723
  %4 = load i8, ptr %oldbit, align 1, !dbg !2725, !range !2726, !noundef !449
  %tobool = trunc i8 %4 to i1, !dbg !2725
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !2727
  ret i1 %tobool, !dbg !2728
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_is_active205", scope: !2, file: !3, line: 33, type: !84, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pnp/.support.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pnp/pnp\22 -D KBUILD_BASENAME=\22support\22 -D KBUILD_MODNAME=\22pnp\22 -D __KBUILD_MODNAME=kmod_pnp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pnp/support.ll drivers/pnp/support.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !83, globals: !130, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/support.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92d15e39669dac6d87425b66109832eb")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78}
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
!83 = !{!84, !85, !87, !89, !110, !123, !124, !126, !46, !117, !129}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !88, line: 39, baseType: !85)
!88 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !91, line: 155, size: 640, elements: !92)
!91 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad88cd72d3973577aa1f5f71c7f3d528")
!92 = !{!93, !100}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !90, file: !91, line: 156, baseType: !94, size: 128)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !95, line: 190, size: 128, elements: !96)
!95 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!96 = !{!97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !95, line: 191, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !94, file: !95, line: 191, baseType: !98, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !90, file: !91, line: 157, baseType: !101, size: 512, offset: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !102, line: 21, size: 512, elements: !103)
!102 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!103 = !{!104, !111, !112, !116, !118, !119, !121, !122}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !101, file: !102, line: 22, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !95, line: 164, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !95, line: 159, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !108, line: 23, baseType: !109)
!108 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !110)
!110 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !101, file: !102, line: 23, baseType: !105, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !102, line: 24, baseType: !113, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !102, line: 25, baseType: !117, size: 64, offset: 192)
!117 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !101, file: !102, line: 26, baseType: !117, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !101, file: !102, line: 27, baseType: !120, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !101, file: !102, line: 27, baseType: !120, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !101, file: !102, line: 27, baseType: !120, size: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !95, line: 42, baseType: !117)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !98)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!130 = !{!0, !131, !136, !141, !143, !145, !147, !152, !154, !159, !164, !169, !174, !179, !181, !183, !188, !193, !198, !200, !202, !204, !206, !211, !213}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 24, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 3)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 32, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 4)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !138, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !138, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !138, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 8)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !133, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 208, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 26)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 192, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 24)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 40, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 5)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 80, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 10)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 88, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 11)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !176, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !149, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 200, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 25)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 120, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 15)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 440, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 55)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !195, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 146, type: !149, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !138, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !176, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 96, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 12)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !185, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !138, isLocal: true, isDefinition: true)
!215 = !{i32 7, !"Dwarf Version", i32 5}
!216 = !{i32 2, !"Debug Info Version", i32 3}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 8, !"cf-protection-branch", i32 1}
!219 = !{i32 4, !"function_return_thunk_extern", i32 1}
!220 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!221 = !{i32 1, !"Code Model", i32 2}
!222 = !{i32 1, !"override-stack-alignment", i32 8}
!223 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!224 = distinct !DISubprogram(name: "pnp_is_active", scope: !3, file: !3, line: 20, type: !225, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1838)
!225 = !DISubroutineType(types: !226)
!226 = !{!46, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !229, line: 243, size: 7744, elements: !230)
!229 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71a2b05a7bea4745f52d5f98f7dc6ac6")
!230 = !{!231, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1732, !1759, !1785, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !228, file: !229, line: 244, baseType: !232, size: 5824)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !233)
!233 = !{!234, !882, !884, !887, !888, !941, !1407, !1408, !1409, !1410, !1411, !1418, !1586, !1599, !1609, !1613, !1615, !1616, !1617, !1621, !1628, !1629, !1632, !1635, !1639, !1642, !1643, !1646, !1647, !1648, !1649, !1679, !1680, !1681, !1684, !1687, !1696, !1697, !1698, !1699, !1700, !1701}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !232, file: !26, line: 706, baseType: !235, size: 512)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !236, line: 64, size: 512, elements: !237)
!236 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!237 = !{!238, !239, !240, !242, !327, !753, !867, !877, !878, !879, !880, !881}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !236, line: 65, baseType: !113, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !235, file: !236, line: 66, baseType: !94, size: 128, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !236, line: 67, baseType: !241, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !235, file: !236, line: 68, baseType: !243, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !236, line: 168, size: 768, elements: !245)
!245 = !{!246, !247, !288, !289}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !244, file: !236, line: 169, baseType: !94, size: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !244, file: !236, line: 170, baseType: !248, size: 32, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !249, line: 29, baseType: !250)
!249 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !249, line: 17, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !249, line: 18, baseType: !253, size: 32)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !249, line: 18, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !253, file: !249, line: 19, baseType: !256, size: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !257, line: 14, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !256, file: !257, line: 15, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !261, line: 44, baseType: !262)
!261 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !261, line: 14, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !261, line: 15, baseType: !265, size: 32)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !262, file: !261, line: 15, size: 32, elements: !266)
!266 = !{!267, !272, !280}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !265, file: !261, line: 16, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !95, line: 174, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 172, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !269, file: !95, line: 173, baseType: !46, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !261, line: 24, baseType: !273, size: 16)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !261, line: 24, size: 16, elements: !274)
!274 = !{!275, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !273, file: !261, line: 25, baseType: !276, size: 8)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !108, line: 17, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !278)
!278 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !273, file: !261, line: 26, baseType: !276, size: 8, offset: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !261, line: 28, baseType: !281, size: 32)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !261, line: 28, size: 32, elements: !282)
!282 = !{!283, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !281, file: !261, line: 29, baseType: !284, size: 16)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !108, line: 19, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !286)
!286 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !281, file: !261, line: 30, baseType: !284, size: 16, offset: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !244, file: !236, line: 171, baseType: !235, size: 512, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !244, file: !236, line: 172, baseType: !290, size: 64, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !236, line: 133, size: 192, elements: !293)
!293 = !{!294, !301, !306}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !292, file: !236, line: 134, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!46, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !236, line: 135, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!113, !299}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !292, file: !236, line: 136, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!46, !299, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !236, line: 125, size: 20736, elements: !313)
!313 = !{!314, !317, !321, !322, !326}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !312, file: !236, line: 126, baseType: !315, size: 192)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 192, elements: !134)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !312, file: !236, line: 127, baseType: !318, size: 4096, offset: 192)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 4096, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !312, file: !236, line: 128, baseType: !46, size: 32, offset: 4288)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !312, file: !236, line: 129, baseType: !323, size: 16384, offset: 4320)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 16384, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 2048)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !312, file: !236, line: 130, baseType: !46, size: 32, offset: 20704)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !235, file: !236, line: 69, baseType: !328, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !236, line: 116, size: 384, elements: !331)
!331 = !{!332, !336, !364, !700, !731, !735}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !330, file: !236, line: 117, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !241}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !330, file: !236, line: 118, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !340, line: 254, size: 128, elements: !341)
!340 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!341 = !{!342, !357}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !339, file: !340, line: 255, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !241, !351, !316}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !95, line: 66, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !348, line: 73, baseType: !349)
!348 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !348, line: 15, baseType: !350)
!350 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !340, line: 30, size: 128, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !340, line: 31, baseType: !113, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !352, file: !340, line: 32, baseType: !356, size: 16, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !95, line: 24, baseType: !286)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !339, file: !340, line: 256, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!346, !241, !351, !113, !361}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 61, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !348, line: 72, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !348, line: 16, baseType: !117)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !330, file: !236, line: 119, baseType: !365, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !340, line: 84, size: 320, elements: !369)
!369 = !{!370, !371, !375, !696, !698}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !340, line: 85, baseType: !113, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !368, file: !340, line: 86, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!356, !241, !351, !46}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !368, file: !340, line: 88, baseType: !376, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!356, !241, !379, !46}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !340, line: 175, size: 512, elements: !381)
!381 = !{!382, !383, !384, !385, !392, !402, !403}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !380, file: !340, line: 176, baseType: !352, size: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !380, file: !340, line: 177, baseType: !361, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !380, file: !340, line: 178, baseType: !84, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !380, file: !340, line: 179, baseType: !386, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !391, line: 32, flags: DIFlagFwdDecl)
!391 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!392 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !380, file: !340, line: 180, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!346, !396, !241, !379, !316, !399, !361}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !398, line: 537, flags: DIFlagFwdDecl)
!398 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !95, line: 52, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !348, line: 88, baseType: !401)
!401 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !380, file: !340, line: 182, baseType: !393, size: 64, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !380, file: !340, line: 184, baseType: !404, size: 64, offset: 448)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!46, !396, !241, !379, !407}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !391, line: 625, size: 1344, elements: !409)
!409 = !{!410, !427, !645, !651, !658, !659, !664, !667, !679, !680, !683, !687, !688, !689, !690, !691, !694}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !391, line: 628, baseType: !411, size: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !391, line: 628, size: 128, elements: !412)
!412 = !{!413, !418}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !391, line: 629, baseType: !414, size: 128)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !391, line: 629, size: 128, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !414, file: !391, line: 631, baseType: !117, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !414, file: !391, line: 632, baseType: !117, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !411, file: !391, line: 635, baseType: !419, size: 128, align: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !95, line: 232, size: 128, align: 64, elements: !420)
!420 = !{!421, !423}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !95, line: 233, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !419, file: !95, line: 234, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !422}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !408, file: !391, line: 639, baseType: !428, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !391, line: 733, size: 10240, elements: !430)
!430 = !{!431, !641}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !391, line: 734, baseType: !432, size: 10240)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !391, line: 734, size: 10240, elements: !433)
!433 = !{!434, !438, !452, !456, !457, !458, !459, !460, !461, !469, !470, !471, !477, !478, !487, !488, !489, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !536, !548, !551, !606, !607, !608, !611, !615, !616, !619, !620, !621, !628, !629}
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !391, line: 739, baseType: !435, size: 512, align: 512)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !391, line: 739, size: 512, align: 512, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !435, file: !391, line: 747, baseType: !268, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !432, file: !391, line: 750, baseType: !439, size: 128, offset: 512)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !440, line: 218, size: 128, elements: !441)
!440 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!441 = !{!442, !450, !451}
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !440, line: 219, baseType: !443, size: 32)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !440, line: 219, size: 32, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !443, file: !440, line: 220, baseType: !248, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !443, file: !440, line: 221, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !440, line: 197, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 197, elements: !449)
!449 = !{}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !439, file: !440, line: 223, baseType: !7, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !439, file: !440, line: 224, baseType: !84, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !432, file: !391, line: 752, baseType: !453, size: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!117, !396, !117, !117, !117, !117}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !432, file: !391, line: 756, baseType: !117, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !432, file: !391, line: 757, baseType: !117, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !432, file: !391, line: 760, baseType: !117, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !432, file: !391, line: 761, baseType: !117, size: 64, offset: 896)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !432, file: !391, line: 763, baseType: !117, size: 64, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !432, file: !391, line: 764, baseType: !462, size: 64, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !398, line: 299, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 299, size: 64, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !464, file: !398, line: 299, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !468, line: 18, baseType: !117)
!468 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!469 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !432, file: !391, line: 773, baseType: !268, size: 32, offset: 1088)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !432, file: !391, line: 785, baseType: !268, size: 32, offset: 1120)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !432, file: !391, line: 795, baseType: !472, size: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !391, line: 726, size: 128, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !473, file: !391, line: 727, baseType: !107, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !473, file: !391, line: 728, baseType: !46, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !432, file: !391, line: 801, baseType: !117, size: 64, offset: 1216)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !432, file: !391, line: 804, baseType: !479, size: 64, offset: 1280)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !480, line: 13, baseType: !481)
!480 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !95, line: 181, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 179, size: 64, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !482, file: !95, line: 180, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !108, line: 22, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !401)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !432, file: !391, line: 806, baseType: !46, size: 32, offset: 1344)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !432, file: !391, line: 808, baseType: !248, size: 32, offset: 1376)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !432, file: !391, line: 823, baseType: !490, size: 320, offset: 1408)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !491, line: 48, size: 320, elements: !492)
!491 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!492 = !{!493, !494, !495, !500, !502}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !490, file: !491, line: 49, baseType: !479, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !490, file: !491, line: 55, baseType: !479, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !490, file: !491, line: 57, baseType: !496, size: 32, offset: 128)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !497, line: 15, size: 32, elements: !498)
!497 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !496, file: !497, line: 20, baseType: !268, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !490, file: !491, line: 59, baseType: !501, size: 32, offset: 160)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !257, line: 23, baseType: !256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !490, file: !491, line: 60, baseType: !94, size: 128, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !432, file: !391, line: 825, baseType: !94, size: 128, offset: 1728)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !432, file: !391, line: 845, baseType: !46, size: 32, offset: 1856)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !432, file: !391, line: 849, baseType: !117, size: 64, offset: 1920)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !432, file: !391, line: 850, baseType: !117, size: 64, offset: 1984)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !432, file: !391, line: 852, baseType: !117, size: 64, offset: 2048)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !432, file: !391, line: 853, baseType: !117, size: 64, offset: 2112)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !432, file: !391, line: 854, baseType: !481, size: 64, offset: 2176)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !432, file: !391, line: 855, baseType: !117, size: 64, offset: 2240)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !432, file: !391, line: 856, baseType: !117, size: 64, offset: 2304)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !432, file: !391, line: 857, baseType: !117, size: 64, offset: 2368)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !432, file: !391, line: 858, baseType: !117, size: 64, offset: 2432)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !432, file: !391, line: 865, baseType: !515, size: 32, offset: 2496)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !516, line: 69, baseType: !517)
!516 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !516, line: 64, size: 32, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !517, file: !516, line: 65, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !432, file: !391, line: 867, baseType: !248, size: 32, offset: 2528)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !432, file: !391, line: 869, baseType: !117, size: 64, offset: 2560)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !432, file: !391, line: 869, baseType: !117, size: 64, offset: 2624)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !432, file: !391, line: 869, baseType: !117, size: 64, offset: 2688)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !432, file: !391, line: 869, baseType: !117, size: 64, offset: 2752)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !432, file: !391, line: 870, baseType: !117, size: 64, offset: 2816)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !432, file: !391, line: 870, baseType: !117, size: 64, offset: 2880)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !432, file: !391, line: 870, baseType: !117, size: 64, offset: 2944)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !432, file: !391, line: 871, baseType: !117, size: 64, offset: 3008)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !432, file: !391, line: 871, baseType: !117, size: 64, offset: 3072)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !432, file: !391, line: 871, baseType: !117, size: 64, offset: 3136)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !432, file: !391, line: 871, baseType: !117, size: 64, offset: 3200)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !432, file: !391, line: 873, baseType: !533, size: 3328, offset: 3264)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 3328, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 52)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !432, file: !391, line: 875, baseType: !537, size: 1280, offset: 6592)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 1280, elements: !139)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !539, line: 22, size: 320, elements: !540)
!539 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!540 = !{!541, !542, !543, !544}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !538, file: !539, line: 23, baseType: !501, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !538, file: !539, line: 24, baseType: !485, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !538, file: !539, line: 26, baseType: !94, size: 128, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !538, file: !539, line: 28, baseType: !545, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !108, line: 20, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !46)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !432, file: !391, line: 877, baseType: !549, size: 64, offset: 7872)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !391, line: 877, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !432, file: !391, line: 880, baseType: !552, size: 1088, offset: 7936)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !553, line: 72, baseType: !554)
!553 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 23, size: 1088, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !563, !564, !572, !573, !600, !601, !602}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !554, file: !553, line: 28, baseType: !107, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !554, file: !553, line: 38, baseType: !481, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !554, file: !553, line: 40, baseType: !117, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !554, file: !553, line: 43, baseType: !490, size: 320, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !554, file: !553, line: 44, baseType: !561, size: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !553, line: 44, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !553, line: 48, baseType: !117, size: 64, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !554, file: !553, line: 59, baseType: !565, size: 256, offset: 640)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !566, line: 66, size: 256, elements: !567)
!566 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!567 = !{!568, !569, !570, !571}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !565, file: !566, line: 67, baseType: !479, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !565, file: !566, line: 68, baseType: !501, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !565, file: !566, line: 70, baseType: !496, size: 32, offset: 96)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !565, file: !566, line: 72, baseType: !94, size: 128, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !554, file: !553, line: 60, baseType: !84, size: 64, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !554, file: !553, line: 61, baseType: !574, size: 64, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !577, line: 13, size: 1216, elements: !578)
!577 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!578 = !{!579, !580, !581, !582, !583, !584, !585, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !576, file: !577, line: 14, baseType: !84, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !576, file: !577, line: 15, baseType: !117, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !576, file: !577, line: 17, baseType: !117, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !576, file: !577, line: 17, baseType: !117, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !576, file: !577, line: 18, baseType: !117, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !576, file: !577, line: 18, baseType: !117, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !576, file: !577, line: 19, baseType: !586, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !576, file: !577, line: 21, baseType: !350, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !576, file: !577, line: 23, baseType: !350, size: 64, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !576, file: !577, line: 24, baseType: !350, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !576, file: !577, line: 25, baseType: !350, size: 64, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !576, file: !577, line: 26, baseType: !350, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !576, file: !577, line: 27, baseType: !350, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !576, file: !577, line: 28, baseType: !350, size: 64, offset: 832)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !576, file: !577, line: 29, baseType: !350, size: 64, offset: 896)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !576, file: !577, line: 30, baseType: !350, size: 64, offset: 960)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !576, file: !577, line: 31, baseType: !350, size: 64, offset: 1024)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !576, file: !577, line: 32, baseType: !350, size: 64, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !576, file: !577, line: 33, baseType: !350, size: 64, offset: 1152)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !554, file: !553, line: 63, baseType: !268, size: 32, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !554, file: !553, line: 69, baseType: !284, size: 16, offset: 1056)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !554, file: !553, line: 70, baseType: !603, size: 16, offset: 1072)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !108, line: 18, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !605)
!605 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !391, line: 882, baseType: !117, size: 64, offset: 9024)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !432, file: !391, line: 885, baseType: !248, size: 32, offset: 9088)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !432, file: !391, line: 886, baseType: !609, size: 64, offset: 9152)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !391, line: 732, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !432, file: !391, line: 901, baseType: !612, size: 64, offset: 9216)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !614, line: 18, flags: DIFlagFwdDecl)
!614 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !432, file: !391, line: 904, baseType: !396, size: 64, offset: 9280)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !432, file: !391, line: 906, baseType: !617, size: 64, offset: 9344)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !391, line: 906, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !432, file: !391, line: 930, baseType: !268, size: 32, offset: 9408)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !432, file: !391, line: 933, baseType: !268, size: 32, offset: 9440)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !432, file: !391, line: 935, baseType: !622, size: 64, offset: 9472)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !623, line: 103, size: 64, elements: !624)
!623 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !622, file: !623, line: 104, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !623, line: 101, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !432, file: !391, line: 940, baseType: !479, size: 64, offset: 9536)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !432, file: !391, line: 942, baseType: !630, size: 256, offset: 9600)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !631, line: 98, size: 256, elements: !632)
!631 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!632 = !{!633, !634, !635}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !630, file: !631, line: 99, baseType: !479, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !630, file: !631, line: 100, baseType: !94, size: 128, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !630, file: !631, line: 101, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !631, line: 21, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !429, file: !391, line: 986, baseType: !642, offset: 10240)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: -1)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !408, file: !391, line: 640, baseType: !646, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !398, line: 297, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !398, line: 297, size: 64, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !647, file: !398, line: 297, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !468, line: 19, baseType: !117)
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !391, line: 646, baseType: !652, size: 64, offset: 256)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !391, line: 646, size: 64, elements: !653)
!653 = !{!654, !657}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !652, file: !391, line: 647, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !391, line: 542, baseType: !117)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !652, file: !391, line: 648, baseType: !656, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !408, file: !391, line: 666, baseType: !46, size: 32, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !408, file: !391, line: 667, baseType: !660, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !391, line: 579, size: 320, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !661, file: !391, line: 580, baseType: !490, size: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !408, file: !391, line: 670, baseType: !665, size: 8, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !95, line: 35, baseType: !666)
!666 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !408, file: !391, line: 681, baseType: !668, size: 256, offset: 512)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !391, line: 678, size: 256, elements: !669)
!669 = !{!670, !678}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !668, file: !391, line: 679, baseType: !671, size: 192, align: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !672, line: 5, size: 192, align: 64, elements: !673)
!672 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!673 = !{!674, !675, !677}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !671, file: !672, line: 6, baseType: !117, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !671, file: !672, line: 7, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !671, file: !672, line: 8, baseType: !676, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !668, file: !391, line: 680, baseType: !117, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !408, file: !391, line: 689, baseType: !94, size: 128, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !408, file: !391, line: 691, baseType: !681, size: 64, offset: 896)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !391, line: 691, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !408, file: !391, line: 694, baseType: !684, size: 64, offset: 960)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !391, line: 694, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !408, file: !391, line: 697, baseType: !117, size: 64, offset: 1024)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !408, file: !391, line: 699, baseType: !396, size: 64, offset: 1088)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !408, file: !391, line: 700, baseType: !84, size: 64, offset: 1152)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !408, file: !391, line: 711, baseType: !479, size: 64, offset: 1216)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !408, file: !391, line: 717, baseType: !692, size: 64, offset: 1280)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !391, line: 717, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !408, file: !391, line: 722, baseType: !695, offset: 1344)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !391, line: 570, elements: !449)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !368, file: !340, line: 90, baseType: !697, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !368, file: !340, line: 91, baseType: !699, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !330, file: !236, line: 120, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!704, !299}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !707)
!707 = !{!708, !709, !713, !717, !723, !727}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !6, line: 40, baseType: !5, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !706, file: !6, line: 41, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!665}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !706, file: !6, line: 42, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!84}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !706, file: !6, line: 43, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!586, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !706, file: !6, line: 44, baseType: !724, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!586}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !706, file: !6, line: 45, baseType: !728, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !84}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !330, file: !236, line: 121, baseType: !732, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!586, !299}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !330, file: !236, line: 122, baseType: !736, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !299, !739, !746}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !614, line: 23, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 21, size: 32, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !741, file: !614, line: 22, baseType: !744, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !95, line: 37, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !348, line: 49, baseType: !7)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !614, line: 28, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 26, size: 32, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !748, file: !614, line: 27, baseType: !751, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !95, line: 38, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !348, line: 50, baseType: !7)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !235, file: !236, line: 70, baseType: !754, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !756, line: 190, size: 1152, elements: !757)
!756 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !859, !860, !861, !862, !863, !866}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !755, file: !756, line: 191, baseType: !268, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !755, file: !756, line: 192, baseType: !268, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !755, file: !756, line: 202, baseType: !754, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !755, file: !756, line: 203, baseType: !113, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !755, file: !756, line: 205, baseType: !671, size: 192, align: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !755, file: !756, line: 207, baseType: !586, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !755, file: !756, line: 208, baseType: !7, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !756, line: 209, baseType: !766, size: 256, offset: 512)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !756, line: 209, size: 256, elements: !767)
!767 = !{!768, !780, !784}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !766, file: !756, line: 210, baseType: !769, size: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !756, line: 153, size: 256, elements: !770)
!770 = !{!771, !772, !776, !779}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !769, file: !756, line: 154, baseType: !117, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !769, file: !756, line: 156, baseType: !773, size: 64, offset: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !672, line: 12, size: 64, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !773, file: !672, line: 13, baseType: !676, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !769, file: !756, line: 162, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !756, line: 162, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !769, file: !756, line: 167, baseType: !117, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !766, file: !756, line: 211, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !756, line: 170, size: 64, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !781, file: !756, line: 171, baseType: !754, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !766, file: !756, line: 212, baseType: !785, size: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !756, line: 174, size: 256, elements: !786)
!786 = !{!787, !854, !857, !858}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !785, file: !756, line: 175, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !756, line: 271, size: 768, elements: !791)
!791 = !{!792, !815, !819, !823, !828, !832, !836, !840, !841, !842, !843, !850}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !790, file: !756, line: 276, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!46, !796}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !756, line: 251, size: 1216, elements: !798)
!798 = !{!799, !800, !801, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !797, file: !756, line: 253, baseType: !754, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !797, file: !756, line: 254, baseType: !396, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !797, file: !756, line: 255, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !804, line: 66, flags: DIFlagFwdDecl)
!804 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!805 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !797, file: !756, line: 256, baseType: !84, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !797, file: !756, line: 259, baseType: !565, size: 256, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !797, file: !756, line: 260, baseType: !565, size: 256, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !797, file: !756, line: 261, baseType: !46, size: 32, offset: 768)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !797, file: !756, line: 262, baseType: !94, size: 128, offset: 832)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !797, file: !756, line: 263, baseType: !316, size: 64, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !797, file: !756, line: 265, baseType: !361, size: 64, offset: 1024)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !797, file: !756, line: 266, baseType: !665, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !797, file: !756, line: 267, baseType: !665, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !797, file: !756, line: 268, baseType: !684, size: 64, offset: 1152)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !790, file: !756, line: 277, baseType: !816, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !796}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !790, file: !756, line: 290, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!46, !802, !84}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !790, file: !756, line: 292, baseType: !824, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!84, !802, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !790, file: !756, line: 293, baseType: !829, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!84, !802, !84, !827}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !790, file: !756, line: 294, baseType: !833, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !802, !84}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !790, file: !756, line: 296, baseType: !837, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!346, !796, !316, !361, !399}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !790, file: !756, line: 306, baseType: !361, size: 64, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !790, file: !756, line: 313, baseType: !665, size: 8, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !790, file: !756, line: 314, baseType: !837, size: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !790, file: !756, line: 317, baseType: !844, size: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!847, !796, !848}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !88, line: 59, baseType: !7)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !756, line: 31, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !790, file: !756, line: 320, baseType: !851, size: 64, offset: 704)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!46, !796, !407}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !785, file: !756, line: 176, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !756, line: 35, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !785, file: !756, line: 177, baseType: !399, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !785, file: !756, line: 178, baseType: !754, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !755, file: !756, line: 215, baseType: !84, size: 64, offset: 768)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !755, file: !756, line: 221, baseType: !107, size: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !756, line: 223, baseType: !286, size: 16, offset: 896)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !755, file: !756, line: 224, baseType: !356, size: 16, offset: 912)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !755, file: !756, line: 225, baseType: !864, size: 64, offset: 960)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !756, line: 36, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !755, file: !756, line: 227, baseType: !419, size: 128, align: 64, offset: 1024)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !235, file: !236, line: 71, baseType: !868, size: 32, offset: 448)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !869, line: 19, size: 32, elements: !870)
!869 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !868, file: !869, line: 20, baseType: !872, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !873, line: 113, baseType: !874)
!873 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !873, line: 111, size: 32, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !874, file: !873, line: 112, baseType: !268, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !235, file: !236, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !235, file: !236, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !235, file: !236, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !235, file: !236, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !235, file: !236, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !26, line: 707, baseType: !883, size: 64, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !232, file: !26, line: 709, baseType: !885, size: 64, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !232, file: !26, line: 711, baseType: !113, size: 64, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !26, line: 712, baseType: !889, size: 64, offset: 704)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !892)
!892 = !{!893, !894, !895, !901, !906, !910}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !891, file: !26, line: 90, baseType: !113, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !891, file: !26, line: 91, baseType: !365, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !891, file: !26, line: 92, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!46, !899, !311}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !891, file: !26, line: 93, baseType: !902, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!316, !899, !905, !739, !746}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !891, file: !26, line: 95, baseType: !907, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !883}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !891, file: !26, line: 97, baseType: !911, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !914)
!914 = !{!915, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !913, file: !38, line: 287, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!46, !883}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !913, file: !38, line: 288, baseType: !907, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !913, file: !38, line: 289, baseType: !916, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !913, file: !38, line: 290, baseType: !916, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !913, file: !38, line: 291, baseType: !916, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !913, file: !38, line: 292, baseType: !916, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !913, file: !38, line: 293, baseType: !916, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !913, file: !38, line: 294, baseType: !916, size: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !913, file: !38, line: 295, baseType: !916, size: 64, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !913, file: !38, line: 296, baseType: !916, size: 64, offset: 576)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !913, file: !38, line: 297, baseType: !916, size: 64, offset: 640)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !913, file: !38, line: 298, baseType: !916, size: 64, offset: 704)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !913, file: !38, line: 299, baseType: !916, size: 64, offset: 768)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !913, file: !38, line: 300, baseType: !916, size: 64, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !913, file: !38, line: 301, baseType: !916, size: 64, offset: 896)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !913, file: !38, line: 302, baseType: !916, size: 64, offset: 960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !913, file: !38, line: 303, baseType: !916, size: 64, offset: 1024)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !913, file: !38, line: 304, baseType: !916, size: 64, offset: 1088)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !913, file: !38, line: 305, baseType: !916, size: 64, offset: 1152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !913, file: !38, line: 306, baseType: !916, size: 64, offset: 1216)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !913, file: !38, line: 307, baseType: !916, size: 64, offset: 1280)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !913, file: !38, line: 308, baseType: !916, size: 64, offset: 1344)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !913, file: !38, line: 309, baseType: !916, size: 64, offset: 1408)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !232, file: !26, line: 714, baseType: !942, size: 64, offset: 768)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !945, line: 80, size: 1344, elements: !946)
!945 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!946 = !{!947, !948, !949, !950, !951, !952, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1406}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !944, file: !945, line: 81, baseType: !113, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !944, file: !945, line: 82, baseType: !113, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !944, file: !945, line: 83, baseType: !365, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !944, file: !945, line: 84, baseType: !365, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !944, file: !945, line: 85, baseType: !365, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !944, file: !945, line: 87, baseType: !953, size: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!46, !883, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !958)
!958 = !{!959, !960, !961, !1337, !1338, !1339, !1340, !1356, !1369, !1370, !1371, !1372, !1373, !1381, !1382, !1383, !1384, !1385, !1386}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !957, file: !20, line: 97, baseType: !113, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !957, file: !20, line: 98, baseType: !942, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !957, file: !20, line: 100, baseType: !962, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !964)
!964 = !{!965, !966, !967, !971, !992, !1018, !1019, !1020, !1021, !1025, !1028, !1029, !1030, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1093, !1097, !1117, !1135, !1136, !1137, !1138, !1147, !1170, !1171, !1174, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1188, !1189, !1296, !1304, !1305, !1306, !1308, !1312, !1313, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1330, !1331, !1332, !1336}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !963, file: !13, line: 403, baseType: !12, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !963, file: !13, line: 406, baseType: !94, size: 128, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !963, file: !13, line: 409, baseType: !968, size: 448, offset: 192)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 448, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 56)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !963, file: !13, line: 417, baseType: !972, size: 768, offset: 640)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !973)
!973 = !{!974, !975, !976, !977, !980}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !972, file: !13, line: 46, baseType: !235, size: 512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !972, file: !13, line: 47, baseType: !962, size: 64, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !972, file: !13, line: 48, baseType: !241, size: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !972, file: !13, line: 49, baseType: !978, size: 64, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !972, file: !13, line: 50, baseType: !981, size: 64, offset: 704)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !983, line: 26, size: 256, elements: !984)
!983 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !982, file: !983, line: 27, baseType: !7, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !982, file: !983, line: 28, baseType: !987, size: 192, offset: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !988, line: 43, size: 192, elements: !989)
!988 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !987, file: !988, line: 44, baseType: !501, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !987, file: !988, line: 45, baseType: !94, size: 128, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !963, file: !13, line: 418, baseType: !993, size: 64, offset: 1408)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !995)
!995 = !{!996, !997, !1002, !1006, !1010, !1014}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !994, file: !13, line: 54, baseType: !352, size: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !994, file: !13, line: 55, baseType: !998, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!346, !993, !1001, !316}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !994, file: !13, line: 57, baseType: !1003, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!346, !993, !1001, !113, !361}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !994, file: !13, line: 59, baseType: !1007, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !962, !113}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !994, file: !13, line: 60, baseType: !1011, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!46, !962}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !994, file: !13, line: 61, baseType: !1015, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !962}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !963, file: !13, line: 419, baseType: !113, size: 64, offset: 1472)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !963, file: !13, line: 420, baseType: !113, size: 64, offset: 1536)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !963, file: !13, line: 421, baseType: !241, size: 64, offset: 1600)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !963, file: !13, line: 424, baseType: !1022, size: 64, offset: 1664)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !963, file: !13, line: 425, baseType: !1026, size: 64, offset: 1728)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !963, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !963, file: !13, line: 435, baseType: !565, size: 256, offset: 1856)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !963, file: !13, line: 437, baseType: !1031, size: 64, offset: 2112)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1033, line: 69, size: 320, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1034 = !{!1035, !1036, !1037, !1054, !1056, !1060, !1061}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1032, file: !1033, line: 70, baseType: !113, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1032, file: !1033, line: 71, baseType: !962, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1032, file: !1033, line: 72, baseType: !1038, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1033, line: 47, size: 256, elements: !1041)
!1041 = !{!1042, !1043, !1049, !1053}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1040, file: !1033, line: 49, baseType: !7, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1040, file: !1033, line: 51, baseType: !1044, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!46, !113, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1040, file: !1033, line: 53, baseType: !1050, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!46, !316, !1047}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1040, file: !1033, line: 55, baseType: !728, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1032, file: !1033, line: 73, baseType: !1055, size: 16, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1032, file: !1033, line: 74, baseType: !1057, size: 8, offset: 208)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !108, line: 16, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !1059)
!1059 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !1033, line: 75, baseType: !276, size: 8, offset: 216)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !1033, line: 76, baseType: !1062, size: 64, offset: 256)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !1033, line: 76, size: 64, elements: !1063)
!1063 = !{!1064, !1065, !1072}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1062, file: !1033, line: 77, baseType: !84, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1062, file: !1033, line: 78, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1033, line: 86, size: 128, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1068, file: !1033, line: 87, baseType: !7, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1068, file: !1033, line: 88, baseType: !316, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1062, file: !1033, line: 79, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1033, line: 92, size: 256, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1081, !1082}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1075, file: !1033, line: 94, baseType: !7, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1075, file: !1033, line: 95, baseType: !7, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1075, file: !1033, line: 96, baseType: !1080, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1075, file: !1033, line: 97, baseType: !1038, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1075, file: !1033, line: 98, baseType: !84, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !963, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !963, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !963, file: !13, line: 442, baseType: !1022, size: 64, offset: 2240)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !963, file: !13, line: 443, baseType: !1026, size: 64, offset: 2304)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !963, file: !13, line: 444, baseType: !665, size: 8, offset: 2368)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !963, file: !13, line: 451, baseType: !665, size: 8, offset: 2376)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !963, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !963, file: !13, line: 455, baseType: !1091, size: 64, offset: 2432)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !963, file: !13, line: 458, baseType: !1094, size: 64, offset: 2496)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!46}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !963, file: !13, line: 460, baseType: !1098, size: 4032, align: 512, offset: 2560)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1099, size: 4032, elements: !1115)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1100)
!1100 = !{!1101, !1102, !1103}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1099, file: !13, line: 363, baseType: !84, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1099, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1099, file: !13, line: 367, baseType: !1104, size: 448, offset: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1104, file: !13, line: 320, baseType: !962, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1104, file: !13, line: 321, baseType: !1108, size: 384, offset: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1109, line: 40, size: 384, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1108, file: !1109, line: 41, baseType: !1112, size: 384, align: 64)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 384, align: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 2)
!1115 = !{!1116}
!1116 = !DISubrange(count: 7)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !963, file: !13, line: 463, baseType: !1118, size: 192, offset: 6592)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1119, line: 8, size: 192, elements: !1120)
!1119 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1120 = !{!1121, !1122, !1124}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1118, file: !1119, line: 10, baseType: !7, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1118, file: !1119, line: 11, baseType: !1123, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1118, file: !1119, line: 12, baseType: !1125, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1127, line: 59, size: 48, elements: !1128)
!1127 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1126, file: !1127, line: 60, baseType: !603, size: 16)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1126, file: !1127, line: 61, baseType: !603, size: 16, offset: 16)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1126, file: !1127, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1126, file: !1127, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1126, file: !1127, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1126, file: !1127, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !963, file: !13, line: 465, baseType: !117, size: 64, offset: 6784)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !963, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !963, file: !13, line: 470, baseType: !94, size: 128, offset: 6912)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !963, file: !13, line: 471, baseType: !1139, size: 64, offset: 7040)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1141, line: 33, size: 96, elements: !1142)
!1141 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1142 = !{!1143, !1144, !1145, !1146}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1140, file: !1141, line: 37, baseType: !46, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1140, file: !1141, line: 43, baseType: !46, size: 32, offset: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1140, file: !1141, line: 45, baseType: !286, size: 16, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !1141, line: 47, baseType: !286, size: 16, offset: 80)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !963, file: !13, line: 476, baseType: !1148, size: 64, offset: 7104)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1150)
!1150 = !{!1151, !1167, !1168, !1169}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1149, file: !13, line: 379, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1154, line: 204, baseType: !1155)
!1154 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1154, line: 197, size: 192, elements: !1156)
!1156 = !{!1157, !1159, !1160, !1161, !1163, !1165}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1155, file: !1154, line: 198, baseType: !1158, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1154, line: 21, baseType: !85)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1155, file: !1154, line: 199, baseType: !278, size: 8, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1155, file: !1154, line: 200, baseType: !278, size: 8, offset: 40)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1155, file: !1154, line: 201, baseType: !1162, size: 16, offset: 48)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1154, line: 17, baseType: !285)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1155, file: !1154, line: 202, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1154, line: 16, baseType: !109)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1155, file: !1154, line: 203, baseType: !1166, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1154, line: 22, baseType: !109)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1149, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1149, file: !13, line: 381, baseType: !316, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1149, file: !13, line: 382, baseType: !316, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !963, file: !13, line: 477, baseType: !1149, size: 256, offset: 7168)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !963, file: !13, line: 480, baseType: !1172, size: 64, offset: 7424)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !963, file: !13, line: 483, baseType: !1175, size: 64, offset: 7488)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !963, file: !13, line: 488, baseType: !316, size: 64, offset: 7552)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !963, file: !13, line: 492, baseType: !84, size: 64, offset: 7616)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !963, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !963, file: !13, line: 495, baseType: !84, size: 64, offset: 7744)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !963, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !963, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !963, file: !13, line: 500, baseType: !1184, size: 64, offset: 7872)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1186, line: 45, baseType: !1187)
!1186 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !963, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !963, file: !13, line: 504, baseType: !1190, size: 64, offset: 8000)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1193, line: 96, size: 192, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1194 = !{!1195, !1196, !1257, !1260}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1192, file: !1193, line: 97, baseType: !7, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1192, file: !1193, line: 98, baseType: !1197, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1193, line: 24, size: 3072, elements: !1199)
!1199 = !{!1200, !1202, !1203, !1204, !1205, !1219, !1220, !1221, !1222, !1241, !1242, !1243, !1254, !1255, !1256}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1198, file: !1193, line: 26, baseType: !1201, size: 128)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 128, elements: !1113)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1198, file: !1193, line: 27, baseType: !1201, size: 128, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1198, file: !1193, line: 28, baseType: !46, size: 32, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1198, file: !1193, line: 31, baseType: !248, size: 32, align: 512, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1198, file: !1193, line: 32, baseType: !1206, size: 960, offset: 576)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1207, line: 206, size: 960, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1208 = !{!1209, !1210, !1213, !1215, !1216, !1218}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1206, file: !1207, line: 207, baseType: !422, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1206, file: !1207, line: 208, baseType: !1211, size: 256, offset: 64)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1212, size: 256, elements: !139)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1206, file: !1207, line: 209, baseType: !1214, size: 256, offset: 320)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !139)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1206, file: !1207, line: 213, baseType: !350, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1206, file: !1207, line: 215, baseType: !1217, size: 256, offset: 640)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 256, elements: !139)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1206, file: !1207, line: 216, baseType: !276, size: 8, offset: 896)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1198, file: !1193, line: 33, baseType: !117, size: 64, offset: 1536)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1198, file: !1193, line: 34, baseType: !117, size: 64, offset: 1600)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1198, file: !1193, line: 35, baseType: !665, size: 8, offset: 1664)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1198, file: !1193, line: 36, baseType: !1223, size: 320, offset: 1728)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1224, line: 11, size: 320, elements: !1225)
!1224 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1225 = !{!1226, !1233, !1234, !1239}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1223, file: !1224, line: 16, baseType: !1227, size: 128)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !95, line: 198, size: 128, elements: !1228)
!1228 = !{!1229, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1227, file: !95, line: 199, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1227, file: !95, line: 199, baseType: !1232, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1223, file: !1224, line: 17, baseType: !117, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1223, file: !1224, line: 18, baseType: !1235, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1223, file: !1224, line: 19, baseType: !1240, size: 32, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !108, line: 21, baseType: !85)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1198, file: !1193, line: 37, baseType: !630, size: 256, offset: 2048)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1198, file: !1193, line: 38, baseType: !419, size: 128, align: 64, offset: 2304)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1198, file: !1193, line: 39, baseType: !1244, size: 64, offset: 2432)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1193, line: 49, size: 768, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1245, file: !1193, line: 50, baseType: !248, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1245, file: !1193, line: 51, baseType: !1214, size: 256, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1245, file: !1193, line: 53, baseType: !1214, size: 256, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1245, file: !1193, line: 54, baseType: !117, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1245, file: !1193, line: 55, baseType: !1244, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1245, file: !1193, line: 56, baseType: !46, size: 32, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1245, file: !1193, line: 57, baseType: !46, size: 32, offset: 736)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1198, file: !1193, line: 40, baseType: !117, size: 64, offset: 2496)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1198, file: !1193, line: 42, baseType: !46, size: 32, offset: 2560)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1198, file: !1193, line: 43, baseType: !1191, size: 64, offset: 2624)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1192, file: !1193, line: 99, baseType: !1258, offset: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1259, line: 211, elements: !449)
!1259 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1192, file: !1193, line: 100, baseType: !1261, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1193, line: 63, size: 3008, elements: !1263)
!1263 = !{!1264, !1265, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1295}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1262, file: !1193, line: 64, baseType: !1244, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1262, file: !1193, line: 65, baseType: !1266, size: 192, offset: 64)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1244, size: 192, elements: !134)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1262, file: !1193, line: 67, baseType: !46, size: 32, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1262, file: !1193, line: 68, baseType: !565, size: 256, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1262, file: !1193, line: 69, baseType: !248, size: 32, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1262, file: !1193, line: 70, baseType: !565, size: 256, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1262, file: !1193, line: 71, baseType: !117, size: 64, offset: 896)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1262, file: !1193, line: 72, baseType: !117, size: 64, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1262, file: !1193, line: 73, baseType: !117, size: 64, offset: 1024)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1262, file: !1193, line: 74, baseType: !117, size: 64, offset: 1088)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1262, file: !1193, line: 75, baseType: !117, size: 64, offset: 1152)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1262, file: !1193, line: 76, baseType: !117, size: 64, offset: 1216)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1262, file: !1193, line: 77, baseType: !117, size: 64, offset: 1280)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1262, file: !1193, line: 78, baseType: !117, size: 64, offset: 1344)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1262, file: !1193, line: 79, baseType: !665, size: 8, offset: 1408)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1262, file: !1193, line: 80, baseType: !117, size: 64, offset: 1472)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1262, file: !1193, line: 81, baseType: !565, size: 256, offset: 1536)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1262, file: !1193, line: 82, baseType: !982, size: 256, offset: 1792)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1262, file: !1193, line: 84, baseType: !268, size: 32, offset: 2048)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1262, file: !1193, line: 87, baseType: !117, size: 64, offset: 2112)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1262, file: !1193, line: 88, baseType: !117, size: 64, offset: 2176)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1262, file: !1193, line: 89, baseType: !1287, size: 704, offset: 2240)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !631, line: 111, size: 704, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1294}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1287, file: !631, line: 112, baseType: !630, size: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1287, file: !631, line: 113, baseType: !1223, size: 320, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1287, file: !631, line: 116, baseType: !1292, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !631, line: 18, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1287, file: !631, line: 117, baseType: !46, size: 32, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1262, file: !1193, line: 90, baseType: !1191, size: 64, offset: 2944)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !963, file: !13, line: 515, baseType: !1297, size: 64, offset: 8064)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1299, line: 117, size: 128, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1300 = !{!1301, !1302, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1298, file: !1299, line: 118, baseType: !546, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1298, file: !1299, line: 119, baseType: !546, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1298, file: !1299, line: 120, baseType: !350, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !963, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !963, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !963, file: !13, line: 520, baseType: !1307, size: 64, offset: 8192)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !963, file: !13, line: 523, baseType: !1309, size: 64, offset: 8256)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !963, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !963, file: !13, line: 525, baseType: !1314, size: 64, offset: 8384)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !963, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !963, file: !13, line: 533, baseType: !84, size: 64, offset: 8512)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !963, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !963, file: !13, line: 535, baseType: !129, size: 64, offset: 8640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !963, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !963, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !963, file: !13, line: 540, baseType: !1324, size: 64, offset: 8768)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1326, line: 32, size: 64, elements: !1327)
!1326 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1325, file: !1326, line: 33, baseType: !546, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1325, file: !1326, line: 34, baseType: !546, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !963, file: !13, line: 563, baseType: !94, size: 128, offset: 8832)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !963, file: !13, line: 565, baseType: !94, size: 128, offset: 8960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !963, file: !13, line: 568, baseType: !1333, size: 64, offset: 9088)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !963, file: !13, line: 570, baseType: !268, size: 32, offset: 9152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !957, file: !20, line: 101, baseType: !113, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !957, file: !20, line: 103, baseType: !665, size: 8, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !957, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !957, file: !20, line: 106, baseType: !1341, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1343)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1344, line: 282, size: 1600, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1345 = !{!1346, !1350, !1351, !1355}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1343, file: !1344, line: 283, baseType: !1347, size: 256)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !1348)
!1348 = !{!1349}
!1349 = !DISubrange(count: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1343, file: !1344, line: 284, baseType: !1347, size: 256, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1343, file: !1344, line: 285, baseType: !1352, size: 1024, offset: 512)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 1024, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1343, file: !1344, line: 286, baseType: !586, size: 64, offset: 1536)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !957, file: !20, line: 107, baseType: !1357, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1344, line: 217, size: 256, elements: !1360)
!1360 = !{!1361, !1365, !1367, !1368}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1359, file: !1344, line: 218, baseType: !1362, size: 128)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 128, elements: !1363)
!1363 = !{!1364}
!1364 = !DISubrange(count: 16)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1359, file: !1344, line: 219, baseType: !1366, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1344, line: 15, baseType: !117)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1359, file: !1344, line: 220, baseType: !85, size: 32, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1359, file: !1344, line: 221, baseType: !85, size: 32, offset: 224)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !957, file: !20, line: 109, baseType: !916, size: 64, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !957, file: !20, line: 110, baseType: !907, size: 64, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !957, file: !20, line: 111, baseType: !916, size: 64, offset: 576)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !957, file: !20, line: 112, baseType: !907, size: 64, offset: 640)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !957, file: !20, line: 113, baseType: !1374, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!46, !883, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1378, file: !38, line: 59, baseType: !46, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !957, file: !20, line: 114, baseType: !916, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !957, file: !20, line: 115, baseType: !365, size: 64, offset: 832)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !957, file: !20, line: 116, baseType: !365, size: 64, offset: 896)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !957, file: !20, line: 118, baseType: !911, size: 64, offset: 960)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !957, file: !20, line: 119, baseType: !907, size: 64, offset: 1024)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !957, file: !20, line: 121, baseType: !1387, size: 64, offset: 1088)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !944, file: !945, line: 88, baseType: !896, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !944, file: !945, line: 89, baseType: !916, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !944, file: !945, line: 90, baseType: !907, size: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !944, file: !945, line: 91, baseType: !907, size: 64, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !944, file: !945, line: 92, baseType: !907, size: 64, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !944, file: !945, line: 94, baseType: !916, size: 64, offset: 704)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !944, file: !945, line: 95, baseType: !916, size: 64, offset: 768)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !944, file: !945, line: 97, baseType: !1374, size: 64, offset: 832)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !944, file: !945, line: 98, baseType: !916, size: 64, offset: 896)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !944, file: !945, line: 100, baseType: !916, size: 64, offset: 960)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !944, file: !945, line: 102, baseType: !916, size: 64, offset: 1024)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !944, file: !945, line: 103, baseType: !907, size: 64, offset: 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !944, file: !945, line: 105, baseType: !911, size: 64, offset: 1152)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !944, file: !945, line: 107, baseType: !1403, size: 64, offset: 1216)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1405)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !945, line: 107, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !944, file: !945, line: 109, baseType: !665, size: 8, offset: 1280)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !232, file: !26, line: 715, baseType: !956, size: 64, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !232, file: !26, line: 717, baseType: !84, size: 64, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !232, file: !26, line: 719, baseType: !84, size: 64, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !232, file: !26, line: 721, baseType: !565, size: 256, offset: 1024)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !232, file: !26, line: 725, baseType: !1412, size: 448, offset: 1280)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1412, file: !26, line: 518, baseType: !94, size: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1412, file: !26, line: 519, baseType: !94, size: 128, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1412, file: !26, line: 520, baseType: !94, size: 128, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1412, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !232, file: !26, line: 726, baseType: !1419, size: 2496, offset: 1728)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1465, !1466, !1467, !1468, !1469, !1470, !1539, !1540, !1541, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1579, !1583}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1419, file: !38, line: 664, baseType: !1377, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1419, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1419, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1419, file: !38, line: 667, baseType: !665, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1419, file: !38, line: 668, baseType: !665, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1419, file: !38, line: 669, baseType: !665, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1419, file: !38, line: 670, baseType: !665, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1419, file: !38, line: 671, baseType: !665, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1419, file: !38, line: 672, baseType: !665, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1419, file: !38, line: 673, baseType: !665, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1419, file: !38, line: 674, baseType: !665, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1419, file: !38, line: 675, baseType: !1240, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1419, file: !38, line: 676, baseType: !248, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1419, file: !38, line: 678, baseType: !94, size: 128, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1419, file: !38, line: 679, baseType: !982, size: 256, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1419, file: !38, line: 680, baseType: !1437, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1439, line: 43, size: 1536, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1448, !1449, !1450, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1438, file: !1439, line: 44, baseType: !113, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1438, file: !1439, line: 45, baseType: !46, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1438, file: !1439, line: 46, baseType: !94, size: 128, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !1439, line: 47, baseType: !248, size: 32, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1438, file: !1439, line: 48, baseType: !1446, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1438, file: !1439, line: 49, baseType: !1223, size: 320, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1438, file: !1439, line: 50, baseType: !117, size: 64, offset: 704)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1438, file: !1439, line: 51, baseType: !1451, size: 64, offset: 768)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1452, line: 29, baseType: !485)
!1452 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1438, file: !1439, line: 52, baseType: !1451, size: 64, offset: 832)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1438, file: !1439, line: 53, baseType: !1451, size: 64, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1438, file: !1439, line: 54, baseType: !1451, size: 64, offset: 960)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1438, file: !1439, line: 55, baseType: !1451, size: 64, offset: 1024)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1438, file: !1439, line: 56, baseType: !117, size: 64, offset: 1088)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1438, file: !1439, line: 57, baseType: !117, size: 64, offset: 1152)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1438, file: !1439, line: 58, baseType: !117, size: 64, offset: 1216)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1438, file: !1439, line: 59, baseType: !117, size: 64, offset: 1280)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1438, file: !1439, line: 60, baseType: !117, size: 64, offset: 1344)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1438, file: !1439, line: 61, baseType: !883, size: 64, offset: 1408)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1438, file: !1439, line: 62, baseType: !665, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1438, file: !1439, line: 63, baseType: !665, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1419, file: !38, line: 681, baseType: !665, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1419, file: !38, line: 682, baseType: !665, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1419, file: !38, line: 683, baseType: !665, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1419, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1419, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1419, file: !38, line: 690, baseType: !1471, size: 512, offset: 640)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1472)
!1472 = !{!1473, !1479, !1480, !1485, !1535, !1536, !1537, !1538}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1471, file: !33, line: 119, baseType: !1474, size: 256)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1475, line: 9, size: 256, elements: !1476)
!1475 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1474, file: !1475, line: 10, baseType: !671, size: 192, align: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1474, file: !1475, line: 11, baseType: !1451, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1471, file: !33, line: 120, baseType: !1451, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1471, file: !33, line: 121, baseType: !1481, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!32, !1484}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1471, file: !33, line: 122, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1488)
!1488 = !{!1489, !1512, !1513, !1516, !1521, !1522, !1530, !1534}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1487, file: !33, line: 160, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1491, file: !33, line: 216, baseType: !501, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1491, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1491, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1491, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1491, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1491, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1491, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1491, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1491, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1491, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1491, file: !33, line: 227, baseType: !286, size: 16, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1491, file: !33, line: 228, baseType: !286, size: 16, offset: 208)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1491, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1491, file: !33, line: 235, baseType: !1451, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1491, file: !33, line: 236, baseType: !1484, size: 64, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1491, file: !33, line: 237, baseType: !1451, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1491, file: !33, line: 238, baseType: !1484, size: 64, offset: 448)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1491, file: !33, line: 239, baseType: !1511, size: 4096, align: 512, offset: 512)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1487, size: 4096, align: 512, elements: !150)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1487, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1487, file: !33, line: 162, baseType: !1514, size: 32, offset: 96)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !95, line: 32, baseType: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !348, line: 96, baseType: !46)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1487, file: !33, line: 163, baseType: !1517, size: 32, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !516, line: 274, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !516, line: 274, size: 32, elements: !1519)
!1519 = !{!1520}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1518, file: !516, line: 274, baseType: !515, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1487, file: !33, line: 164, baseType: !1484, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1487, file: !33, line: 165, baseType: !1523, size: 128, offset: 256)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1475, line: 14, size: 128, elements: !1524)
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1523, file: !1475, line: 15, baseType: !1526, size: 128)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !672, line: 26, size: 128, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1526, file: !672, line: 27, baseType: !773, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1526, file: !672, line: 28, baseType: !676, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1487, file: !33, line: 166, baseType: !1531, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1451}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1487, file: !33, line: 167, baseType: !1451, size: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1471, file: !33, line: 123, baseType: !276, size: 8, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1471, file: !33, line: 124, baseType: !276, size: 8, offset: 456)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1471, file: !33, line: 125, baseType: !276, size: 8, offset: 464)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1471, file: !33, line: 126, baseType: !276, size: 8, offset: 472)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1419, file: !38, line: 691, baseType: !107, size: 64, offset: 1152)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1419, file: !38, line: 692, baseType: !630, size: 256, offset: 1216)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1419, file: !38, line: 693, baseType: !1542, size: 192, offset: 1472)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1543, line: 41, baseType: !1544)
!1543 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1543, line: 37, size: 192, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1544, file: !1543, line: 38, baseType: !248, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1544, file: !1543, line: 39, baseType: !94, size: 128, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1419, file: !38, line: 694, baseType: !1446, size: 64, offset: 1664)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1419, file: !38, line: 695, baseType: !268, size: 32, offset: 1728)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1419, file: !38, line: 696, baseType: !268, size: 32, offset: 1760)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1419, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1419, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1419, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1419, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1419, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1419, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1419, file: !38, line: 703, baseType: !665, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1419, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1419, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1419, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1419, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1419, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1419, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1419, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1419, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1419, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1419, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1419, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1419, file: !38, line: 715, baseType: !107, size: 64, offset: 2048)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1419, file: !38, line: 716, baseType: !107, size: 64, offset: 2112)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1419, file: !38, line: 717, baseType: !107, size: 64, offset: 2176)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1419, file: !38, line: 718, baseType: !107, size: 64, offset: 2240)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1419, file: !38, line: 720, baseType: !1574, size: 64, offset: 2304)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1575, file: !38, line: 633, baseType: !248, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1575, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1419, file: !38, line: 721, baseType: !1580, size: 64, offset: 2368)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !883, !546}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1419, file: !38, line: 722, baseType: !1584, size: 64, offset: 2432)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !232, file: !26, line: 727, baseType: !1587, size: 64, offset: 4224)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1596, !1597, !1598}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1588, file: !38, line: 743, baseType: !913, size: 1472)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1588, file: !38, line: 744, baseType: !916, size: 64, offset: 1472)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1588, file: !38, line: 745, baseType: !1593, size: 64, offset: 1536)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !883, !665}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1588, file: !38, line: 746, baseType: !916, size: 64, offset: 1600)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1588, file: !38, line: 747, baseType: !907, size: 64, offset: 1664)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1588, file: !38, line: 748, baseType: !907, size: 64, offset: 1728)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !232, file: !26, line: 736, baseType: !1600, size: 128, offset: 4288)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1601)
!1601 = !{!1602, !1606}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1600, file: !26, line: 531, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1605, line: 13, flags: DIFlagFwdDecl)
!1605 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1600, file: !26, line: 532, baseType: !1607, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !232, file: !26, line: 738, baseType: !1610, size: 64, offset: 4416)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !232, file: !26, line: 740, baseType: !1614, size: 64, offset: 4480)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !232, file: !26, line: 741, baseType: !107, size: 64, offset: 4544)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !232, file: !26, line: 746, baseType: !107, size: 64, offset: 4608)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !232, file: !26, line: 747, baseType: !1618, size: 64, offset: 4672)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !232, file: !26, line: 749, baseType: !1622, size: 64, offset: 4736)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1624)
!1624 = !{!1625, !1626, !1627}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1623, file: !26, line: 433, baseType: !7, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1623, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1623, file: !26, line: 435, baseType: !117, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !232, file: !26, line: 751, baseType: !94, size: 128, offset: 4800)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !232, file: !26, line: 762, baseType: !1630, size: 64, offset: 4928)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !232, file: !26, line: 770, baseType: !1633, offset: 4992)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1634, line: 5, elements: !449)
!1634 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !232, file: !26, line: 772, baseType: !1636, size: 64, offset: 4992)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1638, line: 18, flags: DIFlagFwdDecl)
!1638 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !232, file: !26, line: 773, baseType: !1640, size: 64, offset: 5056)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !945, line: 22, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !232, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !232, file: !26, line: 778, baseType: !1644, size: 32, offset: 5152)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !95, line: 21, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !95, line: 18, baseType: !1240)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !232, file: !26, line: 779, baseType: !1240, size: 32, offset: 5184)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !232, file: !26, line: 781, baseType: !248, size: 32, offset: 5216)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !232, file: !26, line: 782, baseType: !94, size: 128, offset: 5248)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !232, file: !26, line: 784, baseType: !1650, size: 64, offset: 5376)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1653, line: 52, size: 768, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1663, !1667, !1668, !1669, !1670, !1674, !1678}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1652, file: !1653, line: 53, baseType: !113, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1652, file: !1653, line: 55, baseType: !365, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1652, file: !1653, line: 56, baseType: !365, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1652, file: !1653, line: 58, baseType: !896, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1652, file: !1653, line: 59, baseType: !1660, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!316, !899, !905}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1652, file: !1653, line: 61, baseType: !1664, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{null, !1650}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1652, file: !1653, line: 62, baseType: !907, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1652, file: !1653, line: 64, baseType: !916, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1652, file: !1653, line: 66, baseType: !704, size: 64, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1652, file: !1653, line: 67, baseType: !1671, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!586, !899}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1652, file: !1653, line: 69, baseType: !1675, size: 64, offset: 640)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !899, !739, !746}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1652, file: !1653, line: 71, baseType: !911, size: 64, offset: 704)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !232, file: !26, line: 785, baseType: !365, size: 64, offset: 5440)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !232, file: !26, line: 787, baseType: !907, size: 64, offset: 5504)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !232, file: !26, line: 788, baseType: !1682, size: 64, offset: 5568)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !232, file: !26, line: 789, baseType: !1685, size: 64, offset: 5632)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !232, file: !26, line: 791, baseType: !1688, size: 64, offset: 5696)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1689, file: !26, line: 598, baseType: !53, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1689, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1689, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1689, file: !26, line: 601, baseType: !665, size: 8, offset: 96)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1689, file: !26, line: 602, baseType: !665, size: 8, offset: 104)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !232, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !232, file: !26, line: 795, baseType: !665, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !232, file: !26, line: 796, baseType: !665, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !232, file: !26, line: 797, baseType: !665, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !232, file: !26, line: 798, baseType: !665, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !232, file: !26, line: 799, baseType: !665, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !228, file: !229, line: 245, baseType: !107, size: 64, offset: 5824)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !228, file: !229, line: 246, baseType: !7, size: 32, offset: 5888)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !228, file: !229, line: 247, baseType: !46, size: 32, offset: 5920)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !228, file: !229, line: 249, baseType: !94, size: 128, offset: 5952)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !228, file: !229, line: 250, baseType: !94, size: 128, offset: 6080)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !228, file: !229, line: 251, baseType: !94, size: 128, offset: 6208)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !228, file: !229, line: 252, baseType: !94, size: 128, offset: 6336)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !228, file: !229, line: 254, baseType: !1710, size: 64, offset: 6464)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !229, line: 411, size: 6720, elements: !1712)
!1712 = !{!1713, !1714, !1715, !1717, !1718, !1719, !1723, !1727, !1728, !1729, !1730, !1731}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1711, file: !229, line: 412, baseType: !94, size: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1711, file: !229, line: 413, baseType: !316, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1711, file: !229, line: 416, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1711, file: !229, line: 417, baseType: !1716, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1711, file: !229, line: 418, baseType: !1716, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1711, file: !229, line: 421, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!665, !227}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1711, file: !229, line: 422, baseType: !1724, size: 64, offset: 448)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!46, !227, !1377}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1711, file: !229, line: 423, baseType: !1716, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1711, file: !229, line: 426, baseType: !278, size: 8, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1711, file: !229, line: 427, baseType: !232, size: 5824, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !1711, file: !229, line: 428, baseType: !94, size: 128, offset: 6464)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1711, file: !229, line: 429, baseType: !94, size: 128, offset: 6592)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !228, file: !229, line: 255, baseType: !1733, size: 64, offset: 6528)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !229, line: 202, size: 6976, elements: !1735)
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742, !1748, !1752, !1753, !1754, !1755, !1756}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1734, file: !229, line: 203, baseType: !232, size: 5824)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1734, file: !229, line: 204, baseType: !278, size: 8, offset: 5824)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1734, file: !229, line: 205, baseType: !94, size: 128, offset: 5888)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1734, file: !229, line: 206, baseType: !94, size: 128, offset: 6016)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1734, file: !229, line: 207, baseType: !94, size: 128, offset: 6144)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1734, file: !229, line: 209, baseType: !1710, size: 64, offset: 6272)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1734, file: !229, line: 210, baseType: !1743, size: 64, offset: 6336)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !229, line: 369, size: 128, elements: !1745)
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1744, file: !229, line: 370, baseType: !149, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1744, file: !229, line: 371, baseType: !1743, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1734, file: !229, line: 212, baseType: !1749, size: 400, offset: 6400)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 400, elements: !1750)
!1750 = !{!1751}
!1751 = !DISubrange(count: 50)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !1734, file: !229, line: 213, baseType: !278, size: 8, offset: 6800)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !1734, file: !229, line: 214, baseType: !278, size: 8, offset: 6808)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1734, file: !229, line: 215, baseType: !7, size: 32, offset: 6816)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1734, file: !229, line: 216, baseType: !278, size: 8, offset: 6848)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1734, file: !229, line: 217, baseType: !1757, size: 64, offset: 6912)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !229, line: 217, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !228, file: !229, line: 256, baseType: !1760, size: 64, offset: 6592)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !229, line: 374, size: 1664, elements: !1762)
!1762 = !{!1763, !1764, !1772, !1773, !1777, !1781, !1782, !1783, !1784}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1761, file: !229, line: 375, baseType: !113, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1761, file: !229, line: 376, baseType: !1765, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1344, line: 240, size: 128, elements: !1768)
!1768 = !{!1769, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1767, file: !1344, line: 241, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 64, elements: !150)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1767, file: !1344, line: 242, baseType: !1366, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !229, line: 377, baseType: !7, size: 32, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1761, file: !229, line: 378, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!46, !227, !1765}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1761, file: !229, line: 379, baseType: !1778, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !227}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1761, file: !229, line: 380, baseType: !1778, size: 64, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1761, file: !229, line: 381, baseType: !1724, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1761, file: !229, line: 382, baseType: !1716, size: 64, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1761, file: !229, line: 383, baseType: !957, size: 1152, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !228, file: !229, line: 257, baseType: !1786, size: 64, offset: 6656)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !229, line: 226, size: 256, elements: !1788)
!1788 = !{!1789, !1790, !1826, !1827}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !1787, file: !229, line: 227, baseType: !1733, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1787, file: !229, line: 228, baseType: !1791, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !229, line: 388, size: 2240, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1808, !1809, !1813, !1817, !1821, !1825}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1792, file: !229, line: 389, baseType: !94, size: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1792, file: !229, line: 390, baseType: !316, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1792, file: !229, line: 391, baseType: !1797, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1799)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1344, line: 245, size: 640, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1799, file: !1344, line: 246, baseType: !1770, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1799, file: !1344, line: 247, baseType: !1366, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !1799, file: !1344, line: 250, baseType: !1804, size: 512, offset: 128)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 512, elements: !150)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !1344, line: 248, size: 64, elements: !1806)
!1806 = !{!1807}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1805, file: !1344, line: 249, baseType: !1770, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1792, file: !229, line: 392, baseType: !7, size: 32, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1792, file: !229, line: 393, baseType: !1810, size: 64, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!46, !1786, !1797}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1792, file: !229, line: 395, baseType: !1814, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1786}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1792, file: !229, line: 396, baseType: !1818, size: 64, offset: 448)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!46, !1786, !1377}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1792, file: !229, line: 397, baseType: !1822, size: 64, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!46, !1786}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1792, file: !229, line: 398, baseType: !1761, size: 1664, offset: 576)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1787, file: !229, line: 229, baseType: !84, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !1787, file: !229, line: 230, baseType: !1377, size: 32, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !228, file: !229, line: 259, baseType: !1743, size: 64, offset: 6720)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !228, file: !229, line: 261, baseType: !46, size: 32, offset: 6784)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !228, file: !229, line: 262, baseType: !46, size: 32, offset: 6816)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !228, file: !229, line: 263, baseType: !7, size: 32, offset: 6848)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !228, file: !229, line: 264, baseType: !94, size: 128, offset: 6912)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !228, file: !229, line: 265, baseType: !94, size: 128, offset: 7040)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !229, line: 267, baseType: !1749, size: 400, offset: 7168)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !229, line: 268, baseType: !46, size: 32, offset: 7584)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !228, file: !229, line: 269, baseType: !1757, size: 64, offset: 7616)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !228, file: !229, line: 270, baseType: !84, size: 64, offset: 7680)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "dev", arg: 1, scope: !224, file: !3, line: 20, type: !227)
!1840 = !DILocation(line: 20, column: 35, scope: !224)
!1841 = !DILocation(line: 26, column: 22, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !224, file: !3, line: 26, column: 6)
!1843 = !DILocation(line: 26, column: 7, scope: !1842)
!1844 = !DILocation(line: 26, column: 30, scope: !1842)
!1845 = !DILocation(line: 26, column: 46, scope: !1842)
!1846 = !DILocation(line: 26, column: 33, scope: !1842)
!1847 = !DILocation(line: 26, column: 54, scope: !1842)
!1848 = !DILocation(line: 26, column: 59, scope: !1842)
!1849 = !DILocation(line: 27, column: 21, scope: !1842)
!1850 = !DILocation(line: 27, column: 7, scope: !1842)
!1851 = !DILocation(line: 27, column: 29, scope: !1842)
!1852 = !DILocation(line: 27, column: 44, scope: !1842)
!1853 = !DILocation(line: 27, column: 32, scope: !1842)
!1854 = !DILocation(line: 27, column: 52, scope: !1842)
!1855 = !DILocation(line: 27, column: 57, scope: !1842)
!1856 = !DILocation(line: 28, column: 14, scope: !1842)
!1857 = !DILocation(line: 28, column: 6, scope: !1842)
!1858 = !DILocation(line: 28, column: 22, scope: !1842)
!1859 = !DILocation(line: 28, column: 28, scope: !1842)
!1860 = !DILocation(line: 28, column: 39, scope: !1842)
!1861 = !DILocation(line: 28, column: 31, scope: !1842)
!1862 = !DILocation(line: 28, column: 47, scope: !1842)
!1863 = !DILocation(line: 26, column: 6, scope: !224)
!1864 = !DILocation(line: 29, column: 3, scope: !1842)
!1865 = !DILocation(line: 31, column: 3, scope: !1842)
!1866 = !DILocation(line: 32, column: 1, scope: !224)
!1867 = distinct !DISubprogram(name: "pnp_port_start", scope: !229, file: !229, line: 59, type: !1868, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!105, !227, !7}
!1870 = !{!1871, !1872, !1873}
!1871 = !DILocalVariable(name: "dev", arg: 1, scope: !1867, file: !229, line: 59, type: !227)
!1872 = !DILocalVariable(name: "bar", arg: 2, scope: !1867, file: !229, line: 60, type: !7)
!1873 = !DILocalVariable(name: "res", scope: !1867, file: !229, line: 62, type: !120)
!1874 = !DILocation(line: 59, column: 62, scope: !1867)
!1875 = !DILocation(line: 60, column: 24, scope: !1867)
!1876 = !DILocation(line: 62, column: 2, scope: !1867)
!1877 = !DILocation(line: 62, column: 19, scope: !1867)
!1878 = !DILocation(line: 62, column: 42, scope: !1867)
!1879 = !DILocation(line: 62, column: 62, scope: !1867)
!1880 = !DILocation(line: 62, column: 25, scope: !1867)
!1881 = !DILocation(line: 64, column: 25, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1867, file: !229, line: 64, column: 6)
!1883 = !DILocation(line: 64, column: 6, scope: !1882)
!1884 = !DILocation(line: 64, column: 6, scope: !1867)
!1885 = !DILocation(line: 65, column: 10, scope: !1882)
!1886 = !DILocation(line: 65, column: 15, scope: !1882)
!1887 = !DILocation(line: 65, column: 3, scope: !1882)
!1888 = !DILocation(line: 66, column: 2, scope: !1867)
!1889 = !DILocation(line: 67, column: 1, scope: !1867)
!1890 = distinct !DISubprogram(name: "pnp_port_len", scope: !229, file: !229, line: 94, type: !1868, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1891)
!1891 = !{!1892, !1893, !1894}
!1892 = !DILocalVariable(name: "dev", arg: 1, scope: !1890, file: !229, line: 94, type: !227)
!1893 = !DILocalVariable(name: "bar", arg: 2, scope: !1890, file: !229, line: 95, type: !7)
!1894 = !DILocalVariable(name: "res", scope: !1890, file: !229, line: 97, type: !120)
!1895 = !DILocation(line: 94, column: 60, scope: !1890)
!1896 = !DILocation(line: 95, column: 22, scope: !1890)
!1897 = !DILocation(line: 97, column: 2, scope: !1890)
!1898 = !DILocation(line: 97, column: 19, scope: !1890)
!1899 = !DILocation(line: 97, column: 42, scope: !1890)
!1900 = !DILocation(line: 97, column: 62, scope: !1890)
!1901 = !DILocation(line: 97, column: 25, scope: !1890)
!1902 = !DILocation(line: 99, column: 25, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1890, file: !229, line: 99, column: 6)
!1904 = !DILocation(line: 99, column: 6, scope: !1903)
!1905 = !DILocation(line: 99, column: 6, scope: !1890)
!1906 = !DILocation(line: 100, column: 27, scope: !1903)
!1907 = !DILocation(line: 100, column: 10, scope: !1903)
!1908 = !DILocation(line: 100, column: 3, scope: !1903)
!1909 = !DILocation(line: 101, column: 2, scope: !1890)
!1910 = !DILocation(line: 102, column: 1, scope: !1890)
!1911 = distinct !DISubprogram(name: "pnp_mem_start", scope: !229, file: !229, line: 105, type: !1868, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1912)
!1912 = !{!1913, !1914, !1915}
!1913 = !DILocalVariable(name: "dev", arg: 1, scope: !1911, file: !229, line: 105, type: !227)
!1914 = !DILocalVariable(name: "bar", arg: 2, scope: !1911, file: !229, line: 106, type: !7)
!1915 = !DILocalVariable(name: "res", scope: !1911, file: !229, line: 108, type: !120)
!1916 = !DILocation(line: 105, column: 61, scope: !1911)
!1917 = !DILocation(line: 106, column: 23, scope: !1911)
!1918 = !DILocation(line: 108, column: 2, scope: !1911)
!1919 = !DILocation(line: 108, column: 19, scope: !1911)
!1920 = !DILocation(line: 108, column: 42, scope: !1911)
!1921 = !DILocation(line: 108, column: 63, scope: !1911)
!1922 = !DILocation(line: 108, column: 25, scope: !1911)
!1923 = !DILocation(line: 110, column: 25, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1911, file: !229, line: 110, column: 6)
!1925 = !DILocation(line: 110, column: 6, scope: !1924)
!1926 = !DILocation(line: 110, column: 6, scope: !1911)
!1927 = !DILocation(line: 111, column: 10, scope: !1924)
!1928 = !DILocation(line: 111, column: 15, scope: !1924)
!1929 = !DILocation(line: 111, column: 3, scope: !1924)
!1930 = !DILocation(line: 112, column: 2, scope: !1911)
!1931 = !DILocation(line: 113, column: 1, scope: !1911)
!1932 = distinct !DISubprogram(name: "pnp_mem_len", scope: !229, file: !229, line: 139, type: !1868, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1933)
!1933 = !{!1934, !1935, !1936}
!1934 = !DILocalVariable(name: "dev", arg: 1, scope: !1932, file: !229, line: 139, type: !227)
!1935 = !DILocalVariable(name: "bar", arg: 2, scope: !1932, file: !229, line: 140, type: !7)
!1936 = !DILocalVariable(name: "res", scope: !1932, file: !229, line: 142, type: !120)
!1937 = !DILocation(line: 139, column: 59, scope: !1932)
!1938 = !DILocation(line: 140, column: 21, scope: !1932)
!1939 = !DILocation(line: 142, column: 2, scope: !1932)
!1940 = !DILocation(line: 142, column: 19, scope: !1932)
!1941 = !DILocation(line: 142, column: 42, scope: !1932)
!1942 = !DILocation(line: 142, column: 63, scope: !1932)
!1943 = !DILocation(line: 142, column: 25, scope: !1932)
!1944 = !DILocation(line: 144, column: 25, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1932, file: !229, line: 144, column: 6)
!1946 = !DILocation(line: 144, column: 6, scope: !1945)
!1947 = !DILocation(line: 144, column: 6, scope: !1932)
!1948 = !DILocation(line: 145, column: 27, scope: !1945)
!1949 = !DILocation(line: 145, column: 10, scope: !1945)
!1950 = !DILocation(line: 145, column: 3, scope: !1945)
!1951 = !DILocation(line: 146, column: 2, scope: !1932)
!1952 = !DILocation(line: 147, column: 1, scope: !1932)
!1953 = distinct !DISubprogram(name: "pnp_irq", scope: !229, file: !229, line: 150, type: !1868, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1954)
!1954 = !{!1955, !1956, !1957}
!1955 = !DILocalVariable(name: "dev", arg: 1, scope: !1953, file: !229, line: 150, type: !227)
!1956 = !DILocalVariable(name: "bar", arg: 2, scope: !1953, file: !229, line: 150, type: !7)
!1957 = !DILocalVariable(name: "res", scope: !1953, file: !229, line: 152, type: !120)
!1958 = !DILocation(line: 150, column: 55, scope: !1953)
!1959 = !DILocation(line: 150, column: 73, scope: !1953)
!1960 = !DILocation(line: 152, column: 2, scope: !1953)
!1961 = !DILocation(line: 152, column: 19, scope: !1953)
!1962 = !DILocation(line: 152, column: 42, scope: !1953)
!1963 = !DILocation(line: 152, column: 63, scope: !1953)
!1964 = !DILocation(line: 152, column: 25, scope: !1953)
!1965 = !DILocation(line: 154, column: 25, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1953, file: !229, line: 154, column: 6)
!1967 = !DILocation(line: 154, column: 6, scope: !1966)
!1968 = !DILocation(line: 154, column: 6, scope: !1953)
!1969 = !DILocation(line: 155, column: 10, scope: !1966)
!1970 = !DILocation(line: 155, column: 15, scope: !1966)
!1971 = !DILocation(line: 155, column: 3, scope: !1966)
!1972 = !DILocation(line: 156, column: 2, scope: !1953)
!1973 = !DILocation(line: 157, column: 1, scope: !1953)
!1974 = distinct !DISubprogram(name: "pnp_dma", scope: !229, file: !229, line: 174, type: !1868, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1975 = !{!1976, !1977, !1978}
!1976 = !DILocalVariable(name: "dev", arg: 1, scope: !1974, file: !229, line: 174, type: !227)
!1977 = !DILocalVariable(name: "bar", arg: 2, scope: !1974, file: !229, line: 174, type: !7)
!1978 = !DILocalVariable(name: "res", scope: !1974, file: !229, line: 176, type: !120)
!1979 = !DILocation(line: 174, column: 55, scope: !1974)
!1980 = !DILocation(line: 174, column: 73, scope: !1974)
!1981 = !DILocation(line: 176, column: 2, scope: !1974)
!1982 = !DILocation(line: 176, column: 19, scope: !1974)
!1983 = !DILocation(line: 176, column: 42, scope: !1974)
!1984 = !DILocation(line: 176, column: 63, scope: !1974)
!1985 = !DILocation(line: 176, column: 25, scope: !1974)
!1986 = !DILocation(line: 178, column: 25, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1974, file: !229, line: 178, column: 6)
!1988 = !DILocation(line: 178, column: 6, scope: !1987)
!1989 = !DILocation(line: 178, column: 6, scope: !1974)
!1990 = !DILocation(line: 179, column: 10, scope: !1987)
!1991 = !DILocation(line: 179, column: 15, scope: !1987)
!1992 = !DILocation(line: 179, column: 3, scope: !1987)
!1993 = !DILocation(line: 180, column: 2, scope: !1974)
!1994 = !DILocation(line: 181, column: 1, scope: !1974)
!1995 = distinct !DISubprogram(name: "pnp_eisa_id_to_string", scope: !3, file: !3, line: 39, type: !1996, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !1240, !316}
!1998 = !{!1999, !2000}
!1999 = !DILocalVariable(name: "id", arg: 1, scope: !1995, file: !3, line: 39, type: !1240)
!2000 = !DILocalVariable(name: "str", arg: 2, scope: !1995, file: !3, line: 39, type: !316)
!2001 = !DILocation(line: 39, column: 32, scope: !1995)
!2002 = !DILocation(line: 39, column: 42, scope: !1995)
!2003 = !DILocation(line: 41, column: 7, scope: !1995)
!2004 = !DILocation(line: 41, column: 5, scope: !1995)
!2005 = !DILocation(line: 51, column: 19, scope: !1995)
!2006 = !DILocation(line: 51, column: 22, scope: !1995)
!2007 = !DILocation(line: 51, column: 29, scope: !1995)
!2008 = !DILocation(line: 51, column: 15, scope: !1995)
!2009 = !DILocation(line: 51, column: 37, scope: !1995)
!2010 = !DILocation(line: 51, column: 11, scope: !1995)
!2011 = !DILocation(line: 51, column: 2, scope: !1995)
!2012 = !DILocation(line: 51, column: 9, scope: !1995)
!2013 = !DILocation(line: 52, column: 19, scope: !1995)
!2014 = !DILocation(line: 52, column: 22, scope: !1995)
!2015 = !DILocation(line: 52, column: 29, scope: !1995)
!2016 = !DILocation(line: 52, column: 15, scope: !1995)
!2017 = !DILocation(line: 52, column: 37, scope: !1995)
!2018 = !DILocation(line: 52, column: 11, scope: !1995)
!2019 = !DILocation(line: 52, column: 2, scope: !1995)
!2020 = !DILocation(line: 52, column: 9, scope: !1995)
!2021 = !DILocation(line: 53, column: 19, scope: !1995)
!2022 = !DILocation(line: 53, column: 22, scope: !1995)
!2023 = !DILocation(line: 53, column: 29, scope: !1995)
!2024 = !DILocation(line: 53, column: 15, scope: !1995)
!2025 = !DILocation(line: 53, column: 37, scope: !1995)
!2026 = !DILocation(line: 53, column: 11, scope: !1995)
!2027 = !DILocation(line: 53, column: 2, scope: !1995)
!2028 = !DILocation(line: 53, column: 9, scope: !1995)
!2029 = !DILocation(line: 54, column: 11, scope: !1995)
!2030 = !DILocation(line: 54, column: 2, scope: !1995)
!2031 = !DILocation(line: 54, column: 9, scope: !1995)
!2032 = !DILocation(line: 55, column: 11, scope: !1995)
!2033 = !DILocation(line: 55, column: 2, scope: !1995)
!2034 = !DILocation(line: 55, column: 9, scope: !1995)
!2035 = !DILocation(line: 56, column: 11, scope: !1995)
!2036 = !DILocation(line: 56, column: 2, scope: !1995)
!2037 = !DILocation(line: 56, column: 9, scope: !1995)
!2038 = !DILocation(line: 57, column: 11, scope: !1995)
!2039 = !DILocation(line: 57, column: 2, scope: !1995)
!2040 = !DILocation(line: 57, column: 9, scope: !1995)
!2041 = !DILocation(line: 58, column: 2, scope: !1995)
!2042 = !DILocation(line: 58, column: 9, scope: !1995)
!2043 = !DILocation(line: 59, column: 1, scope: !1995)
!2044 = distinct !DISubprogram(name: "pnp_resource_type_name", scope: !3, file: !3, line: 61, type: !2045, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!316, !120}
!2047 = !{!2048}
!2048 = !DILocalVariable(name: "res", arg: 1, scope: !2044, file: !3, line: 61, type: !120)
!2049 = !DILocation(line: 61, column: 47, scope: !2044)
!2050 = !DILocation(line: 63, column: 28, scope: !2044)
!2051 = !DILocation(line: 63, column: 10, scope: !2044)
!2052 = !DILocation(line: 63, column: 2, scope: !2044)
!2053 = !DILocation(line: 65, column: 3, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 63, column: 34)
!2055 = !DILocation(line: 67, column: 3, scope: !2054)
!2056 = !DILocation(line: 69, column: 3, scope: !2054)
!2057 = !DILocation(line: 71, column: 3, scope: !2054)
!2058 = !DILocation(line: 73, column: 3, scope: !2054)
!2059 = !DILocation(line: 75, column: 2, scope: !2044)
!2060 = !DILocation(line: 76, column: 1, scope: !2044)
!2061 = !DISubprogram(name: "pnp_resource_type", scope: !91, file: !91, line: 153, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!117, !120}
!2064 = distinct !DISubprogram(name: "dbg_pnp_show_resources", scope: !3, file: !3, line: 78, type: !2065, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !227, !316}
!2067 = !{!2068, !2069, !2070, !2071, !2076}
!2068 = !DILocalVariable(name: "dev", arg: 1, scope: !2064, file: !3, line: 78, type: !227)
!2069 = !DILocalVariable(name: "desc", arg: 2, scope: !2064, file: !3, line: 78, type: !316)
!2070 = !DILocalVariable(name: "pnp_res", scope: !2064, file: !3, line: 80, type: !89)
!2071 = !DILocalVariable(name: "__mptr", scope: !2072, file: !3, line: 86, type: !84)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 86, column: 3)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 86, column: 3)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 84, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 82, column: 6)
!2076 = !DILocalVariable(name: "__mptr", scope: !2077, file: !3, line: 86, type: !84)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 86, column: 3)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 86, column: 3)
!2079 = !DILocation(line: 78, column: 45, scope: !2064)
!2080 = !DILocation(line: 78, column: 56, scope: !2064)
!2081 = !DILocation(line: 80, column: 2, scope: !2064)
!2082 = !DILocation(line: 80, column: 23, scope: !2064)
!2083 = !DILocation(line: 82, column: 18, scope: !2075)
!2084 = !DILocation(line: 82, column: 23, scope: !2075)
!2085 = !DILocation(line: 82, column: 6, scope: !2075)
!2086 = !DILocation(line: 82, column: 6, scope: !2064)
!2087 = !DILocation(line: 83, column: 3, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 83, column: 3)
!2089 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 83, column: 3)
!2090 = !DILocation(line: 83, column: 3, scope: !2089)
!2091 = !DILocation(line: 83, column: 3, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 83, column: 3)
!2093 = !DILocation(line: 83, column: 3, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 83, column: 3)
!2095 = !DILocation(line: 83, column: 3, scope: !2075)
!2096 = !DILocation(line: 85, column: 3, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 85, column: 3)
!2098 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 85, column: 3)
!2099 = !DILocation(line: 85, column: 3, scope: !2098)
!2100 = !DILocation(line: 85, column: 3, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 85, column: 3)
!2102 = !DILocation(line: 85, column: 3, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 85, column: 3)
!2104 = !DILocation(line: 86, column: 3, scope: !2072)
!2105 = !DILocation(line: 86, column: 3, scope: !2073)
!2106 = !DILocation(line: 86, column: 3, scope: !2078)
!2107 = !DILocation(line: 87, column: 4, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 87, column: 4)
!2109 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 87, column: 4)
!2110 = !DILocation(line: 87, column: 4, scope: !2109)
!2111 = !DILocation(line: 87, column: 4, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 87, column: 4)
!2113 = !DILocation(line: 87, column: 4, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 87, column: 4)
!2115 = !DILocation(line: 87, column: 4, scope: !2078)
!2116 = !DILocation(line: 86, column: 3, scope: !2077)
!2117 = distinct !{!2117, !2105, !2118, !2119, !2120}
!2118 = !DILocation(line: 87, column: 4, scope: !2073)
!2119 = !{!"llvm.loop.mustprogress"}
!2120 = !{!"llvm.loop.unroll.disable"}
!2121 = !DILocation(line: 89, column: 1, scope: !2064)
!2122 = distinct !DISubprogram(name: "list_empty", scope: !2123, file: !2123, line: 371, type: !2124, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2123 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!46, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!2128 = !{!2129}
!2129 = !DILocalVariable(name: "head", arg: 1, scope: !2122, file: !2123, line: 371, type: !2126)
!2130 = !DILocation(line: 371, column: 54, scope: !2122)
!2131 = !DILocation(line: 373, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2122, file: !2123, line: 373, column: 9)
!2133 = !DILocation(line: 373, column: 9, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2132, file: !2123, line: 373, column: 9)
!2135 = !DILocation(line: 373, column: 34, scope: !2122)
!2136 = !DILocation(line: 373, column: 31, scope: !2122)
!2137 = !DILocation(line: 373, column: 2, scope: !2122)
!2138 = !DISubprogram(name: "_dev_printk", scope: !2139, file: !2139, line: 41, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2139 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !113, !899, !113, null}
!2142 = distinct !DISubprogram(name: "pnp_option_priority_name", scope: !3, file: !3, line: 91, type: !2143, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!316, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_option", file: !91, line: 67, size: 576, elements: !2147)
!2147 = !{!2148, !2149, !2150, !2151}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2146, file: !91, line: 68, baseType: !94, size: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2146, file: !91, line: 69, baseType: !7, size: 32, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2146, file: !91, line: 71, baseType: !117, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2146, file: !91, line: 77, baseType: !2152, size: 320, offset: 256)
!2152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2146, file: !91, line: 72, size: 320, elements: !2153)
!2153 = !{!2154, !2162, !2171, !2176}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2152, file: !91, line: 73, baseType: !2155, size: 320)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_port", file: !91, line: 27, size: 320, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160, !2161}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2155, file: !91, line: 28, baseType: !105, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2155, file: !91, line: 29, baseType: !105, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2155, file: !91, line: 30, baseType: !105, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2155, file: !91, line: 31, baseType: !105, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2155, file: !91, line: 32, baseType: !278, size: 8, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2152, file: !91, line: 74, baseType: !2163, size: 320)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_irq", file: !91, line: 38, size: 320, elements: !2164)
!2164 = !{!2165, !2170}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2163, file: !91, line: 39, baseType: !2166, size: 256)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_irq_mask_t", file: !91, line: 36, baseType: !2167)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 36, size: 256, elements: !2168)
!2168 = !{!2169}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2167, file: !91, line: 36, baseType: !1214, size: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2163, file: !91, line: 40, baseType: !278, size: 8, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !2152, file: !91, line: 75, baseType: !2172, size: 16)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dma", file: !91, line: 43, size: 16, elements: !2173)
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2172, file: !91, line: 44, baseType: !278, size: 8)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2172, file: !91, line: 45, baseType: !278, size: 8, offset: 8)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2152, file: !91, line: 76, baseType: !2177, size: 320)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_mem", file: !91, line: 48, size: 320, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2183}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2177, file: !91, line: 49, baseType: !105, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2177, file: !91, line: 50, baseType: !105, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2177, file: !91, line: 51, baseType: !105, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2177, file: !91, line: 52, baseType: !105, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2177, file: !91, line: 53, baseType: !278, size: 8, offset: 256)
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "option", arg: 1, scope: !2142, file: !3, line: 91, type: !2145)
!2186 = !DILocation(line: 91, column: 51, scope: !2142)
!2187 = !DILocation(line: 93, column: 30, scope: !2142)
!2188 = !DILocation(line: 93, column: 10, scope: !2142)
!2189 = !DILocation(line: 93, column: 2, scope: !2142)
!2190 = !DILocation(line: 95, column: 3, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 93, column: 39)
!2192 = !DILocation(line: 97, column: 3, scope: !2191)
!2193 = !DILocation(line: 99, column: 3, scope: !2191)
!2194 = !DILocation(line: 101, column: 2, scope: !2142)
!2195 = !DILocation(line: 102, column: 1, scope: !2142)
!2196 = distinct !DISubprogram(name: "pnp_option_priority", scope: !91, file: !91, line: 103, type: !2197, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!7, !2145}
!2199 = !{!2200}
!2200 = !DILocalVariable(name: "option", arg: 1, scope: !2196, file: !91, line: 103, type: !2145)
!2201 = !DILocation(line: 103, column: 67, scope: !2196)
!2202 = !DILocation(line: 105, column: 10, scope: !2196)
!2203 = !DILocation(line: 105, column: 18, scope: !2196)
!2204 = !DILocation(line: 105, column: 24, scope: !2196)
!2205 = !DILocation(line: 105, column: 54, scope: !2196)
!2206 = !DILocation(line: 105, column: 2, scope: !2196)
!2207 = distinct !DISubprogram(name: "dbg_pnp_show_option", scope: !3, file: !3, line: 104, type: !2208, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !227, !2145}
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2218, !2220, !2222}
!2211 = !DILocalVariable(name: "dev", arg: 1, scope: !2207, file: !3, line: 104, type: !227)
!2212 = !DILocalVariable(name: "option", arg: 2, scope: !2207, file: !3, line: 104, type: !2145)
!2213 = !DILocalVariable(name: "buf", scope: !2207, file: !3, line: 106, type: !1352)
!2214 = !DILocalVariable(name: "len", scope: !2207, file: !3, line: 107, type: !46)
!2215 = !DILocalVariable(name: "i", scope: !2207, file: !3, line: 107, type: !46)
!2216 = !DILocalVariable(name: "port", scope: !2207, file: !3, line: 108, type: !2217)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2218 = !DILocalVariable(name: "mem", scope: !2207, file: !3, line: 109, type: !2219)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2220 = !DILocalVariable(name: "irq", scope: !2207, file: !3, line: 110, type: !2221)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2222 = !DILocalVariable(name: "dma", scope: !2207, file: !3, line: 111, type: !2223)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2224 = !DILocation(line: 104, column: 42, scope: !2207)
!2225 = !DILocation(line: 104, column: 66, scope: !2207)
!2226 = !DILocation(line: 106, column: 2, scope: !2207)
!2227 = !DILocation(line: 106, column: 7, scope: !2207)
!2228 = !DILocation(line: 107, column: 2, scope: !2207)
!2229 = !DILocation(line: 107, column: 6, scope: !2207)
!2230 = !DILocation(line: 107, column: 15, scope: !2207)
!2231 = !DILocation(line: 108, column: 2, scope: !2207)
!2232 = !DILocation(line: 108, column: 19, scope: !2207)
!2233 = !DILocation(line: 109, column: 2, scope: !2207)
!2234 = !DILocation(line: 109, column: 18, scope: !2207)
!2235 = !DILocation(line: 110, column: 2, scope: !2207)
!2236 = !DILocation(line: 110, column: 18, scope: !2207)
!2237 = !DILocation(line: 111, column: 2, scope: !2207)
!2238 = !DILocation(line: 111, column: 18, scope: !2207)
!2239 = !DILocation(line: 113, column: 30, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 113, column: 6)
!2241 = !DILocation(line: 113, column: 6, scope: !2240)
!2242 = !DILocation(line: 113, column: 6, scope: !2207)
!2243 = !DILocation(line: 114, column: 20, scope: !2240)
!2244 = !DILocation(line: 114, column: 26, scope: !2240)
!2245 = !DILocation(line: 114, column: 24, scope: !2240)
!2246 = !DILocation(line: 114, column: 45, scope: !2240)
!2247 = !DILocation(line: 114, column: 43, scope: !2240)
!2248 = !DILocation(line: 116, column: 21, scope: !2240)
!2249 = !DILocation(line: 116, column: 6, scope: !2240)
!2250 = !DILocation(line: 117, column: 31, scope: !2240)
!2251 = !DILocation(line: 117, column: 6, scope: !2240)
!2252 = !DILocation(line: 114, column: 10, scope: !2240)
!2253 = !DILocation(line: 114, column: 7, scope: !2240)
!2254 = !DILocation(line: 114, column: 3, scope: !2240)
!2255 = !DILocation(line: 119, column: 20, scope: !2240)
!2256 = !DILocation(line: 119, column: 26, scope: !2240)
!2257 = !DILocation(line: 119, column: 24, scope: !2240)
!2258 = !DILocation(line: 119, column: 45, scope: !2240)
!2259 = !DILocation(line: 119, column: 43, scope: !2240)
!2260 = !DILocation(line: 119, column: 10, scope: !2240)
!2261 = !DILocation(line: 119, column: 7, scope: !2240)
!2262 = !DILocation(line: 122, column: 10, scope: !2207)
!2263 = !DILocation(line: 122, column: 18, scope: !2207)
!2264 = !DILocation(line: 122, column: 2, scope: !2207)
!2265 = !DILocation(line: 124, column: 11, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 122, column: 24)
!2267 = !DILocation(line: 124, column: 19, scope: !2266)
!2268 = !DILocation(line: 124, column: 8, scope: !2266)
!2269 = !DILocation(line: 125, column: 20, scope: !2266)
!2270 = !DILocation(line: 125, column: 26, scope: !2266)
!2271 = !DILocation(line: 125, column: 24, scope: !2266)
!2272 = !DILocation(line: 125, column: 45, scope: !2266)
!2273 = !DILocation(line: 125, column: 43, scope: !2266)
!2274 = !DILocation(line: 127, column: 27, scope: !2266)
!2275 = !DILocation(line: 127, column: 33, scope: !2266)
!2276 = !DILocation(line: 128, column: 27, scope: !2266)
!2277 = !DILocation(line: 128, column: 33, scope: !2266)
!2278 = !DILocation(line: 129, column: 27, scope: !2266)
!2279 = !DILocation(line: 129, column: 33, scope: !2266)
!2280 = !DILocation(line: 130, column: 27, scope: !2266)
!2281 = !DILocation(line: 130, column: 33, scope: !2266)
!2282 = !DILocation(line: 130, column: 39, scope: !2266)
!2283 = !DILocation(line: 130, column: 45, scope: !2266)
!2284 = !DILocation(line: 125, column: 10, scope: !2266)
!2285 = !DILocation(line: 125, column: 7, scope: !2266)
!2286 = !DILocation(line: 131, column: 3, scope: !2266)
!2287 = !DILocation(line: 133, column: 10, scope: !2266)
!2288 = !DILocation(line: 133, column: 18, scope: !2266)
!2289 = !DILocation(line: 133, column: 7, scope: !2266)
!2290 = !DILocation(line: 134, column: 20, scope: !2266)
!2291 = !DILocation(line: 134, column: 26, scope: !2266)
!2292 = !DILocation(line: 134, column: 24, scope: !2266)
!2293 = !DILocation(line: 134, column: 45, scope: !2266)
!2294 = !DILocation(line: 134, column: 43, scope: !2266)
!2295 = !DILocation(line: 136, column: 27, scope: !2266)
!2296 = !DILocation(line: 136, column: 32, scope: !2266)
!2297 = !DILocation(line: 137, column: 27, scope: !2266)
!2298 = !DILocation(line: 137, column: 32, scope: !2266)
!2299 = !DILocation(line: 138, column: 27, scope: !2266)
!2300 = !DILocation(line: 138, column: 32, scope: !2266)
!2301 = !DILocation(line: 139, column: 27, scope: !2266)
!2302 = !DILocation(line: 139, column: 32, scope: !2266)
!2303 = !DILocation(line: 139, column: 38, scope: !2266)
!2304 = !DILocation(line: 139, column: 43, scope: !2266)
!2305 = !DILocation(line: 134, column: 10, scope: !2266)
!2306 = !DILocation(line: 134, column: 7, scope: !2266)
!2307 = !DILocation(line: 140, column: 3, scope: !2266)
!2308 = !DILocation(line: 142, column: 10, scope: !2266)
!2309 = !DILocation(line: 142, column: 18, scope: !2266)
!2310 = !DILocation(line: 142, column: 7, scope: !2266)
!2311 = !DILocation(line: 143, column: 20, scope: !2266)
!2312 = !DILocation(line: 143, column: 26, scope: !2266)
!2313 = !DILocation(line: 143, column: 24, scope: !2266)
!2314 = !DILocation(line: 143, column: 45, scope: !2266)
!2315 = !DILocation(line: 143, column: 43, scope: !2266)
!2316 = !DILocation(line: 143, column: 10, scope: !2266)
!2317 = !DILocation(line: 143, column: 7, scope: !2266)
!2318 = !DILocation(line: 144, column: 20, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 144, column: 7)
!2320 = !DILocation(line: 144, column: 25, scope: !2319)
!2321 = !DILocation(line: 144, column: 29, scope: !2319)
!2322 = !DILocation(line: 144, column: 7, scope: !2319)
!2323 = !DILocation(line: 144, column: 7, scope: !2266)
!2324 = !DILocation(line: 145, column: 21, scope: !2319)
!2325 = !DILocation(line: 145, column: 27, scope: !2319)
!2326 = !DILocation(line: 145, column: 25, scope: !2319)
!2327 = !DILocation(line: 145, column: 46, scope: !2319)
!2328 = !DILocation(line: 145, column: 44, scope: !2319)
!2329 = !DILocation(line: 145, column: 11, scope: !2319)
!2330 = !DILocation(line: 145, column: 8, scope: !2319)
!2331 = !DILocation(line: 145, column: 4, scope: !2319)
!2332 = !DILocation(line: 148, column: 11, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 148, column: 4)
!2334 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 147, column: 8)
!2335 = !DILocation(line: 148, column: 9, scope: !2333)
!2336 = !DILocation(line: 148, column: 16, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 148, column: 4)
!2338 = !DILocation(line: 148, column: 18, scope: !2337)
!2339 = !DILocation(line: 148, column: 4, scope: !2333)
!2340 = !DILocation(line: 149, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 149, column: 9)
!2342 = !DILocation(line: 149, column: 9, scope: !2337)
!2343 = !DILocation(line: 150, column: 23, scope: !2341)
!2344 = !DILocation(line: 150, column: 29, scope: !2341)
!2345 = !DILocation(line: 150, column: 27, scope: !2341)
!2346 = !DILocation(line: 151, column: 23, scope: !2341)
!2347 = !DILocation(line: 151, column: 21, scope: !2341)
!2348 = !DILocation(line: 152, column: 16, scope: !2341)
!2349 = !DILocation(line: 150, column: 13, scope: !2341)
!2350 = !DILocation(line: 150, column: 10, scope: !2341)
!2351 = !DILocation(line: 150, column: 6, scope: !2341)
!2352 = !DILocation(line: 148, column: 33, scope: !2337)
!2353 = !DILocation(line: 148, column: 4, scope: !2337)
!2354 = distinct !{!2354, !2339, !2355, !2119, !2120}
!2355 = !DILocation(line: 152, column: 17, scope: !2333)
!2356 = !DILocation(line: 154, column: 20, scope: !2266)
!2357 = !DILocation(line: 154, column: 26, scope: !2266)
!2358 = !DILocation(line: 154, column: 24, scope: !2266)
!2359 = !DILocation(line: 154, column: 45, scope: !2266)
!2360 = !DILocation(line: 154, column: 43, scope: !2266)
!2361 = !DILocation(line: 155, column: 6, scope: !2266)
!2362 = !DILocation(line: 155, column: 11, scope: !2266)
!2363 = !DILocation(line: 154, column: 10, scope: !2266)
!2364 = !DILocation(line: 154, column: 7, scope: !2266)
!2365 = !DILocation(line: 156, column: 7, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 156, column: 7)
!2367 = !DILocation(line: 156, column: 12, scope: !2366)
!2368 = !DILocation(line: 156, column: 18, scope: !2366)
!2369 = !DILocation(line: 156, column: 7, scope: !2266)
!2370 = !DILocation(line: 157, column: 21, scope: !2366)
!2371 = !DILocation(line: 157, column: 27, scope: !2366)
!2372 = !DILocation(line: 157, column: 25, scope: !2366)
!2373 = !DILocation(line: 157, column: 46, scope: !2366)
!2374 = !DILocation(line: 157, column: 44, scope: !2366)
!2375 = !DILocation(line: 157, column: 11, scope: !2366)
!2376 = !DILocation(line: 157, column: 8, scope: !2366)
!2377 = !DILocation(line: 157, column: 4, scope: !2366)
!2378 = !DILocation(line: 159, column: 3, scope: !2266)
!2379 = !DILocation(line: 161, column: 10, scope: !2266)
!2380 = !DILocation(line: 161, column: 18, scope: !2266)
!2381 = !DILocation(line: 161, column: 7, scope: !2266)
!2382 = !DILocation(line: 162, column: 20, scope: !2266)
!2383 = !DILocation(line: 162, column: 26, scope: !2266)
!2384 = !DILocation(line: 162, column: 24, scope: !2266)
!2385 = !DILocation(line: 162, column: 45, scope: !2266)
!2386 = !DILocation(line: 162, column: 43, scope: !2266)
!2387 = !DILocation(line: 162, column: 10, scope: !2266)
!2388 = !DILocation(line: 162, column: 7, scope: !2266)
!2389 = !DILocation(line: 163, column: 8, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 163, column: 7)
!2391 = !DILocation(line: 163, column: 13, scope: !2390)
!2392 = !DILocation(line: 163, column: 7, scope: !2266)
!2393 = !DILocation(line: 164, column: 21, scope: !2390)
!2394 = !DILocation(line: 164, column: 27, scope: !2390)
!2395 = !DILocation(line: 164, column: 25, scope: !2390)
!2396 = !DILocation(line: 164, column: 46, scope: !2390)
!2397 = !DILocation(line: 164, column: 44, scope: !2390)
!2398 = !DILocation(line: 164, column: 11, scope: !2390)
!2399 = !DILocation(line: 164, column: 8, scope: !2390)
!2400 = !DILocation(line: 164, column: 4, scope: !2390)
!2401 = !DILocation(line: 167, column: 11, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 167, column: 4)
!2403 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 166, column: 8)
!2404 = !DILocation(line: 167, column: 9, scope: !2402)
!2405 = !DILocation(line: 167, column: 16, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 167, column: 4)
!2407 = !DILocation(line: 167, column: 18, scope: !2406)
!2408 = !DILocation(line: 167, column: 4, scope: !2402)
!2409 = !DILocation(line: 168, column: 9, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 168, column: 9)
!2411 = !DILocation(line: 168, column: 14, scope: !2410)
!2412 = !DILocation(line: 168, column: 26, scope: !2410)
!2413 = !DILocation(line: 168, column: 23, scope: !2410)
!2414 = !DILocation(line: 168, column: 18, scope: !2410)
!2415 = !DILocation(line: 168, column: 9, scope: !2406)
!2416 = !DILocation(line: 169, column: 23, scope: !2410)
!2417 = !DILocation(line: 169, column: 29, scope: !2410)
!2418 = !DILocation(line: 169, column: 27, scope: !2410)
!2419 = !DILocation(line: 170, column: 23, scope: !2410)
!2420 = !DILocation(line: 170, column: 21, scope: !2410)
!2421 = !DILocation(line: 171, column: 16, scope: !2410)
!2422 = !DILocation(line: 169, column: 13, scope: !2410)
!2423 = !DILocation(line: 169, column: 10, scope: !2410)
!2424 = !DILocation(line: 169, column: 6, scope: !2410)
!2425 = !DILocation(line: 168, column: 27, scope: !2410)
!2426 = !DILocation(line: 167, column: 24, scope: !2406)
!2427 = !DILocation(line: 167, column: 4, scope: !2406)
!2428 = distinct !{!2428, !2408, !2429, !2119, !2120}
!2429 = !DILocation(line: 171, column: 17, scope: !2402)
!2430 = !DILocation(line: 173, column: 20, scope: !2266)
!2431 = !DILocation(line: 173, column: 26, scope: !2266)
!2432 = !DILocation(line: 173, column: 24, scope: !2266)
!2433 = !DILocation(line: 173, column: 45, scope: !2266)
!2434 = !DILocation(line: 173, column: 43, scope: !2266)
!2435 = !DILocation(line: 174, column: 19, scope: !2266)
!2436 = !DILocation(line: 174, column: 24, scope: !2266)
!2437 = !DILocation(line: 174, column: 29, scope: !2266)
!2438 = !DILocation(line: 174, column: 34, scope: !2266)
!2439 = !DILocation(line: 173, column: 10, scope: !2266)
!2440 = !DILocation(line: 173, column: 7, scope: !2266)
!2441 = !DILocation(line: 175, column: 3, scope: !2266)
!2442 = !DILocation(line: 177, column: 2, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 177, column: 2)
!2444 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 177, column: 2)
!2445 = !DILocation(line: 177, column: 2, scope: !2444)
!2446 = !DILocation(line: 177, column: 2, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 177, column: 2)
!2448 = !DILocation(line: 177, column: 2, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 177, column: 2)
!2450 = !DILocation(line: 178, column: 1, scope: !2207)
!2451 = distinct !DISubprogram(name: "pnp_option_is_dependent", scope: !91, file: !91, line: 93, type: !2452, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!46, !2145}
!2454 = !{!2455}
!2455 = !DILocalVariable(name: "option", arg: 1, scope: !2451, file: !91, line: 93, type: !2145)
!2456 = !DILocation(line: 93, column: 62, scope: !2451)
!2457 = !DILocation(line: 95, column: 9, scope: !2451)
!2458 = !DILocation(line: 95, column: 17, scope: !2451)
!2459 = !DILocation(line: 95, column: 23, scope: !2451)
!2460 = !DILocation(line: 95, column: 2, scope: !2451)
!2461 = !DISubprogram(name: "scnprintf", scope: !2462, file: !2462, line: 14, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2462 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!46, !316, !361, !113, null}
!2465 = distinct !DISubprogram(name: "pnp_option_set", scope: !91, file: !91, line: 98, type: !2197, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2466 = !{!2467}
!2467 = !DILocalVariable(name: "option", arg: 1, scope: !2465, file: !91, line: 98, type: !2145)
!2468 = !DILocation(line: 98, column: 62, scope: !2465)
!2469 = !DILocation(line: 100, column: 10, scope: !2465)
!2470 = !DILocation(line: 100, column: 18, scope: !2465)
!2471 = !DILocation(line: 100, column: 24, scope: !2465)
!2472 = !DILocation(line: 100, column: 49, scope: !2465)
!2473 = !DILocation(line: 100, column: 2, scope: !2465)
!2474 = distinct !DISubprogram(name: "bitmap_empty", scope: !2475, file: !2475, line: 436, type: !2476, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2478)
!2475 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!665, !124, !7}
!2478 = !{!2479, !2480}
!2479 = !DILocalVariable(name: "src", arg: 1, scope: !2474, file: !2475, line: 436, type: !124)
!2480 = !DILocalVariable(name: "nbits", arg: 2, scope: !2474, file: !2475, line: 436, type: !7)
!2481 = !DILocation(line: 436, column: 54, scope: !2474)
!2482 = !DILocation(line: 436, column: 68, scope: !2474)
!2483 = !DILocation(line: 438, column: 6, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2474, file: !2475, line: 438, column: 6)
!2485 = !DILocation(line: 438, column: 6, scope: !2474)
!2486 = !DILocation(line: 439, column: 14, scope: !2484)
!2487 = !DILocation(line: 439, column: 13, scope: !2484)
!2488 = !DILocation(line: 439, column: 20, scope: !2484)
!2489 = !DILocation(line: 439, column: 18, scope: !2484)
!2490 = !DILocation(line: 439, column: 10, scope: !2484)
!2491 = !DILocation(line: 439, column: 3, scope: !2484)
!2492 = !DILocation(line: 441, column: 24, scope: !2474)
!2493 = !DILocation(line: 441, column: 29, scope: !2474)
!2494 = !DILocation(line: 441, column: 9, scope: !2474)
!2495 = !DILocation(line: 441, column: 39, scope: !2474)
!2496 = !DILocation(line: 441, column: 36, scope: !2474)
!2497 = !DILocation(line: 441, column: 2, scope: !2474)
!2498 = !DILocation(line: 442, column: 1, scope: !2474)
!2499 = distinct !DISubprogram(name: "const_test_bit", scope: !2500, file: !2500, line: 166, type: !2501, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2506)
!2500 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!665, !117, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2505)
!2505 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!2506 = !{!2507, !2508, !2509, !2510, !2511}
!2507 = !DILocalVariable(name: "nr", arg: 1, scope: !2499, file: !2500, line: 166, type: !117)
!2508 = !DILocalVariable(name: "addr", arg: 2, scope: !2499, file: !2500, line: 166, type: !2503)
!2509 = !DILocalVariable(name: "p", scope: !2499, file: !2500, line: 168, type: !124)
!2510 = !DILocalVariable(name: "mask", scope: !2499, file: !2500, line: 169, type: !117)
!2511 = !DILocalVariable(name: "val", scope: !2499, file: !2500, line: 170, type: !117)
!2512 = !DILocation(line: 166, column: 30, scope: !2499)
!2513 = !DILocation(line: 166, column: 64, scope: !2499)
!2514 = !DILocation(line: 168, column: 2, scope: !2499)
!2515 = !DILocation(line: 168, column: 23, scope: !2499)
!2516 = !DILocation(line: 168, column: 50, scope: !2499)
!2517 = !DILocation(line: 168, column: 57, scope: !2499)
!2518 = !DILocation(line: 168, column: 55, scope: !2499)
!2519 = !DILocation(line: 169, column: 2, scope: !2499)
!2520 = !DILocation(line: 169, column: 16, scope: !2499)
!2521 = !DILocation(line: 169, column: 23, scope: !2499)
!2522 = !DILocation(line: 170, column: 2, scope: !2499)
!2523 = !DILocation(line: 170, column: 16, scope: !2499)
!2524 = !DILocation(line: 170, column: 23, scope: !2499)
!2525 = !DILocation(line: 170, column: 22, scope: !2499)
!2526 = !DILocation(line: 172, column: 12, scope: !2499)
!2527 = !DILocation(line: 172, column: 18, scope: !2499)
!2528 = !DILocation(line: 172, column: 16, scope: !2499)
!2529 = !DILocation(line: 172, column: 10, scope: !2499)
!2530 = !DILocation(line: 172, column: 9, scope: !2499)
!2531 = !DILocation(line: 173, column: 1, scope: !2499)
!2532 = !DILocation(line: 172, column: 2, scope: !2499)
!2533 = distinct !DISubprogram(name: "_test_bit", scope: !2534, file: !2534, line: 139, type: !2501, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2535)
!2534 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2535 = !{!2536, !2537}
!2536 = !DILocalVariable(name: "nr", arg: 1, scope: !2533, file: !2534, line: 139, type: !117)
!2537 = !DILocalVariable(name: "addr", arg: 2, scope: !2533, file: !2534, line: 139, type: !2503)
!2538 = !DILocation(line: 139, column: 25, scope: !2533)
!2539 = !DILocation(line: 139, column: 59, scope: !2533)
!2540 = !DILocation(line: 141, column: 25, scope: !2533)
!2541 = !DILocation(line: 141, column: 32, scope: !2533)
!2542 = !DILocation(line: 141, column: 30, scope: !2533)
!2543 = !DILocation(line: 141, column: 2, scope: !2533)
!2544 = !DILocation(line: 142, column: 23, scope: !2533)
!2545 = !DILocation(line: 142, column: 27, scope: !2533)
!2546 = !DILocation(line: 142, column: 9, scope: !2533)
!2547 = !DILocation(line: 142, column: 2, scope: !2533)
!2548 = !DISubprogram(name: "pnp_get_resource", scope: !229, file: !229, line: 27, type: !2549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!120, !227, !117, !7}
!2551 = distinct !DISubprogram(name: "pnp_resource_valid", scope: !229, file: !229, line: 37, type: !2552, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!46, !120}
!2554 = !{!2555}
!2555 = !DILocalVariable(name: "res", arg: 1, scope: !2551, file: !229, line: 37, type: !120)
!2556 = !DILocation(line: 37, column: 55, scope: !2551)
!2557 = !DILocation(line: 39, column: 6, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2551, file: !229, line: 39, column: 6)
!2559 = !DILocation(line: 39, column: 6, scope: !2551)
!2560 = !DILocation(line: 40, column: 3, scope: !2558)
!2561 = !DILocation(line: 41, column: 2, scope: !2551)
!2562 = !DILocation(line: 42, column: 1, scope: !2551)
!2563 = distinct !DISubprogram(name: "pnp_resource_len", scope: !229, file: !229, line: 51, type: !2564, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!105, !120}
!2566 = !{!2567}
!2567 = !DILocalVariable(name: "res", arg: 1, scope: !2563, file: !229, line: 51, type: !120)
!2568 = !DILocation(line: 51, column: 65, scope: !2563)
!2569 = !DILocation(line: 53, column: 6, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2563, file: !229, line: 53, column: 6)
!2571 = !DILocation(line: 53, column: 11, scope: !2570)
!2572 = !DILocation(line: 53, column: 17, scope: !2570)
!2573 = !DILocation(line: 53, column: 22, scope: !2570)
!2574 = !DILocation(line: 53, column: 25, scope: !2570)
!2575 = !DILocation(line: 53, column: 30, scope: !2570)
!2576 = !DILocation(line: 53, column: 34, scope: !2570)
!2577 = !DILocation(line: 53, column: 6, scope: !2563)
!2578 = !DILocation(line: 54, column: 3, scope: !2570)
!2579 = !DILocation(line: 55, column: 23, scope: !2563)
!2580 = !DILocation(line: 55, column: 9, scope: !2563)
!2581 = !DILocation(line: 55, column: 2, scope: !2563)
!2582 = !DILocation(line: 56, column: 1, scope: !2563)
!2583 = distinct !DISubprogram(name: "resource_size", scope: !102, file: !102, line: 219, type: !2584, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2588)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!105, !2586}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2588 = !{!2589}
!2589 = !DILocalVariable(name: "res", arg: 1, scope: !2583, file: !102, line: 219, type: !2586)
!2590 = !DILocation(line: 219, column: 68, scope: !2583)
!2591 = !DILocation(line: 221, column: 9, scope: !2583)
!2592 = !DILocation(line: 221, column: 14, scope: !2583)
!2593 = !DILocation(line: 221, column: 20, scope: !2583)
!2594 = !DILocation(line: 221, column: 25, scope: !2583)
!2595 = !DILocation(line: 221, column: 18, scope: !2583)
!2596 = !DILocation(line: 221, column: 31, scope: !2583)
!2597 = !DILocation(line: 221, column: 2, scope: !2583)
!2598 = distinct !DISubprogram(name: "find_first_bit", scope: !2599, file: !2599, line: 200, type: !2600, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2602)
!2599 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!117, !124, !117}
!2602 = !{!2603, !2604, !2605}
!2603 = !DILocalVariable(name: "addr", arg: 1, scope: !2598, file: !2599, line: 200, type: !124)
!2604 = !DILocalVariable(name: "size", arg: 2, scope: !2598, file: !2599, line: 200, type: !117)
!2605 = !DILocalVariable(name: "val", scope: !2606, file: !2599, line: 203, type: !117)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !2599, line: 202, column: 31)
!2607 = distinct !DILexicalBlock(scope: !2598, file: !2599, line: 202, column: 6)
!2608 = !DILocation(line: 200, column: 51, scope: !2598)
!2609 = !DILocation(line: 200, column: 71, scope: !2598)
!2610 = !DILocation(line: 202, column: 6, scope: !2607)
!2611 = !DILocation(line: 202, column: 6, scope: !2598)
!2612 = !DILocation(line: 203, column: 3, scope: !2606)
!2613 = !DILocation(line: 203, column: 17, scope: !2606)
!2614 = !DILocation(line: 203, column: 24, scope: !2606)
!2615 = !DILocation(line: 203, column: 23, scope: !2606)
!2616 = !DILocation(line: 203, column: 31, scope: !2606)
!2617 = !DILocation(line: 203, column: 29, scope: !2606)
!2618 = !DILocation(line: 205, column: 10, scope: !2606)
!2619 = !DILocation(line: 205, column: 16, scope: !2606)
!2620 = !DILocation(line: 205, column: 29, scope: !2606)
!2621 = !DILocation(line: 205, column: 3, scope: !2606)
!2622 = !DILocation(line: 206, column: 2, scope: !2607)
!2623 = !DILocation(line: 208, column: 25, scope: !2598)
!2624 = !DILocation(line: 208, column: 31, scope: !2598)
!2625 = !DILocation(line: 208, column: 9, scope: !2598)
!2626 = !DILocation(line: 208, column: 2, scope: !2598)
!2627 = !DILocation(line: 209, column: 1, scope: !2598)
!2628 = distinct !DISubprogram(name: "variable__ffs", scope: !2629, file: !2629, line: 250, type: !2630, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2632)
!2629 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!117, !117}
!2632 = !{!2633}
!2633 = !DILocalVariable(name: "word", arg: 1, scope: !2628, file: !2629, line: 250, type: !117)
!2634 = !DILocation(line: 250, column: 66, scope: !2628)
!2635 = !DILocation(line: 254, column: 11, scope: !2628)
!2636 = !DILocation(line: 252, column: 2, scope: !2628)
!2637 = !{i64 840494}
!2638 = !DILocation(line: 255, column: 9, scope: !2628)
!2639 = !DILocation(line: 255, column: 2, scope: !2628)
!2640 = !DISubprogram(name: "_find_first_bit", scope: !2599, file: !2599, line: 21, type: !2600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2641 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2642, file: !2642, line: 66, type: !2643, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2648)
!2642 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2645, !361}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2648 = !{!2649, !2650}
!2649 = !DILocalVariable(name: "v", arg: 1, scope: !2641, file: !2642, line: 66, type: !2645)
!2650 = !DILocalVariable(name: "size", arg: 2, scope: !2641, file: !2642, line: 66, type: !361)
!2651 = !DILocation(line: 66, column: 73, scope: !2641)
!2652 = !DILocation(line: 66, column: 83, scope: !2641)
!2653 = !DILocation(line: 68, column: 19, scope: !2641)
!2654 = !DILocation(line: 68, column: 22, scope: !2641)
!2655 = !DILocation(line: 68, column: 2, scope: !2641)
!2656 = !DILocation(line: 69, column: 2, scope: !2641)
!2657 = !DILocation(line: 70, column: 1, scope: !2641)
!2658 = distinct !DISubprogram(name: "arch_test_bit", scope: !2629, file: !2629, line: 237, type: !2501, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2659)
!2659 = !{!2660, !2661}
!2660 = !DILocalVariable(name: "nr", arg: 1, scope: !2658, file: !2629, line: 237, type: !117)
!2661 = !DILocalVariable(name: "addr", arg: 2, scope: !2658, file: !2629, line: 237, type: !2503)
!2662 = !DILocation(line: 237, column: 29, scope: !2658)
!2663 = !DILocation(line: 237, column: 63, scope: !2658)
!2664 = !DILocation(line: 239, column: 30, scope: !2658)
!2665 = !DILocation(line: 239, column: 9, scope: !2658)
!2666 = !DILocation(line: 239, column: 54, scope: !2658)
!2667 = !DILocation(line: 239, column: 58, scope: !2658)
!2668 = !DILocation(line: 239, column: 36, scope: !2658)
!2669 = !DILocation(line: 240, column: 26, scope: !2658)
!2670 = !DILocation(line: 240, column: 30, scope: !2658)
!2671 = !DILocation(line: 240, column: 8, scope: !2658)
!2672 = !DILocation(line: 239, column: 2, scope: !2658)
!2673 = distinct !DISubprogram(name: "kasan_check_read", scope: !2674, file: !2674, line: 40, type: !2675, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2677)
!2674 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!665, !2645, !7}
!2677 = !{!2678, !2679}
!2678 = !DILocalVariable(name: "p", arg: 1, scope: !2673, file: !2674, line: 40, type: !2645)
!2679 = !DILocalVariable(name: "size", arg: 2, scope: !2673, file: !2674, line: 40, type: !7)
!2680 = !DILocation(line: 40, column: 58, scope: !2673)
!2681 = !DILocation(line: 40, column: 74, scope: !2673)
!2682 = !DILocation(line: 42, column: 2, scope: !2673)
!2683 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2684, file: !2684, line: 229, type: !2685, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2687)
!2684 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2685 = !DISubroutineType(types: !2686)
!2686 = !{null, !2645, !361, !46}
!2687 = !{!2688, !2689, !2690}
!2688 = !DILocalVariable(name: "ptr", arg: 1, scope: !2683, file: !2684, line: 229, type: !2645)
!2689 = !DILocalVariable(name: "size", arg: 2, scope: !2683, file: !2684, line: 229, type: !361)
!2690 = !DILocalVariable(name: "type", arg: 3, scope: !2683, file: !2684, line: 230, type: !46)
!2691 = !DILocation(line: 229, column: 60, scope: !2683)
!2692 = !DILocation(line: 229, column: 72, scope: !2683)
!2693 = !DILocation(line: 230, column: 15, scope: !2683)
!2694 = !DILocation(line: 230, column: 23, scope: !2683)
!2695 = distinct !DISubprogram(name: "constant_test_bit", scope: !2629, file: !2629, line: 204, type: !2696, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!665, !350, !2503}
!2698 = !{!2699, !2700}
!2699 = !DILocalVariable(name: "nr", arg: 1, scope: !2695, file: !2629, line: 204, type: !350)
!2700 = !DILocalVariable(name: "addr", arg: 2, scope: !2695, file: !2629, line: 204, type: !2503)
!2701 = !DILocation(line: 204, column: 52, scope: !2695)
!2702 = !DILocation(line: 204, column: 86, scope: !2695)
!2703 = !DILocation(line: 206, column: 19, scope: !2695)
!2704 = !DILocation(line: 206, column: 22, scope: !2695)
!2705 = !DILocation(line: 206, column: 15, scope: !2695)
!2706 = !DILocation(line: 207, column: 4, scope: !2695)
!2707 = !DILocation(line: 207, column: 9, scope: !2695)
!2708 = !DILocation(line: 207, column: 12, scope: !2695)
!2709 = !DILocation(line: 206, column: 44, scope: !2695)
!2710 = !DILocation(line: 207, column: 37, scope: !2695)
!2711 = !DILocation(line: 206, column: 2, scope: !2695)
!2712 = distinct !DISubprogram(name: "variable_test_bit", scope: !2629, file: !2629, line: 224, type: !2696, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2713)
!2713 = !{!2714, !2715, !2716}
!2714 = !DILocalVariable(name: "nr", arg: 1, scope: !2712, file: !2629, line: 224, type: !350)
!2715 = !DILocalVariable(name: "addr", arg: 2, scope: !2712, file: !2629, line: 224, type: !2503)
!2716 = !DILocalVariable(name: "oldbit", scope: !2712, file: !2629, line: 226, type: !665)
!2717 = !DILocation(line: 224, column: 52, scope: !2712)
!2718 = !DILocation(line: 224, column: 86, scope: !2712)
!2719 = !DILocation(line: 226, column: 2, scope: !2712)
!2720 = !DILocation(line: 226, column: 7, scope: !2712)
!2721 = !DILocation(line: 231, column: 33, scope: !2712)
!2722 = !DILocation(line: 231, column: 46, scope: !2712)
!2723 = !DILocation(line: 228, column: 2, scope: !2712)
!2724 = !{i64 2148345419, i64 2148345493}
!2725 = !DILocation(line: 233, column: 9, scope: !2712)
!2726 = !{i8 0, i8 2}
!2727 = !DILocation(line: 234, column: 1, scope: !2712)
!2728 = !DILocation(line: 233, column: 2, scope: !2712)
