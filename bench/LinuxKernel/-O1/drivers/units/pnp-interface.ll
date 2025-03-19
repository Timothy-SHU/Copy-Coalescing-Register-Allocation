; ModuleID = 'drivers/pnp/interface.c'
source_filename = "drivers/pnp/interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pnp_info_buffer = type { ptr, ptr, i64, i64, i32, i32 }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, ptr, ptr }
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
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pnp_protocol = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.pnp_option = type { %struct.list_head, i32, i64, %union.anon.2 }
%union.anon.2 = type { %struct.pnp_port }
%struct.pnp_port = type { i64, i64, i64, i64, i8 }
%struct.pnp_mem = type { i64, i64, i64, i64, i8 }
%struct.pnp_irq = type { %struct.pnp_irq_mask_t, i8 }
%struct.pnp_irq_mask_t = type { [4 x i64] }
%struct.pnp_dma = type { i8, i8 }
%struct.pnp_id = type { [8 x i8], ptr }

@pnp_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pnp_dev_attrs, ptr null }, align 8, !dbg !0
@pnp_dev_groups = hidden global [2 x ptr] [ptr @pnp_dev_group, ptr null], align 16, !dbg !1802
@pnp_dev_attrs = internal global [4 x ptr] [ptr @dev_attr_resources, ptr @dev_attr_options, ptr @dev_attr_id, ptr null], align 16, !dbg !1805
@dev_attr_resources = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 420 }, ptr @resources_show, ptr @resources_store }, align 8, !dbg !1813
@dev_attr_options = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @options_show, ptr null }, align 8, !dbg !1901
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @id_show, ptr null }, align 8, !dbg !1991
@.str = private unnamed_addr constant [10 x i8] c"resources\00", align 1, !dbg !1808
@.str.1 = private unnamed_addr constant [12 x i8] c"state = %s\0A\00", align 1, !dbg !1827
@.str.2 = private unnamed_addr constant [7 x i8] c"active\00", align 1, !dbg !1832
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1, !dbg !1835
@.str.4 = private unnamed_addr constant [11 x i8] c" disabled\0A\00", align 1, !dbg !1840
@.str.5 = private unnamed_addr constant [16 x i8] c" %#llx-%#llx%s\0A\00", align 1, !dbg !1845
@.str.6 = private unnamed_addr constant [8 x i8] c" window\00", align 1, !dbg !1848
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !1850
@.str.8 = private unnamed_addr constant [7 x i8] c" %lld\0A\00", align 1, !dbg !1855
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1857
@.str.10 = private unnamed_addr constant [25 x i8] c"in use; can't configure\0A\00", align 1, !dbg !1862
@.str.11 = private unnamed_addr constant [8 x i8] c"disable\00", align 1, !dbg !1867
@.str.12 = private unnamed_addr constant [9 x i8] c"activate\00", align 1, !dbg !1869
@.str.13 = private unnamed_addr constant [5 x i8] c"fill\00", align 1, !dbg !1871
@.str.14 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !1876
@.str.15 = private unnamed_addr constant [6 x i8] c"clear\00", align 1, !dbg !1878
@.str.16 = private unnamed_addr constant [4 x i8] c"get\00", align 1, !dbg !1883
@pnp_res_mutex = external dso_local global %struct.mutex, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"set\00", align 1, !dbg !1886
@.str.18 = private unnamed_addr constant [3 x i8] c"io\00", align 1, !dbg !1888
@.str.19 = private unnamed_addr constant [4 x i8] c"mem\00", align 1, !dbg !1891
@.str.20 = private unnamed_addr constant [4 x i8] c"irq\00", align 1, !dbg !1893
@.str.21 = private unnamed_addr constant [4 x i8] c"dma\00", align 1, !dbg !1895
@.str.22 = private unnamed_addr constant [4 x i8] c"bus\00", align 1, !dbg !1897
@.str.23 = private unnamed_addr constant [8 x i8] c"options\00", align 1, !dbg !1899
@.str.24 = private unnamed_addr constant [3 x i8] c"  \00", align 1, !dbg !1903
@.str.25 = private unnamed_addr constant [31 x i8] c"Dependent: %02i - Priority %s\0A\00", align 1, !dbg !1905
@.str.26 = private unnamed_addr constant [70 x i8] c"%sport %#llx-%#llx, align %#llx, size %#llx, %i-bit address decoding\0A\00", align 1, !dbg !1910
@.str.27 = private unnamed_addr constant [46 x i8] c"%sMemory %#llx-%#llx, align %#llx, size %#llx\00", align 1, !dbg !1915
@.str.28 = private unnamed_addr constant [12 x i8] c", writeable\00", align 1, !dbg !1920
@.str.29 = private unnamed_addr constant [12 x i8] c", cacheable\00", align 1, !dbg !1922
@.str.30 = private unnamed_addr constant [15 x i8] c", range-length\00", align 1, !dbg !1924
@.str.31 = private unnamed_addr constant [13 x i8] c", shadowable\00", align 1, !dbg !1929
@.str.32 = private unnamed_addr constant [16 x i8] c", expansion ROM\00", align 1, !dbg !1934
@.str.33 = private unnamed_addr constant [6 x i8] c"8-bit\00", align 1, !dbg !1936
@.str.34 = private unnamed_addr constant [13 x i8] c"8-bit&16-bit\00", align 1, !dbg !1938
@.str.35 = private unnamed_addr constant [7 x i8] c"32-bit\00", align 1, !dbg !1940
@.str.36 = private unnamed_addr constant [7 x i8] c"16-bit\00", align 1, !dbg !1942
@.str.37 = private unnamed_addr constant [6 x i8] c", %s\0A\00", align 1, !dbg !1944
@.str.38 = private unnamed_addr constant [7 x i8] c"%sirq \00", align 1, !dbg !1946
@.str.39 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !1948
@.str.40 = private unnamed_addr constant [4 x i8] c"2/9\00", align 1, !dbg !1951
@.str.41 = private unnamed_addr constant [3 x i8] c"%i\00", align 1, !dbg !1953
@.str.42 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1, !dbg !1955
@.str.43 = private unnamed_addr constant [11 x i8] c" High-Edge\00", align 1, !dbg !1957
@.str.44 = private unnamed_addr constant [10 x i8] c" Low-Edge\00", align 1, !dbg !1959
@.str.45 = private unnamed_addr constant [12 x i8] c" High-Level\00", align 1, !dbg !1961
@.str.46 = private unnamed_addr constant [11 x i8] c" Low-Level\00", align 1, !dbg !1963
@.str.47 = private unnamed_addr constant [12 x i8] c" (optional)\00", align 1, !dbg !1965
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !1967
@.str.49 = private unnamed_addr constant [7 x i8] c"%sdma \00", align 1, !dbg !1969
@.str.50 = private unnamed_addr constant [4 x i8] c" %s\00", align 1, !dbg !1971
@.str.51 = private unnamed_addr constant [8 x i8] c" master\00", align 1, !dbg !1973
@.str.52 = private unnamed_addr constant [12 x i8] c" byte-count\00", align 1, !dbg !1975
@.str.53 = private unnamed_addr constant [12 x i8] c" word-count\00", align 1, !dbg !1977
@.str.54 = private unnamed_addr constant [7 x i8] c"type-A\00", align 1, !dbg !1979
@.str.55 = private unnamed_addr constant [7 x i8] c"type-B\00", align 1, !dbg !1981
@.str.56 = private unnamed_addr constant [7 x i8] c"type-F\00", align 1, !dbg !1983
@.str.57 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1, !dbg !1985
@.str.58 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1, !dbg !1987
@.str.59 = private unnamed_addr constant [3 x i8] c"id\00", align 1, !dbg !1989
@.str.60 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1993

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resources_show(ptr noundef %dmdev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2004 {
entry:
  %retval = alloca i64, align 8
  %dmdev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %pnp_res = alloca ptr, align 8
  %res = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr8 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr28 = alloca ptr, align 8
  %tmp31 = alloca ptr, align 8
  store ptr %dmdev, ptr %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmdev.addr, metadata !2006, metadata !DIExpression()), !dbg !2032
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2007, metadata !DIExpression()), !dbg !2033
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2008, metadata !DIExpression()), !dbg !2034
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !2035
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2009, metadata !DIExpression()), !dbg !2036
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2037
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2010, metadata !DIExpression()), !dbg !2037
  %0 = load ptr, ptr %dmdev.addr, align 8, !dbg !2037
  store ptr %0, ptr %__mptr, align 8, !dbg !2037
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2037
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2037
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2037
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2038
  %2 = load ptr, ptr %tmp, align 8, !dbg !2037
  store ptr %2, ptr %dev, align 8, !dbg !2036
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #16, !dbg !2039
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2012, metadata !DIExpression()), !dbg !2040
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_res) #16, !dbg !2041
  call void @llvm.dbg.declare(metadata ptr %pnp_res, metadata !2023, metadata !DIExpression()), !dbg !2042
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2024, metadata !DIExpression()), !dbg !2044
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2025, metadata !DIExpression()), !dbg !2046
  %3 = load ptr, ptr %dev, align 8, !dbg !2047
  %tobool = icmp ne ptr %3, null, !dbg !2047
  br i1 %tobool, label %if.end, label %if.then, !dbg !2049

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !2050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2050

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #17, !dbg !2051
  store ptr %call, ptr %buffer, align 8, !dbg !2052
  %4 = load ptr, ptr %buffer, align 8, !dbg !2053
  %tobool1 = icmp ne ptr %4, null, !dbg !2053
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2055

if.then2:                                         ; preds = %if.end
  store i64 -12, ptr %retval, align 8, !dbg !2056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2056

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %buffer, align 8, !dbg !2057
  %len = getelementptr inbounds %struct.pnp_info_buffer, ptr %5, i32 0, i32 3, !dbg !2058
  store i64 4096, ptr %len, align 8, !dbg !2059
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !2060
  %7 = load ptr, ptr %buffer, align 8, !dbg !2061
  %buffer4 = getelementptr inbounds %struct.pnp_info_buffer, ptr %7, i32 0, i32 0, !dbg !2062
  store ptr %6, ptr %buffer4, align 8, !dbg !2063
  %8 = load ptr, ptr %buffer, align 8, !dbg !2064
  %buffer5 = getelementptr inbounds %struct.pnp_info_buffer, ptr %8, i32 0, i32 0, !dbg !2065
  %9 = load ptr, ptr %buffer5, align 8, !dbg !2065
  %10 = load ptr, ptr %buffer, align 8, !dbg !2066
  %curr = getelementptr inbounds %struct.pnp_info_buffer, ptr %10, i32 0, i32 1, !dbg !2067
  store ptr %9, ptr %curr, align 8, !dbg !2068
  %11 = load ptr, ptr %buffer, align 8, !dbg !2069
  %12 = load ptr, ptr %dev, align 8, !dbg !2070
  %active = getelementptr inbounds %struct.pnp_dev, ptr %12, i32 0, i32 13, !dbg !2071
  %13 = load i32, ptr %active, align 8, !dbg !2071
  %tobool6 = icmp ne i32 %13, 0, !dbg !2070
  %14 = zext i1 %tobool6 to i64, !dbg !2070
  %cond = select i1 %tobool6, ptr @.str.2, ptr @.str.3, !dbg !2070
  %call7 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %11, ptr noundef @.str.1, ptr noundef %cond) #18, !dbg !2072
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #16, !dbg !2073
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !2026, metadata !DIExpression()), !dbg !2073
  %15 = load ptr, ptr %dev, align 8, !dbg !2073
  %resources = getelementptr inbounds %struct.pnp_dev, ptr %15, i32 0, i32 16, !dbg !2073
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !2073
  %16 = load ptr, ptr %next, align 8, !dbg !2073
  store ptr %16, ptr %__mptr8, align 8, !dbg !2073
  %17 = load ptr, ptr %__mptr8, align 8, !dbg !2073
  %add.ptr10 = getelementptr i8, ptr %17, i64 0, !dbg !2073
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !2073
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #16, !dbg !2074
  %18 = load ptr, ptr %tmp9, align 8, !dbg !2073
  store ptr %18, ptr %pnp_res, align 8, !dbg !2074
  br label %for.cond, !dbg !2074

for.cond:                                         ; preds = %for.inc, %if.end3
  %19 = load ptr, ptr %pnp_res, align 8, !dbg !2075
  %list = getelementptr inbounds %struct.pnp_resource, ptr %19, i32 0, i32 0, !dbg !2075
  %20 = load ptr, ptr %dev, align 8, !dbg !2075
  %resources11 = getelementptr inbounds %struct.pnp_dev, ptr %20, i32 0, i32 16, !dbg !2075
  %cmp = icmp eq ptr %list, %resources11, !dbg !2075
  %lnot = xor i1 %cmp, true, !dbg !2075
  br i1 %lnot, label %for.body, label %for.end, !dbg !2074

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %pnp_res, align 8, !dbg !2076
  %res12 = getelementptr inbounds %struct.pnp_resource, ptr %21, i32 0, i32 1, !dbg !2078
  store ptr %res12, ptr %res, align 8, !dbg !2079
  %22 = load ptr, ptr %buffer, align 8, !dbg !2080
  %23 = load ptr, ptr %res, align 8, !dbg !2081
  %call13 = call ptr @pnp_resource_type_name(ptr noundef %23) #18, !dbg !2082
  %call14 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %22, ptr noundef %call13) #18, !dbg !2083
  %24 = load ptr, ptr %res, align 8, !dbg !2084
  %flags = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 3, !dbg !2086
  %25 = load i64, ptr %flags, align 8, !dbg !2086
  %and = and i64 %25, 268435456, !dbg !2087
  %tobool15 = icmp ne i64 %and, 0, !dbg !2087
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2088

if.then16:                                        ; preds = %for.body
  %26 = load ptr, ptr %buffer, align 8, !dbg !2089
  %call17 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %26, ptr noundef @.str.4) #18, !dbg !2091
  br label %for.inc, !dbg !2092

if.end18:                                         ; preds = %for.body
  %27 = load ptr, ptr %res, align 8, !dbg !2093
  %call19 = call i64 @pnp_resource_type(ptr noundef %27) #18, !dbg !2094
  switch i64 %call19, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb
    i64 4096, label %sw.bb
    i64 1024, label %sw.bb25
    i64 2048, label %sw.bb25
  ], !dbg !2095

sw.bb:                                            ; preds = %if.end18, %if.end18, %if.end18
  %28 = load ptr, ptr %buffer, align 8, !dbg !2096
  %29 = load ptr, ptr %res, align 8, !dbg !2098
  %start = getelementptr inbounds %struct.resource, ptr %29, i32 0, i32 0, !dbg !2099
  %30 = load i64, ptr %start, align 8, !dbg !2099
  %31 = load ptr, ptr %res, align 8, !dbg !2100
  %end = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 1, !dbg !2101
  %32 = load i64, ptr %end, align 8, !dbg !2101
  %33 = load ptr, ptr %res, align 8, !dbg !2102
  %flags20 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 3, !dbg !2103
  %34 = load i64, ptr %flags20, align 8, !dbg !2103
  %and21 = and i64 %34, 2097152, !dbg !2104
  %tobool22 = icmp ne i64 %and21, 0, !dbg !2102
  %35 = zext i1 %tobool22 to i64, !dbg !2102
  %cond23 = select i1 %tobool22, ptr @.str.6, ptr @.str.7, !dbg !2102
  %call24 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %28, ptr noundef @.str.5, i64 noundef %30, i64 noundef %32, ptr noundef %cond23) #18, !dbg !2105
  br label %sw.epilog, !dbg !2106

sw.bb25:                                          ; preds = %if.end18, %if.end18
  %36 = load ptr, ptr %buffer, align 8, !dbg !2107
  %37 = load ptr, ptr %res, align 8, !dbg !2108
  %start26 = getelementptr inbounds %struct.resource, ptr %37, i32 0, i32 0, !dbg !2109
  %38 = load i64, ptr %start26, align 8, !dbg !2109
  %call27 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %36, ptr noundef @.str.8, i64 noundef %38) #18, !dbg !2110
  br label %sw.epilog, !dbg !2111

sw.epilog:                                        ; preds = %if.end18, %sw.bb25, %sw.bb
  br label %for.inc, !dbg !2112

for.inc:                                          ; preds = %sw.epilog, %if.then16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr28) #16, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %__mptr28, metadata !2029, metadata !DIExpression()), !dbg !2113
  %39 = load ptr, ptr %pnp_res, align 8, !dbg !2113
  %list29 = getelementptr inbounds %struct.pnp_resource, ptr %39, i32 0, i32 0, !dbg !2113
  %next30 = getelementptr inbounds %struct.list_head, ptr %list29, i32 0, i32 0, !dbg !2113
  %40 = load ptr, ptr %next30, align 8, !dbg !2113
  store ptr %40, ptr %__mptr28, align 8, !dbg !2113
  %41 = load ptr, ptr %__mptr28, align 8, !dbg !2113
  %add.ptr32 = getelementptr i8, ptr %41, i64 0, !dbg !2113
  store ptr %add.ptr32, ptr %tmp31, align 8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr28) #16, !dbg !2075
  %42 = load ptr, ptr %tmp31, align 8, !dbg !2113
  store ptr %42, ptr %pnp_res, align 8, !dbg !2075
  br label %for.cond, !dbg !2075, !llvm.loop !2114

for.end:                                          ; preds = %for.cond
  %43 = load ptr, ptr %buffer, align 8, !dbg !2118
  %curr33 = getelementptr inbounds %struct.pnp_info_buffer, ptr %43, i32 0, i32 1, !dbg !2119
  %44 = load ptr, ptr %curr33, align 8, !dbg !2119
  %45 = load ptr, ptr %buf.addr, align 8, !dbg !2120
  %sub.ptr.lhs.cast = ptrtoint ptr %44 to i64, !dbg !2121
  %sub.ptr.rhs.cast = ptrtoint ptr %45 to i64, !dbg !2121
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2121
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !2122
  store i32 %conv, ptr %ret, align 4, !dbg !2123
  %46 = load ptr, ptr %buffer, align 8, !dbg !2124
  call void @kfree(ptr noundef %46) #18, !dbg !2125
  %47 = load i32, ptr %ret, align 4, !dbg !2126
  %conv34 = sext i32 %47 to i64, !dbg !2126
  store i64 %conv34, ptr %retval, align 8, !dbg !2127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2127

cleanup:                                          ; preds = %for.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_res) #16, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #16, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !2128
  %48 = load i64, ptr %retval, align 8, !dbg !2128
  ret i64 %48, !dbg !2128
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resources_store(ptr noundef %dmdev, ptr noundef %attr, ptr noundef %ubuf, i64 noundef %count) #0 align 16 !dbg !2129 {
entry:
  %retval = alloca i64, align 8
  %dmdev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %ubuf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dmdev, ptr %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmdev.addr, metadata !2131, metadata !DIExpression()), !dbg !2146
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2132, metadata !DIExpression()), !dbg !2147
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !2133, metadata !DIExpression()), !dbg !2148
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2134, metadata !DIExpression()), !dbg !2149
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !2150
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2135, metadata !DIExpression()), !dbg !2151
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2152
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2136, metadata !DIExpression()), !dbg !2152
  %0 = load ptr, ptr %dmdev.addr, align 8, !dbg !2152
  store ptr %0, ptr %__mptr, align 8, !dbg !2152
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2152
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2152
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2152
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2153
  %2 = load ptr, ptr %tmp, align 8, !dbg !2152
  store ptr %2, ptr %dev, align 8, !dbg !2151
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #16, !dbg !2154
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !2138, metadata !DIExpression()), !dbg !2155
  %3 = load ptr, ptr %ubuf.addr, align 8, !dbg !2156
  store ptr %3, ptr %buf, align 8, !dbg !2155
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !2157
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !2139, metadata !DIExpression()), !dbg !2158
  store i32 0, ptr %retval1, align 4, !dbg !2158
  %4 = load ptr, ptr %dev, align 8, !dbg !2159
  %status = getelementptr inbounds %struct.pnp_dev, ptr %4, i32 0, i32 3, !dbg !2161
  %5 = load i32, ptr %status, align 4, !dbg !2161
  %and = and i32 %5, 1, !dbg !2162
  %tobool = icmp ne i32 %and, 0, !dbg !2162
  br i1 %tobool, label %if.then, label %if.end, !dbg !2163

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval1, align 4, !dbg !2164
  br label %do.body, !dbg !2166

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2168

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2168

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !2166
  %dev2 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 0, !dbg !2166
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef @.str.10) #19, !dbg !2166
  br label %done, !dbg !2170

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %buf, align 8, !dbg !2171
  %call = call ptr @skip_spaces(ptr noundef %7) #18, !dbg !2172
  store ptr %call, ptr %buf, align 8, !dbg !2173
  %8 = load ptr, ptr %buf, align 8, !dbg !2174
  %call3 = call i32 @strncasecmp(ptr noundef %8, ptr noundef @.str.11, i64 noundef 7) #18, !dbg !2176
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2176
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2177

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %dev, align 8, !dbg !2178
  %call6 = call i32 @pnp_disable_dev(ptr noundef %9) #18, !dbg !2180
  store i32 %call6, ptr %retval1, align 4, !dbg !2181
  br label %done, !dbg !2182

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %buf, align 8, !dbg !2183
  %call8 = call i32 @strncasecmp(ptr noundef %10, ptr noundef @.str.12, i64 noundef 8) #18, !dbg !2185
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2185
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !2186

if.then10:                                        ; preds = %if.end7
  %11 = load ptr, ptr %dev, align 8, !dbg !2187
  %call11 = call i32 @pnp_activate_dev(ptr noundef %11) #18, !dbg !2189
  store i32 %call11, ptr %retval1, align 4, !dbg !2190
  br label %done, !dbg !2191

if.end12:                                         ; preds = %if.end7
  %12 = load ptr, ptr %buf, align 8, !dbg !2192
  %call13 = call i32 @strncasecmp(ptr noundef %12, ptr noundef @.str.13, i64 noundef 4) #18, !dbg !2194
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2194
  br i1 %tobool14, label %if.end20, label %if.then15, !dbg !2195

if.then15:                                        ; preds = %if.end12
  %13 = load ptr, ptr %dev, align 8, !dbg !2196
  %active = getelementptr inbounds %struct.pnp_dev, ptr %13, i32 0, i32 13, !dbg !2199
  %14 = load i32, ptr %active, align 8, !dbg !2199
  %tobool16 = icmp ne i32 %14, 0, !dbg !2196
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2200

if.then17:                                        ; preds = %if.then15
  br label %done, !dbg !2201

if.end18:                                         ; preds = %if.then15
  %15 = load ptr, ptr %dev, align 8, !dbg !2202
  %call19 = call i32 @pnp_auto_config_dev(ptr noundef %15) #18, !dbg !2203
  store i32 %call19, ptr %retval1, align 4, !dbg !2204
  br label %done, !dbg !2205

if.end20:                                         ; preds = %if.end12
  %16 = load ptr, ptr %buf, align 8, !dbg !2206
  %call21 = call i32 @strncasecmp(ptr noundef %16, ptr noundef @.str.14, i64 noundef 4) #18, !dbg !2208
  %tobool22 = icmp ne i32 %call21, 0, !dbg !2208
  br i1 %tobool22, label %if.end29, label %if.then23, !dbg !2209

if.then23:                                        ; preds = %if.end20
  %17 = load ptr, ptr %dev, align 8, !dbg !2210
  %active24 = getelementptr inbounds %struct.pnp_dev, ptr %17, i32 0, i32 13, !dbg !2213
  %18 = load i32, ptr %active24, align 8, !dbg !2213
  %tobool25 = icmp ne i32 %18, 0, !dbg !2210
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2214

if.then26:                                        ; preds = %if.then23
  br label %done, !dbg !2215

if.end27:                                         ; preds = %if.then23
  %19 = load ptr, ptr %dev, align 8, !dbg !2216
  call void @pnp_init_resources(ptr noundef %19) #18, !dbg !2217
  %20 = load ptr, ptr %dev, align 8, !dbg !2218
  %call28 = call i32 @pnp_auto_config_dev(ptr noundef %20) #18, !dbg !2219
  store i32 %call28, ptr %retval1, align 4, !dbg !2220
  br label %done, !dbg !2221

if.end29:                                         ; preds = %if.end20
  %21 = load ptr, ptr %buf, align 8, !dbg !2222
  %call30 = call i32 @strncasecmp(ptr noundef %21, ptr noundef @.str.15, i64 noundef 5) #18, !dbg !2224
  %tobool31 = icmp ne i32 %call30, 0, !dbg !2224
  br i1 %tobool31, label %if.end37, label %if.then32, !dbg !2225

if.then32:                                        ; preds = %if.end29
  %22 = load ptr, ptr %dev, align 8, !dbg !2226
  %active33 = getelementptr inbounds %struct.pnp_dev, ptr %22, i32 0, i32 13, !dbg !2229
  %23 = load i32, ptr %active33, align 8, !dbg !2229
  %tobool34 = icmp ne i32 %23, 0, !dbg !2226
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !2230

if.then35:                                        ; preds = %if.then32
  br label %done, !dbg !2231

if.end36:                                         ; preds = %if.then32
  %24 = load ptr, ptr %dev, align 8, !dbg !2232
  call void @pnp_init_resources(ptr noundef %24) #18, !dbg !2233
  br label %done, !dbg !2234

if.end37:                                         ; preds = %if.end29
  %25 = load ptr, ptr %buf, align 8, !dbg !2235
  %call38 = call i32 @strncasecmp(ptr noundef %25, ptr noundef @.str.16, i64 noundef 3) #18, !dbg !2237
  %tobool39 = icmp ne i32 %call38, 0, !dbg !2237
  br i1 %tobool39, label %if.end49, label %if.then40, !dbg !2238

if.then40:                                        ; preds = %if.end37
  call void @mutex_lock(ptr noundef @pnp_res_mutex) #18, !dbg !2239
  %26 = load ptr, ptr %dev, align 8, !dbg !2241
  %protocol = getelementptr inbounds %struct.pnp_dev, ptr %26, i32 0, i32 8, !dbg !2241
  %27 = load ptr, ptr %protocol, align 8, !dbg !2241
  %get = getelementptr inbounds %struct.pnp_protocol, ptr %27, i32 0, i32 2, !dbg !2241
  %28 = load ptr, ptr %get, align 8, !dbg !2241
  %tobool41 = icmp ne ptr %28, null, !dbg !2241
  br i1 %tobool41, label %land.lhs.true, label %if.end48, !dbg !2241

land.lhs.true:                                    ; preds = %if.then40
  %29 = load ptr, ptr %dev, align 8, !dbg !2241
  %capabilities = getelementptr inbounds %struct.pnp_dev, ptr %29, i32 0, i32 14, !dbg !2241
  %30 = load i32, ptr %capabilities, align 4, !dbg !2241
  %and42 = and i32 %30, 1, !dbg !2241
  %tobool43 = icmp ne i32 %and42, 0, !dbg !2241
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !2243

if.then44:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %dev, align 8, !dbg !2244
  %protocol45 = getelementptr inbounds %struct.pnp_dev, ptr %31, i32 0, i32 8, !dbg !2245
  %32 = load ptr, ptr %protocol45, align 8, !dbg !2245
  %get46 = getelementptr inbounds %struct.pnp_protocol, ptr %32, i32 0, i32 2, !dbg !2246
  %33 = load ptr, ptr %get46, align 8, !dbg !2246
  %34 = load ptr, ptr %dev, align 8, !dbg !2247
  %call47 = call i32 %33(ptr noundef %34) #18, !dbg !2244
  br label %if.end48, !dbg !2244

if.end48:                                         ; preds = %if.then44, %land.lhs.true, %if.then40
  call void @mutex_unlock(ptr noundef @pnp_res_mutex) #18, !dbg !2248
  br label %done, !dbg !2249

if.end49:                                         ; preds = %if.end37
  %35 = load ptr, ptr %buf, align 8, !dbg !2250
  %call50 = call i32 @strncasecmp(ptr noundef %35, ptr noundef @.str.17, i64 noundef 3) #18, !dbg !2251
  %tobool51 = icmp ne i32 %call50, 0, !dbg !2251
  br i1 %tobool51, label %if.end105, label %if.then52, !dbg !2252

if.then52:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !2253
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2140, metadata !DIExpression()), !dbg !2254
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !2255
  call void @llvm.dbg.declare(metadata ptr %end, metadata !2143, metadata !DIExpression()), !dbg !2256
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !2257
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2144, metadata !DIExpression()), !dbg !2258
  %36 = load ptr, ptr %dev, align 8, !dbg !2259
  %active53 = getelementptr inbounds %struct.pnp_dev, ptr %36, i32 0, i32 13, !dbg !2261
  %37 = load i32, ptr %active53, align 8, !dbg !2261
  %tobool54 = icmp ne i32 %37, 0, !dbg !2259
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !2262

if.then55:                                        ; preds = %if.then52
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2263

if.end56:                                         ; preds = %if.then52
  %38 = load ptr, ptr %buf, align 8, !dbg !2264
  %add.ptr57 = getelementptr i8, ptr %38, i64 3, !dbg !2264
  store ptr %add.ptr57, ptr %buf, align 8, !dbg !2264
  %39 = load ptr, ptr %dev, align 8, !dbg !2265
  call void @pnp_init_resources(ptr noundef %39) #18, !dbg !2266
  call void @mutex_lock(ptr noundef @pnp_res_mutex) #18, !dbg !2267
  br label %while.cond, !dbg !2268

while.cond:                                       ; preds = %if.end102, %if.end56
  br label %while.body, !dbg !2268

while.body:                                       ; preds = %while.cond
  %40 = load ptr, ptr %buf, align 8, !dbg !2269
  %call58 = call ptr @skip_spaces(ptr noundef %40) #18, !dbg !2271
  store ptr %call58, ptr %buf, align 8, !dbg !2272
  %41 = load ptr, ptr %buf, align 8, !dbg !2273
  %call59 = call i32 @strncasecmp(ptr noundef %41, ptr noundef @.str.18, i64 noundef 2) #18, !dbg !2275
  %tobool60 = icmp ne i32 %call59, 0, !dbg !2275
  br i1 %tobool60, label %if.else, label %if.then61, !dbg !2276

if.then61:                                        ; preds = %while.body
  %42 = load ptr, ptr %buf, align 8, !dbg !2277
  %add.ptr62 = getelementptr i8, ptr %42, i64 2, !dbg !2279
  %call63 = call ptr @pnp_get_resource_value(ptr noundef %add.ptr62, i64 noundef 256, ptr noundef %start, ptr noundef %end, ptr noundef %flags) #18, !dbg !2280
  store ptr %call63, ptr %buf, align 8, !dbg !2281
  %43 = load ptr, ptr %dev, align 8, !dbg !2282
  %44 = load i64, ptr %start, align 8, !dbg !2283
  %45 = load i64, ptr %end, align 8, !dbg !2284
  %46 = load i64, ptr %flags, align 8, !dbg !2285
  %conv = trunc i64 %46 to i32, !dbg !2285
  %call64 = call ptr @pnp_add_io_resource(ptr noundef %43, i64 noundef %44, i64 noundef %45, i32 noundef %conv) #18, !dbg !2286
  br label %if.end102, !dbg !2287

if.else:                                          ; preds = %while.body
  %47 = load ptr, ptr %buf, align 8, !dbg !2288
  %call65 = call i32 @strncasecmp(ptr noundef %47, ptr noundef @.str.19, i64 noundef 3) #18, !dbg !2290
  %tobool66 = icmp ne i32 %call65, 0, !dbg !2290
  br i1 %tobool66, label %if.else72, label %if.then67, !dbg !2291

if.then67:                                        ; preds = %if.else
  %48 = load ptr, ptr %buf, align 8, !dbg !2292
  %add.ptr68 = getelementptr i8, ptr %48, i64 3, !dbg !2294
  %call69 = call ptr @pnp_get_resource_value(ptr noundef %add.ptr68, i64 noundef 512, ptr noundef %start, ptr noundef %end, ptr noundef %flags) #18, !dbg !2295
  store ptr %call69, ptr %buf, align 8, !dbg !2296
  %49 = load ptr, ptr %dev, align 8, !dbg !2297
  %50 = load i64, ptr %start, align 8, !dbg !2298
  %51 = load i64, ptr %end, align 8, !dbg !2299
  %52 = load i64, ptr %flags, align 8, !dbg !2300
  %conv70 = trunc i64 %52 to i32, !dbg !2300
  %call71 = call ptr @pnp_add_mem_resource(ptr noundef %49, i64 noundef %50, i64 noundef %51, i32 noundef %conv70) #18, !dbg !2301
  br label %if.end101, !dbg !2302

if.else72:                                        ; preds = %if.else
  %53 = load ptr, ptr %buf, align 8, !dbg !2303
  %call73 = call i32 @strncasecmp(ptr noundef %53, ptr noundef @.str.20, i64 noundef 3) #18, !dbg !2305
  %tobool74 = icmp ne i32 %call73, 0, !dbg !2305
  br i1 %tobool74, label %if.else81, label %if.then75, !dbg !2306

if.then75:                                        ; preds = %if.else72
  %54 = load ptr, ptr %buf, align 8, !dbg !2307
  %add.ptr76 = getelementptr i8, ptr %54, i64 3, !dbg !2309
  %call77 = call ptr @pnp_get_resource_value(ptr noundef %add.ptr76, i64 noundef 1024, ptr noundef %start, ptr noundef null, ptr noundef %flags) #18, !dbg !2310
  store ptr %call77, ptr %buf, align 8, !dbg !2311
  %55 = load ptr, ptr %dev, align 8, !dbg !2312
  %56 = load i64, ptr %start, align 8, !dbg !2313
  %conv78 = trunc i64 %56 to i32, !dbg !2313
  %57 = load i64, ptr %flags, align 8, !dbg !2314
  %conv79 = trunc i64 %57 to i32, !dbg !2314
  %call80 = call ptr @pnp_add_irq_resource(ptr noundef %55, i32 noundef %conv78, i32 noundef %conv79) #18, !dbg !2315
  br label %if.end100, !dbg !2316

if.else81:                                        ; preds = %if.else72
  %58 = load ptr, ptr %buf, align 8, !dbg !2317
  %call82 = call i32 @strncasecmp(ptr noundef %58, ptr noundef @.str.21, i64 noundef 3) #18, !dbg !2319
  %tobool83 = icmp ne i32 %call82, 0, !dbg !2319
  br i1 %tobool83, label %if.else90, label %if.then84, !dbg !2320

if.then84:                                        ; preds = %if.else81
  %59 = load ptr, ptr %buf, align 8, !dbg !2321
  %add.ptr85 = getelementptr i8, ptr %59, i64 3, !dbg !2323
  %call86 = call ptr @pnp_get_resource_value(ptr noundef %add.ptr85, i64 noundef 2048, ptr noundef %start, ptr noundef null, ptr noundef %flags) #18, !dbg !2324
  store ptr %call86, ptr %buf, align 8, !dbg !2325
  %60 = load ptr, ptr %dev, align 8, !dbg !2326
  %61 = load i64, ptr %start, align 8, !dbg !2327
  %conv87 = trunc i64 %61 to i32, !dbg !2327
  %62 = load i64, ptr %flags, align 8, !dbg !2328
  %conv88 = trunc i64 %62 to i32, !dbg !2328
  %call89 = call ptr @pnp_add_dma_resource(ptr noundef %60, i32 noundef %conv87, i32 noundef %conv88) #18, !dbg !2329
  br label %if.end99, !dbg !2330

if.else90:                                        ; preds = %if.else81
  %63 = load ptr, ptr %buf, align 8, !dbg !2331
  %call91 = call i32 @strncasecmp(ptr noundef %63, ptr noundef @.str.22, i64 noundef 3) #18, !dbg !2333
  %tobool92 = icmp ne i32 %call91, 0, !dbg !2333
  br i1 %tobool92, label %if.else97, label %if.then93, !dbg !2334

