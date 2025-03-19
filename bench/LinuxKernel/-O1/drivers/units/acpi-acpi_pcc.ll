; ModuleID = 'drivers/acpi/acpi_pcc.c'
source_filename = "drivers/acpi/acpi_pcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pcc_info = type { i8, i16, ptr }
%struct.lock_class_key = type {}
%struct.pcc_data = type { ptr, ptr, %struct.completion, %struct.mbox_client, %struct.acpi_pcc_info }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mbox_client = type { ptr, i8, i64, i8, ptr, ptr, ptr }
%struct.pcc_mbox_chan = type { ptr, i64, ptr, i64, i32, i32, i16 }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }

@pcc_ctx = internal global %struct.acpi_pcc_info zeroinitializer, align 8, !dbg !0
@.str = private unnamed_addr constant [50 x i8] c"\011OperationRegion handler could not be installed\0A\00", align 1, !dbg !1834
@.str.1 = private unnamed_addr constant [33 x i8] c"\013PCC command executed timeout!\0A\00", align 1, !dbg !1839
@acpi_pcc_address_space_setup.ret = internal global i32 0, align 4, !dbg !1844
@.str.2 = private unnamed_addr constant [46 x i8] c"\013Failed to find PCC channel for subspace %d\0A\00", align 1, !dbg !1861
@.str.3 = private unnamed_addr constant [47 x i8] c"\013This channel-%d does not support interrupt.\0A\00", align 1, !dbg !1866
@.str.4 = private unnamed_addr constant [48 x i8] c"\013Failed to ioremap PCC comm region mem for %d\0A\00", align 1, !dbg !1871
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1876
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1881
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !1889

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_init_pcc() #0 section ".init.text" align 16 !dbg !1903 {
entry:
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1906
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1905, metadata !DIExpression()), !dbg !1907
  %call = call i32 @acpi_install_address_space_handler(ptr noundef inttoptr (i64 -1 to ptr), i8 noundef zeroext 10, ptr noundef @acpi_pcc_address_space_handler, ptr noundef @acpi_pcc_address_space_setup, ptr noundef @pcc_ctx) #16, !dbg !1908
  store i32 %call, ptr %status, align 4, !dbg !1909
  %0 = load i32, ptr %status, align 4, !dbg !1910
  %tobool = icmp ne i32 %0, 0, !dbg !1910
  br i1 %tobool, label %if.then, label %if.end, !dbg !1912

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1913

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1915

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1915

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #17, !dbg !1913
  store i32 %call1, ptr %tmp, align 4, !dbg !1915
  %1 = load i32, ptr %tmp, align 4, !dbg !1913
  br label %if.end, !dbg !1917

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1918
  ret void, !dbg !1918
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1919 dso_local i32 @acpi_install_address_space_handler(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pcc_address_space_handler(i32 noundef %function, i64 noundef %addr, i32 noundef %bits, ptr noundef %value, ptr noundef %handler_context, ptr noundef %region_context) #4 align 16 !dbg !1930 {
entry:
  %retval = alloca i32, align 4
  %function.addr = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %data = alloca ptr, align 8
  %usecs_lat = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !1936, metadata !DIExpression()), !dbg !1945
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1937, metadata !DIExpression()), !dbg !1946
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1938, metadata !DIExpression()), !dbg !1947
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1939, metadata !DIExpression()), !dbg !1948
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !1940, metadata !DIExpression()), !dbg !1949
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !1941, metadata !DIExpression()), !dbg !1950
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !1951
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1942, metadata !DIExpression()), !dbg !1952
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !1953
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1943, metadata !DIExpression()), !dbg !1954
  %0 = load ptr, ptr %region_context.addr, align 8, !dbg !1955
  store ptr %0, ptr %data, align 8, !dbg !1954
  call void @llvm.lifetime.start.p0(i64 8, ptr %usecs_lat) #15, !dbg !1956
  call void @llvm.dbg.declare(metadata ptr %usecs_lat, metadata !1944, metadata !DIExpression()), !dbg !1957
  %1 = load ptr, ptr %data, align 8, !dbg !1958
  %done = getelementptr inbounds %struct.pcc_data, ptr %1, i32 0, i32 2, !dbg !1959
  call void @reinit_completion(ptr noundef %done) #16, !dbg !1960
  %2 = load ptr, ptr %data, align 8, !dbg !1961
  %pcc_comm_addr = getelementptr inbounds %struct.pcc_data, ptr %2, i32 0, i32 1, !dbg !1962
  %3 = load ptr, ptr %pcc_comm_addr, align 8, !dbg !1962
  %4 = load ptr, ptr %value.addr, align 8, !dbg !1963
  %5 = load ptr, ptr %data, align 8, !dbg !1964
  %ctx = getelementptr inbounds %struct.pcc_data, ptr %5, i32 0, i32 4, !dbg !1965
  %length = getelementptr inbounds %struct.acpi_pcc_info, ptr %ctx, i32 0, i32 1, !dbg !1966
  %6 = load i16, ptr %length, align 2, !dbg !1966
  %conv = zext i16 %6 to i64, !dbg !1964
  call void @memcpy_toio(ptr noundef %3, ptr noundef %4, i64 noundef %conv) #16, !dbg !1967
  %7 = load ptr, ptr %data, align 8, !dbg !1968
  %pcc_chan = getelementptr inbounds %struct.pcc_data, ptr %7, i32 0, i32 0, !dbg !1969
  %8 = load ptr, ptr %pcc_chan, align 8, !dbg !1969
  %mchan = getelementptr inbounds %struct.pcc_mbox_chan, ptr %8, i32 0, i32 0, !dbg !1970
  %9 = load ptr, ptr %mchan, align 8, !dbg !1970
  %call = call i32 @mbox_send_message(ptr noundef %9, ptr noundef null) #16, !dbg !1971
  store i32 %call, ptr %ret, align 4, !dbg !1972
  %10 = load i32, ptr %ret, align 4, !dbg !1973
  %cmp = icmp slt i32 %10, 0, !dbg !1975
  br i1 %cmp, label %if.then, label %if.end, !dbg !1976

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1977

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %data, align 8, !dbg !1978
  %pcc_chan2 = getelementptr inbounds %struct.pcc_data, ptr %11, i32 0, i32 0, !dbg !1979
  %12 = load ptr, ptr %pcc_chan2, align 8, !dbg !1979
  %latency = getelementptr inbounds %struct.pcc_mbox_chan, ptr %12, i32 0, i32 4, !dbg !1980
  %13 = load i32, ptr %latency, align 8, !dbg !1980
  %conv3 = zext i32 %13 to i64, !dbg !1978
  %mul = mul i64 500, %conv3, !dbg !1981
  store i64 %mul, ptr %usecs_lat, align 8, !dbg !1982
  %14 = load ptr, ptr %data, align 8, !dbg !1983
  %done4 = getelementptr inbounds %struct.pcc_data, ptr %14, i32 0, i32 2, !dbg !1984
  %15 = load i64, ptr %usecs_lat, align 8, !dbg !1985
  %conv5 = trunc i64 %15 to i32, !dbg !1985
  %call6 = call i64 @usecs_to_jiffies(i32 noundef %conv5) #16, !dbg !1986
  %call7 = call i64 @wait_for_completion_timeout(ptr noundef %done4, i64 noundef %call6) #16, !dbg !1987
  %conv8 = trunc i64 %call7 to i32, !dbg !1987
  store i32 %conv8, ptr %ret, align 4, !dbg !1988
  %16 = load i32, ptr %ret, align 4, !dbg !1989
  %cmp9 = icmp eq i32 %16, 0, !dbg !1991
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !1992

if.then11:                                        ; preds = %if.end
  br label %do.body, !dbg !1993

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !1996

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1996

do.end:                                           ; preds = %do.cond
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #17, !dbg !1993
  store i32 %call12, ptr %tmp, align 4, !dbg !1996
  %17 = load i32, ptr %tmp, align 4, !dbg !1993
  store i32 17, ptr %retval, align 4, !dbg !1998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1998

if.end13:                                         ; preds = %if.end
  %18 = load ptr, ptr %data, align 8, !dbg !1999
  %pcc_chan14 = getelementptr inbounds %struct.pcc_data, ptr %18, i32 0, i32 0, !dbg !2000
  %19 = load ptr, ptr %pcc_chan14, align 8, !dbg !2000
  %mchan15 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %19, i32 0, i32 0, !dbg !2001
  %20 = load ptr, ptr %mchan15, align 8, !dbg !2001
  %21 = load i32, ptr %ret, align 4, !dbg !2002
  call void @mbox_chan_txdone(ptr noundef %20, i32 noundef %21) #16, !dbg !2003
  %22 = load ptr, ptr %value.addr, align 8, !dbg !2004
  %23 = load ptr, ptr %data, align 8, !dbg !2005
  %pcc_comm_addr16 = getelementptr inbounds %struct.pcc_data, ptr %23, i32 0, i32 1, !dbg !2006
  %24 = load ptr, ptr %pcc_comm_addr16, align 8, !dbg !2006
  %25 = load ptr, ptr %data, align 8, !dbg !2007
  %ctx17 = getelementptr inbounds %struct.pcc_data, ptr %25, i32 0, i32 4, !dbg !2008
  %length18 = getelementptr inbounds %struct.acpi_pcc_info, ptr %ctx17, i32 0, i32 1, !dbg !2009
  %26 = load i16, ptr %length18, align 2, !dbg !2009
  %conv19 = zext i16 %26 to i64, !dbg !2007
  call void @memcpy_fromio(ptr noundef %22, ptr noundef %24, i64 noundef %conv19) #16, !dbg !2010
  store i32 0, ptr %retval, align 4, !dbg !2011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2011

cleanup:                                          ; preds = %if.end13, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %usecs_lat) #15, !dbg !2012
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !2012
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2012
  %27 = load i32, ptr %retval, align 4, !dbg !2012
  ret i32 %27, !dbg !2012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pcc_address_space_setup(ptr noundef %region_handle, i32 noundef %function, ptr noundef %handler_context, ptr noundef %region_context) #4 align 16 !dbg !1846 {
entry:
  %retval = alloca i32, align 4
  %region_handle.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %pcc_chan = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  store ptr %region_handle, ptr %region_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_handle.addr, metadata !1851, metadata !DIExpression()), !dbg !2013
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !1852, metadata !DIExpression()), !dbg !2014
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !1853, metadata !DIExpression()), !dbg !2015
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !1854, metadata !DIExpression()), !dbg !2016
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !2017
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1855, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #15, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1856, metadata !DIExpression()), !dbg !2020
  %0 = load ptr, ptr %handler_context.addr, align 8, !dbg !2021
  store ptr %0, ptr %ctx, align 8, !dbg !2020
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcc_chan) #15, !dbg !2022
  call void @llvm.dbg.declare(metadata ptr %pcc_chan, metadata !1858, metadata !DIExpression()), !dbg !2023
  %call = call noalias ptr @kzalloc(i64 noundef 120, i32 noundef 3264) #18, !dbg !2024
  store ptr %call, ptr %data, align 8, !dbg !2025
  %1 = load ptr, ptr %data, align 8, !dbg !2026
  %tobool = icmp ne ptr %1, null, !dbg !2026
  br i1 %tobool, label %if.end, label %if.then, !dbg !2028

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !2029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2029

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %data, align 8, !dbg !2030
  %cl = getelementptr inbounds %struct.pcc_data, ptr %2, i32 0, i32 3, !dbg !2031
  %rx_callback = getelementptr inbounds %struct.mbox_client, ptr %cl, i32 0, i32 4, !dbg !2032
  store ptr @pcc_rx_callback, ptr %rx_callback, align 8, !dbg !2033
  %3 = load ptr, ptr %data, align 8, !dbg !2034
  %cl1 = getelementptr inbounds %struct.pcc_data, ptr %3, i32 0, i32 3, !dbg !2035
  %knows_txdone = getelementptr inbounds %struct.mbox_client, ptr %cl1, i32 0, i32 3, !dbg !2036
  store i8 1, ptr %knows_txdone, align 8, !dbg !2037
  %4 = load ptr, ptr %ctx, align 8, !dbg !2038
  %length = getelementptr inbounds %struct.acpi_pcc_info, ptr %4, i32 0, i32 1, !dbg !2039
  %5 = load i16, ptr %length, align 2, !dbg !2039
  %6 = load ptr, ptr %data, align 8, !dbg !2040
  %ctx2 = getelementptr inbounds %struct.pcc_data, ptr %6, i32 0, i32 4, !dbg !2041
  %length3 = getelementptr inbounds %struct.acpi_pcc_info, ptr %ctx2, i32 0, i32 1, !dbg !2042
  store i16 %5, ptr %length3, align 2, !dbg !2043
  %7 = load ptr, ptr %ctx, align 8, !dbg !2044
  %subspace_id = getelementptr inbounds %struct.acpi_pcc_info, ptr %7, i32 0, i32 0, !dbg !2045
  %8 = load i8, ptr %subspace_id, align 8, !dbg !2045
  %9 = load ptr, ptr %data, align 8, !dbg !2046
  %ctx4 = getelementptr inbounds %struct.pcc_data, ptr %9, i32 0, i32 4, !dbg !2047
  %subspace_id5 = getelementptr inbounds %struct.acpi_pcc_info, ptr %ctx4, i32 0, i32 0, !dbg !2048
  store i8 %8, ptr %subspace_id5, align 8, !dbg !2049
  %10 = load ptr, ptr %ctx, align 8, !dbg !2050
  %internal_buffer = getelementptr inbounds %struct.acpi_pcc_info, ptr %10, i32 0, i32 2, !dbg !2051
  %11 = load ptr, ptr %internal_buffer, align 8, !dbg !2051
  %12 = load ptr, ptr %data, align 8, !dbg !2052
  %ctx6 = getelementptr inbounds %struct.pcc_data, ptr %12, i32 0, i32 4, !dbg !2053
  %internal_buffer7 = getelementptr inbounds %struct.acpi_pcc_info, ptr %ctx6, i32 0, i32 2, !dbg !2054
  store ptr %11, ptr %internal_buffer7, align 8, !dbg !2055
  %13 = load ptr, ptr %data, align 8, !dbg !2056
  %done = getelementptr inbounds %struct.pcc_data, ptr %13, i32 0, i32 2, !dbg !2057
  call void @init_completion(ptr noundef %done) #16, !dbg !2058
  %14 = load ptr, ptr %data, align 8, !dbg !2059
  %cl8 = getelementptr inbounds %struct.pcc_data, ptr %14, i32 0, i32 3, !dbg !2060
  %15 = load ptr, ptr %ctx, align 8, !dbg !2061
  %subspace_id9 = getelementptr inbounds %struct.acpi_pcc_info, ptr %15, i32 0, i32 0, !dbg !2062
  %16 = load i8, ptr %subspace_id9, align 8, !dbg !2062
  %conv = zext i8 %16 to i32, !dbg !2061
  %call10 = call ptr @pcc_mbox_request_channel(ptr noundef %cl8, i32 noundef %conv) #16, !dbg !2063
  %17 = load ptr, ptr %data, align 8, !dbg !2064
  %pcc_chan11 = getelementptr inbounds %struct.pcc_data, ptr %17, i32 0, i32 0, !dbg !2065
  store ptr %call10, ptr %pcc_chan11, align 8, !dbg !2066
  %18 = load ptr, ptr %data, align 8, !dbg !2067
  %pcc_chan12 = getelementptr inbounds %struct.pcc_data, ptr %18, i32 0, i32 0, !dbg !2069
  %19 = load ptr, ptr %pcc_chan12, align 8, !dbg !2069
  %call13 = call zeroext i1 @IS_ERR(ptr noundef %19) #16, !dbg !2070
  br i1 %call13, label %if.then14, label %if.end18, !dbg !2071

if.then14:                                        ; preds = %if.end
  br label %do.body, !dbg !2072

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !2075

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2075

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %ctx, align 8, !dbg !2072
  %subspace_id15 = getelementptr inbounds %struct.acpi_pcc_info, ptr %20, i32 0, i32 0, !dbg !2072
  %21 = load i8, ptr %subspace_id15, align 8, !dbg !2072
  %conv16 = zext i8 %21 to i32, !dbg !2072
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %conv16) #17, !dbg !2072
  store i32 %call17, ptr %tmp, align 4, !dbg !2075
  %22 = load i32, ptr %tmp, align 4, !dbg !2072
  store i32 5, ptr @acpi_pcc_address_space_setup.ret, align 4, !dbg !2077
  br label %err_free_data, !dbg !2078

if.end18:                                         ; preds = %if.end
  %23 = load ptr, ptr %data, align 8, !dbg !2079
  %pcc_chan19 = getelementptr inbounds %struct.pcc_data, ptr %23, i32 0, i32 0, !dbg !2080
  %24 = load ptr, ptr %pcc_chan19, align 8, !dbg !2080
  store ptr %24, ptr %pcc_chan, align 8, !dbg !2081
  %25 = load ptr, ptr %pcc_chan, align 8, !dbg !2082
  %mchan = getelementptr inbounds %struct.pcc_mbox_chan, ptr %25, i32 0, i32 0, !dbg !2084
  %26 = load ptr, ptr %mchan, align 8, !dbg !2084
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %26, i32 0, i32 0, !dbg !2085
  %27 = load ptr, ptr %mbox, align 8, !dbg !2085
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %27, i32 0, i32 4, !dbg !2086
  %28 = load i8, ptr %txdone_irq, align 4, !dbg !2086, !range !2087, !noundef !364
  %tobool20 = trunc i8 %28 to i1, !dbg !2086
  br i1 %tobool20, label %if.end29, label %if.then21, !dbg !2088