if.then93:                                        ; preds = %if.else90
  %64 = load ptr, ptr %buf, align 8, !dbg !2335
  %add.ptr94 = getelementptr i8, ptr %64, i64 3, !dbg !2337
  %call95 = call ptr @pnp_get_resource_value(ptr noundef %add.ptr94, i64 noundef 4096, ptr noundef %start, ptr noundef %end, ptr noundef null) #18, !dbg !2338
  store ptr %call95, ptr %buf, align 8, !dbg !2339
  %65 = load ptr, ptr %dev, align 8, !dbg !2340
  %66 = load i64, ptr %start, align 8, !dbg !2341
  %67 = load i64, ptr %end, align 8, !dbg !2342
  %call96 = call ptr @pnp_add_bus_resource(ptr noundef %65, i64 noundef %66, i64 noundef %67) #18, !dbg !2343
  br label %if.end98, !dbg !2344

if.else97:                                        ; preds = %if.else90
  br label %while.end, !dbg !2345

if.end98:                                         ; preds = %if.then93
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then84
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then75
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then67
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then61
  br label %while.cond, !dbg !2268, !llvm.loop !2346

while.end:                                        ; preds = %if.else97
  call void @mutex_unlock(ptr noundef @pnp_res_mutex) #18, !dbg !2348
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2349

cleanup:                                          ; preds = %while.end, %if.then55
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !2350
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !2350
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !2350
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup110 [
    i32 4, label %done
  ]

if.end105:                                        ; preds = %if.end49
  br label %done, !dbg !2351

done:                                             ; preds = %if.end105, %cleanup, %if.end48, %if.end36, %if.then35, %if.end27, %if.then26, %if.end18, %if.then17, %if.then10, %if.then5, %do.end
  call void @llvm.dbg.label(metadata !2145), !dbg !2352
  %68 = load i32, ptr %retval1, align 4, !dbg !2353
  %cmp = icmp slt i32 %68, 0, !dbg !2355
  br i1 %cmp, label %if.then107, label %if.end109, !dbg !2356

if.then107:                                       ; preds = %done
  %69 = load i32, ptr %retval1, align 4, !dbg !2357
  %conv108 = sext i32 %69 to i64, !dbg !2357
  store i64 %conv108, ptr %retval, align 8, !dbg !2358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !2358

if.end109:                                        ; preds = %done
  %70 = load i64, ptr %count.addr, align 8, !dbg !2359
  store i64 %70, ptr %retval, align 8, !dbg !2360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !2360

cleanup110:                                       ; preds = %if.end109, %if.then107, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #16, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !2361
  %71 = load i64, ptr %retval, align 8, !dbg !2361
  ret i64 %71, !dbg !2361
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !2362 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2366, metadata !DIExpression()), !dbg !2368
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2367, metadata !DIExpression()), !dbg !2369
  %0 = load i64, ptr %size.addr, align 8, !dbg !2370
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2371
  %or = or i32 %1, 256, !dbg !2372
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !2373
  ret ptr %call, !dbg !2374
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_printf(ptr noundef %buffer, ptr noundef %fmt, ...) #0 align 16 !dbg !2375 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !2379, metadata !DIExpression()), !dbg !2393
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !2380, metadata !DIExpression()), !dbg !2394
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #16, !dbg !2395
  call void @llvm.dbg.declare(metadata ptr %args, metadata !2381, metadata !DIExpression()), !dbg !2396
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #16, !dbg !2397
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2392, metadata !DIExpression()), !dbg !2398
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !2399
  %stop = getelementptr inbounds %struct.pnp_info_buffer, ptr %0, i32 0, i32 4, !dbg !2401
  %1 = load i32, ptr %stop, align 8, !dbg !2401
  %tobool = icmp ne i32 %1, 0, !dbg !2399
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2402

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !2403
  %error = getelementptr inbounds %struct.pnp_info_buffer, ptr %2, i32 0, i32 5, !dbg !2404
  %3 = load i32, ptr %error, align 4, !dbg !2404
  %tobool1 = icmp ne i32 %3, 0, !dbg !2403
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2405

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2406

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !2407
  call void @llvm.va_start(ptr %arraydecay), !dbg !2407
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !2408
  %curr = getelementptr inbounds %struct.pnp_info_buffer, ptr %4, i32 0, i32 1, !dbg !2409
  %5 = load ptr, ptr %curr, align 8, !dbg !2409
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !2410
  %len = getelementptr inbounds %struct.pnp_info_buffer, ptr %6, i32 0, i32 3, !dbg !2411
  %7 = load i64, ptr %len, align 8, !dbg !2411
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !2412
  %size = getelementptr inbounds %struct.pnp_info_buffer, ptr %8, i32 0, i32 2, !dbg !2413
  %9 = load i64, ptr %size, align 8, !dbg !2413
  %sub = sub i64 %7, %9, !dbg !2414
  %10 = load ptr, ptr %fmt.addr, align 8, !dbg !2415
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !2416
  %call = call i32 @vsnprintf(ptr noundef %5, i64 noundef %sub, ptr noundef %10, ptr noundef %arraydecay2) #18, !dbg !2417
  store i32 %call, ptr %res, align 4, !dbg !2418
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !2419
  call void @llvm.va_end(ptr %arraydecay3), !dbg !2419
  %11 = load ptr, ptr %buffer.addr, align 8, !dbg !2420
  %size4 = getelementptr inbounds %struct.pnp_info_buffer, ptr %11, i32 0, i32 2, !dbg !2422
  %12 = load i64, ptr %size4, align 8, !dbg !2422
  %13 = load i32, ptr %res, align 4, !dbg !2423
  %conv = sext i32 %13 to i64, !dbg !2423
  %add = add i64 %12, %conv, !dbg !2424
  %14 = load ptr, ptr %buffer.addr, align 8, !dbg !2425
  %len5 = getelementptr inbounds %struct.pnp_info_buffer, ptr %14, i32 0, i32 3, !dbg !2426
  %15 = load i64, ptr %len5, align 8, !dbg !2426
  %cmp = icmp uge i64 %add, %15, !dbg !2427
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !2428

if.then7:                                         ; preds = %if.end
  %16 = load ptr, ptr %buffer.addr, align 8, !dbg !2429
  %stop8 = getelementptr inbounds %struct.pnp_info_buffer, ptr %16, i32 0, i32 4, !dbg !2431
  store i32 1, ptr %stop8, align 8, !dbg !2432
  store i32 0, ptr %retval, align 4, !dbg !2433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2433

if.end9:                                          ; preds = %if.end
  %17 = load i32, ptr %res, align 4, !dbg !2434
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !2435
  %curr10 = getelementptr inbounds %struct.pnp_info_buffer, ptr %18, i32 0, i32 1, !dbg !2436
  %19 = load ptr, ptr %curr10, align 8, !dbg !2437
  %idx.ext = sext i32 %17 to i64, !dbg !2437
  %add.ptr = getelementptr i8, ptr %19, i64 %idx.ext, !dbg !2437
  store ptr %add.ptr, ptr %curr10, align 8, !dbg !2437
  %20 = load i32, ptr %res, align 4, !dbg !2438
  %conv11 = sext i32 %20 to i64, !dbg !2438
  %21 = load ptr, ptr %buffer.addr, align 8, !dbg !2439
  %size12 = getelementptr inbounds %struct.pnp_info_buffer, ptr %21, i32 0, i32 2, !dbg !2440
  %22 = load i64, ptr %size12, align 8, !dbg !2441
  %add13 = add i64 %22, %conv11, !dbg !2441
  store i64 %add13, ptr %size12, align 8, !dbg !2441
  %23 = load i32, ptr %res, align 4, !dbg !2442
  store i32 %23, ptr %retval, align 4, !dbg !2443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2443

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #16, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #16, !dbg !2444
  %24 = load i32, ptr %retval, align 4, !dbg !2444
  ret i32 %24, !dbg !2444
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2445 dso_local ptr @pnp_resource_type_name(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2448 dso_local i64 @pnp_resource_type(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2451 dso_local void @kfree(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !2454 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2456, metadata !DIExpression()), !dbg !2461
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2457, metadata !DIExpression()), !dbg !2462
  %0 = load i64, ptr %size.addr, align 8, !dbg !2463
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2464
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2465

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2466
  %tobool = icmp ne i64 %2, 0, !dbg !2466
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2467

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !2468
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2458, metadata !DIExpression()), !dbg !2469
  %3 = load i64, ptr %size.addr, align 8, !dbg !2470
  %cmp = icmp ugt i64 %3, 8192, !dbg !2472
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2473

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2474
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2475
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !2476
  store ptr %call, ptr %retval, align 8, !dbg !2477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2477

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2478
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !2478
  store i32 %call2, ptr %index, align 4, !dbg !2479
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2480
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2481
  %9 = ptrtoint ptr %8 to i64, !dbg !2481
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !2482
  %idxprom = zext i32 %call3 to i64, !dbg !2483
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2483
  %10 = load i32, ptr %index, align 4, !dbg !2484
  %idxprom4 = zext i32 %10 to i64, !dbg !2483
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2483
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2483
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2485
  %13 = load i64, ptr %size.addr, align 8, !dbg !2486
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !2487
  store ptr %call6, ptr %retval, align 8, !dbg !2488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2488

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !2489
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2490
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2491
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !2492
  store ptr %call8, ptr %retval, align 8, !dbg !2493
  br label %return, !dbg !2493

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2494
  ret ptr %16, !dbg !2494
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2495 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !2496 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2500, metadata !DIExpression()), !dbg !2502
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2501, metadata !DIExpression()), !dbg !2503
  %0 = load i64, ptr %size.addr, align 8, !dbg !2504
  %tobool = icmp ne i64 %0, 0, !dbg !2504
  br i1 %tobool, label %if.end, label %if.then, !dbg !2506

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2507
  br label %return, !dbg !2507

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2508
  %cmp = icmp ule i64 %1, 8, !dbg !2510
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2511

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2512
  br label %return, !dbg !2512

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2513
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2515
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2516

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2517
  %cmp4 = icmp ule i64 %3, 96, !dbg !2518
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2519

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2520
  br label %return, !dbg !2520

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2521
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2523
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2524

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2525
  %cmp9 = icmp ule i64 %5, 192, !dbg !2526
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2527

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2528
  br label %return, !dbg !2528

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2529
  %cmp12 = icmp ule i64 %6, 8, !dbg !2531
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2532

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2533
  br label %return, !dbg !2533

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2534
  %cmp15 = icmp ule i64 %7, 16, !dbg !2536
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2537

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2538
  br label %return, !dbg !2538

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2539
  %cmp18 = icmp ule i64 %8, 32, !dbg !2541
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2542

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2543
  br label %return, !dbg !2543

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2544
  %cmp21 = icmp ule i64 %9, 64, !dbg !2546
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2547

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2548
  br label %return, !dbg !2548

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2549
  %cmp24 = icmp ule i64 %10, 128, !dbg !2551
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2552

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2553
  br label %return, !dbg !2553

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2554
  %cmp27 = icmp ule i64 %11, 256, !dbg !2556
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2557

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2558
  br label %return, !dbg !2558

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2559
  %cmp30 = icmp ule i64 %12, 512, !dbg !2561
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2562

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2563
  br label %return, !dbg !2563

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2564
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2566
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2567

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2568
  br label %return, !dbg !2568

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2569
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2571
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2572

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2573
  br label %return, !dbg !2573

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2574
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2576
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2577

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2578
  br label %return, !dbg !2578

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2579
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2581
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2582

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2583
  br label %return, !dbg !2583

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2584
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2586
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2587

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2588
  br label %return, !dbg !2588

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2589
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2591
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2592

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2593
  br label %return, !dbg !2593

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2594
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2596
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2597

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2598
  br label %return, !dbg !2598

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2599
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2601
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2602

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2603
  br label %return, !dbg !2603

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2604
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2606
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2607

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2608
  br label %return, !dbg !2608

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2609
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2611
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2612

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2613
  br label %return, !dbg !2613

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2614
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2616
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2617

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2618
  br label %return, !dbg !2618

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2619
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2621
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2622

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2623
  br label %return, !dbg !2623

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2624, !range !2626, !noundef !331
  %tobool69 = trunc i8 %25 to i1, !dbg !2624
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2627

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2628

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #21, !dbg !2629, !srcloc !2632
  unreachable, !dbg !2629

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2633

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2634

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2635

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2637

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2635

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #16, !dbg !2639, !srcloc !2641
  br label %do.end75, !dbg !2639

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2635

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2642
  br label %return, !dbg !2642

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2643
  ret i32 %26, !dbg !2643
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2644 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !2650 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2654, metadata !DIExpression()), !dbg !2656
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2655, metadata !DIExpression()), !dbg !2657
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2658
  %and = and i32 %0, 17, !dbg !2658
  %cmp = icmp eq i32 %and, 0, !dbg !2658
  %lnot = xor i1 %cmp, true, !dbg !2658
  %lnot1 = xor i1 %lnot, true, !dbg !2658
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2658
  %conv = sext i32 %lnot.ext to i64, !dbg !2658
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2658
  %tobool = icmp ne i64 %expval, 0, !dbg !2658
  br i1 %tobool, label %if.then, label %if.end, !dbg !2660

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2661
  br label %return, !dbg !2661

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2662
  %and2 = and i32 %1, 1, !dbg !2664
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2664
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2665

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2666
  br label %return, !dbg !2666

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2667
  br label %return, !dbg !2667

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2669
  ret i32 %2, !dbg !2669
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2670 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2671 dso_local void @__compiletime_assert_206() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2672 dso_local i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2677 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2681 dso_local ptr @skip_spaces(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2685 dso_local i32 @strncasecmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2688 dso_local i32 @pnp_disable_dev(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2689 dso_local i32 @pnp_activate_dev(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2690 dso_local i32 @pnp_auto_config_dev(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2691 dso_local void @pnp_init_resources(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2692 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2696 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pnp_get_resource_value(ptr noundef %buf, i64 noundef %type, ptr noundef %start, ptr noundef %end, ptr noundef %flags) #0 align 16 !dbg !2697 {
entry:
  %buf.addr = alloca ptr, align 8
  %type.addr = alloca i64, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2702, metadata !DIExpression()), !dbg !2707
  store i64 %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2703, metadata !DIExpression()), !dbg !2708
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2704, metadata !DIExpression()), !dbg !2709
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2705, metadata !DIExpression()), !dbg !2710
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2706, metadata !DIExpression()), !dbg !2711
  %0 = load ptr, ptr %start.addr, align 8, !dbg !2712
  %tobool = icmp ne ptr %0, null, !dbg !2712
  br i1 %tobool, label %if.then, label %if.end, !dbg !2714

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %start.addr, align 8, !dbg !2715
  store i64 0, ptr %1, align 8, !dbg !2716
  br label %if.end, !dbg !2717

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %end.addr, align 8, !dbg !2718
  %tobool1 = icmp ne ptr %2, null, !dbg !2718
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2720

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %end.addr, align 8, !dbg !2721
  store i64 0, ptr %3, align 8, !dbg !2722
  br label %if.end3, !dbg !2723

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %flags.addr, align 8, !dbg !2724
  %tobool4 = icmp ne ptr %4, null, !dbg !2724
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2726

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %flags.addr, align 8, !dbg !2727
  store i64 0, ptr %5, align 8, !dbg !2728
  br label %if.end6, !dbg !2729

if.end6:                                          ; preds = %if.then5, %if.end3
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !2730
  %call = call ptr @skip_spaces(ptr noundef %6) #18, !dbg !2731
  store ptr %call, ptr %buf.addr, align 8, !dbg !2732
  %7 = load ptr, ptr %start.addr, align 8, !dbg !2733
  %tobool7 = icmp ne ptr %7, null, !dbg !2733
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !2735

if.then8:                                         ; preds = %if.end6
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2736
  %call9 = call i64 @simple_strtoull(ptr noundef %8, ptr noundef %buf.addr, i32 noundef 0) #18, !dbg !2738
  %9 = load ptr, ptr %start.addr, align 8, !dbg !2739
  store i64 %call9, ptr %9, align 8, !dbg !2740
  %10 = load ptr, ptr %end.addr, align 8, !dbg !2741
  %tobool10 = icmp ne ptr %10, null, !dbg !2741
  br i1 %tobool10, label %if.then11, label %if.end18, !dbg !2743

if.then11:                                        ; preds = %if.then8
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !2744
  %call12 = call ptr @skip_spaces(ptr noundef %11) #18, !dbg !2746
  store ptr %call12, ptr %buf.addr, align 8, !dbg !2747
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !2748
  %13 = load i8, ptr %12, align 1, !dbg !2750
  %conv = zext i8 %13 to i32, !dbg !2750
  %cmp = icmp eq i32 %conv, 45, !dbg !2751
  br i1 %cmp, label %if.then14, label %if.else, !dbg !2752

if.then14:                                        ; preds = %if.then11
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !2753
  %add.ptr = getelementptr i8, ptr %14, i64 1, !dbg !2755
  %call15 = call ptr @skip_spaces(ptr noundef %add.ptr) #18, !dbg !2756
  store ptr %call15, ptr %buf.addr, align 8, !dbg !2757
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !2758
  %call16 = call i64 @simple_strtoull(ptr noundef %15, ptr noundef %buf.addr, i32 noundef 0) #18, !dbg !2759
  %16 = load ptr, ptr %end.addr, align 8, !dbg !2760
  store i64 %call16, ptr %16, align 8, !dbg !2761
  br label %if.end17, !dbg !2762

if.else:                                          ; preds = %if.then11
  %17 = load ptr, ptr %start.addr, align 8, !dbg !2763
  %18 = load i64, ptr %17, align 8, !dbg !2764
  %19 = load ptr, ptr %end.addr, align 8, !dbg !2765
  store i64 %18, ptr %19, align 8, !dbg !2766
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  br label %if.end18, !dbg !2767

if.end18:                                         ; preds = %if.end17, %if.then8
  br label %if.end19, !dbg !2768

if.end19:                                         ; preds = %if.end18, %if.end6
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !2769
  ret ptr %20, !dbg !2770
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2771 dso_local ptr @pnp_add_io_resource(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2774 dso_local ptr @pnp_add_mem_resource(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2775 dso_local ptr @pnp_add_irq_resource(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2778 dso_local ptr @pnp_add_dma_resource(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2779 dso_local ptr @pnp_add_bus_resource(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2782 dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @options_show(ptr noundef %dmdev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2787 {
entry:
  %retval = alloca i64, align 8
  %dmdev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %option = alloca ptr, align 8
  %ret = alloca i32, align 4
  %dep = alloca i32, align 4
  %set = alloca i32, align 4
  %indent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr3 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  store ptr %dmdev, ptr %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmdev.addr, metadata !2789, metadata !DIExpression()), !dbg !2807
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2790, metadata !DIExpression()), !dbg !2808
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2791, metadata !DIExpression()), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2792, metadata !DIExpression()), !dbg !2811
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2812
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2793, metadata !DIExpression()), !dbg !2812
  %0 = load ptr, ptr %dmdev.addr, align 8, !dbg !2812
  store ptr %0, ptr %__mptr, align 8, !dbg !2812
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2812
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2812
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2812
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2813
  %2 = load ptr, ptr %tmp, align 8, !dbg !2812
  store ptr %2, ptr %dev, align 8, !dbg !2811
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #16, !dbg !2814
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2795, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #16, !dbg !2816
  call void @llvm.dbg.declare(metadata ptr %option, metadata !2796, metadata !DIExpression()), !dbg !2817
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2818
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2797, metadata !DIExpression()), !dbg !2819
  call void @llvm.lifetime.start.p0(i64 4, ptr %dep) #16, !dbg !2818
  call void @llvm.dbg.declare(metadata ptr %dep, metadata !2798, metadata !DIExpression()), !dbg !2820
  store i32 0, ptr %dep, align 4, !dbg !2820
  call void @llvm.lifetime.start.p0(i64 4, ptr %set) #16, !dbg !2818
  call void @llvm.dbg.declare(metadata ptr %set, metadata !2799, metadata !DIExpression()), !dbg !2821
  store i32 0, ptr %set, align 4, !dbg !2821
  call void @llvm.lifetime.start.p0(i64 8, ptr %indent) #16, !dbg !2822
  call void @llvm.dbg.declare(metadata ptr %indent, metadata !2800, metadata !DIExpression()), !dbg !2823
  %call = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #17, !dbg !2824
  store ptr %call, ptr %buffer, align 8, !dbg !2825
  %3 = load ptr, ptr %buffer, align 8, !dbg !2826
  %tobool = icmp ne ptr %3, null, !dbg !2826
  br i1 %tobool, label %if.end, label %if.then, !dbg !2828

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !2829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2829

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buffer, align 8, !dbg !2830
  %len = getelementptr inbounds %struct.pnp_info_buffer, ptr %4, i32 0, i32 3, !dbg !2831
  store i64 4096, ptr %len, align 8, !dbg !2832
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !2833
  %6 = load ptr, ptr %buffer, align 8, !dbg !2834
  %buffer1 = getelementptr inbounds %struct.pnp_info_buffer, ptr %6, i32 0, i32 0, !dbg !2835
  store ptr %5, ptr %buffer1, align 8, !dbg !2836
  %7 = load ptr, ptr %buffer, align 8, !dbg !2837
  %buffer2 = getelementptr inbounds %struct.pnp_info_buffer, ptr %7, i32 0, i32 0, !dbg !2838
  %8 = load ptr, ptr %buffer2, align 8, !dbg !2838
  %9 = load ptr, ptr %buffer, align 8, !dbg !2839
  %curr = getelementptr inbounds %struct.pnp_info_buffer, ptr %9, i32 0, i32 1, !dbg !2840
  store ptr %8, ptr %curr, align 8, !dbg !2841
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #16, !dbg !2842
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !2801, metadata !DIExpression()), !dbg !2842
  %10 = load ptr, ptr %dev, align 8, !dbg !2842
  %options = getelementptr inbounds %struct.pnp_dev, ptr %10, i32 0, i32 17, !dbg !2842
  %next = getelementptr inbounds %struct.list_head, ptr %options, i32 0, i32 0, !dbg !2842
  %11 = load ptr, ptr %next, align 8, !dbg !2842
  store ptr %11, ptr %__mptr3, align 8, !dbg !2842
  %12 = load ptr, ptr %__mptr3, align 8, !dbg !2842
  %add.ptr5 = getelementptr i8, ptr %12, i64 0, !dbg !2842
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #16, !dbg !2843
  %13 = load ptr, ptr %tmp4, align 8, !dbg !2842
  store ptr %13, ptr %option, align 8, !dbg !2843
  br label %for.cond, !dbg !2843

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load ptr, ptr %option, align 8, !dbg !2844
  %list = getelementptr inbounds %struct.pnp_option, ptr %14, i32 0, i32 0, !dbg !2844
  %15 = load ptr, ptr %dev, align 8, !dbg !2844
  %options6 = getelementptr inbounds %struct.pnp_dev, ptr %15, i32 0, i32 17, !dbg !2844
  %cmp = icmp eq ptr %list, %options6, !dbg !2844
  %lnot = xor i1 %cmp, true, !dbg !2844
  br i1 %lnot, label %for.body, label %for.end, !dbg !2843

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %option, align 8, !dbg !2845
  %call7 = call i32 @pnp_option_is_dependent(ptr noundef %16) #18, !dbg !2848
  %tobool8 = icmp ne i32 %call7, 0, !dbg !2848
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2849

if.then9:                                         ; preds = %for.body
  store ptr @.str.24, ptr %indent, align 8, !dbg !2850
  %17 = load i32, ptr %dep, align 4, !dbg !2852
  %tobool10 = icmp ne i32 %17, 0, !dbg !2852
  br i1 %tobool10, label %lor.lhs.false, label %if.then13, !dbg !2854

lor.lhs.false:                                    ; preds = %if.then9
  %18 = load ptr, ptr %option, align 8, !dbg !2855
  %call11 = call i32 @pnp_option_set(ptr noundef %18) #18, !dbg !2856
  %19 = load i32, ptr %set, align 4, !dbg !2857
  %cmp12 = icmp ne i32 %call11, %19, !dbg !2858
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !2859

if.then13:                                        ; preds = %lor.lhs.false, %if.then9
  %20 = load ptr, ptr %option, align 8, !dbg !2860
  %call14 = call i32 @pnp_option_set(ptr noundef %20) #18, !dbg !2862
  store i32 %call14, ptr %set, align 4, !dbg !2863
  store i32 1, ptr %dep, align 4, !dbg !2864
  %21 = load ptr, ptr %buffer, align 8, !dbg !2865
  %22 = load i32, ptr %set, align 4, !dbg !2866
  %23 = load ptr, ptr %option, align 8, !dbg !2867
  %call15 = call ptr @pnp_option_priority_name(ptr noundef %23) #18, !dbg !2868
  %call16 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %21, ptr noundef @.str.25, i32 noundef %22, ptr noundef %call15) #18, !dbg !2869
  br label %if.end17, !dbg !2870

if.end17:                                         ; preds = %if.then13, %lor.lhs.false
  br label %if.end18, !dbg !2871

if.else:                                          ; preds = %for.body
  store i32 0, ptr %dep, align 4, !dbg !2872
  store ptr @.str.7, ptr %indent, align 8, !dbg !2874
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end17
  %24 = load ptr, ptr %buffer, align 8, !dbg !2875
  %25 = load ptr, ptr %indent, align 8, !dbg !2876
  %26 = load ptr, ptr %option, align 8, !dbg !2877
  call void @pnp_print_option(ptr noundef %24, ptr noundef %25, ptr noundef %26) #18, !dbg !2878
  br label %for.inc, !dbg !2879

for.inc:                                          ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #16, !dbg !2880
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !2804, metadata !DIExpression()), !dbg !2880
  %27 = load ptr, ptr %option, align 8, !dbg !2880
  %list20 = getelementptr inbounds %struct.pnp_option, ptr %27, i32 0, i32 0, !dbg !2880
  %next21 = getelementptr inbounds %struct.list_head, ptr %list20, i32 0, i32 0, !dbg !2880
  %28 = load ptr, ptr %next21, align 8, !dbg !2880
  store ptr %28, ptr %__mptr19, align 8, !dbg !2880
  %29 = load ptr, ptr %__mptr19, align 8, !dbg !2880
  %add.ptr23 = getelementptr i8, ptr %29, i64 0, !dbg !2880
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !2880
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #16, !dbg !2844
  %30 = load ptr, ptr %tmp22, align 8, !dbg !2880
  store ptr %30, ptr %option, align 8, !dbg !2844
  br label %for.cond, !dbg !2844, !llvm.loop !2881

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %buffer, align 8, !dbg !2883
  %curr24 = getelementptr inbounds %struct.pnp_info_buffer, ptr %31, i32 0, i32 1, !dbg !2884
  %32 = load ptr, ptr %curr24, align 8, !dbg !2884
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !2885
  %sub.ptr.lhs.cast = ptrtoint ptr %32 to i64, !dbg !2886
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i64, !dbg !2886
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2886
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !2887
  store i32 %conv, ptr %ret, align 4, !dbg !2888
  %34 = load ptr, ptr %buffer, align 8, !dbg !2889
  call void @kfree(ptr noundef %34) #18, !dbg !2890
  %35 = load i32, ptr %ret, align 4, !dbg !2891
  %conv25 = sext i32 %35 to i64, !dbg !2891
  store i64 %conv25, ptr %retval, align 8, !dbg !2892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2892

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %indent) #16, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 4, ptr %set) #16, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 4, ptr %dep) #16, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #16, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #16, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !2893
  %36 = load i64, ptr %retval, align 8, !dbg !2893
  ret i64 %36, !dbg !2893
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_option_is_dependent(ptr noundef %option) #14 align 16 !dbg !2894 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2898, metadata !DIExpression()), !dbg !2899
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2900
  %flags = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 1, !dbg !2901
  %1 = load i32, ptr %flags, align 8, !dbg !2901
  %and = and i32 %1, -2147483648, !dbg !2902
  %tobool = icmp ne i32 %and, 0, !dbg !2900
  %2 = zext i1 %tobool to i64, !dbg !2900
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2900
  ret i32 %cond, !dbg !2903
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_option_set(ptr noundef %option) #14 align 16 !dbg !2904 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2908, metadata !DIExpression()), !dbg !2909
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2910
  %flags = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 1, !dbg !2911
  %1 = load i32, ptr %flags, align 8, !dbg !2911
  %shr = lshr i32 %1, 12, !dbg !2912
  %and = and i32 %shr, 65535, !dbg !2913
  ret i32 %and, !dbg !2914
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2915 dso_local ptr @pnp_option_priority_name(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_print_option(ptr noundef %buffer, ptr noundef %space, ptr noundef %option) #0 align 16 !dbg !2918 {
entry:
  %buffer.addr = alloca ptr, align 8
  %space.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !2922, metadata !DIExpression()), !dbg !2925
  store ptr %space, ptr %space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %space.addr, metadata !2923, metadata !DIExpression()), !dbg !2926
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2924, metadata !DIExpression()), !dbg !2927
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2928
  %type = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 2, !dbg !2929
  %1 = load i64, ptr %type, align 8, !dbg !2929
  switch i64 %1, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb1
    i64 1024, label %sw.bb3
    i64 2048, label %sw.bb5
  ], !dbg !2930

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !2931
  %3 = load ptr, ptr %space.addr, align 8, !dbg !2933
  %4 = load ptr, ptr %option.addr, align 8, !dbg !2934
  %u = getelementptr inbounds %struct.pnp_option, ptr %4, i32 0, i32 3, !dbg !2935
  call void @pnp_print_port(ptr noundef %2, ptr noundef %3, ptr noundef %u) #18, !dbg !2936
  br label %sw.epilog, !dbg !2937

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !2938
  %6 = load ptr, ptr %space.addr, align 8, !dbg !2939
  %7 = load ptr, ptr %option.addr, align 8, !dbg !2940
  %u2 = getelementptr inbounds %struct.pnp_option, ptr %7, i32 0, i32 3, !dbg !2941
  call void @pnp_print_mem(ptr noundef %5, ptr noundef %6, ptr noundef %u2) #18, !dbg !2942
  br label %sw.epilog, !dbg !2943

sw.bb3:                                           ; preds = %entry
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !2944
  %9 = load ptr, ptr %space.addr, align 8, !dbg !2945
  %10 = load ptr, ptr %option.addr, align 8, !dbg !2946
  %u4 = getelementptr inbounds %struct.pnp_option, ptr %10, i32 0, i32 3, !dbg !2947
  call void @pnp_print_irq(ptr noundef %8, ptr noundef %9, ptr noundef %u4) #18, !dbg !2948
  br label %sw.epilog, !dbg !2949

sw.bb5:                                           ; preds = %entry
  %11 = load ptr, ptr %buffer.addr, align 8, !dbg !2950
  %12 = load ptr, ptr %space.addr, align 8, !dbg !2951
  %13 = load ptr, ptr %option.addr, align 8, !dbg !2952
  %u6 = getelementptr inbounds %struct.pnp_option, ptr %13, i32 0, i32 3, !dbg !2953
  call void @pnp_print_dma(ptr noundef %11, ptr noundef %12, ptr noundef %u6) #18, !dbg !2954
  br label %sw.epilog, !dbg !2955

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret void, !dbg !2956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_print_port(ptr noundef %buffer, ptr noundef %space, ptr noundef %port) #0 align 16 !dbg !2957 {
entry:
  %buffer.addr = alloca ptr, align 8
  %space.addr = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !2962, metadata !DIExpression()), !dbg !2965
  store ptr %space, ptr %space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %space.addr, metadata !2963, metadata !DIExpression()), !dbg !2966
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !2964, metadata !DIExpression()), !dbg !2967
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !2968
  %1 = load ptr, ptr %space.addr, align 8, !dbg !2969
  %2 = load ptr, ptr %port.addr, align 8, !dbg !2970
  %min = getelementptr inbounds %struct.pnp_port, ptr %2, i32 0, i32 0, !dbg !2971
  %3 = load i64, ptr %min, align 8, !dbg !2971
  %4 = load ptr, ptr %port.addr, align 8, !dbg !2972
  %max = getelementptr inbounds %struct.pnp_port, ptr %4, i32 0, i32 1, !dbg !2973
  %5 = load i64, ptr %max, align 8, !dbg !2973
  %6 = load ptr, ptr %port.addr, align 8, !dbg !2974
  %align = getelementptr inbounds %struct.pnp_port, ptr %6, i32 0, i32 2, !dbg !2975
  %7 = load i64, ptr %align, align 8, !dbg !2975
  %tobool = icmp ne i64 %7, 0, !dbg !2974
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2974

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %port.addr, align 8, !dbg !2976
  %align1 = getelementptr inbounds %struct.pnp_port, ptr %8, i32 0, i32 2, !dbg !2977
  %9 = load i64, ptr %align1, align 8, !dbg !2977
  %sub = sub i64 %9, 1, !dbg !2978
  br label %cond.end, !dbg !2974

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2974

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !2974
  %10 = load ptr, ptr %port.addr, align 8, !dbg !2979
  %size = getelementptr inbounds %struct.pnp_port, ptr %10, i32 0, i32 3, !dbg !2980
  %11 = load i64, ptr %size, align 8, !dbg !2980
  %12 = load ptr, ptr %port.addr, align 8, !dbg !2981
  %flags = getelementptr inbounds %struct.pnp_port, ptr %12, i32 0, i32 4, !dbg !2982
  %13 = load i8, ptr %flags, align 8, !dbg !2982
  %conv = zext i8 %13 to i32, !dbg !2981
  %and = and i32 %conv, 1, !dbg !2983
  %tobool2 = icmp ne i32 %and, 0, !dbg !2981
  %14 = zext i1 %tobool2 to i64, !dbg !2981
  %cond3 = select i1 %tobool2, i32 16, i32 10, !dbg !2981
  %call = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %0, ptr noundef @.str.26, ptr noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %cond, i64 noundef %11, i32 noundef %cond3) #18, !dbg !2984
  ret void, !dbg !2985
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_print_mem(ptr noundef %buffer, ptr noundef %space, ptr noundef %mem) #0 align 16 !dbg !2986 {
entry:
  %buffer.addr = alloca ptr, align 8
  %space.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !2991, metadata !DIExpression()), !dbg !2995
  store ptr %space, ptr %space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %space.addr, metadata !2992, metadata !DIExpression()), !dbg !2996
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !2993, metadata !DIExpression()), !dbg !2997
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !2998
  call void @llvm.dbg.declare(metadata ptr %s, metadata !2994, metadata !DIExpression()), !dbg !2999
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !3000
  %1 = load ptr, ptr %space.addr, align 8, !dbg !3001
  %2 = load ptr, ptr %mem.addr, align 8, !dbg !3002
  %min = getelementptr inbounds %struct.pnp_mem, ptr %2, i32 0, i32 0, !dbg !3003
  %3 = load i64, ptr %min, align 8, !dbg !3003
  %4 = load ptr, ptr %mem.addr, align 8, !dbg !3004
  %max = getelementptr inbounds %struct.pnp_mem, ptr %4, i32 0, i32 1, !dbg !3005
  %5 = load i64, ptr %max, align 8, !dbg !3005
  %6 = load ptr, ptr %mem.addr, align 8, !dbg !3006
  %align = getelementptr inbounds %struct.pnp_mem, ptr %6, i32 0, i32 2, !dbg !3007
  %7 = load i64, ptr %align, align 8, !dbg !3007
  %8 = load ptr, ptr %mem.addr, align 8, !dbg !3008
  %size = getelementptr inbounds %struct.pnp_mem, ptr %8, i32 0, i32 3, !dbg !3009
  %9 = load i64, ptr %size, align 8, !dbg !3009
  %call = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %0, ptr noundef @.str.27, ptr noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9) #18, !dbg !3010
  %10 = load ptr, ptr %mem.addr, align 8, !dbg !3011
  %flags = getelementptr inbounds %struct.pnp_mem, ptr %10, i32 0, i32 4, !dbg !3013
  %11 = load i8, ptr %flags, align 8, !dbg !3013
  %conv = zext i8 %11 to i32, !dbg !3011
  %and = and i32 %conv, 1, !dbg !3014
  %tobool = icmp ne i32 %and, 0, !dbg !3014
  br i1 %tobool, label %if.then, label %if.end, !dbg !3015

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %buffer.addr, align 8, !dbg !3016
  %call1 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %12, ptr noundef @.str.28) #18, !dbg !3017
  br label %if.end, !dbg !3017

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %mem.addr, align 8, !dbg !3018
  %flags2 = getelementptr inbounds %struct.pnp_mem, ptr %13, i32 0, i32 4, !dbg !3020
  %14 = load i8, ptr %flags2, align 8, !dbg !3020
  %conv3 = zext i8 %14 to i32, !dbg !3018
  %and4 = and i32 %conv3, 2, !dbg !3021
  %tobool5 = icmp ne i32 %and4, 0, !dbg !3021
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !3022

if.then6:                                         ; preds = %if.end
  %15 = load ptr, ptr %buffer.addr, align 8, !dbg !3023
  %call7 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %15, ptr noundef @.str.29) #18, !dbg !3024
  br label %if.end8, !dbg !3024

if.end8:                                          ; preds = %if.then6, %if.end
  %16 = load ptr, ptr %mem.addr, align 8, !dbg !3025
  %flags9 = getelementptr inbounds %struct.pnp_mem, ptr %16, i32 0, i32 4, !dbg !3027
  %17 = load i8, ptr %flags9, align 8, !dbg !3027
  %conv10 = zext i8 %17 to i32, !dbg !3025
  %and11 = and i32 %conv10, 4, !dbg !3028
  %tobool12 = icmp ne i32 %and11, 0, !dbg !3028
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !3029

if.then13:                                        ; preds = %if.end8
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !3030
  %call14 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %18, ptr noundef @.str.30) #18, !dbg !3031
  br label %if.end15, !dbg !3031

if.end15:                                         ; preds = %if.then13, %if.end8
  %19 = load ptr, ptr %mem.addr, align 8, !dbg !3032
  %flags16 = getelementptr inbounds %struct.pnp_mem, ptr %19, i32 0, i32 4, !dbg !3034
  %20 = load i8, ptr %flags16, align 8, !dbg !3034
  %conv17 = zext i8 %20 to i32, !dbg !3032
  %and18 = and i32 %conv17, 32, !dbg !3035
  %tobool19 = icmp ne i32 %and18, 0, !dbg !3035
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !3036

if.then20:                                        ; preds = %if.end15
  %21 = load ptr, ptr %buffer.addr, align 8, !dbg !3037
  %call21 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %21, ptr noundef @.str.31) #18, !dbg !3038
  br label %if.end22, !dbg !3038

if.end22:                                         ; preds = %if.then20, %if.end15
  %22 = load ptr, ptr %mem.addr, align 8, !dbg !3039
  %flags23 = getelementptr inbounds %struct.pnp_mem, ptr %22, i32 0, i32 4, !dbg !3041
  %23 = load i8, ptr %flags23, align 8, !dbg !3041
  %conv24 = zext i8 %23 to i32, !dbg !3039
  %and25 = and i32 %conv24, 64, !dbg !3042
  %tobool26 = icmp ne i32 %and25, 0, !dbg !3042
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !3043

if.then27:                                        ; preds = %if.end22
  %24 = load ptr, ptr %buffer.addr, align 8, !dbg !3044
  %call28 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %24, ptr noundef @.str.32) #18, !dbg !3045
  br label %if.end29, !dbg !3045

if.end29:                                         ; preds = %if.then27, %if.end22
  %25 = load ptr, ptr %mem.addr, align 8, !dbg !3046
  %flags30 = getelementptr inbounds %struct.pnp_mem, ptr %25, i32 0, i32 4, !dbg !3047
  %26 = load i8, ptr %flags30, align 8, !dbg !3047
  %conv31 = zext i8 %26 to i32, !dbg !3046
  %and32 = and i32 %conv31, 24, !dbg !3048
  switch i32 %and32, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb33
    i32 24, label %sw.bb34
  ], !dbg !3049

sw.bb:                                            ; preds = %if.end29
  store ptr @.str.33, ptr %s, align 8, !dbg !3050
  br label %sw.epilog, !dbg !3052

sw.bb33:                                          ; preds = %if.end29
  store ptr @.str.34, ptr %s, align 8, !dbg !3053
  br label %sw.epilog, !dbg !3054

sw.bb34:                                          ; preds = %if.end29
  store ptr @.str.35, ptr %s, align 8, !dbg !3055
  br label %sw.epilog, !dbg !3056

sw.default:                                       ; preds = %if.end29
  store ptr @.str.36, ptr %s, align 8, !dbg !3057
  br label %sw.epilog, !dbg !3058

sw.epilog:                                        ; preds = %sw.default, %sw.bb34, %sw.bb33, %sw.bb
  %27 = load ptr, ptr %buffer.addr, align 8, !dbg !3059
  %28 = load ptr, ptr %s, align 8, !dbg !3060
  %call35 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %27, ptr noundef @.str.37, ptr noundef %28) #18, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !3062
  ret void, !dbg !3062
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_print_irq(ptr noundef %buffer, ptr noundef %space, ptr noundef %irq) #0 align 16 !dbg !3063 {
entry:
  %buffer.addr = alloca ptr, align 8
  %space.addr = alloca ptr, align 8
  %irq.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3068, metadata !DIExpression()), !dbg !3073
  store ptr %space, ptr %space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %space.addr, metadata !3069, metadata !DIExpression()), !dbg !3074
  store ptr %irq, ptr %irq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3070, metadata !DIExpression()), !dbg !3075
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #16, !dbg !3076
  call void @llvm.dbg.declare(metadata ptr %first, metadata !3071, metadata !DIExpression()), !dbg !3077
  store i32 1, ptr %first, align 4, !dbg !3077
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !3076
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3072, metadata !DIExpression()), !dbg !3078
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !3079
  %1 = load ptr, ptr %space.addr, align 8, !dbg !3080
  %call = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %0, ptr noundef @.str.38, ptr noundef %1) #18, !dbg !3081
  store i32 0, ptr %i, align 4, !dbg !3082
  br label %for.cond, !dbg !3084

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !3085
  %cmp = icmp slt i32 %2, 256, !dbg !3087
  br i1 %cmp, label %for.body, label %for.end, !dbg !3088

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !3089
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !3089
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !3089

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %irq.addr, align 8, !dbg !3089
  %map = getelementptr inbounds %struct.pnp_irq, ptr %5, i32 0, i32 0, !dbg !3089
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map, i32 0, i32 0, !dbg !3089
  %arraydecay = getelementptr inbounds [4 x i64], ptr %bits, i64 0, i64 0, !dbg !3089
  %6 = ptrtoint ptr %arraydecay to i64, !dbg !3089
  %cmp1 = icmp ne i64 %6, 0, !dbg !3089
  %conv = zext i1 %cmp1 to i32, !dbg !3089
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3089
  br i1 %7, label %land.lhs.true2, label %cond.false, !dbg !3089

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %irq.addr, align 8, !dbg !3089
  %map3 = getelementptr inbounds %struct.pnp_irq, ptr %8, i32 0, i32 0, !dbg !3089
  %bits4 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map3, i32 0, i32 0, !dbg !3089
  %arraydecay5 = getelementptr inbounds [4 x i64], ptr %bits4, i64 0, i64 0, !dbg !3089
  %9 = ptrtoint ptr %arraydecay5 to i64, !dbg !3089
  %cmp6 = icmp ne i64 %9, 0, !dbg !3089
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !3089

land.lhs.true8:                                   ; preds = %land.lhs.true2
  %10 = load ptr, ptr %irq.addr, align 8, !dbg !3089
  %map9 = getelementptr inbounds %struct.pnp_irq, ptr %10, i32 0, i32 0, !dbg !3089
  %bits10 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map9, i32 0, i32 0, !dbg !3089
  %arraydecay11 = getelementptr inbounds [4 x i64], ptr %bits10, i64 0, i64 0, !dbg !3089
  %11 = load i64, ptr %arraydecay11, align 8, !dbg !3089
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !3089
  br i1 %12, label %cond.true, label %cond.false, !dbg !3091

cond.true:                                        ; preds = %land.lhs.true8
  %13 = load i32, ptr %i, align 4, !dbg !3089
  %conv12 = sext i32 %13 to i64, !dbg !3089
  %14 = load ptr, ptr %irq.addr, align 8, !dbg !3089
  %map13 = getelementptr inbounds %struct.pnp_irq, ptr %14, i32 0, i32 0, !dbg !3089
  %bits14 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map13, i32 0, i32 0, !dbg !3089
  %arraydecay15 = getelementptr inbounds [4 x i64], ptr %bits14, i64 0, i64 0, !dbg !3089
  %call16 = call zeroext i1 @const_test_bit(i64 noundef %conv12, ptr noundef %arraydecay15) #18, !dbg !3089
  br i1 %call16, label %if.then, label %if.end35, !dbg !3089

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true2, %land.lhs.true, %for.body
  %15 = load i32, ptr %i, align 4, !dbg !3089
  %conv18 = sext i32 %15 to i64, !dbg !3089
  %16 = load ptr, ptr %irq.addr, align 8, !dbg !3089
  %map19 = getelementptr inbounds %struct.pnp_irq, ptr %16, i32 0, i32 0, !dbg !3089
  %bits20 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map19, i32 0, i32 0, !dbg !3089
  %arraydecay21 = getelementptr inbounds [4 x i64], ptr %bits20, i64 0, i64 0, !dbg !3089
  %call22 = call zeroext i1 @_test_bit(i64 noundef %conv18, ptr noundef %arraydecay21) #18, !dbg !3089
  br i1 %call22, label %if.then, label %if.end35, !dbg !3091

if.then:                                          ; preds = %cond.false, %cond.true
  %17 = load i32, ptr %first, align 4, !dbg !3092
  %tobool = icmp ne i32 %17, 0, !dbg !3092
  br i1 %tobool, label %if.else, label %if.then24, !dbg !3095

if.then24:                                        ; preds = %if.then
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !3096
  %call25 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %18, ptr noundef @.str.39) #18, !dbg !3098
  br label %if.end, !dbg !3099

if.else:                                          ; preds = %if.then
  store i32 0, ptr %first, align 4, !dbg !3100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then24
  %19 = load i32, ptr %i, align 4, !dbg !3102
  %cmp26 = icmp eq i32 %19, 2, !dbg !3104
  br i1 %cmp26, label %if.then30, label %lor.lhs.false, !dbg !3105

lor.lhs.false:                                    ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !dbg !3106
  %cmp28 = icmp eq i32 %20, 9, !dbg !3107
  br i1 %cmp28, label %if.then30, label %if.else32, !dbg !3108

if.then30:                                        ; preds = %lor.lhs.false, %if.end
  %21 = load ptr, ptr %buffer.addr, align 8, !dbg !3109
  %call31 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %21, ptr noundef @.str.40) #18, !dbg !3110
  br label %if.end34, !dbg !3110

if.else32:                                        ; preds = %lor.lhs.false
  %22 = load ptr, ptr %buffer.addr, align 8, !dbg !3111
  %23 = load i32, ptr %i, align 4, !dbg !3112
  %call33 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %22, ptr noundef @.str.41, i32 noundef %23) #18, !dbg !3113
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then30
  br label %if.end35, !dbg !3114

if.end35:                                         ; preds = %if.end34, %cond.false, %cond.true
  br label %for.inc, !dbg !3089

for.inc:                                          ; preds = %if.end35
  %24 = load i32, ptr %i, align 4, !dbg !3115
  %inc = add i32 %24, 1, !dbg !3115
  store i32 %inc, ptr %i, align 4, !dbg !3115
  br label %for.cond, !dbg !3116, !llvm.loop !3117

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %irq.addr, align 8, !dbg !3119
  %map36 = getelementptr inbounds %struct.pnp_irq, ptr %25, i32 0, i32 0, !dbg !3121
  %bits37 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map36, i32 0, i32 0, !dbg !3122
  %arraydecay38 = getelementptr inbounds [4 x i64], ptr %bits37, i64 0, i64 0, !dbg !3119
  %call39 = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay38, i32 noundef 256) #18, !dbg !3123
  br i1 %call39, label %if.then40, label %if.end42, !dbg !3124

if.then40:                                        ; preds = %for.end
  %26 = load ptr, ptr %buffer.addr, align 8, !dbg !3125
  %call41 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %26, ptr noundef @.str.42) #18, !dbg !3126
  br label %if.end42, !dbg !3126

if.end42:                                         ; preds = %if.then40, %for.end
  %27 = load ptr, ptr %irq.addr, align 8, !dbg !3127
  %flags = getelementptr inbounds %struct.pnp_irq, ptr %27, i32 0, i32 1, !dbg !3129
  %28 = load i8, ptr %flags, align 8, !dbg !3129
  %conv43 = zext i8 %28 to i32, !dbg !3127
  %and = and i32 %conv43, 1, !dbg !3130
  %tobool44 = icmp ne i32 %and, 0, !dbg !3130
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !3131

if.then45:                                        ; preds = %if.end42
  %29 = load ptr, ptr %buffer.addr, align 8, !dbg !3132
  %call46 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %29, ptr noundef @.str.43) #18, !dbg !3133
  br label %if.end47, !dbg !3133

if.end47:                                         ; preds = %if.then45, %if.end42
  %30 = load ptr, ptr %irq.addr, align 8, !dbg !3134
  %flags48 = getelementptr inbounds %struct.pnp_irq, ptr %30, i32 0, i32 1, !dbg !3136
  %31 = load i8, ptr %flags48, align 8, !dbg !3136
  %conv49 = zext i8 %31 to i32, !dbg !3134
  %and50 = and i32 %conv49, 2, !dbg !3137
  %tobool51 = icmp ne i32 %and50, 0, !dbg !3137
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !3138

if.then52:                                        ; preds = %if.end47
  %32 = load ptr, ptr %buffer.addr, align 8, !dbg !3139
  %call53 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %32, ptr noundef @.str.44) #18, !dbg !3140
  br label %if.end54, !dbg !3140

if.end54:                                         ; preds = %if.then52, %if.end47
  %33 = load ptr, ptr %irq.addr, align 8, !dbg !3141
  %flags55 = getelementptr inbounds %struct.pnp_irq, ptr %33, i32 0, i32 1, !dbg !3143
  %34 = load i8, ptr %flags55, align 8, !dbg !3143
  %conv56 = zext i8 %34 to i32, !dbg !3141
  %and57 = and i32 %conv56, 4, !dbg !3144
  %tobool58 = icmp ne i32 %and57, 0, !dbg !3144
  br i1 %tobool58, label %if.then59, label %if.end61, !dbg !3145

if.then59:                                        ; preds = %if.end54
  %35 = load ptr, ptr %buffer.addr, align 8, !dbg !3146
  %call60 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %35, ptr noundef @.str.45) #18, !dbg !3147
  br label %if.end61, !dbg !3147

if.end61:                                         ; preds = %if.then59, %if.end54
  %36 = load ptr, ptr %irq.addr, align 8, !dbg !3148
  %flags62 = getelementptr inbounds %struct.pnp_irq, ptr %36, i32 0, i32 1, !dbg !3150
  %37 = load i8, ptr %flags62, align 8, !dbg !3150
  %conv63 = zext i8 %37 to i32, !dbg !3148
  %and64 = and i32 %conv63, 8, !dbg !3151
  %tobool65 = icmp ne i32 %and64, 0, !dbg !3151
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !3152

if.then66:                                        ; preds = %if.end61
  %38 = load ptr, ptr %buffer.addr, align 8, !dbg !3153
  %call67 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %38, ptr noundef @.str.46) #18, !dbg !3154
  br label %if.end68, !dbg !3154

if.end68:                                         ; preds = %if.then66, %if.end61
  %39 = load ptr, ptr %irq.addr, align 8, !dbg !3155
  %flags69 = getelementptr inbounds %struct.pnp_irq, ptr %39, i32 0, i32 1, !dbg !3157
  %40 = load i8, ptr %flags69, align 8, !dbg !3157
  %conv70 = zext i8 %40 to i32, !dbg !3155
  %and71 = and i32 %conv70, 32, !dbg !3158
  %tobool72 = icmp ne i32 %and71, 0, !dbg !3158
  br i1 %tobool72, label %if.then73, label %if.end75, !dbg !3159

if.then73:                                        ; preds = %if.end68
  %41 = load ptr, ptr %buffer.addr, align 8, !dbg !3160
  %call74 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %41, ptr noundef @.str.47) #18, !dbg !3161
  br label %if.end75, !dbg !3161

if.end75:                                         ; preds = %if.then73, %if.end68
  %42 = load ptr, ptr %buffer.addr, align 8, !dbg !3162
  %call76 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %42, ptr noundef @.str.48) #18, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !3164
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #16, !dbg !3164
  ret void, !dbg !3164
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_print_dma(ptr noundef %buffer, ptr noundef %space, ptr noundef %dma) #0 align 16 !dbg !3165 {
entry:
  %buffer.addr = alloca ptr, align 8
  %space.addr = alloca ptr, align 8
  %dma.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3170, metadata !DIExpression()), !dbg !3176
  store ptr %space, ptr %space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %space.addr, metadata !3171, metadata !DIExpression()), !dbg !3177
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !3172, metadata !DIExpression()), !dbg !3178
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #16, !dbg !3179
  call void @llvm.dbg.declare(metadata ptr %first, metadata !3173, metadata !DIExpression()), !dbg !3180
  store i32 1, ptr %first, align 4, !dbg !3180
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !3179
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3174, metadata !DIExpression()), !dbg !3181
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !3182
  call void @llvm.dbg.declare(metadata ptr %s, metadata !3175, metadata !DIExpression()), !dbg !3183
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !3184
  %1 = load ptr, ptr %space.addr, align 8, !dbg !3185
  %call = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %0, ptr noundef @.str.49, ptr noundef %1) #18, !dbg !3186
  store i32 0, ptr %i, align 4, !dbg !3187
  br label %for.cond, !dbg !3189

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !3190
  %cmp = icmp slt i32 %2, 8, !dbg !3192
  br i1 %cmp, label %for.body, label %for.end, !dbg !3193

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %dma.addr, align 8, !dbg !3194
  %map = getelementptr inbounds %struct.pnp_dma, ptr %3, i32 0, i32 0, !dbg !3196
  %4 = load i8, ptr %map, align 1, !dbg !3196
  %conv = zext i8 %4 to i32, !dbg !3194
  %5 = load i32, ptr %i, align 4, !dbg !3197
  %shl = shl i32 1, %5, !dbg !3198
  %and = and i32 %conv, %shl, !dbg !3199
  %tobool = icmp ne i32 %and, 0, !dbg !3199
  br i1 %tobool, label %if.then, label %if.end5, !dbg !3200

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %first, align 4, !dbg !3201
  %tobool1 = icmp ne i32 %6, 0, !dbg !3201
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !3204

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !3205
  %call3 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %7, ptr noundef @.str.39) #18, !dbg !3207
  br label %if.end, !dbg !3208

if.else:                                          ; preds = %if.then
  store i32 0, ptr %first, align 4, !dbg !3209
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !3211
  %9 = load i32, ptr %i, align 4, !dbg !3212
  %call4 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %8, ptr noundef @.str.41, i32 noundef %9) #18, !dbg !3213
  br label %if.end5, !dbg !3214

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !3215

for.inc:                                          ; preds = %if.end5
  %10 = load i32, ptr %i, align 4, !dbg !3216
  %inc = add i32 %10, 1, !dbg !3216
  store i32 %inc, ptr %i, align 4, !dbg !3216
  br label %for.cond, !dbg !3217, !llvm.loop !3218

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %dma.addr, align 8, !dbg !3220
  %map6 = getelementptr inbounds %struct.pnp_dma, ptr %11, i32 0, i32 0, !dbg !3222
  %12 = load i8, ptr %map6, align 1, !dbg !3222
  %tobool7 = icmp ne i8 %12, 0, !dbg !3220
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !3223

if.then8:                                         ; preds = %for.end
  %13 = load ptr, ptr %buffer.addr, align 8, !dbg !3224
  %call9 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %13, ptr noundef @.str.42) #18, !dbg !3225
  br label %if.end10, !dbg !3225

if.end10:                                         ; preds = %if.then8, %for.end
  %14 = load ptr, ptr %dma.addr, align 8, !dbg !3226
  %flags = getelementptr inbounds %struct.pnp_dma, ptr %14, i32 0, i32 1, !dbg !3227
  %15 = load i8, ptr %flags, align 1, !dbg !3227
  %conv11 = zext i8 %15 to i32, !dbg !3226
  %and12 = and i32 %conv11, 3, !dbg !3228
  switch i32 %and12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ], !dbg !3229

sw.bb:                                            ; preds = %if.end10
  store ptr @.str.33, ptr %s, align 8, !dbg !3230
  br label %sw.epilog, !dbg !3232

sw.bb13:                                          ; preds = %if.end10
  store ptr @.str.34, ptr %s, align 8, !dbg !3233
  br label %sw.epilog, !dbg !3234

sw.default:                                       ; preds = %if.end10
  store ptr @.str.36, ptr %s, align 8, !dbg !3235
  br label %sw.epilog, !dbg !3236

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb
  %16 = load ptr, ptr %buffer.addr, align 8, !dbg !3237
  %17 = load ptr, ptr %s, align 8, !dbg !3238
  %call14 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %16, ptr noundef @.str.50, ptr noundef %17) #18, !dbg !3239
  %18 = load ptr, ptr %dma.addr, align 8, !dbg !3240
  %flags15 = getelementptr inbounds %struct.pnp_dma, ptr %18, i32 0, i32 1, !dbg !3242
  %19 = load i8, ptr %flags15, align 1, !dbg !3242
  %conv16 = zext i8 %19 to i32, !dbg !3240
  %and17 = and i32 %conv16, 4, !dbg !3243
  %tobool18 = icmp ne i32 %and17, 0, !dbg !3243
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !3244

if.then19:                                        ; preds = %sw.epilog
  %20 = load ptr, ptr %buffer.addr, align 8, !dbg !3245
  %call20 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %20, ptr noundef @.str.51) #18, !dbg !3246
  br label %if.end21, !dbg !3246

if.end21:                                         ; preds = %if.then19, %sw.epilog
  %21 = load ptr, ptr %dma.addr, align 8, !dbg !3247
  %flags22 = getelementptr inbounds %struct.pnp_dma, ptr %21, i32 0, i32 1, !dbg !3249
  %22 = load i8, ptr %flags22, align 1, !dbg !3249
  %conv23 = zext i8 %22 to i32, !dbg !3247
  %and24 = and i32 %conv23, 8, !dbg !3250
  %tobool25 = icmp ne i32 %and24, 0, !dbg !3250
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !3251

if.then26:                                        ; preds = %if.end21
  %23 = load ptr, ptr %buffer.addr, align 8, !dbg !3252
  %call27 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %23, ptr noundef @.str.52) #18, !dbg !3253
  br label %if.end28, !dbg !3253

if.end28:                                         ; preds = %if.then26, %if.end21
  %24 = load ptr, ptr %dma.addr, align 8, !dbg !3254
  %flags29 = getelementptr inbounds %struct.pnp_dma, ptr %24, i32 0, i32 1, !dbg !3256
  %25 = load i8, ptr %flags29, align 1, !dbg !3256
  %conv30 = zext i8 %25 to i32, !dbg !3254
  %and31 = and i32 %conv30, 16, !dbg !3257
  %tobool32 = icmp ne i32 %and31, 0, !dbg !3257
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !3258

if.then33:                                        ; preds = %if.end28
  %26 = load ptr, ptr %buffer.addr, align 8, !dbg !3259
  %call34 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %26, ptr noundef @.str.53) #18, !dbg !3260
  br label %if.end35, !dbg !3260

if.end35:                                         ; preds = %if.then33, %if.end28
  %27 = load ptr, ptr %dma.addr, align 8, !dbg !3261
  %flags36 = getelementptr inbounds %struct.pnp_dma, ptr %27, i32 0, i32 1, !dbg !3262
  %28 = load i8, ptr %flags36, align 1, !dbg !3262
  %conv37 = zext i8 %28 to i32, !dbg !3261
  %and38 = and i32 %conv37, 192, !dbg !3263
  switch i32 %and38, label %sw.default42 [
    i32 64, label %sw.bb39
    i32 128, label %sw.bb40
    i32 192, label %sw.bb41
  ], !dbg !3264

sw.bb39:                                          ; preds = %if.end35
  store ptr @.str.54, ptr %s, align 8, !dbg !3265
  br label %sw.epilog43, !dbg !3267

sw.bb40:                                          ; preds = %if.end35
  store ptr @.str.55, ptr %s, align 8, !dbg !3268
  br label %sw.epilog43, !dbg !3269

sw.bb41:                                          ; preds = %if.end35
  store ptr @.str.56, ptr %s, align 8, !dbg !3270
  br label %sw.epilog43, !dbg !3271

sw.default42:                                     ; preds = %if.end35
  store ptr @.str.57, ptr %s, align 8, !dbg !3272
  br label %sw.epilog43, !dbg !3273

sw.epilog43:                                      ; preds = %sw.default42, %sw.bb41, %sw.bb40, %sw.bb39
  %29 = load ptr, ptr %buffer.addr, align 8, !dbg !3274
  %30 = load ptr, ptr %s, align 8, !dbg !3275
  %call44 = call i32 (ptr, ptr, ...) @pnp_printf(ptr noundef %29, ptr noundef @.str.58, ptr noundef %30) #18, !dbg !3276
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !3277
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !3277
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #16, !dbg !3277
  ret void, !dbg !3277
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !3278 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3286, metadata !DIExpression()), !dbg !3291
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3287, metadata !DIExpression()), !dbg !3292
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !3293
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3288, metadata !DIExpression()), !dbg !3294
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3295
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3296
  %div = udiv i64 %1, 64, !dbg !3296
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3297
  store ptr %add.ptr, ptr %p, align 8, !dbg !3294
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !3298
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3289, metadata !DIExpression()), !dbg !3299
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3300
  %rem = urem i64 %2, 64, !dbg !3300
  %shl = shl i64 1, %rem, !dbg !3300
  store i64 %shl, ptr %mask, align 8, !dbg !3299
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !3301
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3290, metadata !DIExpression()), !dbg !3302
  %3 = load ptr, ptr %p, align 8, !dbg !3303
  %4 = load i64, ptr %3, align 8, !dbg !3304
  store i64 %4, ptr %val, align 8, !dbg !3302
  %5 = load i64, ptr %val, align 8, !dbg !3305
  %6 = load i64, ptr %mask, align 8, !dbg !3306
  %and = and i64 %5, %6, !dbg !3307
  %tobool = icmp ne i64 %and, 0, !dbg !3308
  %lnot = xor i1 %tobool, true, !dbg !3308
  %lnot1 = xor i1 %lnot, true, !dbg !3309
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !3310
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !3310
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !3310
  ret i1 %lnot1, !dbg !3311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !3312 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3315, metadata !DIExpression()), !dbg !3317
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3316, metadata !DIExpression()), !dbg !3318
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3319
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3320
  %div = udiv i64 %1, 64, !dbg !3320
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3321
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !3322
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3323
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3324
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !3325
  ret i1 %call, !dbg !3326
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #14 align 16 !dbg !3327 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3332, metadata !DIExpression()), !dbg !3334
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3333, metadata !DIExpression()), !dbg !3335
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3336
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3336
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3336

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !3336
  %cmp = icmp ule i32 %2, 64, !dbg !3336
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3336

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3336
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3336
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3338

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !3339
  %5 = load i64, ptr %4, align 8, !dbg !3340
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !3341
  %sub = sub i32 0, %6, !dbg !3341
  %and = and i32 %sub, 63, !dbg !3341
  %sh_prom = zext i32 %and to i64, !dbg !3341
  %shr = lshr i64 -1, %sh_prom, !dbg !3341
  %and3 = and i64 %5, %shr, !dbg !3342
  %tobool = icmp ne i64 %and3, 0, !dbg !3343
  %lnot = xor i1 %tobool, true, !dbg !3343
  store i1 %lnot, ptr %retval, align 1, !dbg !3344
  br label %return, !dbg !3344

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !3345
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !3346
  %conv = zext i32 %8 to i64, !dbg !3346
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #18, !dbg !3347
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !3348
  %conv4 = zext i32 %9 to i64, !dbg !3348
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !3349
  store i1 %cmp5, ptr %retval, align 1, !dbg !3350
  br label %return, !dbg !3350

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !3351
  ret i1 %10, !dbg !3351
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !3352 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3360, metadata !DIExpression()), !dbg !3362
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3361, metadata !DIExpression()), !dbg !3363
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3364
  %1 = load i64, ptr %size.addr, align 8, !dbg !3365
  %conv = trunc i64 %1 to i32, !dbg !3365
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !3366
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3367
  %3 = load i64, ptr %size.addr, align 8, !dbg !3367
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !3367
  ret void, !dbg !3368
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !3369 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3372, metadata !DIExpression()), !dbg !3374
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3373, metadata !DIExpression()), !dbg !3375
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3376
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3377
  br i1 %1, label %cond.true, label %cond.false, !dbg !3377

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3378
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3379
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !3380
  %conv = zext i1 %call to i32, !dbg !3380
  br label %cond.end, !dbg !3377

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3381
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3382
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !3383
  %conv2 = zext i1 %call1 to i32, !dbg !3383
  br label %cond.end, !dbg !3377

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3377
  %tobool = icmp ne i32 %cond, 0, !dbg !3377
  ret i1 %tobool, !dbg !3384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #14 align 16 !dbg !3385 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3390, metadata !DIExpression()), !dbg !3392
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3391, metadata !DIExpression()), !dbg !3393
  ret i1 true, !dbg !3394
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #14 align 16 !dbg !3395 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3400, metadata !DIExpression()), !dbg !3403
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3401, metadata !DIExpression()), !dbg !3404
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3402, metadata !DIExpression()), !dbg !3405
  ret void, !dbg !3406
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !3407 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3411, metadata !DIExpression()), !dbg !3413
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3412, metadata !DIExpression()), !dbg !3414
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3415
  %and = and i64 %0, 63, !dbg !3416
  %shl = shl i64 1, %and, !dbg !3417
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3418
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3419
  %shr = ashr i64 %2, 6, !dbg !3420
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3418
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3418
  %and1 = and i64 %shl, %3, !dbg !3421
  %cmp = icmp ne i64 %and1, 0, !dbg !3422
  ret i1 %cmp, !dbg !3423
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !3424 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3426, metadata !DIExpression()), !dbg !3429
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3427, metadata !DIExpression()), !dbg !3430
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !3431
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3428, metadata !DIExpression()), !dbg !3432
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3433
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3434
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !3435, !srcloc !3436
  %3 = icmp ult i8 %2, 2, !dbg !3435
  call void @llvm.assume(i1 %3), !dbg !3435
  store i8 %2, ptr %oldbit, align 1, !dbg !3435
  %4 = load i8, ptr %oldbit, align 1, !dbg !3437, !range !2626, !noundef !331
  %tobool = trunc i8 %4 to i1, !dbg !3437
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !3438
  ret i1 %tobool, !dbg !3439
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #14 align 16 !dbg !3440 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3445, metadata !DIExpression()), !dbg !3450
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3446, metadata !DIExpression()), !dbg !3451
  %0 = load i64, ptr %size.addr, align 8, !dbg !3452
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3452
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3452

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3452
  %cmp = icmp ule i64 %2, 64, !dbg !3452
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3452

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3452
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3452
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3453

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !3454
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3447, metadata !DIExpression()), !dbg !3455
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !3456
  %5 = load i64, ptr %4, align 8, !dbg !3457
  %6 = load i64, ptr %size.addr, align 8, !dbg !3458
  %sub = sub i64 %6, 1, !dbg !3458
  %sub3 = sub i64 63, %sub, !dbg !3458
  %shr = lshr i64 -1, %sub3, !dbg !3458
  %and = and i64 -1, %shr, !dbg !3458
  %add = add i64 0, %and, !dbg !3458
  %and4 = and i64 %5, %add, !dbg !3459
  store i64 %and4, ptr %val, align 8, !dbg !3455
  %7 = load i64, ptr %val, align 8, !dbg !3460
  %tobool = icmp ne i64 %7, 0, !dbg !3460
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !3460

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !3461
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3461
  br i1 %9, label %cond.true5, label %cond.false, !dbg !3461

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !3461
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !3461
  %cast = trunc i64 %11 to i32, !dbg !3461
  %conv = sext i32 %cast to i64, !dbg !3461
  br label %cond.end, !dbg !3461

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !3461
  %call = call i64 @variable__ffs(i64 noundef %12) #18, !dbg !3461
  br label %cond.end, !dbg !3461

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !3461
  br label %cond.end7, !dbg !3460

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !3462
  br label %cond.end7, !dbg !3460

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !3460
  store i64 %cond8, ptr %retval, align 8, !dbg !3463
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !3464
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !3465
  %15 = load i64, ptr %size.addr, align 8, !dbg !3466
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #18, !dbg !3467
  store i64 %call9, ptr %retval, align 8, !dbg !3468
  br label %return, !dbg !3468

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !3469
  ret i64 %16, !dbg !3469
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #8 align 16 !dbg !3470 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3474, metadata !DIExpression()), !dbg !3475
  %0 = load i64, ptr %word.addr, align 8, !dbg !3476
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #22, !dbg !3477, !srcloc !3478
  store i64 %1, ptr %word.addr, align 8, !dbg !3477
  %2 = load i64, ptr %word.addr, align 8, !dbg !3479
  ret i64 %2, !dbg !3480
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3481 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @id_show(ptr noundef %dmdev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3482 {
entry:
  %dmdev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pos = alloca ptr, align 8
  store ptr %dmdev, ptr %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmdev.addr, metadata !3484, metadata !DIExpression()), !dbg !3492
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3485, metadata !DIExpression()), !dbg !3493
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3486, metadata !DIExpression()), !dbg !3494
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #16, !dbg !3495
  call void @llvm.dbg.declare(metadata ptr %str, metadata !3487, metadata !DIExpression()), !dbg !3496
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3497
  store ptr %0, ptr %str, align 8, !dbg !3496
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !3498
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3488, metadata !DIExpression()), !dbg !3499
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3500
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3489, metadata !DIExpression()), !dbg !3500
  %1 = load ptr, ptr %dmdev.addr, align 8, !dbg !3500
  store ptr %1, ptr %__mptr, align 8, !dbg !3500
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3500
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !3500
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3501
  %3 = load ptr, ptr %tmp, align 8, !dbg !3500
  store ptr %3, ptr %dev, align 8, !dbg !3499
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !3502
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3491, metadata !DIExpression()), !dbg !3503
  %4 = load ptr, ptr %dev, align 8, !dbg !3504
  %id = getelementptr inbounds %struct.pnp_dev, ptr %4, i32 0, i32 12, !dbg !3505
  %5 = load ptr, ptr %id, align 8, !dbg !3505
  store ptr %5, ptr %pos, align 8, !dbg !3503
  br label %while.cond, !dbg !3506