if.then21:                                        ; preds = %if.end18
  br label %do.body22, !dbg !2089

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !2092

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2092

do.end24:                                         ; preds = %do.cond23
  %29 = load ptr, ptr %ctx, align 8, !dbg !2089
  %subspace_id26 = getelementptr inbounds %struct.acpi_pcc_info, ptr %29, i32 0, i32 0, !dbg !2089
  %30 = load i8, ptr %subspace_id26, align 8, !dbg !2089
  %conv27 = zext i8 %30 to i32, !dbg !2089
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %conv27) #17, !dbg !2089
  store i32 %call28, ptr %tmp25, align 4, !dbg !2092
  %31 = load i32, ptr %tmp25, align 4, !dbg !2089
  store i32 15, ptr @acpi_pcc_address_space_setup.ret, align 4, !dbg !2094
  br label %err_free_channel, !dbg !2095

if.end29:                                         ; preds = %if.end18
  %32 = load ptr, ptr %pcc_chan, align 8, !dbg !2096
  %shmem_base_addr = getelementptr inbounds %struct.pcc_mbox_chan, ptr %32, i32 0, i32 1, !dbg !2097
  %33 = load i64, ptr %shmem_base_addr, align 8, !dbg !2097
  %34 = load ptr, ptr %pcc_chan, align 8, !dbg !2098
  %shmem_size = getelementptr inbounds %struct.pcc_mbox_chan, ptr %34, i32 0, i32 3, !dbg !2099
  %35 = load i64, ptr %shmem_size, align 8, !dbg !2099
  %call30 = call ptr @acpi_os_ioremap(i64 noundef %33, i64 noundef %35) #16, !dbg !2100
  %36 = load ptr, ptr %data, align 8, !dbg !2101
  %pcc_comm_addr = getelementptr inbounds %struct.pcc_data, ptr %36, i32 0, i32 1, !dbg !2102
  store ptr %call30, ptr %pcc_comm_addr, align 8, !dbg !2103
  %37 = load ptr, ptr %data, align 8, !dbg !2104
  %pcc_comm_addr31 = getelementptr inbounds %struct.pcc_data, ptr %37, i32 0, i32 1, !dbg !2106
  %38 = load ptr, ptr %pcc_comm_addr31, align 8, !dbg !2106
  %tobool32 = icmp ne ptr %38, null, !dbg !2104
  br i1 %tobool32, label %if.end41, label %if.then33, !dbg !2107

if.then33:                                        ; preds = %if.end29
  br label %do.body34, !dbg !2108

do.body34:                                        ; preds = %if.then33
  br label %do.cond35, !dbg !2111

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2111

do.end36:                                         ; preds = %do.cond35
  %39 = load ptr, ptr %ctx, align 8, !dbg !2108
  %subspace_id38 = getelementptr inbounds %struct.acpi_pcc_info, ptr %39, i32 0, i32 0, !dbg !2108
  %40 = load i8, ptr %subspace_id38, align 8, !dbg !2108
  %conv39 = zext i8 %40 to i32, !dbg !2108
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %conv39) #17, !dbg !2108
  store i32 %call40, ptr %tmp37, align 4, !dbg !2111
  %41 = load i32, ptr %tmp37, align 4, !dbg !2108
  store i32 4, ptr @acpi_pcc_address_space_setup.ret, align 4, !dbg !2113
  br label %err_free_channel, !dbg !2114

if.end41:                                         ; preds = %if.end29
  %42 = load ptr, ptr %data, align 8, !dbg !2115
  %43 = load ptr, ptr %region_context.addr, align 8, !dbg !2116
  store ptr %42, ptr %43, align 8, !dbg !2117
  store i32 0, ptr %retval, align 4, !dbg !2118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2118

err_free_channel:                                 ; preds = %do.end36, %do.end24
  call void @llvm.dbg.label(metadata !1859), !dbg !2119
  %44 = load ptr, ptr %data, align 8, !dbg !2120
  %pcc_chan42 = getelementptr inbounds %struct.pcc_data, ptr %44, i32 0, i32 0, !dbg !2121
  %45 = load ptr, ptr %pcc_chan42, align 8, !dbg !2121
  call void @pcc_mbox_free_channel(ptr noundef %45) #16, !dbg !2122
  br label %err_free_data, !dbg !2122

err_free_data:                                    ; preds = %err_free_channel, %do.end
  call void @llvm.dbg.label(metadata !1860), !dbg !2123
  %46 = load ptr, ptr %data, align 8, !dbg !2124
  call void @kfree(ptr noundef %46) #16, !dbg !2125
  %47 = load i32, ptr @acpi_pcc_address_space_setup.ret, align 4, !dbg !2126
  store i32 %47, ptr %retval, align 4, !dbg !2127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2127

cleanup:                                          ; preds = %err_free_data, %if.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcc_chan) #15, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #15, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !2128
  %48 = load i32, ptr %retval, align 4, !dbg !2128
  ret i32 %48, !dbg !2128
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2129 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reinit_completion(ptr noundef %x) #6 align 16 !dbg !2133 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2135, metadata !DIExpression()), !dbg !2136
  %0 = load ptr, ptr %x.addr, align 8, !dbg !2137
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !2138
  store i32 0, ptr %done, align 8, !dbg !2139
  ret void, !dbg !2140
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2141 dso_local void @memcpy_toio(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2147 dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2148 dso_local i64 @wait_for_completion_timeout(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @usecs_to_jiffies(i32 noundef %u) #7 align 16 !dbg !2151 {
entry:
  %retval = alloca i64, align 8
  %u.addr = alloca i32, align 4
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !2157, metadata !DIExpression()), !dbg !2158
  %0 = load i32, ptr %u.addr, align 4, !dbg !2159
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2161
  br i1 %1, label %if.then, label %if.else, !dbg !2162

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %u.addr, align 4, !dbg !2163
  %call = call i32 @jiffies_to_usecs(i64 noundef 4611686018427387902) #16, !dbg !2166
  %cmp = icmp ugt i32 %2, %call, !dbg !2167
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2168

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !2169
  br label %return, !dbg !2169

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %u.addr, align 4, !dbg !2170
  %call2 = call i64 @_usecs_to_jiffies(i32 noundef %3) #16, !dbg !2171
  store i64 %call2, ptr %retval, align 8, !dbg !2172
  br label %return, !dbg !2172

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %u.addr, align 4, !dbg !2173
  %call3 = call i64 @__usecs_to_jiffies(i32 noundef %4) #16, !dbg !2175
  store i64 %call3, ptr %retval, align 8, !dbg !2176
  br label %return, !dbg !2176

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !2177
  ret i64 %5, !dbg !2177
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2178 dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2181 dso_local void @memcpy_fromio(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2186 dso_local i32 @jiffies_to_usecs(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_usecs_to_jiffies(i32 noundef %u) #6 align 16 !dbg !2190 {
entry:
  %u.addr = alloca i32, align 4
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !2192, metadata !DIExpression()), !dbg !2193
  %0 = load i32, ptr %u.addr, align 4, !dbg !2194
  %conv = zext i32 %0 to i64, !dbg !2194
  %add = add i64 %conv, 1000, !dbg !2195
  %sub = sub i64 %add, 1, !dbg !2196
  %div = sdiv i64 %sub, 1000, !dbg !2197
  ret i64 %div, !dbg !2198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2199 dso_local i64 @__usecs_to_jiffies(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !2200 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2204, metadata !DIExpression()), !dbg !2206
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2205, metadata !DIExpression()), !dbg !2207
  %0 = load i64, ptr %size.addr, align 8, !dbg !2208
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2209
  %or = or i32 %1, 256, !dbg !2210
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !2211
  ret ptr %call, !dbg !2212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcc_rx_callback(ptr noundef %cl, ptr noundef %m) #4 align 16 !dbg !2213 {
entry:
  %cl.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %cl, ptr %cl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cl.addr, metadata !2215, metadata !DIExpression()), !dbg !2220
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !2216, metadata !DIExpression()), !dbg !2221
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !2222
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2217, metadata !DIExpression()), !dbg !2223
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2224
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2218, metadata !DIExpression()), !dbg !2224
  %0 = load ptr, ptr %cl.addr, align 8, !dbg !2224
  store ptr %0, ptr %__mptr, align 8, !dbg !2224
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2224
  %add.ptr = getelementptr i8, ptr %1, i64 -48, !dbg !2224
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2225
  %2 = load ptr, ptr %tmp, align 8, !dbg !2224
  store ptr %2, ptr %data, align 8, !dbg !2223
  %3 = load ptr, ptr %data, align 8, !dbg !2226
  %done = getelementptr inbounds %struct.pcc_data, ptr %3, i32 0, i32 2, !dbg !2227
  call void @complete(ptr noundef %done) #16, !dbg !2228
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !2229
  ret void, !dbg !2229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #6 align 16 !dbg !1883 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1887, metadata !DIExpression()), !dbg !2230
  %0 = load ptr, ptr %x.addr, align 8, !dbg !2231
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !2232
  store i32 0, ptr %done, align 8, !dbg !2233
  br label %do.body, !dbg !2234

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !2235
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !2235
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.6, ptr noundef @init_completion.__key) #16, !dbg !2235
  br label %do.end, !dbg !2235