while.cond:                                       ; preds = %while.body, %entry
  %6 = load ptr, ptr %pos, align 8, !dbg !3507
  %tobool = icmp ne ptr %6, null, !dbg !3506
  br i1 %tobool, label %while.body, label %while.end, !dbg !3506

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %str, align 8, !dbg !3508
  %8 = load ptr, ptr %pos, align 8, !dbg !3510
  %id1 = getelementptr inbounds %struct.pnp_id, ptr %8, i32 0, i32 0, !dbg !3511
  %arraydecay = getelementptr inbounds [8 x i8], ptr %id1, i64 0, i64 0, !dbg !3510
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %7, ptr noundef @.str.60, ptr noundef %arraydecay) #18, !dbg !3512
  %9 = load ptr, ptr %str, align 8, !dbg !3513
  %idx.ext = sext i32 %call to i64, !dbg !3513
  %add.ptr2 = getelementptr i8, ptr %9, i64 %idx.ext, !dbg !3513
  store ptr %add.ptr2, ptr %str, align 8, !dbg !3513
  %10 = load ptr, ptr %pos, align 8, !dbg !3514
  %next = getelementptr inbounds %struct.pnp_id, ptr %10, i32 0, i32 1, !dbg !3515
  %11 = load ptr, ptr %next, align 8, !dbg !3515
  store ptr %11, ptr %pos, align 8, !dbg !3516
  br label %while.cond, !dbg !3506, !llvm.loop !3517

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %str, align 8, !dbg !3519
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !3520
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64, !dbg !3521
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64, !dbg !3521
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3521
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !3522
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !3522
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #16, !dbg !3522
  ret i64 %sub.ptr.sub, !dbg !3523
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3524 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }
attributes #22 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002}
!llvm.ident = !{!2003}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_dev_group", scope: !2, file: !3, line: 463, type: !249, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pnp/.interface.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pnp/pnp\22 -D KBUILD_BASENAME=\22interface\22 -D KBUILD_MODNAME=\22pnp\22 -D __KBUILD_MODNAME=kmod_pnp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pnp/interface.ll drivers/pnp/interface.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !1801, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/interface.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b0a12991772475674b07f4c468b69e83")
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
!93 = !{!94, !95, !1738, !1739, !360, !245, !1759, !1798, !1799, !1215, !46}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !97, line: 243, size: 7744, elements: !98)
!97 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71a2b05a7bea4745f52d5f98f7dc6ac6")
!98 = !{!99, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1631, !1659, !1685, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !96, file: !97, line: 244, baseType: !100, size: 5824)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !101)
!101 = !{!102, !770, !772, !775, !776, !829, !1302, !1303, !1304, !1305, !1306, !1313, !1483, !1496, !1506, !1510, !1512, !1513, !1514, !1518, !1525, !1526, !1529, !1532, !1536, !1539, !1540, !1543, !1544, !1545, !1546, !1576, !1577, !1578, !1581, !1584, !1593, !1594, !1595, !1596, !1597, !1598}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !100, file: !26, line: 706, baseType: !103, size: 512)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !104, line: 64, size: 512, elements: !105)
!104 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!105 = !{!106, !110, !117, !119, !208, !641, !755, !765, !766, !767, !768, !769}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !104, line: 65, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !103, file: !104, line: 66, baseType: !111, size: 128, offset: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !112, line: 190, size: 128, elements: !113)
!112 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !112, line: 191, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !111, file: !112, line: 191, baseType: !115, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !104, line: 67, baseType: !118, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !103, file: !104, line: 68, baseType: !120, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !104, line: 168, size: 768, elements: !122)
!122 = !{!123, !124, !167, !168}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !121, file: !104, line: 169, baseType: !111, size: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !121, file: !104, line: 170, baseType: !125, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !126, line: 29, baseType: !127)
!126 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !126, line: 17, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !127, file: !126, line: 18, baseType: !130, size: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !126, line: 18, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !130, file: !126, line: 19, baseType: !133, size: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !134, line: 14, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !133, file: !134, line: 15, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !138, line: 44, baseType: !139)
!138 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !138, line: 14, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !138, line: 15, baseType: !142, size: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !138, line: 15, size: 32, elements: !143)
!143 = !{!144, !149, !159}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !142, file: !138, line: 16, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !112, line: 174, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 172, size: 32, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !146, file: !112, line: 173, baseType: !46, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !138, line: 24, baseType: !150, size: 16)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !138, line: 24, size: 16, elements: !151)
!151 = !{!152, !158}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !150, file: !138, line: 25, baseType: !153, size: 8)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !154, line: 17, baseType: !155)
!154 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !156, line: 21, baseType: !157)
!156 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!157 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !150, file: !138, line: 26, baseType: !153, size: 8, offset: 8)
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !138, line: 28, baseType: !160, size: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !138, line: 28, size: 32, elements: !161)
!161 = !{!162, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !160, file: !138, line: 29, baseType: !163, size: 16)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !154, line: 19, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !156, line: 24, baseType: !165)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !160, file: !138, line: 30, baseType: !163, size: 16, offset: 16)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !121, file: !104, line: 171, baseType: !103, size: 512, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !121, file: !104, line: 172, baseType: !169, size: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !104, line: 133, size: 192, elements: !172)
!172 = !{!173, !180, !185}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !171, file: !104, line: 134, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!46, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !104, line: 135, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!107, !178}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !171, file: !104, line: 136, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!46, !178, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !104, line: 125, size: 20736, elements: !192)
!192 = !{!193, !198, !202, !203, !207}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !191, file: !104, line: 126, baseType: !194, size: 192)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 192, elements: !196)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!196 = !{!197}
!197 = !DISubrange(count: 3)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !191, file: !104, line: 127, baseType: !199, size: 4096, offset: 192)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 4096, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !191, file: !104, line: 128, baseType: !46, size: 32, offset: 4288)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !191, file: !104, line: 129, baseType: !204, size: 16384, offset: 4320)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 16384, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 2048)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !191, file: !104, line: 130, baseType: !46, size: 32, offset: 20704)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !103, file: !104, line: 69, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !104, line: 116, size: 384, elements: !212)
!212 = !{!213, !217, !246, !588, !619, !623}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !211, file: !104, line: 117, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !118}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !211, file: !104, line: 118, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !221, line: 254, size: 128, elements: !222)
!221 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!222 = !{!223, !238}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !220, file: !221, line: 255, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !118, !232, !195}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !112, line: 66, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !229, line: 73, baseType: !230)
!229 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !229, line: 15, baseType: !231)
!231 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !221, line: 30, size: 128, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !221, line: 31, baseType: !107, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !233, file: !221, line: 32, baseType: !237, size: 16, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !112, line: 24, baseType: !165)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !220, file: !221, line: 256, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!227, !118, !232, !107, !242}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 61, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !229, line: 72, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !229, line: 16, baseType: !245)
!245 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !211, file: !104, line: 119, baseType: !247, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !221, line: 84, size: 320, elements: !251)
!251 = !{!252, !253, !257, !584, !586}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !221, line: 85, baseType: !107, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !250, file: !221, line: 86, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!237, !118, !232, !46}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !250, file: !221, line: 88, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!237, !118, !261, !46}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !221, line: 175, size: 512, elements: !263)
!263 = !{!264, !265, !266, !267, !274, !284, !285}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !262, file: !221, line: 176, baseType: !233, size: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !262, file: !221, line: 177, baseType: !242, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !262, file: !221, line: 178, baseType: !94, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !262, file: !221, line: 179, baseType: !268, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !273, line: 32, flags: DIFlagFwdDecl)
!273 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!274 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !262, file: !221, line: 180, baseType: !275, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!227, !278, !118, !261, !195, !281, !242}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !280, line: 537, flags: DIFlagFwdDecl)
!280 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !112, line: 52, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !229, line: 88, baseType: !283)
!283 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !262, file: !221, line: 182, baseType: !275, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !262, file: !221, line: 184, baseType: !286, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!46, !278, !118, !261, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !273, line: 625, size: 1344, elements: !291)
!291 = !{!292, !309, !532, !538, !545, !546, !551, !554, !566, !567, !570, !574, !575, !576, !577, !578, !582}
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !273, line: 628, baseType: !293, size: 128)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !273, line: 628, size: 128, elements: !294)
!294 = !{!295, !300}
!295 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !273, line: 629, baseType: !296, size: 128)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !293, file: !273, line: 629, size: 128, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !296, file: !273, line: 631, baseType: !245, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !296, file: !273, line: 632, baseType: !245, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !293, file: !273, line: 635, baseType: !301, size: 128, align: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !112, line: 232, size: 128, align: 64, elements: !302)
!302 = !{!303, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !112, line: 233, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !301, file: !112, line: 234, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !304}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !290, file: !273, line: 639, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !273, line: 733, size: 10240, elements: !312)
!312 = !{!313, !528}
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !273, line: 734, baseType: !314, size: 10240)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !311, file: !273, line: 734, size: 10240, elements: !315)
!315 = !{!316, !320, !334, !338, !339, !340, !341, !342, !343, !351, !352, !353, !362, !363, !372, !373, !374, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !421, !435, !438, !493, !494, !495, !498, !502, !503, !506, !507, !508, !515, !516}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !273, line: 739, baseType: !317, size: 512, align: 512)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !273, line: 739, size: 512, align: 512, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !317, file: !273, line: 747, baseType: !145, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !314, file: !273, line: 750, baseType: !321, size: 128, offset: 512)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !322, line: 218, size: 128, elements: !323)
!322 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!323 = !{!324, !332, !333}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !322, line: 219, baseType: !325, size: 32)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !322, line: 219, size: 32, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !325, file: !322, line: 220, baseType: !125, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !325, file: !322, line: 221, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !322, line: 197, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !322, line: 197, elements: !331)
!331 = !{}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !321, file: !322, line: 223, baseType: !7, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !321, file: !322, line: 224, baseType: !94, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !314, file: !273, line: 752, baseType: !335, size: 64, offset: 640)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!245, !278, !245, !245, !245, !245}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !314, file: !273, line: 756, baseType: !245, size: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !314, file: !273, line: 757, baseType: !245, size: 64, offset: 768)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !314, file: !273, line: 760, baseType: !245, size: 64, offset: 832)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !314, file: !273, line: 761, baseType: !245, size: 64, offset: 896)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !314, file: !273, line: 763, baseType: !245, size: 64, offset: 960)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !314, file: !273, line: 764, baseType: !344, size: 64, offset: 1024)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !280, line: 299, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !280, line: 299, size: 64, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !346, file: !280, line: 299, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !350, line: 18, baseType: !245)
!350 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!351 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !314, file: !273, line: 773, baseType: !145, size: 32, offset: 1088)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !314, file: !273, line: 785, baseType: !145, size: 32, offset: 1120)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !314, file: !273, line: 795, baseType: !354, size: 64, offset: 1152)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !273, line: 726, size: 128, elements: !356)
!356 = !{!357, !361}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !355, file: !273, line: 727, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !154, line: 23, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !156, line: 31, baseType: !360)
!360 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !355, file: !273, line: 728, baseType: !46, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !314, file: !273, line: 801, baseType: !245, size: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !314, file: !273, line: 804, baseType: !364, size: 64, offset: 1280)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !365, line: 13, baseType: !366)
!365 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !112, line: 181, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 179, size: 64, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !367, file: !112, line: 180, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !154, line: 22, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !156, line: 30, baseType: !283)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !314, file: !273, line: 806, baseType: !46, size: 32, offset: 1344)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !314, file: !273, line: 808, baseType: !125, size: 32, offset: 1376)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !314, file: !273, line: 823, baseType: !375, size: 320, offset: 1408)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !376, line: 48, size: 320, elements: !377)
!376 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!377 = !{!378, !379, !380, !385, !387}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !375, file: !376, line: 49, baseType: !364, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !375, file: !376, line: 55, baseType: !364, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !375, file: !376, line: 57, baseType: !381, size: 32, offset: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !382, line: 15, size: 32, elements: !383)
!382 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !381, file: !382, line: 20, baseType: !145, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !375, file: !376, line: 59, baseType: !386, size: 32, offset: 160)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !134, line: 23, baseType: !133)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !375, file: !376, line: 60, baseType: !111, size: 128, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !314, file: !273, line: 825, baseType: !111, size: 128, offset: 1728)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !314, file: !273, line: 845, baseType: !46, size: 32, offset: 1856)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !314, file: !273, line: 849, baseType: !245, size: 64, offset: 1920)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !314, file: !273, line: 850, baseType: !245, size: 64, offset: 1984)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !314, file: !273, line: 852, baseType: !245, size: 64, offset: 2048)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !314, file: !273, line: 853, baseType: !245, size: 64, offset: 2112)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !314, file: !273, line: 854, baseType: !366, size: 64, offset: 2176)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !314, file: !273, line: 855, baseType: !245, size: 64, offset: 2240)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !314, file: !273, line: 856, baseType: !245, size: 64, offset: 2304)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !314, file: !273, line: 857, baseType: !245, size: 64, offset: 2368)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !314, file: !273, line: 858, baseType: !245, size: 64, offset: 2432)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !314, file: !273, line: 865, baseType: !400, size: 32, offset: 2496)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !401, line: 69, baseType: !402)
!401 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !401, line: 64, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !402, file: !401, line: 65, baseType: !7, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !314, file: !273, line: 867, baseType: !125, size: 32, offset: 2528)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !314, file: !273, line: 869, baseType: !245, size: 64, offset: 2560)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !314, file: !273, line: 869, baseType: !245, size: 64, offset: 2624)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !314, file: !273, line: 869, baseType: !245, size: 64, offset: 2688)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !314, file: !273, line: 869, baseType: !245, size: 64, offset: 2752)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !314, file: !273, line: 870, baseType: !245, size: 64, offset: 2816)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !314, file: !273, line: 870, baseType: !245, size: 64, offset: 2880)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !314, file: !273, line: 870, baseType: !245, size: 64, offset: 2944)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !314, file: !273, line: 871, baseType: !245, size: 64, offset: 3008)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !314, file: !273, line: 871, baseType: !245, size: 64, offset: 3072)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !314, file: !273, line: 871, baseType: !245, size: 64, offset: 3136)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !314, file: !273, line: 871, baseType: !245, size: 64, offset: 3200)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !314, file: !273, line: 873, baseType: !418, size: 3328, offset: 3264)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 3328, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 52)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !314, file: !273, line: 875, baseType: !422, size: 1280, offset: 6592)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 1280, elements: !433)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !424, line: 22, size: 320, elements: !425)
!424 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!425 = !{!426, !427, !428, !429}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !423, file: !424, line: 23, baseType: !386, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !423, file: !424, line: 24, baseType: !370, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !423, file: !424, line: 26, baseType: !111, size: 128, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !423, file: !424, line: 28, baseType: !430, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !154, line: 20, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !156, line: 26, baseType: !46)
!433 = !{!434}
!434 = !DISubrange(count: 4)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !314, file: !273, line: 877, baseType: !436, size: 64, offset: 7872)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !273, line: 877, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !314, file: !273, line: 880, baseType: !439, size: 1088, offset: 7936)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !440, line: 72, baseType: !441)
!440 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 23, size: 1088, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !450, !451, !459, !460, !487, !488, !489}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !441, file: !440, line: 28, baseType: !358, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !441, file: !440, line: 38, baseType: !366, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !441, file: !440, line: 40, baseType: !245, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !441, file: !440, line: 43, baseType: !375, size: 320, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !441, file: !440, line: 44, baseType: !448, size: 64, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !440, line: 44, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !440, line: 48, baseType: !245, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !441, file: !440, line: 59, baseType: !452, size: 256, offset: 640)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !453, line: 66, size: 256, elements: !454)
!453 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!454 = !{!455, !456, !457, !458}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !452, file: !453, line: 67, baseType: !364, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !452, file: !453, line: 68, baseType: !386, size: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !452, file: !453, line: 70, baseType: !381, size: 32, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !452, file: !453, line: 72, baseType: !111, size: 128, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !441, file: !440, line: 60, baseType: !94, size: 64, offset: 896)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !441, file: !440, line: 61, baseType: !461, size: 64, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !464, line: 13, size: 1216, elements: !465)
!464 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!465 = !{!466, !467, !468, !469, !470, !471, !472, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !463, file: !464, line: 14, baseType: !94, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !463, file: !464, line: 15, baseType: !245, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !463, file: !464, line: 17, baseType: !245, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !463, file: !464, line: 17, baseType: !245, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !463, file: !464, line: 18, baseType: !245, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !463, file: !464, line: 18, baseType: !245, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !463, file: !464, line: 19, baseType: !473, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !463, file: !464, line: 21, baseType: !231, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !463, file: !464, line: 23, baseType: !231, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !463, file: !464, line: 24, baseType: !231, size: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !463, file: !464, line: 25, baseType: !231, size: 64, offset: 640)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !463, file: !464, line: 26, baseType: !231, size: 64, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !463, file: !464, line: 27, baseType: !231, size: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !463, file: !464, line: 28, baseType: !231, size: 64, offset: 832)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !463, file: !464, line: 29, baseType: !231, size: 64, offset: 896)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !463, file: !464, line: 30, baseType: !231, size: 64, offset: 960)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !463, file: !464, line: 31, baseType: !231, size: 64, offset: 1024)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !463, file: !464, line: 32, baseType: !231, size: 64, offset: 1088)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !463, file: !464, line: 33, baseType: !231, size: 64, offset: 1152)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !441, file: !440, line: 63, baseType: !145, size: 32, offset: 1024)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !441, file: !440, line: 69, baseType: !163, size: 16, offset: 1056)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !441, file: !440, line: 70, baseType: !490, size: 16, offset: 1072)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !154, line: 18, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !156, line: 23, baseType: !492)
!492 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !273, line: 882, baseType: !245, size: 64, offset: 9024)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !314, file: !273, line: 885, baseType: !125, size: 32, offset: 9088)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !314, file: !273, line: 886, baseType: !496, size: 64, offset: 9152)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !273, line: 732, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !314, file: !273, line: 901, baseType: !499, size: 64, offset: 9216)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !501, line: 18, flags: DIFlagFwdDecl)
!501 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!502 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !314, file: !273, line: 904, baseType: !278, size: 64, offset: 9280)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !314, file: !273, line: 906, baseType: !504, size: 64, offset: 9344)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !273, line: 906, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !314, file: !273, line: 930, baseType: !145, size: 32, offset: 9408)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !314, file: !273, line: 933, baseType: !145, size: 32, offset: 9440)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !314, file: !273, line: 935, baseType: !509, size: 64, offset: 9472)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !510, line: 103, size: 64, elements: !511)
!510 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !509, file: !510, line: 104, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !510, line: 101, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !314, file: !273, line: 940, baseType: !364, size: 64, offset: 9536)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !314, file: !273, line: 942, baseType: !517, size: 256, offset: 9600)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !518, line: 98, size: 256, elements: !519)
!518 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!519 = !{!520, !521, !522}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !517, file: !518, line: 99, baseType: !364, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !517, file: !518, line: 100, baseType: !111, size: 128, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !517, file: !518, line: 101, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !518, line: 21, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !311, file: !273, line: 986, baseType: !529, offset: 10240)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: -1)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !290, file: !273, line: 640, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !280, line: 297, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !280, line: 297, size: 64, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !534, file: !280, line: 297, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !350, line: 19, baseType: !245)
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !273, line: 646, baseType: !539, size: 64, offset: 256)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !273, line: 646, size: 64, elements: !540)
!540 = !{!541, !544}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !539, file: !273, line: 647, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !273, line: 542, baseType: !245)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !539, file: !273, line: 648, baseType: !543, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !290, file: !273, line: 666, baseType: !46, size: 32, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !290, file: !273, line: 667, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !273, line: 579, size: 320, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !548, file: !273, line: 580, baseType: !375, size: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !290, file: !273, line: 670, baseType: !552, size: 8, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !112, line: 35, baseType: !553)
!553 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !290, file: !273, line: 681, baseType: !555, size: 256, offset: 512)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !290, file: !273, line: 678, size: 256, elements: !556)
!556 = !{!557, !565}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !555, file: !273, line: 679, baseType: !558, size: 192, align: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !559, line: 5, size: 192, align: 64, elements: !560)
!559 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!560 = !{!561, !562, !564}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !558, file: !559, line: 6, baseType: !245, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !558, file: !559, line: 7, baseType: !563, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !558, file: !559, line: 8, baseType: !563, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !555, file: !273, line: 680, baseType: !245, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !290, file: !273, line: 689, baseType: !111, size: 128, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !290, file: !273, line: 691, baseType: !568, size: 64, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !273, line: 691, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !290, file: !273, line: 694, baseType: !571, size: 64, offset: 960)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !273, line: 694, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !290, file: !273, line: 697, baseType: !245, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !290, file: !273, line: 699, baseType: !278, size: 64, offset: 1088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !290, file: !273, line: 700, baseType: !94, size: 64, offset: 1152)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !290, file: !273, line: 711, baseType: !364, size: 64, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !290, file: !273, line: 717, baseType: !579, size: 64, offset: 1280)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !581, line: 54, flags: DIFlagFwdDecl)
!581 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !290, file: !273, line: 722, baseType: !583, offset: 1344)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !273, line: 570, elements: !331)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !250, file: !221, line: 90, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !250, file: !221, line: 91, baseType: !587, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !211, file: !104, line: 120, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!592, !178}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !595)
!595 = !{!596, !597, !601, !605, !611, !615}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !6, line: 40, baseType: !5, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !594, file: !6, line: 41, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!552}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !594, file: !6, line: 42, baseType: !602, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!94}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !594, file: !6, line: 43, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!473, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !594, file: !6, line: 44, baseType: !612, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!473}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !594, file: !6, line: 45, baseType: !616, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !94}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !211, file: !104, line: 121, baseType: !620, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!473, !178}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !211, file: !104, line: 122, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !178, !627, !634}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !501, line: 23, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 21, size: 32, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !629, file: !501, line: 22, baseType: !632, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !112, line: 37, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !229, line: 49, baseType: !7)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !501, line: 28, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 26, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !636, file: !501, line: 27, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !112, line: 38, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !229, line: 50, baseType: !7)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !103, file: !104, line: 70, baseType: !642, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !644, line: 190, size: 1152, elements: !645)
!644 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !747, !748, !749, !750, !751, !754}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !643, file: !644, line: 191, baseType: !145, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !643, file: !644, line: 192, baseType: !145, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !643, file: !644, line: 202, baseType: !642, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !643, file: !644, line: 203, baseType: !107, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !643, file: !644, line: 205, baseType: !558, size: 192, align: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !643, file: !644, line: 207, baseType: !473, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !643, file: !644, line: 208, baseType: !7, size: 32, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !644, line: 209, baseType: !654, size: 256, offset: 512)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !644, line: 209, size: 256, elements: !655)
!655 = !{!656, !668, !672}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !654, file: !644, line: 210, baseType: !657, size: 256)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !644, line: 153, size: 256, elements: !658)
!658 = !{!659, !660, !664, !667}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !657, file: !644, line: 154, baseType: !245, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !657, file: !644, line: 156, baseType: !661, size: 64, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !559, line: 12, size: 64, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !661, file: !559, line: 13, baseType: !563, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !657, file: !644, line: 162, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !644, line: 162, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !657, file: !644, line: 167, baseType: !245, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !654, file: !644, line: 211, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !644, line: 170, size: 64, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !669, file: !644, line: 171, baseType: !642, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !654, file: !644, line: 212, baseType: !673, size: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !644, line: 174, size: 256, elements: !674)
!674 = !{!675, !742, !745, !746}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !673, file: !644, line: 175, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !644, line: 271, size: 768, elements: !679)
!679 = !{!680, !702, !706, !710, !715, !719, !723, !727, !728, !729, !730, !738}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !678, file: !644, line: 276, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!46, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !644, line: 251, size: 1216, elements: !686)
!686 = !{!687, !688, !689, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !685, file: !644, line: 253, baseType: !642, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !685, file: !644, line: 254, baseType: !278, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !685, file: !644, line: 255, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !581, line: 66, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !685, file: !644, line: 256, baseType: !94, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !685, file: !644, line: 259, baseType: !452, size: 256, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !685, file: !644, line: 260, baseType: !452, size: 256, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !685, file: !644, line: 261, baseType: !46, size: 32, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !685, file: !644, line: 262, baseType: !111, size: 128, offset: 832)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !685, file: !644, line: 263, baseType: !195, size: 64, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !685, file: !644, line: 265, baseType: !242, size: 64, offset: 1024)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !685, file: !644, line: 266, baseType: !552, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !685, file: !644, line: 267, baseType: !552, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !685, file: !644, line: 268, baseType: !571, size: 64, offset: 1152)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !678, file: !644, line: 277, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !684}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !678, file: !644, line: 290, baseType: !707, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!46, !690, !94}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !678, file: !644, line: 292, baseType: !711, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!94, !690, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !678, file: !644, line: 293, baseType: !716, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!94, !690, !94, !714}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !678, file: !644, line: 294, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !690, !94}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !678, file: !644, line: 296, baseType: !724, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!227, !684, !195, !242, !281}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !678, file: !644, line: 306, baseType: !242, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !678, file: !644, line: 313, baseType: !552, size: 8, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !678, file: !644, line: 314, baseType: !724, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !678, file: !644, line: 317, baseType: !731, size: 64, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!734, !684, !736}
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !735, line: 59, baseType: !7)
!735 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !644, line: 31, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !678, file: !644, line: 320, baseType: !739, size: 64, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!46, !684, !289}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !673, file: !644, line: 176, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !644, line: 35, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !673, file: !644, line: 177, baseType: !281, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !673, file: !644, line: 178, baseType: !642, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !643, file: !644, line: 215, baseType: !94, size: 64, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !643, file: !644, line: 221, baseType: !358, size: 64, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !644, line: 223, baseType: !165, size: 16, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !643, file: !644, line: 224, baseType: !237, size: 16, offset: 912)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !643, file: !644, line: 225, baseType: !752, size: 64, offset: 960)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !644, line: 36, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !643, file: !644, line: 227, baseType: !301, size: 128, align: 64, offset: 1024)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !103, file: !104, line: 71, baseType: !756, size: 32, offset: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !757, line: 19, size: 32, elements: !758)
!757 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !756, file: !757, line: 20, baseType: !760, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !761, line: 113, baseType: !762)
!761 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !761, line: 111, size: 32, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !762, file: !761, line: 112, baseType: !145, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !103, file: !104, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !103, file: !104, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !103, file: !104, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !103, file: !104, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !103, file: !104, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !26, line: 707, baseType: !771, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !100, file: !26, line: 709, baseType: !773, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !100, file: !26, line: 711, baseType: !107, size: 64, offset: 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !26, line: 712, baseType: !777, size: 64, offset: 704)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !780)
!780 = !{!781, !782, !783, !789, !794, !798}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !779, file: !26, line: 90, baseType: !107, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !779, file: !26, line: 91, baseType: !247, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !779, file: !26, line: 92, baseType: !784, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!46, !787, !190}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !779, file: !26, line: 93, baseType: !790, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!195, !787, !793, !627, !634}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !779, file: !26, line: 95, baseType: !795, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !771}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !779, file: !26, line: 97, baseType: !799, size: 64, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !802)
!802 = !{!803, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !801, file: !38, line: 287, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!46, !771}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !801, file: !38, line: 288, baseType: !795, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !801, file: !38, line: 289, baseType: !804, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !801, file: !38, line: 290, baseType: !804, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !801, file: !38, line: 291, baseType: !804, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !801, file: !38, line: 292, baseType: !804, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !801, file: !38, line: 293, baseType: !804, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !801, file: !38, line: 294, baseType: !804, size: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !801, file: !38, line: 295, baseType: !804, size: 64, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !801, file: !38, line: 296, baseType: !804, size: 64, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !801, file: !38, line: 297, baseType: !804, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !801, file: !38, line: 298, baseType: !804, size: 64, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !801, file: !38, line: 299, baseType: !804, size: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !801, file: !38, line: 300, baseType: !804, size: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !801, file: !38, line: 301, baseType: !804, size: 64, offset: 896)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !801, file: !38, line: 302, baseType: !804, size: 64, offset: 960)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !801, file: !38, line: 303, baseType: !804, size: 64, offset: 1024)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !801, file: !38, line: 304, baseType: !804, size: 64, offset: 1088)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !801, file: !38, line: 305, baseType: !804, size: 64, offset: 1152)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !801, file: !38, line: 306, baseType: !804, size: 64, offset: 1216)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !801, file: !38, line: 307, baseType: !804, size: 64, offset: 1280)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !801, file: !38, line: 308, baseType: !804, size: 64, offset: 1344)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !801, file: !38, line: 309, baseType: !804, size: 64, offset: 1408)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !100, file: !26, line: 714, baseType: !830, size: 64, offset: 768)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !833, line: 80, size: 1344, elements: !834)
!833 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!834 = !{!835, !836, !837, !838, !839, !840, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1301}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !832, file: !833, line: 81, baseType: !107, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !832, file: !833, line: 82, baseType: !107, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !832, file: !833, line: 83, baseType: !247, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !832, file: !833, line: 84, baseType: !247, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !832, file: !833, line: 85, baseType: !247, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !832, file: !833, line: 87, baseType: !841, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!46, !771, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !846)
!846 = !{!847, !848, !849, !1232, !1233, !1234, !1235, !1251, !1264, !1265, !1266, !1267, !1268, !1276, !1277, !1278, !1279, !1280, !1281}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !845, file: !20, line: 97, baseType: !107, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !845, file: !20, line: 98, baseType: !830, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !845, file: !20, line: 100, baseType: !850, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !852)
!852 = !{!853, !854, !855, !859, !880, !906, !907, !908, !909, !913, !916, !917, !918, !971, !972, !973, !974, !975, !976, !977, !978, !986, !990, !1010, !1028, !1029, !1030, !1031, !1040, !1064, !1065, !1068, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1082, !1083, !1190, !1198, !1199, !1200, !1202, !1206, !1207, !1211, !1212, !1213, !1214, !1216, !1217, !1218, !1225, !1226, !1227, !1231}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !851, file: !13, line: 403, baseType: !12, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !851, file: !13, line: 406, baseType: !111, size: 128, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !851, file: !13, line: 409, baseType: !856, size: 448, offset: 192)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 448, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 56)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !851, file: !13, line: 417, baseType: !860, size: 768, offset: 640)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !861)
!861 = !{!862, !863, !864, !865, !868}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !860, file: !13, line: 46, baseType: !103, size: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !860, file: !13, line: 47, baseType: !850, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !860, file: !13, line: 48, baseType: !118, size: 64, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !860, file: !13, line: 49, baseType: !866, size: 64, offset: 640)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !860, file: !13, line: 50, baseType: !869, size: 64, offset: 704)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !871, line: 26, size: 256, elements: !872)
!871 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !870, file: !871, line: 27, baseType: !7, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !870, file: !871, line: 28, baseType: !875, size: 192, offset: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !876, line: 43, size: 192, elements: !877)
!876 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !875, file: !876, line: 44, baseType: !386, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !875, file: !876, line: 45, baseType: !111, size: 128, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !851, file: !13, line: 418, baseType: !881, size: 64, offset: 1408)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !883)
!883 = !{!884, !885, !890, !894, !898, !902}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !882, file: !13, line: 54, baseType: !233, size: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !882, file: !13, line: 55, baseType: !886, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!227, !881, !889, !195}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !882, file: !13, line: 57, baseType: !891, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!227, !881, !889, !107, !242}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !882, file: !13, line: 59, baseType: !895, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !850, !107}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !882, file: !13, line: 60, baseType: !899, size: 64, offset: 320)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!46, !850}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !882, file: !13, line: 61, baseType: !903, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !850}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !851, file: !13, line: 419, baseType: !107, size: 64, offset: 1472)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !851, file: !13, line: 420, baseType: !107, size: 64, offset: 1536)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !851, file: !13, line: 421, baseType: !118, size: 64, offset: 1600)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !851, file: !13, line: 424, baseType: !910, size: 64, offset: 1664)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !851, file: !13, line: 425, baseType: !914, size: 64, offset: 1728)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !851, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !851, file: !13, line: 435, baseType: !452, size: 256, offset: 1856)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !851, file: !13, line: 437, baseType: !919, size: 64, offset: 2112)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !921, line: 69, size: 320, elements: !922)
!921 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!922 = !{!923, !924, !925, !942, !944, !948, !949}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !920, file: !921, line: 70, baseType: !107, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !920, file: !921, line: 71, baseType: !850, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !920, file: !921, line: 72, baseType: !926, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !921, line: 47, size: 256, elements: !929)
!929 = !{!930, !931, !937, !941}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !928, file: !921, line: 49, baseType: !7, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !928, file: !921, line: 51, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!46, !107, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !928, file: !921, line: 53, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!46, !195, !935}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !928, file: !921, line: 55, baseType: !616, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !920, file: !921, line: 73, baseType: !943, size: 16, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !920, file: !921, line: 74, baseType: !945, size: 8, offset: 208)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !154, line: 16, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !156, line: 20, baseType: !947)
!947 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !920, file: !921, line: 75, baseType: !153, size: 8, offset: 216)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !921, line: 76, baseType: !950, size: 64, offset: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !921, line: 76, size: 64, elements: !951)
!951 = !{!952, !953, !960}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !950, file: !921, line: 77, baseType: !94, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !950, file: !921, line: 78, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !921, line: 86, size: 128, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !956, file: !921, line: 87, baseType: !7, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !956, file: !921, line: 88, baseType: !195, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !950, file: !921, line: 79, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !921, line: 92, size: 256, elements: !964)
!964 = !{!965, !966, !967, !969, !970}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !963, file: !921, line: 94, baseType: !7, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !963, file: !921, line: 95, baseType: !7, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !963, file: !921, line: 96, baseType: !968, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !963, file: !921, line: 97, baseType: !926, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !963, file: !921, line: 98, baseType: !94, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !851, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !851, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !851, file: !13, line: 442, baseType: !910, size: 64, offset: 2240)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !851, file: !13, line: 443, baseType: !914, size: 64, offset: 2304)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !851, file: !13, line: 444, baseType: !552, size: 8, offset: 2368)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !851, file: !13, line: 451, baseType: !552, size: 8, offset: 2376)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !851, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !851, file: !13, line: 455, baseType: !979, size: 64, offset: 2432)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !981, line: 23, size: 96, elements: !982)
!981 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !980, file: !981, line: 24, baseType: !46, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !980, file: !981, line: 24, baseType: !46, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !980, file: !981, line: 24, baseType: !46, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !851, file: !13, line: 458, baseType: !987, size: 64, offset: 2496)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!46}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !851, file: !13, line: 460, baseType: !991, size: 4032, align: 512, offset: 2560)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 4032, elements: !1008)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !992, file: !13, line: 363, baseType: !94, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !992, file: !13, line: 367, baseType: !997, size: 448, offset: 128)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !997, file: !13, line: 320, baseType: !850, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !997, file: !13, line: 321, baseType: !1001, size: 384, offset: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1002, line: 40, size: 384, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1001, file: !1002, line: 41, baseType: !1005, size: 384, align: 64)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 384, align: 64, elements: !1006)
!1006 = !{!1007}
!1007 = !DISubrange(count: 2)
!1008 = !{!1009}
!1009 = !DISubrange(count: 7)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !851, file: !13, line: 463, baseType: !1011, size: 192, offset: 6592)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1012, line: 8, size: 192, elements: !1013)
!1012 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1013 = !{!1014, !1015, !1017}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1011, file: !1012, line: 10, baseType: !7, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1011, file: !1012, line: 11, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1011, file: !1012, line: 12, baseType: !1018, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1020, line: 59, size: 48, elements: !1021)
!1020 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1019, file: !1020, line: 60, baseType: !490, size: 16)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1019, file: !1020, line: 61, baseType: !490, size: 16, offset: 16)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1019, file: !1020, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1019, file: !1020, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1019, file: !1020, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1019, file: !1020, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !851, file: !13, line: 465, baseType: !245, size: 64, offset: 6784)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !851, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !851, file: !13, line: 470, baseType: !111, size: 128, offset: 6912)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !851, file: !13, line: 471, baseType: !1032, size: 64, offset: 7040)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1034, line: 33, size: 96, elements: !1035)
!1034 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1035 = !{!1036, !1037, !1038, !1039}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1033, file: !1034, line: 37, baseType: !46, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1033, file: !1034, line: 43, baseType: !46, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1033, file: !1034, line: 45, baseType: !165, size: 16, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !1034, line: 47, baseType: !165, size: 16, offset: 80)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !851, file: !13, line: 476, baseType: !1041, size: 64, offset: 7104)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1043)
!1043 = !{!1044, !1061, !1062, !1063}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1042, file: !13, line: 379, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1047, line: 204, baseType: !1048)
!1047 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1047, line: 197, size: 192, elements: !1049)
!1049 = !{!1050, !1053, !1054, !1055, !1057, !1059}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1048, file: !1047, line: 198, baseType: !1051, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1047, line: 21, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !156, line: 27, baseType: !7)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1048, file: !1047, line: 199, baseType: !157, size: 8, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1048, file: !1047, line: 200, baseType: !157, size: 8, offset: 40)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1048, file: !1047, line: 201, baseType: !1056, size: 16, offset: 48)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1047, line: 17, baseType: !164)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1048, file: !1047, line: 202, baseType: !1058, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1047, line: 16, baseType: !359)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1048, file: !1047, line: 203, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1047, line: 22, baseType: !359)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1042, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1042, file: !13, line: 381, baseType: !195, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1042, file: !13, line: 382, baseType: !195, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !851, file: !13, line: 477, baseType: !1042, size: 256, offset: 7168)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !851, file: !13, line: 480, baseType: !1066, size: 64, offset: 7424)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !851, file: !13, line: 483, baseType: !1069, size: 64, offset: 7488)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !851, file: !13, line: 488, baseType: !195, size: 64, offset: 7552)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !851, file: !13, line: 492, baseType: !94, size: 64, offset: 7616)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !851, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !851, file: !13, line: 495, baseType: !94, size: 64, offset: 7744)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !851, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !851, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !851, file: !13, line: 500, baseType: !1078, size: 64, offset: 7872)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1080, line: 45, baseType: !1081)
!1080 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !851, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !851, file: !13, line: 504, baseType: !1084, size: 64, offset: 8000)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1087, line: 96, size: 192, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1088 = !{!1089, !1090, !1151, !1154}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1086, file: !1087, line: 97, baseType: !7, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1086, file: !1087, line: 98, baseType: !1091, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1087, line: 24, size: 3072, elements: !1093)
!1093 = !{!1094, !1096, !1097, !1098, !1099, !1113, !1114, !1115, !1116, !1135, !1136, !1137, !1148, !1149, !1150}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1092, file: !1087, line: 26, baseType: !1095, size: 128)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 128, elements: !1006)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1092, file: !1087, line: 27, baseType: !1095, size: 128, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1092, file: !1087, line: 28, baseType: !46, size: 32, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1092, file: !1087, line: 31, baseType: !125, size: 32, align: 512, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1092, file: !1087, line: 32, baseType: !1100, size: 960, offset: 576)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1101, line: 206, size: 960, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1102 = !{!1103, !1104, !1107, !1109, !1110, !1112}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1100, file: !1101, line: 207, baseType: !304, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1100, file: !1101, line: 208, baseType: !1105, size: 256, offset: 64)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1106, size: 256, elements: !433)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1100, file: !1101, line: 209, baseType: !1108, size: 256, offset: 320)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 256, elements: !433)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1100, file: !1101, line: 213, baseType: !231, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1100, file: !1101, line: 215, baseType: !1111, size: 256, offset: 640)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 256, elements: !433)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1100, file: !1101, line: 216, baseType: !153, size: 8, offset: 896)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1092, file: !1087, line: 33, baseType: !245, size: 64, offset: 1536)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1092, file: !1087, line: 34, baseType: !245, size: 64, offset: 1600)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1092, file: !1087, line: 35, baseType: !552, size: 8, offset: 1664)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1092, file: !1087, line: 36, baseType: !1117, size: 320, offset: 1728)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1118, line: 11, size: 320, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1119 = !{!1120, !1127, !1128, !1133}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1117, file: !1118, line: 16, baseType: !1121, size: 128)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !112, line: 198, size: 128, elements: !1122)
!1122 = !{!1123, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1121, file: !112, line: 199, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1121, file: !112, line: 199, baseType: !1126, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1117, file: !1118, line: 17, baseType: !245, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1117, file: !1118, line: 18, baseType: !1129, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !1132}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1117, file: !1118, line: 19, baseType: !1134, size: 32, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !154, line: 21, baseType: !1052)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1092, file: !1087, line: 37, baseType: !517, size: 256, offset: 2048)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1092, file: !1087, line: 38, baseType: !301, size: 128, align: 64, offset: 2304)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1092, file: !1087, line: 39, baseType: !1138, size: 64, offset: 2432)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1087, line: 49, size: 768, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1139, file: !1087, line: 50, baseType: !125, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1139, file: !1087, line: 51, baseType: !1108, size: 256, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1139, file: !1087, line: 53, baseType: !1108, size: 256, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1139, file: !1087, line: 54, baseType: !245, size: 64, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1139, file: !1087, line: 55, baseType: !1138, size: 64, offset: 640)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1139, file: !1087, line: 56, baseType: !46, size: 32, offset: 704)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1139, file: !1087, line: 57, baseType: !46, size: 32, offset: 736)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1092, file: !1087, line: 40, baseType: !245, size: 64, offset: 2496)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1092, file: !1087, line: 42, baseType: !46, size: 32, offset: 2560)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1092, file: !1087, line: 43, baseType: !1085, size: 64, offset: 2624)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1086, file: !1087, line: 99, baseType: !1152, offset: 128)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1153, line: 211, elements: !331)
!1153 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1086, file: !1087, line: 100, baseType: !1155, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1087, line: 63, size: 3008, elements: !1157)
!1157 = !{!1158, !1159, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1189}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1156, file: !1087, line: 64, baseType: !1138, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1156, file: !1087, line: 65, baseType: !1160, size: 192, offset: 64)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 192, elements: !196)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1156, file: !1087, line: 67, baseType: !46, size: 32, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1156, file: !1087, line: 68, baseType: !452, size: 256, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1156, file: !1087, line: 69, baseType: !125, size: 32, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1156, file: !1087, line: 70, baseType: !452, size: 256, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1156, file: !1087, line: 71, baseType: !245, size: 64, offset: 896)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1156, file: !1087, line: 72, baseType: !245, size: 64, offset: 960)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1156, file: !1087, line: 73, baseType: !245, size: 64, offset: 1024)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1156, file: !1087, line: 74, baseType: !245, size: 64, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1156, file: !1087, line: 75, baseType: !245, size: 64, offset: 1152)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1156, file: !1087, line: 76, baseType: !245, size: 64, offset: 1216)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1156, file: !1087, line: 77, baseType: !245, size: 64, offset: 1280)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1156, file: !1087, line: 78, baseType: !245, size: 64, offset: 1344)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1156, file: !1087, line: 79, baseType: !552, size: 8, offset: 1408)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1156, file: !1087, line: 80, baseType: !245, size: 64, offset: 1472)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1156, file: !1087, line: 81, baseType: !452, size: 256, offset: 1536)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1156, file: !1087, line: 82, baseType: !870, size: 256, offset: 1792)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1156, file: !1087, line: 84, baseType: !145, size: 32, offset: 2048)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1156, file: !1087, line: 87, baseType: !245, size: 64, offset: 2112)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1156, file: !1087, line: 88, baseType: !245, size: 64, offset: 2176)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1156, file: !1087, line: 89, baseType: !1181, size: 704, offset: 2240)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !518, line: 111, size: 704, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1188}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1181, file: !518, line: 112, baseType: !517, size: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1181, file: !518, line: 113, baseType: !1117, size: 320, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1181, file: !518, line: 116, baseType: !1186, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !518, line: 18, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1181, file: !518, line: 117, baseType: !46, size: 32, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1156, file: !1087, line: 90, baseType: !1085, size: 64, offset: 2944)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !851, file: !13, line: 515, baseType: !1191, size: 64, offset: 8064)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1193, line: 117, size: 128, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1194 = !{!1195, !1196, !1197}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1192, file: !1193, line: 118, baseType: !431, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1192, file: !1193, line: 119, baseType: !431, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1192, file: !1193, line: 120, baseType: !231, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !851, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !851, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !851, file: !13, line: 520, baseType: !1201, size: 64, offset: 8192)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !851, file: !13, line: 523, baseType: !1203, size: 64, offset: 8256)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !851, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !851, file: !13, line: 525, baseType: !1208, size: 64, offset: 8384)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !851, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !851, file: !13, line: 533, baseType: !94, size: 64, offset: 8512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !851, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !851, file: !13, line: 535, baseType: !1215, size: 64, offset: 8640)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !851, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !851, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !851, file: !13, line: 540, baseType: !1219, size: 64, offset: 8768)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1221, line: 32, size: 64, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1220, file: !1221, line: 33, baseType: !431, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1220, file: !1221, line: 34, baseType: !431, size: 32, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !851, file: !13, line: 563, baseType: !111, size: 128, offset: 8832)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !851, file: !13, line: 565, baseType: !111, size: 128, offset: 8960)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !851, file: !13, line: 568, baseType: !1228, size: 64, offset: 9088)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !851, file: !13, line: 570, baseType: !145, size: 32, offset: 9152)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !845, file: !20, line: 101, baseType: !107, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !845, file: !20, line: 103, baseType: !552, size: 8, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !845, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !845, file: !20, line: 106, baseType: !1236, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1239, line: 282, size: 1600, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1240 = !{!1241, !1245, !1246, !1250}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1238, file: !1239, line: 283, baseType: !1242, size: 256)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1238, file: !1239, line: 284, baseType: !1242, size: 256, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1238, file: !1239, line: 285, baseType: !1247, size: 1024, offset: 512)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1024, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1238, file: !1239, line: 286, baseType: !473, size: 64, offset: 1536)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !845, file: !20, line: 107, baseType: !1252, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1239, line: 217, size: 256, elements: !1255)
!1255 = !{!1256, !1260, !1262, !1263}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1254, file: !1239, line: 218, baseType: !1257, size: 128)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 16)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1254, file: !1239, line: 219, baseType: !1261, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1239, line: 15, baseType: !245)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1254, file: !1239, line: 220, baseType: !1052, size: 32, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1254, file: !1239, line: 221, baseType: !1052, size: 32, offset: 224)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !845, file: !20, line: 109, baseType: !804, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !845, file: !20, line: 110, baseType: !795, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !845, file: !20, line: 111, baseType: !804, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !845, file: !20, line: 112, baseType: !795, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !845, file: !20, line: 113, baseType: !1269, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!46, !771, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1274)
!1274 = !{!1275}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1273, file: !38, line: 59, baseType: !46, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !845, file: !20, line: 114, baseType: !804, size: 64, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !845, file: !20, line: 115, baseType: !247, size: 64, offset: 832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !845, file: !20, line: 116, baseType: !247, size: 64, offset: 896)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !845, file: !20, line: 118, baseType: !799, size: 64, offset: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !845, file: !20, line: 119, baseType: !795, size: 64, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !845, file: !20, line: 121, baseType: !1282, size: 64, offset: 1088)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !832, file: !833, line: 88, baseType: !784, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !832, file: !833, line: 89, baseType: !804, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !832, file: !833, line: 90, baseType: !795, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !832, file: !833, line: 91, baseType: !795, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !832, file: !833, line: 92, baseType: !795, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !832, file: !833, line: 94, baseType: !804, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !832, file: !833, line: 95, baseType: !804, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !832, file: !833, line: 97, baseType: !1269, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !832, file: !833, line: 98, baseType: !804, size: 64, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !832, file: !833, line: 100, baseType: !804, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !832, file: !833, line: 102, baseType: !804, size: 64, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !832, file: !833, line: 103, baseType: !795, size: 64, offset: 1088)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !832, file: !833, line: 105, baseType: !799, size: 64, offset: 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !832, file: !833, line: 107, baseType: !1298, size: 64, offset: 1216)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !833, line: 107, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !832, file: !833, line: 109, baseType: !552, size: 8, offset: 1280)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !100, file: !26, line: 715, baseType: !844, size: 64, offset: 832)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !100, file: !26, line: 717, baseType: !94, size: 64, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !100, file: !26, line: 719, baseType: !94, size: 64, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !100, file: !26, line: 721, baseType: !452, size: 256, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !100, file: !26, line: 725, baseType: !1307, size: 448, offset: 1280)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1307, file: !26, line: 518, baseType: !111, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1307, file: !26, line: 519, baseType: !111, size: 128, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1307, file: !26, line: 520, baseType: !111, size: 128, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1307, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !100, file: !26, line: 726, baseType: !1314, size: 2496, offset: 1728)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1360, !1361, !1362, !1363, !1364, !1365, !1436, !1437, !1438, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1476, !1480}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1314, file: !38, line: 664, baseType: !1272, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1314, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1314, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1314, file: !38, line: 667, baseType: !552, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1314, file: !38, line: 668, baseType: !552, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1314, file: !38, line: 669, baseType: !552, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1314, file: !38, line: 670, baseType: !552, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1314, file: !38, line: 671, baseType: !552, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1314, file: !38, line: 672, baseType: !552, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1314, file: !38, line: 673, baseType: !552, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1314, file: !38, line: 674, baseType: !552, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1314, file: !38, line: 675, baseType: !1134, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1314, file: !38, line: 676, baseType: !125, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1314, file: !38, line: 678, baseType: !111, size: 128, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1314, file: !38, line: 679, baseType: !870, size: 256, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1314, file: !38, line: 680, baseType: !1332, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1334, line: 43, size: 1536, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1343, !1344, !1345, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1333, file: !1334, line: 44, baseType: !107, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1333, file: !1334, line: 45, baseType: !46, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1333, file: !1334, line: 46, baseType: !111, size: 128, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1333, file: !1334, line: 47, baseType: !125, size: 32, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1333, file: !1334, line: 48, baseType: !1341, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1333, file: !1334, line: 49, baseType: !1117, size: 320, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1333, file: !1334, line: 50, baseType: !245, size: 64, offset: 704)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1333, file: !1334, line: 51, baseType: !1346, size: 64, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1347, line: 29, baseType: !370)
!1347 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1333, file: !1334, line: 52, baseType: !1346, size: 64, offset: 832)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1333, file: !1334, line: 53, baseType: !1346, size: 64, offset: 896)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1333, file: !1334, line: 54, baseType: !1346, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1333, file: !1334, line: 55, baseType: !1346, size: 64, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1333, file: !1334, line: 56, baseType: !245, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1333, file: !1334, line: 57, baseType: !245, size: 64, offset: 1152)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1333, file: !1334, line: 58, baseType: !245, size: 64, offset: 1216)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1333, file: !1334, line: 59, baseType: !245, size: 64, offset: 1280)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1333, file: !1334, line: 60, baseType: !245, size: 64, offset: 1344)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1333, file: !1334, line: 61, baseType: !771, size: 64, offset: 1408)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1333, file: !1334, line: 62, baseType: !552, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1333, file: !1334, line: 63, baseType: !552, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1314, file: !38, line: 681, baseType: !552, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1314, file: !38, line: 682, baseType: !552, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1314, file: !38, line: 683, baseType: !552, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1314, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1314, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1314, file: !38, line: 690, baseType: !1366, size: 512, offset: 640)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1367)
!1367 = !{!1368, !1374, !1375, !1380, !1432, !1433, !1434, !1435}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1366, file: !33, line: 119, baseType: !1369, size: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1370, line: 9, size: 256, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1369, file: !1370, line: 10, baseType: !558, size: 192, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1369, file: !1370, line: 11, baseType: !1346, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1366, file: !33, line: 120, baseType: !1346, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1366, file: !33, line: 121, baseType: !1376, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!32, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1366, file: !33, line: 122, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1383)
!1383 = !{!1384, !1409, !1410, !1413, !1418, !1419, !1427, !1431}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1382, file: !33, line: 160, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !33, line: 216, baseType: !386, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1386, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1386, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1386, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1386, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1386, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1386, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1386, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1386, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1386, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1386, file: !33, line: 227, baseType: !165, size: 16, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1386, file: !33, line: 228, baseType: !165, size: 16, offset: 208)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1386, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1386, file: !33, line: 235, baseType: !1346, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1386, file: !33, line: 236, baseType: !1379, size: 64, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1386, file: !33, line: 237, baseType: !1346, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1386, file: !33, line: 238, baseType: !1379, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1386, file: !33, line: 239, baseType: !1406, size: 4096, align: 512, offset: 512)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 4096, align: 512, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 8)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1382, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1382, file: !33, line: 162, baseType: !1411, size: 32, offset: 96)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !112, line: 32, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !229, line: 96, baseType: !46)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1382, file: !33, line: 163, baseType: !1414, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !401, line: 274, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !401, line: 274, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1415, file: !401, line: 274, baseType: !400, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1382, file: !33, line: 164, baseType: !1379, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1382, file: !33, line: 165, baseType: !1420, size: 128, offset: 256)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1370, line: 14, size: 128, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1420, file: !1370, line: 15, baseType: !1423, size: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !559, line: 26, size: 128, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1423, file: !559, line: 27, baseType: !661, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1423, file: !559, line: 28, baseType: !563, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1382, file: !33, line: 166, baseType: !1428, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1346}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1382, file: !33, line: 167, baseType: !1346, size: 64, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1366, file: !33, line: 123, baseType: !153, size: 8, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1366, file: !33, line: 124, baseType: !153, size: 8, offset: 456)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1366, file: !33, line: 125, baseType: !153, size: 8, offset: 464)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1366, file: !33, line: 126, baseType: !153, size: 8, offset: 472)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1314, file: !38, line: 691, baseType: !358, size: 64, offset: 1152)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1314, file: !38, line: 692, baseType: !517, size: 256, offset: 1216)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1314, file: !38, line: 693, baseType: !1439, size: 192, offset: 1472)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1440, line: 41, baseType: !1441)
!1440 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1440, line: 37, size: 192, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1441, file: !1440, line: 38, baseType: !125, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1441, file: !1440, line: 39, baseType: !111, size: 128, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1314, file: !38, line: 694, baseType: !1341, size: 64, offset: 1664)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1314, file: !38, line: 695, baseType: !145, size: 32, offset: 1728)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1314, file: !38, line: 696, baseType: !145, size: 32, offset: 1760)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1314, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1314, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1314, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1314, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1314, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1314, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1314, file: !38, line: 703, baseType: !552, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1314, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1314, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1314, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1314, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1314, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1314, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1314, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1314, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1314, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1314, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1314, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1314, file: !38, line: 715, baseType: !358, size: 64, offset: 2048)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1314, file: !38, line: 716, baseType: !358, size: 64, offset: 2112)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1314, file: !38, line: 717, baseType: !358, size: 64, offset: 2176)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1314, file: !38, line: 718, baseType: !358, size: 64, offset: 2240)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1314, file: !38, line: 720, baseType: !1471, size: 64, offset: 2304)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1472, file: !38, line: 633, baseType: !125, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1472, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1314, file: !38, line: 721, baseType: !1477, size: 64, offset: 2368)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !771, !431}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1314, file: !38, line: 722, baseType: !1481, size: 64, offset: 2432)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !100, file: !26, line: 727, baseType: !1484, size: 64, offset: 4224)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1493, !1494, !1495}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1485, file: !38, line: 743, baseType: !801, size: 1472)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1485, file: !38, line: 744, baseType: !804, size: 64, offset: 1472)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1485, file: !38, line: 745, baseType: !1490, size: 64, offset: 1536)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !771, !552}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1485, file: !38, line: 746, baseType: !804, size: 64, offset: 1600)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1485, file: !38, line: 747, baseType: !795, size: 64, offset: 1664)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1485, file: !38, line: 748, baseType: !795, size: 64, offset: 1728)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !100, file: !26, line: 736, baseType: !1497, size: 128, offset: 4288)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1498)
!1498 = !{!1499, !1503}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1497, file: !26, line: 531, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1502, line: 13, flags: DIFlagFwdDecl)
!1502 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1497, file: !26, line: 532, baseType: !1504, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !100, file: !26, line: 738, baseType: !1507, size: 64, offset: 4416)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !100, file: !26, line: 740, baseType: !1511, size: 64, offset: 4480)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !100, file: !26, line: 741, baseType: !358, size: 64, offset: 4544)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !100, file: !26, line: 746, baseType: !358, size: 64, offset: 4608)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !100, file: !26, line: 747, baseType: !1515, size: 64, offset: 4672)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !100, file: !26, line: 749, baseType: !1519, size: 64, offset: 4736)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1521)
!1521 = !{!1522, !1523, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1520, file: !26, line: 433, baseType: !7, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1520, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1520, file: !26, line: 435, baseType: !245, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !100, file: !26, line: 751, baseType: !111, size: 128, offset: 4800)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !100, file: !26, line: 762, baseType: !1527, size: 64, offset: 4928)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !100, file: !26, line: 770, baseType: !1530, offset: 4992)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1531, line: 5, elements: !331)
!1531 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !100, file: !26, line: 772, baseType: !1533, size: 64, offset: 4992)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1535, line: 18, flags: DIFlagFwdDecl)
!1535 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !100, file: !26, line: 773, baseType: !1537, size: 64, offset: 5056)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !833, line: 22, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !100, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !100, file: !26, line: 778, baseType: !1541, size: 32, offset: 5152)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !112, line: 21, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !112, line: 18, baseType: !1134)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !100, file: !26, line: 779, baseType: !1134, size: 32, offset: 5184)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !100, file: !26, line: 781, baseType: !125, size: 32, offset: 5216)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !100, file: !26, line: 782, baseType: !111, size: 128, offset: 5248)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !100, file: !26, line: 784, baseType: !1547, size: 64, offset: 5376)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1550, line: 52, size: 768, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1560, !1564, !1565, !1566, !1567, !1571, !1575}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1549, file: !1550, line: 53, baseType: !107, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1549, file: !1550, line: 55, baseType: !247, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1549, file: !1550, line: 56, baseType: !247, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1549, file: !1550, line: 58, baseType: !784, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1549, file: !1550, line: 59, baseType: !1557, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!195, !787, !793}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1549, file: !1550, line: 61, baseType: !1561, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !1547}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1549, file: !1550, line: 62, baseType: !795, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1549, file: !1550, line: 64, baseType: !804, size: 64, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1549, file: !1550, line: 66, baseType: !592, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1549, file: !1550, line: 67, baseType: !1568, size: 64, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!473, !787}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1549, file: !1550, line: 69, baseType: !1572, size: 64, offset: 640)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !787, !627, !634}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1549, file: !1550, line: 71, baseType: !799, size: 64, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !100, file: !26, line: 785, baseType: !247, size: 64, offset: 5440)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !100, file: !26, line: 787, baseType: !795, size: 64, offset: 5504)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !100, file: !26, line: 788, baseType: !1579, size: 64, offset: 5568)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !100, file: !26, line: 789, baseType: !1582, size: 64, offset: 5632)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !100, file: !26, line: 791, baseType: !1585, size: 64, offset: 5696)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1591, !1592}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1586, file: !26, line: 598, baseType: !53, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1586, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1586, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1586, file: !26, line: 601, baseType: !552, size: 8, offset: 96)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1586, file: !26, line: 602, baseType: !552, size: 8, offset: 104)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !100, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !100, file: !26, line: 795, baseType: !552, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !100, file: !26, line: 796, baseType: !552, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !100, file: !26, line: 797, baseType: !552, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !100, file: !26, line: 798, baseType: !552, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !100, file: !26, line: 799, baseType: !552, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !96, file: !97, line: 245, baseType: !358, size: 64, offset: 5824)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !96, file: !97, line: 246, baseType: !7, size: 32, offset: 5888)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !96, file: !97, line: 247, baseType: !46, size: 32, offset: 5920)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !96, file: !97, line: 249, baseType: !111, size: 128, offset: 5952)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !96, file: !97, line: 250, baseType: !111, size: 128, offset: 6080)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !96, file: !97, line: 251, baseType: !111, size: 128, offset: 6208)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !96, file: !97, line: 252, baseType: !111, size: 128, offset: 6336)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !96, file: !97, line: 254, baseType: !1607, size: 64, offset: 6464)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !97, line: 411, size: 6720, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1616, !1617, !1618, !1622, !1626, !1627, !1628, !1629, !1630}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1608, file: !97, line: 412, baseType: !111, size: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1608, file: !97, line: 413, baseType: !195, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1608, file: !97, line: 416, baseType: !1613, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!46, !95}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1608, file: !97, line: 417, baseType: !1613, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1608, file: !97, line: 418, baseType: !1613, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1608, file: !97, line: 421, baseType: !1619, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!552, !95}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1608, file: !97, line: 422, baseType: !1623, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!46, !95, !1272}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1608, file: !97, line: 423, baseType: !1613, size: 64, offset: 512)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1608, file: !97, line: 426, baseType: !157, size: 8, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1608, file: !97, line: 427, baseType: !100, size: 5824, offset: 640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !1608, file: !97, line: 428, baseType: !111, size: 128, offset: 6464)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1608, file: !97, line: 429, baseType: !111, size: 128, offset: 6592)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !96, file: !97, line: 255, baseType: !1632, size: 64, offset: 6528)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !97, line: 202, size: 6976, elements: !1634)
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640, !1641, !1648, !1652, !1653, !1654, !1655, !1656}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1633, file: !97, line: 203, baseType: !100, size: 5824)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1633, file: !97, line: 204, baseType: !157, size: 8, offset: 5824)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1633, file: !97, line: 205, baseType: !111, size: 128, offset: 5888)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1633, file: !97, line: 206, baseType: !111, size: 128, offset: 6016)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1633, file: !97, line: 207, baseType: !111, size: 128, offset: 6144)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1633, file: !97, line: 209, baseType: !1607, size: 64, offset: 6272)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1633, file: !97, line: 210, baseType: !1642, size: 64, offset: 6336)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !97, line: 369, size: 128, elements: !1644)
!1644 = !{!1645, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1643, file: !97, line: 370, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !1407)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1643, file: !97, line: 371, baseType: !1642, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1633, file: !97, line: 212, baseType: !1649, size: 400, offset: 6400)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 400, elements: !1650)
!1650 = !{!1651}
!1651 = !DISubrange(count: 50)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !1633, file: !97, line: 213, baseType: !157, size: 8, offset: 6800)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !1633, file: !97, line: 214, baseType: !157, size: 8, offset: 6808)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1633, file: !97, line: 215, baseType: !7, size: 32, offset: 6816)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1633, file: !97, line: 216, baseType: !157, size: 8, offset: 6848)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1633, file: !97, line: 217, baseType: !1657, size: 64, offset: 6912)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !97, line: 217, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !96, file: !97, line: 256, baseType: !1660, size: 64, offset: 6592)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !97, line: 374, size: 1664, elements: !1662)
!1662 = !{!1663, !1664, !1672, !1673, !1677, !1681, !1682, !1683, !1684}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1661, file: !97, line: 375, baseType: !107, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1661, file: !97, line: 376, baseType: !1665, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1239, line: 240, size: 128, elements: !1668)
!1668 = !{!1669, !1671}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1667, file: !1239, line: 241, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !1407)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1667, file: !1239, line: 242, baseType: !1261, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1661, file: !97, line: 377, baseType: !7, size: 32, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1661, file: !97, line: 378, baseType: !1674, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!46, !95, !1665}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1661, file: !97, line: 379, baseType: !1678, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !95}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1661, file: !97, line: 380, baseType: !1678, size: 64, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1661, file: !97, line: 381, baseType: !1623, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1661, file: !97, line: 382, baseType: !1613, size: 64, offset: 448)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1661, file: !97, line: 383, baseType: !845, size: 1152, offset: 512)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !96, file: !97, line: 257, baseType: !1686, size: 64, offset: 6656)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !97, line: 226, size: 256, elements: !1688)
!1688 = !{!1689, !1690, !1726, !1727}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !1687, file: !97, line: 227, baseType: !1632, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1687, file: !97, line: 228, baseType: !1691, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !97, line: 388, size: 2240, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1708, !1709, !1713, !1717, !1721, !1725}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1692, file: !97, line: 389, baseType: !111, size: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1692, file: !97, line: 390, baseType: !195, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1692, file: !97, line: 391, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1239, line: 245, size: 640, elements: !1700)
!1700 = !{!1701, !1702, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1699, file: !1239, line: 246, baseType: !1670, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1699, file: !1239, line: 247, baseType: !1261, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !1699, file: !1239, line: 250, baseType: !1704, size: 512, offset: 128)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1705, size: 512, elements: !1407)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1699, file: !1239, line: 248, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1705, file: !1239, line: 249, baseType: !1670, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1692, file: !97, line: 392, baseType: !7, size: 32, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1692, file: !97, line: 393, baseType: !1710, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!46, !1686, !1697}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1692, file: !97, line: 395, baseType: !1714, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !1686}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1692, file: !97, line: 396, baseType: !1718, size: 64, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!46, !1686, !1272}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1692, file: !97, line: 397, baseType: !1722, size: 64, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!46, !1686}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1692, file: !97, line: 398, baseType: !1661, size: 1664, offset: 576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1687, file: !97, line: 229, baseType: !94, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !1687, file: !97, line: 230, baseType: !1272, size: 32, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !96, file: !97, line: 259, baseType: !1642, size: 64, offset: 6720)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !96, file: !97, line: 261, baseType: !46, size: 32, offset: 6784)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !96, file: !97, line: 262, baseType: !46, size: 32, offset: 6816)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !96, file: !97, line: 263, baseType: !7, size: 32, offset: 6848)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !96, file: !97, line: 264, baseType: !111, size: 128, offset: 6912)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !96, file: !97, line: 265, baseType: !111, size: 128, offset: 7040)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !97, line: 267, baseType: !1649, size: 400, offset: 7168)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !97, line: 268, baseType: !46, size: 32, offset: 7584)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !96, file: !97, line: 269, baseType: !1657, size: 64, offset: 7616)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !96, file: !97, line: 270, baseType: !94, size: 64, offset: 7680)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !112, line: 154, baseType: !7)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !1741, line: 155, size: 640, elements: !1742)
!1741 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad88cd72d3973577aa1f5f71c7f3d528")
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1740, file: !1741, line: 156, baseType: !111, size: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !1740, file: !1741, line: 157, baseType: !1745, size: 512, offset: 128)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !1746, line: 21, size: 512, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!1747 = !{!1748, !1751, !1752, !1753, !1754, !1755, !1757, !1758}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1745, file: !1746, line: 22, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !112, line: 164, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !112, line: 159, baseType: !358)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1745, file: !1746, line: 23, baseType: !1749, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1745, file: !1746, line: 24, baseType: !107, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !1746, line: 25, baseType: !245, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1745, file: !1746, line: 26, baseType: !245, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1745, file: !1746, line: 27, baseType: !1756, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1745, file: !1746, line: 27, baseType: !1756, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1745, file: !1746, line: 27, baseType: !1756, size: 64, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_option", file: !1741, line: 67, size: 576, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1760, file: !1741, line: 68, baseType: !111, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1760, file: !1741, line: 69, baseType: !7, size: 32, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1760, file: !1741, line: 71, baseType: !245, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1760, file: !1741, line: 77, baseType: !1766, size: 320, offset: 256)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1760, file: !1741, line: 72, size: 320, elements: !1767)
!1767 = !{!1768, !1776, !1785, !1790}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1766, file: !1741, line: 73, baseType: !1769, size: 320)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_port", file: !1741, line: 27, size: 320, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1769, file: !1741, line: 28, baseType: !1749, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1769, file: !1741, line: 29, baseType: !1749, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1769, file: !1741, line: 30, baseType: !1749, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1769, file: !1741, line: 31, baseType: !1749, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1769, file: !1741, line: 32, baseType: !157, size: 8, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1766, file: !1741, line: 74, baseType: !1777, size: 320)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_irq", file: !1741, line: 38, size: 320, elements: !1778)
!1778 = !{!1779, !1784}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1777, file: !1741, line: 39, baseType: !1780, size: 256)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_irq_mask_t", file: !1741, line: 36, baseType: !1781)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1741, line: 36, size: 256, elements: !1782)
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1781, file: !1741, line: 36, baseType: !1108, size: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1777, file: !1741, line: 40, baseType: !157, size: 8, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !1766, file: !1741, line: 75, baseType: !1786, size: 16)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dma", file: !1741, line: 43, size: 16, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1786, file: !1741, line: 44, baseType: !157, size: 8)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1786, file: !1741, line: 45, baseType: !157, size: 8, offset: 8)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1766, file: !1741, line: 76, baseType: !1791, size: 320)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_mem", file: !1741, line: 48, size: 320, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1791, file: !1741, line: 49, baseType: !1749, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1791, file: !1741, line: 50, baseType: !1749, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1791, file: !1741, line: 51, baseType: !1749, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1791, file: !1741, line: 52, baseType: !1749, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1791, file: !1741, line: 53, baseType: !157, size: 8, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !112, line: 42, baseType: !245)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!1801 = !{!1802, !0, !1805, !1808, !1813, !1827, !1832, !1835, !1840, !1845, !1848, !1850, !1855, !1857, !1862, !1867, !1869, !1871, !1876, !1878, !1883, !1886, !1888, !1891, !1893, !1895, !1897, !1899, !1901, !1903, !1905, !1910, !1915, !1920, !1922, !1924, !1929, !1934, !1936, !1938, !1940, !1942, !1944, !1946, !1948, !1951, !1953, !1955, !1957, !1959, !1961, !1963, !1965, !1967, !1969, !1971, !1973, !1975, !1977, !1979, !1981, !1983, !1985, !1987, !1989, !1991, !1993}
!1802 = !DIGlobalVariableExpression(var: !1803, expr: !DIExpression())
!1803 = distinct !DIGlobalVariable(name: "pnp_dev_groups", scope: !2, file: !3, line: 467, type: !1804, isLocal: false, isDefinition: true)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 128, elements: !1006)
!1805 = !DIGlobalVariableExpression(var: !1806, expr: !DIExpression())
!1806 = distinct !DIGlobalVariable(name: "pnp_dev_attrs", scope: !2, file: !3, line: 456, type: !1807, isLocal: true, isDefinition: true)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 256, elements: !433)
!1808 = !DIGlobalVariableExpression(var: !1809, expr: !DIExpression())
!1809 = distinct !DIGlobalVariable(scope: null, file: !3, line: 439, type: !1810, isLocal: true, isDefinition: true)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 80, elements: !1811)
!1811 = !{!1812}
!1812 = !DISubrange(count: 10)
!1813 = !DIGlobalVariableExpression(var: !1814, expr: !DIExpression())
!1814 = distinct !DIGlobalVariable(name: "dev_attr_resources", scope: !2, file: !3, line: 439, type: !1815, isLocal: true, isDefinition: true)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1816)
!1816 = !{!1817, !1818, !1823}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1815, file: !26, line: 107, baseType: !233, size: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1815, file: !26, line: 108, baseType: !1819, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!227, !771, !1822, !195}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1815, file: !26, line: 110, baseType: !1824, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!227, !771, !1822, !107, !242}
!1827 = !DIGlobalVariableExpression(var: !1828, expr: !DIExpression())
!1828 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !1829, isLocal: true, isDefinition: true)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 96, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 12)
!1832 = !DIGlobalVariableExpression(var: !1833, expr: !DIExpression())
!1833 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !1834, isLocal: true, isDefinition: true)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 56, elements: !1008)
!1835 = !DIGlobalVariableExpression(var: !1836, expr: !DIExpression())
!1836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !1837, isLocal: true, isDefinition: true)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 72, elements: !1838)
!1838 = !{!1839}
!1839 = !DISubrange(count: 9)
!1840 = !DIGlobalVariableExpression(var: !1841, expr: !DIExpression())
!1841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !1842, isLocal: true, isDefinition: true)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 88, elements: !1843)
!1843 = !{!1844}
!1844 = !DISubrange(count: 11)
!1845 = !DIGlobalVariableExpression(var: !1846, expr: !DIExpression())
!1846 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !1847, isLocal: true, isDefinition: true)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 128, elements: !1258)
!1848 = !DIGlobalVariableExpression(var: !1849, expr: !DIExpression())
!1849 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !1646, isLocal: true, isDefinition: true)
!1850 = !DIGlobalVariableExpression(var: !1851, expr: !DIExpression())
!1851 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !1852, isLocal: true, isDefinition: true)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 8, elements: !1853)
!1853 = !{!1854}
!1854 = !DISubrange(count: 1)
!1855 = !DIGlobalVariableExpression(var: !1856, expr: !DIExpression())
!1856 = distinct !DIGlobalVariable(scope: null, file: !3, line: 292, type: !1834, isLocal: true, isDefinition: true)
!1857 = !DIGlobalVariableExpression(var: !1858, expr: !DIExpression())
!1858 = distinct !DIGlobalVariable(scope: null, file: !84, line: 480, type: !1859, isLocal: true, isDefinition: true)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 168, elements: !1860)
!1860 = !{!1861}
!1861 = !DISubrange(count: 21)
!1862 = !DIGlobalVariableExpression(var: !1863, expr: !DIExpression())
!1863 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !1864, isLocal: true, isDefinition: true)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 200, elements: !1865)
!1865 = !{!1866}
!1866 = !DISubrange(count: 25)
!1867 = !DIGlobalVariableExpression(var: !1868, expr: !DIExpression())
!1868 = distinct !DIGlobalVariable(scope: null, file: !3, line: 351, type: !1646, isLocal: true, isDefinition: true)
!1869 = !DIGlobalVariableExpression(var: !1870, expr: !DIExpression())
!1870 = distinct !DIGlobalVariable(scope: null, file: !3, line: 355, type: !1837, isLocal: true, isDefinition: true)
!1871 = !DIGlobalVariableExpression(var: !1872, expr: !DIExpression())
!1872 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !1873, isLocal: true, isDefinition: true)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 40, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 5)
!1876 = !DIGlobalVariableExpression(var: !1877, expr: !DIExpression())
!1877 = distinct !DIGlobalVariable(scope: null, file: !3, line: 365, type: !1873, isLocal: true, isDefinition: true)
!1878 = !DIGlobalVariableExpression(var: !1879, expr: !DIExpression())
!1879 = distinct !DIGlobalVariable(scope: null, file: !3, line: 372, type: !1880, isLocal: true, isDefinition: true)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 48, elements: !1881)
!1881 = !{!1882}
!1882 = !DISubrange(count: 6)
!1883 = !DIGlobalVariableExpression(var: !1884, expr: !DIExpression())
!1884 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !1885, isLocal: true, isDefinition: true)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 32, elements: !433)
!1886 = !DIGlobalVariableExpression(var: !1887, expr: !DIExpression())
!1887 = distinct !DIGlobalVariable(scope: null, file: !3, line: 385, type: !1885, isLocal: true, isDefinition: true)
!1888 = !DIGlobalVariableExpression(var: !1889, expr: !DIExpression())
!1889 = distinct !DIGlobalVariable(scope: null, file: !3, line: 397, type: !1890, isLocal: true, isDefinition: true)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 24, elements: !196)
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !1885, isLocal: true, isDefinition: true)
!1893 = !DIGlobalVariableExpression(var: !1894, expr: !DIExpression())
!1894 = distinct !DIGlobalVariable(scope: null, file: !3, line: 409, type: !1885, isLocal: true, isDefinition: true)
!1895 = !DIGlobalVariableExpression(var: !1896, expr: !DIExpression())
!1896 = distinct !DIGlobalVariable(scope: null, file: !3, line: 415, type: !1885, isLocal: true, isDefinition: true)
!1897 = !DIGlobalVariableExpression(var: !1898, expr: !DIExpression())
!1898 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !1885, isLocal: true, isDefinition: true)
!1899 = !DIGlobalVariableExpression(var: !1900, expr: !DIExpression())
!1900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !1646, isLocal: true, isDefinition: true)
!1901 = !DIGlobalVariableExpression(var: !1902, expr: !DIExpression())
!1902 = distinct !DIGlobalVariable(name: "dev_attr_options", scope: !2, file: !3, line: 246, type: !1815, isLocal: true, isDefinition: true)
!1903 = !DIGlobalVariableExpression(var: !1904, expr: !DIExpression())
!1904 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !1890, isLocal: true, isDefinition: true)
!1905 = !DIGlobalVariableExpression(var: !1906, expr: !DIExpression())
!1906 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !1907, isLocal: true, isDefinition: true)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 248, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 31)
!1910 = !DIGlobalVariableExpression(var: !1911, expr: !DIExpression())
!1911 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !1912, isLocal: true, isDefinition: true)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 560, elements: !1913)
!1913 = !{!1914}
!1914 = !DISubrange(count: 70)
!1915 = !DIGlobalVariableExpression(var: !1916, expr: !DIExpression())
!1916 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !1917, isLocal: true, isDefinition: true)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 368, elements: !1918)
!1918 = !{!1919}
!1919 = !DISubrange(count: 46)
!1920 = !DIGlobalVariableExpression(var: !1921, expr: !DIExpression())
!1921 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !1829, isLocal: true, isDefinition: true)
!1922 = !DIGlobalVariableExpression(var: !1923, expr: !DIExpression())
!1923 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !1829, isLocal: true, isDefinition: true)
!1924 = !DIGlobalVariableExpression(var: !1925, expr: !DIExpression())
!1925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !1926, isLocal: true, isDefinition: true)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 120, elements: !1927)
!1927 = !{!1928}
!1928 = !DISubrange(count: 15)
!1929 = !DIGlobalVariableExpression(var: !1930, expr: !DIExpression())
!1930 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !1931, isLocal: true, isDefinition: true)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 104, elements: !1932)
!1932 = !{!1933}
!1933 = !DISubrange(count: 13)
!1934 = !DIGlobalVariableExpression(var: !1935, expr: !DIExpression())
!1935 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !1847, isLocal: true, isDefinition: true)
!1936 = !DIGlobalVariableExpression(var: !1937, expr: !DIExpression())
!1937 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !1880, isLocal: true, isDefinition: true)
!1938 = !DIGlobalVariableExpression(var: !1939, expr: !DIExpression())
!1939 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !1931, isLocal: true, isDefinition: true)
!1940 = !DIGlobalVariableExpression(var: !1941, expr: !DIExpression())
!1941 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !1834, isLocal: true, isDefinition: true)
!1942 = !DIGlobalVariableExpression(var: !1943, expr: !DIExpression())
!1943 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !1834, isLocal: true, isDefinition: true)
!1944 = !DIGlobalVariableExpression(var: !1945, expr: !DIExpression())
!1945 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !1880, isLocal: true, isDefinition: true)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !1834, isLocal: true, isDefinition: true)
!1948 = !DIGlobalVariableExpression(var: !1949, expr: !DIExpression())
!1949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !1950, isLocal: true, isDefinition: true)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 16, elements: !1006)
!1951 = !DIGlobalVariableExpression(var: !1952, expr: !DIExpression())
!1952 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !1885, isLocal: true, isDefinition: true)
!1953 = !DIGlobalVariableExpression(var: !1954, expr: !DIExpression())
!1954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !1890, isLocal: true, isDefinition: true)
!1955 = !DIGlobalVariableExpression(var: !1956, expr: !DIExpression())
!1956 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !1834, isLocal: true, isDefinition: true)
!1957 = !DIGlobalVariableExpression(var: !1958, expr: !DIExpression())
!1958 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !1842, isLocal: true, isDefinition: true)
!1959 = !DIGlobalVariableExpression(var: !1960, expr: !DIExpression())
!1960 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !1810, isLocal: true, isDefinition: true)
!1961 = !DIGlobalVariableExpression(var: !1962, expr: !DIExpression())
!1962 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !1829, isLocal: true, isDefinition: true)
!1963 = !DIGlobalVariableExpression(var: !1964, expr: !DIExpression())
!1964 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !1842, isLocal: true, isDefinition: true)
!1965 = !DIGlobalVariableExpression(var: !1966, expr: !DIExpression())
!1966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !1829, isLocal: true, isDefinition: true)
!1967 = !DIGlobalVariableExpression(var: !1968, expr: !DIExpression())
!1968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !1950, isLocal: true, isDefinition: true)
!1969 = !DIGlobalVariableExpression(var: !1970, expr: !DIExpression())
!1970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !1834, isLocal: true, isDefinition: true)
!1971 = !DIGlobalVariableExpression(var: !1972, expr: !DIExpression())
!1972 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !1885, isLocal: true, isDefinition: true)
!1973 = !DIGlobalVariableExpression(var: !1974, expr: !DIExpression())
!1974 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !1646, isLocal: true, isDefinition: true)
!1975 = !DIGlobalVariableExpression(var: !1976, expr: !DIExpression())
!1976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !1829, isLocal: true, isDefinition: true)
!1977 = !DIGlobalVariableExpression(var: !1978, expr: !DIExpression())
!1978 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !1829, isLocal: true, isDefinition: true)
!1979 = !DIGlobalVariableExpression(var: !1980, expr: !DIExpression())
!1980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !1834, isLocal: true, isDefinition: true)
!1981 = !DIGlobalVariableExpression(var: !1982, expr: !DIExpression())
!1982 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !1834, isLocal: true, isDefinition: true)
!1983 = !DIGlobalVariableExpression(var: !1984, expr: !DIExpression())
!1984 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !1834, isLocal: true, isDefinition: true)
!1985 = !DIGlobalVariableExpression(var: !1986, expr: !DIExpression())
!1986 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !1842, isLocal: true, isDefinition: true)
!1987 = !DIGlobalVariableExpression(var: !1988, expr: !DIExpression())
!1988 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !1873, isLocal: true, isDefinition: true)
!1989 = !DIGlobalVariableExpression(var: !1990, expr: !DIExpression())
!1990 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !1890, isLocal: true, isDefinition: true)
!1991 = !DIGlobalVariableExpression(var: !1992, expr: !DIExpression())
!1992 = distinct !DIGlobalVariable(name: "dev_attr_id", scope: !2, file: !3, line: 454, type: !1815, isLocal: true, isDefinition: true)
!1993 = !DIGlobalVariableExpression(var: !1994, expr: !DIExpression())
!1994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 449, type: !1885, isLocal: true, isDefinition: true)
!1995 = !{i32 7, !"Dwarf Version", i32 5}
!1996 = !{i32 2, !"Debug Info Version", i32 3}
!1997 = !{i32 1, !"wchar_size", i32 2}
!1998 = !{i32 8, !"cf-protection-branch", i32 1}
!1999 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2000 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2001 = !{i32 1, !"Code Model", i32 2}
!2002 = !{i32 1, !"override-stack-alignment", i32 8}
!2003 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2004 = distinct !DISubprogram(name: "resources_show", scope: !3, file: !3, line: 248, type: !1820, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2012, !2023, !2024, !2025, !2026, !2029}
!2006 = !DILocalVariable(name: "dmdev", arg: 1, scope: !2004, file: !3, line: 248, type: !771)
!2007 = !DILocalVariable(name: "attr", arg: 2, scope: !2004, file: !3, line: 249, type: !1822)
!2008 = !DILocalVariable(name: "buf", arg: 3, scope: !2004, file: !3, line: 249, type: !195)
!2009 = !DILocalVariable(name: "dev", scope: !2004, file: !3, line: 251, type: !95)
!2010 = !DILocalVariable(name: "__mptr", scope: !2011, file: !3, line: 251, type: !94)
!2011 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 251, column: 24)
!2012 = !DILocalVariable(name: "buffer", scope: !2004, file: !3, line: 252, type: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_info_buffer_t", file: !3, line: 34, baseType: !2015)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_info_buffer", file: !3, line: 25, size: 320, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2015, file: !3, line: 26, baseType: !195, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !2015, file: !3, line: 27, baseType: !195, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2015, file: !3, line: 28, baseType: !245, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2015, file: !3, line: 29, baseType: !245, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2015, file: !3, line: 30, baseType: !46, size: 32, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2015, file: !3, line: 31, baseType: !46, size: 32, offset: 288)
!2023 = !DILocalVariable(name: "pnp_res", scope: !2004, file: !3, line: 253, type: !1739)
!2024 = !DILocalVariable(name: "res", scope: !2004, file: !3, line: 254, type: !1756)
!2025 = !DILocalVariable(name: "ret", scope: !2004, file: !3, line: 255, type: !46)
!2026 = !DILocalVariable(name: "__mptr", scope: !2027, file: !3, line: 270, type: !94)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 270, column: 2)
!2028 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 270, column: 2)
!2029 = !DILocalVariable(name: "__mptr", scope: !2030, file: !3, line: 270, type: !94)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 270, column: 2)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 270, column: 2)
!2032 = !DILocation(line: 248, column: 46, scope: !2004)
!2033 = !DILocation(line: 249, column: 35, scope: !2004)
!2034 = !DILocation(line: 249, column: 47, scope: !2004)
!2035 = !DILocation(line: 251, column: 2, scope: !2004)
!2036 = !DILocation(line: 251, column: 18, scope: !2004)
!2037 = !DILocation(line: 251, column: 24, scope: !2011)
!2038 = !DILocation(line: 251, column: 24, scope: !2004)
!2039 = !DILocation(line: 252, column: 2, scope: !2004)
!2040 = !DILocation(line: 252, column: 21, scope: !2004)
!2041 = !DILocation(line: 253, column: 2, scope: !2004)
!2042 = !DILocation(line: 253, column: 23, scope: !2004)
!2043 = !DILocation(line: 254, column: 2, scope: !2004)
!2044 = !DILocation(line: 254, column: 19, scope: !2004)
!2045 = !DILocation(line: 255, column: 2, scope: !2004)
!2046 = !DILocation(line: 255, column: 6, scope: !2004)
!2047 = !DILocation(line: 257, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 257, column: 6)
!2049 = !DILocation(line: 257, column: 6, scope: !2004)
!2050 = !DILocation(line: 258, column: 3, scope: !2048)
!2051 = !DILocation(line: 260, column: 11, scope: !2004)
!2052 = !DILocation(line: 260, column: 9, scope: !2004)
!2053 = !DILocation(line: 261, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 261, column: 6)
!2055 = !DILocation(line: 261, column: 6, scope: !2004)
!2056 = !DILocation(line: 262, column: 3, scope: !2054)
!2057 = !DILocation(line: 264, column: 2, scope: !2004)
!2058 = !DILocation(line: 264, column: 10, scope: !2004)
!2059 = !DILocation(line: 264, column: 14, scope: !2004)
!2060 = !DILocation(line: 265, column: 19, scope: !2004)
!2061 = !DILocation(line: 265, column: 2, scope: !2004)
!2062 = !DILocation(line: 265, column: 10, scope: !2004)
!2063 = !DILocation(line: 265, column: 17, scope: !2004)
!2064 = !DILocation(line: 266, column: 17, scope: !2004)
!2065 = !DILocation(line: 266, column: 25, scope: !2004)
!2066 = !DILocation(line: 266, column: 2, scope: !2004)
!2067 = !DILocation(line: 266, column: 10, scope: !2004)
!2068 = !DILocation(line: 266, column: 15, scope: !2004)
!2069 = !DILocation(line: 268, column: 13, scope: !2004)
!2070 = !DILocation(line: 268, column: 37, scope: !2004)
!2071 = !DILocation(line: 268, column: 42, scope: !2004)
!2072 = !DILocation(line: 268, column: 2, scope: !2004)
!2073 = !DILocation(line: 270, column: 2, scope: !2027)
!2074 = !DILocation(line: 270, column: 2, scope: !2028)
!2075 = !DILocation(line: 270, column: 2, scope: !2031)
!2076 = !DILocation(line: 271, column: 10, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 270, column: 54)
!2078 = !DILocation(line: 271, column: 19, scope: !2077)
!2079 = !DILocation(line: 271, column: 7, scope: !2077)
!2080 = !DILocation(line: 273, column: 14, scope: !2077)
!2081 = !DILocation(line: 273, column: 45, scope: !2077)
!2082 = !DILocation(line: 273, column: 22, scope: !2077)
!2083 = !DILocation(line: 273, column: 3, scope: !2077)
!2084 = !DILocation(line: 275, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 275, column: 7)
!2086 = !DILocation(line: 275, column: 12, scope: !2085)
!2087 = !DILocation(line: 275, column: 18, scope: !2085)
!2088 = !DILocation(line: 275, column: 7, scope: !2077)
!2089 = !DILocation(line: 276, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 275, column: 41)
!2091 = !DILocation(line: 276, column: 4, scope: !2090)
!2092 = !DILocation(line: 277, column: 4, scope: !2090)
!2093 = !DILocation(line: 280, column: 29, scope: !2077)
!2094 = !DILocation(line: 280, column: 11, scope: !2077)
!2095 = !DILocation(line: 280, column: 3, scope: !2077)
!2096 = !DILocation(line: 284, column: 15, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 280, column: 35)
!2098 = !DILocation(line: 285, column: 29, scope: !2097)
!2099 = !DILocation(line: 285, column: 34, scope: !2097)
!2100 = !DILocation(line: 286, column: 29, scope: !2097)
!2101 = !DILocation(line: 286, column: 34, scope: !2097)
!2102 = !DILocation(line: 287, column: 8, scope: !2097)
!2103 = !DILocation(line: 287, column: 13, scope: !2097)
!2104 = !DILocation(line: 287, column: 19, scope: !2097)
!2105 = !DILocation(line: 284, column: 4, scope: !2097)
!2106 = !DILocation(line: 289, column: 4, scope: !2097)
!2107 = !DILocation(line: 292, column: 15, scope: !2097)
!2108 = !DILocation(line: 293, column: 29, scope: !2097)
!2109 = !DILocation(line: 293, column: 34, scope: !2097)
!2110 = !DILocation(line: 292, column: 4, scope: !2097)
!2111 = !DILocation(line: 294, column: 4, scope: !2097)
!2112 = !DILocation(line: 296, column: 2, scope: !2077)
!2113 = !DILocation(line: 270, column: 2, scope: !2030)
!2114 = distinct !{!2114, !2074, !2115, !2116, !2117}
!2115 = !DILocation(line: 296, column: 2, scope: !2028)
!2116 = !{!"llvm.loop.mustprogress"}
!2117 = !{!"llvm.loop.unroll.disable"}
!2118 = !DILocation(line: 298, column: 9, scope: !2004)
!2119 = !DILocation(line: 298, column: 17, scope: !2004)
!2120 = !DILocation(line: 298, column: 24, scope: !2004)
!2121 = !DILocation(line: 298, column: 22, scope: !2004)
!2122 = !DILocation(line: 298, column: 8, scope: !2004)
!2123 = !DILocation(line: 298, column: 6, scope: !2004)
!2124 = !DILocation(line: 299, column: 8, scope: !2004)
!2125 = !DILocation(line: 299, column: 2, scope: !2004)
!2126 = !DILocation(line: 300, column: 9, scope: !2004)
!2127 = !DILocation(line: 300, column: 2, scope: !2004)
!2128 = !DILocation(line: 301, column: 1, scope: !2004)
!2129 = distinct !DISubprogram(name: "resources_store", scope: !3, file: !3, line: 336, type: !1825, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2138, !2139, !2140, !2143, !2144, !2145}
!2131 = !DILocalVariable(name: "dmdev", arg: 1, scope: !2129, file: !3, line: 336, type: !771)
!2132 = !DILocalVariable(name: "attr", arg: 2, scope: !2129, file: !3, line: 337, type: !1822)
!2133 = !DILocalVariable(name: "ubuf", arg: 3, scope: !2129, file: !3, line: 337, type: !107)
!2134 = !DILocalVariable(name: "count", arg: 4, scope: !2129, file: !3, line: 338, type: !242)
!2135 = !DILocalVariable(name: "dev", scope: !2129, file: !3, line: 340, type: !95)
!2136 = !DILocalVariable(name: "__mptr", scope: !2137, file: !3, line: 340, type: !94)
!2137 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 340, column: 24)
!2138 = !DILocalVariable(name: "buf", scope: !2129, file: !3, line: 341, type: !195)
!2139 = !DILocalVariable(name: "retval", scope: !2129, file: !3, line: 342, type: !46)
!2140 = !DILocalVariable(name: "start", scope: !2141, file: !3, line: 386, type: !1749)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 385, column: 35)
!2142 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 385, column: 6)
!2143 = !DILocalVariable(name: "end", scope: !2141, file: !3, line: 387, type: !1749)
!2144 = !DILocalVariable(name: "flags", scope: !2141, file: !3, line: 388, type: !245)
!2145 = !DILabel(scope: !2129, name: "done", file: !3, line: 434)
!2146 = !DILocation(line: 336, column: 47, scope: !2129)
!2147 = !DILocation(line: 337, column: 36, scope: !2129)
!2148 = !DILocation(line: 337, column: 54, scope: !2129)
!2149 = !DILocation(line: 338, column: 18, scope: !2129)
!2150 = !DILocation(line: 340, column: 2, scope: !2129)
!2151 = !DILocation(line: 340, column: 18, scope: !2129)
!2152 = !DILocation(line: 340, column: 24, scope: !2137)
!2153 = !DILocation(line: 340, column: 24, scope: !2129)
!2154 = !DILocation(line: 341, column: 2, scope: !2129)
!2155 = !DILocation(line: 341, column: 8, scope: !2129)
!2156 = !DILocation(line: 341, column: 22, scope: !2129)
!2157 = !DILocation(line: 342, column: 2, scope: !2129)
!2158 = !DILocation(line: 342, column: 6, scope: !2129)
!2159 = !DILocation(line: 344, column: 6, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 344, column: 6)
!2161 = !DILocation(line: 344, column: 11, scope: !2160)
!2162 = !DILocation(line: 344, column: 18, scope: !2160)
!2163 = !DILocation(line: 344, column: 6, scope: !2129)
!2164 = !DILocation(line: 345, column: 10, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 344, column: 34)
!2166 = !DILocation(line: 346, column: 3, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 346, column: 3)
!2168 = !DILocation(line: 346, column: 3, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 346, column: 3)
!2170 = !DILocation(line: 347, column: 3, scope: !2165)
!2171 = !DILocation(line: 350, column: 20, scope: !2129)
!2172 = !DILocation(line: 350, column: 8, scope: !2129)
!2173 = !DILocation(line: 350, column: 6, scope: !2129)
!2174 = !DILocation(line: 351, column: 19, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 351, column: 6)
!2176 = !DILocation(line: 351, column: 7, scope: !2175)
!2177 = !DILocation(line: 351, column: 6, scope: !2129)
!2178 = !DILocation(line: 352, column: 28, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 351, column: 39)
!2180 = !DILocation(line: 352, column: 12, scope: !2179)
!2181 = !DILocation(line: 352, column: 10, scope: !2179)
!2182 = !DILocation(line: 353, column: 3, scope: !2179)
!2183 = !DILocation(line: 355, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 355, column: 6)
!2185 = !DILocation(line: 355, column: 7, scope: !2184)
!2186 = !DILocation(line: 355, column: 6, scope: !2129)
!2187 = !DILocation(line: 356, column: 29, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 355, column: 40)
!2189 = !DILocation(line: 356, column: 12, scope: !2188)
!2190 = !DILocation(line: 356, column: 10, scope: !2188)
!2191 = !DILocation(line: 357, column: 3, scope: !2188)
!2192 = !DILocation(line: 359, column: 19, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 359, column: 6)
!2194 = !DILocation(line: 359, column: 7, scope: !2193)
!2195 = !DILocation(line: 359, column: 6, scope: !2129)
!2196 = !DILocation(line: 360, column: 7, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 360, column: 7)
!2198 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 359, column: 36)
!2199 = !DILocation(line: 360, column: 12, scope: !2197)
!2200 = !DILocation(line: 360, column: 7, scope: !2198)
!2201 = !DILocation(line: 361, column: 4, scope: !2197)
!2202 = !DILocation(line: 362, column: 32, scope: !2198)
!2203 = !DILocation(line: 362, column: 12, scope: !2198)
!2204 = !DILocation(line: 362, column: 10, scope: !2198)
!2205 = !DILocation(line: 363, column: 3, scope: !2198)
!2206 = !DILocation(line: 365, column: 19, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 365, column: 6)
!2208 = !DILocation(line: 365, column: 7, scope: !2207)
!2209 = !DILocation(line: 365, column: 6, scope: !2129)
!2210 = !DILocation(line: 366, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 366, column: 7)
!2212 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 365, column: 36)
!2213 = !DILocation(line: 366, column: 12, scope: !2211)
!2214 = !DILocation(line: 366, column: 7, scope: !2212)
!2215 = !DILocation(line: 367, column: 4, scope: !2211)
!2216 = !DILocation(line: 368, column: 22, scope: !2212)
!2217 = !DILocation(line: 368, column: 3, scope: !2212)
!2218 = !DILocation(line: 369, column: 32, scope: !2212)
!2219 = !DILocation(line: 369, column: 12, scope: !2212)
!2220 = !DILocation(line: 369, column: 10, scope: !2212)
!2221 = !DILocation(line: 370, column: 3, scope: !2212)
!2222 = !DILocation(line: 372, column: 19, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 372, column: 6)
!2224 = !DILocation(line: 372, column: 7, scope: !2223)
!2225 = !DILocation(line: 372, column: 6, scope: !2129)
!2226 = !DILocation(line: 373, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 373, column: 7)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 372, column: 37)
!2229 = !DILocation(line: 373, column: 12, scope: !2227)
!2230 = !DILocation(line: 373, column: 7, scope: !2228)
!2231 = !DILocation(line: 374, column: 4, scope: !2227)
!2232 = !DILocation(line: 375, column: 22, scope: !2228)
!2233 = !DILocation(line: 375, column: 3, scope: !2228)
!2234 = !DILocation(line: 376, column: 3, scope: !2228)
!2235 = !DILocation(line: 378, column: 19, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 378, column: 6)
!2237 = !DILocation(line: 378, column: 7, scope: !2236)
!2238 = !DILocation(line: 378, column: 6, scope: !2129)
!2239 = !DILocation(line: 379, column: 3, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 378, column: 35)
!2241 = !DILocation(line: 380, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 380, column: 7)
!2243 = !DILocation(line: 380, column: 7, scope: !2240)
!2244 = !DILocation(line: 381, column: 4, scope: !2242)
!2245 = !DILocation(line: 381, column: 9, scope: !2242)
!2246 = !DILocation(line: 381, column: 19, scope: !2242)
!2247 = !DILocation(line: 381, column: 23, scope: !2242)
!2248 = !DILocation(line: 382, column: 3, scope: !2240)
!2249 = !DILocation(line: 383, column: 3, scope: !2240)
!2250 = !DILocation(line: 385, column: 19, scope: !2142)
!2251 = !DILocation(line: 385, column: 7, scope: !2142)
!2252 = !DILocation(line: 385, column: 6, scope: !2129)
!2253 = !DILocation(line: 386, column: 3, scope: !2141)
!2254 = !DILocation(line: 386, column: 19, scope: !2141)
!2255 = !DILocation(line: 387, column: 3, scope: !2141)
!2256 = !DILocation(line: 387, column: 19, scope: !2141)
!2257 = !DILocation(line: 388, column: 3, scope: !2141)
!2258 = !DILocation(line: 388, column: 17, scope: !2141)
!2259 = !DILocation(line: 390, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 390, column: 7)
!2261 = !DILocation(line: 390, column: 12, scope: !2260)
!2262 = !DILocation(line: 390, column: 7, scope: !2141)
!2263 = !DILocation(line: 391, column: 4, scope: !2260)
!2264 = !DILocation(line: 392, column: 7, scope: !2141)
!2265 = !DILocation(line: 393, column: 22, scope: !2141)
!2266 = !DILocation(line: 393, column: 3, scope: !2141)
!2267 = !DILocation(line: 394, column: 3, scope: !2141)
!2268 = !DILocation(line: 395, column: 3, scope: !2141)
!2269 = !DILocation(line: 396, column: 22, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 395, column: 13)
!2271 = !DILocation(line: 396, column: 10, scope: !2270)
!2272 = !DILocation(line: 396, column: 8, scope: !2270)
!2273 = !DILocation(line: 397, column: 21, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 397, column: 8)
!2275 = !DILocation(line: 397, column: 9, scope: !2274)
!2276 = !DILocation(line: 397, column: 8, scope: !2270)
!2277 = !DILocation(line: 398, column: 34, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 397, column: 36)
!2279 = !DILocation(line: 398, column: 38, scope: !2278)
!2280 = !DILocation(line: 398, column: 11, scope: !2278)
!2281 = !DILocation(line: 398, column: 9, scope: !2278)
!2282 = !DILocation(line: 402, column: 25, scope: !2278)
!2283 = !DILocation(line: 402, column: 30, scope: !2278)
!2284 = !DILocation(line: 402, column: 37, scope: !2278)
!2285 = !DILocation(line: 402, column: 42, scope: !2278)
!2286 = !DILocation(line: 402, column: 5, scope: !2278)
!2287 = !DILocation(line: 403, column: 4, scope: !2278)
!2288 = !DILocation(line: 403, column: 28, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 403, column: 15)
!2290 = !DILocation(line: 403, column: 16, scope: !2289)
!2291 = !DILocation(line: 403, column: 15, scope: !2274)
!2292 = !DILocation(line: 404, column: 34, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 403, column: 44)
!2294 = !DILocation(line: 404, column: 38, scope: !2293)
!2295 = !DILocation(line: 404, column: 11, scope: !2293)
!2296 = !DILocation(line: 404, column: 9, scope: !2293)
!2297 = !DILocation(line: 408, column: 26, scope: !2293)
!2298 = !DILocation(line: 408, column: 31, scope: !2293)
!2299 = !DILocation(line: 408, column: 38, scope: !2293)
!2300 = !DILocation(line: 408, column: 43, scope: !2293)
!2301 = !DILocation(line: 408, column: 5, scope: !2293)
!2302 = !DILocation(line: 409, column: 4, scope: !2293)
!2303 = !DILocation(line: 409, column: 28, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 409, column: 15)
!2305 = !DILocation(line: 409, column: 16, scope: !2304)
!2306 = !DILocation(line: 409, column: 15, scope: !2289)
!2307 = !DILocation(line: 410, column: 34, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 409, column: 44)
!2309 = !DILocation(line: 410, column: 38, scope: !2308)
!2310 = !DILocation(line: 410, column: 11, scope: !2308)
!2311 = !DILocation(line: 410, column: 9, scope: !2308)
!2312 = !DILocation(line: 414, column: 26, scope: !2308)
!2313 = !DILocation(line: 414, column: 31, scope: !2308)
!2314 = !DILocation(line: 414, column: 38, scope: !2308)
!2315 = !DILocation(line: 414, column: 5, scope: !2308)
!2316 = !DILocation(line: 415, column: 4, scope: !2308)
!2317 = !DILocation(line: 415, column: 28, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 415, column: 15)
!2319 = !DILocation(line: 415, column: 16, scope: !2318)
!2320 = !DILocation(line: 415, column: 15, scope: !2304)
!2321 = !DILocation(line: 416, column: 34, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 415, column: 44)
!2323 = !DILocation(line: 416, column: 38, scope: !2322)
!2324 = !DILocation(line: 416, column: 11, scope: !2322)
!2325 = !DILocation(line: 416, column: 9, scope: !2322)
!2326 = !DILocation(line: 420, column: 26, scope: !2322)
!2327 = !DILocation(line: 420, column: 31, scope: !2322)
!2328 = !DILocation(line: 420, column: 38, scope: !2322)
!2329 = !DILocation(line: 420, column: 5, scope: !2322)
!2330 = !DILocation(line: 421, column: 4, scope: !2322)
!2331 = !DILocation(line: 421, column: 28, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 421, column: 15)
!2333 = !DILocation(line: 421, column: 16, scope: !2332)
!2334 = !DILocation(line: 421, column: 15, scope: !2318)
!2335 = !DILocation(line: 422, column: 34, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 421, column: 44)
!2337 = !DILocation(line: 422, column: 38, scope: !2336)
!2338 = !DILocation(line: 422, column: 11, scope: !2336)
!2339 = !DILocation(line: 422, column: 9, scope: !2336)
!2340 = !DILocation(line: 426, column: 26, scope: !2336)
!2341 = !DILocation(line: 426, column: 31, scope: !2336)
!2342 = !DILocation(line: 426, column: 38, scope: !2336)
!2343 = !DILocation(line: 426, column: 5, scope: !2336)
!2344 = !DILocation(line: 427, column: 4, scope: !2336)
!2345 = !DILocation(line: 428, column: 5, scope: !2332)
!2346 = distinct !{!2346, !2268, !2347, !2117}
!2347 = !DILocation(line: 429, column: 3, scope: !2141)
!2348 = !DILocation(line: 430, column: 3, scope: !2141)
!2349 = !DILocation(line: 431, column: 3, scope: !2141)
!2350 = !DILocation(line: 432, column: 2, scope: !2142)
!2351 = !DILocation(line: 385, column: 32, scope: !2142)
!2352 = !DILocation(line: 434, column: 1, scope: !2129)
!2353 = !DILocation(line: 435, column: 6, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 435, column: 6)
!2355 = !DILocation(line: 435, column: 13, scope: !2354)
!2356 = !DILocation(line: 435, column: 6, scope: !2129)
!2357 = !DILocation(line: 436, column: 10, scope: !2354)
!2358 = !DILocation(line: 436, column: 3, scope: !2354)
!2359 = !DILocation(line: 437, column: 9, scope: !2129)
!2360 = !DILocation(line: 437, column: 2, scope: !2129)
!2361 = !DILocation(line: 438, column: 1, scope: !2129)
!2362 = distinct !DISubprogram(name: "kzalloc", scope: !84, file: !84, line: 719, type: !2363, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!94, !242, !1738}
!2365 = !{!2366, !2367}
!2366 = !DILocalVariable(name: "size", arg: 1, scope: !2362, file: !84, line: 719, type: !242)
!2367 = !DILocalVariable(name: "flags", arg: 2, scope: !2362, file: !84, line: 719, type: !1738)
!2368 = !DILocation(line: 719, column: 52, scope: !2362)
!2369 = !DILocation(line: 719, column: 64, scope: !2362)
!2370 = !DILocation(line: 721, column: 17, scope: !2362)
!2371 = !DILocation(line: 721, column: 23, scope: !2362)
!2372 = !DILocation(line: 721, column: 29, scope: !2362)
!2373 = !DILocation(line: 721, column: 9, scope: !2362)
!2374 = !DILocation(line: 721, column: 2, scope: !2362)
!2375 = distinct !DISubprogram(name: "pnp_printf", scope: !3, file: !3, line: 37, type: !2376, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!46, !2013, !195, null}
!2378 = !{!2379, !2380, !2381, !2392}
!2379 = !DILocalVariable(name: "buffer", arg: 1, scope: !2375, file: !3, line: 37, type: !2013)
!2380 = !DILocalVariable(name: "fmt", arg: 2, scope: !2375, file: !3, line: 37, type: !195)
!2381 = !DILocalVariable(name: "args", scope: !2375, file: !3, line: 39, type: !2382)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2383, line: 5, baseType: !2384)
!2383 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !2385)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2386, size: 192, elements: !1853)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2387)
!2387 = !{!2388, !2389, !2390, !2391}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2386, file: !3, line: 39, baseType: !7, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2386, file: !3, line: 39, baseType: !7, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2386, file: !3, line: 39, baseType: !94, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2386, file: !3, line: 39, baseType: !94, size: 64, offset: 128)
!2392 = !DILocalVariable(name: "res", scope: !2375, file: !3, line: 40, type: !46)
!2393 = !DILocation(line: 37, column: 43, scope: !2375)
!2394 = !DILocation(line: 37, column: 57, scope: !2375)
!2395 = !DILocation(line: 39, column: 2, scope: !2375)
!2396 = !DILocation(line: 39, column: 10, scope: !2375)
!2397 = !DILocation(line: 40, column: 2, scope: !2375)
!2398 = !DILocation(line: 40, column: 6, scope: !2375)
!2399 = !DILocation(line: 42, column: 6, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 42, column: 6)
!2401 = !DILocation(line: 42, column: 14, scope: !2400)
!2402 = !DILocation(line: 42, column: 19, scope: !2400)
!2403 = !DILocation(line: 42, column: 22, scope: !2400)
!2404 = !DILocation(line: 42, column: 30, scope: !2400)
!2405 = !DILocation(line: 42, column: 6, scope: !2375)
!2406 = !DILocation(line: 43, column: 3, scope: !2400)
!2407 = !DILocation(line: 44, column: 2, scope: !2375)
!2408 = !DILocation(line: 45, column: 18, scope: !2375)
!2409 = !DILocation(line: 45, column: 26, scope: !2375)
!2410 = !DILocation(line: 45, column: 32, scope: !2375)
!2411 = !DILocation(line: 45, column: 40, scope: !2375)
!2412 = !DILocation(line: 45, column: 46, scope: !2375)
!2413 = !DILocation(line: 45, column: 54, scope: !2375)
!2414 = !DILocation(line: 45, column: 44, scope: !2375)
!2415 = !DILocation(line: 45, column: 60, scope: !2375)
!2416 = !DILocation(line: 45, column: 65, scope: !2375)
!2417 = !DILocation(line: 45, column: 8, scope: !2375)
!2418 = !DILocation(line: 45, column: 6, scope: !2375)
!2419 = !DILocation(line: 46, column: 2, scope: !2375)
!2420 = !DILocation(line: 47, column: 6, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 47, column: 6)
!2422 = !DILocation(line: 47, column: 14, scope: !2421)
!2423 = !DILocation(line: 47, column: 21, scope: !2421)
!2424 = !DILocation(line: 47, column: 19, scope: !2421)
!2425 = !DILocation(line: 47, column: 28, scope: !2421)
!2426 = !DILocation(line: 47, column: 36, scope: !2421)
!2427 = !DILocation(line: 47, column: 25, scope: !2421)
!2428 = !DILocation(line: 47, column: 6, scope: !2375)
!2429 = !DILocation(line: 48, column: 3, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 47, column: 41)
!2431 = !DILocation(line: 48, column: 11, scope: !2430)
!2432 = !DILocation(line: 48, column: 16, scope: !2430)
!2433 = !DILocation(line: 49, column: 3, scope: !2430)
!2434 = !DILocation(line: 51, column: 18, scope: !2375)
!2435 = !DILocation(line: 51, column: 2, scope: !2375)
!2436 = !DILocation(line: 51, column: 10, scope: !2375)
!2437 = !DILocation(line: 51, column: 15, scope: !2375)
!2438 = !DILocation(line: 52, column: 18, scope: !2375)
!2439 = !DILocation(line: 52, column: 2, scope: !2375)
!2440 = !DILocation(line: 52, column: 10, scope: !2375)
!2441 = !DILocation(line: 52, column: 15, scope: !2375)
!2442 = !DILocation(line: 53, column: 9, scope: !2375)
!2443 = !DILocation(line: 53, column: 2, scope: !2375)
!2444 = !DILocation(line: 54, column: 1, scope: !2375)
!2445 = !DISubprogram(name: "pnp_resource_type_name", scope: !1741, file: !1741, line: 149, type: !2446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!195, !1756}
!2448 = !DISubprogram(name: "pnp_resource_type", scope: !1741, file: !1741, line: 153, type: !2449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!245, !1756}
!2451 = !DISubprogram(name: "kfree", scope: !84, file: !84, line: 227, type: !2452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !473}
!2454 = distinct !DISubprogram(name: "kmalloc", scope: !84, file: !84, line: 591, type: !2363, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DILocalVariable(name: "size", arg: 1, scope: !2454, file: !84, line: 591, type: !242)
!2457 = !DILocalVariable(name: "flags", arg: 2, scope: !2454, file: !84, line: 591, type: !1738)
!2458 = !DILocalVariable(name: "index", scope: !2459, file: !84, line: 594, type: !7)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !84, line: 593, column: 42)
!2460 = distinct !DILexicalBlock(scope: !2454, file: !84, line: 593, column: 6)
!2461 = !DILocation(line: 591, column: 61, scope: !2454)
!2462 = !DILocation(line: 591, column: 73, scope: !2454)
!2463 = !DILocation(line: 593, column: 27, scope: !2460)
!2464 = !DILocation(line: 593, column: 6, scope: !2460)
!2465 = !DILocation(line: 593, column: 33, scope: !2460)
!2466 = !DILocation(line: 593, column: 36, scope: !2460)
!2467 = !DILocation(line: 593, column: 6, scope: !2454)
!2468 = !DILocation(line: 594, column: 3, scope: !2459)
!2469 = !DILocation(line: 594, column: 16, scope: !2459)
!2470 = !DILocation(line: 596, column: 7, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2459, file: !84, line: 596, column: 7)
!2472 = !DILocation(line: 596, column: 12, scope: !2471)
!2473 = !DILocation(line: 596, column: 7, scope: !2459)
!2474 = !DILocation(line: 597, column: 25, scope: !2471)
!2475 = !DILocation(line: 597, column: 31, scope: !2471)
!2476 = !DILocation(line: 597, column: 11, scope: !2471)
!2477 = !DILocation(line: 597, column: 4, scope: !2471)
!2478 = !DILocation(line: 599, column: 11, scope: !2459)
!2479 = !DILocation(line: 599, column: 9, scope: !2459)
!2480 = !DILocation(line: 601, column: 33, scope: !2459)
!2481 = !DILocation(line: 601, column: 40, scope: !2459)
!2482 = !DILocation(line: 601, column: 20, scope: !2459)
!2483 = !DILocation(line: 601, column: 5, scope: !2459)
!2484 = !DILocation(line: 601, column: 51, scope: !2459)
!2485 = !DILocation(line: 602, column: 5, scope: !2459)
!2486 = !DILocation(line: 602, column: 12, scope: !2459)
!2487 = !DILocation(line: 600, column: 10, scope: !2459)
!2488 = !DILocation(line: 600, column: 3, scope: !2459)
!2489 = !DILocation(line: 603, column: 2, scope: !2460)
!2490 = !DILocation(line: 604, column: 19, scope: !2454)
!2491 = !DILocation(line: 604, column: 25, scope: !2454)
!2492 = !DILocation(line: 604, column: 9, scope: !2454)
!2493 = !DILocation(line: 604, column: 2, scope: !2454)
!2494 = !DILocation(line: 605, column: 1, scope: !2454)
!2495 = !DISubprogram(name: "kmalloc_large", scope: !84, file: !84, line: 531, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2496 = distinct !DISubprogram(name: "__kmalloc_index", scope: !84, file: !84, line: 444, type: !2497, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!7, !242, !552}
!2499 = !{!2500, !2501}
!2500 = !DILocalVariable(name: "size", arg: 1, scope: !2496, file: !84, line: 444, type: !242)
!2501 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2496, file: !84, line: 445, type: !552)
!2502 = !DILocation(line: 444, column: 60, scope: !2496)
!2503 = !DILocation(line: 445, column: 16, scope: !2496)
!2504 = !DILocation(line: 447, column: 7, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 447, column: 6)
!2506 = !DILocation(line: 447, column: 6, scope: !2496)
!2507 = !DILocation(line: 448, column: 3, scope: !2505)
!2508 = !DILocation(line: 450, column: 6, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 450, column: 6)
!2510 = !DILocation(line: 450, column: 11, scope: !2509)
!2511 = !DILocation(line: 450, column: 6, scope: !2496)
!2512 = !DILocation(line: 451, column: 3, scope: !2509)
!2513 = !DILocation(line: 453, column: 32, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 453, column: 6)
!2515 = !DILocation(line: 453, column: 37, scope: !2514)
!2516 = !DILocation(line: 453, column: 42, scope: !2514)
!2517 = !DILocation(line: 453, column: 45, scope: !2514)
!2518 = !DILocation(line: 453, column: 50, scope: !2514)
!2519 = !DILocation(line: 453, column: 6, scope: !2496)
!2520 = !DILocation(line: 454, column: 3, scope: !2514)
!2521 = !DILocation(line: 455, column: 32, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 455, column: 6)
!2523 = !DILocation(line: 455, column: 37, scope: !2522)
!2524 = !DILocation(line: 455, column: 43, scope: !2522)
!2525 = !DILocation(line: 455, column: 46, scope: !2522)
!2526 = !DILocation(line: 455, column: 51, scope: !2522)
!2527 = !DILocation(line: 455, column: 6, scope: !2496)
!2528 = !DILocation(line: 456, column: 3, scope: !2522)
!2529 = !DILocation(line: 457, column: 6, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 457, column: 6)
!2531 = !DILocation(line: 457, column: 11, scope: !2530)
!2532 = !DILocation(line: 457, column: 6, scope: !2496)
!2533 = !DILocation(line: 457, column: 26, scope: !2530)
!2534 = !DILocation(line: 458, column: 6, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 458, column: 6)
!2536 = !DILocation(line: 458, column: 11, scope: !2535)
!2537 = !DILocation(line: 458, column: 6, scope: !2496)
!2538 = !DILocation(line: 458, column: 26, scope: !2535)
!2539 = !DILocation(line: 459, column: 6, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 459, column: 6)
!2541 = !DILocation(line: 459, column: 11, scope: !2540)
!2542 = !DILocation(line: 459, column: 6, scope: !2496)
!2543 = !DILocation(line: 459, column: 26, scope: !2540)
!2544 = !DILocation(line: 460, column: 6, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 460, column: 6)
!2546 = !DILocation(line: 460, column: 11, scope: !2545)
!2547 = !DILocation(line: 460, column: 6, scope: !2496)
!2548 = !DILocation(line: 460, column: 26, scope: !2545)
!2549 = !DILocation(line: 461, column: 6, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 461, column: 6)
!2551 = !DILocation(line: 461, column: 11, scope: !2550)
!2552 = !DILocation(line: 461, column: 6, scope: !2496)
!2553 = !DILocation(line: 461, column: 26, scope: !2550)
!2554 = !DILocation(line: 462, column: 6, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 462, column: 6)
!2556 = !DILocation(line: 462, column: 11, scope: !2555)
!2557 = !DILocation(line: 462, column: 6, scope: !2496)
!2558 = !DILocation(line: 462, column: 26, scope: !2555)
!2559 = !DILocation(line: 463, column: 6, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 463, column: 6)
!2561 = !DILocation(line: 463, column: 11, scope: !2560)
!2562 = !DILocation(line: 463, column: 6, scope: !2496)
!2563 = !DILocation(line: 463, column: 26, scope: !2560)
!2564 = !DILocation(line: 464, column: 6, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 464, column: 6)
!2566 = !DILocation(line: 464, column: 11, scope: !2565)
!2567 = !DILocation(line: 464, column: 6, scope: !2496)
!2568 = !DILocation(line: 464, column: 26, scope: !2565)
!2569 = !DILocation(line: 465, column: 6, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 465, column: 6)
!2571 = !DILocation(line: 465, column: 11, scope: !2570)
!2572 = !DILocation(line: 465, column: 6, scope: !2496)
!2573 = !DILocation(line: 465, column: 26, scope: !2570)
!2574 = !DILocation(line: 466, column: 6, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 466, column: 6)
!2576 = !DILocation(line: 466, column: 11, scope: !2575)
!2577 = !DILocation(line: 466, column: 6, scope: !2496)
!2578 = !DILocation(line: 466, column: 26, scope: !2575)
!2579 = !DILocation(line: 467, column: 6, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 467, column: 6)
!2581 = !DILocation(line: 467, column: 11, scope: !2580)
!2582 = !DILocation(line: 467, column: 6, scope: !2496)
!2583 = !DILocation(line: 467, column: 26, scope: !2580)
!2584 = !DILocation(line: 468, column: 6, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 468, column: 6)
!2586 = !DILocation(line: 468, column: 11, scope: !2585)
!2587 = !DILocation(line: 468, column: 6, scope: !2496)
!2588 = !DILocation(line: 468, column: 26, scope: !2585)
!2589 = !DILocation(line: 469, column: 6, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 469, column: 6)
!2591 = !DILocation(line: 469, column: 11, scope: !2590)
!2592 = !DILocation(line: 469, column: 6, scope: !2496)
!2593 = !DILocation(line: 469, column: 26, scope: !2590)
!2594 = !DILocation(line: 470, column: 6, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 470, column: 6)
!2596 = !DILocation(line: 470, column: 11, scope: !2595)
!2597 = !DILocation(line: 470, column: 6, scope: !2496)
!2598 = !DILocation(line: 470, column: 26, scope: !2595)
!2599 = !DILocation(line: 471, column: 6, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 471, column: 6)
!2601 = !DILocation(line: 471, column: 11, scope: !2600)
!2602 = !DILocation(line: 471, column: 6, scope: !2496)
!2603 = !DILocation(line: 471, column: 26, scope: !2600)
!2604 = !DILocation(line: 472, column: 6, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 472, column: 6)
!2606 = !DILocation(line: 472, column: 11, scope: !2605)
!2607 = !DILocation(line: 472, column: 6, scope: !2496)
!2608 = !DILocation(line: 472, column: 26, scope: !2605)
!2609 = !DILocation(line: 473, column: 6, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 473, column: 6)
!2611 = !DILocation(line: 473, column: 11, scope: !2610)
!2612 = !DILocation(line: 473, column: 6, scope: !2496)
!2613 = !DILocation(line: 473, column: 26, scope: !2610)
!2614 = !DILocation(line: 474, column: 6, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 474, column: 6)
!2616 = !DILocation(line: 474, column: 11, scope: !2615)
!2617 = !DILocation(line: 474, column: 6, scope: !2496)
!2618 = !DILocation(line: 474, column: 27, scope: !2615)
!2619 = !DILocation(line: 475, column: 6, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 475, column: 6)
!2621 = !DILocation(line: 475, column: 11, scope: !2620)
!2622 = !DILocation(line: 475, column: 6, scope: !2496)
!2623 = !DILocation(line: 475, column: 32, scope: !2620)
!2624 = !DILocation(line: 477, column: 50, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2496, file: !84, line: 477, column: 6)
!2626 = !{i8 0, i8 2}
!2627 = !DILocation(line: 477, column: 6, scope: !2496)
!2628 = !DILocation(line: 478, column: 3, scope: !2625)
!2629 = !DILocation(line: 478, column: 3, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !84, line: 478, column: 3)
!2631 = distinct !DILexicalBlock(scope: !2625, file: !84, line: 478, column: 3)
!2632 = !{i32 -2142233257}
!2633 = !DILocation(line: 478, column: 3, scope: !2631)
!2634 = !DILocation(line: 480, column: 3, scope: !2625)
!2635 = !DILocation(line: 480, column: 3, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2625, file: !84, line: 480, column: 3)
!2637 = !DILocation(line: 480, column: 3, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2636, file: !84, line: 480, column: 3)
!2639 = !DILocation(line: 480, column: 3, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !84, line: 480, column: 3)
!2641 = !{i64 2152734242, i64 2152734271, i64 2152734317, i64 2152734375, i64 2152734429, i64 2152734483, i64 2152734538, i64 2152734569}
!2642 = !DILocation(line: 483, column: 2, scope: !2496)
!2643 = !DILocation(line: 484, column: 1, scope: !2496)
!2644 = !DISubprogram(name: "kmalloc_trace", scope: !84, file: !84, line: 525, type: !2645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!94, !2647, !1738, !242}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2649, line: 11, flags: DIFlagFwdDecl)
!2649 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2650 = distinct !DISubprogram(name: "kmalloc_type", scope: !84, file: !84, line: 401, type: !2651, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!83, !1738, !245}
!2653 = !{!2654, !2655}
!2654 = !DILocalVariable(name: "flags", arg: 1, scope: !2650, file: !84, line: 401, type: !1738)
!2655 = !DILocalVariable(name: "caller", arg: 2, scope: !2650, file: !84, line: 401, type: !245)
!2656 = !DILocation(line: 401, column: 67, scope: !2650)
!2657 = !DILocation(line: 401, column: 88, scope: !2650)
!2658 = !DILocation(line: 407, column: 6, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2650, file: !84, line: 407, column: 6)
!2660 = !DILocation(line: 407, column: 6, scope: !2650)
!2661 = !DILocation(line: 413, column: 3, scope: !2659)
!2662 = !DILocation(line: 423, column: 38, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2650, file: !84, line: 423, column: 6)
!2664 = !DILocation(line: 423, column: 44, scope: !2663)
!2665 = !DILocation(line: 423, column: 6, scope: !2650)
!2666 = !DILocation(line: 424, column: 3, scope: !2663)
!2667 = !DILocation(line: 426, column: 3, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2650, file: !84, line: 425, column: 6)
!2669 = !DILocation(line: 429, column: 1, scope: !2650)
!2670 = !DISubprogram(name: "__kmalloc", scope: !84, file: !84, line: 488, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2671 = !DISubprogram(name: "__compiletime_assert_206", scope: !84, file: !84, line: 478, type: !1229, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2672 = !DISubprogram(name: "vsnprintf", scope: !2673, file: !2673, line: 13, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2673 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!46, !195, !242, !107, !2676}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2677 = !DISubprogram(name: "_dev_info", scope: !2678, file: !2678, line: 56, type: !2679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2678 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !787, !107, null}
!2681 = !DISubprogram(name: "skip_spaces", scope: !2682, file: !2682, line: 112, type: !2683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2682 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!195, !107}
!2685 = !DISubprogram(name: "strncasecmp", scope: !2682, file: !2682, line: 97, type: !2686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!46, !107, !107, !242}
!2688 = !DISubprogram(name: "pnp_disable_dev", scope: !97, file: !97, line: 463, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2689 = !DISubprogram(name: "pnp_activate_dev", scope: !97, file: !97, line: 462, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2690 = !DISubprogram(name: "pnp_auto_config_dev", scope: !97, file: !97, line: 459, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2691 = !DISubprogram(name: "pnp_init_resources", scope: !1741, file: !1741, line: 135, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2692 = !DISubprogram(name: "mutex_lock", scope: !453, file: !453, line: 227, type: !2693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!2696 = !DISubprogram(name: "mutex_unlock", scope: !453, file: !453, line: 246, type: !2693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2697 = distinct !DISubprogram(name: "pnp_get_resource_value", scope: !3, file: !3, line: 303, type: !2698, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2701)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!195, !195, !245, !2700, !2700, !1215}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!2701 = !{!2702, !2703, !2704, !2705, !2706}
!2702 = !DILocalVariable(name: "buf", arg: 1, scope: !2697, file: !3, line: 303, type: !195)
!2703 = !DILocalVariable(name: "type", arg: 2, scope: !2697, file: !3, line: 304, type: !245)
!2704 = !DILocalVariable(name: "start", arg: 3, scope: !2697, file: !3, line: 305, type: !2700)
!2705 = !DILocalVariable(name: "end", arg: 4, scope: !2697, file: !3, line: 306, type: !2700)
!2706 = !DILocalVariable(name: "flags", arg: 5, scope: !2697, file: !3, line: 307, type: !1215)
!2707 = !DILocation(line: 303, column: 43, scope: !2697)
!2708 = !DILocation(line: 304, column: 23, scope: !2697)
!2709 = !DILocation(line: 305, column: 26, scope: !2697)
!2710 = !DILocation(line: 306, column: 26, scope: !2697)
!2711 = !DILocation(line: 307, column: 24, scope: !2697)
!2712 = !DILocation(line: 309, column: 6, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 309, column: 6)
!2714 = !DILocation(line: 309, column: 6, scope: !2697)
!2715 = !DILocation(line: 310, column: 4, scope: !2713)
!2716 = !DILocation(line: 310, column: 10, scope: !2713)
!2717 = !DILocation(line: 310, column: 3, scope: !2713)
!2718 = !DILocation(line: 311, column: 6, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 311, column: 6)
!2720 = !DILocation(line: 311, column: 6, scope: !2697)
!2721 = !DILocation(line: 312, column: 4, scope: !2719)
!2722 = !DILocation(line: 312, column: 8, scope: !2719)
!2723 = !DILocation(line: 312, column: 3, scope: !2719)
!2724 = !DILocation(line: 313, column: 6, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 313, column: 6)
!2726 = !DILocation(line: 313, column: 6, scope: !2697)
!2727 = !DILocation(line: 314, column: 4, scope: !2725)
!2728 = !DILocation(line: 314, column: 10, scope: !2725)
!2729 = !DILocation(line: 314, column: 3, scope: !2725)
!2730 = !DILocation(line: 318, column: 20, scope: !2697)
!2731 = !DILocation(line: 318, column: 8, scope: !2697)
!2732 = !DILocation(line: 318, column: 6, scope: !2697)
!2733 = !DILocation(line: 319, column: 6, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 319, column: 6)
!2735 = !DILocation(line: 319, column: 6, scope: !2697)
!2736 = !DILocation(line: 320, column: 28, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 319, column: 13)
!2738 = !DILocation(line: 320, column: 12, scope: !2737)
!2739 = !DILocation(line: 320, column: 4, scope: !2737)
!2740 = !DILocation(line: 320, column: 10, scope: !2737)
!2741 = !DILocation(line: 321, column: 7, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 321, column: 7)
!2743 = !DILocation(line: 321, column: 7, scope: !2737)
!2744 = !DILocation(line: 322, column: 22, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 321, column: 12)
!2746 = !DILocation(line: 322, column: 10, scope: !2745)
!2747 = !DILocation(line: 322, column: 8, scope: !2745)
!2748 = !DILocation(line: 323, column: 9, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 323, column: 8)
!2750 = !DILocation(line: 323, column: 8, scope: !2749)
!2751 = !DILocation(line: 323, column: 13, scope: !2749)
!2752 = !DILocation(line: 323, column: 8, scope: !2745)
!2753 = !DILocation(line: 324, column: 23, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 323, column: 21)
!2755 = !DILocation(line: 324, column: 27, scope: !2754)
!2756 = !DILocation(line: 324, column: 11, scope: !2754)
!2757 = !DILocation(line: 324, column: 9, scope: !2754)
!2758 = !DILocation(line: 325, column: 28, scope: !2754)
!2759 = !DILocation(line: 325, column: 12, scope: !2754)
!2760 = !DILocation(line: 325, column: 6, scope: !2754)
!2761 = !DILocation(line: 325, column: 10, scope: !2754)
!2762 = !DILocation(line: 326, column: 4, scope: !2754)
!2763 = !DILocation(line: 327, column: 13, scope: !2749)
!2764 = !DILocation(line: 327, column: 12, scope: !2749)
!2765 = !DILocation(line: 327, column: 6, scope: !2749)
!2766 = !DILocation(line: 327, column: 10, scope: !2749)
!2767 = !DILocation(line: 328, column: 3, scope: !2745)
!2768 = !DILocation(line: 329, column: 2, scope: !2737)
!2769 = !DILocation(line: 333, column: 9, scope: !2697)
!2770 = !DILocation(line: 333, column: 2, scope: !2697)
!2771 = !DISubprogram(name: "pnp_add_io_resource", scope: !1741, file: !1741, line: 168, type: !2772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!1739, !95, !1749, !1749, !46}
!2774 = !DISubprogram(name: "pnp_add_mem_resource", scope: !1741, file: !1741, line: 171, type: !2772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2775 = !DISubprogram(name: "pnp_add_irq_resource", scope: !1741, file: !1741, line: 164, type: !2776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!1739, !95, !46, !46}
!2778 = !DISubprogram(name: "pnp_add_dma_resource", scope: !1741, file: !1741, line: 166, type: !2776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2779 = !DISubprogram(name: "pnp_add_bus_resource", scope: !1741, file: !1741, line: 174, type: !2780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!1739, !95, !1749, !1749}
!2782 = !DISubprogram(name: "simple_strtoull", scope: !2783, file: !2783, line: 147, type: !2784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2783 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!360, !107, !2786, !7}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!2787 = distinct !DISubprogram(name: "options_show", scope: !3, file: !3, line: 208, type: !1820, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2788)
!2788 = !{!2789, !2790, !2791, !2792, !2793, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2804}
!2789 = !DILocalVariable(name: "dmdev", arg: 1, scope: !2787, file: !3, line: 208, type: !771)
!2790 = !DILocalVariable(name: "attr", arg: 2, scope: !2787, file: !3, line: 208, type: !1822)
!2791 = !DILocalVariable(name: "buf", arg: 3, scope: !2787, file: !3, line: 209, type: !195)
!2792 = !DILocalVariable(name: "dev", scope: !2787, file: !3, line: 211, type: !95)
!2793 = !DILocalVariable(name: "__mptr", scope: !2794, file: !3, line: 211, type: !94)
!2794 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 211, column: 24)
!2795 = !DILocalVariable(name: "buffer", scope: !2787, file: !3, line: 212, type: !2013)
!2796 = !DILocalVariable(name: "option", scope: !2787, file: !3, line: 213, type: !1759)
!2797 = !DILocalVariable(name: "ret", scope: !2787, file: !3, line: 214, type: !46)
!2798 = !DILocalVariable(name: "dep", scope: !2787, file: !3, line: 214, type: !46)
!2799 = !DILocalVariable(name: "set", scope: !2787, file: !3, line: 214, type: !46)
!2800 = !DILocalVariable(name: "indent", scope: !2787, file: !3, line: 215, type: !195)
!2801 = !DILocalVariable(name: "__mptr", scope: !2802, file: !3, line: 225, type: !94)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 225, column: 2)
!2803 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 225, column: 2)
!2804 = !DILocalVariable(name: "__mptr", scope: !2805, file: !3, line: 225, type: !94)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 225, column: 2)
!2806 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 225, column: 2)
!2807 = !DILocation(line: 208, column: 44, scope: !2787)
!2808 = !DILocation(line: 208, column: 76, scope: !2787)
!2809 = !DILocation(line: 209, column: 14, scope: !2787)
!2810 = !DILocation(line: 211, column: 2, scope: !2787)
!2811 = !DILocation(line: 211, column: 18, scope: !2787)
!2812 = !DILocation(line: 211, column: 24, scope: !2794)
!2813 = !DILocation(line: 211, column: 24, scope: !2787)
!2814 = !DILocation(line: 212, column: 2, scope: !2787)
!2815 = !DILocation(line: 212, column: 21, scope: !2787)
!2816 = !DILocation(line: 213, column: 2, scope: !2787)
!2817 = !DILocation(line: 213, column: 21, scope: !2787)
!2818 = !DILocation(line: 214, column: 2, scope: !2787)
!2819 = !DILocation(line: 214, column: 6, scope: !2787)
!2820 = !DILocation(line: 214, column: 11, scope: !2787)
!2821 = !DILocation(line: 214, column: 20, scope: !2787)
!2822 = !DILocation(line: 215, column: 2, scope: !2787)
!2823 = !DILocation(line: 215, column: 8, scope: !2787)
!2824 = !DILocation(line: 217, column: 11, scope: !2787)
!2825 = !DILocation(line: 217, column: 9, scope: !2787)
!2826 = !DILocation(line: 218, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 218, column: 6)
!2828 = !DILocation(line: 218, column: 6, scope: !2787)
!2829 = !DILocation(line: 219, column: 3, scope: !2827)
!2830 = !DILocation(line: 221, column: 2, scope: !2787)
!2831 = !DILocation(line: 221, column: 10, scope: !2787)
!2832 = !DILocation(line: 221, column: 14, scope: !2787)
!2833 = !DILocation(line: 222, column: 19, scope: !2787)
!2834 = !DILocation(line: 222, column: 2, scope: !2787)
!2835 = !DILocation(line: 222, column: 10, scope: !2787)
!2836 = !DILocation(line: 222, column: 17, scope: !2787)
!2837 = !DILocation(line: 223, column: 17, scope: !2787)
!2838 = !DILocation(line: 223, column: 25, scope: !2787)
!2839 = !DILocation(line: 223, column: 2, scope: !2787)
!2840 = !DILocation(line: 223, column: 10, scope: !2787)
!2841 = !DILocation(line: 223, column: 15, scope: !2787)
!2842 = !DILocation(line: 225, column: 2, scope: !2802)
!2843 = !DILocation(line: 225, column: 2, scope: !2803)
!2844 = !DILocation(line: 225, column: 2, scope: !2806)
!2845 = !DILocation(line: 226, column: 31, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 226, column: 7)
!2847 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 225, column: 51)
!2848 = !DILocation(line: 226, column: 7, scope: !2846)
!2849 = !DILocation(line: 226, column: 7, scope: !2847)
!2850 = !DILocation(line: 227, column: 11, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 226, column: 40)
!2852 = !DILocation(line: 228, column: 9, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 228, column: 8)
!2854 = !DILocation(line: 228, column: 13, scope: !2853)
!2855 = !DILocation(line: 228, column: 31, scope: !2853)
!2856 = !DILocation(line: 228, column: 16, scope: !2853)
!2857 = !DILocation(line: 228, column: 42, scope: !2853)
!2858 = !DILocation(line: 228, column: 39, scope: !2853)
!2859 = !DILocation(line: 228, column: 8, scope: !2851)
!2860 = !DILocation(line: 229, column: 26, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 228, column: 47)
!2862 = !DILocation(line: 229, column: 11, scope: !2861)
!2863 = !DILocation(line: 229, column: 9, scope: !2861)
!2864 = !DILocation(line: 230, column: 9, scope: !2861)
!2865 = !DILocation(line: 231, column: 16, scope: !2861)
!2866 = !DILocation(line: 232, column: 26, scope: !2861)
!2867 = !DILocation(line: 233, column: 34, scope: !2861)
!2868 = !DILocation(line: 233, column: 9, scope: !2861)
!2869 = !DILocation(line: 231, column: 5, scope: !2861)
!2870 = !DILocation(line: 234, column: 4, scope: !2861)
!2871 = !DILocation(line: 235, column: 3, scope: !2851)
!2872 = !DILocation(line: 236, column: 8, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 235, column: 10)
!2874 = !DILocation(line: 237, column: 11, scope: !2873)
!2875 = !DILocation(line: 239, column: 20, scope: !2847)
!2876 = !DILocation(line: 239, column: 28, scope: !2847)
!2877 = !DILocation(line: 239, column: 36, scope: !2847)
!2878 = !DILocation(line: 239, column: 3, scope: !2847)
!2879 = !DILocation(line: 240, column: 2, scope: !2847)
!2880 = !DILocation(line: 225, column: 2, scope: !2805)
!2881 = distinct !{!2881, !2843, !2882, !2116, !2117}
!2882 = !DILocation(line: 240, column: 2, scope: !2803)
!2883 = !DILocation(line: 242, column: 9, scope: !2787)
!2884 = !DILocation(line: 242, column: 17, scope: !2787)
!2885 = !DILocation(line: 242, column: 24, scope: !2787)
!2886 = !DILocation(line: 242, column: 22, scope: !2787)
!2887 = !DILocation(line: 242, column: 8, scope: !2787)
!2888 = !DILocation(line: 242, column: 6, scope: !2787)
!2889 = !DILocation(line: 243, column: 8, scope: !2787)
!2890 = !DILocation(line: 243, column: 2, scope: !2787)
!2891 = !DILocation(line: 244, column: 9, scope: !2787)
!2892 = !DILocation(line: 244, column: 2, scope: !2787)
!2893 = !DILocation(line: 245, column: 1, scope: !2787)
!2894 = distinct !DISubprogram(name: "pnp_option_is_dependent", scope: !1741, file: !1741, line: 93, type: !2895, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!46, !1759}
!2897 = !{!2898}
!2898 = !DILocalVariable(name: "option", arg: 1, scope: !2894, file: !1741, line: 93, type: !1759)
!2899 = !DILocation(line: 93, column: 62, scope: !2894)
!2900 = !DILocation(line: 95, column: 9, scope: !2894)
!2901 = !DILocation(line: 95, column: 17, scope: !2894)
!2902 = !DILocation(line: 95, column: 23, scope: !2894)
!2903 = !DILocation(line: 95, column: 2, scope: !2894)
!2904 = distinct !DISubprogram(name: "pnp_option_set", scope: !1741, file: !1741, line: 98, type: !2905, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!7, !1759}
!2907 = !{!2908}
!2908 = !DILocalVariable(name: "option", arg: 1, scope: !2904, file: !1741, line: 98, type: !1759)
!2909 = !DILocation(line: 98, column: 62, scope: !2904)
!2910 = !DILocation(line: 100, column: 10, scope: !2904)
!2911 = !DILocation(line: 100, column: 18, scope: !2904)
!2912 = !DILocation(line: 100, column: 24, scope: !2904)
!2913 = !DILocation(line: 100, column: 49, scope: !2904)
!2914 = !DILocation(line: 100, column: 2, scope: !2904)
!2915 = !DISubprogram(name: "pnp_option_priority_name", scope: !1741, file: !1741, line: 132, type: !2916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!195, !1759}
!2918 = distinct !DISubprogram(name: "pnp_print_option", scope: !3, file: !3, line: 189, type: !2919, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2013, !195, !1759}
!2921 = !{!2922, !2923, !2924}
!2922 = !DILocalVariable(name: "buffer", arg: 1, scope: !2918, file: !3, line: 189, type: !2013)
!2923 = !DILocalVariable(name: "space", arg: 2, scope: !2918, file: !3, line: 189, type: !195)
!2924 = !DILocalVariable(name: "option", arg: 3, scope: !2918, file: !3, line: 190, type: !1759)
!2925 = !DILocation(line: 189, column: 50, scope: !2918)
!2926 = !DILocation(line: 189, column: 64, scope: !2918)
!2927 = !DILocation(line: 190, column: 28, scope: !2918)
!2928 = !DILocation(line: 192, column: 10, scope: !2918)
!2929 = !DILocation(line: 192, column: 18, scope: !2918)
!2930 = !DILocation(line: 192, column: 2, scope: !2918)
!2931 = !DILocation(line: 194, column: 18, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 192, column: 24)
!2933 = !DILocation(line: 194, column: 26, scope: !2932)
!2934 = !DILocation(line: 194, column: 34, scope: !2932)
!2935 = !DILocation(line: 194, column: 42, scope: !2932)
!2936 = !DILocation(line: 194, column: 3, scope: !2932)
!2937 = !DILocation(line: 195, column: 3, scope: !2932)
!2938 = !DILocation(line: 197, column: 17, scope: !2932)
!2939 = !DILocation(line: 197, column: 25, scope: !2932)
!2940 = !DILocation(line: 197, column: 33, scope: !2932)
!2941 = !DILocation(line: 197, column: 41, scope: !2932)
!2942 = !DILocation(line: 197, column: 3, scope: !2932)
!2943 = !DILocation(line: 198, column: 3, scope: !2932)
!2944 = !DILocation(line: 200, column: 17, scope: !2932)
!2945 = !DILocation(line: 200, column: 25, scope: !2932)
!2946 = !DILocation(line: 200, column: 33, scope: !2932)
!2947 = !DILocation(line: 200, column: 41, scope: !2932)
!2948 = !DILocation(line: 200, column: 3, scope: !2932)
!2949 = !DILocation(line: 201, column: 3, scope: !2932)
!2950 = !DILocation(line: 203, column: 17, scope: !2932)
!2951 = !DILocation(line: 203, column: 25, scope: !2932)
!2952 = !DILocation(line: 203, column: 33, scope: !2932)
!2953 = !DILocation(line: 203, column: 41, scope: !2932)
!2954 = !DILocation(line: 203, column: 3, scope: !2932)
!2955 = !DILocation(line: 204, column: 3, scope: !2932)
!2956 = !DILocation(line: 206, column: 1, scope: !2918)
!2957 = distinct !DISubprogram(name: "pnp_print_port", scope: !3, file: !3, line: 56, type: !2958, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2961)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !2013, !195, !2960}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!2961 = !{!2962, !2963, !2964}
!2962 = !DILocalVariable(name: "buffer", arg: 1, scope: !2957, file: !3, line: 56, type: !2013)
!2963 = !DILocalVariable(name: "space", arg: 2, scope: !2957, file: !3, line: 56, type: !195)
!2964 = !DILocalVariable(name: "port", arg: 3, scope: !2957, file: !3, line: 57, type: !2960)
!2965 = !DILocation(line: 56, column: 48, scope: !2957)
!2966 = !DILocation(line: 56, column: 62, scope: !2957)
!2967 = !DILocation(line: 57, column: 24, scope: !2957)
!2968 = !DILocation(line: 59, column: 13, scope: !2957)
!2969 = !DILocation(line: 60, column: 35, scope: !2957)
!2970 = !DILocation(line: 61, column: 27, scope: !2957)
!2971 = !DILocation(line: 61, column: 33, scope: !2957)
!2972 = !DILocation(line: 62, column: 27, scope: !2957)
!2973 = !DILocation(line: 62, column: 33, scope: !2957)
!2974 = !DILocation(line: 63, column: 6, scope: !2957)
!2975 = !DILocation(line: 63, column: 12, scope: !2957)
!2976 = !DILocation(line: 63, column: 42, scope: !2957)
!2977 = !DILocation(line: 63, column: 48, scope: !2957)
!2978 = !DILocation(line: 63, column: 54, scope: !2957)
!2979 = !DILocation(line: 64, column: 27, scope: !2957)
!2980 = !DILocation(line: 64, column: 33, scope: !2957)
!2981 = !DILocation(line: 65, column: 6, scope: !2957)
!2982 = !DILocation(line: 65, column: 12, scope: !2957)
!2983 = !DILocation(line: 65, column: 18, scope: !2957)
!2984 = !DILocation(line: 59, column: 2, scope: !2957)
!2985 = !DILocation(line: 66, column: 1, scope: !2957)
!2986 = distinct !DISubprogram(name: "pnp_print_mem", scope: !3, file: !3, line: 153, type: !2987, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2013, !195, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!2990 = !{!2991, !2992, !2993, !2994}
!2991 = !DILocalVariable(name: "buffer", arg: 1, scope: !2986, file: !3, line: 153, type: !2013)
!2992 = !DILocalVariable(name: "space", arg: 2, scope: !2986, file: !3, line: 153, type: !195)
!2993 = !DILocalVariable(name: "mem", arg: 3, scope: !2986, file: !3, line: 154, type: !2989)
!2994 = !DILocalVariable(name: "s", scope: !2986, file: !3, line: 156, type: !195)
!2995 = !DILocation(line: 153, column: 47, scope: !2986)
!2996 = !DILocation(line: 153, column: 61, scope: !2986)
!2997 = !DILocation(line: 154, column: 22, scope: !2986)
!2998 = !DILocation(line: 156, column: 2, scope: !2986)
!2999 = !DILocation(line: 156, column: 8, scope: !2986)
!3000 = !DILocation(line: 158, column: 13, scope: !2986)
!3001 = !DILocation(line: 159, column: 6, scope: !2986)
!3002 = !DILocation(line: 159, column: 34, scope: !2986)
!3003 = !DILocation(line: 159, column: 39, scope: !2986)
!3004 = !DILocation(line: 160, column: 27, scope: !2986)
!3005 = !DILocation(line: 160, column: 32, scope: !2986)
!3006 = !DILocation(line: 161, column: 27, scope: !2986)
!3007 = !DILocation(line: 161, column: 32, scope: !2986)
!3008 = !DILocation(line: 162, column: 27, scope: !2986)
!3009 = !DILocation(line: 162, column: 32, scope: !2986)
!3010 = !DILocation(line: 158, column: 2, scope: !2986)
!3011 = !DILocation(line: 163, column: 6, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 163, column: 6)
!3013 = !DILocation(line: 163, column: 11, scope: !3012)
!3014 = !DILocation(line: 163, column: 17, scope: !3012)
!3015 = !DILocation(line: 163, column: 6, scope: !2986)
!3016 = !DILocation(line: 164, column: 14, scope: !3012)
!3017 = !DILocation(line: 164, column: 3, scope: !3012)
!3018 = !DILocation(line: 165, column: 6, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 165, column: 6)
!3020 = !DILocation(line: 165, column: 11, scope: !3019)
!3021 = !DILocation(line: 165, column: 17, scope: !3019)
!3022 = !DILocation(line: 165, column: 6, scope: !2986)
!3023 = !DILocation(line: 166, column: 14, scope: !3019)
!3024 = !DILocation(line: 166, column: 3, scope: !3019)
!3025 = !DILocation(line: 167, column: 6, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 167, column: 6)
!3027 = !DILocation(line: 167, column: 11, scope: !3026)
!3028 = !DILocation(line: 167, column: 17, scope: !3026)
!3029 = !DILocation(line: 167, column: 6, scope: !2986)
!3030 = !DILocation(line: 168, column: 14, scope: !3026)
!3031 = !DILocation(line: 168, column: 3, scope: !3026)
!3032 = !DILocation(line: 169, column: 6, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 169, column: 6)
!3034 = !DILocation(line: 169, column: 11, scope: !3033)
!3035 = !DILocation(line: 169, column: 17, scope: !3033)
!3036 = !DILocation(line: 169, column: 6, scope: !2986)
!3037 = !DILocation(line: 170, column: 14, scope: !3033)
!3038 = !DILocation(line: 170, column: 3, scope: !3033)
!3039 = !DILocation(line: 171, column: 6, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 171, column: 6)
!3041 = !DILocation(line: 171, column: 11, scope: !3040)
!3042 = !DILocation(line: 171, column: 17, scope: !3040)
!3043 = !DILocation(line: 171, column: 6, scope: !2986)
!3044 = !DILocation(line: 172, column: 14, scope: !3040)
!3045 = !DILocation(line: 172, column: 3, scope: !3040)
!3046 = !DILocation(line: 173, column: 10, scope: !2986)
!3047 = !DILocation(line: 173, column: 15, scope: !2986)
!3048 = !DILocation(line: 173, column: 21, scope: !2986)
!3049 = !DILocation(line: 173, column: 2, scope: !2986)
!3050 = !DILocation(line: 175, column: 5, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 173, column: 49)
!3052 = !DILocation(line: 176, column: 3, scope: !3051)
!3053 = !DILocation(line: 178, column: 5, scope: !3051)
!3054 = !DILocation(line: 179, column: 3, scope: !3051)
!3055 = !DILocation(line: 181, column: 5, scope: !3051)
!3056 = !DILocation(line: 182, column: 3, scope: !3051)
!3057 = !DILocation(line: 184, column: 5, scope: !3051)
!3058 = !DILocation(line: 185, column: 2, scope: !3051)
!3059 = !DILocation(line: 186, column: 13, scope: !2986)
!3060 = !DILocation(line: 186, column: 31, scope: !2986)
!3061 = !DILocation(line: 186, column: 2, scope: !2986)
!3062 = !DILocation(line: 187, column: 1, scope: !2986)
!3063 = distinct !DISubprogram(name: "pnp_print_irq", scope: !3, file: !3, line: 68, type: !3064, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3067)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !2013, !195, !3066}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!3067 = !{!3068, !3069, !3070, !3071, !3072}
!3068 = !DILocalVariable(name: "buffer", arg: 1, scope: !3063, file: !3, line: 68, type: !2013)
!3069 = !DILocalVariable(name: "space", arg: 2, scope: !3063, file: !3, line: 68, type: !195)
!3070 = !DILocalVariable(name: "irq", arg: 3, scope: !3063, file: !3, line: 69, type: !3066)
!3071 = !DILocalVariable(name: "first", scope: !3063, file: !3, line: 71, type: !46)
!3072 = !DILocalVariable(name: "i", scope: !3063, file: !3, line: 71, type: !46)
!3073 = !DILocation(line: 68, column: 47, scope: !3063)
!3074 = !DILocation(line: 68, column: 61, scope: !3063)
!3075 = !DILocation(line: 69, column: 22, scope: !3063)
!3076 = !DILocation(line: 71, column: 2, scope: !3063)
!3077 = !DILocation(line: 71, column: 6, scope: !3063)
!3078 = !DILocation(line: 71, column: 17, scope: !3063)
!3079 = !DILocation(line: 73, column: 13, scope: !3063)
!3080 = !DILocation(line: 73, column: 31, scope: !3063)
!3081 = !DILocation(line: 73, column: 2, scope: !3063)
!3082 = !DILocation(line: 74, column: 9, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 74, column: 2)
!3084 = !DILocation(line: 74, column: 7, scope: !3083)
!3085 = !DILocation(line: 74, column: 14, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 74, column: 2)
!3087 = !DILocation(line: 74, column: 16, scope: !3086)
!3088 = !DILocation(line: 74, column: 2, scope: !3083)
!3089 = !DILocation(line: 75, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 75, column: 7)
!3091 = !DILocation(line: 75, column: 7, scope: !3086)
!3092 = !DILocation(line: 76, column: 9, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 76, column: 8)
!3094 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 75, column: 35)
!3095 = !DILocation(line: 76, column: 8, scope: !3094)
!3096 = !DILocation(line: 77, column: 16, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 76, column: 16)
!3098 = !DILocation(line: 77, column: 5, scope: !3097)
!3099 = !DILocation(line: 78, column: 4, scope: !3097)
!3100 = !DILocation(line: 79, column: 11, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 78, column: 11)
!3102 = !DILocation(line: 81, column: 8, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 81, column: 8)
!3104 = !DILocation(line: 81, column: 10, scope: !3103)
!3105 = !DILocation(line: 81, column: 15, scope: !3103)
!3106 = !DILocation(line: 81, column: 18, scope: !3103)
!3107 = !DILocation(line: 81, column: 20, scope: !3103)
!3108 = !DILocation(line: 81, column: 8, scope: !3094)
!3109 = !DILocation(line: 82, column: 16, scope: !3103)
!3110 = !DILocation(line: 82, column: 5, scope: !3103)
!3111 = !DILocation(line: 84, column: 16, scope: !3103)
!3112 = !DILocation(line: 84, column: 30, scope: !3103)
!3113 = !DILocation(line: 84, column: 5, scope: !3103)
!3114 = !DILocation(line: 85, column: 3, scope: !3094)
!3115 = !DILocation(line: 74, column: 31, scope: !3086)
!3116 = !DILocation(line: 74, column: 2, scope: !3086)
!3117 = distinct !{!3117, !3088, !3118, !2116, !2117}
!3118 = !DILocation(line: 85, column: 3, scope: !3083)
!3119 = !DILocation(line: 86, column: 19, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 86, column: 6)
!3121 = !DILocation(line: 86, column: 24, scope: !3120)
!3122 = !DILocation(line: 86, column: 28, scope: !3120)
!3123 = !DILocation(line: 86, column: 6, scope: !3120)
!3124 = !DILocation(line: 86, column: 6, scope: !3063)
!3125 = !DILocation(line: 87, column: 14, scope: !3120)
!3126 = !DILocation(line: 87, column: 3, scope: !3120)
!3127 = !DILocation(line: 88, column: 6, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 88, column: 6)
!3129 = !DILocation(line: 88, column: 11, scope: !3128)
!3130 = !DILocation(line: 88, column: 17, scope: !3128)
!3131 = !DILocation(line: 88, column: 6, scope: !3063)
!3132 = !DILocation(line: 89, column: 14, scope: !3128)
!3133 = !DILocation(line: 89, column: 3, scope: !3128)
!3134 = !DILocation(line: 90, column: 6, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 90, column: 6)
!3136 = !DILocation(line: 90, column: 11, scope: !3135)
!3137 = !DILocation(line: 90, column: 17, scope: !3135)
!3138 = !DILocation(line: 90, column: 6, scope: !3063)
!3139 = !DILocation(line: 91, column: 14, scope: !3135)
!3140 = !DILocation(line: 91, column: 3, scope: !3135)
!3141 = !DILocation(line: 92, column: 6, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 92, column: 6)
!3143 = !DILocation(line: 92, column: 11, scope: !3142)
!3144 = !DILocation(line: 92, column: 17, scope: !3142)
!3145 = !DILocation(line: 92, column: 6, scope: !3063)
!3146 = !DILocation(line: 93, column: 14, scope: !3142)
!3147 = !DILocation(line: 93, column: 3, scope: !3142)
!3148 = !DILocation(line: 94, column: 6, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 94, column: 6)
!3150 = !DILocation(line: 94, column: 11, scope: !3149)
!3151 = !DILocation(line: 94, column: 17, scope: !3149)
!3152 = !DILocation(line: 94, column: 6, scope: !3063)
!3153 = !DILocation(line: 95, column: 14, scope: !3149)
!3154 = !DILocation(line: 95, column: 3, scope: !3149)
!3155 = !DILocation(line: 96, column: 6, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 96, column: 6)
!3157 = !DILocation(line: 96, column: 11, scope: !3156)
!3158 = !DILocation(line: 96, column: 17, scope: !3156)
!3159 = !DILocation(line: 96, column: 6, scope: !3063)
!3160 = !DILocation(line: 97, column: 14, scope: !3156)
!3161 = !DILocation(line: 97, column: 3, scope: !3156)
!3162 = !DILocation(line: 98, column: 13, scope: !3063)
!3163 = !DILocation(line: 98, column: 2, scope: !3063)
!3164 = !DILocation(line: 99, column: 1, scope: !3063)
!3165 = distinct !DISubprogram(name: "pnp_print_dma", scope: !3, file: !3, line: 101, type: !3166, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3169)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !2013, !195, !3168}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175}
!3170 = !DILocalVariable(name: "buffer", arg: 1, scope: !3165, file: !3, line: 101, type: !2013)
!3171 = !DILocalVariable(name: "space", arg: 2, scope: !3165, file: !3, line: 101, type: !195)
!3172 = !DILocalVariable(name: "dma", arg: 3, scope: !3165, file: !3, line: 102, type: !3168)
!3173 = !DILocalVariable(name: "first", scope: !3165, file: !3, line: 104, type: !46)
!3174 = !DILocalVariable(name: "i", scope: !3165, file: !3, line: 104, type: !46)
!3175 = !DILocalVariable(name: "s", scope: !3165, file: !3, line: 105, type: !195)
!3176 = !DILocation(line: 101, column: 47, scope: !3165)
!3177 = !DILocation(line: 101, column: 61, scope: !3165)
!3178 = !DILocation(line: 102, column: 22, scope: !3165)
!3179 = !DILocation(line: 104, column: 2, scope: !3165)
!3180 = !DILocation(line: 104, column: 6, scope: !3165)
!3181 = !DILocation(line: 104, column: 17, scope: !3165)
!3182 = !DILocation(line: 105, column: 2, scope: !3165)
!3183 = !DILocation(line: 105, column: 8, scope: !3165)
!3184 = !DILocation(line: 107, column: 13, scope: !3165)
!3185 = !DILocation(line: 107, column: 31, scope: !3165)
!3186 = !DILocation(line: 107, column: 2, scope: !3165)
!3187 = !DILocation(line: 108, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 108, column: 2)
!3189 = !DILocation(line: 108, column: 7, scope: !3188)
!3190 = !DILocation(line: 108, column: 14, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 108, column: 2)
!3192 = !DILocation(line: 108, column: 16, scope: !3191)
!3193 = !DILocation(line: 108, column: 2, scope: !3188)
!3194 = !DILocation(line: 109, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 109, column: 7)
!3196 = !DILocation(line: 109, column: 12, scope: !3195)
!3197 = !DILocation(line: 109, column: 24, scope: !3195)
!3198 = !DILocation(line: 109, column: 21, scope: !3195)
!3199 = !DILocation(line: 109, column: 16, scope: !3195)
!3200 = !DILocation(line: 109, column: 7, scope: !3191)
!3201 = !DILocation(line: 110, column: 9, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 110, column: 8)
!3203 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 109, column: 28)
!3204 = !DILocation(line: 110, column: 8, scope: !3203)
!3205 = !DILocation(line: 111, column: 16, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 110, column: 16)
!3207 = !DILocation(line: 111, column: 5, scope: !3206)
!3208 = !DILocation(line: 112, column: 4, scope: !3206)
!3209 = !DILocation(line: 113, column: 11, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 112, column: 11)
!3211 = !DILocation(line: 115, column: 15, scope: !3203)
!3212 = !DILocation(line: 115, column: 29, scope: !3203)
!3213 = !DILocation(line: 115, column: 4, scope: !3203)
!3214 = !DILocation(line: 116, column: 3, scope: !3203)
!3215 = !DILocation(line: 109, column: 25, scope: !3195)
!3216 = !DILocation(line: 108, column: 22, scope: !3191)
!3217 = !DILocation(line: 108, column: 2, scope: !3191)
!3218 = distinct !{!3218, !3193, !3219, !2116, !2117}
!3219 = !DILocation(line: 116, column: 3, scope: !3188)
!3220 = !DILocation(line: 117, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 117, column: 6)
!3222 = !DILocation(line: 117, column: 12, scope: !3221)
!3223 = !DILocation(line: 117, column: 6, scope: !3165)
!3224 = !DILocation(line: 118, column: 14, scope: !3221)
!3225 = !DILocation(line: 118, column: 3, scope: !3221)
!3226 = !DILocation(line: 119, column: 10, scope: !3165)
!3227 = !DILocation(line: 119, column: 15, scope: !3165)
!3228 = !DILocation(line: 119, column: 21, scope: !3165)
!3229 = !DILocation(line: 119, column: 2, scope: !3165)
!3230 = !DILocation(line: 121, column: 5, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 119, column: 49)
!3232 = !DILocation(line: 122, column: 3, scope: !3231)
!3233 = !DILocation(line: 124, column: 5, scope: !3231)
!3234 = !DILocation(line: 125, column: 3, scope: !3231)
!3235 = !DILocation(line: 127, column: 5, scope: !3231)
!3236 = !DILocation(line: 128, column: 2, scope: !3231)
!3237 = !DILocation(line: 129, column: 13, scope: !3165)
!3238 = !DILocation(line: 129, column: 28, scope: !3165)
!3239 = !DILocation(line: 129, column: 2, scope: !3165)
!3240 = !DILocation(line: 130, column: 6, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 130, column: 6)
!3242 = !DILocation(line: 130, column: 11, scope: !3241)
!3243 = !DILocation(line: 130, column: 17, scope: !3241)
!3244 = !DILocation(line: 130, column: 6, scope: !3165)
!3245 = !DILocation(line: 131, column: 14, scope: !3241)
!3246 = !DILocation(line: 131, column: 3, scope: !3241)
!3247 = !DILocation(line: 132, column: 6, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 132, column: 6)
!3249 = !DILocation(line: 132, column: 11, scope: !3248)
!3250 = !DILocation(line: 132, column: 17, scope: !3248)
!3251 = !DILocation(line: 132, column: 6, scope: !3165)
!3252 = !DILocation(line: 133, column: 14, scope: !3248)
!3253 = !DILocation(line: 133, column: 3, scope: !3248)
!3254 = !DILocation(line: 134, column: 6, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 134, column: 6)
!3256 = !DILocation(line: 134, column: 11, scope: !3255)
!3257 = !DILocation(line: 134, column: 17, scope: !3255)
!3258 = !DILocation(line: 134, column: 6, scope: !3165)
!3259 = !DILocation(line: 135, column: 14, scope: !3255)
!3260 = !DILocation(line: 135, column: 3, scope: !3255)
!3261 = !DILocation(line: 136, column: 10, scope: !3165)
!3262 = !DILocation(line: 136, column: 15, scope: !3165)
!3263 = !DILocation(line: 136, column: 21, scope: !3165)
!3264 = !DILocation(line: 136, column: 2, scope: !3165)
!3265 = !DILocation(line: 138, column: 5, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 136, column: 50)
!3267 = !DILocation(line: 139, column: 3, scope: !3266)
!3268 = !DILocation(line: 141, column: 5, scope: !3266)
!3269 = !DILocation(line: 142, column: 3, scope: !3266)
!3270 = !DILocation(line: 144, column: 5, scope: !3266)
!3271 = !DILocation(line: 145, column: 3, scope: !3266)
!3272 = !DILocation(line: 147, column: 5, scope: !3266)
!3273 = !DILocation(line: 148, column: 3, scope: !3266)
!3274 = !DILocation(line: 150, column: 13, scope: !3165)
!3275 = !DILocation(line: 150, column: 30, scope: !3165)
!3276 = !DILocation(line: 150, column: 2, scope: !3165)
!3277 = !DILocation(line: 151, column: 1, scope: !3165)
!3278 = distinct !DISubprogram(name: "const_test_bit", scope: !3279, file: !3279, line: 166, type: !3280, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3285)
!3279 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!552, !245, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3284)
!3284 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !245)
!3285 = !{!3286, !3287, !3288, !3289, !3290}
!3286 = !DILocalVariable(name: "nr", arg: 1, scope: !3278, file: !3279, line: 166, type: !245)
!3287 = !DILocalVariable(name: "addr", arg: 2, scope: !3278, file: !3279, line: 166, type: !3282)
!3288 = !DILocalVariable(name: "p", scope: !3278, file: !3279, line: 168, type: !1799)
!3289 = !DILocalVariable(name: "mask", scope: !3278, file: !3279, line: 169, type: !245)
!3290 = !DILocalVariable(name: "val", scope: !3278, file: !3279, line: 170, type: !245)
!3291 = !DILocation(line: 166, column: 30, scope: !3278)
!3292 = !DILocation(line: 166, column: 64, scope: !3278)
!3293 = !DILocation(line: 168, column: 2, scope: !3278)
!3294 = !DILocation(line: 168, column: 23, scope: !3278)
!3295 = !DILocation(line: 168, column: 50, scope: !3278)
!3296 = !DILocation(line: 168, column: 57, scope: !3278)
!3297 = !DILocation(line: 168, column: 55, scope: !3278)
!3298 = !DILocation(line: 169, column: 2, scope: !3278)
!3299 = !DILocation(line: 169, column: 16, scope: !3278)
!3300 = !DILocation(line: 169, column: 23, scope: !3278)
!3301 = !DILocation(line: 170, column: 2, scope: !3278)
!3302 = !DILocation(line: 170, column: 16, scope: !3278)
!3303 = !DILocation(line: 170, column: 23, scope: !3278)
!3304 = !DILocation(line: 170, column: 22, scope: !3278)
!3305 = !DILocation(line: 172, column: 12, scope: !3278)
!3306 = !DILocation(line: 172, column: 18, scope: !3278)
!3307 = !DILocation(line: 172, column: 16, scope: !3278)
!3308 = !DILocation(line: 172, column: 10, scope: !3278)
!3309 = !DILocation(line: 172, column: 9, scope: !3278)
!3310 = !DILocation(line: 173, column: 1, scope: !3278)
!3311 = !DILocation(line: 172, column: 2, scope: !3278)
!3312 = distinct !DISubprogram(name: "_test_bit", scope: !3313, file: !3313, line: 139, type: !3280, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3314)
!3313 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3314 = !{!3315, !3316}
!3315 = !DILocalVariable(name: "nr", arg: 1, scope: !3312, file: !3313, line: 139, type: !245)
!3316 = !DILocalVariable(name: "addr", arg: 2, scope: !3312, file: !3313, line: 139, type: !3282)
!3317 = !DILocation(line: 139, column: 25, scope: !3312)
!3318 = !DILocation(line: 139, column: 59, scope: !3312)
!3319 = !DILocation(line: 141, column: 25, scope: !3312)
!3320 = !DILocation(line: 141, column: 32, scope: !3312)
!3321 = !DILocation(line: 141, column: 30, scope: !3312)
!3322 = !DILocation(line: 141, column: 2, scope: !3312)
!3323 = !DILocation(line: 142, column: 23, scope: !3312)
!3324 = !DILocation(line: 142, column: 27, scope: !3312)
!3325 = !DILocation(line: 142, column: 9, scope: !3312)
!3326 = !DILocation(line: 142, column: 2, scope: !3312)
!3327 = distinct !DISubprogram(name: "bitmap_empty", scope: !3328, file: !3328, line: 436, type: !3329, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3331)
!3328 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!552, !1799, !7}
!3331 = !{!3332, !3333}
!3332 = !DILocalVariable(name: "src", arg: 1, scope: !3327, file: !3328, line: 436, type: !1799)
!3333 = !DILocalVariable(name: "nbits", arg: 2, scope: !3327, file: !3328, line: 436, type: !7)
!3334 = !DILocation(line: 436, column: 54, scope: !3327)
!3335 = !DILocation(line: 436, column: 68, scope: !3327)
!3336 = !DILocation(line: 438, column: 6, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3327, file: !3328, line: 438, column: 6)
!3338 = !DILocation(line: 438, column: 6, scope: !3327)
!3339 = !DILocation(line: 439, column: 14, scope: !3337)
!3340 = !DILocation(line: 439, column: 13, scope: !3337)
!3341 = !DILocation(line: 439, column: 20, scope: !3337)
!3342 = !DILocation(line: 439, column: 18, scope: !3337)
!3343 = !DILocation(line: 439, column: 10, scope: !3337)
!3344 = !DILocation(line: 439, column: 3, scope: !3337)
!3345 = !DILocation(line: 441, column: 24, scope: !3327)
!3346 = !DILocation(line: 441, column: 29, scope: !3327)
!3347 = !DILocation(line: 441, column: 9, scope: !3327)
!3348 = !DILocation(line: 441, column: 39, scope: !3327)
!3349 = !DILocation(line: 441, column: 36, scope: !3327)
!3350 = !DILocation(line: 441, column: 2, scope: !3327)
!3351 = !DILocation(line: 442, column: 1, scope: !3327)
!3352 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3353, file: !3353, line: 66, type: !3354, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3359)
!3353 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3354 = !DISubroutineType(types: !3355)
!3355 = !{null, !3356, !242}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3358)
!3358 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3359 = !{!3360, !3361}
!3360 = !DILocalVariable(name: "v", arg: 1, scope: !3352, file: !3353, line: 66, type: !3356)
!3361 = !DILocalVariable(name: "size", arg: 2, scope: !3352, file: !3353, line: 66, type: !242)
!3362 = !DILocation(line: 66, column: 73, scope: !3352)
!3363 = !DILocation(line: 66, column: 83, scope: !3352)
!3364 = !DILocation(line: 68, column: 19, scope: !3352)
!3365 = !DILocation(line: 68, column: 22, scope: !3352)
!3366 = !DILocation(line: 68, column: 2, scope: !3352)
!3367 = !DILocation(line: 69, column: 2, scope: !3352)
!3368 = !DILocation(line: 70, column: 1, scope: !3352)
!3369 = distinct !DISubprogram(name: "arch_test_bit", scope: !3370, file: !3370, line: 237, type: !3280, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3371)
!3370 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3371 = !{!3372, !3373}
!3372 = !DILocalVariable(name: "nr", arg: 1, scope: !3369, file: !3370, line: 237, type: !245)
!3373 = !DILocalVariable(name: "addr", arg: 2, scope: !3369, file: !3370, line: 237, type: !3282)
!3374 = !DILocation(line: 237, column: 29, scope: !3369)
!3375 = !DILocation(line: 237, column: 63, scope: !3369)
!3376 = !DILocation(line: 239, column: 30, scope: !3369)
!3377 = !DILocation(line: 239, column: 9, scope: !3369)
!3378 = !DILocation(line: 239, column: 54, scope: !3369)
!3379 = !DILocation(line: 239, column: 58, scope: !3369)
!3380 = !DILocation(line: 239, column: 36, scope: !3369)
!3381 = !DILocation(line: 240, column: 26, scope: !3369)
!3382 = !DILocation(line: 240, column: 30, scope: !3369)
!3383 = !DILocation(line: 240, column: 8, scope: !3369)
!3384 = !DILocation(line: 239, column: 2, scope: !3369)
!3385 = distinct !DISubprogram(name: "kasan_check_read", scope: !3386, file: !3386, line: 40, type: !3387, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3389)
!3386 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!552, !3356, !7}
!3389 = !{!3390, !3391}
!3390 = !DILocalVariable(name: "p", arg: 1, scope: !3385, file: !3386, line: 40, type: !3356)
!3391 = !DILocalVariable(name: "size", arg: 2, scope: !3385, file: !3386, line: 40, type: !7)
!3392 = !DILocation(line: 40, column: 58, scope: !3385)
!3393 = !DILocation(line: 40, column: 74, scope: !3385)
!3394 = !DILocation(line: 42, column: 2, scope: !3385)
!3395 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3396, file: !3396, line: 229, type: !3397, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3399)
!3396 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !3356, !242, !46}
!3399 = !{!3400, !3401, !3402}
!3400 = !DILocalVariable(name: "ptr", arg: 1, scope: !3395, file: !3396, line: 229, type: !3356)
!3401 = !DILocalVariable(name: "size", arg: 2, scope: !3395, file: !3396, line: 229, type: !242)
!3402 = !DILocalVariable(name: "type", arg: 3, scope: !3395, file: !3396, line: 230, type: !46)
!3403 = !DILocation(line: 229, column: 60, scope: !3395)
!3404 = !DILocation(line: 229, column: 72, scope: !3395)
!3405 = !DILocation(line: 230, column: 15, scope: !3395)
!3406 = !DILocation(line: 230, column: 23, scope: !3395)
!3407 = distinct !DISubprogram(name: "constant_test_bit", scope: !3370, file: !3370, line: 204, type: !3408, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!552, !231, !3282}
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "nr", arg: 1, scope: !3407, file: !3370, line: 204, type: !231)
!3412 = !DILocalVariable(name: "addr", arg: 2, scope: !3407, file: !3370, line: 204, type: !3282)
!3413 = !DILocation(line: 204, column: 52, scope: !3407)
!3414 = !DILocation(line: 204, column: 86, scope: !3407)
!3415 = !DILocation(line: 206, column: 19, scope: !3407)
!3416 = !DILocation(line: 206, column: 22, scope: !3407)
!3417 = !DILocation(line: 206, column: 15, scope: !3407)
!3418 = !DILocation(line: 207, column: 4, scope: !3407)
!3419 = !DILocation(line: 207, column: 9, scope: !3407)
!3420 = !DILocation(line: 207, column: 12, scope: !3407)
!3421 = !DILocation(line: 206, column: 44, scope: !3407)
!3422 = !DILocation(line: 207, column: 37, scope: !3407)
!3423 = !DILocation(line: 206, column: 2, scope: !3407)
!3424 = distinct !DISubprogram(name: "variable_test_bit", scope: !3370, file: !3370, line: 224, type: !3408, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3425)
!3425 = !{!3426, !3427, !3428}
!3426 = !DILocalVariable(name: "nr", arg: 1, scope: !3424, file: !3370, line: 224, type: !231)
!3427 = !DILocalVariable(name: "addr", arg: 2, scope: !3424, file: !3370, line: 224, type: !3282)
!3428 = !DILocalVariable(name: "oldbit", scope: !3424, file: !3370, line: 226, type: !552)
!3429 = !DILocation(line: 224, column: 52, scope: !3424)
!3430 = !DILocation(line: 224, column: 86, scope: !3424)
!3431 = !DILocation(line: 226, column: 2, scope: !3424)
!3432 = !DILocation(line: 226, column: 7, scope: !3424)
!3433 = !DILocation(line: 231, column: 33, scope: !3424)
!3434 = !DILocation(line: 231, column: 46, scope: !3424)
!3435 = !DILocation(line: 228, column: 2, scope: !3424)
!3436 = !{i64 2148020500, i64 2148020574}
!3437 = !DILocation(line: 233, column: 9, scope: !3424)
!3438 = !DILocation(line: 234, column: 1, scope: !3424)
!3439 = !DILocation(line: 233, column: 2, scope: !3424)
!3440 = distinct !DISubprogram(name: "find_first_bit", scope: !3441, file: !3441, line: 200, type: !3442, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3444)
!3441 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!245, !1799, !245}
!3444 = !{!3445, !3446, !3447}
!3445 = !DILocalVariable(name: "addr", arg: 1, scope: !3440, file: !3441, line: 200, type: !1799)
!3446 = !DILocalVariable(name: "size", arg: 2, scope: !3440, file: !3441, line: 200, type: !245)
!3447 = !DILocalVariable(name: "val", scope: !3448, file: !3441, line: 203, type: !245)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !3441, line: 202, column: 31)
!3449 = distinct !DILexicalBlock(scope: !3440, file: !3441, line: 202, column: 6)
!3450 = !DILocation(line: 200, column: 51, scope: !3440)
!3451 = !DILocation(line: 200, column: 71, scope: !3440)
!3452 = !DILocation(line: 202, column: 6, scope: !3449)
!3453 = !DILocation(line: 202, column: 6, scope: !3440)
!3454 = !DILocation(line: 203, column: 3, scope: !3448)
!3455 = !DILocation(line: 203, column: 17, scope: !3448)
!3456 = !DILocation(line: 203, column: 24, scope: !3448)
!3457 = !DILocation(line: 203, column: 23, scope: !3448)
!3458 = !DILocation(line: 203, column: 31, scope: !3448)
!3459 = !DILocation(line: 203, column: 29, scope: !3448)
!3460 = !DILocation(line: 205, column: 10, scope: !3448)
!3461 = !DILocation(line: 205, column: 16, scope: !3448)
!3462 = !DILocation(line: 205, column: 29, scope: !3448)
!3463 = !DILocation(line: 205, column: 3, scope: !3448)
!3464 = !DILocation(line: 206, column: 2, scope: !3449)
!3465 = !DILocation(line: 208, column: 25, scope: !3440)
!3466 = !DILocation(line: 208, column: 31, scope: !3440)
!3467 = !DILocation(line: 208, column: 9, scope: !3440)
!3468 = !DILocation(line: 208, column: 2, scope: !3440)
!3469 = !DILocation(line: 209, column: 1, scope: !3440)
!3470 = distinct !DISubprogram(name: "variable__ffs", scope: !3370, file: !3370, line: 250, type: !3471, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!245, !245}
!3473 = !{!3474}
!3474 = !DILocalVariable(name: "word", arg: 1, scope: !3470, file: !3370, line: 250, type: !245)
!3475 = !DILocation(line: 250, column: 66, scope: !3470)
!3476 = !DILocation(line: 254, column: 11, scope: !3470)
!3477 = !DILocation(line: 252, column: 2, scope: !3470)
!3478 = !{i64 515575}
!3479 = !DILocation(line: 255, column: 9, scope: !3470)
!3480 = !DILocation(line: 255, column: 2, scope: !3470)
!3481 = !DISubprogram(name: "_find_first_bit", scope: !3441, file: !3441, line: 21, type: !3442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3482 = distinct !DISubprogram(name: "id_show", scope: !3, file: !3, line: 441, type: !1820, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3491}
!3484 = !DILocalVariable(name: "dmdev", arg: 1, scope: !3482, file: !3, line: 441, type: !771)
!3485 = !DILocalVariable(name: "attr", arg: 2, scope: !3482, file: !3, line: 441, type: !1822)
!3486 = !DILocalVariable(name: "buf", arg: 3, scope: !3482, file: !3, line: 442, type: !195)
!3487 = !DILocalVariable(name: "str", scope: !3482, file: !3, line: 444, type: !195)
!3488 = !DILocalVariable(name: "dev", scope: !3482, file: !3, line: 445, type: !95)
!3489 = !DILocalVariable(name: "__mptr", scope: !3490, file: !3, line: 445, type: !94)
!3490 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 445, column: 24)
!3491 = !DILocalVariable(name: "pos", scope: !3482, file: !3, line: 446, type: !1642)
!3492 = !DILocation(line: 441, column: 39, scope: !3482)
!3493 = !DILocation(line: 441, column: 71, scope: !3482)
!3494 = !DILocation(line: 442, column: 16, scope: !3482)
!3495 = !DILocation(line: 444, column: 2, scope: !3482)
!3496 = !DILocation(line: 444, column: 8, scope: !3482)
!3497 = !DILocation(line: 444, column: 14, scope: !3482)
!3498 = !DILocation(line: 445, column: 2, scope: !3482)
!3499 = !DILocation(line: 445, column: 18, scope: !3482)
!3500 = !DILocation(line: 445, column: 24, scope: !3490)
!3501 = !DILocation(line: 445, column: 24, scope: !3482)
!3502 = !DILocation(line: 446, column: 2, scope: !3482)
!3503 = !DILocation(line: 446, column: 17, scope: !3482)
!3504 = !DILocation(line: 446, column: 23, scope: !3482)
!3505 = !DILocation(line: 446, column: 28, scope: !3482)
!3506 = !DILocation(line: 448, column: 2, scope: !3482)
!3507 = !DILocation(line: 448, column: 9, scope: !3482)
!3508 = !DILocation(line: 449, column: 18, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 448, column: 14)
!3510 = !DILocation(line: 449, column: 31, scope: !3509)
!3511 = !DILocation(line: 449, column: 36, scope: !3509)
!3512 = !DILocation(line: 449, column: 10, scope: !3509)
!3513 = !DILocation(line: 449, column: 7, scope: !3509)
!3514 = !DILocation(line: 450, column: 9, scope: !3509)
!3515 = !DILocation(line: 450, column: 14, scope: !3509)
!3516 = !DILocation(line: 450, column: 7, scope: !3509)
!3517 = distinct !{!3517, !3506, !3518, !2116, !2117}
!3518 = !DILocation(line: 451, column: 2, scope: !3482)
!3519 = !DILocation(line: 452, column: 10, scope: !3482)
!3520 = !DILocation(line: 452, column: 16, scope: !3482)
!3521 = !DILocation(line: 452, column: 14, scope: !3482)
!3522 = !DILocation(line: 453, column: 1, scope: !3482)
!3523 = !DILocation(line: 452, column: 2, scope: !3482)
!3524 = !DISubprogram(name: "sprintf", scope: !2673, file: !2673, line: 10, type: !3525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!46, !195, !107, null}