do.end:                                           ; preds = %do.body
  ret void, !dbg !2237
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2238 dso_local ptr @pcc_mbox_request_channel(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !2241 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2246, metadata !DIExpression()), !dbg !2247
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2248
  %1 = ptrtoint ptr %0 to i64, !dbg !2248
  %2 = inttoptr i64 %1 to ptr, !dbg !2248
  %3 = ptrtoint ptr %2 to i64, !dbg !2248
  %cmp = icmp uge i64 %3, -4095, !dbg !2248
  %lnot = xor i1 %cmp, true, !dbg !2248
  %lnot1 = xor i1 %lnot, true, !dbg !2248
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2248
  %conv = sext i32 %lnot.ext to i64, !dbg !2248
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2248
  %tobool = icmp ne i64 %expval, 0, !dbg !2248
  ret i1 %tobool, !dbg !2249
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_ioremap(i64 noundef %phys, i64 noundef %size) #6 align 16 !dbg !2250 {
entry:
  %phys.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !2255, metadata !DIExpression()), !dbg !2257
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2256, metadata !DIExpression()), !dbg !2258
  %0 = load i64, ptr %phys.addr, align 8, !dbg !2259
  %1 = load i64, ptr %size.addr, align 8, !dbg !2260
  %call = call ptr @ioremap_cache(i64 noundef %0, i64 noundef %1) #16, !dbg !2261
  ret ptr %call, !dbg !2262
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2263 dso_local void @pcc_mbox_free_channel(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2266 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !2269 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2271, metadata !DIExpression()), !dbg !2276
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2272, metadata !DIExpression()), !dbg !2277
  %0 = load i64, ptr %size.addr, align 8, !dbg !2278
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2279
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2280

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2281
  %tobool = icmp ne i64 %2, 0, !dbg !2281
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2282

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2273, metadata !DIExpression()), !dbg !2284
  %3 = load i64, ptr %size.addr, align 8, !dbg !2285
  %cmp = icmp ugt i64 %3, 8192, !dbg !2287
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2288

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2289
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2290
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !2291
  store ptr %call, ptr %retval, align 8, !dbg !2292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2292

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2293
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2293
  store i32 %call2, ptr %index, align 4, !dbg !2294
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2295
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2296
  %9 = ptrtoint ptr %8 to i64, !dbg !2296
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2297
  %idxprom = zext i32 %call3 to i64, !dbg !2298
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2298
  %10 = load i32, ptr %index, align 4, !dbg !2299
  %idxprom4 = zext i32 %10 to i64, !dbg !2298
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2298
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2298
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2300
  %13 = load i64, ptr %size.addr, align 8, !dbg !2301
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !2302
  store ptr %call6, ptr %retval, align 8, !dbg !2303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2303

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !2304
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2305
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2306
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !2307
  store ptr %call8, ptr %retval, align 8, !dbg !2308
  br label %return, !dbg !2308

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2309
  ret ptr %16, !dbg !2309
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2310 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !2311 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2315, metadata !DIExpression()), !dbg !2317
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2316, metadata !DIExpression()), !dbg !2318
  %0 = load i64, ptr %size.addr, align 8, !dbg !2319
  %tobool = icmp ne i64 %0, 0, !dbg !2319
  br i1 %tobool, label %if.end, label %if.then, !dbg !2321

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2322
  br label %return, !dbg !2322

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2323
  %cmp = icmp ule i64 %1, 8, !dbg !2325
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2326

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2327
  br label %return, !dbg !2327

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2328
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2330
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2331

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2332
  %cmp4 = icmp ule i64 %3, 96, !dbg !2333
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2334

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2335
  br label %return, !dbg !2335

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2336
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2338
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2339

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2340
  %cmp9 = icmp ule i64 %5, 192, !dbg !2341
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2342

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2343
  br label %return, !dbg !2343

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2344
  %cmp12 = icmp ule i64 %6, 8, !dbg !2346
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2347

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2348
  br label %return, !dbg !2348

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2349
  %cmp15 = icmp ule i64 %7, 16, !dbg !2351
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2352

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2353
  br label %return, !dbg !2353

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2354
  %cmp18 = icmp ule i64 %8, 32, !dbg !2356
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2357

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2358
  br label %return, !dbg !2358

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2359
  %cmp21 = icmp ule i64 %9, 64, !dbg !2361
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2362

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2363
  br label %return, !dbg !2363

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2364
  %cmp24 = icmp ule i64 %10, 128, !dbg !2366
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2367

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2368
  br label %return, !dbg !2368

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2369
  %cmp27 = icmp ule i64 %11, 256, !dbg !2371
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2372

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2373
  br label %return, !dbg !2373

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2374
  %cmp30 = icmp ule i64 %12, 512, !dbg !2376
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2377

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2378
  br label %return, !dbg !2378

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2379
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2381
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2382

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2383
  br label %return, !dbg !2383

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2384
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2386
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2387

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2388
  br label %return, !dbg !2388

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2389
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2391
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2392

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2393
  br label %return, !dbg !2393

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2394
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2396
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2397

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2398
  br label %return, !dbg !2398

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2399
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2401
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2402

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2403
  br label %return, !dbg !2403

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2404
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2406
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2407

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2408
  br label %return, !dbg !2408

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2409
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2411
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2412

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2413
  br label %return, !dbg !2413

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2414
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2416
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2417

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2418
  br label %return, !dbg !2418

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2419
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2421
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2422

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2423
  br label %return, !dbg !2423

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2424
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2426
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2427

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2428
  br label %return, !dbg !2428

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2429
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2431
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2432

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2433
  br label %return, !dbg !2433

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2434
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2436
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2437

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2438
  br label %return, !dbg !2438

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2439, !range !2087, !noundef !364
  %tobool69 = trunc i8 %25 to i1, !dbg !2439
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2441

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2442

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #20, !dbg !2443, !srcloc !2446
  unreachable, !dbg !2443

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2447

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2448

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2449

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2451

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2449

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #15, !dbg !2453, !srcloc !2455
  br label %do.end75, !dbg !2453

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2449

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2456
  br label %return, !dbg !2456

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2457
  ret i32 %26, !dbg !2457
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2458 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !2464 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2468, metadata !DIExpression()), !dbg !2470
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2469, metadata !DIExpression()), !dbg !2471
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2472
  %and = and i32 %0, 17, !dbg !2472
  %cmp = icmp eq i32 %and, 0, !dbg !2472
  %lnot = xor i1 %cmp, true, !dbg !2472
  %lnot1 = xor i1 %lnot, true, !dbg !2472
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2472
  %conv = sext i32 %lnot.ext to i64, !dbg !2472
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2472
  %tobool = icmp ne i64 %expval, 0, !dbg !2472
  br i1 %tobool, label %if.then, label %if.end, !dbg !2474

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2475
  br label %return, !dbg !2475

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2476
  %and2 = and i32 %1, 1, !dbg !2478
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2478
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2479

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2480
  br label %return, !dbg !2480

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2481
  br label %return, !dbg !2481

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2483
  ret i32 %2, !dbg !2483
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2484 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2485 dso_local void @__compiletime_assert_125() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2486 dso_local void @complete(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2487 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2492 dso_local ptr @ioremap_cache(i64 noundef, i64 noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901}
!llvm.ident = !{!1902}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pcc_ctx", scope: !2, file: !3, line: 40, type: !1827, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.acpi_pcc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22acpi_pcc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpi_pcc.ll drivers/acpi/acpi_pcc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !1833, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpi_pcc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f0c6108b824e2e9617d20cb98b92ff2")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !68, !73, !78, !84, !89}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !54, line: 30, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!57 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!58 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!62 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!63 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!64 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!65 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!66 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!67 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!71 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!72 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!76 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!77 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!81 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!82 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!83 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 10, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "false", value: 0)
!88 = !DIEnumerator(name: "true", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !90, line: 364, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!91 = !{!92, !93, !94, !95, !96, !97, !98}
!92 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!93 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!94 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!95 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!97 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!98 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!99 = !{!100, !102, !103, !106, !107, !112, !116, !119, !120, !105, !121}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !101, line: 424, baseType: !102)
!101 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !104, line: 42, baseType: !105)
!104 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!105 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !101, line: 127, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !108, line: 23, baseType: !109)
!108 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !110, line: 31, baseType: !111)
!110 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!111 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !101, line: 814, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !108, line: 17, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !110, line: 21, baseType: !115)
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !101, line: 421, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !108, line: 21, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !110, line: 27, baseType: !7)
!119 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !104, line: 154, baseType: !7)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcc_data", file: !3, line: 32, size: 960, elements: !123)
!123 = !{!124, !1823, !1824, !1825, !1826}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "pcc_chan", scope: !122, file: !3, line: 33, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcc_mbox_chan", file: !127, line: 12, size: 384, elements: !128)
!127 = !DIFile(filename: "./include/acpi/pcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f009a5c28c5aefa0582e3f03172744e")
!128 = !{!129, !1817, !1818, !1819, !1820, !1821, !1822}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mchan", scope: !126, file: !127, line: 13, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_chan", file: !132, line: 118, size: 1984, elements: !133)
!132 = !DIFile(filename: "./include/linux/mailbox_controller.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8463aab1790a791aaed8ad8f379f1af1")
!133 = !{!134, !1788, !1789, !1807, !1808, !1809, !1810, !1811, !1815, !1816}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mbox", scope: !131, file: !132, line: 119, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_controller", file: !132, line: 74, size: 1088, elements: !137)
!137 = !{!138, !1741, !1767, !1768, !1769, !1770, !1771, !1772, !1785, !1786, !1787}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !136, file: !132, line: 75, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !141)
!141 = !{!142, !800, !801, !804, !805, !858, !1324, !1325, !1326, !1327, !1328, !1335, !1505, !1518, !1528, !1532, !1534, !1535, !1536, !1540, !1547, !1548, !1551, !1554, !1680, !1681, !1682, !1685, !1686, !1687, !1688, !1718, !1719, !1720, !1723, !1726, !1735, !1736, !1737, !1738, !1739, !1740}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !140, file: !26, line: 706, baseType: !143, size: 512)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !144, line: 64, size: 512, elements: !145)
!144 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!145 = !{!146, !150, !156, !158, !242, !670, !785, !795, !796, !797, !798, !799}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 65, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !143, file: !144, line: 66, baseType: !151, size: 128, offset: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !104, line: 190, size: 128, elements: !152)
!152 = !{!153, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !104, line: 191, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !151, file: !104, line: 191, baseType: !154, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !144, line: 67, baseType: !157, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !143, file: !144, line: 68, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !144, line: 168, size: 768, elements: !161)
!161 = !{!162, !163, !201, !202}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !160, file: !144, line: 169, baseType: !151, size: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !160, file: !144, line: 170, baseType: !164, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !165, line: 29, baseType: !166)
!165 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !165, line: 17, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !165, line: 18, baseType: !169, size: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !165, line: 18, size: 32, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !169, file: !165, line: 19, baseType: !172, size: 32)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !173, line: 14, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !172, file: !173, line: 15, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !177, line: 44, baseType: !178)
!177 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !177, line: 14, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !177, line: 15, baseType: !181, size: 32)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !178, file: !177, line: 15, size: 32, elements: !182)
!182 = !{!183, !188, !193}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !177, line: 16, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !104, line: 174, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 172, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !185, file: !104, line: 173, baseType: !46, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !177, line: 24, baseType: !189, size: 16)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !181, file: !177, line: 24, size: 16, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !189, file: !177, line: 25, baseType: !113, size: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !189, file: !177, line: 26, baseType: !113, size: 8, offset: 8)
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !177, line: 28, baseType: !194, size: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !181, file: !177, line: 28, size: 32, elements: !195)
!195 = !{!196, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !194, file: !177, line: 29, baseType: !197, size: 16)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !108, line: 19, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !110, line: 24, baseType: !199)
!199 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !194, file: !177, line: 30, baseType: !197, size: 16, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !160, file: !144, line: 171, baseType: !143, size: 512, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !160, file: !144, line: 172, baseType: !203, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !144, line: 133, size: 192, elements: !206)
!206 = !{!207, !214, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !205, file: !144, line: 134, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!46, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !144, line: 135, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!147, !212}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !205, file: !144, line: 136, baseType: !220, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!46, !212, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !144, line: 125, size: 20736, elements: !226)
!226 = !{!227, !232, !236, !237, !241}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !225, file: !144, line: 126, baseType: !228, size: 192)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 192, elements: !230)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!230 = !{!231}
!231 = !DISubrange(count: 3)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !225, file: !144, line: 127, baseType: !233, size: 4096, offset: 192)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 4096, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !225, file: !144, line: 128, baseType: !46, size: 32, offset: 4288)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !225, file: !144, line: 129, baseType: !238, size: 16384, offset: 4320)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 16384, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 2048)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !225, file: !144, line: 130, baseType: !46, size: 32, offset: 20704)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !143, file: !144, line: 69, baseType: !243, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !144, line: 116, size: 384, elements: !246)
!246 = !{!247, !251, !278, !616, !647, !651}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !144, line: 117, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !157}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !245, file: !144, line: 118, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !255, line: 254, size: 128, elements: !256)
!255 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!256 = !{!257, !271}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !254, file: !255, line: 255, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !157, !265, !229}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !104, line: 66, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !263, line: 73, baseType: !264)
!263 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !263, line: 15, baseType: !119)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !255, line: 30, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !255, line: 31, baseType: !147, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !266, file: !255, line: 32, baseType: !270, size: 16, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !104, line: 24, baseType: !199)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !254, file: !255, line: 256, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!261, !157, !265, !147, !275}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 61, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !263, line: 72, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !263, line: 16, baseType: !105)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !245, file: !144, line: 119, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !255, line: 84, size: 320, elements: !283)
!283 = !{!284, !285, !289, !612, !614}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !255, line: 85, baseType: !147, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !282, file: !255, line: 86, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!270, !157, !265, !46}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !282, file: !255, line: 88, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!270, !157, !293, !46}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !255, line: 175, size: 512, elements: !295)
!295 = !{!296, !297, !298, !299, !306, !316, !317}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !294, file: !255, line: 176, baseType: !266, size: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !294, file: !255, line: 177, baseType: !275, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !294, file: !255, line: 178, baseType: !102, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !294, file: !255, line: 179, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !305, line: 351, flags: DIFlagFwdDecl)
!305 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!306 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !294, file: !255, line: 180, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!261, !310, !157, !293, !229, !313, !275}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !312, line: 537, flags: DIFlagFwdDecl)
!312 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !104, line: 52, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !263, line: 88, baseType: !315)
!315 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !294, file: !255, line: 182, baseType: !307, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !294, file: !255, line: 184, baseType: !318, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!46, !310, !157, !293, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !323, line: 625, size: 1344, elements: !324)
!323 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!324 = !{!325, !342, !561, !567, !574, !575, !580, !583, !595, !596, !599, !603, !604, !605, !606, !607, !610}
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !323, line: 628, baseType: !326, size: 128)
!326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !323, line: 628, size: 128, elements: !327)
!327 = !{!328, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !323, line: 629, baseType: !329, size: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !323, line: 629, size: 128, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !329, file: !323, line: 631, baseType: !105, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !329, file: !323, line: 632, baseType: !105, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !326, file: !323, line: 635, baseType: !334, size: 128, align: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !104, line: 232, size: 128, align: 64, elements: !335)
!335 = !{!336, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !104, line: 233, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !334, file: !104, line: 234, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !337}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !322, file: !323, line: 639, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !323, line: 733, size: 10240, elements: !345)
!345 = !{!346, !557}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !323, line: 734, baseType: !347, size: 10240)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !323, line: 734, size: 10240, elements: !348)
!348 = !{!349, !353, !367, !371, !372, !373, !374, !375, !376, !384, !385, !386, !392, !393, !402, !403, !404, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !451, !465, !468, !523, !524, !525, !528, !531, !532, !535, !536, !537, !544, !545}
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !323, line: 739, baseType: !350, size: 512, align: 512)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !323, line: 739, size: 512, align: 512, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !350, file: !323, line: 747, baseType: !184, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !347, file: !323, line: 750, baseType: !354, size: 128, offset: 512)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !355, line: 218, size: 128, elements: !356)
!355 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!356 = !{!357, !365, !366}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !355, line: 219, baseType: !358, size: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 219, size: 32, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !358, file: !355, line: 220, baseType: !164, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !358, file: !355, line: 221, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !355, line: 197, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 197, elements: !364)
!364 = !{}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !354, file: !355, line: 223, baseType: !7, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !354, file: !355, line: 224, baseType: !102, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !347, file: !323, line: 752, baseType: !368, size: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!105, !310, !105, !105, !105, !105}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !347, file: !323, line: 756, baseType: !105, size: 64, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !347, file: !323, line: 757, baseType: !105, size: 64, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !347, file: !323, line: 760, baseType: !105, size: 64, offset: 832)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !347, file: !323, line: 761, baseType: !105, size: 64, offset: 896)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !347, file: !323, line: 763, baseType: !105, size: 64, offset: 960)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !347, file: !323, line: 764, baseType: !377, size: 64, offset: 1024)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !312, line: 299, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 299, size: 64, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !379, file: !312, line: 299, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !383, line: 18, baseType: !105)
!383 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!384 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !347, file: !323, line: 773, baseType: !184, size: 32, offset: 1088)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !347, file: !323, line: 785, baseType: !184, size: 32, offset: 1120)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !347, file: !323, line: 795, baseType: !387, size: 64, offset: 1152)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !323, line: 726, size: 128, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !388, file: !323, line: 727, baseType: !107, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !388, file: !323, line: 728, baseType: !46, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !347, file: !323, line: 801, baseType: !105, size: 64, offset: 1216)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !347, file: !323, line: 804, baseType: !394, size: 64, offset: 1280)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !395, line: 13, baseType: !396)
!395 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !104, line: 181, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 179, size: 64, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !397, file: !104, line: 180, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !108, line: 22, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !110, line: 30, baseType: !315)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !347, file: !323, line: 806, baseType: !46, size: 32, offset: 1344)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !347, file: !323, line: 808, baseType: !164, size: 32, offset: 1376)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !347, file: !323, line: 823, baseType: !405, size: 320, offset: 1408)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !406, line: 48, size: 320, elements: !407)
!406 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!407 = !{!408, !409, !410, !415, !417}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !405, file: !406, line: 49, baseType: !394, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !405, file: !406, line: 55, baseType: !394, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !405, file: !406, line: 57, baseType: !411, size: 32, offset: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !412, line: 15, size: 32, elements: !413)
!412 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !411, file: !412, line: 20, baseType: !184, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !405, file: !406, line: 59, baseType: !416, size: 32, offset: 160)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !173, line: 23, baseType: !172)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !405, file: !406, line: 60, baseType: !151, size: 128, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !347, file: !323, line: 825, baseType: !151, size: 128, offset: 1728)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !347, file: !323, line: 845, baseType: !46, size: 32, offset: 1856)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !347, file: !323, line: 849, baseType: !105, size: 64, offset: 1920)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !347, file: !323, line: 850, baseType: !105, size: 64, offset: 1984)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !347, file: !323, line: 852, baseType: !105, size: 64, offset: 2048)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !347, file: !323, line: 853, baseType: !105, size: 64, offset: 2112)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !347, file: !323, line: 854, baseType: !396, size: 64, offset: 2176)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !347, file: !323, line: 855, baseType: !105, size: 64, offset: 2240)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !347, file: !323, line: 856, baseType: !105, size: 64, offset: 2304)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !347, file: !323, line: 857, baseType: !105, size: 64, offset: 2368)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !347, file: !323, line: 858, baseType: !105, size: 64, offset: 2432)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !347, file: !323, line: 865, baseType: !430, size: 32, offset: 2496)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !431, line: 69, baseType: !432)
!431 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !431, line: 64, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !432, file: !431, line: 65, baseType: !7, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !347, file: !323, line: 867, baseType: !164, size: 32, offset: 2528)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !347, file: !323, line: 869, baseType: !105, size: 64, offset: 2560)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !347, file: !323, line: 869, baseType: !105, size: 64, offset: 2624)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !347, file: !323, line: 869, baseType: !105, size: 64, offset: 2688)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !347, file: !323, line: 869, baseType: !105, size: 64, offset: 2752)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !347, file: !323, line: 870, baseType: !105, size: 64, offset: 2816)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !347, file: !323, line: 870, baseType: !105, size: 64, offset: 2880)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !347, file: !323, line: 870, baseType: !105, size: 64, offset: 2944)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !347, file: !323, line: 871, baseType: !105, size: 64, offset: 3008)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !347, file: !323, line: 871, baseType: !105, size: 64, offset: 3072)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !347, file: !323, line: 871, baseType: !105, size: 64, offset: 3136)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !347, file: !323, line: 871, baseType: !105, size: 64, offset: 3200)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !347, file: !323, line: 873, baseType: !448, size: 3328, offset: 3264)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 3328, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 52)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !347, file: !323, line: 875, baseType: !452, size: 1280, offset: 6592)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 1280, elements: !463)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !454, line: 22, size: 320, elements: !455)
!454 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!455 = !{!456, !457, !458, !459}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !453, file: !454, line: 23, baseType: !416, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !453, file: !454, line: 24, baseType: !400, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !453, file: !454, line: 26, baseType: !151, size: 128, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !453, file: !454, line: 28, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !108, line: 20, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !110, line: 26, baseType: !46)
!463 = !{!464}
!464 = !DISubrange(count: 4)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !347, file: !323, line: 877, baseType: !466, size: 64, offset: 7872)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !323, line: 877, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !347, file: !323, line: 880, baseType: !469, size: 1088, offset: 7936)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !470, line: 72, baseType: !471)
!470 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 23, size: 1088, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !480, !481, !489, !490, !517, !518, !519}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !471, file: !470, line: 28, baseType: !107, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !471, file: !470, line: 38, baseType: !396, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !471, file: !470, line: 40, baseType: !105, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !471, file: !470, line: 43, baseType: !405, size: 320, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !471, file: !470, line: 44, baseType: !478, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !470, line: 44, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !470, line: 48, baseType: !105, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !471, file: !470, line: 59, baseType: !482, size: 256, offset: 640)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !483, line: 66, size: 256, elements: !484)
!483 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !482, file: !483, line: 67, baseType: !394, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !482, file: !483, line: 68, baseType: !416, size: 32, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !482, file: !483, line: 70, baseType: !411, size: 32, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !482, file: !483, line: 72, baseType: !151, size: 128, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !471, file: !470, line: 60, baseType: !102, size: 64, offset: 896)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !471, file: !470, line: 61, baseType: !491, size: 64, offset: 960)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !494, line: 13, size: 1216, elements: !495)
!494 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!495 = !{!496, !497, !498, !499, !500, !501, !502, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !493, file: !494, line: 14, baseType: !102, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !493, file: !494, line: 15, baseType: !105, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !493, file: !494, line: 17, baseType: !105, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !493, file: !494, line: 17, baseType: !105, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !493, file: !494, line: 18, baseType: !105, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !493, file: !494, line: 18, baseType: !105, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !493, file: !494, line: 19, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !493, file: !494, line: 21, baseType: !119, size: 64, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !493, file: !494, line: 23, baseType: !119, size: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !493, file: !494, line: 24, baseType: !119, size: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !493, file: !494, line: 25, baseType: !119, size: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !493, file: !494, line: 26, baseType: !119, size: 64, offset: 704)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !493, file: !494, line: 27, baseType: !119, size: 64, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !493, file: !494, line: 28, baseType: !119, size: 64, offset: 832)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !493, file: !494, line: 29, baseType: !119, size: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !493, file: !494, line: 30, baseType: !119, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !493, file: !494, line: 31, baseType: !119, size: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !493, file: !494, line: 32, baseType: !119, size: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !493, file: !494, line: 33, baseType: !119, size: 64, offset: 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !471, file: !470, line: 63, baseType: !184, size: 32, offset: 1024)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !471, file: !470, line: 69, baseType: !197, size: 16, offset: 1056)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !471, file: !470, line: 70, baseType: !520, size: 16, offset: 1072)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !108, line: 18, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !110, line: 23, baseType: !522)
!522 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !323, line: 882, baseType: !105, size: 64, offset: 9024)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !347, file: !323, line: 885, baseType: !164, size: 32, offset: 9088)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !347, file: !323, line: 886, baseType: !526, size: 64, offset: 9152)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !323, line: 732, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !347, file: !323, line: 901, baseType: !529, size: 64, offset: 9216)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !323, line: 901, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !347, file: !323, line: 904, baseType: !310, size: 64, offset: 9280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !347, file: !323, line: 906, baseType: !533, size: 64, offset: 9344)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !323, line: 906, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !347, file: !323, line: 930, baseType: !184, size: 32, offset: 9408)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !347, file: !323, line: 933, baseType: !184, size: 32, offset: 9440)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !347, file: !323, line: 935, baseType: !538, size: 64, offset: 9472)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !539, line: 103, size: 64, elements: !540)
!539 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !538, file: !539, line: 104, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !539, line: 101, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !347, file: !323, line: 940, baseType: !394, size: 64, offset: 9536)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !347, file: !323, line: 942, baseType: !546, size: 256, offset: 9600)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !547, line: 98, size: 256, elements: !548)
!547 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!548 = !{!549, !550, !551}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !546, file: !547, line: 99, baseType: !394, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !546, file: !547, line: 100, baseType: !151, size: 128, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !546, file: !547, line: 101, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !547, line: 21, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !344, file: !323, line: 986, baseType: !558, offset: 10240)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: -1)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !322, file: !323, line: 640, baseType: !562, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !312, line: 297, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !312, line: 297, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !563, file: !312, line: 297, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !383, line: 19, baseType: !105)
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !323, line: 646, baseType: !568, size: 64, offset: 256)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !323, line: 646, size: 64, elements: !569)
!569 = !{!570, !573}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !568, file: !323, line: 647, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !323, line: 542, baseType: !105)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !568, file: !323, line: 648, baseType: !572, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !322, file: !323, line: 666, baseType: !46, size: 32, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !322, file: !323, line: 667, baseType: !576, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !323, line: 579, size: 320, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !577, file: !323, line: 580, baseType: !405, size: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !322, file: !323, line: 670, baseType: !581, size: 8, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !104, line: 35, baseType: !582)
!582 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !322, file: !323, line: 681, baseType: !584, size: 256, offset: 512)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !323, line: 678, size: 256, elements: !585)
!585 = !{!586, !594}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !584, file: !323, line: 679, baseType: !587, size: 192, align: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !588, line: 5, size: 192, align: 64, elements: !589)
!588 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!589 = !{!590, !591, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !587, file: !588, line: 6, baseType: !105, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !587, file: !588, line: 7, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !587, file: !588, line: 8, baseType: !592, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !584, file: !323, line: 680, baseType: !105, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !322, file: !323, line: 689, baseType: !151, size: 128, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !322, file: !323, line: 691, baseType: !597, size: 64, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !323, line: 691, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !322, file: !323, line: 694, baseType: !600, size: 64, offset: 960)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !323, line: 694, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !322, file: !323, line: 697, baseType: !105, size: 64, offset: 1024)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !322, file: !323, line: 699, baseType: !310, size: 64, offset: 1088)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !322, file: !323, line: 700, baseType: !102, size: 64, offset: 1152)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !322, file: !323, line: 711, baseType: !394, size: 64, offset: 1216)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !322, file: !323, line: 717, baseType: !608, size: 64, offset: 1280)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !323, line: 717, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !322, file: !323, line: 722, baseType: !611, offset: 1344)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !323, line: 570, elements: !364)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !282, file: !255, line: 90, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !282, file: !255, line: 91, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !245, file: !144, line: 120, baseType: !617, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!620, !212}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !623)
!623 = !{!624, !625, !629, !633, !639, !643}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !6, line: 40, baseType: !5, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !622, file: !6, line: 41, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!581}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !622, file: !6, line: 42, baseType: !630, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!102}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !622, file: !6, line: 43, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!503, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !622, file: !6, line: 44, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!503}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !622, file: !6, line: 45, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !102}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !245, file: !144, line: 121, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!503, !212}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !245, file: !144, line: 122, baseType: !652, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !212, !655, !663}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !657, line: 23, baseType: !658)
!657 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !657, line: 21, size: 32, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !658, file: !657, line: 22, baseType: !661, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !104, line: 37, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !263, line: 49, baseType: !7)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !657, line: 28, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !657, line: 26, size: 32, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !665, file: !657, line: 27, baseType: !668, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !104, line: 38, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !263, line: 50, baseType: !7)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !143, file: !144, line: 70, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !673, line: 190, size: 1152, elements: !674)
!673 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !777, !778, !779, !780, !781, !784}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !672, file: !673, line: 191, baseType: !184, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !672, file: !673, line: 192, baseType: !184, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !672, file: !673, line: 202, baseType: !671, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !672, file: !673, line: 203, baseType: !147, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !672, file: !673, line: 205, baseType: !587, size: 192, align: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !672, file: !673, line: 207, baseType: !503, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !672, file: !673, line: 208, baseType: !7, size: 32, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 209, baseType: !683, size: 256, offset: 512)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 209, size: 256, elements: !684)
!684 = !{!685, !697, !701}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !683, file: !673, line: 210, baseType: !686, size: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !673, line: 153, size: 256, elements: !687)
!687 = !{!688, !689, !693, !696}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !686, file: !673, line: 154, baseType: !105, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !686, file: !673, line: 156, baseType: !690, size: 64, offset: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !588, line: 12, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !690, file: !588, line: 13, baseType: !592, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !686, file: !673, line: 162, baseType: !694, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !673, line: 162, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !686, file: !673, line: 167, baseType: !105, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !683, file: !673, line: 211, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !673, line: 170, size: 64, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !698, file: !673, line: 171, baseType: !671, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !683, file: !673, line: 212, baseType: !702, size: 256)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !673, line: 174, size: 256, elements: !703)
!703 = !{!704, !772, !775, !776}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !702, file: !673, line: 175, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !673, line: 271, size: 768, elements: !708)
!708 = !{!709, !732, !736, !740, !745, !749, !753, !757, !758, !759, !760, !768}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !707, file: !673, line: 276, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!46, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !673, line: 251, size: 1216, elements: !715)
!715 = !{!716, !717, !718, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !714, file: !673, line: 253, baseType: !671, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !714, file: !673, line: 254, baseType: !310, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !714, file: !673, line: 255, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !721, line: 66, flags: DIFlagFwdDecl)
!721 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!722 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !714, file: !673, line: 256, baseType: !102, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !714, file: !673, line: 259, baseType: !482, size: 256, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !714, file: !673, line: 260, baseType: !482, size: 256, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !714, file: !673, line: 261, baseType: !46, size: 32, offset: 768)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !714, file: !673, line: 262, baseType: !151, size: 128, offset: 832)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !714, file: !673, line: 263, baseType: !229, size: 64, offset: 960)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !714, file: !673, line: 265, baseType: !275, size: 64, offset: 1024)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !714, file: !673, line: 266, baseType: !581, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !714, file: !673, line: 267, baseType: !581, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !714, file: !673, line: 268, baseType: !600, size: 64, offset: 1152)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !707, file: !673, line: 277, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !713}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !707, file: !673, line: 290, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!46, !719, !102}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !707, file: !673, line: 292, baseType: !741, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!102, !719, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !707, file: !673, line: 293, baseType: !746, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!102, !719, !102, !744}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !707, file: !673, line: 294, baseType: !750, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !719, !102}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !707, file: !673, line: 296, baseType: !754, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!261, !713, !229, !275, !313}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !707, file: !673, line: 306, baseType: !275, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !707, file: !673, line: 313, baseType: !581, size: 8, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !707, file: !673, line: 314, baseType: !754, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !707, file: !673, line: 317, baseType: !761, size: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!764, !713, !766}
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !765, line: 59, baseType: !7)
!765 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !673, line: 31, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !707, file: !673, line: 320, baseType: !769, size: 64, offset: 704)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!46, !713, !321}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !702, file: !673, line: 176, baseType: !773, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !673, line: 35, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !702, file: !673, line: 177, baseType: !313, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !702, file: !673, line: 178, baseType: !671, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !672, file: !673, line: 215, baseType: !102, size: 64, offset: 768)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !672, file: !673, line: 221, baseType: !107, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !673, line: 223, baseType: !199, size: 16, offset: 896)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !672, file: !673, line: 224, baseType: !270, size: 16, offset: 912)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !672, file: !673, line: 225, baseType: !782, size: 64, offset: 960)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !673, line: 36, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !672, file: !673, line: 227, baseType: !334, size: 128, align: 64, offset: 1024)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !143, file: !144, line: 71, baseType: !786, size: 32, offset: 448)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !787, line: 19, size: 32, elements: !788)
!787 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !786, file: !787, line: 20, baseType: !790, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !791, line: 113, baseType: !792)
!791 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !791, line: 111, size: 32, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !792, file: !791, line: 112, baseType: !184, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !143, file: !144, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !143, file: !144, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !143, file: !144, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !143, file: !144, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !143, file: !144, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !140, file: !26, line: 707, baseType: !139, size: 64, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !140, file: !26, line: 709, baseType: !802, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !140, file: !26, line: 711, baseType: !147, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !26, line: 712, baseType: !806, size: 64, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !809)
!809 = !{!810, !811, !812, !818, !823, !827}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !808, file: !26, line: 90, baseType: !147, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !808, file: !26, line: 91, baseType: !279, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !808, file: !26, line: 92, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!46, !816, !224}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !808, file: !26, line: 93, baseType: !819, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!229, !816, !822, !655, !663}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !808, file: !26, line: 95, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !139}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !808, file: !26, line: 97, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !831)
!831 = !{!832, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !830, file: !38, line: 287, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!46, !139}
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
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !140, file: !26, line: 714, baseType: !859, size: 64, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !862, line: 80, size: 1344, elements: !863)
!862 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!863 = !{!864, !865, !866, !867, !868, !869, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1323}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !862, line: 81, baseType: !147, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !861, file: !862, line: 82, baseType: !147, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !861, file: !862, line: 83, baseType: !279, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !861, file: !862, line: 84, baseType: !279, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !861, file: !862, line: 85, baseType: !279, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !861, file: !862, line: 87, baseType: !870, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!46, !139, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !875)
!875 = !{!876, !877, !878, !1254, !1255, !1256, !1257, !1273, !1286, !1287, !1288, !1289, !1290, !1298, !1299, !1300, !1301, !1302, !1303}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !874, file: !20, line: 97, baseType: !147, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !874, file: !20, line: 98, baseType: !859, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !874, file: !20, line: 100, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !881)
!881 = !{!882, !883, !884, !888, !909, !935, !936, !937, !938, !942, !945, !946, !947, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1010, !1014, !1034, !1052, !1053, !1054, !1055, !1064, !1087, !1088, !1091, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1105, !1106, !1212, !1220, !1221, !1222, !1224, !1228, !1229, !1233, !1234, !1235, !1236, !1238, !1239, !1240, !1247, !1248, !1249, !1253}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !880, file: !13, line: 403, baseType: !12, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !880, file: !13, line: 406, baseType: !151, size: 128, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !880, file: !13, line: 409, baseType: !885, size: 448, offset: 192)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 448, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 56)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !880, file: !13, line: 417, baseType: !889, size: 768, offset: 640)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !890)
!890 = !{!891, !892, !893, !894, !897}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !889, file: !13, line: 46, baseType: !143, size: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !889, file: !13, line: 47, baseType: !879, size: 64, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !889, file: !13, line: 48, baseType: !157, size: 64, offset: 576)
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
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !904, file: !905, line: 44, baseType: !416, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !904, file: !905, line: 45, baseType: !151, size: 128, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !880, file: !13, line: 418, baseType: !910, size: 64, offset: 1408)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !912)
!912 = !{!913, !914, !919, !923, !927, !931}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !911, file: !13, line: 54, baseType: !266, size: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !911, file: !13, line: 55, baseType: !915, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!261, !910, !918, !229}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !911, file: !13, line: 57, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!261, !910, !918, !147, !275}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !911, file: !13, line: 59, baseType: !924, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !879, !147}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !911, file: !13, line: 60, baseType: !928, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!46, !879}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !911, file: !13, line: 61, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !879}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !880, file: !13, line: 419, baseType: !147, size: 64, offset: 1472)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !880, file: !13, line: 420, baseType: !147, size: 64, offset: 1536)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !880, file: !13, line: 421, baseType: !157, size: 64, offset: 1600)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !880, file: !13, line: 424, baseType: !939, size: 64, offset: 1664)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !880, file: !13, line: 425, baseType: !943, size: 64, offset: 1728)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !880, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !880, file: !13, line: 435, baseType: !482, size: 256, offset: 1856)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !880, file: !13, line: 437, baseType: !948, size: 64, offset: 2112)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !950, line: 69, size: 320, elements: !951)
!950 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!951 = !{!952, !953, !954, !971, !973, !977, !978}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !949, file: !950, line: 70, baseType: !147, size: 64)
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
!963 = !{!46, !147, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !957, file: !950, line: 53, baseType: !967, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!46, !229, !964}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !957, file: !950, line: 55, baseType: !644, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !949, file: !950, line: 73, baseType: !972, size: 16, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !949, file: !950, line: 74, baseType: !974, size: 8, offset: 208)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !108, line: 16, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !110, line: 20, baseType: !976)
!976 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !950, line: 75, baseType: !113, size: 8, offset: 216)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !950, line: 76, baseType: !979, size: 64, offset: 256)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !950, line: 76, size: 64, elements: !980)
!980 = !{!981, !982, !989}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !979, file: !950, line: 77, baseType: !102, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !979, file: !950, line: 78, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !950, line: 86, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !985, file: !950, line: 87, baseType: !7, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !985, file: !950, line: 88, baseType: !229, size: 64, offset: 64)
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
!999 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !992, file: !950, line: 98, baseType: !102, size: 64, offset: 192)
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
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 4032, elements: !1032)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1017)
!1017 = !{!1018, !1019, !1020}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1016, file: !13, line: 363, baseType: !102, size: 64)
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
!1032 = !{!1033}
!1033 = !DISubrange(count: 7)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !880, file: !13, line: 463, baseType: !1035, size: 192, offset: 6592)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1036, line: 8, size: 192, elements: !1037)
!1036 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1037 = !{!1038, !1039, !1041}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1035, file: !1036, line: 10, baseType: !7, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1035, file: !1036, line: 11, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1035, file: !1036, line: 12, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1044, line: 59, size: 48, elements: !1045)
!1044 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1043, file: !1044, line: 60, baseType: !520, size: 16)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1043, file: !1044, line: 61, baseType: !520, size: 16, offset: 16)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1043, file: !1044, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1043, file: !1044, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1043, file: !1044, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1043, file: !1044, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !880, file: !13, line: 465, baseType: !105, size: 64, offset: 6784)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !880, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !880, file: !13, line: 470, baseType: !151, size: 128, offset: 6912)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !880, file: !13, line: 471, baseType: !1056, size: 64, offset: 7040)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1058, line: 33, size: 96, elements: !1059)
!1058 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1059 = !{!1060, !1061, !1062, !1063}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1057, file: !1058, line: 37, baseType: !46, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1057, file: !1058, line: 43, baseType: !46, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1057, file: !1058, line: 45, baseType: !199, size: 16, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1057, file: !1058, line: 47, baseType: !199, size: 16, offset: 80)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !880, file: !13, line: 476, baseType: !1065, size: 64, offset: 7104)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1067)
!1067 = !{!1068, !1084, !1085, !1086}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1066, file: !13, line: 379, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1071, line: 204, baseType: !1072)
!1071 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1071, line: 197, size: 192, elements: !1073)
!1073 = !{!1074, !1076, !1077, !1078, !1080, !1082}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1072, file: !1071, line: 198, baseType: !1075, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1071, line: 21, baseType: !118)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1072, file: !1071, line: 199, baseType: !115, size: 8, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1072, file: !1071, line: 200, baseType: !115, size: 8, offset: 40)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1072, file: !1071, line: 201, baseType: !1079, size: 16, offset: 48)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1071, line: 17, baseType: !198)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1072, file: !1071, line: 202, baseType: !1081, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1071, line: 16, baseType: !109)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1072, file: !1071, line: 203, baseType: !1083, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1071, line: 22, baseType: !109)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1066, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1066, file: !13, line: 381, baseType: !229, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1066, file: !13, line: 382, baseType: !229, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !880, file: !13, line: 477, baseType: !1066, size: 256, offset: 7168)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !880, file: !13, line: 480, baseType: !1089, size: 64, offset: 7424)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !880, file: !13, line: 483, baseType: !1092, size: 64, offset: 7488)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !880, file: !13, line: 488, baseType: !229, size: 64, offset: 7552)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !880, file: !13, line: 492, baseType: !102, size: 64, offset: 7616)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !880, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !880, file: !13, line: 495, baseType: !102, size: 64, offset: 7744)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !880, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !880, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !880, file: !13, line: 500, baseType: !1101, size: 64, offset: 7872)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1103, line: 45, baseType: !1104)
!1103 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !880, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !880, file: !13, line: 504, baseType: !1107, size: 64, offset: 8000)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1110, line: 96, size: 192, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1111 = !{!1112, !1113, !1173, !1176}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1109, file: !1110, line: 97, baseType: !7, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1109, file: !1110, line: 98, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1110, line: 24, size: 3072, elements: !1116)
!1116 = !{!1117, !1119, !1120, !1121, !1122, !1136, !1137, !1138, !1139, !1157, !1158, !1159, !1170, !1171, !1172}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1115, file: !1110, line: 26, baseType: !1118, size: 128)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 128, elements: !1030)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1115, file: !1110, line: 27, baseType: !1118, size: 128, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1115, file: !1110, line: 28, baseType: !46, size: 32, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1115, file: !1110, line: 31, baseType: !164, size: 32, align: 512, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1115, file: !1110, line: 32, baseType: !1123, size: 960, offset: 576)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1124, line: 206, size: 960, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1125 = !{!1126, !1127, !1130, !1132, !1133, !1135}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1123, file: !1124, line: 207, baseType: !337, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1123, file: !1124, line: 208, baseType: !1128, size: 256, offset: 64)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1129, size: 256, elements: !463)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1123, file: !1124, line: 209, baseType: !1131, size: 256, offset: 320)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !463)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1123, file: !1124, line: 213, baseType: !119, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1123, file: !1124, line: 215, baseType: !1134, size: 256, offset: 640)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 256, elements: !463)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1123, file: !1124, line: 216, baseType: !113, size: 8, offset: 896)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1115, file: !1110, line: 33, baseType: !105, size: 64, offset: 1536)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1115, file: !1110, line: 34, baseType: !105, size: 64, offset: 1600)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1115, file: !1110, line: 35, baseType: !581, size: 8, offset: 1664)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1115, file: !1110, line: 36, baseType: !1140, size: 320, offset: 1728)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1141, line: 11, size: 320, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1142 = !{!1143, !1150, !1151, !1156}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1140, file: !1141, line: 16, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !104, line: 198, size: 128, elements: !1145)
!1145 = !{!1146, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1144, file: !104, line: 199, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1144, file: !104, line: 199, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1140, file: !1141, line: 17, baseType: !105, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1140, file: !1141, line: 18, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !1141, line: 19, baseType: !117, size: 32, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1115, file: !1110, line: 37, baseType: !546, size: 256, offset: 2048)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1115, file: !1110, line: 38, baseType: !334, size: 128, align: 64, offset: 2304)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1115, file: !1110, line: 39, baseType: !1160, size: 64, offset: 2432)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1110, line: 49, size: 768, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1161, file: !1110, line: 50, baseType: !164, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1161, file: !1110, line: 51, baseType: !1131, size: 256, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1161, file: !1110, line: 53, baseType: !1131, size: 256, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1161, file: !1110, line: 54, baseType: !105, size: 64, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1161, file: !1110, line: 55, baseType: !1160, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1161, file: !1110, line: 56, baseType: !46, size: 32, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1161, file: !1110, line: 57, baseType: !46, size: 32, offset: 736)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1115, file: !1110, line: 40, baseType: !105, size: 64, offset: 2496)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1115, file: !1110, line: 42, baseType: !46, size: 32, offset: 2560)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1115, file: !1110, line: 43, baseType: !1108, size: 64, offset: 2624)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1109, file: !1110, line: 99, baseType: !1174, offset: 128)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1175, line: 211, elements: !364)
!1175 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1109, file: !1110, line: 100, baseType: !1177, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1110, line: 63, size: 3008, elements: !1179)
!1179 = !{!1180, !1181, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1211}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1178, file: !1110, line: 64, baseType: !1160, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1178, file: !1110, line: 65, baseType: !1182, size: 192, offset: 64)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 192, elements: !230)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1178, file: !1110, line: 67, baseType: !46, size: 32, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1178, file: !1110, line: 68, baseType: !482, size: 256, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1178, file: !1110, line: 69, baseType: !164, size: 32, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1178, file: !1110, line: 70, baseType: !482, size: 256, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1178, file: !1110, line: 71, baseType: !105, size: 64, offset: 896)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1178, file: !1110, line: 72, baseType: !105, size: 64, offset: 960)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1178, file: !1110, line: 73, baseType: !105, size: 64, offset: 1024)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1178, file: !1110, line: 74, baseType: !105, size: 64, offset: 1088)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1178, file: !1110, line: 75, baseType: !105, size: 64, offset: 1152)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1178, file: !1110, line: 76, baseType: !105, size: 64, offset: 1216)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1178, file: !1110, line: 77, baseType: !105, size: 64, offset: 1280)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1178, file: !1110, line: 78, baseType: !105, size: 64, offset: 1344)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1178, file: !1110, line: 79, baseType: !581, size: 8, offset: 1408)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1178, file: !1110, line: 80, baseType: !105, size: 64, offset: 1472)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1178, file: !1110, line: 81, baseType: !482, size: 256, offset: 1536)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1178, file: !1110, line: 82, baseType: !899, size: 256, offset: 1792)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1178, file: !1110, line: 84, baseType: !184, size: 32, offset: 2048)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1178, file: !1110, line: 87, baseType: !105, size: 64, offset: 2112)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1178, file: !1110, line: 88, baseType: !105, size: 64, offset: 2176)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1178, file: !1110, line: 89, baseType: !1203, size: 704, offset: 2240)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !547, line: 111, size: 704, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1210}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1203, file: !547, line: 112, baseType: !546, size: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1203, file: !547, line: 113, baseType: !1140, size: 320, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1203, file: !547, line: 116, baseType: !1208, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !547, line: 18, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1203, file: !547, line: 117, baseType: !46, size: 32, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1178, file: !1110, line: 90, baseType: !1108, size: 64, offset: 2944)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !880, file: !13, line: 515, baseType: !1213, size: 64, offset: 8064)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1215, line: 117, size: 128, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1214, file: !1215, line: 118, baseType: !461, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1214, file: !1215, line: 119, baseType: !461, size: 32, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1214, file: !1215, line: 120, baseType: !119, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !880, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !880, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !880, file: !13, line: 520, baseType: !1223, size: 64, offset: 8192)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
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
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !880, file: !13, line: 533, baseType: !102, size: 64, offset: 8512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !880, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !880, file: !13, line: 535, baseType: !1237, size: 64, offset: 8640)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !880, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !880, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !880, file: !13, line: 540, baseType: !1241, size: 64, offset: 8768)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1243, line: 32, size: 64, elements: !1244)
!1243 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1242, file: !1243, line: 33, baseType: !461, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1242, file: !1243, line: 34, baseType: !461, size: 32, offset: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !880, file: !13, line: 563, baseType: !151, size: 128, offset: 8832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !880, file: !13, line: 565, baseType: !151, size: 128, offset: 8960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !880, file: !13, line: 568, baseType: !1250, size: 64, offset: 9088)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !880, file: !13, line: 570, baseType: !184, size: 32, offset: 9152)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !874, file: !20, line: 101, baseType: !147, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !874, file: !20, line: 103, baseType: !581, size: 8, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !874, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !874, file: !20, line: 106, baseType: !1258, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1261, line: 282, size: 1600, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1262 = !{!1263, !1267, !1268, !1272}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1260, file: !1261, line: 283, baseType: !1264, size: 256)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !1265)
!1265 = !{!1266}
!1266 = !DISubrange(count: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1260, file: !1261, line: 284, baseType: !1264, size: 256, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1260, file: !1261, line: 285, baseType: !1269, size: 1024, offset: 512)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !1270)
!1270 = !{!1271}
!1271 = !DISubrange(count: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1260, file: !1261, line: 286, baseType: !503, size: 64, offset: 1536)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !874, file: !20, line: 107, baseType: !1274, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1261, line: 217, size: 256, elements: !1277)
!1277 = !{!1278, !1282, !1284, !1285}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1276, file: !1261, line: 218, baseType: !1279, size: 128)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, elements: !1280)
!1280 = !{!1281}
!1281 = !DISubrange(count: 16)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1276, file: !1261, line: 219, baseType: !1283, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1261, line: 15, baseType: !105)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1276, file: !1261, line: 220, baseType: !118, size: 32, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1276, file: !1261, line: 221, baseType: !118, size: 32, offset: 224)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !874, file: !20, line: 109, baseType: !833, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !874, file: !20, line: 110, baseType: !824, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !874, file: !20, line: 111, baseType: !833, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !874, file: !20, line: 112, baseType: !824, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !874, file: !20, line: 113, baseType: !1291, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!46, !139, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1296)
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1295, file: !38, line: 59, baseType: !46, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !874, file: !20, line: 114, baseType: !833, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !874, file: !20, line: 115, baseType: !279, size: 64, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !874, file: !20, line: 116, baseType: !279, size: 64, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !874, file: !20, line: 118, baseType: !828, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !874, file: !20, line: 119, baseType: !824, size: 64, offset: 1024)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !874, file: !20, line: 121, baseType: !1304, size: 64, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !861, file: !862, line: 88, baseType: !813, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !861, file: !862, line: 89, baseType: !833, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !861, file: !862, line: 90, baseType: !824, size: 64, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !861, file: !862, line: 91, baseType: !824, size: 64, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !861, file: !862, line: 92, baseType: !824, size: 64, offset: 640)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !861, file: !862, line: 94, baseType: !833, size: 64, offset: 704)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !861, file: !862, line: 95, baseType: !833, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !861, file: !862, line: 97, baseType: !1291, size: 64, offset: 832)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !861, file: !862, line: 98, baseType: !833, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !861, file: !862, line: 100, baseType: !833, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !861, file: !862, line: 102, baseType: !833, size: 64, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !861, file: !862, line: 103, baseType: !824, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !861, file: !862, line: 105, baseType: !828, size: 64, offset: 1152)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !861, file: !862, line: 107, baseType: !1320, size: 64, offset: 1216)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !862, line: 107, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !861, file: !862, line: 109, baseType: !581, size: 8, offset: 1280)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !140, file: !26, line: 715, baseType: !873, size: 64, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !140, file: !26, line: 717, baseType: !102, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !140, file: !26, line: 719, baseType: !102, size: 64, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !140, file: !26, line: 721, baseType: !482, size: 256, offset: 1024)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !140, file: !26, line: 725, baseType: !1329, size: 448, offset: 1280)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1329, file: !26, line: 518, baseType: !151, size: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1329, file: !26, line: 519, baseType: !151, size: 128, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1329, file: !26, line: 520, baseType: !151, size: 128, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1329, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !140, file: !26, line: 726, baseType: !1336, size: 2496, offset: 1728)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1382, !1383, !1384, !1385, !1386, !1387, !1458, !1459, !1460, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1498, !1502}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1336, file: !38, line: 664, baseType: !1294, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1336, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1336, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1336, file: !38, line: 667, baseType: !581, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1336, file: !38, line: 668, baseType: !581, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1336, file: !38, line: 669, baseType: !581, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1336, file: !38, line: 670, baseType: !581, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1336, file: !38, line: 671, baseType: !581, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1336, file: !38, line: 672, baseType: !581, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1336, file: !38, line: 673, baseType: !581, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1336, file: !38, line: 674, baseType: !581, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1336, file: !38, line: 675, baseType: !117, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1336, file: !38, line: 676, baseType: !164, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1336, file: !38, line: 678, baseType: !151, size: 128, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1336, file: !38, line: 679, baseType: !899, size: 256, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1336, file: !38, line: 680, baseType: !1354, size: 64, offset: 512)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1356, line: 43, size: 1536, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1365, !1366, !1367, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1355, file: !1356, line: 44, baseType: !147, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1355, file: !1356, line: 45, baseType: !46, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1355, file: !1356, line: 46, baseType: !151, size: 128, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1355, file: !1356, line: 47, baseType: !164, size: 32, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1355, file: !1356, line: 48, baseType: !1363, size: 64, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1355, file: !1356, line: 49, baseType: !1140, size: 320, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1355, file: !1356, line: 50, baseType: !105, size: 64, offset: 704)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1355, file: !1356, line: 51, baseType: !1368, size: 64, offset: 768)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1369, line: 29, baseType: !400)
!1369 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1355, file: !1356, line: 52, baseType: !1368, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1355, file: !1356, line: 53, baseType: !1368, size: 64, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1355, file: !1356, line: 54, baseType: !1368, size: 64, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1355, file: !1356, line: 55, baseType: !1368, size: 64, offset: 1024)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1355, file: !1356, line: 56, baseType: !105, size: 64, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1355, file: !1356, line: 57, baseType: !105, size: 64, offset: 1152)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1355, file: !1356, line: 58, baseType: !105, size: 64, offset: 1216)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1355, file: !1356, line: 59, baseType: !105, size: 64, offset: 1280)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1355, file: !1356, line: 60, baseType: !105, size: 64, offset: 1344)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1355, file: !1356, line: 61, baseType: !139, size: 64, offset: 1408)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1355, file: !1356, line: 62, baseType: !581, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1355, file: !1356, line: 63, baseType: !581, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1336, file: !38, line: 681, baseType: !581, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1336, file: !38, line: 682, baseType: !581, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1336, file: !38, line: 683, baseType: !581, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1336, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1336, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1336, file: !38, line: 690, baseType: !1388, size: 512, offset: 640)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1389)
!1389 = !{!1390, !1396, !1397, !1402, !1454, !1455, !1456, !1457}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1388, file: !33, line: 119, baseType: !1391, size: 256)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1392, line: 9, size: 256, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1391, file: !1392, line: 10, baseType: !587, size: 192, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1391, file: !1392, line: 11, baseType: !1368, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1388, file: !33, line: 120, baseType: !1368, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1388, file: !33, line: 121, baseType: !1398, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!32, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1388, file: !33, line: 122, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1405)
!1405 = !{!1406, !1431, !1432, !1435, !1440, !1441, !1449, !1453}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1404, file: !33, line: 160, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1408, file: !33, line: 216, baseType: !416, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1408, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1408, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1408, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1408, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1408, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1408, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1408, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1408, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1408, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1408, file: !33, line: 227, baseType: !199, size: 16, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1408, file: !33, line: 228, baseType: !199, size: 16, offset: 208)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1408, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1408, file: !33, line: 235, baseType: !1368, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1408, file: !33, line: 236, baseType: !1401, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1408, file: !33, line: 237, baseType: !1368, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1408, file: !33, line: 238, baseType: !1401, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1408, file: !33, line: 239, baseType: !1428, size: 4096, align: 512, offset: 512)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 4096, align: 512, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 8)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1404, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1404, file: !33, line: 162, baseType: !1433, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !104, line: 32, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !263, line: 96, baseType: !46)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1404, file: !33, line: 163, baseType: !1436, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !431, line: 274, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !431, line: 274, size: 32, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1437, file: !431, line: 274, baseType: !430, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1404, file: !33, line: 164, baseType: !1401, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1404, file: !33, line: 165, baseType: !1442, size: 128, offset: 256)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1392, line: 14, size: 128, elements: !1443)
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1442, file: !1392, line: 15, baseType: !1445, size: 128)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !588, line: 26, size: 128, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1445, file: !588, line: 27, baseType: !690, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1445, file: !588, line: 28, baseType: !592, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1404, file: !33, line: 166, baseType: !1450, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1368}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1404, file: !33, line: 167, baseType: !1368, size: 64, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1388, file: !33, line: 123, baseType: !113, size: 8, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1388, file: !33, line: 124, baseType: !113, size: 8, offset: 456)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1388, file: !33, line: 125, baseType: !113, size: 8, offset: 464)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1388, file: !33, line: 126, baseType: !113, size: 8, offset: 472)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1336, file: !38, line: 691, baseType: !107, size: 64, offset: 1152)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1336, file: !38, line: 692, baseType: !546, size: 256, offset: 1216)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1336, file: !38, line: 693, baseType: !1461, size: 192, offset: 1472)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1462, line: 41, baseType: !1463)
!1462 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1462, line: 37, size: 192, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1463, file: !1462, line: 38, baseType: !164, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1463, file: !1462, line: 39, baseType: !151, size: 128, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1336, file: !38, line: 694, baseType: !1363, size: 64, offset: 1664)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1336, file: !38, line: 695, baseType: !184, size: 32, offset: 1728)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1336, file: !38, line: 696, baseType: !184, size: 32, offset: 1760)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1336, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1336, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1336, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1336, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1336, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1336, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1336, file: !38, line: 703, baseType: !581, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1336, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1336, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1336, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1336, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1336, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1336, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1336, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1336, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1336, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1336, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1336, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1336, file: !38, line: 715, baseType: !107, size: 64, offset: 2048)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1336, file: !38, line: 716, baseType: !107, size: 64, offset: 2112)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1336, file: !38, line: 717, baseType: !107, size: 64, offset: 2176)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1336, file: !38, line: 718, baseType: !107, size: 64, offset: 2240)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1336, file: !38, line: 720, baseType: !1493, size: 64, offset: 2304)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1494, file: !38, line: 633, baseType: !164, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1494, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1336, file: !38, line: 721, baseType: !1499, size: 64, offset: 2368)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !139, !461}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1336, file: !38, line: 722, baseType: !1503, size: 64, offset: 2432)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !140, file: !26, line: 727, baseType: !1506, size: 64, offset: 4224)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1515, !1516, !1517}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1507, file: !38, line: 743, baseType: !830, size: 1472)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1507, file: !38, line: 744, baseType: !833, size: 64, offset: 1472)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1507, file: !38, line: 745, baseType: !1512, size: 64, offset: 1536)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !139, !581}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1507, file: !38, line: 746, baseType: !833, size: 64, offset: 1600)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1507, file: !38, line: 747, baseType: !824, size: 64, offset: 1664)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1507, file: !38, line: 748, baseType: !824, size: 64, offset: 1728)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !140, file: !26, line: 736, baseType: !1519, size: 128, offset: 4288)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1520)
!1520 = !{!1521, !1525}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1519, file: !26, line: 531, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1524, line: 13, flags: DIFlagFwdDecl)
!1524 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1519, file: !26, line: 532, baseType: !1526, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !140, file: !26, line: 738, baseType: !1529, size: 64, offset: 4416)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1531)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !140, file: !26, line: 740, baseType: !1533, size: 64, offset: 4480)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !140, file: !26, line: 741, baseType: !107, size: 64, offset: 4544)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !140, file: !26, line: 746, baseType: !107, size: 64, offset: 4608)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !140, file: !26, line: 747, baseType: !1537, size: 64, offset: 4672)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !140, file: !26, line: 749, baseType: !1541, size: 64, offset: 4736)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1542, file: !26, line: 433, baseType: !7, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1542, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1542, file: !26, line: 435, baseType: !105, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !140, file: !26, line: 751, baseType: !151, size: 128, offset: 4800)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !140, file: !26, line: 762, baseType: !1549, size: 64, offset: 4928)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !140, file: !26, line: 770, baseType: !1552, offset: 4992)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1553, line: 5, elements: !364)
!1553 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !140, file: !26, line: 772, baseType: !1555, size: 64, offset: 4992)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1557, line: 48, size: 1152, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1558 = !{!1559, !1560, !1562, !1563, !1666, !1674, !1675, !1676, !1677, !1678, !1679}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1556, file: !1557, line: 49, baseType: !147, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1556, file: !1557, line: 50, baseType: !1561, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1557, line: 25, baseType: !117)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1556, file: !1557, line: 51, baseType: !147, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1556, file: !1557, line: 52, baseType: !1564, size: 512, offset: 192)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1565, line: 41, size: 512, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1566 = !{!1567, !1569, !1662, !1663, !1664, !1665}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1564, file: !1565, line: 42, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1564, file: !1565, line: 43, baseType: !1570, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1565, line: 125, size: 1408, elements: !1573)
!1573 = !{!1574, !1578, !1582, !1588, !1592, !1593, !1597, !1601, !1605, !1609, !1613, !1614, !1618, !1622, !1626, !1637, !1638, !1639, !1640, !1650, !1654, !1658}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1572, file: !1565, line: 126, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!1568, !1568}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1572, file: !1565, line: 127, baseType: !1579, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !1568}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1572, file: !1565, line: 128, baseType: !1583, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!581, !1586}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1572, file: !1565, line: 129, baseType: !1589, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!503, !1586, !816}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1572, file: !1565, line: 131, baseType: !1583, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1572, file: !1565, line: 133, baseType: !1594, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!53, !1586}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1572, file: !1565, line: 134, baseType: !1598, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!581, !1586, !147}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1572, file: !1565, line: 136, baseType: !1602, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!46, !1586, !147, !7, !102, !275}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1572, file: !1565, line: 141, baseType: !1606, size: 64, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!46, !1586, !147, !1223, !275}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1572, file: !1565, line: 144, baseType: !1610, size: 64, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!147, !1586}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1572, file: !1565, line: 145, baseType: !1610, size: 64, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1572, file: !1565, line: 146, baseType: !1615, size: 64, offset: 704)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1568, !1586}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1572, file: !1565, line: 148, baseType: !1619, size: 64, offset: 768)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!1568, !1586, !1568}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1572, file: !1565, line: 151, baseType: !1623, size: 64, offset: 832)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!1568, !1586, !147}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1572, file: !1565, line: 153, baseType: !1627, size: 64, offset: 896)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!46, !1586, !147, !147, !7, !7, !1630}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1565, line: 94, size: 640, elements: !1632)
!1632 = !{!1633, !1634, !1635}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1631, file: !1565, line: 95, baseType: !1568, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1631, file: !1565, line: 96, baseType: !7, size: 32, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1631, file: !1565, line: 97, baseType: !1636, size: 512, offset: 128)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 512, elements: !1429)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1572, file: !1565, line: 158, baseType: !1619, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1572, file: !1565, line: 161, baseType: !1615, size: 64, offset: 1024)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1572, file: !1565, line: 163, baseType: !1575, size: 64, offset: 1088)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1572, file: !1565, line: 164, baseType: !1641, size: 64, offset: 1152)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!46, !1586, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1565, line: 73, size: 128, elements: !1646)
!1646 = !{!1647, !1648, !1649}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1645, file: !1565, line: 74, baseType: !7, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1645, file: !1565, line: 75, baseType: !7, size: 32, offset: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1645, file: !1565, line: 76, baseType: !1586, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1572, file: !1565, line: 166, baseType: !1651, size: 64, offset: 1216)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!102, !1568, !46}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1572, file: !1565, line: 167, baseType: !1655, size: 64, offset: 1280)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!46, !1586, !7}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1572, file: !1565, line: 168, baseType: !1659, size: 64, offset: 1344)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!46, !1568}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1564, file: !1565, line: 44, baseType: !139, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1564, file: !1565, line: 45, baseType: !151, size: 128, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1564, file: !1565, line: 46, baseType: !151, size: 128, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1564, file: !1565, line: 47, baseType: !113, size: 8, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1556, file: !1557, line: 54, baseType: !1667, size: 64, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1557, line: 28, size: 256, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1668, file: !1557, line: 29, baseType: !229, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1668, file: !1557, line: 30, baseType: !46, size: 32, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1668, file: !1557, line: 31, baseType: !102, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1668, file: !1557, line: 32, baseType: !1667, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1556, file: !1557, line: 55, baseType: !1667, size: 64, offset: 768)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1556, file: !1557, line: 56, baseType: !1555, size: 64, offset: 832)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1556, file: !1557, line: 57, baseType: !1555, size: 64, offset: 896)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1556, file: !1557, line: 58, baseType: !1555, size: 64, offset: 960)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1556, file: !1557, line: 62, baseType: !105, size: 64, offset: 1024)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1556, file: !1557, line: 63, baseType: !102, size: 64, offset: 1088)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !140, file: !26, line: 773, baseType: !1568, size: 64, offset: 5056)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !140, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !140, file: !26, line: 778, baseType: !1683, size: 32, offset: 5152)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !104, line: 21, baseType: !1684)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !104, line: 18, baseType: !117)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !140, file: !26, line: 779, baseType: !117, size: 32, offset: 5184)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !140, file: !26, line: 781, baseType: !164, size: 32, offset: 5216)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !140, file: !26, line: 782, baseType: !151, size: 128, offset: 5248)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !140, file: !26, line: 784, baseType: !1689, size: 64, offset: 5376)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1692, line: 52, size: 768, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1702, !1706, !1707, !1708, !1709, !1713, !1717}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1691, file: !1692, line: 53, baseType: !147, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1691, file: !1692, line: 55, baseType: !279, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1691, file: !1692, line: 56, baseType: !279, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1691, file: !1692, line: 58, baseType: !813, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1691, file: !1692, line: 59, baseType: !1699, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!229, !816, !822}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1691, file: !1692, line: 61, baseType: !1703, size: 64, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !1689}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1691, file: !1692, line: 62, baseType: !824, size: 64, offset: 384)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1691, file: !1692, line: 64, baseType: !833, size: 64, offset: 448)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1691, file: !1692, line: 66, baseType: !620, size: 64, offset: 512)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1691, file: !1692, line: 67, baseType: !1710, size: 64, offset: 576)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!503, !816}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1691, file: !1692, line: 69, baseType: !1714, size: 64, offset: 640)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !816, !655, !663}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1691, file: !1692, line: 71, baseType: !828, size: 64, offset: 704)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !140, file: !26, line: 785, baseType: !279, size: 64, offset: 5440)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !140, file: !26, line: 787, baseType: !824, size: 64, offset: 5504)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !140, file: !26, line: 788, baseType: !1721, size: 64, offset: 5568)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !140, file: !26, line: 789, baseType: !1724, size: 64, offset: 5632)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !140, file: !26, line: 791, baseType: !1727, size: 64, offset: 5696)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1734}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1728, file: !26, line: 598, baseType: !59, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1728, file: !26, line: 599, baseType: !68, size: 32, offset: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1728, file: !26, line: 600, baseType: !73, size: 32, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1728, file: !26, line: 601, baseType: !581, size: 8, offset: 96)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1728, file: !26, line: 602, baseType: !581, size: 8, offset: 104)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !140, file: !26, line: 793, baseType: !78, size: 32, offset: 5760)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !140, file: !26, line: 795, baseType: !581, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !140, file: !26, line: 796, baseType: !581, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !140, file: !26, line: 797, baseType: !581, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !140, file: !26, line: 798, baseType: !581, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !140, file: !26, line: 799, baseType: !581, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !136, file: !132, line: 76, baseType: !1742, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_chan_ops", file: !132, line: 46, size: 384, elements: !1745)
!1745 = !{!1746, !1750, !1754, !1758, !1762, !1766}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !1744, file: !132, line: 47, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!46, !130, !102}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1744, file: !132, line: 48, baseType: !1751, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!46, !130, !105}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1744, file: !132, line: 49, baseType: !1755, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!46, !130}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1744, file: !132, line: 50, baseType: !1759, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !130}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "last_tx_done", scope: !1744, file: !132, line: 51, baseType: !1763, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!581, !130}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "peek_data", scope: !1744, file: !132, line: 52, baseType: !1763, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "chans", scope: !136, file: !132, line: 77, baseType: !130, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "num_chans", scope: !136, file: !132, line: 78, baseType: !46, size: 32, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "txdone_irq", scope: !136, file: !132, line: 79, baseType: !581, size: 8, offset: 224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "txdone_poll", scope: !136, file: !132, line: 80, baseType: !581, size: 8, offset: 232)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "txpoll_period", scope: !136, file: !132, line: 81, baseType: !7, size: 32, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !136, file: !132, line: 82, baseType: !1773, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!130, !135, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1778)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !1557, line: 71, size: 640, elements: !1779)
!1779 = !{!1780, !1781, !1782}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !1778, file: !1557, line: 72, baseType: !1555, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !1778, file: !1557, line: 73, baseType: !46, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1778, file: !1557, line: 74, baseType: !1783, size: 512, offset: 96)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1784, size: 512, elements: !1280)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !104, line: 110, baseType: !117)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "poll_hrt", scope: !136, file: !132, line: 85, baseType: !1388, size: 512, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "poll_hrt_lock", scope: !136, file: !132, line: 86, baseType: !164, size: 32, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !136, file: !132, line: 87, baseType: !151, size: 128, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "txdone_method", scope: !131, file: !132, line: 120, baseType: !7, size: 32, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !131, file: !132, line: 121, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_client", file: !1792, line: 29, size: 448, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/mailbox_client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b0c6a21194f80ebca47695debe622e85")
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1802, !1803}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1791, file: !1792, line: 30, baseType: !139, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "tx_block", scope: !1791, file: !1792, line: 31, baseType: !581, size: 8, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tout", scope: !1791, file: !1792, line: 32, baseType: !105, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "knows_txdone", scope: !1791, file: !1792, line: 33, baseType: !581, size: 8, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rx_callback", scope: !1791, file: !1792, line: 35, baseType: !1799, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1790, !102}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tx_prepare", scope: !1791, file: !1792, line: 36, baseType: !1799, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "tx_done", scope: !1791, file: !1792, line: 37, baseType: !1804, size: 64, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1790, !102, !46}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tx_complete", scope: !131, file: !132, line: 122, baseType: !899, size: 256, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "active_req", scope: !131, file: !132, line: 123, baseType: !102, size: 64, offset: 448)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count", scope: !131, file: !132, line: 124, baseType: !7, size: 32, offset: 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "msg_free", scope: !131, file: !132, line: 124, baseType: !7, size: 32, offset: 544)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "msg_data", scope: !131, file: !132, line: 125, baseType: !1812, size: 1280, offset: 576)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 1280, elements: !1813)
!1813 = !{!1814}
!1814 = !DISubrange(count: 20)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !131, file: !132, line: 126, baseType: !164, size: 32, offset: 1856)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "con_priv", scope: !131, file: !132, line: 127, baseType: !102, size: 64, offset: 1920)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "shmem_base_addr", scope: !126, file: !127, line: 14, baseType: !107, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "shmem", scope: !126, file: !127, line: 15, baseType: !102, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "shmem_size", scope: !126, file: !127, line: 16, baseType: !107, size: 64, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !126, file: !127, line: 17, baseType: !117, size: 32, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "max_access_rate", scope: !126, file: !127, line: 18, baseType: !117, size: 32, offset: 288)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "min_turnaround_time", scope: !126, file: !127, line: 19, baseType: !197, size: 16, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pcc_comm_addr", scope: !122, file: !3, line: 34, baseType: !102, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !122, file: !3, line: 35, baseType: !899, size: 256, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !122, file: !3, line: 36, baseType: !1791, size: 448, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !122, file: !3, line: 37, baseType: !1827, size: 128, offset: 832)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pcc_info", file: !101, line: 1112, size: 128, elements: !1828)
!1828 = !{!1829, !1830, !1831}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "subspace_id", scope: !1827, file: !101, line: 1113, baseType: !113, size: 8)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1827, file: !101, line: 1114, baseType: !197, size: 16, offset: 16)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "internal_buffer", scope: !1827, file: !101, line: 1115, baseType: !1832, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1833 = !{!1834, !0, !1839, !1844, !1861, !1866, !1871, !1876, !1881, !1889}
!1834 = !DIGlobalVariableExpression(var: !1835, expr: !DIExpression())
!1835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !1836, isLocal: true, isDefinition: true)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 400, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 50)
!1839 = !DIGlobalVariableExpression(var: !1840, expr: !DIExpression())
!1840 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !1841, isLocal: true, isDefinition: true)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 264, elements: !1842)
!1842 = !{!1843}
!1843 = !DISubrange(count: 33)
!1844 = !DIGlobalVariableExpression(var: !1845, expr: !DIExpression())
!1845 = distinct !DIGlobalVariable(name: "ret", scope: !1846, file: !3, line: 56, type: !116, isLocal: true, isDefinition: true)
!1846 = distinct !DISubprogram(name: "acpi_pcc_address_space_setup", scope: !3, file: !3, line: 50, type: !1847, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!116, !100, !117, !102, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856, !1858, !1859, !1860}
!1851 = !DILocalVariable(name: "region_handle", arg: 1, scope: !1846, file: !3, line: 50, type: !100)
!1852 = !DILocalVariable(name: "function", arg: 2, scope: !1846, file: !3, line: 50, type: !117)
!1853 = !DILocalVariable(name: "handler_context", arg: 3, scope: !1846, file: !3, line: 51, type: !102)
!1854 = !DILocalVariable(name: "region_context", arg: 4, scope: !1846, file: !3, line: 51, type: !1849)
!1855 = !DILocalVariable(name: "data", scope: !1846, file: !3, line: 53, type: !121)
!1856 = !DILocalVariable(name: "ctx", scope: !1846, file: !3, line: 54, type: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1858 = !DILocalVariable(name: "pcc_chan", scope: !1846, file: !3, line: 55, type: !125)
!1859 = !DILabel(scope: !1846, name: "err_free_channel", file: !3, line: 96)
!1860 = !DILabel(scope: !1846, name: "err_free_data", file: !3, line: 98)
!1861 = !DIGlobalVariableExpression(var: !1862, expr: !DIExpression())
!1862 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !1863, isLocal: true, isDefinition: true)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 368, elements: !1864)
!1864 = !{!1865}
!1865 = !DISubrange(count: 46)
!1866 = !DIGlobalVariableExpression(var: !1867, expr: !DIExpression())
!1867 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !1868, isLocal: true, isDefinition: true)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 376, elements: !1869)
!1869 = !{!1870}
!1870 = !DISubrange(count: 47)
!1871 = !DIGlobalVariableExpression(var: !1872, expr: !DIExpression())
!1872 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !1873, isLocal: true, isDefinition: true)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 384, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 48)
!1876 = !DIGlobalVariableExpression(var: !1877, expr: !DIExpression())
!1877 = distinct !DIGlobalVariable(scope: null, file: !90, line: 480, type: !1878, isLocal: true, isDefinition: true)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 168, elements: !1879)
!1879 = !{!1880}
!1880 = !DISubrange(count: 21)
!1881 = !DIGlobalVariableExpression(var: !1882, expr: !DIExpression())
!1882 = distinct !DIGlobalVariable(name: "__key", scope: !1883, file: !900, line: 87, type: !1888, isLocal: true, isDefinition: true)
!1883 = distinct !DISubprogram(name: "init_completion", scope: !900, file: !900, line: 84, type: !1884, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !898}
!1886 = !{!1887}
!1887 = !DILocalVariable(name: "x", arg: 1, scope: !1883, file: !900, line: 84, type: !898)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1175, line: 206, elements: !364)
!1889 = !DIGlobalVariableExpression(var: !1890, expr: !DIExpression())
!1890 = distinct !DIGlobalVariable(scope: null, file: !900, line: 87, type: !1891, isLocal: true, isDefinition: true)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 72, elements: !1892)
!1892 = !{!1893}
!1893 = !DISubrange(count: 9)
!1894 = !{i32 7, !"Dwarf Version", i32 5}
!1895 = !{i32 2, !"Debug Info Version", i32 3}
!1896 = !{i32 1, !"wchar_size", i32 2}
!1897 = !{i32 8, !"cf-protection-branch", i32 1}
!1898 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1899 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1900 = !{i32 1, !"Code Model", i32 2}
!1901 = !{i32 1, !"override-stack-alignment", i32 8}
!1902 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1903 = distinct !DISubprogram(name: "acpi_init_pcc", scope: !3, file: !3, line: 142, type: !1251, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1904)
!1904 = !{!1905}
!1905 = !DILocalVariable(name: "status", scope: !1903, file: !3, line: 144, type: !116)
!1906 = !DILocation(line: 144, column: 2, scope: !1903)
!1907 = !DILocation(line: 144, column: 14, scope: !1903)
!1908 = !DILocation(line: 146, column: 11, scope: !1903)
!1909 = !DILocation(line: 146, column: 9, scope: !1903)
!1910 = !DILocation(line: 151, column: 6, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 151, column: 6)
!1912 = !DILocation(line: 151, column: 6, scope: !1903)
!1913 = !DILocation(line: 152, column: 3, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 152, column: 3)
!1915 = !DILocation(line: 152, column: 3, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 152, column: 3)
!1917 = !DILocation(line: 152, column: 3, scope: !1911)
!1918 = !DILocation(line: 153, column: 1, scope: !1903)
!1919 = !DISubprogram(name: "acpi_install_address_space_handler", scope: !1920, file: !1920, line: 645, type: !1921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1920 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!116, !100, !112, !1923, !1928, !102}
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !101, line: 1093, baseType: !1924)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!116, !117, !1927, !117, !1533, !102, !102}
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !101, line: 129, baseType: !107)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !101, line: 1126, baseType: !1929)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1930 = distinct !DISubprogram(name: "acpi_pcc_address_space_handler", scope: !3, file: !3, line: 105, type: !1931, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1935)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!116, !117, !1927, !117, !1933, !102, !102}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_integer", file: !101, line: 472, baseType: !107)
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1936 = !DILocalVariable(name: "function", arg: 1, scope: !1930, file: !3, line: 105, type: !117)
!1937 = !DILocalVariable(name: "addr", arg: 2, scope: !1930, file: !3, line: 105, type: !1927)
!1938 = !DILocalVariable(name: "bits", arg: 3, scope: !1930, file: !3, line: 106, type: !117)
!1939 = !DILocalVariable(name: "value", arg: 4, scope: !1930, file: !3, line: 106, type: !1933)
!1940 = !DILocalVariable(name: "handler_context", arg: 5, scope: !1930, file: !3, line: 107, type: !102)
!1941 = !DILocalVariable(name: "region_context", arg: 6, scope: !1930, file: !3, line: 107, type: !102)
!1942 = !DILocalVariable(name: "ret", scope: !1930, file: !3, line: 109, type: !46)
!1943 = !DILocalVariable(name: "data", scope: !1930, file: !3, line: 110, type: !121)
!1944 = !DILocalVariable(name: "usecs_lat", scope: !1930, file: !3, line: 111, type: !107)
!1945 = !DILocation(line: 105, column: 36, scope: !1930)
!1946 = !DILocation(line: 105, column: 68, scope: !1930)
!1947 = !DILocation(line: 106, column: 15, scope: !1930)
!1948 = !DILocation(line: 106, column: 35, scope: !1930)
!1949 = !DILocation(line: 107, column: 17, scope: !1930)
!1950 = !DILocation(line: 107, column: 40, scope: !1930)
!1951 = !DILocation(line: 109, column: 2, scope: !1930)
!1952 = !DILocation(line: 109, column: 6, scope: !1930)
!1953 = !DILocation(line: 110, column: 2, scope: !1930)
!1954 = !DILocation(line: 110, column: 19, scope: !1930)
!1955 = !DILocation(line: 110, column: 26, scope: !1930)
!1956 = !DILocation(line: 111, column: 2, scope: !1930)
!1957 = !DILocation(line: 111, column: 6, scope: !1930)
!1958 = !DILocation(line: 113, column: 21, scope: !1930)
!1959 = !DILocation(line: 113, column: 27, scope: !1930)
!1960 = !DILocation(line: 113, column: 2, scope: !1930)
!1961 = !DILocation(line: 116, column: 14, scope: !1930)
!1962 = !DILocation(line: 116, column: 20, scope: !1930)
!1963 = !DILocation(line: 116, column: 43, scope: !1930)
!1964 = !DILocation(line: 116, column: 50, scope: !1930)
!1965 = !DILocation(line: 116, column: 56, scope: !1930)
!1966 = !DILocation(line: 116, column: 60, scope: !1930)
!1967 = !DILocation(line: 116, column: 2, scope: !1930)
!1968 = !DILocation(line: 118, column: 26, scope: !1930)
!1969 = !DILocation(line: 118, column: 32, scope: !1930)
!1970 = !DILocation(line: 118, column: 42, scope: !1930)
!1971 = !DILocation(line: 118, column: 8, scope: !1930)
!1972 = !DILocation(line: 118, column: 6, scope: !1930)
!1973 = !DILocation(line: 119, column: 6, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 119, column: 6)
!1975 = !DILocation(line: 119, column: 10, scope: !1974)
!1976 = !DILocation(line: 119, column: 6, scope: !1930)
!1977 = !DILocation(line: 120, column: 3, scope: !1974)
!1978 = !DILocation(line: 127, column: 41, scope: !1930)
!1979 = !DILocation(line: 127, column: 47, scope: !1930)
!1980 = !DILocation(line: 127, column: 57, scope: !1930)
!1981 = !DILocation(line: 127, column: 39, scope: !1930)
!1982 = !DILocation(line: 127, column: 12, scope: !1930)
!1983 = !DILocation(line: 128, column: 37, scope: !1930)
!1984 = !DILocation(line: 128, column: 43, scope: !1930)
!1985 = !DILocation(line: 129, column: 24, scope: !1930)
!1986 = !DILocation(line: 129, column: 7, scope: !1930)
!1987 = !DILocation(line: 128, column: 8, scope: !1930)
!1988 = !DILocation(line: 128, column: 6, scope: !1930)
!1989 = !DILocation(line: 130, column: 6, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 130, column: 6)
!1991 = !DILocation(line: 130, column: 10, scope: !1990)
!1992 = !DILocation(line: 130, column: 6, scope: !1930)
!1993 = !DILocation(line: 131, column: 3, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 131, column: 3)
!1995 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 130, column: 16)
!1996 = !DILocation(line: 131, column: 3, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 131, column: 3)
!1998 = !DILocation(line: 132, column: 3, scope: !1995)
!1999 = !DILocation(line: 135, column: 19, scope: !1930)
!2000 = !DILocation(line: 135, column: 25, scope: !1930)
!2001 = !DILocation(line: 135, column: 35, scope: !1930)
!2002 = !DILocation(line: 135, column: 42, scope: !1930)
!2003 = !DILocation(line: 135, column: 2, scope: !1930)
!2004 = !DILocation(line: 137, column: 16, scope: !1930)
!2005 = !DILocation(line: 137, column: 23, scope: !1930)
!2006 = !DILocation(line: 137, column: 29, scope: !1930)
!2007 = !DILocation(line: 137, column: 44, scope: !1930)
!2008 = !DILocation(line: 137, column: 50, scope: !1930)
!2009 = !DILocation(line: 137, column: 54, scope: !1930)
!2010 = !DILocation(line: 137, column: 2, scope: !1930)
!2011 = !DILocation(line: 139, column: 2, scope: !1930)
!2012 = !DILocation(line: 140, column: 1, scope: !1930)
!2013 = !DILocation(line: 50, column: 42, scope: !1846)
!2014 = !DILocation(line: 50, column: 61, scope: !1846)
!2015 = !DILocation(line: 51, column: 15, scope: !1846)
!2016 = !DILocation(line: 51, column: 40, scope: !1846)
!2017 = !DILocation(line: 53, column: 2, scope: !1846)
!2018 = !DILocation(line: 53, column: 19, scope: !1846)
!2019 = !DILocation(line: 54, column: 2, scope: !1846)
!2020 = !DILocation(line: 54, column: 24, scope: !1846)
!2021 = !DILocation(line: 54, column: 30, scope: !1846)
!2022 = !DILocation(line: 55, column: 2, scope: !1846)
!2023 = !DILocation(line: 55, column: 24, scope: !1846)
!2024 = !DILocation(line: 58, column: 9, scope: !1846)
!2025 = !DILocation(line: 58, column: 7, scope: !1846)
!2026 = !DILocation(line: 59, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 59, column: 6)
!2028 = !DILocation(line: 59, column: 6, scope: !1846)
!2029 = !DILocation(line: 60, column: 3, scope: !2027)
!2030 = !DILocation(line: 62, column: 2, scope: !1846)
!2031 = !DILocation(line: 62, column: 8, scope: !1846)
!2032 = !DILocation(line: 62, column: 11, scope: !1846)
!2033 = !DILocation(line: 62, column: 23, scope: !1846)
!2034 = !DILocation(line: 63, column: 2, scope: !1846)
!2035 = !DILocation(line: 63, column: 8, scope: !1846)
!2036 = !DILocation(line: 63, column: 11, scope: !1846)
!2037 = !DILocation(line: 63, column: 24, scope: !1846)
!2038 = !DILocation(line: 64, column: 21, scope: !1846)
!2039 = !DILocation(line: 64, column: 26, scope: !1846)
!2040 = !DILocation(line: 64, column: 2, scope: !1846)
!2041 = !DILocation(line: 64, column: 8, scope: !1846)
!2042 = !DILocation(line: 64, column: 12, scope: !1846)
!2043 = !DILocation(line: 64, column: 19, scope: !1846)
!2044 = !DILocation(line: 65, column: 26, scope: !1846)
!2045 = !DILocation(line: 65, column: 31, scope: !1846)
!2046 = !DILocation(line: 65, column: 2, scope: !1846)
!2047 = !DILocation(line: 65, column: 8, scope: !1846)
!2048 = !DILocation(line: 65, column: 12, scope: !1846)
!2049 = !DILocation(line: 65, column: 24, scope: !1846)
!2050 = !DILocation(line: 66, column: 30, scope: !1846)
!2051 = !DILocation(line: 66, column: 35, scope: !1846)
!2052 = !DILocation(line: 66, column: 2, scope: !1846)
!2053 = !DILocation(line: 66, column: 8, scope: !1846)
!2054 = !DILocation(line: 66, column: 12, scope: !1846)
!2055 = !DILocation(line: 66, column: 28, scope: !1846)
!2056 = !DILocation(line: 68, column: 19, scope: !1846)
!2057 = !DILocation(line: 68, column: 25, scope: !1846)
!2058 = !DILocation(line: 68, column: 2, scope: !1846)
!2059 = !DILocation(line: 69, column: 45, scope: !1846)
!2060 = !DILocation(line: 69, column: 51, scope: !1846)
!2061 = !DILocation(line: 69, column: 55, scope: !1846)
!2062 = !DILocation(line: 69, column: 60, scope: !1846)
!2063 = !DILocation(line: 69, column: 19, scope: !1846)
!2064 = !DILocation(line: 69, column: 2, scope: !1846)
!2065 = !DILocation(line: 69, column: 8, scope: !1846)
!2066 = !DILocation(line: 69, column: 17, scope: !1846)
!2067 = !DILocation(line: 70, column: 13, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 70, column: 6)
!2069 = !DILocation(line: 70, column: 19, scope: !2068)
!2070 = !DILocation(line: 70, column: 6, scope: !2068)
!2071 = !DILocation(line: 70, column: 6, scope: !1846)
!2072 = !DILocation(line: 71, column: 3, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 71, column: 3)
!2074 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 70, column: 30)
!2075 = !DILocation(line: 71, column: 3, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 71, column: 3)
!2077 = !DILocation(line: 73, column: 7, scope: !2074)
!2078 = !DILocation(line: 74, column: 3, scope: !2074)
!2079 = !DILocation(line: 77, column: 13, scope: !1846)
!2080 = !DILocation(line: 77, column: 19, scope: !1846)
!2081 = !DILocation(line: 77, column: 11, scope: !1846)
!2082 = !DILocation(line: 78, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 78, column: 6)
!2084 = !DILocation(line: 78, column: 17, scope: !2083)
!2085 = !DILocation(line: 78, column: 24, scope: !2083)
!2086 = !DILocation(line: 78, column: 30, scope: !2083)
!2087 = !{i8 0, i8 2}
!2088 = !DILocation(line: 78, column: 6, scope: !1846)
!2089 = !DILocation(line: 79, column: 3, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 79, column: 3)
!2091 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 78, column: 42)
!2092 = !DILocation(line: 79, column: 3, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 79, column: 3)
!2094 = !DILocation(line: 81, column: 7, scope: !2091)
!2095 = !DILocation(line: 82, column: 3, scope: !2091)
!2096 = !DILocation(line: 84, column: 40, scope: !1846)
!2097 = !DILocation(line: 84, column: 50, scope: !1846)
!2098 = !DILocation(line: 85, column: 12, scope: !1846)
!2099 = !DILocation(line: 85, column: 22, scope: !1846)
!2100 = !DILocation(line: 84, column: 24, scope: !1846)
!2101 = !DILocation(line: 84, column: 2, scope: !1846)
!2102 = !DILocation(line: 84, column: 8, scope: !1846)
!2103 = !DILocation(line: 84, column: 22, scope: !1846)
!2104 = !DILocation(line: 86, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 86, column: 6)
!2106 = !DILocation(line: 86, column: 13, scope: !2105)
!2107 = !DILocation(line: 86, column: 6, scope: !1846)
!2108 = !DILocation(line: 87, column: 3, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 87, column: 3)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 86, column: 28)
!2111 = !DILocation(line: 87, column: 3, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 87, column: 3)
!2113 = !DILocation(line: 89, column: 7, scope: !2110)
!2114 = !DILocation(line: 90, column: 3, scope: !2110)
!2115 = !DILocation(line: 93, column: 20, scope: !1846)
!2116 = !DILocation(line: 93, column: 3, scope: !1846)
!2117 = !DILocation(line: 93, column: 18, scope: !1846)
!2118 = !DILocation(line: 94, column: 2, scope: !1846)
!2119 = !DILocation(line: 96, column: 1, scope: !1846)
!2120 = !DILocation(line: 97, column: 24, scope: !1846)
!2121 = !DILocation(line: 97, column: 30, scope: !1846)
!2122 = !DILocation(line: 97, column: 2, scope: !1846)
!2123 = !DILocation(line: 98, column: 1, scope: !1846)
!2124 = !DILocation(line: 99, column: 8, scope: !1846)
!2125 = !DILocation(line: 99, column: 2, scope: !1846)
!2126 = !DILocation(line: 101, column: 9, scope: !1846)
!2127 = !DILocation(line: 101, column: 2, scope: !1846)
!2128 = !DILocation(line: 102, column: 1, scope: !1846)
!2129 = !DISubprogram(name: "_printk", scope: !2130, file: !2130, line: 153, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2130 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!46, !147, null}
!2133 = distinct !DISubprogram(name: "reinit_completion", scope: !900, file: !900, line: 97, type: !1884, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "x", arg: 1, scope: !2133, file: !900, line: 97, type: !898)
!2136 = !DILocation(line: 97, column: 57, scope: !2133)
!2137 = !DILocation(line: 99, column: 2, scope: !2133)
!2138 = !DILocation(line: 99, column: 5, scope: !2133)
!2139 = !DILocation(line: 99, column: 10, scope: !2133)
!2140 = !DILocation(line: 100, column: 1, scope: !2133)
!2141 = !DISubprogram(name: "memcpy_toio", scope: !2142, file: !2142, line: 205, type: !2143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2142 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !2145, !503, !275}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2147 = !DISubprogram(name: "mbox_send_message", scope: !1792, file: !1792, line: 44, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2148 = !DISubprogram(name: "wait_for_completion_timeout", scope: !900, file: !900, line: 107, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!105, !898, !105}
!2151 = distinct !DISubprogram(name: "usecs_to_jiffies", scope: !2152, file: !2152, line: 564, type: !2153, scopeLine: 565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2152 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!105, !2155}
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2156 = !{!2157}
!2157 = !DILocalVariable(name: "u", arg: 1, scope: !2151, file: !2152, line: 564, type: !2155)
!2158 = !DILocation(line: 564, column: 74, scope: !2151)
!2159 = !DILocation(line: 566, column: 27, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2151, file: !2152, line: 566, column: 6)
!2161 = !DILocation(line: 566, column: 6, scope: !2160)
!2162 = !DILocation(line: 566, column: 6, scope: !2151)
!2163 = !DILocation(line: 567, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !2152, line: 567, column: 7)
!2165 = distinct !DILexicalBlock(scope: !2160, file: !2152, line: 566, column: 31)
!2166 = !DILocation(line: 567, column: 11, scope: !2164)
!2167 = !DILocation(line: 567, column: 9, scope: !2164)
!2168 = !DILocation(line: 567, column: 7, scope: !2165)
!2169 = !DILocation(line: 568, column: 4, scope: !2164)
!2170 = !DILocation(line: 569, column: 28, scope: !2165)
!2171 = !DILocation(line: 569, column: 10, scope: !2165)
!2172 = !DILocation(line: 569, column: 3, scope: !2165)
!2173 = !DILocation(line: 571, column: 29, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2160, file: !2152, line: 570, column: 9)
!2175 = !DILocation(line: 571, column: 10, scope: !2174)
!2176 = !DILocation(line: 571, column: 3, scope: !2174)
!2177 = !DILocation(line: 573, column: 1, scope: !2151)
!2178 = !DISubprogram(name: "mbox_chan_txdone", scope: !132, file: !132, line: 133, type: !2179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !130, !46}
!2181 = !DISubprogram(name: "memcpy_fromio", scope: !2142, file: !2142, line: 204, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{null, !102, !2184, !275}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2146)
!2186 = !DISubprogram(name: "jiffies_to_usecs", scope: !2152, file: !2152, line: 435, type: !2187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!7, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!2190 = distinct !DISubprogram(name: "_usecs_to_jiffies", scope: !2152, file: !2152, line: 528, type: !2153, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2191)
!2191 = !{!2192}
!2192 = !DILocalVariable(name: "u", arg: 1, scope: !2190, file: !2152, line: 528, type: !2155)
!2193 = !DILocation(line: 528, column: 66, scope: !2190)
!2194 = !DILocation(line: 530, column: 10, scope: !2190)
!2195 = !DILocation(line: 530, column: 12, scope: !2190)
!2196 = !DILocation(line: 530, column: 34, scope: !2190)
!2197 = !DILocation(line: 530, column: 39, scope: !2190)
!2198 = !DILocation(line: 530, column: 2, scope: !2190)
!2199 = !DISubprogram(name: "__usecs_to_jiffies", scope: !2152, file: !2152, line: 526, type: !2153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2200 = distinct !DISubprogram(name: "kzalloc", scope: !90, file: !90, line: 719, type: !2201, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!102, !275, !120}
!2203 = !{!2204, !2205}
!2204 = !DILocalVariable(name: "size", arg: 1, scope: !2200, file: !90, line: 719, type: !275)
!2205 = !DILocalVariable(name: "flags", arg: 2, scope: !2200, file: !90, line: 719, type: !120)
!2206 = !DILocation(line: 719, column: 52, scope: !2200)
!2207 = !DILocation(line: 719, column: 64, scope: !2200)
!2208 = !DILocation(line: 721, column: 17, scope: !2200)
!2209 = !DILocation(line: 721, column: 23, scope: !2200)
!2210 = !DILocation(line: 721, column: 29, scope: !2200)
!2211 = !DILocation(line: 721, column: 9, scope: !2200)
!2212 = !DILocation(line: 721, column: 2, scope: !2200)
!2213 = distinct !DISubprogram(name: "pcc_rx_callback", scope: !3, file: !3, line: 42, type: !1800, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2214)
!2214 = !{!2215, !2216, !2217, !2218}
!2215 = !DILocalVariable(name: "cl", arg: 1, scope: !2213, file: !3, line: 42, type: !1790)
!2216 = !DILocalVariable(name: "m", arg: 2, scope: !2213, file: !3, line: 42, type: !102)
!2217 = !DILocalVariable(name: "data", scope: !2213, file: !3, line: 44, type: !121)
!2218 = !DILocalVariable(name: "__mptr", scope: !2219, file: !3, line: 44, type: !102)
!2219 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 44, column: 26)
!2220 = !DILocation(line: 42, column: 49, scope: !2213)
!2221 = !DILocation(line: 42, column: 59, scope: !2213)
!2222 = !DILocation(line: 44, column: 2, scope: !2213)
!2223 = !DILocation(line: 44, column: 19, scope: !2213)
!2224 = !DILocation(line: 44, column: 26, scope: !2219)
!2225 = !DILocation(line: 44, column: 26, scope: !2213)
!2226 = !DILocation(line: 46, column: 12, scope: !2213)
!2227 = !DILocation(line: 46, column: 18, scope: !2213)
!2228 = !DILocation(line: 46, column: 2, scope: !2213)
!2229 = !DILocation(line: 47, column: 1, scope: !2213)
!2230 = !DILocation(line: 84, column: 55, scope: !1883)
!2231 = !DILocation(line: 86, column: 2, scope: !1883)
!2232 = !DILocation(line: 86, column: 5, scope: !1883)
!2233 = !DILocation(line: 86, column: 10, scope: !1883)
!2234 = !DILocation(line: 87, column: 2, scope: !1883)
!2235 = !DILocation(line: 87, column: 2, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !1883, file: !900, line: 87, column: 2)
!2237 = !DILocation(line: 88, column: 1, scope: !1883)
!2238 = !DISubprogram(name: "pcc_mbox_request_channel", scope: !127, file: !127, line: 39, type: !2239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!125, !1790, !46}
!2241 = distinct !DISubprogram(name: "IS_ERR", scope: !2242, file: !2242, line: 59, type: !2243, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2242 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!581, !503}
!2245 = !{!2246}
!2246 = !DILocalVariable(name: "ptr", arg: 1, scope: !2241, file: !2242, line: 59, type: !503)
!2247 = !DILocation(line: 59, column: 60, scope: !2241)
!2248 = !DILocation(line: 61, column: 9, scope: !2241)
!2249 = !DILocation(line: 61, column: 2, scope: !2241)
!2250 = distinct !DISubprogram(name: "acpi_os_ioremap", scope: !2251, file: !2251, line: 10, type: !2252, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2254)
!2251 = !DIFile(filename: "./include/acpi/acpi_io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "15c88ad459b9755ee19dd3f691b85d66")
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!102, !1927, !106}
!2254 = !{!2255, !2256}
!2255 = !DILocalVariable(name: "phys", arg: 1, scope: !2250, file: !2251, line: 10, type: !1927)
!2256 = !DILocalVariable(name: "size", arg: 2, scope: !2250, file: !2251, line: 11, type: !106)
!2257 = !DILocation(line: 10, column: 67, scope: !2250)
!2258 = !DILocation(line: 11, column: 20, scope: !2250)
!2259 = !DILocation(line: 13, column: 29, scope: !2250)
!2260 = !DILocation(line: 13, column: 35, scope: !2250)
!2261 = !DILocation(line: 13, column: 15, scope: !2250)
!2262 = !DILocation(line: 13, column: 8, scope: !2250)
!2263 = !DISubprogram(name: "pcc_mbox_free_channel", scope: !127, file: !127, line: 40, type: !2264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !125}
!2266 = !DISubprogram(name: "kfree", scope: !90, file: !90, line: 227, type: !2267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !503}
!2269 = distinct !DISubprogram(name: "kmalloc", scope: !90, file: !90, line: 591, type: !2201, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2270)
!2270 = !{!2271, !2272, !2273}
!2271 = !DILocalVariable(name: "size", arg: 1, scope: !2269, file: !90, line: 591, type: !275)
!2272 = !DILocalVariable(name: "flags", arg: 2, scope: !2269, file: !90, line: 591, type: !120)
!2273 = !DILocalVariable(name: "index", scope: !2274, file: !90, line: 594, type: !7)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !90, line: 593, column: 42)
!2275 = distinct !DILexicalBlock(scope: !2269, file: !90, line: 593, column: 6)
!2276 = !DILocation(line: 591, column: 61, scope: !2269)
!2277 = !DILocation(line: 591, column: 73, scope: !2269)
!2278 = !DILocation(line: 593, column: 27, scope: !2275)
!2279 = !DILocation(line: 593, column: 6, scope: !2275)
!2280 = !DILocation(line: 593, column: 33, scope: !2275)
!2281 = !DILocation(line: 593, column: 36, scope: !2275)
!2282 = !DILocation(line: 593, column: 6, scope: !2269)
!2283 = !DILocation(line: 594, column: 3, scope: !2274)
!2284 = !DILocation(line: 594, column: 16, scope: !2274)
!2285 = !DILocation(line: 596, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2274, file: !90, line: 596, column: 7)
!2287 = !DILocation(line: 596, column: 12, scope: !2286)
!2288 = !DILocation(line: 596, column: 7, scope: !2274)
!2289 = !DILocation(line: 597, column: 25, scope: !2286)
!2290 = !DILocation(line: 597, column: 31, scope: !2286)
!2291 = !DILocation(line: 597, column: 11, scope: !2286)
!2292 = !DILocation(line: 597, column: 4, scope: !2286)
!2293 = !DILocation(line: 599, column: 11, scope: !2274)
!2294 = !DILocation(line: 599, column: 9, scope: !2274)
!2295 = !DILocation(line: 601, column: 33, scope: !2274)
!2296 = !DILocation(line: 601, column: 40, scope: !2274)
!2297 = !DILocation(line: 601, column: 20, scope: !2274)
!2298 = !DILocation(line: 601, column: 5, scope: !2274)
!2299 = !DILocation(line: 601, column: 51, scope: !2274)
!2300 = !DILocation(line: 602, column: 5, scope: !2274)
!2301 = !DILocation(line: 602, column: 12, scope: !2274)
!2302 = !DILocation(line: 600, column: 10, scope: !2274)
!2303 = !DILocation(line: 600, column: 3, scope: !2274)
!2304 = !DILocation(line: 603, column: 2, scope: !2275)
!2305 = !DILocation(line: 604, column: 19, scope: !2269)
!2306 = !DILocation(line: 604, column: 25, scope: !2269)
!2307 = !DILocation(line: 604, column: 9, scope: !2269)
!2308 = !DILocation(line: 604, column: 2, scope: !2269)
!2309 = !DILocation(line: 605, column: 1, scope: !2269)
!2310 = !DISubprogram(name: "kmalloc_large", scope: !90, file: !90, line: 531, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2311 = distinct !DISubprogram(name: "__kmalloc_index", scope: !90, file: !90, line: 444, type: !2312, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!7, !275, !581}
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "size", arg: 1, scope: !2311, file: !90, line: 444, type: !275)
!2316 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2311, file: !90, line: 445, type: !581)
!2317 = !DILocation(line: 444, column: 60, scope: !2311)
!2318 = !DILocation(line: 445, column: 16, scope: !2311)
!2319 = !DILocation(line: 447, column: 7, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 447, column: 6)
!2321 = !DILocation(line: 447, column: 6, scope: !2311)
!2322 = !DILocation(line: 448, column: 3, scope: !2320)
!2323 = !DILocation(line: 450, column: 6, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 450, column: 6)
!2325 = !DILocation(line: 450, column: 11, scope: !2324)
!2326 = !DILocation(line: 450, column: 6, scope: !2311)
!2327 = !DILocation(line: 451, column: 3, scope: !2324)
!2328 = !DILocation(line: 453, column: 32, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 453, column: 6)
!2330 = !DILocation(line: 453, column: 37, scope: !2329)
!2331 = !DILocation(line: 453, column: 42, scope: !2329)
!2332 = !DILocation(line: 453, column: 45, scope: !2329)
!2333 = !DILocation(line: 453, column: 50, scope: !2329)
!2334 = !DILocation(line: 453, column: 6, scope: !2311)
!2335 = !DILocation(line: 454, column: 3, scope: !2329)
!2336 = !DILocation(line: 455, column: 32, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 455, column: 6)
!2338 = !DILocation(line: 455, column: 37, scope: !2337)
!2339 = !DILocation(line: 455, column: 43, scope: !2337)
!2340 = !DILocation(line: 455, column: 46, scope: !2337)
!2341 = !DILocation(line: 455, column: 51, scope: !2337)
!2342 = !DILocation(line: 455, column: 6, scope: !2311)
!2343 = !DILocation(line: 456, column: 3, scope: !2337)
!2344 = !DILocation(line: 457, column: 6, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 457, column: 6)
!2346 = !DILocation(line: 457, column: 11, scope: !2345)
!2347 = !DILocation(line: 457, column: 6, scope: !2311)
!2348 = !DILocation(line: 457, column: 26, scope: !2345)
!2349 = !DILocation(line: 458, column: 6, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 458, column: 6)
!2351 = !DILocation(line: 458, column: 11, scope: !2350)
!2352 = !DILocation(line: 458, column: 6, scope: !2311)
!2353 = !DILocation(line: 458, column: 26, scope: !2350)
!2354 = !DILocation(line: 459, column: 6, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 459, column: 6)
!2356 = !DILocation(line: 459, column: 11, scope: !2355)
!2357 = !DILocation(line: 459, column: 6, scope: !2311)
!2358 = !DILocation(line: 459, column: 26, scope: !2355)
!2359 = !DILocation(line: 460, column: 6, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 460, column: 6)
!2361 = !DILocation(line: 460, column: 11, scope: !2360)
!2362 = !DILocation(line: 460, column: 6, scope: !2311)
!2363 = !DILocation(line: 460, column: 26, scope: !2360)
!2364 = !DILocation(line: 461, column: 6, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 461, column: 6)
!2366 = !DILocation(line: 461, column: 11, scope: !2365)
!2367 = !DILocation(line: 461, column: 6, scope: !2311)
!2368 = !DILocation(line: 461, column: 26, scope: !2365)
!2369 = !DILocation(line: 462, column: 6, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 462, column: 6)
!2371 = !DILocation(line: 462, column: 11, scope: !2370)
!2372 = !DILocation(line: 462, column: 6, scope: !2311)
!2373 = !DILocation(line: 462, column: 26, scope: !2370)
!2374 = !DILocation(line: 463, column: 6, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 463, column: 6)
!2376 = !DILocation(line: 463, column: 11, scope: !2375)
!2377 = !DILocation(line: 463, column: 6, scope: !2311)
!2378 = !DILocation(line: 463, column: 26, scope: !2375)
!2379 = !DILocation(line: 464, column: 6, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 464, column: 6)
!2381 = !DILocation(line: 464, column: 11, scope: !2380)
!2382 = !DILocation(line: 464, column: 6, scope: !2311)
!2383 = !DILocation(line: 464, column: 26, scope: !2380)
!2384 = !DILocation(line: 465, column: 6, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 465, column: 6)
!2386 = !DILocation(line: 465, column: 11, scope: !2385)
!2387 = !DILocation(line: 465, column: 6, scope: !2311)
!2388 = !DILocation(line: 465, column: 26, scope: !2385)
!2389 = !DILocation(line: 466, column: 6, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 466, column: 6)
!2391 = !DILocation(line: 466, column: 11, scope: !2390)
!2392 = !DILocation(line: 466, column: 6, scope: !2311)
!2393 = !DILocation(line: 466, column: 26, scope: !2390)
!2394 = !DILocation(line: 467, column: 6, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 467, column: 6)
!2396 = !DILocation(line: 467, column: 11, scope: !2395)
!2397 = !DILocation(line: 467, column: 6, scope: !2311)
!2398 = !DILocation(line: 467, column: 26, scope: !2395)
!2399 = !DILocation(line: 468, column: 6, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 468, column: 6)
!2401 = !DILocation(line: 468, column: 11, scope: !2400)
!2402 = !DILocation(line: 468, column: 6, scope: !2311)
!2403 = !DILocation(line: 468, column: 26, scope: !2400)
!2404 = !DILocation(line: 469, column: 6, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 469, column: 6)
!2406 = !DILocation(line: 469, column: 11, scope: !2405)
!2407 = !DILocation(line: 469, column: 6, scope: !2311)
!2408 = !DILocation(line: 469, column: 26, scope: !2405)
!2409 = !DILocation(line: 470, column: 6, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 470, column: 6)
!2411 = !DILocation(line: 470, column: 11, scope: !2410)
!2412 = !DILocation(line: 470, column: 6, scope: !2311)
!2413 = !DILocation(line: 470, column: 26, scope: !2410)
!2414 = !DILocation(line: 471, column: 6, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 471, column: 6)
!2416 = !DILocation(line: 471, column: 11, scope: !2415)
!2417 = !DILocation(line: 471, column: 6, scope: !2311)
!2418 = !DILocation(line: 471, column: 26, scope: !2415)
!2419 = !DILocation(line: 472, column: 6, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 472, column: 6)
!2421 = !DILocation(line: 472, column: 11, scope: !2420)
!2422 = !DILocation(line: 472, column: 6, scope: !2311)
!2423 = !DILocation(line: 472, column: 26, scope: !2420)
!2424 = !DILocation(line: 473, column: 6, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 473, column: 6)
!2426 = !DILocation(line: 473, column: 11, scope: !2425)
!2427 = !DILocation(line: 473, column: 6, scope: !2311)
!2428 = !DILocation(line: 473, column: 26, scope: !2425)
!2429 = !DILocation(line: 474, column: 6, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 474, column: 6)
!2431 = !DILocation(line: 474, column: 11, scope: !2430)
!2432 = !DILocation(line: 474, column: 6, scope: !2311)
!2433 = !DILocation(line: 474, column: 27, scope: !2430)
!2434 = !DILocation(line: 475, column: 6, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 475, column: 6)
!2436 = !DILocation(line: 475, column: 11, scope: !2435)
!2437 = !DILocation(line: 475, column: 6, scope: !2311)
!2438 = !DILocation(line: 475, column: 32, scope: !2435)
!2439 = !DILocation(line: 477, column: 50, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2311, file: !90, line: 477, column: 6)
!2441 = !DILocation(line: 477, column: 6, scope: !2311)
!2442 = !DILocation(line: 478, column: 3, scope: !2440)
!2443 = !DILocation(line: 478, column: 3, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !90, line: 478, column: 3)
!2445 = distinct !DILexicalBlock(scope: !2440, file: !90, line: 478, column: 3)
!2446 = !{i32 -2143465945}
!2447 = !DILocation(line: 478, column: 3, scope: !2445)
!2448 = !DILocation(line: 480, column: 3, scope: !2440)
!2449 = !DILocation(line: 480, column: 3, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2440, file: !90, line: 480, column: 3)
!2451 = !DILocation(line: 480, column: 3, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2450, file: !90, line: 480, column: 3)
!2453 = !DILocation(line: 480, column: 3, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !90, line: 480, column: 3)
!2455 = !{i64 2151501554, i64 2151501583, i64 2151501629, i64 2151501687, i64 2151501741, i64 2151501795, i64 2151501850, i64 2151501881}
!2456 = !DILocation(line: 483, column: 2, scope: !2311)
!2457 = !DILocation(line: 484, column: 1, scope: !2311)
!2458 = !DISubprogram(name: "kmalloc_trace", scope: !90, file: !90, line: 525, type: !2459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!102, !2461, !120, !275}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2463, line: 11, flags: DIFlagFwdDecl)
!2463 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2464 = distinct !DISubprogram(name: "kmalloc_type", scope: !90, file: !90, line: 401, type: !2465, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!89, !120, !105}
!2467 = !{!2468, !2469}
!2468 = !DILocalVariable(name: "flags", arg: 1, scope: !2464, file: !90, line: 401, type: !120)
!2469 = !DILocalVariable(name: "caller", arg: 2, scope: !2464, file: !90, line: 401, type: !105)
!2470 = !DILocation(line: 401, column: 67, scope: !2464)
!2471 = !DILocation(line: 401, column: 88, scope: !2464)
!2472 = !DILocation(line: 407, column: 6, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2464, file: !90, line: 407, column: 6)
!2474 = !DILocation(line: 407, column: 6, scope: !2464)
!2475 = !DILocation(line: 413, column: 3, scope: !2473)
!2476 = !DILocation(line: 423, column: 38, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2464, file: !90, line: 423, column: 6)
!2478 = !DILocation(line: 423, column: 44, scope: !2477)
!2479 = !DILocation(line: 423, column: 6, scope: !2464)
!2480 = !DILocation(line: 424, column: 3, scope: !2477)
!2481 = !DILocation(line: 426, column: 3, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2464, file: !90, line: 425, column: 6)
!2483 = !DILocation(line: 429, column: 1, scope: !2464)
!2484 = !DISubprogram(name: "__kmalloc", scope: !90, file: !90, line: 488, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2485 = !DISubprogram(name: "__compiletime_assert_125", scope: !90, file: !90, line: 478, type: !1251, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2486 = !DISubprogram(name: "complete", scope: !900, file: !900, line: 118, type: !1884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2487 = !DISubprogram(name: "__init_swait_queue_head", scope: !905, file: !905, line: 69, type: !2488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !2490, !147, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!2492 = !DISubprogram(name: "ioremap_cache", scope: !2142, file: !2142, line: 175, type: !2493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!102, !2495, !105}
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !104, line: 164, baseType: !2496)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !104, line: 159, baseType: !107)
