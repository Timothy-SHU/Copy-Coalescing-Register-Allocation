; ModuleID = 'drivers/pnp/manager.c'
source_filename = "drivers/pnp/manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_start_dev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_start_dev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_stop_dev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_stop_dev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_activate_dev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_activate_dev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_disable_dev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_disable_dev ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.pnp_option = type { %struct.list_head, i32, i64, %union.anon.2 }
%union.anon.2 = type { %struct.pnp_port }
%struct.pnp_port = type { i64, i64, i64, i64, i8 }
%struct.pnp_protocol = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pnp_mem = type { i64, i64, i64, i64, i8 }
%struct.pnp_irq = type { %struct.pnp_irq_mask_t, i8 }
%struct.pnp_irq_mask_t = type { [4 x i64] }
%struct.pnp_dma = type { i8, i8 }

@pnp_res_mutex = hidden global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pnp_res_mutex, i64 16), ptr getelementptr (i8, ptr @pnp_res_mutex, i64 16) } }, align 8, !dbg !0
@pnp_debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"\017\00", align 1, !dbg !168
@.str.1 = private unnamed_addr constant [29 x i8] c"configuration not supported\0A\00", align 1, !dbg !173
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to assign resources\0A\00", align 1, !dbg !178
@.str.3 = private unnamed_addr constant [26 x i8] c"activation not supported\0A\00", align 1, !dbg !183
@.str.4 = private unnamed_addr constant [14 x i8] c"pnp_start_dev\00", align 1, !dbg !188
@.str.5 = private unnamed_addr constant [19 x i8] c"activation failed\0A\00", align 1, !dbg !193
@.str.6 = private unnamed_addr constant [11 x i8] c"activated\0A\00", align 1, !dbg !198
@__UNIQUE_ID___addressable_pnp_start_dev205 = internal global ptr @pnp_start_dev, section ".discard.addressable", align 8, !dbg !203
@console_suspend_enabled = external dso_local global i8, align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"disabling not supported\0A\00", align 1, !dbg !205
@.str.8 = private unnamed_addr constant [16 x i8] c"disable failed\0A\00", align 1, !dbg !210
@.str.9 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1, !dbg !215
@__UNIQUE_ID___addressable_pnp_stop_dev206 = internal global ptr @pnp_stop_dev, section ".discard.addressable", align 8, !dbg !220
@__UNIQUE_ID___addressable_pnp_activate_dev207 = internal global ptr @pnp_activate_dev, section ".discard.addressable", align 8, !dbg !222
@__UNIQUE_ID___addressable_pnp_disable_dev208 = internal global ptr @pnp_disable_dev, section ".discard.addressable", align 8, !dbg !224
@.str.10 = private unnamed_addr constant [44 x i8] c"pnp_assign_resources, try dependent set %d\0A\00", align 1, !dbg !226
@.str.11 = private unnamed_addr constant [34 x i8] c"pnp_assign_resources failed (%d)\0A\00", align 1, !dbg !231
@.str.12 = private unnamed_addr constant [31 x i8] c"pnp_assign_resources succeeded\00", align 1, !dbg !236
@.str.13 = private unnamed_addr constant [47 x i8] c"  io %d already set to %#llx-%#llx flags %#lx\0A\00", align 1, !dbg !241
@.str.14 = private unnamed_addr constant [18 x i8] c"  io %d disabled\0A\00", align 1, !dbg !246
@.str.15 = private unnamed_addr constant [47 x i8] c"  couldn't assign io %d (min %#llx max %#llx)\0A\00", align 1, !dbg !251
@.str.16 = private unnamed_addr constant [48 x i8] c"  mem %d already set to %#llx-%#llx flags %#lx\0A\00", align 1, !dbg !253
@.str.17 = private unnamed_addr constant [19 x i8] c"  mem %d disabled\0A\00", align 1, !dbg !258
@.str.18 = private unnamed_addr constant [48 x i8] c"  couldn't assign mem %d (min %#llx max %#llx)\0A\00", align 1, !dbg !260
@pnp_assign_irq.xtab = internal global [16 x i16] [i16 5, i16 10, i16 11, i16 12, i16 9, i16 14, i16 15, i16 7, i16 3, i16 4, i16 13, i16 0, i16 1, i16 6, i16 8, i16 2], align 16, !dbg !262
@.str.19 = private unnamed_addr constant [39 x i8] c"  irq %d already set to %d flags %#lx\0A\00", align 1, !dbg !1891
@.str.20 = private unnamed_addr constant [19 x i8] c"  irq %d disabled\0A\00", align 1, !dbg !1896
@.str.21 = private unnamed_addr constant [30 x i8] c"  irq %d disabled (optional)\0A\00", align 1, !dbg !1898
@.str.22 = private unnamed_addr constant [26 x i8] c"  couldn't assign irq %d\0A\00", align 1, !dbg !1903
@pnp_assign_dma.xtab = internal global [8 x i16] [i16 1, i16 3, i16 5, i16 6, i16 7, i16 0, i16 2, i16 4], align 16, !dbg !1905
@.str.23 = private unnamed_addr constant [39 x i8] c"  dma %d already set to %d flags %#lx\0A\00", align 1, !dbg !1920
@.str.24 = private unnamed_addr constant [19 x i8] c"  dma %d disabled\0A\00", align 1, !dbg !1922
@.str.25 = private unnamed_addr constant [26 x i8] c"  couldn't assign dma %d\0A\00", align 1, !dbg !1924
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_pnp_start_dev205, ptr @__UNIQUE_ID___addressable_pnp_stop_dev206, ptr @__UNIQUE_ID___addressable_pnp_activate_dev207, ptr @__UNIQUE_ID___addressable_pnp_disable_dev208], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pnp_init_resources(ptr noundef %dev) #0 align 16 !dbg !1935 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1937, metadata !DIExpression()), !dbg !1938
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1939
  call void @pnp_free_resources(ptr noundef %0) #10, !dbg !1940
  ret void, !dbg !1941
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1942 dso_local void @pnp_free_resources(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_auto_config_dev(ptr noundef %dev) #0 align 16 !dbg !1943 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1945, metadata !DIExpression()), !dbg !1948
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !1949
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1946, metadata !DIExpression()), !dbg !1950
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1949
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1947, metadata !DIExpression()), !dbg !1951
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1952
  %active = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 13, !dbg !1952
  %1 = load i32, ptr %active, align 8, !dbg !1952
  %tobool = icmp ne i32 %1, 0, !dbg !1952
  br i1 %tobool, label %if.then, label %land.lhs.true, !dbg !1952

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1952
  %capabilities = getelementptr inbounds %struct.pnp_dev, ptr %2, i32 0, i32 14, !dbg !1952
  %3 = load i32, ptr %capabilities, align 4, !dbg !1952
  %and = and i32 %3, 8, !dbg !1952
  %tobool1 = icmp ne i32 %and, 0, !dbg !1952
  br i1 %tobool1, label %if.end5, label %if.then, !dbg !1954

if.then:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr @pnp_debug, align 4, !dbg !1955
  %tobool2 = icmp ne i32 %4, 0, !dbg !1955
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !1959

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !1960

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !1962

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1962

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !1960
  %dev4 = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 0, !dbg !1960
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev4, ptr noundef @.str.1) #12, !dbg !1960
  br label %if.end, !dbg !1955

if.end:                                           ; preds = %do.end, %if.then
  store i32 0, ptr %tmp, align 4, !dbg !1955
  %6 = load i32, ptr %tmp, align 4, !dbg !1959
  store i32 -19, ptr %retval, align 4, !dbg !1964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1964

if.end5:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !1965
  %call = call i32 @pnp_assign_resources(ptr noundef %7, i32 noundef 0) #10, !dbg !1966
  store i32 %call, ptr %ret, align 4, !dbg !1967
  %8 = load i32, ptr %ret, align 4, !dbg !1968
  %cmp = icmp eq i32 %8, 0, !dbg !1970
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !1971

if.then6:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !1972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1972

if.end7:                                          ; preds = %if.end5
  store i32 1, ptr %i, align 4, !dbg !1973
  br label %for.cond, !dbg !1975

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, ptr %i, align 4, !dbg !1976
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1978
  %num_dependent_sets = getelementptr inbounds %struct.pnp_dev, ptr %10, i32 0, i32 15, !dbg !1979
  %11 = load i32, ptr %num_dependent_sets, align 8, !dbg !1979
  %cmp8 = icmp ult i32 %9, %11, !dbg !1980
  br i1 %cmp8, label %for.body, label %for.end, !dbg !1981

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !1982
  %13 = load i32, ptr %i, align 4, !dbg !1984
  %call9 = call i32 @pnp_assign_resources(ptr noundef %12, i32 noundef %13) #10, !dbg !1985
  store i32 %call9, ptr %ret, align 4, !dbg !1986
  %14 = load i32, ptr %ret, align 4, !dbg !1987
  %cmp10 = icmp eq i32 %14, 0, !dbg !1989
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1990

if.then11:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !1991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1991

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !1992

for.inc:                                          ; preds = %if.end12
  %15 = load i32, ptr %i, align 4, !dbg !1993
  %inc = add i32 %15, 1, !dbg !1993
  store i32 %inc, ptr %i, align 4, !dbg !1993
  br label %for.cond, !dbg !1994, !llvm.loop !1995

for.end:                                          ; preds = %for.cond
  br label %do.body13, !dbg !1999

do.body13:                                        ; preds = %for.end
  br label %do.cond14, !dbg !2001

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2001

do.end15:                                         ; preds = %do.cond14
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !1999
  %dev16 = getelementptr inbounds %struct.pnp_dev, ptr %16, i32 0, i32 0, !dbg !1999
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef @.str.2) #12, !dbg !1999
  %17 = load i32, ptr %ret, align 4, !dbg !2003
  store i32 %17, ptr %retval, align 4, !dbg !2004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2004

cleanup:                                          ; preds = %do.end15, %if.then11, %if.then6, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2005
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !2005
  %18 = load i32, ptr %retval, align 4, !dbg !2005
  ret i32 %18, !dbg !2005
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2006 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_assign_resources(ptr noundef %dev, i32 noundef %set) #0 align 16 !dbg !2010 {
entry:
  %dev.addr = alloca ptr, align 8
  %set.addr = alloca i32, align 4
  %option = alloca ptr, align 8
  %nport = alloca i32, align 4
  %nmem = alloca i32, align 4
  %nirq = alloca i32, align 4
  %ndma = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr25 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  %tmp39 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2014, metadata !DIExpression()), !dbg !2028
  store i32 %set, ptr %set.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2015, metadata !DIExpression()), !dbg !2029
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #11, !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %option, metadata !2016, metadata !DIExpression()), !dbg !2031
  call void @llvm.lifetime.start.p0(i64 4, ptr %nport) #11, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %nport, metadata !2017, metadata !DIExpression()), !dbg !2033
  store i32 0, ptr %nport, align 4, !dbg !2033
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmem) #11, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %nmem, metadata !2018, metadata !DIExpression()), !dbg !2034
  store i32 0, ptr %nmem, align 4, !dbg !2034
  call void @llvm.lifetime.start.p0(i64 4, ptr %nirq) #11, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %nirq, metadata !2019, metadata !DIExpression()), !dbg !2035
  store i32 0, ptr %nirq, align 4, !dbg !2035
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndma) #11, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %ndma, metadata !2020, metadata !DIExpression()), !dbg !2037
  store i32 0, ptr %ndma, align 4, !dbg !2037
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2038
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2021, metadata !DIExpression()), !dbg !2039
  store i32 0, ptr %ret, align 4, !dbg !2039
  %0 = load i32, ptr @pnp_debug, align 4, !dbg !2040
  %tobool = icmp ne i32 %0, 0, !dbg !2040
  br i1 %tobool, label %if.then, label %if.end, !dbg !2043

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2044

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2046

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2046

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2044
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %1, i32 0, i32 0, !dbg !2044
  %2 = load i32, ptr %set.addr, align 4, !dbg !2044
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev1, ptr noundef @.str.10, i32 noundef %2) #12, !dbg !2044
  br label %if.end, !dbg !2040

if.end:                                           ; preds = %do.end, %entry
  store i32 0, ptr %tmp, align 4, !dbg !2040
  %3 = load i32, ptr %tmp, align 4, !dbg !2043
  call void @mutex_lock(ptr noundef @pnp_res_mutex) #10, !dbg !2048
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2049
  call void @pnp_clean_resource_table(ptr noundef %4) #10, !dbg !2050
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !2051
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2022, metadata !DIExpression()), !dbg !2051
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2051
  %options = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 17, !dbg !2051
  %next = getelementptr inbounds %struct.list_head, ptr %options, i32 0, i32 0, !dbg !2051
  %6 = load ptr, ptr %next, align 8, !dbg !2051
  store ptr %6, ptr %__mptr, align 8, !dbg !2051
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2051
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !2051
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !2051
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !2052
  %8 = load ptr, ptr %tmp2, align 8, !dbg !2051
  store ptr %8, ptr %option, align 8, !dbg !2052
  br label %for.cond, !dbg !2052

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load ptr, ptr %option, align 8, !dbg !2053
  %list = getelementptr inbounds %struct.pnp_option, ptr %9, i32 0, i32 0, !dbg !2053
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2053
  %options3 = getelementptr inbounds %struct.pnp_dev, ptr %10, i32 0, i32 17, !dbg !2053
  %cmp = icmp eq ptr %list, %options3, !dbg !2053
  %lnot = xor i1 %cmp, true, !dbg !2053
  br i1 %lnot, label %for.body, label %for.end, !dbg !2052

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %option, align 8, !dbg !2054
  %call = call i32 @pnp_option_is_dependent(ptr noundef %11) #10, !dbg !2057
  %tobool4 = icmp ne i32 %call, 0, !dbg !2057
  br i1 %tobool4, label %land.lhs.true, label %if.end8, !dbg !2058

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %option, align 8, !dbg !2059
  %call5 = call i32 @pnp_option_set(ptr noundef %12) #10, !dbg !2060
  %13 = load i32, ptr %set.addr, align 4, !dbg !2061
  %cmp6 = icmp ne i32 %call5, %13, !dbg !2062
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2063

if.then7:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !2064

if.end8:                                          ; preds = %land.lhs.true, %for.body
  %14 = load ptr, ptr %option, align 8, !dbg !2065
  %type = getelementptr inbounds %struct.pnp_option, ptr %14, i32 0, i32 2, !dbg !2066
  %15 = load i64, ptr %type, align 8, !dbg !2066
  switch i64 %15, label %sw.default [
    i64 256, label %sw.bb
    i64 512, label %sw.bb10
    i64 1024, label %sw.bb14
    i64 2048, label %sw.bb18
  ], !dbg !2067

sw.bb:                                            ; preds = %if.end8
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2068
  %17 = load ptr, ptr %option, align 8, !dbg !2070
  %u = getelementptr inbounds %struct.pnp_option, ptr %17, i32 0, i32 3, !dbg !2071
  %18 = load i32, ptr %nport, align 4, !dbg !2072
  %inc = add i32 %18, 1, !dbg !2072
  store i32 %inc, ptr %nport, align 4, !dbg !2072
  %call9 = call i32 @pnp_assign_port(ptr noundef %16, ptr noundef %u, i32 noundef %18) #10, !dbg !2073
  store i32 %call9, ptr %ret, align 4, !dbg !2074
  br label %sw.epilog, !dbg !2075

sw.bb10:                                          ; preds = %if.end8
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !2076
  %20 = load ptr, ptr %option, align 8, !dbg !2077
  %u11 = getelementptr inbounds %struct.pnp_option, ptr %20, i32 0, i32 3, !dbg !2078
  %21 = load i32, ptr %nmem, align 4, !dbg !2079
  %inc12 = add i32 %21, 1, !dbg !2079
  store i32 %inc12, ptr %nmem, align 4, !dbg !2079
  %call13 = call i32 @pnp_assign_mem(ptr noundef %19, ptr noundef %u11, i32 noundef %21) #10, !dbg !2080
  store i32 %call13, ptr %ret, align 4, !dbg !2081
  br label %sw.epilog, !dbg !2082

sw.bb14:                                          ; preds = %if.end8
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !2083
  %23 = load ptr, ptr %option, align 8, !dbg !2084
  %u15 = getelementptr inbounds %struct.pnp_option, ptr %23, i32 0, i32 3, !dbg !2085
  %24 = load i32, ptr %nirq, align 4, !dbg !2086
  %inc16 = add i32 %24, 1, !dbg !2086
  store i32 %inc16, ptr %nirq, align 4, !dbg !2086
  %call17 = call i32 @pnp_assign_irq(ptr noundef %22, ptr noundef %u15, i32 noundef %24) #10, !dbg !2087
  store i32 %call17, ptr %ret, align 4, !dbg !2088
  br label %sw.epilog, !dbg !2089

sw.bb18:                                          ; preds = %if.end8
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !2090
  %26 = load ptr, ptr %option, align 8, !dbg !2091
  %u19 = getelementptr inbounds %struct.pnp_option, ptr %26, i32 0, i32 3, !dbg !2092
  %27 = load i32, ptr %ndma, align 4, !dbg !2093
  %inc20 = add i32 %27, 1, !dbg !2093
  store i32 %inc20, ptr %ndma, align 4, !dbg !2093
  %call21 = call i32 @pnp_assign_dma(ptr noundef %25, ptr noundef %u19, i32 noundef %27) #10, !dbg !2094
  store i32 %call21, ptr %ret, align 4, !dbg !2095
  br label %sw.epilog, !dbg !2096

sw.default:                                       ; preds = %if.end8
  store i32 -22, ptr %ret, align 4, !dbg !2097
  br label %sw.epilog, !dbg !2098

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb
  %28 = load i32, ptr %ret, align 4, !dbg !2099
  %cmp22 = icmp slt i32 %28, 0, !dbg !2101
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2102

if.then23:                                        ; preds = %sw.epilog
  br label %for.end, !dbg !2103

if.end24:                                         ; preds = %sw.epilog
  br label %for.inc, !dbg !2104

for.inc:                                          ; preds = %if.end24, %if.then7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr25) #11, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %__mptr25, metadata !2025, metadata !DIExpression()), !dbg !2105
  %29 = load ptr, ptr %option, align 8, !dbg !2105
  %list26 = getelementptr inbounds %struct.pnp_option, ptr %29, i32 0, i32 0, !dbg !2105
  %next27 = getelementptr inbounds %struct.list_head, ptr %list26, i32 0, i32 0, !dbg !2105
  %30 = load ptr, ptr %next27, align 8, !dbg !2105
  store ptr %30, ptr %__mptr25, align 8, !dbg !2105
  %31 = load ptr, ptr %__mptr25, align 8, !dbg !2105
  %add.ptr29 = getelementptr i8, ptr %31, i64 0, !dbg !2105
  store ptr %add.ptr29, ptr %tmp28, align 8, !dbg !2105
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr25) #11, !dbg !2053
  %32 = load ptr, ptr %tmp28, align 8, !dbg !2105
  store ptr %32, ptr %option, align 8, !dbg !2053
  br label %for.cond, !dbg !2053, !llvm.loop !2106

for.end:                                          ; preds = %if.then23, %for.cond
  call void @mutex_unlock(ptr noundef @pnp_res_mutex) #10, !dbg !2108
  %33 = load i32, ptr %ret, align 4, !dbg !2109
  %cmp30 = icmp slt i32 %33, 0, !dbg !2111
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !2112

if.then31:                                        ; preds = %for.end
  %34 = load i32, ptr @pnp_debug, align 4, !dbg !2113
  %tobool32 = icmp ne i32 %34, 0, !dbg !2113
  br i1 %tobool32, label %if.then33, label %if.end38, !dbg !2117

if.then33:                                        ; preds = %if.then31
  br label %do.body34, !dbg !2118

do.body34:                                        ; preds = %if.then33
  br label %do.cond35, !dbg !2120

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2120

do.end36:                                         ; preds = %do.cond35
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !2118
  %dev37 = getelementptr inbounds %struct.pnp_dev, ptr %35, i32 0, i32 0, !dbg !2118
  %36 = load i32, ptr %ret, align 4, !dbg !2118
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev37, ptr noundef @.str.11, i32 noundef %36) #12, !dbg !2118
  br label %if.end38, !dbg !2113

if.end38:                                         ; preds = %do.end36, %if.then31
  store i32 0, ptr %tmp39, align 4, !dbg !2113
  %37 = load i32, ptr %tmp39, align 4, !dbg !2117
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !2122
  call void @pnp_clean_resource_table(ptr noundef %38) #10, !dbg !2123
  br label %if.end40, !dbg !2124

if.else:                                          ; preds = %for.end
  %39 = load ptr, ptr %dev.addr, align 8, !dbg !2125
  call void @dbg_pnp_show_resources(ptr noundef %39, ptr noundef @.str.12) #10, !dbg !2126
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end38
  %40 = load i32, ptr %ret, align 4, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndma) #11, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 4, ptr %nirq) #11, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmem) #11, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 4, ptr %nport) #11, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #11, !dbg !2128
  ret i32 %40, !dbg !2129
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2130 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_start_dev(ptr noundef %dev) #0 align 16 !dbg !2133 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2135, metadata !DIExpression()), !dbg !2136
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2137
  %protocol = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 8, !dbg !2137
  %1 = load ptr, ptr %protocol, align 8, !dbg !2137
  %set = getelementptr inbounds %struct.pnp_protocol, ptr %1, i32 0, i32 3, !dbg !2137
  %2 = load ptr, ptr %set, align 8, !dbg !2137
  %tobool = icmp ne ptr %2, null, !dbg !2137
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !2137

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2137
  %capabilities = getelementptr inbounds %struct.pnp_dev, ptr %3, i32 0, i32 14, !dbg !2137
  %4 = load i32, ptr %capabilities, align 4, !dbg !2137
  %and = and i32 %4, 2, !dbg !2137
  %tobool1 = icmp ne i32 %and, 0, !dbg !2137
  br i1 %tobool1, label %if.end5, label %if.then, !dbg !2139

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr @pnp_debug, align 4, !dbg !2140
  %tobool2 = icmp ne i32 %5, 0, !dbg !2140
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2144

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !2145

do.body:                                          ; preds = %if.then3
  br label %do.end, !dbg !2147

do.end:                                           ; preds = %do.body
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2145
  %dev4 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 0, !dbg !2145
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev4, ptr noundef @.str.3) #12, !dbg !2145
  br label %if.end, !dbg !2140

if.end:                                           ; preds = %do.end, %if.then
  store i32 0, ptr %tmp, align 4, !dbg !2140
  %7 = load i32, ptr %tmp, align 4, !dbg !2144
  store i32 -22, ptr %retval, align 4, !dbg !2149
  br label %return, !dbg !2149

if.end5:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2150
  call void @dbg_pnp_show_resources(ptr noundef %8, ptr noundef @.str.4) #10, !dbg !2151
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2152
  %protocol6 = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 8, !dbg !2154
  %10 = load ptr, ptr %protocol6, align 8, !dbg !2154
  %set7 = getelementptr inbounds %struct.pnp_protocol, ptr %10, i32 0, i32 3, !dbg !2155
  %11 = load ptr, ptr %set7, align 8, !dbg !2155
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2156
  %call = call i32 %11(ptr noundef %12) #10, !dbg !2152
  %cmp = icmp slt i32 %call, 0, !dbg !2157
  br i1 %cmp, label %if.then8, label %if.end12, !dbg !2158

if.then8:                                         ; preds = %if.end5
  br label %do.body9, !dbg !2159

do.body9:                                         ; preds = %if.then8
  br label %do.end10, !dbg !2162

do.end10:                                         ; preds = %do.body9
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !2159
  %dev11 = getelementptr inbounds %struct.pnp_dev, ptr %13, i32 0, i32 0, !dbg !2159
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef @.str.5) #12, !dbg !2159
  store i32 -5, ptr %retval, align 4, !dbg !2164
  br label %return, !dbg !2164

if.end12:                                         ; preds = %if.end5
  br label %do.body13, !dbg !2165

do.body13:                                        ; preds = %if.end12
  br label %do.end14, !dbg !2167

do.end14:                                         ; preds = %do.body13
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2165
  %dev15 = getelementptr inbounds %struct.pnp_dev, ptr %14, i32 0, i32 0, !dbg !2165
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef @.str.6) #12, !dbg !2165
  store i32 0, ptr %retval, align 4, !dbg !2169
  br label %return, !dbg !2169

return:                                           ; preds = %do.end14, %do.end10, %if.end
  %15 = load i32, ptr %retval, align 4, !dbg !2170
  ret i32 %15, !dbg !2170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2171 dso_local void @dbg_pnp_show_resources(ptr noundef, ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2174 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_stop_dev(ptr noundef %dev) #0 align 16 !dbg !2175 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2177, metadata !DIExpression()), !dbg !2178
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2179
  %protocol = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 8, !dbg !2179
  %1 = load ptr, ptr %protocol, align 8, !dbg !2179
  %disable = getelementptr inbounds %struct.pnp_protocol, ptr %1, i32 0, i32 4, !dbg !2179
  %2 = load ptr, ptr %disable, align 8, !dbg !2179
  %tobool = icmp ne ptr %2, null, !dbg !2179
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !2179

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2179
  %capabilities = getelementptr inbounds %struct.pnp_dev, ptr %3, i32 0, i32 14, !dbg !2179
  %4 = load i32, ptr %capabilities, align 4, !dbg !2179
  %and = and i32 %4, 4, !dbg !2179
  %tobool1 = icmp ne i32 %and, 0, !dbg !2179
  br i1 %tobool1, label %land.lhs.true2, label %if.then, !dbg !2179

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2179
  %capabilities3 = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 14, !dbg !2179
  %6 = load i32, ptr %capabilities3, align 4, !dbg !2179
  %and4 = and i32 %6, 32, !dbg !2179
  %tobool5 = icmp ne i32 %and4, 0, !dbg !2179
  br i1 %tobool5, label %lor.lhs.false, label %if.end10, !dbg !2179

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %7 = load i8, ptr @console_suspend_enabled, align 1, !dbg !2179, !range !2181, !noundef !488
  %tobool6 = trunc i8 %7 to i1, !dbg !2179
  br i1 %tobool6, label %if.end10, label %if.then, !dbg !2182

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %8 = load i32, ptr @pnp_debug, align 4, !dbg !2183
  %tobool7 = icmp ne i32 %8, 0, !dbg !2183
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !2187

if.then8:                                         ; preds = %if.then
  br label %do.body, !dbg !2188

do.body:                                          ; preds = %if.then8
  br label %do.end, !dbg !2190

do.end:                                           ; preds = %do.body
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2188
  %dev9 = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 0, !dbg !2188
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev9, ptr noundef @.str.7) #12, !dbg !2188
  br label %if.end, !dbg !2183

if.end:                                           ; preds = %do.end, %if.then
  store i32 0, ptr %tmp, align 4, !dbg !2183
  %10 = load i32, ptr %tmp, align 4, !dbg !2187
  store i32 -22, ptr %retval, align 4, !dbg !2192
  br label %return, !dbg !2192

if.end10:                                         ; preds = %lor.lhs.false, %land.lhs.true2
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !2193
  %protocol11 = getelementptr inbounds %struct.pnp_dev, ptr %11, i32 0, i32 8, !dbg !2195
  %12 = load ptr, ptr %protocol11, align 8, !dbg !2195
  %disable12 = getelementptr inbounds %struct.pnp_protocol, ptr %12, i32 0, i32 4, !dbg !2196
  %13 = load ptr, ptr %disable12, align 8, !dbg !2196
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2197
  %call = call i32 %13(ptr noundef %14) #10, !dbg !2193
  %cmp = icmp slt i32 %call, 0, !dbg !2198
  br i1 %cmp, label %if.then13, label %if.end17, !dbg !2199

if.then13:                                        ; preds = %if.end10
  br label %do.body14, !dbg !2200

do.body14:                                        ; preds = %if.then13
  br label %do.end15, !dbg !2203

do.end15:                                         ; preds = %do.body14
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2200
  %dev16 = getelementptr inbounds %struct.pnp_dev, ptr %15, i32 0, i32 0, !dbg !2200
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef @.str.8) #12, !dbg !2200
  store i32 -5, ptr %retval, align 4, !dbg !2205
  br label %return, !dbg !2205

if.end17:                                         ; preds = %if.end10
  br label %do.body18, !dbg !2206

do.body18:                                        ; preds = %if.end17
  br label %do.end19, !dbg !2208

do.end19:                                         ; preds = %do.body18
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2206
  %dev20 = getelementptr inbounds %struct.pnp_dev, ptr %16, i32 0, i32 0, !dbg !2206
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef @.str.9) #12, !dbg !2206
  store i32 0, ptr %retval, align 4, !dbg !2210
  br label %return, !dbg !2210

return:                                           ; preds = %do.end19, %do.end15, %if.end
  %17 = load i32, ptr %retval, align 4, !dbg !2211
  ret i32 %17, !dbg !2211
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_activate_dev(ptr noundef %dev) #0 align 16 !dbg !2212 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2214, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !2217
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2215, metadata !DIExpression()), !dbg !2218
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2219
  %active = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 13, !dbg !2221
  %1 = load i32, ptr %active, align 8, !dbg !2221
  %tobool = icmp ne i32 %1, 0, !dbg !2219
  br i1 %tobool, label %if.then, label %if.end, !dbg !2222

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2223

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2224
  %call = call i32 @pnp_auto_config_dev(ptr noundef %2) #10, !dbg !2226
  %tobool1 = icmp ne i32 %call, 0, !dbg !2226
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2227

if.then2:                                         ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !2228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2228

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2229
  %call4 = call i32 @pnp_start_dev(ptr noundef %3) #10, !dbg !2230
  store i32 %call4, ptr %error, align 4, !dbg !2231
  %4 = load i32, ptr %error, align 4, !dbg !2232
  %tobool5 = icmp ne i32 %4, 0, !dbg !2232
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2234

if.then6:                                         ; preds = %if.end3
  %5 = load i32, ptr %error, align 4, !dbg !2235
  store i32 %5, ptr %retval, align 4, !dbg !2236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2236

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2237
  %active8 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 13, !dbg !2238
  store i32 1, ptr %active8, align 8, !dbg !2239
  store i32 0, ptr %retval, align 4, !dbg !2240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2240

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !2241
  %7 = load i32, ptr %retval, align 4, !dbg !2241
  ret i32 %7, !dbg !2241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_disable_dev(ptr noundef %dev) #0 align 16 !dbg !2242 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !2247
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2245, metadata !DIExpression()), !dbg !2248
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2249
  %active = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 13, !dbg !2251
  %1 = load i32, ptr %active, align 8, !dbg !2251
  %tobool = icmp ne i32 %1, 0, !dbg !2249
  br i1 %tobool, label %if.end, label %if.then, !dbg !2252

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2253

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2254
  %call = call i32 @pnp_stop_dev(ptr noundef %2) #10, !dbg !2255
  store i32 %call, ptr %error, align 4, !dbg !2256
  %3 = load i32, ptr %error, align 4, !dbg !2257
  %tobool1 = icmp ne i32 %3, 0, !dbg !2257
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2259

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %error, align 4, !dbg !2260
  store i32 %4, ptr %retval, align 4, !dbg !2261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2261

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2262
  %active4 = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 13, !dbg !2263
  store i32 0, ptr %active4, align 8, !dbg !2264
  call void @mutex_lock(ptr noundef @pnp_res_mutex) #10, !dbg !2265
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2266
  call void @pnp_clean_resource_table(ptr noundef %6) #10, !dbg !2267
  call void @mutex_unlock(ptr noundef @pnp_res_mutex) #10, !dbg !2268
  store i32 0, ptr %retval, align 4, !dbg !2269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2269

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !2270
  %7 = load i32, ptr %retval, align 4, !dbg !2270
  ret i32 %7, !dbg !2270
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2271 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_clean_resource_table(ptr noundef %dev) #0 align 16 !dbg !2275 {
entry:
  %dev.addr = alloca ptr, align 8
  %pnp_res = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2277, metadata !DIExpression()), !dbg !2288
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_res) #11, !dbg !2289
  call void @llvm.dbg.declare(metadata ptr %pnp_res, metadata !2278, metadata !DIExpression()), !dbg !2290
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !2289
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2279, metadata !DIExpression()), !dbg !2291
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !2292
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2280, metadata !DIExpression()), !dbg !2292
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2292
  %resources = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 16, !dbg !2292
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !2292
  %1 = load ptr, ptr %next, align 8, !dbg !2292
  store ptr %1, ptr %__mptr, align 8, !dbg !2292
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2292
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !2292
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2292
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !2293
  %3 = load ptr, ptr %tmp1, align 8, !dbg !2292
  store ptr %3, ptr %pnp_res, align 8, !dbg !2293
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #11, !dbg !2294
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2283, metadata !DIExpression()), !dbg !2294
  %4 = load ptr, ptr %pnp_res, align 8, !dbg !2294
  %list = getelementptr inbounds %struct.pnp_resource, ptr %4, i32 0, i32 0, !dbg !2294
  %next3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !2294
  %5 = load ptr, ptr %next3, align 8, !dbg !2294
  store ptr %5, ptr %__mptr2, align 8, !dbg !2294
  %6 = load ptr, ptr %__mptr2, align 8, !dbg !2294
  %add.ptr5 = getelementptr i8, ptr %6, i64 0, !dbg !2294
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !2294
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #11, !dbg !2293
  %7 = load ptr, ptr %tmp4, align 8, !dbg !2294
  store ptr %7, ptr %tmp, align 8, !dbg !2293
  br label %for.cond, !dbg !2293

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %pnp_res, align 8, !dbg !2295
  %list6 = getelementptr inbounds %struct.pnp_resource, ptr %8, i32 0, i32 0, !dbg !2295
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2295
  %resources7 = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 16, !dbg !2295
  %cmp = icmp eq ptr %list6, %resources7, !dbg !2295
  %lnot = xor i1 %cmp, true, !dbg !2295
  br i1 %lnot, label %for.body, label %for.end, !dbg !2293

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pnp_res, align 8, !dbg !2296
  %res = getelementptr inbounds %struct.pnp_resource, ptr %10, i32 0, i32 1, !dbg !2299
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3, !dbg !2300
  %11 = load i64, ptr %flags, align 8, !dbg !2300
  %and = and i64 %11, 1073741824, !dbg !2301
  %tobool = icmp ne i64 %and, 0, !dbg !2301
  br i1 %tobool, label %if.then, label %if.end, !dbg !2302

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %pnp_res, align 8, !dbg !2303
  call void @pnp_free_resource(ptr noundef %12) #10, !dbg !2304
  br label %if.end, !dbg !2304

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2305

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %tmp, align 8, !dbg !2295
  store ptr %13, ptr %pnp_res, align 8, !dbg !2295
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #11, !dbg !2306
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !2285, metadata !DIExpression()), !dbg !2306
  %14 = load ptr, ptr %tmp, align 8, !dbg !2306
  %list9 = getelementptr inbounds %struct.pnp_resource, ptr %14, i32 0, i32 0, !dbg !2306
  %next10 = getelementptr inbounds %struct.list_head, ptr %list9, i32 0, i32 0, !dbg !2306
  %15 = load ptr, ptr %next10, align 8, !dbg !2306
  store ptr %15, ptr %__mptr8, align 8, !dbg !2306
  %16 = load ptr, ptr %__mptr8, align 8, !dbg !2306
  %add.ptr12 = getelementptr i8, ptr %16, i64 0, !dbg !2306
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !2306
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #11, !dbg !2295
  %17 = load ptr, ptr %tmp11, align 8, !dbg !2306
  store ptr %17, ptr %tmp, align 8, !dbg !2295
  br label %for.cond, !dbg !2295, !llvm.loop !2307

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !2309
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_res) #11, !dbg !2309
  ret void, !dbg !2309
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2310 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_option_is_dependent(ptr noundef %option) #5 align 16 !dbg !2311 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2315, metadata !DIExpression()), !dbg !2316
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2317
  %flags = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 1, !dbg !2318
  %1 = load i32, ptr %flags, align 8, !dbg !2318
  %and = and i32 %1, -2147483648, !dbg !2319
  %tobool = icmp ne i32 %and, 0, !dbg !2317
  %2 = zext i1 %tobool to i64, !dbg !2317
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2317
  ret i32 %cond, !dbg !2320
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_option_set(ptr noundef %option) #5 align 16 !dbg !2321 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !2325, metadata !DIExpression()), !dbg !2326
  %0 = load ptr, ptr %option.addr, align 8, !dbg !2327
  %flags = getelementptr inbounds %struct.pnp_option, ptr %0, i32 0, i32 1, !dbg !2328
  %1 = load i32, ptr %flags, align 8, !dbg !2328
  %shr = lshr i32 %1, 12, !dbg !2329
  %and = and i32 %shr, 65535, !dbg !2330
  ret i32 %and, !dbg !2331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_assign_port(ptr noundef %dev, ptr noundef %rule, i32 noundef %idx) #0 align 16 !dbg !2332 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %rule.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %local_res = alloca %struct.resource, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2337, metadata !DIExpression()), !dbg !2343
  store ptr %rule, ptr %rule.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rule.addr, metadata !2338, metadata !DIExpression()), !dbg !2344
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !2339, metadata !DIExpression()), !dbg !2345
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !2346
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2340, metadata !DIExpression()), !dbg !2347
  call void @llvm.lifetime.start.p0(i64 64, ptr %local_res) #11, !dbg !2346
  call void @llvm.dbg.declare(metadata ptr %local_res, metadata !2341, metadata !DIExpression()), !dbg !2348
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2349
  %1 = load ptr, ptr %rule.addr, align 8, !dbg !2350
  %flags = getelementptr inbounds %struct.pnp_port, ptr %1, i32 0, i32 4, !dbg !2351
  %2 = load i8, ptr %flags, align 8, !dbg !2351
  %3 = load i32, ptr %idx.addr, align 4, !dbg !2352
  %call = call ptr @pnp_find_resource(ptr noundef %0, i8 noundef zeroext %2, i64 noundef 256, i32 noundef %3) #10, !dbg !2353
  store ptr %call, ptr %res, align 8, !dbg !2354
  %4 = load ptr, ptr %res, align 8, !dbg !2355
  %tobool = icmp ne ptr %4, null, !dbg !2355
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2357

if.then:                                          ; preds = %entry
  %5 = load i32, ptr @pnp_debug, align 4, !dbg !2358
  %tobool1 = icmp ne i32 %5, 0, !dbg !2358
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2362

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !2363

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !2365

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2365

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2363
  %dev3 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 0, !dbg !2363
  %7 = load i32, ptr %idx.addr, align 4, !dbg !2363
  %8 = load ptr, ptr %res, align 8, !dbg !2363
  %start = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 0, !dbg !2363
  %9 = load i64, ptr %start, align 8, !dbg !2363
  %10 = load ptr, ptr %res, align 8, !dbg !2363
  %end = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1, !dbg !2363
  %11 = load i64, ptr %end, align 8, !dbg !2363
  %12 = load ptr, ptr %res, align 8, !dbg !2363
  %flags4 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3, !dbg !2363
  %13 = load i64, ptr %flags4, align 8, !dbg !2363
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev3, ptr noundef @.str.13, i32 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13) #12, !dbg !2363
  br label %if.end, !dbg !2358

if.end:                                           ; preds = %do.end, %if.then
  store i32 0, ptr %tmp, align 4, !dbg !2358
  %14 = load i32, ptr %tmp, align 4, !dbg !2362
  store i32 0, ptr %retval, align 4, !dbg !2367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2367

if.end5:                                          ; preds = %entry
  store ptr %local_res, ptr %res, align 8, !dbg !2368
  %15 = load ptr, ptr %rule.addr, align 8, !dbg !2369
  %flags6 = getelementptr inbounds %struct.pnp_port, ptr %15, i32 0, i32 4, !dbg !2370
  %16 = load i8, ptr %flags6, align 8, !dbg !2370
  %conv = zext i8 %16 to i32, !dbg !2369
  %or = or i32 %conv, 1073741824, !dbg !2371
  %conv7 = sext i32 %or to i64, !dbg !2369
  %17 = load ptr, ptr %res, align 8, !dbg !2372
  %flags8 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 3, !dbg !2373
  store i64 %conv7, ptr %flags8, align 8, !dbg !2374
  %18 = load ptr, ptr %res, align 8, !dbg !2375
  %start9 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 0, !dbg !2376
  store i64 0, ptr %start9, align 8, !dbg !2377
  %19 = load ptr, ptr %res, align 8, !dbg !2378
  %end10 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1, !dbg !2379
  store i64 0, ptr %end10, align 8, !dbg !2380
  %20 = load ptr, ptr %rule.addr, align 8, !dbg !2381
  %size = getelementptr inbounds %struct.pnp_port, ptr %20, i32 0, i32 3, !dbg !2383
  %21 = load i64, ptr %size, align 8, !dbg !2383
  %tobool11 = icmp ne i64 %21, 0, !dbg !2381
  br i1 %tobool11, label %if.end23, label %if.then12, !dbg !2384

if.then12:                                        ; preds = %if.end5
  %22 = load ptr, ptr %res, align 8, !dbg !2385
  %flags13 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 3, !dbg !2387
  %23 = load i64, ptr %flags13, align 8, !dbg !2388
  %or14 = or i64 %23, 268435456, !dbg !2388
  store i64 %or14, ptr %flags13, align 8, !dbg !2388
  %24 = load i32, ptr @pnp_debug, align 4, !dbg !2389
  %tobool15 = icmp ne i32 %24, 0, !dbg !2389
  br i1 %tobool15, label %if.then16, label %if.end21, !dbg !2392

if.then16:                                        ; preds = %if.then12
  br label %do.body17, !dbg !2393

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !2395

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2395

do.end19:                                         ; preds = %do.cond18
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !2393
  %dev20 = getelementptr inbounds %struct.pnp_dev, ptr %25, i32 0, i32 0, !dbg !2393
  %26 = load i32, ptr %idx.addr, align 4, !dbg !2393
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev20, ptr noundef @.str.14, i32 noundef %26) #12, !dbg !2393
  br label %if.end21, !dbg !2389

if.end21:                                         ; preds = %do.end19, %if.then12
  store i32 0, ptr %tmp22, align 4, !dbg !2389
  %27 = load i32, ptr %tmp22, align 4, !dbg !2392
  br label %__add, !dbg !2397

if.end23:                                         ; preds = %if.end5
  %28 = load ptr, ptr %rule.addr, align 8, !dbg !2398
  %min = getelementptr inbounds %struct.pnp_port, ptr %28, i32 0, i32 0, !dbg !2399
  %29 = load i64, ptr %min, align 8, !dbg !2399
  %30 = load ptr, ptr %res, align 8, !dbg !2400
  %start24 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 0, !dbg !2401
  store i64 %29, ptr %start24, align 8, !dbg !2402
  %31 = load ptr, ptr %res, align 8, !dbg !2403
  %start25 = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 0, !dbg !2404
  %32 = load i64, ptr %start25, align 8, !dbg !2404
  %33 = load ptr, ptr %rule.addr, align 8, !dbg !2405
  %size26 = getelementptr inbounds %struct.pnp_port, ptr %33, i32 0, i32 3, !dbg !2406
  %34 = load i64, ptr %size26, align 8, !dbg !2406
  %add = add i64 %32, %34, !dbg !2407
  %sub = sub i64 %add, 1, !dbg !2408
  %35 = load ptr, ptr %res, align 8, !dbg !2409
  %end27 = getelementptr inbounds %struct.resource, ptr %35, i32 0, i32 1, !dbg !2410
  store i64 %sub, ptr %end27, align 8, !dbg !2411
  br label %while.cond, !dbg !2412

while.cond:                                       ; preds = %if.end52, %if.end23
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !2413
  %37 = load ptr, ptr %res, align 8, !dbg !2414
  %call28 = call i32 @pnp_check_port(ptr noundef %36, ptr noundef %37) #10, !dbg !2415
  %tobool29 = icmp ne i32 %call28, 0, !dbg !2416
  %lnot = xor i1 %tobool29, true, !dbg !2416
  br i1 %lnot, label %while.body, label %while.end, !dbg !2412

while.body:                                       ; preds = %while.cond
  %38 = load ptr, ptr %rule.addr, align 8, !dbg !2417
  %align = getelementptr inbounds %struct.pnp_port, ptr %38, i32 0, i32 2, !dbg !2419
  %39 = load i64, ptr %align, align 8, !dbg !2419
  %40 = load ptr, ptr %res, align 8, !dbg !2420
  %start30 = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 0, !dbg !2421
  %41 = load i64, ptr %start30, align 8, !dbg !2422
  %add31 = add i64 %41, %39, !dbg !2422
  store i64 %add31, ptr %start30, align 8, !dbg !2422
  %42 = load ptr, ptr %res, align 8, !dbg !2423
  %start32 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 0, !dbg !2424
  %43 = load i64, ptr %start32, align 8, !dbg !2424
  %44 = load ptr, ptr %rule.addr, align 8, !dbg !2425
  %size33 = getelementptr inbounds %struct.pnp_port, ptr %44, i32 0, i32 3, !dbg !2426
  %45 = load i64, ptr %size33, align 8, !dbg !2426
  %add34 = add i64 %43, %45, !dbg !2427
  %sub35 = sub i64 %add34, 1, !dbg !2428
  %46 = load ptr, ptr %res, align 8, !dbg !2429
  %end36 = getelementptr inbounds %struct.resource, ptr %46, i32 0, i32 1, !dbg !2430
  store i64 %sub35, ptr %end36, align 8, !dbg !2431
  %47 = load ptr, ptr %res, align 8, !dbg !2432
  %start37 = getelementptr inbounds %struct.resource, ptr %47, i32 0, i32 0, !dbg !2434
  %48 = load i64, ptr %start37, align 8, !dbg !2434
  %49 = load ptr, ptr %rule.addr, align 8, !dbg !2435
  %max = getelementptr inbounds %struct.pnp_port, ptr %49, i32 0, i32 1, !dbg !2436
  %50 = load i64, ptr %max, align 8, !dbg !2436
  %cmp = icmp ugt i64 %48, %50, !dbg !2437
  br i1 %cmp, label %if.then41, label %lor.lhs.false, !dbg !2438

lor.lhs.false:                                    ; preds = %while.body
  %51 = load ptr, ptr %rule.addr, align 8, !dbg !2439
  %align39 = getelementptr inbounds %struct.pnp_port, ptr %51, i32 0, i32 2, !dbg !2440
  %52 = load i64, ptr %align39, align 8, !dbg !2440
  %tobool40 = icmp ne i64 %52, 0, !dbg !2439
  br i1 %tobool40, label %if.end52, label %if.then41, !dbg !2441

if.then41:                                        ; preds = %lor.lhs.false, %while.body
  %53 = load i32, ptr @pnp_debug, align 4, !dbg !2442
  %tobool42 = icmp ne i32 %53, 0, !dbg !2442
  br i1 %tobool42, label %if.then43, label %if.end50, !dbg !2446

if.then43:                                        ; preds = %if.then41
  br label %do.body44, !dbg !2447

do.body44:                                        ; preds = %if.then43
  br label %do.cond45, !dbg !2449

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !2449

do.end46:                                         ; preds = %do.cond45
  %54 = load ptr, ptr %dev.addr, align 8, !dbg !2447
  %dev47 = getelementptr inbounds %struct.pnp_dev, ptr %54, i32 0, i32 0, !dbg !2447
  %55 = load i32, ptr %idx.addr, align 4, !dbg !2447
  %56 = load ptr, ptr %rule.addr, align 8, !dbg !2447
  %min48 = getelementptr inbounds %struct.pnp_port, ptr %56, i32 0, i32 0, !dbg !2447
  %57 = load i64, ptr %min48, align 8, !dbg !2447
  %58 = load ptr, ptr %rule.addr, align 8, !dbg !2447
  %max49 = getelementptr inbounds %struct.pnp_port, ptr %58, i32 0, i32 1, !dbg !2447
  %59 = load i64, ptr %max49, align 8, !dbg !2447
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev47, ptr noundef @.str.15, i32 noundef %55, i64 noundef %57, i64 noundef %59) #12, !dbg !2447
  br label %if.end50, !dbg !2442

if.end50:                                         ; preds = %do.end46, %if.then41
  store i32 0, ptr %tmp51, align 4, !dbg !2442
  %60 = load i32, ptr %tmp51, align 4, !dbg !2446
  store i32 -16, ptr %retval, align 4, !dbg !2451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2451

if.end52:                                         ; preds = %lor.lhs.false
  br label %while.cond, !dbg !2412, !llvm.loop !2452

while.end:                                        ; preds = %while.cond
  br label %__add, !dbg !2412

__add:                                            ; preds = %while.end, %if.end21
  call void @llvm.dbg.label(metadata !2342), !dbg !2454
  %61 = load ptr, ptr %dev.addr, align 8, !dbg !2455
  %62 = load ptr, ptr %res, align 8, !dbg !2456
  %start53 = getelementptr inbounds %struct.resource, ptr %62, i32 0, i32 0, !dbg !2457
  %63 = load i64, ptr %start53, align 8, !dbg !2457
  %64 = load ptr, ptr %res, align 8, !dbg !2458
  %end54 = getelementptr inbounds %struct.resource, ptr %64, i32 0, i32 1, !dbg !2459
  %65 = load i64, ptr %end54, align 8, !dbg !2459
  %66 = load ptr, ptr %res, align 8, !dbg !2460
  %flags55 = getelementptr inbounds %struct.resource, ptr %66, i32 0, i32 3, !dbg !2461
  %67 = load i64, ptr %flags55, align 8, !dbg !2461
  %conv56 = trunc i64 %67 to i32, !dbg !2460
  %call57 = call ptr @pnp_add_io_resource(ptr noundef %61, i64 noundef %63, i64 noundef %65, i32 noundef %conv56) #10, !dbg !2462
  store i32 0, ptr %retval, align 4, !dbg !2463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2463

cleanup:                                          ; preds = %__add, %if.end50, %if.end
  call void @llvm.lifetime.end.p0(i64 64, ptr %local_res) #11, !dbg !2464
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !2464
  %68 = load i32, ptr %retval, align 4, !dbg !2464
  ret i32 %68, !dbg !2464
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_assign_mem(ptr noundef %dev, ptr noundef %rule, i32 noundef %idx) #0 align 16 !dbg !2465 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %rule.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %local_res = alloca %struct.resource, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2470, metadata !DIExpression()), !dbg !2476
  store ptr %rule, ptr %rule.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rule.addr, metadata !2471, metadata !DIExpression()), !dbg !2477
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !2472, metadata !DIExpression()), !dbg !2478
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !2479
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2473, metadata !DIExpression()), !dbg !2480
  call void @llvm.lifetime.start.p0(i64 64, ptr %local_res) #11, !dbg !2479
  call void @llvm.dbg.declare(metadata ptr %local_res, metadata !2474, metadata !DIExpression()), !dbg !2481
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2482
  %1 = load ptr, ptr %rule.addr, align 8, !dbg !2483
  %flags = getelementptr inbounds %struct.pnp_mem, ptr %1, i32 0, i32 4, !dbg !2484
  %2 = load i8, ptr %flags, align 8, !dbg !2484
  %3 = load i32, ptr %idx.addr, align 4, !dbg !2485
  %call = call ptr @pnp_find_resource(ptr noundef %0, i8 noundef zeroext %2, i64 noundef 512, i32 noundef %3) #10, !dbg !2486
  store ptr %call, ptr %res, align 8, !dbg !2487
  %4 = load ptr, ptr %res, align 8, !dbg !2488
  %tobool = icmp ne ptr %4, null, !dbg !2488
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2490

if.then:                                          ; preds = %entry
  %5 = load i32, ptr @pnp_debug, align 4, !dbg !2491
  %tobool1 = icmp ne i32 %5, 0, !dbg !2491
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2495

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !2496

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !2498

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2498

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2496
  %dev3 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 0, !dbg !2496
  %7 = load i32, ptr %idx.addr, align 4, !dbg !2496
  %8 = load ptr, ptr %res, align 8, !dbg !2496
  %start = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 0, !dbg !2496
  %9 = load i64, ptr %start, align 8, !dbg !2496
  %10 = load ptr, ptr %res, align 8, !dbg !2496
  %end = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1, !dbg !2496
  %11 = load i64, ptr %end, align 8, !dbg !2496
  %12 = load ptr, ptr %res, align 8, !dbg !2496
  %flags4 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3, !dbg !2496
  %13 = load i64, ptr %flags4, align 8, !dbg !2496
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev3, ptr noundef @.str.16, i32 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13) #12, !dbg !2496
  br label %if.end, !dbg !2491

if.end:                                           ; preds = %do.end, %if.then
  store i32 0, ptr %tmp, align 4, !dbg !2491
  %14 = load i32, ptr %tmp, align 4, !dbg !2495
  store i32 0, ptr %retval, align 4, !dbg !2500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2500

if.end5:                                          ; preds = %entry
  store ptr %local_res, ptr %res, align 8, !dbg !2501
  %15 = load ptr, ptr %rule.addr, align 8, !dbg !2502
  %flags6 = getelementptr inbounds %struct.pnp_mem, ptr %15, i32 0, i32 4, !dbg !2503
  %16 = load i8, ptr %flags6, align 8, !dbg !2503
  %conv = zext i8 %16 to i32, !dbg !2502
  %or = or i32 %conv, 1073741824, !dbg !2504
  %conv7 = sext i32 %or to i64, !dbg !2502
  %17 = load ptr, ptr %res, align 8, !dbg !2505
  %flags8 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 3, !dbg !2506
  store i64 %conv7, ptr %flags8, align 8, !dbg !2507
  %18 = load ptr, ptr %res, align 8, !dbg !2508
  %start9 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 0, !dbg !2509
  store i64 0, ptr %start9, align 8, !dbg !2510
  %19 = load ptr, ptr %res, align 8, !dbg !2511
  %end10 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1, !dbg !2512
  store i64 0, ptr %end10, align 8, !dbg !2513
  %20 = load ptr, ptr %rule.addr, align 8, !dbg !2514
  %flags11 = getelementptr inbounds %struct.pnp_mem, ptr %20, i32 0, i32 4, !dbg !2516
  %21 = load i8, ptr %flags11, align 8, !dbg !2516
  %conv12 = zext i8 %21 to i32, !dbg !2514
  %and = and i32 %conv12, 1, !dbg !2517
  %tobool13 = icmp ne i32 %and, 0, !dbg !2517
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !2518

if.then14:                                        ; preds = %if.end5
  %22 = load ptr, ptr %res, align 8, !dbg !2519
  %flags15 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 3, !dbg !2520
  %23 = load i64, ptr %flags15, align 8, !dbg !2521
  %or16 = or i64 %23, 16384, !dbg !2521
  store i64 %or16, ptr %flags15, align 8, !dbg !2521
  br label %if.end17, !dbg !2519

if.end17:                                         ; preds = %if.then14, %if.end5
  %24 = load ptr, ptr %rule.addr, align 8, !dbg !2522
  %flags18 = getelementptr inbounds %struct.pnp_mem, ptr %24, i32 0, i32 4, !dbg !2524
  %25 = load i8, ptr %flags18, align 8, !dbg !2524
  %conv19 = zext i8 %25 to i32, !dbg !2522
  %and20 = and i32 %conv19, 4, !dbg !2525
  %tobool21 = icmp ne i32 %and20, 0, !dbg !2525
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !2526

if.then22:                                        ; preds = %if.end17
  %26 = load ptr, ptr %res, align 8, !dbg !2527
  %flags23 = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 3, !dbg !2528
  %27 = load i64, ptr %flags23, align 8, !dbg !2529
  %or24 = or i64 %27, 65536, !dbg !2529
  store i64 %or24, ptr %flags23, align 8, !dbg !2529
  br label %if.end25, !dbg !2527

if.end25:                                         ; preds = %if.then22, %if.end17
  %28 = load ptr, ptr %rule.addr, align 8, !dbg !2530
  %flags26 = getelementptr inbounds %struct.pnp_mem, ptr %28, i32 0, i32 4, !dbg !2532
  %29 = load i8, ptr %flags26, align 8, !dbg !2532
  %conv27 = zext i8 %29 to i32, !dbg !2530
  %and28 = and i32 %conv27, 32, !dbg !2533
  %tobool29 = icmp ne i32 %and28, 0, !dbg !2533
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !2534

if.then30:                                        ; preds = %if.end25
  %30 = load ptr, ptr %res, align 8, !dbg !2535
  %flags31 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 3, !dbg !2536
  %31 = load i64, ptr %flags31, align 8, !dbg !2537
  %or32 = or i64 %31, 131072, !dbg !2537
  store i64 %or32, ptr %flags31, align 8, !dbg !2537
  br label %if.end33, !dbg !2535

if.end33:                                         ; preds = %if.then30, %if.end25
  %32 = load ptr, ptr %rule.addr, align 8, !dbg !2538
  %size = getelementptr inbounds %struct.pnp_mem, ptr %32, i32 0, i32 3, !dbg !2540
  %33 = load i64, ptr %size, align 8, !dbg !2540
  %tobool34 = icmp ne i64 %33, 0, !dbg !2538
  br i1 %tobool34, label %if.end46, label %if.then35, !dbg !2541

if.then35:                                        ; preds = %if.end33
  %34 = load ptr, ptr %res, align 8, !dbg !2542
  %flags36 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 3, !dbg !2544
  %35 = load i64, ptr %flags36, align 8, !dbg !2545
  %or37 = or i64 %35, 268435456, !dbg !2545
  store i64 %or37, ptr %flags36, align 8, !dbg !2545
  %36 = load i32, ptr @pnp_debug, align 4, !dbg !2546
  %tobool38 = icmp ne i32 %36, 0, !dbg !2546
  br i1 %tobool38, label %if.then39, label %if.end44, !dbg !2549

if.then39:                                        ; preds = %if.then35
  br label %do.body40, !dbg !2550

do.body40:                                        ; preds = %if.then39
  br label %do.cond41, !dbg !2552

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !2552

do.end42:                                         ; preds = %do.cond41
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !2550
  %dev43 = getelementptr inbounds %struct.pnp_dev, ptr %37, i32 0, i32 0, !dbg !2550
  %38 = load i32, ptr %idx.addr, align 4, !dbg !2550
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev43, ptr noundef @.str.17, i32 noundef %38) #12, !dbg !2550
  br label %if.end44, !dbg !2546

if.end44:                                         ; preds = %do.end42, %if.then35
  store i32 0, ptr %tmp45, align 4, !dbg !2546
  %39 = load i32, ptr %tmp45, align 4, !dbg !2549
  br label %__add, !dbg !2554

if.end46:                                         ; preds = %if.end33
  %40 = load ptr, ptr %rule.addr, align 8, !dbg !2555
  %min = getelementptr inbounds %struct.pnp_mem, ptr %40, i32 0, i32 0, !dbg !2556
  %41 = load i64, ptr %min, align 8, !dbg !2556
  %42 = load ptr, ptr %res, align 8, !dbg !2557
  %start47 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 0, !dbg !2558
  store i64 %41, ptr %start47, align 8, !dbg !2559
  %43 = load ptr, ptr %res, align 8, !dbg !2560
  %start48 = getelementptr inbounds %struct.resource, ptr %43, i32 0, i32 0, !dbg !2561
  %44 = load i64, ptr %start48, align 8, !dbg !2561
  %45 = load ptr, ptr %rule.addr, align 8, !dbg !2562
  %size49 = getelementptr inbounds %struct.pnp_mem, ptr %45, i32 0, i32 3, !dbg !2563
  %46 = load i64, ptr %size49, align 8, !dbg !2563
  %add = add i64 %44, %46, !dbg !2564
  %sub = sub i64 %add, 1, !dbg !2565
  %47 = load ptr, ptr %res, align 8, !dbg !2566
  %end50 = getelementptr inbounds %struct.resource, ptr %47, i32 0, i32 1, !dbg !2567
  store i64 %sub, ptr %end50, align 8, !dbg !2568
  br label %while.cond, !dbg !2569

while.cond:                                       ; preds = %if.end75, %if.end46
  %48 = load ptr, ptr %dev.addr, align 8, !dbg !2570
  %49 = load ptr, ptr %res, align 8, !dbg !2571
  %call51 = call i32 @pnp_check_mem(ptr noundef %48, ptr noundef %49) #10, !dbg !2572
  %tobool52 = icmp ne i32 %call51, 0, !dbg !2573
  %lnot = xor i1 %tobool52, true, !dbg !2573
  br i1 %lnot, label %while.body, label %while.end, !dbg !2569

while.body:                                       ; preds = %while.cond
  %50 = load ptr, ptr %rule.addr, align 8, !dbg !2574
  %align = getelementptr inbounds %struct.pnp_mem, ptr %50, i32 0, i32 2, !dbg !2576
  %51 = load i64, ptr %align, align 8, !dbg !2576
  %52 = load ptr, ptr %res, align 8, !dbg !2577
  %start53 = getelementptr inbounds %struct.resource, ptr %52, i32 0, i32 0, !dbg !2578
  %53 = load i64, ptr %start53, align 8, !dbg !2579
  %add54 = add i64 %53, %51, !dbg !2579
  store i64 %add54, ptr %start53, align 8, !dbg !2579
  %54 = load ptr, ptr %res, align 8, !dbg !2580
  %start55 = getelementptr inbounds %struct.resource, ptr %54, i32 0, i32 0, !dbg !2581
  %55 = load i64, ptr %start55, align 8, !dbg !2581
  %56 = load ptr, ptr %rule.addr, align 8, !dbg !2582
  %size56 = getelementptr inbounds %struct.pnp_mem, ptr %56, i32 0, i32 3, !dbg !2583
  %57 = load i64, ptr %size56, align 8, !dbg !2583
  %add57 = add i64 %55, %57, !dbg !2584
  %sub58 = sub i64 %add57, 1, !dbg !2585
  %58 = load ptr, ptr %res, align 8, !dbg !2586
  %end59 = getelementptr inbounds %struct.resource, ptr %58, i32 0, i32 1, !dbg !2587
  store i64 %sub58, ptr %end59, align 8, !dbg !2588
  %59 = load ptr, ptr %res, align 8, !dbg !2589
  %start60 = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 0, !dbg !2591
  %60 = load i64, ptr %start60, align 8, !dbg !2591
  %61 = load ptr, ptr %rule.addr, align 8, !dbg !2592
  %max = getelementptr inbounds %struct.pnp_mem, ptr %61, i32 0, i32 1, !dbg !2593
  %62 = load i64, ptr %max, align 8, !dbg !2593
  %cmp = icmp ugt i64 %60, %62, !dbg !2594
  br i1 %cmp, label %if.then64, label %lor.lhs.false, !dbg !2595

lor.lhs.false:                                    ; preds = %while.body
  %63 = load ptr, ptr %rule.addr, align 8, !dbg !2596
  %align62 = getelementptr inbounds %struct.pnp_mem, ptr %63, i32 0, i32 2, !dbg !2597
  %64 = load i64, ptr %align62, align 8, !dbg !2597
  %tobool63 = icmp ne i64 %64, 0, !dbg !2596
  br i1 %tobool63, label %if.end75, label %if.then64, !dbg !2598

if.then64:                                        ; preds = %lor.lhs.false, %while.body
  %65 = load i32, ptr @pnp_debug, align 4, !dbg !2599
  %tobool65 = icmp ne i32 %65, 0, !dbg !2599
  br i1 %tobool65, label %if.then66, label %if.end73, !dbg !2603

if.then66:                                        ; preds = %if.then64
  br label %do.body67, !dbg !2604

do.body67:                                        ; preds = %if.then66
  br label %do.cond68, !dbg !2606

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !2606

do.end69:                                         ; preds = %do.cond68
  %66 = load ptr, ptr %dev.addr, align 8, !dbg !2604
  %dev70 = getelementptr inbounds %struct.pnp_dev, ptr %66, i32 0, i32 0, !dbg !2604
  %67 = load i32, ptr %idx.addr, align 4, !dbg !2604
  %68 = load ptr, ptr %rule.addr, align 8, !dbg !2604
  %min71 = getelementptr inbounds %struct.pnp_mem, ptr %68, i32 0, i32 0, !dbg !2604
  %69 = load i64, ptr %min71, align 8, !dbg !2604
  %70 = load ptr, ptr %rule.addr, align 8, !dbg !2604
  %max72 = getelementptr inbounds %struct.pnp_mem, ptr %70, i32 0, i32 1, !dbg !2604
  %71 = load i64, ptr %max72, align 8, !dbg !2604
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev70, ptr noundef @.str.18, i32 noundef %67, i64 noundef %69, i64 noundef %71) #12, !dbg !2604
  br label %if.end73, !dbg !2599

if.end73:                                         ; preds = %do.end69, %if.then64
  store i32 0, ptr %tmp74, align 4, !dbg !2599
  %72 = load i32, ptr %tmp74, align 4, !dbg !2603
  store i32 -16, ptr %retval, align 4, !dbg !2608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2608

if.end75:                                         ; preds = %lor.lhs.false
  br label %while.cond, !dbg !2569, !llvm.loop !2609

while.end:                                        ; preds = %while.cond
  br label %__add, !dbg !2569

__add:                                            ; preds = %while.end, %if.end44
  call void @llvm.dbg.label(metadata !2475), !dbg !2611
  %73 = load ptr, ptr %dev.addr, align 8, !dbg !2612
  %74 = load ptr, ptr %res, align 8, !dbg !2613
  %start76 = getelementptr inbounds %struct.resource, ptr %74, i32 0, i32 0, !dbg !2614
  %75 = load i64, ptr %start76, align 8, !dbg !2614
  %76 = load ptr, ptr %res, align 8, !dbg !2615
  %end77 = getelementptr inbounds %struct.resource, ptr %76, i32 0, i32 1, !dbg !2616
  %77 = load i64, ptr %end77, align 8, !dbg !2616
  %78 = load ptr, ptr %res, align 8, !dbg !2617
  %flags78 = getelementptr inbounds %struct.resource, ptr %78, i32 0, i32 3, !dbg !2618
  %79 = load i64, ptr %flags78, align 8, !dbg !2618
  %conv79 = trunc i64 %79 to i32, !dbg !2617
  %call80 = call ptr @pnp_add_mem_resource(ptr noundef %73, i64 noundef %75, i64 noundef %77, i32 noundef %conv79) #10, !dbg !2619
  store i32 0, ptr %retval, align 4, !dbg !2620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2620

cleanup:                                          ; preds = %__add, %if.end73, %if.end
  call void @llvm.lifetime.end.p0(i64 64, ptr %local_res) #11, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !2621
  %80 = load i32, ptr %retval, align 4, !dbg !2621
  ret i32 %80, !dbg !2621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_assign_irq(ptr noundef %dev, ptr noundef %rule, i32 noundef %idx) #0 align 16 !dbg !264 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %rule.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %local_res = alloca %struct.resource, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %tmp103 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1883, metadata !DIExpression()), !dbg !2622
  store ptr %rule, ptr %rule.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rule.addr, metadata !1884, metadata !DIExpression()), !dbg !2623
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1885, metadata !DIExpression()), !dbg !2624
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1886, metadata !DIExpression()), !dbg !2626
  call void @llvm.lifetime.start.p0(i64 64, ptr %local_res) #11, !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %local_res, metadata !1887, metadata !DIExpression()), !dbg !2627
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !2628
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1888, metadata !DIExpression()), !dbg !2629
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2630
  %1 = load ptr, ptr %rule.addr, align 8, !dbg !2631
  %flags = getelementptr inbounds %struct.pnp_irq, ptr %1, i32 0, i32 1, !dbg !2632
  %2 = load i8, ptr %flags, align 8, !dbg !2632
  %3 = load i32, ptr %idx.addr, align 4, !dbg !2633
  %call = call ptr @pnp_find_resource(ptr noundef %0, i8 noundef zeroext %2, i64 noundef 1024, i32 noundef %3) #10, !dbg !2634
  store ptr %call, ptr %res, align 8, !dbg !2635
  %4 = load ptr, ptr %res, align 8, !dbg !2636
  %tobool = icmp ne ptr %4, null, !dbg !2636
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2638

if.then:                                          ; preds = %entry
  %5 = load i32, ptr @pnp_debug, align 4, !dbg !2639
  %tobool1 = icmp ne i32 %5, 0, !dbg !2639
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2643

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !2644

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !2646

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2646

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2644
  %dev3 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 0, !dbg !2644
  %7 = load i32, ptr %idx.addr, align 4, !dbg !2644
  %8 = load ptr, ptr %res, align 8, !dbg !2644
  %start = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 0, !dbg !2644
  %9 = load i64, ptr %start, align 8, !dbg !2644
  %conv = trunc i64 %9 to i32, !dbg !2644
  %10 = load ptr, ptr %res, align 8, !dbg !2644
  %flags4 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3, !dbg !2644
  %11 = load i64, ptr %flags4, align 8, !dbg !2644
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev3, ptr noundef @.str.19, i32 noundef %7, i32 noundef %conv, i64 noundef %11) #12, !dbg !2644
  br label %if.end, !dbg !2639

if.end:                                           ; preds = %do.end, %if.then
  store i32 0, ptr %tmp, align 4, !dbg !2639
  %12 = load i32, ptr %tmp, align 4, !dbg !2643
  store i32 0, ptr %retval, align 4, !dbg !2648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2648

if.end5:                                          ; preds = %entry
  store ptr %local_res, ptr %res, align 8, !dbg !2649
  %13 = load ptr, ptr %rule.addr, align 8, !dbg !2650
  %flags6 = getelementptr inbounds %struct.pnp_irq, ptr %13, i32 0, i32 1, !dbg !2651
  %14 = load i8, ptr %flags6, align 8, !dbg !2651
  %conv7 = zext i8 %14 to i32, !dbg !2650
  %or = or i32 %conv7, 1073741824, !dbg !2652
  %conv8 = sext i32 %or to i64, !dbg !2650
  %15 = load ptr, ptr %res, align 8, !dbg !2653
  %flags9 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3, !dbg !2654
  store i64 %conv8, ptr %flags9, align 8, !dbg !2655
  %16 = load ptr, ptr %res, align 8, !dbg !2656
  %start10 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 0, !dbg !2657
  store i64 -1, ptr %start10, align 8, !dbg !2658
  %17 = load ptr, ptr %res, align 8, !dbg !2659
  %end = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1, !dbg !2660
  store i64 -1, ptr %end, align 8, !dbg !2661
  %18 = load ptr, ptr %rule.addr, align 8, !dbg !2662
  %map = getelementptr inbounds %struct.pnp_irq, ptr %18, i32 0, i32 0, !dbg !2664
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map, i32 0, i32 0, !dbg !2665
  %arraydecay = getelementptr inbounds [4 x i64], ptr %bits, i64 0, i64 0, !dbg !2662
  %call11 = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef 256) #10, !dbg !2666
  br i1 %call11, label %if.then12, label %if.end23, !dbg !2667

if.then12:                                        ; preds = %if.end5
  %19 = load ptr, ptr %res, align 8, !dbg !2668
  %flags13 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 3, !dbg !2670
  %20 = load i64, ptr %flags13, align 8, !dbg !2671
  %or14 = or i64 %20, 268435456, !dbg !2671
  store i64 %or14, ptr %flags13, align 8, !dbg !2671
  %21 = load i32, ptr @pnp_debug, align 4, !dbg !2672
  %tobool15 = icmp ne i32 %21, 0, !dbg !2672
  br i1 %tobool15, label %if.then16, label %if.end21, !dbg !2675

if.then16:                                        ; preds = %if.then12
  br label %do.body17, !dbg !2676

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !2678

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2678

do.end19:                                         ; preds = %do.cond18
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !2676
  %dev20 = getelementptr inbounds %struct.pnp_dev, ptr %22, i32 0, i32 0, !dbg !2676
  %23 = load i32, ptr %idx.addr, align 4, !dbg !2676
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev20, ptr noundef @.str.20, i32 noundef %23) #12, !dbg !2676
  br label %if.end21, !dbg !2672

if.end21:                                         ; preds = %do.end19, %if.then12
  store i32 0, ptr %tmp22, align 4, !dbg !2672
  %24 = load i32, ptr %tmp22, align 4, !dbg !2675
  br label %__add, !dbg !2680

if.end23:                                         ; preds = %if.end5
  %25 = load ptr, ptr %rule.addr, align 8, !dbg !2681
  %map24 = getelementptr inbounds %struct.pnp_irq, ptr %25, i32 0, i32 0, !dbg !2682
  %bits25 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map24, i32 0, i32 0, !dbg !2683
  %arraydecay26 = getelementptr inbounds [4 x i64], ptr %bits25, i64 0, i64 0, !dbg !2681
  %call27 = call i64 @find_next_bit(ptr noundef %arraydecay26, i64 noundef 256, i64 noundef 16) #10, !dbg !2684
  %26 = load ptr, ptr %res, align 8, !dbg !2685
  %start28 = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 0, !dbg !2686
  store i64 %call27, ptr %start28, align 8, !dbg !2687
  %27 = load ptr, ptr %res, align 8, !dbg !2688
  %start29 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 0, !dbg !2690
  %28 = load i64, ptr %start29, align 8, !dbg !2690
  %cmp = icmp ult i64 %28, 256, !dbg !2691
  br i1 %cmp, label %if.then31, label %if.end34, !dbg !2692

if.then31:                                        ; preds = %if.end23
  %29 = load ptr, ptr %res, align 8, !dbg !2693
  %start32 = getelementptr inbounds %struct.resource, ptr %29, i32 0, i32 0, !dbg !2695
  %30 = load i64, ptr %start32, align 8, !dbg !2695
  %31 = load ptr, ptr %res, align 8, !dbg !2696
  %end33 = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 1, !dbg !2697
  store i64 %30, ptr %end33, align 8, !dbg !2698
  br label %__add, !dbg !2699

if.end34:                                         ; preds = %if.end23
  store i32 0, ptr %i, align 4, !dbg !2700
  br label %for.cond, !dbg !2702

for.cond:                                         ; preds = %for.inc, %if.end34
  %32 = load i32, ptr %i, align 4, !dbg !2703
  %cmp35 = icmp slt i32 %32, 16, !dbg !2705
  br i1 %cmp35, label %for.body, label %for.end, !dbg !2706

for.body:                                         ; preds = %for.cond
  %33 = load i32, ptr %i, align 4, !dbg !2707
  %idxprom = sext i32 %33 to i64, !dbg !2707
  %arrayidx = getelementptr [16 x i16], ptr @pnp_assign_irq.xtab, i64 0, i64 %idxprom, !dbg !2707
  %34 = load i16, ptr %arrayidx, align 2, !dbg !2707
  %35 = call i1 @llvm.is.constant.i16(i16 %34), !dbg !2707
  br i1 %35, label %land.lhs.true, label %cond.false, !dbg !2707

land.lhs.true:                                    ; preds = %for.body
  %36 = load ptr, ptr %rule.addr, align 8, !dbg !2707
  %map37 = getelementptr inbounds %struct.pnp_irq, ptr %36, i32 0, i32 0, !dbg !2707
  %bits38 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map37, i32 0, i32 0, !dbg !2707
  %arraydecay39 = getelementptr inbounds [4 x i64], ptr %bits38, i64 0, i64 0, !dbg !2707
  %37 = ptrtoint ptr %arraydecay39 to i64, !dbg !2707
  %cmp40 = icmp ne i64 %37, 0, !dbg !2707
  %conv41 = zext i1 %cmp40 to i32, !dbg !2707
  %38 = call i1 @llvm.is.constant.i32(i32 %conv41), !dbg !2707
  br i1 %38, label %land.lhs.true42, label %cond.false, !dbg !2707

land.lhs.true42:                                  ; preds = %land.lhs.true
  %39 = load ptr, ptr %rule.addr, align 8, !dbg !2707
  %map43 = getelementptr inbounds %struct.pnp_irq, ptr %39, i32 0, i32 0, !dbg !2707
  %bits44 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map43, i32 0, i32 0, !dbg !2707
  %arraydecay45 = getelementptr inbounds [4 x i64], ptr %bits44, i64 0, i64 0, !dbg !2707
  %40 = ptrtoint ptr %arraydecay45 to i64, !dbg !2707
  %cmp46 = icmp ne i64 %40, 0, !dbg !2707
  br i1 %cmp46, label %land.lhs.true48, label %cond.false, !dbg !2707

land.lhs.true48:                                  ; preds = %land.lhs.true42
  %41 = load ptr, ptr %rule.addr, align 8, !dbg !2707
  %map49 = getelementptr inbounds %struct.pnp_irq, ptr %41, i32 0, i32 0, !dbg !2707
  %bits50 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map49, i32 0, i32 0, !dbg !2707
  %arraydecay51 = getelementptr inbounds [4 x i64], ptr %bits50, i64 0, i64 0, !dbg !2707
  %42 = load i64, ptr %arraydecay51, align 8, !dbg !2707
  %43 = call i1 @llvm.is.constant.i64(i64 %42), !dbg !2707
  br i1 %43, label %cond.true, label %cond.false, !dbg !2710

cond.true:                                        ; preds = %land.lhs.true48
  %44 = load i32, ptr %i, align 4, !dbg !2707
  %idxprom52 = sext i32 %44 to i64, !dbg !2707
  %arrayidx53 = getelementptr [16 x i16], ptr @pnp_assign_irq.xtab, i64 0, i64 %idxprom52, !dbg !2707
  %45 = load i16, ptr %arrayidx53, align 2, !dbg !2707
  %conv54 = zext i16 %45 to i64, !dbg !2707
  %46 = load ptr, ptr %rule.addr, align 8, !dbg !2707
  %map55 = getelementptr inbounds %struct.pnp_irq, ptr %46, i32 0, i32 0, !dbg !2707
  %bits56 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map55, i32 0, i32 0, !dbg !2707
  %arraydecay57 = getelementptr inbounds [4 x i64], ptr %bits56, i64 0, i64 0, !dbg !2707
  %call58 = call zeroext i1 @const_test_bit(i64 noundef %conv54, ptr noundef %arraydecay57) #10, !dbg !2707
  br i1 %call58, label %if.then68, label %if.end78, !dbg !2707

cond.false:                                       ; preds = %land.lhs.true48, %land.lhs.true42, %land.lhs.true, %for.body
  %47 = load i32, ptr %i, align 4, !dbg !2707
  %idxprom60 = sext i32 %47 to i64, !dbg !2707
  %arrayidx61 = getelementptr [16 x i16], ptr @pnp_assign_irq.xtab, i64 0, i64 %idxprom60, !dbg !2707
  %48 = load i16, ptr %arrayidx61, align 2, !dbg !2707
  %conv62 = zext i16 %48 to i64, !dbg !2707
  %49 = load ptr, ptr %rule.addr, align 8, !dbg !2707
  %map63 = getelementptr inbounds %struct.pnp_irq, ptr %49, i32 0, i32 0, !dbg !2707
  %bits64 = getelementptr inbounds %struct.pnp_irq_mask_t, ptr %map63, i32 0, i32 0, !dbg !2707
  %arraydecay65 = getelementptr inbounds [4 x i64], ptr %bits64, i64 0, i64 0, !dbg !2707
  %call66 = call zeroext i1 @_test_bit(i64 noundef %conv62, ptr noundef %arraydecay65) #10, !dbg !2707
  br i1 %call66, label %if.then68, label %if.end78, !dbg !2710

if.then68:                                        ; preds = %cond.false, %cond.true
  %50 = load i32, ptr %i, align 4, !dbg !2711
  %idxprom69 = sext i32 %50 to i64, !dbg !2713
  %arrayidx70 = getelementptr [16 x i16], ptr @pnp_assign_irq.xtab, i64 0, i64 %idxprom69, !dbg !2713
  %51 = load i16, ptr %arrayidx70, align 2, !dbg !2713
  %conv71 = zext i16 %51 to i64, !dbg !2713
  %52 = load ptr, ptr %res, align 8, !dbg !2714
  %end72 = getelementptr inbounds %struct.resource, ptr %52, i32 0, i32 1, !dbg !2715
  store i64 %conv71, ptr %end72, align 8, !dbg !2716
  %53 = load ptr, ptr %res, align 8, !dbg !2717
  %start73 = getelementptr inbounds %struct.resource, ptr %53, i32 0, i32 0, !dbg !2718
  store i64 %conv71, ptr %start73, align 8, !dbg !2719
  %54 = load ptr, ptr %dev.addr, align 8, !dbg !2720
  %55 = load ptr, ptr %res, align 8, !dbg !2722
  %call74 = call i32 @pnp_check_irq(ptr noundef %54, ptr noundef %55) #10, !dbg !2723
  %tobool75 = icmp ne i32 %call74, 0, !dbg !2723
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !2724

if.then76:                                        ; preds = %if.then68
  br label %__add, !dbg !2725

if.end77:                                         ; preds = %if.then68
  br label %if.end78, !dbg !2726

if.end78:                                         ; preds = %if.end77, %cond.false, %cond.true
  br label %for.inc, !dbg !2727

for.inc:                                          ; preds = %if.end78
  %56 = load i32, ptr %i, align 4, !dbg !2728
  %inc = add i32 %56, 1, !dbg !2728
  store i32 %inc, ptr %i, align 4, !dbg !2728
  br label %for.cond, !dbg !2729, !llvm.loop !2730

for.end:                                          ; preds = %for.cond
  %57 = load ptr, ptr %rule.addr, align 8, !dbg !2732
  %flags79 = getelementptr inbounds %struct.pnp_irq, ptr %57, i32 0, i32 1, !dbg !2734
  %58 = load i8, ptr %flags79, align 8, !dbg !2734
  %conv80 = zext i8 %58 to i32, !dbg !2732
  %and = and i32 %conv80, 32, !dbg !2735
  %tobool81 = icmp ne i32 %and, 0, !dbg !2735
  br i1 %tobool81, label %if.then82, label %if.end95, !dbg !2736

if.then82:                                        ; preds = %for.end
  %59 = load ptr, ptr %res, align 8, !dbg !2737
  %start83 = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 0, !dbg !2739
  store i64 -1, ptr %start83, align 8, !dbg !2740
  %60 = load ptr, ptr %res, align 8, !dbg !2741
  %end84 = getelementptr inbounds %struct.resource, ptr %60, i32 0, i32 1, !dbg !2742
  store i64 -1, ptr %end84, align 8, !dbg !2743
  %61 = load ptr, ptr %res, align 8, !dbg !2744
  %flags85 = getelementptr inbounds %struct.resource, ptr %61, i32 0, i32 3, !dbg !2745
  %62 = load i64, ptr %flags85, align 8, !dbg !2746
  %or86 = or i64 %62, 268435456, !dbg !2746
  store i64 %or86, ptr %flags85, align 8, !dbg !2746
  %63 = load i32, ptr @pnp_debug, align 4, !dbg !2747
  %tobool87 = icmp ne i32 %63, 0, !dbg !2747
  br i1 %tobool87, label %if.then88, label %if.end93, !dbg !2750

if.then88:                                        ; preds = %if.then82
  br label %do.body89, !dbg !2751

do.body89:                                        ; preds = %if.then88
  br label %do.cond90, !dbg !2753

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !2753

do.end91:                                         ; preds = %do.cond90
  %64 = load ptr, ptr %dev.addr, align 8, !dbg !2751
  %dev92 = getelementptr inbounds %struct.pnp_dev, ptr %64, i32 0, i32 0, !dbg !2751
  %65 = load i32, ptr %idx.addr, align 4, !dbg !2751
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev92, ptr noundef @.str.21, i32 noundef %65) #12, !dbg !2751
  br label %if.end93, !dbg !2747

if.end93:                                         ; preds = %do.end91, %if.then82
  store i32 0, ptr %tmp94, align 4, !dbg !2747
  %66 = load i32, ptr %tmp94, align 4, !dbg !2750
  br label %__add, !dbg !2755

if.end95:                                         ; preds = %for.end
  %67 = load i32, ptr @pnp_debug, align 4, !dbg !2756
  %tobool96 = icmp ne i32 %67, 0, !dbg !2756
  br i1 %tobool96, label %if.then97, label %if.end102, !dbg !2759

if.then97:                                        ; preds = %if.end95
  br label %do.body98, !dbg !2760

do.body98:                                        ; preds = %if.then97
  br label %do.cond99, !dbg !2762

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !2762

do.end100:                                        ; preds = %do.cond99
  %68 = load ptr, ptr %dev.addr, align 8, !dbg !2760
  %dev101 = getelementptr inbounds %struct.pnp_dev, ptr %68, i32 0, i32 0, !dbg !2760
  %69 = load i32, ptr %idx.addr, align 4, !dbg !2760
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev101, ptr noundef @.str.22, i32 noundef %69) #12, !dbg !2760
  br label %if.end102, !dbg !2756

if.end102:                                        ; preds = %do.end100, %if.end95
  store i32 0, ptr %tmp103, align 4, !dbg !2756
  %70 = load i32, ptr %tmp103, align 4, !dbg !2759
  store i32 -16, ptr %retval, align 4, !dbg !2764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2764

__add:                                            ; preds = %if.end93, %if.then76, %if.then31, %if.end21
  call void @llvm.dbg.label(metadata !1889), !dbg !2765
  %71 = load ptr, ptr %dev.addr, align 8, !dbg !2766
  %72 = load ptr, ptr %res, align 8, !dbg !2767
  %start104 = getelementptr inbounds %struct.resource, ptr %72, i32 0, i32 0, !dbg !2768
  %73 = load i64, ptr %start104, align 8, !dbg !2768
  %conv105 = trunc i64 %73 to i32, !dbg !2767
  %74 = load ptr, ptr %res, align 8, !dbg !2769
  %flags106 = getelementptr inbounds %struct.resource, ptr %74, i32 0, i32 3, !dbg !2770
  %75 = load i64, ptr %flags106, align 8, !dbg !2770
  %conv107 = trunc i64 %75 to i32, !dbg !2769
  %call108 = call ptr @pnp_add_irq_resource(ptr noundef %71, i32 noundef %conv105, i32 noundef %conv107) #10, !dbg !2771
  store i32 0, ptr %retval, align 4, !dbg !2772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2772

cleanup:                                          ; preds = %__add, %if.end102, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 64, ptr %local_res) #11, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !2773
  %76 = load i32, ptr %retval, align 4, !dbg !2773
  ret i32 %76, !dbg !2773
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_assign_dma(ptr noundef %dev, ptr noundef %rule, i32 noundef %idx) #0 align 16 !dbg !1907 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %rule.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %local_res = alloca %struct.resource, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1912, metadata !DIExpression()), !dbg !2774
  store ptr %rule, ptr %rule.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rule.addr, metadata !1913, metadata !DIExpression()), !dbg !2775
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1914, metadata !DIExpression()), !dbg !2776
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !2777
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1915, metadata !DIExpression()), !dbg !2778
  call void @llvm.lifetime.start.p0(i64 64, ptr %local_res) #11, !dbg !2777
  call void @llvm.dbg.declare(metadata ptr %local_res, metadata !1916, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !2780
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1917, metadata !DIExpression()), !dbg !2781
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2782
  %1 = load ptr, ptr %rule.addr, align 8, !dbg !2783
  %flags = getelementptr inbounds %struct.pnp_dma, ptr %1, i32 0, i32 1, !dbg !2784
  %2 = load i8, ptr %flags, align 1, !dbg !2784
  %3 = load i32, ptr %idx.addr, align 4, !dbg !2785
  %call = call ptr @pnp_find_resource(ptr noundef %0, i8 noundef zeroext %2, i64 noundef 2048, i32 noundef %3) #10, !dbg !2786
  store ptr %call, ptr %res, align 8, !dbg !2787
  %4 = load ptr, ptr %res, align 8, !dbg !2788
  %tobool = icmp ne ptr %4, null, !dbg !2788
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2790

if.then:                                          ; preds = %entry
  %5 = load i32, ptr @pnp_debug, align 4, !dbg !2791
  %tobool1 = icmp ne i32 %5, 0, !dbg !2791
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2795

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !2796

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !2798

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2798

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2796
  %dev3 = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 0, !dbg !2796
  %7 = load i32, ptr %idx.addr, align 4, !dbg !2796
  %8 = load ptr, ptr %res, align 8, !dbg !2796
  %start = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 0, !dbg !2796
  %9 = load i64, ptr %start, align 8, !dbg !2796
  %conv = trunc i64 %9 to i32, !dbg !2796
  %10 = load ptr, ptr %res, align 8, !dbg !2796
  %flags4 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3, !dbg !2796
  %11 = load i64, ptr %flags4, align 8, !dbg !2796
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev3, ptr noundef @.str.23, i32 noundef %7, i32 noundef %conv, i64 noundef %11) #12, !dbg !2796
  br label %if.end, !dbg !2791

if.end:                                           ; preds = %do.end, %if.then
  store i32 0, ptr %tmp, align 4, !dbg !2791
  %12 = load i32, ptr %tmp, align 4, !dbg !2795
  store i32 0, ptr %retval, align 4, !dbg !2800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2800

if.end5:                                          ; preds = %entry
  store ptr %local_res, ptr %res, align 8, !dbg !2801
  %13 = load ptr, ptr %rule.addr, align 8, !dbg !2802
  %flags6 = getelementptr inbounds %struct.pnp_dma, ptr %13, i32 0, i32 1, !dbg !2803
  %14 = load i8, ptr %flags6, align 1, !dbg !2803
  %conv7 = zext i8 %14 to i32, !dbg !2802
  %or = or i32 %conv7, 1073741824, !dbg !2804
  %conv8 = sext i32 %or to i64, !dbg !2802
  %15 = load ptr, ptr %res, align 8, !dbg !2805
  %flags9 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3, !dbg !2806
  store i64 %conv8, ptr %flags9, align 8, !dbg !2807
  %16 = load ptr, ptr %res, align 8, !dbg !2808
  %start10 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 0, !dbg !2809
  store i64 -1, ptr %start10, align 8, !dbg !2810
  %17 = load ptr, ptr %res, align 8, !dbg !2811
  %end = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1, !dbg !2812
  store i64 -1, ptr %end, align 8, !dbg !2813
  %18 = load ptr, ptr %rule.addr, align 8, !dbg !2814
  %map = getelementptr inbounds %struct.pnp_dma, ptr %18, i32 0, i32 0, !dbg !2816
  %19 = load i8, ptr %map, align 1, !dbg !2816
  %tobool11 = icmp ne i8 %19, 0, !dbg !2814
  br i1 %tobool11, label %if.end23, label %if.then12, !dbg !2817

if.then12:                                        ; preds = %if.end5
  %20 = load ptr, ptr %res, align 8, !dbg !2818
  %flags13 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 3, !dbg !2820
  %21 = load i64, ptr %flags13, align 8, !dbg !2821
  %or14 = or i64 %21, 268435456, !dbg !2821
  store i64 %or14, ptr %flags13, align 8, !dbg !2821
  %22 = load i32, ptr @pnp_debug, align 4, !dbg !2822
  %tobool15 = icmp ne i32 %22, 0, !dbg !2822
  br i1 %tobool15, label %if.then16, label %if.end21, !dbg !2825

if.then16:                                        ; preds = %if.then12
  br label %do.body17, !dbg !2826

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !2828

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2828

do.end19:                                         ; preds = %do.cond18
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2826
  %dev20 = getelementptr inbounds %struct.pnp_dev, ptr %23, i32 0, i32 0, !dbg !2826
  %24 = load i32, ptr %idx.addr, align 4, !dbg !2826
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev20, ptr noundef @.str.24, i32 noundef %24) #12, !dbg !2826
  br label %if.end21, !dbg !2822

if.end21:                                         ; preds = %do.end19, %if.then12
  store i32 0, ptr %tmp22, align 4, !dbg !2822
  %25 = load i32, ptr %tmp22, align 4, !dbg !2825
  br label %__add, !dbg !2830

if.end23:                                         ; preds = %if.end5
  store i32 0, ptr %i, align 4, !dbg !2831
  br label %for.cond, !dbg !2833

for.cond:                                         ; preds = %for.inc, %if.end23
  %26 = load i32, ptr %i, align 4, !dbg !2834
  %cmp = icmp slt i32 %26, 8, !dbg !2836
  br i1 %cmp, label %for.body, label %for.end, !dbg !2837

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %rule.addr, align 8, !dbg !2838
  %map25 = getelementptr inbounds %struct.pnp_dma, ptr %27, i32 0, i32 0, !dbg !2841
  %28 = load i8, ptr %map25, align 1, !dbg !2841
  %conv26 = zext i8 %28 to i32, !dbg !2838
  %29 = load i32, ptr %i, align 4, !dbg !2842
  %idxprom = sext i32 %29 to i64, !dbg !2843
  %arrayidx = getelementptr [8 x i16], ptr @pnp_assign_dma.xtab, i64 0, i64 %idxprom, !dbg !2843
  %30 = load i16, ptr %arrayidx, align 2, !dbg !2843
  %conv27 = zext i16 %30 to i32, !dbg !2843
  %shl = shl i32 1, %conv27, !dbg !2844
  %and = and i32 %conv26, %shl, !dbg !2845
  %tobool28 = icmp ne i32 %and, 0, !dbg !2845
  br i1 %tobool28, label %if.then29, label %if.end39, !dbg !2846

if.then29:                                        ; preds = %for.body
  %31 = load i32, ptr %i, align 4, !dbg !2847
  %idxprom30 = sext i32 %31 to i64, !dbg !2849
  %arrayidx31 = getelementptr [8 x i16], ptr @pnp_assign_dma.xtab, i64 0, i64 %idxprom30, !dbg !2849
  %32 = load i16, ptr %arrayidx31, align 2, !dbg !2849
  %conv32 = zext i16 %32 to i64, !dbg !2849
  %33 = load ptr, ptr %res, align 8, !dbg !2850
  %end33 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 1, !dbg !2851
  store i64 %conv32, ptr %end33, align 8, !dbg !2852
  %34 = load ptr, ptr %res, align 8, !dbg !2853
  %start34 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 0, !dbg !2854
  store i64 %conv32, ptr %start34, align 8, !dbg !2855
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !2856
  %36 = load ptr, ptr %res, align 8, !dbg !2858
  %call35 = call i32 @pnp_check_dma(ptr noundef %35, ptr noundef %36) #10, !dbg !2859
  %tobool36 = icmp ne i32 %call35, 0, !dbg !2859
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !2860

if.then37:                                        ; preds = %if.then29
  br label %__add, !dbg !2861

if.end38:                                         ; preds = %if.then29
  br label %if.end39, !dbg !2862

if.end39:                                         ; preds = %if.end38, %for.body
  br label %for.inc, !dbg !2863

for.inc:                                          ; preds = %if.end39
  %37 = load i32, ptr %i, align 4, !dbg !2864
  %inc = add i32 %37, 1, !dbg !2864
  store i32 %inc, ptr %i, align 4, !dbg !2864
  br label %for.cond, !dbg !2865, !llvm.loop !2866

for.end:                                          ; preds = %for.cond
  %38 = load i32, ptr @pnp_debug, align 4, !dbg !2868
  %tobool40 = icmp ne i32 %38, 0, !dbg !2868
  br i1 %tobool40, label %if.then41, label %if.end46, !dbg !2871

if.then41:                                        ; preds = %for.end
  br label %do.body42, !dbg !2872

do.body42:                                        ; preds = %if.then41
  br label %do.cond43, !dbg !2874

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !2874

do.end44:                                         ; preds = %do.cond43
  %39 = load ptr, ptr %dev.addr, align 8, !dbg !2872
  %dev45 = getelementptr inbounds %struct.pnp_dev, ptr %39, i32 0, i32 0, !dbg !2872
  %40 = load i32, ptr %idx.addr, align 4, !dbg !2872
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev45, ptr noundef @.str.25, i32 noundef %40) #12, !dbg !2872
  br label %if.end46, !dbg !2868

if.end46:                                         ; preds = %do.end44, %for.end
  store i32 0, ptr %tmp47, align 4, !dbg !2868
  %41 = load i32, ptr %tmp47, align 4, !dbg !2871
  store i32 -16, ptr %retval, align 4, !dbg !2876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2876

__add:                                            ; preds = %if.then37, %if.end21
  call void @llvm.dbg.label(metadata !1918), !dbg !2877
  %42 = load ptr, ptr %dev.addr, align 8, !dbg !2878
  %43 = load ptr, ptr %res, align 8, !dbg !2879
  %start48 = getelementptr inbounds %struct.resource, ptr %43, i32 0, i32 0, !dbg !2880
  %44 = load i64, ptr %start48, align 8, !dbg !2880
  %conv49 = trunc i64 %44 to i32, !dbg !2879
  %45 = load ptr, ptr %res, align 8, !dbg !2881
  %flags50 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 3, !dbg !2882
  %46 = load i64, ptr %flags50, align 8, !dbg !2882
  %conv51 = trunc i64 %46 to i32, !dbg !2881
  %call52 = call ptr @pnp_add_dma_resource(ptr noundef %42, i32 noundef %conv49, i32 noundef %conv51) #10, !dbg !2883
  store i32 0, ptr %retval, align 4, !dbg !2884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2884

cleanup:                                          ; preds = %__add, %if.end46, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 64, ptr %local_res) #11, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !2885
  %47 = load i32, ptr %retval, align 4, !dbg !2885
  ret i32 %47, !dbg !2885
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pnp_find_resource(ptr noundef %dev, i8 noundef zeroext %rule, i64 noundef %type, i32 noundef %bar) #0 align 16 !dbg !2886 {
entry:
  %dev.addr = alloca ptr, align 8
  %rule.addr = alloca i8, align 1
  %type.addr = alloca i64, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2890, metadata !DIExpression()), !dbg !2895
  store i8 %rule, ptr %rule.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rule.addr, metadata !2891, metadata !DIExpression()), !dbg !2896
  store i64 %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2892, metadata !DIExpression()), !dbg !2897
  store i32 %bar, ptr %bar.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !2893, metadata !DIExpression()), !dbg !2898
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !2899
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2894, metadata !DIExpression()), !dbg !2900
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2901
  %1 = load i64, ptr %type.addr, align 8, !dbg !2902
  %2 = load i32, ptr %bar.addr, align 4, !dbg !2903
  %call = call ptr @pnp_get_resource(ptr noundef %0, i64 noundef %1, i32 noundef %2) #10, !dbg !2904
  store ptr %call, ptr %res, align 8, !dbg !2900
  %3 = load ptr, ptr %res, align 8, !dbg !2905
  %tobool = icmp ne ptr %3, null, !dbg !2905
  br i1 %tobool, label %if.then, label %if.end, !dbg !2907

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %res, align 8, !dbg !2908
  %flags = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3, !dbg !2910
  %5 = load i64, ptr %flags, align 8, !dbg !2911
  %and = and i64 %5, -256, !dbg !2911
  store i64 %and, ptr %flags, align 8, !dbg !2911
  %6 = load i8, ptr %rule.addr, align 1, !dbg !2912
  %conv = zext i8 %6 to i32, !dbg !2912
  %and1 = and i32 %conv, 255, !dbg !2913
  %conv2 = sext i32 %and1 to i64, !dbg !2912
  %7 = load ptr, ptr %res, align 8, !dbg !2914
  %flags3 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3, !dbg !2915
  %8 = load i64, ptr %flags3, align 8, !dbg !2916
  %or = or i64 %8, %conv2, !dbg !2916
  store i64 %or, ptr %flags3, align 8, !dbg !2916
  br label %if.end, !dbg !2917

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %res, align 8, !dbg !2918
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !2919
  ret ptr %9, !dbg !2920
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2921 dso_local i32 @pnp_check_port(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2924 dso_local ptr @pnp_add_io_resource(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2927 dso_local ptr @pnp_get_resource(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2930 dso_local i32 @pnp_check_mem(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2931 dso_local ptr @pnp_add_mem_resource(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #5 align 16 !dbg !2932 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2937, metadata !DIExpression()), !dbg !2939
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !2938, metadata !DIExpression()), !dbg !2940
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !2941
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2941
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2941

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !2941
  %cmp = icmp ule i32 %2, 64, !dbg !2941
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2941

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !2941
  %cmp2 = icmp ugt i32 %3, 0, !dbg !2941
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2943

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !2944
  %5 = load i64, ptr %4, align 8, !dbg !2945
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !2946
  %sub = sub i32 0, %6, !dbg !2946
  %and = and i32 %sub, 63, !dbg !2946
  %sh_prom = zext i32 %and to i64, !dbg !2946
  %shr = lshr i64 -1, %sh_prom, !dbg !2946
  %and3 = and i64 %5, %shr, !dbg !2947
  %tobool = icmp ne i64 %and3, 0, !dbg !2948
  %lnot = xor i1 %tobool, true, !dbg !2948
  store i1 %lnot, ptr %retval, align 1, !dbg !2949
  br label %return, !dbg !2949

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !2950
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !2951
  %conv = zext i32 %8 to i64, !dbg !2951
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #10, !dbg !2952
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !2953
  %conv4 = zext i32 %9 to i64, !dbg !2953
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !2954
  store i1 %cmp5, ptr %retval, align 1, !dbg !2955
  br label %return, !dbg !2955

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !2956
  ret i1 %10, !dbg !2956
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #5 align 16 !dbg !2957 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2962, metadata !DIExpression()), !dbg !2968
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2963, metadata !DIExpression()), !dbg !2969
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2964, metadata !DIExpression()), !dbg !2970
  %0 = load i64, ptr %size.addr, align 8, !dbg !2971
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2971
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !2971

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2971
  %cmp = icmp ule i64 %2, 64, !dbg !2971
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !2971

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2971
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2971
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !2972

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !2973
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2965, metadata !DIExpression()), !dbg !2974
  %4 = load i64, ptr %offset.addr, align 8, !dbg !2975
  %5 = load i64, ptr %size.addr, align 8, !dbg !2975
  %cmp3 = icmp uge i64 %4, %5, !dbg !2975
  %lnot = xor i1 %cmp3, true, !dbg !2975
  %lnot4 = xor i1 %lnot, true, !dbg !2975
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2975
  %conv = sext i32 %lnot.ext to i64, !dbg !2975
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2975
  %tobool = icmp ne i64 %expval, 0, !dbg !2975
  br i1 %tobool, label %if.then5, label %if.end, !dbg !2977

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2978
  store i64 %6, ptr %retval, align 8, !dbg !2979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2979

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2980
  %8 = load i64, ptr %7, align 8, !dbg !2981
  %9 = load i64, ptr %offset.addr, align 8, !dbg !2982
  %shl = shl i64 1, %9, !dbg !2982
  %sub = sub i64 -1, %shl, !dbg !2982
  %add = add i64 %sub, 1, !dbg !2982
  %10 = load i64, ptr %size.addr, align 8, !dbg !2982
  %sub6 = sub i64 %10, 1, !dbg !2982
  %sub7 = sub i64 63, %sub6, !dbg !2982
  %shr = lshr i64 -1, %sub7, !dbg !2982
  %and = and i64 %add, %shr, !dbg !2982
  %add8 = add i64 0, %and, !dbg !2982
  %and9 = and i64 %8, %add8, !dbg !2983
  store i64 %and9, ptr %val, align 8, !dbg !2984
  %11 = load i64, ptr %val, align 8, !dbg !2985
  %tobool10 = icmp ne i64 %11, 0, !dbg !2985
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !2985

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !2986
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2986
  br i1 %13, label %cond.true11, label %cond.false, !dbg !2986

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !2986
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !2986
  %cast = trunc i64 %15 to i32, !dbg !2986
  %conv12 = sext i32 %cast to i64, !dbg !2986
  br label %cond.end, !dbg !2986

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !2986
  %call = call i64 @variable__ffs(i64 noundef %16) #10, !dbg !2986
  br label %cond.end, !dbg !2986

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !2986
  br label %cond.end14, !dbg !2985

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !2987
  br label %cond.end14, !dbg !2985

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !2985
  store i64 %cond15, ptr %retval, align 8, !dbg !2988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2988

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !2989
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !2990
  %19 = load i64, ptr %size.addr, align 8, !dbg !2991
  %20 = load i64, ptr %offset.addr, align 8, !dbg !2992
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #10, !dbg !2993
  store i64 %call17, ptr %retval, align 8, !dbg !2994
  br label %return, !dbg !2994

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !2995
  ret i64 %21, !dbg !2995
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i16(i16) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2996 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3004, metadata !DIExpression()), !dbg !3009
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3005, metadata !DIExpression()), !dbg !3010
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3006, metadata !DIExpression()), !dbg !3012
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3013
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3014
  %div = udiv i64 %1, 64, !dbg !3014
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3015
  store ptr %add.ptr, ptr %p, align 8, !dbg !3012
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !3016
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3007, metadata !DIExpression()), !dbg !3017
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3018
  %rem = urem i64 %2, 64, !dbg !3018
  %shl = shl i64 1, %rem, !dbg !3018
  store i64 %shl, ptr %mask, align 8, !dbg !3017
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !3019
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3008, metadata !DIExpression()), !dbg !3020
  %3 = load ptr, ptr %p, align 8, !dbg !3021
  %4 = load i64, ptr %3, align 8, !dbg !3022
  store i64 %4, ptr %val, align 8, !dbg !3020
  %5 = load i64, ptr %val, align 8, !dbg !3023
  %6 = load i64, ptr %mask, align 8, !dbg !3024
  %and = and i64 %5, %6, !dbg !3025
  %tobool = icmp ne i64 %and, 0, !dbg !3026
  %lnot = xor i1 %tobool, true, !dbg !3026
  %lnot1 = xor i1 %lnot, true, !dbg !3027
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !3028
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !3028
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !3028
  ret i1 %lnot1, !dbg !3029
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3030 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3033, metadata !DIExpression()), !dbg !3035
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3034, metadata !DIExpression()), !dbg !3036
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3037
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3038
  %div = udiv i64 %1, 64, !dbg !3038
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3039
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !3040
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3041
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3042
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !3043
  ret i1 %call, !dbg !3044
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3045 dso_local i32 @pnp_check_irq(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3046 dso_local ptr @pnp_add_irq_resource(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #5 align 16 !dbg !3049 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3053, metadata !DIExpression()), !dbg !3058
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3054, metadata !DIExpression()), !dbg !3059
  %0 = load i64, ptr %size.addr, align 8, !dbg !3060
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3060
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3060

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3060
  %cmp = icmp ule i64 %2, 64, !dbg !3060
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3060

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3060
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3060
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3061

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !3062
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3055, metadata !DIExpression()), !dbg !3063
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !3064
  %5 = load i64, ptr %4, align 8, !dbg !3065
  %6 = load i64, ptr %size.addr, align 8, !dbg !3066
  %sub = sub i64 %6, 1, !dbg !3066
  %sub3 = sub i64 63, %sub, !dbg !3066
  %shr = lshr i64 -1, %sub3, !dbg !3066
  %and = and i64 -1, %shr, !dbg !3066
  %add = add i64 0, %and, !dbg !3066
  %and4 = and i64 %5, %add, !dbg !3067
  store i64 %and4, ptr %val, align 8, !dbg !3063
  %7 = load i64, ptr %val, align 8, !dbg !3068
  %tobool = icmp ne i64 %7, 0, !dbg !3068
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !3068

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !3069
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3069
  br i1 %9, label %cond.true5, label %cond.false, !dbg !3069

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !3069
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !3069
  %cast = trunc i64 %11 to i32, !dbg !3069
  %conv = sext i32 %cast to i64, !dbg !3069
  br label %cond.end, !dbg !3069

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !3069
  %call = call i64 @variable__ffs(i64 noundef %12) #10, !dbg !3069
  br label %cond.end, !dbg !3069

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !3069
  br label %cond.end7, !dbg !3068

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !3070
  br label %cond.end7, !dbg !3068

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !3068
  store i64 %cond8, ptr %retval, align 8, !dbg !3071
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !3072
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !3073
  %15 = load i64, ptr %size.addr, align 8, !dbg !3074
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #10, !dbg !3075
  store i64 %call9, ptr %retval, align 8, !dbg !3076
  br label %return, !dbg !3076

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !3077
  ret i64 %16, !dbg !3077
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !3078 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3083, metadata !DIExpression()), !dbg !3084
  %0 = load i64, ptr %word.addr, align 8, !dbg !3085
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !3086, !srcloc !3087
  store i64 %1, ptr %word.addr, align 8, !dbg !3086
  %2 = load i64, ptr %word.addr, align 8, !dbg !3088
  ret i64 %2, !dbg !3089
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3090 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3091 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !3092 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3100, metadata !DIExpression()), !dbg !3102
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3101, metadata !DIExpression()), !dbg !3103
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3104
  %1 = load i64, ptr %size.addr, align 8, !dbg !3105
  %conv = trunc i64 %1 to i32, !dbg !3105
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !3106
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3107
  %3 = load i64, ptr %size.addr, align 8, !dbg !3107
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !3107
  ret void, !dbg !3108
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3109 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3111, metadata !DIExpression()), !dbg !3113
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3112, metadata !DIExpression()), !dbg !3114
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3115
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3116
  br i1 %1, label %cond.true, label %cond.false, !dbg !3116

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3117
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3118
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !3119
  %conv = zext i1 %call to i32, !dbg !3119
  br label %cond.end, !dbg !3116

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3120
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3121
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !3122
  %conv2 = zext i1 %call1 to i32, !dbg !3122
  br label %cond.end, !dbg !3116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3116
  %tobool = icmp ne i32 %cond, 0, !dbg !3116
  ret i1 %tobool, !dbg !3123
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !3124 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3129, metadata !DIExpression()), !dbg !3131
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3130, metadata !DIExpression()), !dbg !3132
  ret i1 true, !dbg !3133
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !3134 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3139, metadata !DIExpression()), !dbg !3142
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3140, metadata !DIExpression()), !dbg !3143
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3141, metadata !DIExpression()), !dbg !3144
  ret void, !dbg !3145
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3146 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3150, metadata !DIExpression()), !dbg !3152
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3151, metadata !DIExpression()), !dbg !3153
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3154
  %and = and i64 %0, 63, !dbg !3155
  %shl = shl i64 1, %and, !dbg !3156
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3157
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3158
  %shr = ashr i64 %2, 6, !dbg !3159
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3157
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3157
  %and1 = and i64 %shl, %3, !dbg !3160
  %cmp = icmp ne i64 %and1, 0, !dbg !3161
  ret i1 %cmp, !dbg !3162
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3163 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3165, metadata !DIExpression()), !dbg !3168
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3166, metadata !DIExpression()), !dbg !3169
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !3170
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3167, metadata !DIExpression()), !dbg !3171
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3172
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3173
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !3174, !srcloc !3175
  %3 = icmp ult i8 %2, 2, !dbg !3174
  call void @llvm.assume(i1 %3), !dbg !3174
  store i8 %2, ptr %oldbit, align 1, !dbg !3174
  %4 = load i8, ptr %oldbit, align 1, !dbg !3176, !range !2181, !noundef !488
  %tobool = trunc i8 %4 to i1, !dbg !3176
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !3177
  ret i1 %tobool, !dbg !3178
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3179 dso_local i32 @pnp_check_dma(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3180 dso_local ptr @pnp_add_dma_resource(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3181 dso_local void @pnp_free_resource(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933}
!llvm.ident = !{!1934}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_res_mutex", scope: !2, file: !3, line: 20, type: !604, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pnp/.manager.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pnp/pnp\22 -D KBUILD_BASENAME=\22manager\22 -D KBUILD_MODNAME=\22pnp\22 -D __KBUILD_MODNAME=kmod_pnp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pnp/manager.ll drivers/pnp/manager.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !83, globals: !167, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/manager.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fd4154890358d0808f7432b0197c2ea")
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
!83 = !{!84, !85, !112, !46, !143, !144, !98, !146, !147}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_option", file: !87, line: 67, size: 576, elements: !88)
!87 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad88cd72d3973577aa1f5f71c7f3d528")
!88 = !{!89, !96, !97, !99}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !86, file: !87, line: 68, baseType: !90, size: 128)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !91, line: 190, size: 128, elements: !92)
!91 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !91, line: 191, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !91, line: 191, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !87, line: 69, baseType: !7, size: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !87, line: 71, baseType: !98, size: 64, offset: 192)
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !86, file: !87, line: 77, baseType: !100, size: 320, offset: 256)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !87, line: 72, size: 320, elements: !101)
!101 = !{!102, !118, !130, !135}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !100, file: !87, line: 73, baseType: !103, size: 320)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_port", file: !87, line: 27, size: 320, elements: !104)
!104 = !{!105, !113, !114, !115, !116}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !103, file: !87, line: 28, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !91, line: 164, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !91, line: 159, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !109, line: 23, baseType: !110)
!109 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !111, line: 31, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!112 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !103, file: !87, line: 29, baseType: !106, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !103, file: !87, line: 30, baseType: !106, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !103, file: !87, line: 31, baseType: !106, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !87, line: 32, baseType: !117, size: 8, offset: 256)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !100, file: !87, line: 74, baseType: !119, size: 320)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_irq", file: !87, line: 38, size: 320, elements: !120)
!120 = !{!121, !129}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !119, file: !87, line: 39, baseType: !122, size: 256)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_irq_mask_t", file: !87, line: 36, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 36, size: 256, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !123, file: !87, line: 36, baseType: !126, size: 256)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 4)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !87, line: 40, baseType: !117, size: 8, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !100, file: !87, line: 75, baseType: !131, size: 16)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dma", file: !87, line: 43, size: 16, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !131, file: !87, line: 44, baseType: !117, size: 8)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !87, line: 45, baseType: !117, size: 8, offset: 8)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !100, file: !87, line: 76, baseType: !136, size: 320)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_mem", file: !87, line: 48, size: 320, elements: !137)
!137 = !{!138, !139, !140, !141, !142}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !136, file: !87, line: 49, baseType: !106, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !136, file: !87, line: 50, baseType: !106, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !136, file: !87, line: 51, baseType: !106, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !136, file: !87, line: 52, baseType: !106, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !87, line: 53, baseType: !117, size: 8, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !91, line: 42, baseType: !98)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !87, line: 155, size: 640, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !148, file: !87, line: 156, baseType: !90, size: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !148, file: !87, line: 157, baseType: !152, size: 512, offset: 128)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !153, line: 21, size: 512, elements: !154)
!153 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!154 = !{!155, !156, !157, !161, !162, !163, !165, !166}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !152, file: !153, line: 22, baseType: !106, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !152, file: !153, line: 23, baseType: !106, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !153, line: 24, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !153, line: 25, baseType: !98, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !152, file: !153, line: 26, baseType: !98, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !153, line: 27, baseType: !164, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !152, file: !153, line: 27, baseType: !164, size: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !152, file: !153, line: 27, baseType: !164, size: 64, offset: 448)
!167 = !{!0, !168, !173, !178, !183, !188, !193, !198, !203, !205, !210, !215, !220, !222, !224, !226, !231, !236, !241, !246, !251, !253, !258, !260, !262, !1891, !1896, !1898, !1903, !1905, !1920, !1922, !1924}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 24, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 3)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 232, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 29)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 327, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 224, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 28)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 208, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 26)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 344, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 112, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 14)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 152, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 19)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 350, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 88, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 11)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_start_dev205", scope: !2, file: !3, line: 353, type: !84, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !3, line: 364, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 200, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 25)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 16)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 372, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 80, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 10)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_stop_dev206", scope: !2, file: !3, line: 375, type: !84, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_activate_dev207", scope: !2, file: !3, line: 401, type: !84, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_disable_dev208", scope: !2, file: !3, line: 429, type: !84, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 352, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 44)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 272, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 34)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 248, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 31)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 376, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 47)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 144, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 18)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !243, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 384, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 48)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !195, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !255, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "xtab", scope: !264, file: !3, line: 138, type: !1890, isLocal: true, isDefinition: true)
!264 = distinct !DISubprogram(name: "pnp_assign_irq", scope: !3, file: !3, line: 132, type: !265, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1882)
!265 = !DISubroutineType(types: !266)
!266 = !{!46, !267, !1881, !46}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !269, line: 243, size: 7744, elements: !270)
!269 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71a2b05a7bea4745f52d5f98f7dc6ac6")
!270 = !{!271, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1774, !1802, !1828, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !268, file: !269, line: 244, baseType: !272, size: 5824)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !273)
!273 = !{!274, !922, !924, !927, !928, !981, !1445, !1446, !1447, !1448, !1449, !1456, !1626, !1639, !1649, !1653, !1655, !1656, !1657, !1661, !1668, !1669, !1672, !1675, !1679, !1682, !1683, !1686, !1687, !1688, !1689, !1719, !1720, !1721, !1724, !1727, !1736, !1737, !1738, !1739, !1740, !1741}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !272, file: !26, line: 706, baseType: !275, size: 512)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !276, line: 64, size: 512, elements: !277)
!276 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!277 = !{!278, !279, !280, !282, !366, !792, !907, !917, !918, !919, !920, !921}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !276, line: 65, baseType: !158, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !275, file: !276, line: 66, baseType: !90, size: 128, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !275, file: !276, line: 67, baseType: !281, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !275, file: !276, line: 68, baseType: !283, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !276, line: 168, size: 768, elements: !285)
!285 = !{!286, !287, !327, !328}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !284, file: !276, line: 169, baseType: !90, size: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !284, file: !276, line: 170, baseType: !288, size: 32, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !289, line: 29, baseType: !290)
!289 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !289, line: 17, size: 32, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !289, line: 18, baseType: !293, size: 32)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !289, line: 18, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !293, file: !289, line: 19, baseType: !296, size: 32)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !297, line: 14, size: 32, elements: !298)
!297 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !296, file: !297, line: 15, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !301, line: 44, baseType: !302)
!301 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !301, line: 14, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !301, line: 15, baseType: !305, size: 32)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !301, line: 15, size: 32, elements: !306)
!306 = !{!307, !312, !319}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !305, file: !301, line: 16, baseType: !308, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !91, line: 174, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 172, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !309, file: !91, line: 173, baseType: !46, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !301, line: 24, baseType: !313, size: 16)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !305, file: !301, line: 24, size: 16, elements: !314)
!314 = !{!315, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !313, file: !301, line: 25, baseType: !316, size: 8)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !109, line: 17, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !111, line: 21, baseType: !117)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !313, file: !301, line: 26, baseType: !316, size: 8, offset: 8)
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !301, line: 28, baseType: !320, size: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !305, file: !301, line: 28, size: 32, elements: !321)
!321 = !{!322, !326}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !320, file: !301, line: 29, baseType: !323, size: 16)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !109, line: 19, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !111, line: 24, baseType: !325)
!325 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !320, file: !301, line: 30, baseType: !323, size: 16, offset: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !284, file: !276, line: 171, baseType: !275, size: 512, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !284, file: !276, line: 172, baseType: !329, size: 64, offset: 704)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !276, line: 133, size: 192, elements: !332)
!332 = !{!333, !340, !345}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !331, file: !276, line: 134, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!46, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !276, line: 135, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!158, !338}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !331, file: !276, line: 136, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!46, !338, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !276, line: 125, size: 20736, elements: !352)
!352 = !{!353, !356, !360, !361, !365}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !351, file: !276, line: 126, baseType: !354, size: 192)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 192, elements: !171)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !351, file: !276, line: 127, baseType: !357, size: 4096, offset: 192)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 4096, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !351, file: !276, line: 128, baseType: !46, size: 32, offset: 4288)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !351, file: !276, line: 129, baseType: !362, size: 16384, offset: 4320)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 16384, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 2048)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !351, file: !276, line: 130, baseType: !46, size: 32, offset: 20704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !275, file: !276, line: 69, baseType: !367, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !276, line: 116, size: 384, elements: !370)
!370 = !{!371, !375, !403, !739, !770, !774}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !369, file: !276, line: 117, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !281}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !369, file: !276, line: 118, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !379, line: 254, size: 128, elements: !380)
!379 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!380 = !{!381, !396}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !378, file: !379, line: 255, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!385, !281, !390, !355}
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !91, line: 66, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !387, line: 73, baseType: !388)
!387 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !387, line: 15, baseType: !389)
!389 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !379, line: 30, size: 128, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !379, line: 31, baseType: !158, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !391, file: !379, line: 32, baseType: !395, size: 16, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !91, line: 24, baseType: !325)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !378, file: !379, line: 256, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!385, !281, !390, !158, !400}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 61, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !387, line: 72, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !387, line: 16, baseType: !98)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !369, file: !276, line: 119, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !379, line: 84, size: 320, elements: !408)
!408 = !{!409, !410, !414, !735, !737}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !379, line: 85, baseType: !158, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !407, file: !379, line: 86, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!395, !281, !390, !46}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !407, file: !379, line: 88, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!395, !281, !418, !46}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !379, line: 175, size: 512, elements: !420)
!420 = !{!421, !422, !423, !424, !431, !441, !442}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !419, file: !379, line: 176, baseType: !391, size: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !419, file: !379, line: 177, baseType: !400, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !419, file: !379, line: 178, baseType: !84, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !419, file: !379, line: 179, baseType: !425, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !430, line: 32, flags: DIFlagFwdDecl)
!430 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!431 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !419, file: !379, line: 180, baseType: !432, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!385, !435, !281, !418, !355, !438, !400}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !437, line: 537, flags: DIFlagFwdDecl)
!437 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !91, line: 52, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !387, line: 88, baseType: !440)
!440 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !419, file: !379, line: 182, baseType: !432, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !419, file: !379, line: 184, baseType: !443, size: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!46, !435, !281, !418, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !430, line: 625, size: 1344, elements: !448)
!448 = !{!449, !466, !684, !690, !697, !698, !703, !706, !718, !719, !722, !726, !727, !728, !729, !730, !733}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !430, line: 628, baseType: !450, size: 128)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !430, line: 628, size: 128, elements: !451)
!451 = !{!452, !457}
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !430, line: 629, baseType: !453, size: 128)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !430, line: 629, size: 128, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !453, file: !430, line: 631, baseType: !98, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !453, file: !430, line: 632, baseType: !98, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !450, file: !430, line: 635, baseType: !458, size: 128, align: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !91, line: 232, size: 128, align: 64, elements: !459)
!459 = !{!460, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !91, line: 233, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !458, file: !91, line: 234, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !461}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !447, file: !430, line: 639, baseType: !467, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !430, line: 733, size: 10240, elements: !469)
!469 = !{!470, !680}
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !430, line: 734, baseType: !471, size: 10240)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !430, line: 734, size: 10240, elements: !472)
!472 = !{!473, !477, !491, !495, !496, !497, !498, !499, !500, !508, !509, !510, !516, !517, !526, !527, !528, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !575, !587, !590, !645, !646, !647, !650, !654, !655, !658, !659, !660, !667, !668}
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !471, file: !430, line: 739, baseType: !474, size: 512, align: 512)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !430, line: 739, size: 512, align: 512, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !474, file: !430, line: 747, baseType: !308, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !471, file: !430, line: 750, baseType: !478, size: 128, offset: 512)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !479, line: 218, size: 128, elements: !480)
!479 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!480 = !{!481, !489, !490}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !479, line: 219, baseType: !482, size: 32)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !479, line: 219, size: 32, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !482, file: !479, line: 220, baseType: !288, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !482, file: !479, line: 221, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !479, line: 197, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 197, elements: !488)
!488 = !{}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !478, file: !479, line: 223, baseType: !7, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !478, file: !479, line: 224, baseType: !84, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !471, file: !430, line: 752, baseType: !492, size: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!98, !435, !98, !98, !98, !98}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !471, file: !430, line: 756, baseType: !98, size: 64, offset: 704)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !471, file: !430, line: 757, baseType: !98, size: 64, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !471, file: !430, line: 760, baseType: !98, size: 64, offset: 832)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !471, file: !430, line: 761, baseType: !98, size: 64, offset: 896)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !471, file: !430, line: 763, baseType: !98, size: 64, offset: 960)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !471, file: !430, line: 764, baseType: !501, size: 64, offset: 1024)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !437, line: 299, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 299, size: 64, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !503, file: !437, line: 299, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !507, line: 18, baseType: !98)
!507 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !471, file: !430, line: 773, baseType: !308, size: 32, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !471, file: !430, line: 785, baseType: !308, size: 32, offset: 1120)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !471, file: !430, line: 795, baseType: !511, size: 64, offset: 1152)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !430, line: 726, size: 128, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !512, file: !430, line: 727, baseType: !108, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !512, file: !430, line: 728, baseType: !46, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !471, file: !430, line: 801, baseType: !98, size: 64, offset: 1216)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !471, file: !430, line: 804, baseType: !518, size: 64, offset: 1280)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !519, line: 13, baseType: !520)
!519 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !91, line: 181, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 179, size: 64, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !521, file: !91, line: 180, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !109, line: 22, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !111, line: 30, baseType: !440)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !471, file: !430, line: 806, baseType: !46, size: 32, offset: 1344)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !471, file: !430, line: 808, baseType: !288, size: 32, offset: 1376)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !471, file: !430, line: 823, baseType: !529, size: 320, offset: 1408)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !530, line: 48, size: 320, elements: !531)
!530 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!531 = !{!532, !533, !534, !539, !541}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !529, file: !530, line: 49, baseType: !518, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !529, file: !530, line: 55, baseType: !518, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !529, file: !530, line: 57, baseType: !535, size: 32, offset: 128)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !536, line: 15, size: 32, elements: !537)
!536 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !535, file: !536, line: 20, baseType: !308, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !529, file: !530, line: 59, baseType: !540, size: 32, offset: 160)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !297, line: 23, baseType: !296)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !529, file: !530, line: 60, baseType: !90, size: 128, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !471, file: !430, line: 825, baseType: !90, size: 128, offset: 1728)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !471, file: !430, line: 845, baseType: !46, size: 32, offset: 1856)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !471, file: !430, line: 849, baseType: !98, size: 64, offset: 1920)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !471, file: !430, line: 850, baseType: !98, size: 64, offset: 1984)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !471, file: !430, line: 852, baseType: !98, size: 64, offset: 2048)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !471, file: !430, line: 853, baseType: !98, size: 64, offset: 2112)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !471, file: !430, line: 854, baseType: !520, size: 64, offset: 2176)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !471, file: !430, line: 855, baseType: !98, size: 64, offset: 2240)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !471, file: !430, line: 856, baseType: !98, size: 64, offset: 2304)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !471, file: !430, line: 857, baseType: !98, size: 64, offset: 2368)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !471, file: !430, line: 858, baseType: !98, size: 64, offset: 2432)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !471, file: !430, line: 865, baseType: !554, size: 32, offset: 2496)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !555, line: 69, baseType: !556)
!555 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !555, line: 64, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !556, file: !555, line: 65, baseType: !7, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !471, file: !430, line: 867, baseType: !288, size: 32, offset: 2528)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !471, file: !430, line: 869, baseType: !98, size: 64, offset: 2560)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !471, file: !430, line: 869, baseType: !98, size: 64, offset: 2624)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !471, file: !430, line: 869, baseType: !98, size: 64, offset: 2688)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !471, file: !430, line: 869, baseType: !98, size: 64, offset: 2752)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !471, file: !430, line: 870, baseType: !98, size: 64, offset: 2816)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !471, file: !430, line: 870, baseType: !98, size: 64, offset: 2880)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !471, file: !430, line: 870, baseType: !98, size: 64, offset: 2944)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !471, file: !430, line: 871, baseType: !98, size: 64, offset: 3008)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !471, file: !430, line: 871, baseType: !98, size: 64, offset: 3072)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !471, file: !430, line: 871, baseType: !98, size: 64, offset: 3136)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !471, file: !430, line: 871, baseType: !98, size: 64, offset: 3200)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !471, file: !430, line: 873, baseType: !572, size: 3328, offset: 3264)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 3328, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 52)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !471, file: !430, line: 875, baseType: !576, size: 1280, offset: 6592)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 1280, elements: !127)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !578, line: 22, size: 320, elements: !579)
!578 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!579 = !{!580, !581, !582, !583}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !577, file: !578, line: 23, baseType: !540, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !577, file: !578, line: 24, baseType: !524, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !577, file: !578, line: 26, baseType: !90, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !577, file: !578, line: 28, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !109, line: 20, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !111, line: 26, baseType: !46)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !471, file: !430, line: 877, baseType: !588, size: 64, offset: 7872)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !430, line: 877, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !471, file: !430, line: 880, baseType: !591, size: 1088, offset: 7936)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !592, line: 72, baseType: !593)
!592 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !592, line: 23, size: 1088, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !602, !603, !611, !612, !639, !640, !641}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !593, file: !592, line: 28, baseType: !108, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !593, file: !592, line: 38, baseType: !520, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !593, file: !592, line: 40, baseType: !98, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !593, file: !592, line: 43, baseType: !529, size: 320, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !593, file: !592, line: 44, baseType: !600, size: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !592, line: 44, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !592, line: 48, baseType: !98, size: 64, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !593, file: !592, line: 59, baseType: !604, size: 256, offset: 640)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !605, line: 66, size: 256, elements: !606)
!605 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!606 = !{!607, !608, !609, !610}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !604, file: !605, line: 67, baseType: !518, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !604, file: !605, line: 68, baseType: !540, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !604, file: !605, line: 70, baseType: !535, size: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !604, file: !605, line: 72, baseType: !90, size: 128, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !593, file: !592, line: 60, baseType: !84, size: 64, offset: 896)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !593, file: !592, line: 61, baseType: !613, size: 64, offset: 960)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !616, line: 13, size: 1216, elements: !617)
!616 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!617 = !{!618, !619, !620, !621, !622, !623, !624, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !615, file: !616, line: 14, baseType: !84, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !615, file: !616, line: 15, baseType: !98, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !615, file: !616, line: 17, baseType: !98, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !615, file: !616, line: 17, baseType: !98, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !615, file: !616, line: 18, baseType: !98, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !615, file: !616, line: 18, baseType: !98, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !615, file: !616, line: 19, baseType: !625, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !615, file: !616, line: 21, baseType: !389, size: 64, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !615, file: !616, line: 23, baseType: !389, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !615, file: !616, line: 24, baseType: !389, size: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !615, file: !616, line: 25, baseType: !389, size: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !615, file: !616, line: 26, baseType: !389, size: 64, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !615, file: !616, line: 27, baseType: !389, size: 64, offset: 768)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !615, file: !616, line: 28, baseType: !389, size: 64, offset: 832)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !615, file: !616, line: 29, baseType: !389, size: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !615, file: !616, line: 30, baseType: !389, size: 64, offset: 960)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !615, file: !616, line: 31, baseType: !389, size: 64, offset: 1024)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !615, file: !616, line: 32, baseType: !389, size: 64, offset: 1088)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !615, file: !616, line: 33, baseType: !389, size: 64, offset: 1152)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !593, file: !592, line: 63, baseType: !308, size: 32, offset: 1024)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !593, file: !592, line: 69, baseType: !323, size: 16, offset: 1056)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !593, file: !592, line: 70, baseType: !642, size: 16, offset: 1072)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !109, line: 18, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !111, line: 23, baseType: !644)
!644 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !430, line: 882, baseType: !98, size: 64, offset: 9024)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !471, file: !430, line: 885, baseType: !288, size: 32, offset: 9088)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !471, file: !430, line: 886, baseType: !648, size: 64, offset: 9152)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !430, line: 732, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !471, file: !430, line: 901, baseType: !651, size: 64, offset: 9216)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !653, line: 18, flags: DIFlagFwdDecl)
!653 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!654 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !471, file: !430, line: 904, baseType: !435, size: 64, offset: 9280)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !471, file: !430, line: 906, baseType: !656, size: 64, offset: 9344)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !430, line: 906, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !471, file: !430, line: 930, baseType: !308, size: 32, offset: 9408)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !471, file: !430, line: 933, baseType: !308, size: 32, offset: 9440)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !471, file: !430, line: 935, baseType: !661, size: 64, offset: 9472)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !662, line: 103, size: 64, elements: !663)
!662 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !661, file: !662, line: 104, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !662, line: 101, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !471, file: !430, line: 940, baseType: !518, size: 64, offset: 9536)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !471, file: !430, line: 942, baseType: !669, size: 256, offset: 9600)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !670, line: 98, size: 256, elements: !671)
!670 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!671 = !{!672, !673, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !669, file: !670, line: 99, baseType: !518, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !669, file: !670, line: 100, baseType: !90, size: 128, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !669, file: !670, line: 101, baseType: !675, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !670, line: 21, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !468, file: !430, line: 986, baseType: !681, offset: 10240)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: -1)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !447, file: !430, line: 640, baseType: !685, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !437, line: 297, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !437, line: 297, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !686, file: !437, line: 297, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !507, line: 19, baseType: !98)
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !430, line: 646, baseType: !691, size: 64, offset: 256)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !430, line: 646, size: 64, elements: !692)
!692 = !{!693, !696}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !691, file: !430, line: 647, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !430, line: 542, baseType: !98)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !691, file: !430, line: 648, baseType: !695, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !447, file: !430, line: 666, baseType: !46, size: 32, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !447, file: !430, line: 667, baseType: !699, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !430, line: 579, size: 320, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !700, file: !430, line: 580, baseType: !529, size: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !447, file: !430, line: 670, baseType: !704, size: 8, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !91, line: 35, baseType: !705)
!705 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !447, file: !430, line: 681, baseType: !707, size: 256, offset: 512)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !447, file: !430, line: 678, size: 256, elements: !708)
!708 = !{!709, !717}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !707, file: !430, line: 679, baseType: !710, size: 192, align: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !711, line: 5, size: 192, align: 64, elements: !712)
!711 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!712 = !{!713, !714, !716}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !710, file: !711, line: 6, baseType: !98, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !710, file: !711, line: 7, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !710, file: !711, line: 8, baseType: !715, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !707, file: !430, line: 680, baseType: !98, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !447, file: !430, line: 689, baseType: !90, size: 128, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !447, file: !430, line: 691, baseType: !720, size: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !430, line: 691, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !447, file: !430, line: 694, baseType: !723, size: 64, offset: 960)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !430, line: 694, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !447, file: !430, line: 697, baseType: !98, size: 64, offset: 1024)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !447, file: !430, line: 699, baseType: !435, size: 64, offset: 1088)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !447, file: !430, line: 700, baseType: !84, size: 64, offset: 1152)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !447, file: !430, line: 711, baseType: !518, size: 64, offset: 1216)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !447, file: !430, line: 717, baseType: !731, size: 64, offset: 1280)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !430, line: 717, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !447, file: !430, line: 722, baseType: !734, offset: 1344)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !430, line: 570, elements: !488)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !407, file: !379, line: 90, baseType: !736, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !407, file: !379, line: 91, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !369, file: !276, line: 120, baseType: !740, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!743, !338}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !746)
!746 = !{!747, !748, !752, !756, !762, !766}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !6, line: 40, baseType: !5, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !745, file: !6, line: 41, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!704}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !745, file: !6, line: 42, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!84}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !745, file: !6, line: 43, baseType: !757, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!625, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !745, file: !6, line: 44, baseType: !763, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!625}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !745, file: !6, line: 45, baseType: !767, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !84}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !369, file: !276, line: 121, baseType: !771, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!625, !338}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !369, file: !276, line: 122, baseType: !775, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !338, !778, !785}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !653, line: 23, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 21, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !780, file: !653, line: 22, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !91, line: 37, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !387, line: 49, baseType: !7)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !653, line: 28, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 26, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !787, file: !653, line: 27, baseType: !790, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !91, line: 38, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !387, line: 50, baseType: !7)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !275, file: !276, line: 70, baseType: !793, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !795, line: 190, size: 1152, elements: !796)
!795 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !899, !900, !901, !902, !903, !906}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !794, file: !795, line: 191, baseType: !308, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !794, file: !795, line: 192, baseType: !308, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !794, file: !795, line: 202, baseType: !793, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !794, file: !795, line: 203, baseType: !158, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !794, file: !795, line: 205, baseType: !710, size: 192, align: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !794, file: !795, line: 207, baseType: !625, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !794, file: !795, line: 208, baseType: !7, size: 32, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !795, line: 209, baseType: !805, size: 256, offset: 512)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !795, line: 209, size: 256, elements: !806)
!806 = !{!807, !819, !823}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !805, file: !795, line: 210, baseType: !808, size: 256)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !795, line: 153, size: 256, elements: !809)
!809 = !{!810, !811, !815, !818}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !808, file: !795, line: 154, baseType: !98, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !808, file: !795, line: 156, baseType: !812, size: 64, offset: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !711, line: 12, size: 64, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !812, file: !711, line: 13, baseType: !715, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !808, file: !795, line: 162, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !795, line: 162, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !808, file: !795, line: 167, baseType: !98, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !805, file: !795, line: 211, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !795, line: 170, size: 64, elements: !821)
!821 = !{!822}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !820, file: !795, line: 171, baseType: !793, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !805, file: !795, line: 212, baseType: !824, size: 256)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !795, line: 174, size: 256, elements: !825)
!825 = !{!826, !894, !897, !898}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !824, file: !795, line: 175, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !795, line: 271, size: 768, elements: !830)
!830 = !{!831, !854, !858, !862, !867, !871, !875, !879, !880, !881, !882, !890}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !829, file: !795, line: 276, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!46, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !795, line: 251, size: 1216, elements: !837)
!837 = !{!838, !839, !840, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !836, file: !795, line: 253, baseType: !793, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !836, file: !795, line: 254, baseType: !435, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !836, file: !795, line: 255, baseType: !841, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !843, line: 66, flags: DIFlagFwdDecl)
!843 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!844 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !836, file: !795, line: 256, baseType: !84, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !836, file: !795, line: 259, baseType: !604, size: 256, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !836, file: !795, line: 260, baseType: !604, size: 256, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !836, file: !795, line: 261, baseType: !46, size: 32, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !836, file: !795, line: 262, baseType: !90, size: 128, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !836, file: !795, line: 263, baseType: !355, size: 64, offset: 960)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !836, file: !795, line: 265, baseType: !400, size: 64, offset: 1024)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !836, file: !795, line: 266, baseType: !704, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !836, file: !795, line: 267, baseType: !704, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !836, file: !795, line: 268, baseType: !723, size: 64, offset: 1152)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !829, file: !795, line: 277, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !835}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !829, file: !795, line: 290, baseType: !859, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!46, !841, !84}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !829, file: !795, line: 292, baseType: !863, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!84, !841, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !829, file: !795, line: 293, baseType: !868, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!84, !841, !84, !866}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !829, file: !795, line: 294, baseType: !872, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !841, !84}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !829, file: !795, line: 296, baseType: !876, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!385, !835, !355, !400, !438}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !829, file: !795, line: 306, baseType: !400, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !829, file: !795, line: 313, baseType: !704, size: 8, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !829, file: !795, line: 314, baseType: !876, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !829, file: !795, line: 317, baseType: !883, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!886, !835, !888}
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !887, line: 59, baseType: !7)
!887 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !795, line: 31, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !829, file: !795, line: 320, baseType: !891, size: 64, offset: 704)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!46, !835, !446}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !824, file: !795, line: 176, baseType: !895, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !795, line: 35, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !824, file: !795, line: 177, baseType: !438, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !824, file: !795, line: 178, baseType: !793, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !794, file: !795, line: 215, baseType: !84, size: 64, offset: 768)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !794, file: !795, line: 221, baseType: !108, size: 64, offset: 832)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !795, line: 223, baseType: !325, size: 16, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !794, file: !795, line: 224, baseType: !395, size: 16, offset: 912)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !794, file: !795, line: 225, baseType: !904, size: 64, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !795, line: 36, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !794, file: !795, line: 227, baseType: !458, size: 128, align: 64, offset: 1024)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !275, file: !276, line: 71, baseType: !908, size: 32, offset: 448)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !909, line: 19, size: 32, elements: !910)
!909 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!910 = !{!911}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !908, file: !909, line: 20, baseType: !912, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !913, line: 113, baseType: !914)
!913 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !913, line: 111, size: 32, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !914, file: !913, line: 112, baseType: !308, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !275, file: !276, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !275, file: !276, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !275, file: !276, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !275, file: !276, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !275, file: !276, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !272, file: !26, line: 707, baseType: !923, size: 64, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !272, file: !26, line: 709, baseType: !925, size: 64, offset: 576)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !272, file: !26, line: 711, baseType: !158, size: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !272, file: !26, line: 712, baseType: !929, size: 64, offset: 704)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !932)
!932 = !{!933, !934, !935, !941, !946, !950}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !931, file: !26, line: 90, baseType: !158, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !931, file: !26, line: 91, baseType: !404, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !931, file: !26, line: 92, baseType: !936, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!46, !939, !350}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !931, file: !26, line: 93, baseType: !942, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!355, !939, !945, !778, !785}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !931, file: !26, line: 95, baseType: !947, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !923}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !931, file: !26, line: 97, baseType: !951, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !954)
!954 = !{!955, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !953, file: !38, line: 287, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!46, !923}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !953, file: !38, line: 288, baseType: !947, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !953, file: !38, line: 289, baseType: !956, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !953, file: !38, line: 290, baseType: !956, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !953, file: !38, line: 291, baseType: !956, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !953, file: !38, line: 292, baseType: !956, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !953, file: !38, line: 293, baseType: !956, size: 64, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !953, file: !38, line: 294, baseType: !956, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !953, file: !38, line: 295, baseType: !956, size: 64, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !953, file: !38, line: 296, baseType: !956, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !953, file: !38, line: 297, baseType: !956, size: 64, offset: 640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !953, file: !38, line: 298, baseType: !956, size: 64, offset: 704)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !953, file: !38, line: 299, baseType: !956, size: 64, offset: 768)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !953, file: !38, line: 300, baseType: !956, size: 64, offset: 832)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !953, file: !38, line: 301, baseType: !956, size: 64, offset: 896)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !953, file: !38, line: 302, baseType: !956, size: 64, offset: 960)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !953, file: !38, line: 303, baseType: !956, size: 64, offset: 1024)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !953, file: !38, line: 304, baseType: !956, size: 64, offset: 1088)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !953, file: !38, line: 305, baseType: !956, size: 64, offset: 1152)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !953, file: !38, line: 306, baseType: !956, size: 64, offset: 1216)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !953, file: !38, line: 307, baseType: !956, size: 64, offset: 1280)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !953, file: !38, line: 308, baseType: !956, size: 64, offset: 1344)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !953, file: !38, line: 309, baseType: !956, size: 64, offset: 1408)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !272, file: !26, line: 714, baseType: !982, size: 64, offset: 768)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !985, line: 80, size: 1344, elements: !986)
!985 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!986 = !{!987, !988, !989, !990, !991, !992, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1444}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !984, file: !985, line: 81, baseType: !158, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !984, file: !985, line: 82, baseType: !158, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !984, file: !985, line: 83, baseType: !404, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !984, file: !985, line: 84, baseType: !404, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !984, file: !985, line: 85, baseType: !404, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !984, file: !985, line: 87, baseType: !993, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!46, !923, !996}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !998)
!998 = !{!999, !1000, !1001, !1377, !1378, !1379, !1380, !1396, !1407, !1408, !1409, !1410, !1411, !1419, !1420, !1421, !1422, !1423, !1424}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !997, file: !20, line: 97, baseType: !158, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !997, file: !20, line: 98, baseType: !982, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !997, file: !20, line: 100, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1011, !1032, !1058, !1059, !1060, !1061, !1065, !1068, !1069, !1070, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1133, !1137, !1157, !1175, !1176, !1177, !1178, !1187, !1211, !1212, !1215, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1229, !1230, !1336, !1344, !1345, !1346, !1348, !1352, !1353, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1370, !1371, !1372, !1376}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1003, file: !13, line: 403, baseType: !12, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1003, file: !13, line: 406, baseType: !90, size: 128, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1003, file: !13, line: 409, baseType: !1008, size: 448, offset: 192)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 448, elements: !1009)
!1009 = !{!1010}
!1010 = !DISubrange(count: 56)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1003, file: !13, line: 417, baseType: !1012, size: 768, offset: 640)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1020}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1012, file: !13, line: 46, baseType: !275, size: 512)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1012, file: !13, line: 47, baseType: !1002, size: 64, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1012, file: !13, line: 48, baseType: !281, size: 64, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1012, file: !13, line: 49, baseType: !1018, size: 64, offset: 640)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1012, file: !13, line: 50, baseType: !1021, size: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1023, line: 26, size: 256, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1022, file: !1023, line: 27, baseType: !7, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1022, file: !1023, line: 28, baseType: !1027, size: 192, offset: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1028, line: 43, size: 192, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1027, file: !1028, line: 44, baseType: !540, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1027, file: !1028, line: 45, baseType: !90, size: 128, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1003, file: !13, line: 418, baseType: !1033, size: 64, offset: 1408)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !1035)
!1035 = !{!1036, !1037, !1042, !1046, !1050, !1054}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1034, file: !13, line: 54, baseType: !391, size: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1034, file: !13, line: 55, baseType: !1038, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!385, !1033, !1041, !355}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1034, file: !13, line: 57, baseType: !1043, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!385, !1033, !1041, !158, !400}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1034, file: !13, line: 59, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !1002, !158}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1034, file: !13, line: 60, baseType: !1051, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!46, !1002}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1034, file: !13, line: 61, baseType: !1055, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !1002}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1003, file: !13, line: 419, baseType: !158, size: 64, offset: 1472)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1003, file: !13, line: 420, baseType: !158, size: 64, offset: 1536)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1003, file: !13, line: 421, baseType: !281, size: 64, offset: 1600)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1003, file: !13, line: 424, baseType: !1062, size: 64, offset: 1664)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1003, file: !13, line: 425, baseType: !1066, size: 64, offset: 1728)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1003, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1003, file: !13, line: 435, baseType: !604, size: 256, offset: 1856)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1003, file: !13, line: 437, baseType: !1071, size: 64, offset: 2112)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1073, line: 69, size: 320, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1074 = !{!1075, !1076, !1077, !1094, !1096, !1100, !1101}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1072, file: !1073, line: 70, baseType: !158, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1072, file: !1073, line: 71, baseType: !1002, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1072, file: !1073, line: 72, baseType: !1078, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1073, line: 47, size: 256, elements: !1081)
!1081 = !{!1082, !1083, !1089, !1093}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !1073, line: 49, baseType: !7, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1080, file: !1073, line: 51, baseType: !1084, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!46, !158, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1080, file: !1073, line: 53, baseType: !1090, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!46, !355, !1087}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1080, file: !1073, line: 55, baseType: !767, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1072, file: !1073, line: 73, baseType: !1095, size: 16, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1072, file: !1073, line: 74, baseType: !1097, size: 8, offset: 208)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !109, line: 16, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !111, line: 20, baseType: !1099)
!1099 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1072, file: !1073, line: 75, baseType: !316, size: 8, offset: 216)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !1073, line: 76, baseType: !1102, size: 64, offset: 256)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !1073, line: 76, size: 64, elements: !1103)
!1103 = !{!1104, !1105, !1112}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1102, file: !1073, line: 77, baseType: !84, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1102, file: !1073, line: 78, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1073, line: 86, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1108, file: !1073, line: 87, baseType: !7, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1108, file: !1073, line: 88, baseType: !355, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1102, file: !1073, line: 79, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1073, line: 92, size: 256, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1121, !1122}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1115, file: !1073, line: 94, baseType: !7, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1115, file: !1073, line: 95, baseType: !7, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1115, file: !1073, line: 96, baseType: !1120, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1115, file: !1073, line: 97, baseType: !1078, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1115, file: !1073, line: 98, baseType: !84, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1003, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1003, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1003, file: !13, line: 442, baseType: !1062, size: 64, offset: 2240)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1003, file: !13, line: 443, baseType: !1066, size: 64, offset: 2304)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1003, file: !13, line: 444, baseType: !704, size: 8, offset: 2368)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1003, file: !13, line: 451, baseType: !704, size: 8, offset: 2376)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1003, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1003, file: !13, line: 455, baseType: !1131, size: 64, offset: 2432)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1003, file: !13, line: 458, baseType: !1134, size: 64, offset: 2496)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!46}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1003, file: !13, line: 460, baseType: !1138, size: 4032, align: 512, offset: 2560)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 4032, elements: !1155)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1140)
!1140 = !{!1141, !1142, !1143}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1139, file: !13, line: 363, baseType: !84, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1139, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1139, file: !13, line: 367, baseType: !1144, size: 448, offset: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1144, file: !13, line: 320, baseType: !1002, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1144, file: !13, line: 321, baseType: !1148, size: 384, offset: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1149, line: 40, size: 384, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1148, file: !1149, line: 41, baseType: !1152, size: 384, align: 64)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 384, align: 64, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 2)
!1155 = !{!1156}
!1156 = !DISubrange(count: 7)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1003, file: !13, line: 463, baseType: !1158, size: 192, offset: 6592)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1159, line: 8, size: 192, elements: !1160)
!1159 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1160 = !{!1161, !1162, !1164}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1158, file: !1159, line: 10, baseType: !7, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1158, file: !1159, line: 11, baseType: !1163, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1158, file: !1159, line: 12, baseType: !1165, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1167, line: 59, size: 48, elements: !1168)
!1167 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1166, file: !1167, line: 60, baseType: !642, size: 16)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1166, file: !1167, line: 61, baseType: !642, size: 16, offset: 16)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1166, file: !1167, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1166, file: !1167, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1166, file: !1167, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1166, file: !1167, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1003, file: !13, line: 465, baseType: !98, size: 64, offset: 6784)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1003, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1003, file: !13, line: 470, baseType: !90, size: 128, offset: 6912)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1003, file: !13, line: 471, baseType: !1179, size: 64, offset: 7040)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1181, line: 33, size: 96, elements: !1182)
!1181 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1182 = !{!1183, !1184, !1185, !1186}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1180, file: !1181, line: 37, baseType: !46, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1180, file: !1181, line: 43, baseType: !46, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1180, file: !1181, line: 45, baseType: !325, size: 16, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1181, line: 47, baseType: !325, size: 16, offset: 80)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1003, file: !13, line: 476, baseType: !1188, size: 64, offset: 7104)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1190)
!1190 = !{!1191, !1208, !1209, !1210}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1189, file: !13, line: 379, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1194, line: 204, baseType: !1195)
!1194 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1194, line: 197, size: 192, elements: !1196)
!1196 = !{!1197, !1200, !1201, !1202, !1204, !1206}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1195, file: !1194, line: 198, baseType: !1198, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1194, line: 21, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !111, line: 27, baseType: !7)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1195, file: !1194, line: 199, baseType: !117, size: 8, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1195, file: !1194, line: 200, baseType: !117, size: 8, offset: 40)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1195, file: !1194, line: 201, baseType: !1203, size: 16, offset: 48)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1194, line: 17, baseType: !324)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1195, file: !1194, line: 202, baseType: !1205, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1194, line: 16, baseType: !110)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1195, file: !1194, line: 203, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1194, line: 22, baseType: !110)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1189, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1189, file: !13, line: 381, baseType: !355, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1189, file: !13, line: 382, baseType: !355, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1003, file: !13, line: 477, baseType: !1189, size: 256, offset: 7168)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1003, file: !13, line: 480, baseType: !1213, size: 64, offset: 7424)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1003, file: !13, line: 483, baseType: !1216, size: 64, offset: 7488)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1003, file: !13, line: 488, baseType: !355, size: 64, offset: 7552)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1003, file: !13, line: 492, baseType: !84, size: 64, offset: 7616)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1003, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1003, file: !13, line: 495, baseType: !84, size: 64, offset: 7744)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1003, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1003, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1003, file: !13, line: 500, baseType: !1225, size: 64, offset: 7872)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1227, line: 45, baseType: !1228)
!1227 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1003, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1003, file: !13, line: 504, baseType: !1231, size: 64, offset: 8000)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1234, line: 96, size: 192, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1235 = !{!1236, !1237, !1297, !1300}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1233, file: !1234, line: 97, baseType: !7, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1233, file: !1234, line: 98, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1234, line: 24, size: 3072, elements: !1240)
!1240 = !{!1241, !1243, !1244, !1245, !1246, !1259, !1260, !1261, !1262, !1281, !1282, !1283, !1294, !1295, !1296}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1239, file: !1234, line: 26, baseType: !1242, size: 128)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 128, elements: !1153)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1239, file: !1234, line: 27, baseType: !1242, size: 128, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1239, file: !1234, line: 28, baseType: !46, size: 32, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1239, file: !1234, line: 31, baseType: !288, size: 32, align: 512, offset: 512)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1239, file: !1234, line: 32, baseType: !1247, size: 960, offset: 576)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1248, line: 206, size: 960, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1249 = !{!1250, !1251, !1254, !1255, !1256, !1258}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1247, file: !1248, line: 207, baseType: !461, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1247, file: !1248, line: 208, baseType: !1252, size: 256, offset: 64)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1253, size: 256, elements: !127)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1247, file: !1248, line: 209, baseType: !126, size: 256, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1247, file: !1248, line: 213, baseType: !389, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1247, file: !1248, line: 215, baseType: !1257, size: 256, offset: 640)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 256, elements: !127)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1247, file: !1248, line: 216, baseType: !316, size: 8, offset: 896)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1239, file: !1234, line: 33, baseType: !98, size: 64, offset: 1536)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1239, file: !1234, line: 34, baseType: !98, size: 64, offset: 1600)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1239, file: !1234, line: 35, baseType: !704, size: 8, offset: 1664)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1239, file: !1234, line: 36, baseType: !1263, size: 320, offset: 1728)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1264, line: 11, size: 320, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1265 = !{!1266, !1273, !1274, !1279}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1263, file: !1264, line: 16, baseType: !1267, size: 128)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !91, line: 198, size: 128, elements: !1268)
!1268 = !{!1269, !1271}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1267, file: !91, line: 199, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1267, file: !91, line: 199, baseType: !1272, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1263, file: !1264, line: 17, baseType: !98, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1263, file: !1264, line: 18, baseType: !1275, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1263, file: !1264, line: 19, baseType: !1280, size: 32, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !109, line: 21, baseType: !1199)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1239, file: !1234, line: 37, baseType: !669, size: 256, offset: 2048)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1239, file: !1234, line: 38, baseType: !458, size: 128, align: 64, offset: 2304)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1239, file: !1234, line: 39, baseType: !1284, size: 64, offset: 2432)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1234, line: 49, size: 768, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1285, file: !1234, line: 50, baseType: !288, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1285, file: !1234, line: 51, baseType: !126, size: 256, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1285, file: !1234, line: 53, baseType: !126, size: 256, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1285, file: !1234, line: 54, baseType: !98, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1285, file: !1234, line: 55, baseType: !1284, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1285, file: !1234, line: 56, baseType: !46, size: 32, offset: 704)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1285, file: !1234, line: 57, baseType: !46, size: 32, offset: 736)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1239, file: !1234, line: 40, baseType: !98, size: 64, offset: 2496)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1239, file: !1234, line: 42, baseType: !46, size: 32, offset: 2560)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1239, file: !1234, line: 43, baseType: !1232, size: 64, offset: 2624)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1233, file: !1234, line: 99, baseType: !1298, offset: 128)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1299, line: 211, elements: !488)
!1299 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1233, file: !1234, line: 100, baseType: !1301, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1234, line: 63, size: 3008, elements: !1303)
!1303 = !{!1304, !1305, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1335}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1302, file: !1234, line: 64, baseType: !1284, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1302, file: !1234, line: 65, baseType: !1306, size: 192, offset: 64)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 192, elements: !171)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1302, file: !1234, line: 67, baseType: !46, size: 32, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1302, file: !1234, line: 68, baseType: !604, size: 256, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1302, file: !1234, line: 69, baseType: !288, size: 32, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1302, file: !1234, line: 70, baseType: !604, size: 256, offset: 640)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1302, file: !1234, line: 71, baseType: !98, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1302, file: !1234, line: 72, baseType: !98, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1302, file: !1234, line: 73, baseType: !98, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1302, file: !1234, line: 74, baseType: !98, size: 64, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1302, file: !1234, line: 75, baseType: !98, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1302, file: !1234, line: 76, baseType: !98, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1302, file: !1234, line: 77, baseType: !98, size: 64, offset: 1280)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1302, file: !1234, line: 78, baseType: !98, size: 64, offset: 1344)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1302, file: !1234, line: 79, baseType: !704, size: 8, offset: 1408)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1302, file: !1234, line: 80, baseType: !98, size: 64, offset: 1472)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1302, file: !1234, line: 81, baseType: !604, size: 256, offset: 1536)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1302, file: !1234, line: 82, baseType: !1022, size: 256, offset: 1792)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1302, file: !1234, line: 84, baseType: !308, size: 32, offset: 2048)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1302, file: !1234, line: 87, baseType: !98, size: 64, offset: 2112)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1302, file: !1234, line: 88, baseType: !98, size: 64, offset: 2176)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1302, file: !1234, line: 89, baseType: !1327, size: 704, offset: 2240)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !670, line: 111, size: 704, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1334}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1327, file: !670, line: 112, baseType: !669, size: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1327, file: !670, line: 113, baseType: !1263, size: 320, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1327, file: !670, line: 116, baseType: !1332, size: 64, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !670, line: 18, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1327, file: !670, line: 117, baseType: !46, size: 32, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1302, file: !1234, line: 90, baseType: !1232, size: 64, offset: 2944)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1003, file: !13, line: 515, baseType: !1337, size: 64, offset: 8064)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1339, line: 117, size: 128, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1340 = !{!1341, !1342, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1338, file: !1339, line: 118, baseType: !585, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1338, file: !1339, line: 119, baseType: !585, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1338, file: !1339, line: 120, baseType: !389, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1003, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1003, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1003, file: !13, line: 520, baseType: !1347, size: 64, offset: 8192)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1003, file: !13, line: 523, baseType: !1349, size: 64, offset: 8256)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1003, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1003, file: !13, line: 525, baseType: !1354, size: 64, offset: 8384)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1003, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1003, file: !13, line: 533, baseType: !84, size: 64, offset: 8512)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1003, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1003, file: !13, line: 535, baseType: !146, size: 64, offset: 8640)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1003, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1003, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1003, file: !13, line: 540, baseType: !1364, size: 64, offset: 8768)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1366, line: 32, size: 64, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1365, file: !1366, line: 33, baseType: !585, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1365, file: !1366, line: 34, baseType: !585, size: 32, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1003, file: !13, line: 563, baseType: !90, size: 128, offset: 8832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1003, file: !13, line: 565, baseType: !90, size: 128, offset: 8960)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1003, file: !13, line: 568, baseType: !1373, size: 64, offset: 9088)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1003, file: !13, line: 570, baseType: !308, size: 32, offset: 9152)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !997, file: !20, line: 101, baseType: !158, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !997, file: !20, line: 103, baseType: !704, size: 8, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !997, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !997, file: !20, line: 106, baseType: !1381, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1384, line: 282, size: 1600, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1385 = !{!1386, !1390, !1391, !1395}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1383, file: !1384, line: 283, baseType: !1387, size: 256)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1383, file: !1384, line: 284, baseType: !1387, size: 256, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1383, file: !1384, line: 285, baseType: !1392, size: 1024, offset: 512)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 1024, elements: !1393)
!1393 = !{!1394}
!1394 = !DISubrange(count: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1383, file: !1384, line: 286, baseType: !625, size: 64, offset: 1536)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !997, file: !20, line: 107, baseType: !1397, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1384, line: 217, size: 256, elements: !1400)
!1400 = !{!1401, !1403, !1405, !1406}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1399, file: !1384, line: 218, baseType: !1402, size: 128)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 128, elements: !213)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1399, file: !1384, line: 219, baseType: !1404, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1384, line: 15, baseType: !98)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1399, file: !1384, line: 220, baseType: !1199, size: 32, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1399, file: !1384, line: 221, baseType: !1199, size: 32, offset: 224)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !997, file: !20, line: 109, baseType: !956, size: 64, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !997, file: !20, line: 110, baseType: !947, size: 64, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !997, file: !20, line: 111, baseType: !956, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !997, file: !20, line: 112, baseType: !947, size: 64, offset: 640)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !997, file: !20, line: 113, baseType: !1412, size: 64, offset: 704)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!46, !923, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1416, file: !38, line: 59, baseType: !46, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !997, file: !20, line: 114, baseType: !956, size: 64, offset: 768)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !997, file: !20, line: 115, baseType: !404, size: 64, offset: 832)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !997, file: !20, line: 116, baseType: !404, size: 64, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !997, file: !20, line: 118, baseType: !951, size: 64, offset: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !997, file: !20, line: 119, baseType: !947, size: 64, offset: 1024)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !997, file: !20, line: 121, baseType: !1425, size: 64, offset: 1088)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !984, file: !985, line: 88, baseType: !936, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !984, file: !985, line: 89, baseType: !956, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !984, file: !985, line: 90, baseType: !947, size: 64, offset: 512)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !984, file: !985, line: 91, baseType: !947, size: 64, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !984, file: !985, line: 92, baseType: !947, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !984, file: !985, line: 94, baseType: !956, size: 64, offset: 704)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !984, file: !985, line: 95, baseType: !956, size: 64, offset: 768)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !984, file: !985, line: 97, baseType: !1412, size: 64, offset: 832)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !984, file: !985, line: 98, baseType: !956, size: 64, offset: 896)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !984, file: !985, line: 100, baseType: !956, size: 64, offset: 960)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !984, file: !985, line: 102, baseType: !956, size: 64, offset: 1024)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !984, file: !985, line: 103, baseType: !947, size: 64, offset: 1088)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !984, file: !985, line: 105, baseType: !951, size: 64, offset: 1152)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !984, file: !985, line: 107, baseType: !1441, size: 64, offset: 1216)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1443)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !985, line: 107, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !984, file: !985, line: 109, baseType: !704, size: 8, offset: 1280)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !272, file: !26, line: 715, baseType: !996, size: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !272, file: !26, line: 717, baseType: !84, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !272, file: !26, line: 719, baseType: !84, size: 64, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !272, file: !26, line: 721, baseType: !604, size: 256, offset: 1024)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !272, file: !26, line: 725, baseType: !1450, size: 448, offset: 1280)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1455}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1450, file: !26, line: 518, baseType: !90, size: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1450, file: !26, line: 519, baseType: !90, size: 128, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1450, file: !26, line: 520, baseType: !90, size: 128, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1450, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !272, file: !26, line: 726, baseType: !1457, size: 2496, offset: 1728)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1503, !1504, !1505, !1506, !1507, !1508, !1579, !1580, !1581, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1619, !1623}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1457, file: !38, line: 664, baseType: !1415, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1457, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1457, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1457, file: !38, line: 667, baseType: !704, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1457, file: !38, line: 668, baseType: !704, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1457, file: !38, line: 669, baseType: !704, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1457, file: !38, line: 670, baseType: !704, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1457, file: !38, line: 671, baseType: !704, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1457, file: !38, line: 672, baseType: !704, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1457, file: !38, line: 673, baseType: !704, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1457, file: !38, line: 674, baseType: !704, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1457, file: !38, line: 675, baseType: !1280, size: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1457, file: !38, line: 676, baseType: !288, size: 32, offset: 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1457, file: !38, line: 678, baseType: !90, size: 128, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1457, file: !38, line: 679, baseType: !1022, size: 256, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1457, file: !38, line: 680, baseType: !1475, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1477, line: 43, size: 1536, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1486, !1487, !1488, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1476, file: !1477, line: 44, baseType: !158, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1476, file: !1477, line: 45, baseType: !46, size: 32, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1476, file: !1477, line: 46, baseType: !90, size: 128, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1476, file: !1477, line: 47, baseType: !288, size: 32, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1476, file: !1477, line: 48, baseType: !1484, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1476, file: !1477, line: 49, baseType: !1263, size: 320, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1476, file: !1477, line: 50, baseType: !98, size: 64, offset: 704)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1476, file: !1477, line: 51, baseType: !1489, size: 64, offset: 768)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1490, line: 29, baseType: !524)
!1490 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1476, file: !1477, line: 52, baseType: !1489, size: 64, offset: 832)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1476, file: !1477, line: 53, baseType: !1489, size: 64, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1476, file: !1477, line: 54, baseType: !1489, size: 64, offset: 960)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1476, file: !1477, line: 55, baseType: !1489, size: 64, offset: 1024)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1476, file: !1477, line: 56, baseType: !98, size: 64, offset: 1088)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1476, file: !1477, line: 57, baseType: !98, size: 64, offset: 1152)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1476, file: !1477, line: 58, baseType: !98, size: 64, offset: 1216)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1476, file: !1477, line: 59, baseType: !98, size: 64, offset: 1280)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1476, file: !1477, line: 60, baseType: !98, size: 64, offset: 1344)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1476, file: !1477, line: 61, baseType: !923, size: 64, offset: 1408)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1476, file: !1477, line: 62, baseType: !704, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1476, file: !1477, line: 63, baseType: !704, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1457, file: !38, line: 681, baseType: !704, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1457, file: !38, line: 682, baseType: !704, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1457, file: !38, line: 683, baseType: !704, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1457, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1457, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1457, file: !38, line: 690, baseType: !1509, size: 512, offset: 640)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1510)
!1510 = !{!1511, !1517, !1518, !1523, !1575, !1576, !1577, !1578}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1509, file: !33, line: 119, baseType: !1512, size: 256)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1513, line: 9, size: 256, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1512, file: !1513, line: 10, baseType: !710, size: 192, align: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1512, file: !1513, line: 11, baseType: !1489, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1509, file: !33, line: 120, baseType: !1489, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1509, file: !33, line: 121, baseType: !1519, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!32, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1509, file: !33, line: 122, baseType: !1524, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1526)
!1526 = !{!1527, !1552, !1553, !1556, !1561, !1562, !1570, !1574}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1525, file: !33, line: 160, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1529, file: !33, line: 216, baseType: !540, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1529, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1529, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1529, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1529, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1529, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1529, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1529, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1529, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1529, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1529, file: !33, line: 227, baseType: !325, size: 16, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1529, file: !33, line: 228, baseType: !325, size: 16, offset: 208)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1529, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1529, file: !33, line: 235, baseType: !1489, size: 64, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1529, file: !33, line: 236, baseType: !1522, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1529, file: !33, line: 237, baseType: !1489, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1529, file: !33, line: 238, baseType: !1522, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1529, file: !33, line: 239, baseType: !1549, size: 4096, align: 512, offset: 512)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1525, size: 4096, align: 512, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 8)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1525, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1525, file: !33, line: 162, baseType: !1554, size: 32, offset: 96)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !91, line: 32, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !387, line: 96, baseType: !46)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1525, file: !33, line: 163, baseType: !1557, size: 32, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !555, line: 274, baseType: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !555, line: 274, size: 32, elements: !1559)
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1558, file: !555, line: 274, baseType: !554, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1525, file: !33, line: 164, baseType: !1522, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1525, file: !33, line: 165, baseType: !1563, size: 128, offset: 256)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1513, line: 14, size: 128, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1563, file: !1513, line: 15, baseType: !1566, size: 128)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !711, line: 26, size: 128, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1566, file: !711, line: 27, baseType: !812, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1566, file: !711, line: 28, baseType: !715, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1525, file: !33, line: 166, baseType: !1571, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1489}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1525, file: !33, line: 167, baseType: !1489, size: 64, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1509, file: !33, line: 123, baseType: !316, size: 8, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1509, file: !33, line: 124, baseType: !316, size: 8, offset: 456)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1509, file: !33, line: 125, baseType: !316, size: 8, offset: 464)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1509, file: !33, line: 126, baseType: !316, size: 8, offset: 472)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1457, file: !38, line: 691, baseType: !108, size: 64, offset: 1152)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1457, file: !38, line: 692, baseType: !669, size: 256, offset: 1216)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1457, file: !38, line: 693, baseType: !1582, size: 192, offset: 1472)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1583, line: 41, baseType: !1584)
!1583 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1583, line: 37, size: 192, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1584, file: !1583, line: 38, baseType: !288, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1584, file: !1583, line: 39, baseType: !90, size: 128, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1457, file: !38, line: 694, baseType: !1484, size: 64, offset: 1664)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1457, file: !38, line: 695, baseType: !308, size: 32, offset: 1728)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1457, file: !38, line: 696, baseType: !308, size: 32, offset: 1760)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1457, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1457, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1457, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1457, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1457, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1457, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1457, file: !38, line: 703, baseType: !704, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1457, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1457, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1457, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1457, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1457, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1457, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1457, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1457, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1457, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1457, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1457, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1457, file: !38, line: 715, baseType: !108, size: 64, offset: 2048)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1457, file: !38, line: 716, baseType: !108, size: 64, offset: 2112)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1457, file: !38, line: 717, baseType: !108, size: 64, offset: 2176)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1457, file: !38, line: 718, baseType: !108, size: 64, offset: 2240)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1457, file: !38, line: 720, baseType: !1614, size: 64, offset: 2304)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1615, file: !38, line: 633, baseType: !288, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1615, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1457, file: !38, line: 721, baseType: !1620, size: 64, offset: 2368)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !923, !585}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1457, file: !38, line: 722, baseType: !1624, size: 64, offset: 2432)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !272, file: !26, line: 727, baseType: !1627, size: 64, offset: 4224)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1636, !1637, !1638}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1628, file: !38, line: 743, baseType: !953, size: 1472)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1628, file: !38, line: 744, baseType: !956, size: 64, offset: 1472)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1628, file: !38, line: 745, baseType: !1633, size: 64, offset: 1536)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !923, !704}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1628, file: !38, line: 746, baseType: !956, size: 64, offset: 1600)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1628, file: !38, line: 747, baseType: !947, size: 64, offset: 1664)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1628, file: !38, line: 748, baseType: !947, size: 64, offset: 1728)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !272, file: !26, line: 736, baseType: !1640, size: 128, offset: 4288)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1641)
!1641 = !{!1642, !1646}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1640, file: !26, line: 531, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1645, line: 13, flags: DIFlagFwdDecl)
!1645 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1640, file: !26, line: 532, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !272, file: !26, line: 738, baseType: !1650, size: 64, offset: 4416)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !272, file: !26, line: 740, baseType: !1654, size: 64, offset: 4480)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !272, file: !26, line: 741, baseType: !108, size: 64, offset: 4544)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !272, file: !26, line: 746, baseType: !108, size: 64, offset: 4608)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !272, file: !26, line: 747, baseType: !1658, size: 64, offset: 4672)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1660)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !272, file: !26, line: 749, baseType: !1662, size: 64, offset: 4736)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1664)
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1663, file: !26, line: 433, baseType: !7, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1663, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1663, file: !26, line: 435, baseType: !98, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !272, file: !26, line: 751, baseType: !90, size: 128, offset: 4800)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !272, file: !26, line: 762, baseType: !1670, size: 64, offset: 4928)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !272, file: !26, line: 770, baseType: !1673, offset: 4992)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1674, line: 5, elements: !488)
!1674 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !272, file: !26, line: 772, baseType: !1676, size: 64, offset: 4992)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1678, line: 18, flags: DIFlagFwdDecl)
!1678 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !272, file: !26, line: 773, baseType: !1680, size: 64, offset: 5056)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !985, line: 22, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !272, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !272, file: !26, line: 778, baseType: !1684, size: 32, offset: 5152)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !91, line: 21, baseType: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !91, line: 18, baseType: !1280)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !272, file: !26, line: 779, baseType: !1280, size: 32, offset: 5184)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !272, file: !26, line: 781, baseType: !288, size: 32, offset: 5216)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !272, file: !26, line: 782, baseType: !90, size: 128, offset: 5248)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !272, file: !26, line: 784, baseType: !1690, size: 64, offset: 5376)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1693, line: 52, size: 768, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1703, !1707, !1708, !1709, !1710, !1714, !1718}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1692, file: !1693, line: 53, baseType: !158, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1692, file: !1693, line: 55, baseType: !404, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1692, file: !1693, line: 56, baseType: !404, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1692, file: !1693, line: 58, baseType: !936, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1692, file: !1693, line: 59, baseType: !1700, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!355, !939, !945}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1692, file: !1693, line: 61, baseType: !1704, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !1690}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1692, file: !1693, line: 62, baseType: !947, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1692, file: !1693, line: 64, baseType: !956, size: 64, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1692, file: !1693, line: 66, baseType: !743, size: 64, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1692, file: !1693, line: 67, baseType: !1711, size: 64, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!625, !939}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1692, file: !1693, line: 69, baseType: !1715, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !939, !778, !785}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1692, file: !1693, line: 71, baseType: !951, size: 64, offset: 704)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !272, file: !26, line: 785, baseType: !404, size: 64, offset: 5440)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !272, file: !26, line: 787, baseType: !947, size: 64, offset: 5504)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !272, file: !26, line: 788, baseType: !1722, size: 64, offset: 5568)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !272, file: !26, line: 789, baseType: !1725, size: 64, offset: 5632)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !272, file: !26, line: 791, baseType: !1728, size: 64, offset: 5696)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1734, !1735}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1729, file: !26, line: 598, baseType: !53, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1729, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1729, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1729, file: !26, line: 601, baseType: !704, size: 8, offset: 96)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1729, file: !26, line: 602, baseType: !704, size: 8, offset: 104)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !272, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !272, file: !26, line: 795, baseType: !704, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !272, file: !26, line: 796, baseType: !704, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !272, file: !26, line: 797, baseType: !704, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !272, file: !26, line: 798, baseType: !704, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !272, file: !26, line: 799, baseType: !704, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !268, file: !269, line: 245, baseType: !108, size: 64, offset: 5824)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !268, file: !269, line: 246, baseType: !7, size: 32, offset: 5888)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !268, file: !269, line: 247, baseType: !46, size: 32, offset: 5920)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !268, file: !269, line: 249, baseType: !90, size: 128, offset: 5952)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !268, file: !269, line: 250, baseType: !90, size: 128, offset: 6080)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !268, file: !269, line: 251, baseType: !90, size: 128, offset: 6208)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !268, file: !269, line: 252, baseType: !90, size: 128, offset: 6336)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !268, file: !269, line: 254, baseType: !1750, size: 64, offset: 6464)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !269, line: 411, size: 6720, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1759, !1760, !1761, !1765, !1769, !1770, !1771, !1772, !1773}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1751, file: !269, line: 412, baseType: !90, size: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1751, file: !269, line: 413, baseType: !355, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1751, file: !269, line: 416, baseType: !1756, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!46, !267}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1751, file: !269, line: 417, baseType: !1756, size: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1751, file: !269, line: 418, baseType: !1756, size: 64, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1751, file: !269, line: 421, baseType: !1762, size: 64, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!704, !267}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1751, file: !269, line: 422, baseType: !1766, size: 64, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!46, !267, !1415}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1751, file: !269, line: 423, baseType: !1756, size: 64, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1751, file: !269, line: 426, baseType: !117, size: 8, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1751, file: !269, line: 427, baseType: !272, size: 5824, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !1751, file: !269, line: 428, baseType: !90, size: 128, offset: 6464)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1751, file: !269, line: 429, baseType: !90, size: 128, offset: 6592)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !268, file: !269, line: 255, baseType: !1775, size: 64, offset: 6528)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !269, line: 202, size: 6976, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1791, !1795, !1796, !1797, !1798, !1799}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1776, file: !269, line: 203, baseType: !272, size: 5824)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1776, file: !269, line: 204, baseType: !117, size: 8, offset: 5824)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1776, file: !269, line: 205, baseType: !90, size: 128, offset: 5888)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1776, file: !269, line: 206, baseType: !90, size: 128, offset: 6016)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1776, file: !269, line: 207, baseType: !90, size: 128, offset: 6144)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1776, file: !269, line: 209, baseType: !1750, size: 64, offset: 6272)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1776, file: !269, line: 210, baseType: !1785, size: 64, offset: 6336)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !269, line: 369, size: 128, elements: !1787)
!1787 = !{!1788, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1786, file: !269, line: 370, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 64, elements: !1550)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1786, file: !269, line: 371, baseType: !1785, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1776, file: !269, line: 212, baseType: !1792, size: 400, offset: 6400)
!1792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 400, elements: !1793)
!1793 = !{!1794}
!1794 = !DISubrange(count: 50)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !1776, file: !269, line: 213, baseType: !117, size: 8, offset: 6800)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !1776, file: !269, line: 214, baseType: !117, size: 8, offset: 6808)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1776, file: !269, line: 215, baseType: !7, size: 32, offset: 6816)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1776, file: !269, line: 216, baseType: !117, size: 8, offset: 6848)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1776, file: !269, line: 217, baseType: !1800, size: 64, offset: 6912)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !269, line: 217, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !268, file: !269, line: 256, baseType: !1803, size: 64, offset: 6592)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !269, line: 374, size: 1664, elements: !1805)
!1805 = !{!1806, !1807, !1815, !1816, !1820, !1824, !1825, !1826, !1827}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1804, file: !269, line: 375, baseType: !158, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1804, file: !269, line: 376, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1384, line: 240, size: 128, elements: !1811)
!1811 = !{!1812, !1814}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1810, file: !1384, line: 241, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 64, elements: !1550)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1810, file: !1384, line: 242, baseType: !1404, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1804, file: !269, line: 377, baseType: !7, size: 32, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1804, file: !269, line: 378, baseType: !1817, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!46, !267, !1808}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1804, file: !269, line: 379, baseType: !1821, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !267}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1804, file: !269, line: 380, baseType: !1821, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1804, file: !269, line: 381, baseType: !1766, size: 64, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1804, file: !269, line: 382, baseType: !1756, size: 64, offset: 448)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1804, file: !269, line: 383, baseType: !997, size: 1152, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !268, file: !269, line: 257, baseType: !1829, size: 64, offset: 6656)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !269, line: 226, size: 256, elements: !1831)
!1831 = !{!1832, !1833, !1869, !1870}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !1830, file: !269, line: 227, baseType: !1775, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1830, file: !269, line: 228, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !269, line: 388, size: 2240, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1851, !1852, !1856, !1860, !1864, !1868}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1835, file: !269, line: 389, baseType: !90, size: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1835, file: !269, line: 390, baseType: !355, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1835, file: !269, line: 391, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1384, line: 245, size: 640, elements: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1842, file: !1384, line: 246, baseType: !1813, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1842, file: !1384, line: 247, baseType: !1404, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !1842, file: !1384, line: 250, baseType: !1847, size: 512, offset: 128)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1848, size: 512, elements: !1550)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1842, file: !1384, line: 248, size: 64, elements: !1849)
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1848, file: !1384, line: 249, baseType: !1813, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1835, file: !269, line: 392, baseType: !7, size: 32, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1835, file: !269, line: 393, baseType: !1853, size: 64, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!46, !1829, !1840}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1835, file: !269, line: 395, baseType: !1857, size: 64, offset: 384)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1829}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1835, file: !269, line: 396, baseType: !1861, size: 64, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!46, !1829, !1415}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1835, file: !269, line: 397, baseType: !1865, size: 64, offset: 512)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!46, !1829}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1835, file: !269, line: 398, baseType: !1804, size: 1664, offset: 576)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1830, file: !269, line: 229, baseType: !84, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !1830, file: !269, line: 230, baseType: !1415, size: 32, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !268, file: !269, line: 259, baseType: !1785, size: 64, offset: 6720)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !268, file: !269, line: 261, baseType: !46, size: 32, offset: 6784)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !268, file: !269, line: 262, baseType: !46, size: 32, offset: 6816)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !268, file: !269, line: 263, baseType: !7, size: 32, offset: 6848)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !268, file: !269, line: 264, baseType: !90, size: 128, offset: 6912)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !268, file: !269, line: 265, baseType: !90, size: 128, offset: 7040)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !269, line: 267, baseType: !1792, size: 400, offset: 7168)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !269, line: 268, baseType: !46, size: 32, offset: 7584)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !268, file: !269, line: 269, baseType: !1800, size: 64, offset: 7616)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !268, file: !269, line: 270, baseType: !84, size: 64, offset: 7680)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889}
!1883 = !DILocalVariable(name: "dev", arg: 1, scope: !264, file: !3, line: 132, type: !267)
!1884 = !DILocalVariable(name: "rule", arg: 2, scope: !264, file: !3, line: 132, type: !1881)
!1885 = !DILocalVariable(name: "idx", arg: 3, scope: !264, file: !3, line: 132, type: !46)
!1886 = !DILocalVariable(name: "res", scope: !264, file: !3, line: 134, type: !164)
!1887 = !DILocalVariable(name: "local_res", scope: !264, file: !3, line: 134, type: !152)
!1888 = !DILocalVariable(name: "i", scope: !264, file: !3, line: 135, type: !46)
!1889 = !DILabel(scope: !264, name: "__add", file: !3, line: 185)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !213)
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !1893, isLocal: true, isDefinition: true)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 312, elements: !1894)
!1894 = !{!1895}
!1895 = !DISubrange(count: 39)
!1896 = !DIGlobalVariableExpression(var: !1897, expr: !DIExpression())
!1897 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !195, isLocal: true, isDefinition: true)
!1898 = !DIGlobalVariableExpression(var: !1899, expr: !DIExpression())
!1899 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !1900, isLocal: true, isDefinition: true)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 240, elements: !1901)
!1901 = !{!1902}
!1902 = !DISubrange(count: 30)
!1903 = !DIGlobalVariableExpression(var: !1904, expr: !DIExpression())
!1904 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !185, isLocal: true, isDefinition: true)
!1905 = !DIGlobalVariableExpression(var: !1906, expr: !DIExpression())
!1906 = distinct !DIGlobalVariable(name: "xtab", scope: !1907, file: !3, line: 197, type: !1919, isLocal: true, isDefinition: true)
!1907 = distinct !DISubprogram(name: "pnp_assign_dma", scope: !3, file: !3, line: 191, type: !1908, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!46, !267, !1910, !46}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917, !1918}
!1912 = !DILocalVariable(name: "dev", arg: 1, scope: !1907, file: !3, line: 191, type: !267)
!1913 = !DILocalVariable(name: "rule", arg: 2, scope: !1907, file: !3, line: 191, type: !1910)
!1914 = !DILocalVariable(name: "idx", arg: 3, scope: !1907, file: !3, line: 191, type: !46)
!1915 = !DILocalVariable(name: "res", scope: !1907, file: !3, line: 193, type: !164)
!1916 = !DILocalVariable(name: "local_res", scope: !1907, file: !3, line: 193, type: !152)
!1917 = !DILocalVariable(name: "i", scope: !1907, file: !3, line: 194, type: !46)
!1918 = !DILabel(scope: !1907, name: "__add", file: !3, line: 230)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 128, elements: !1550)
!1920 = !DIGlobalVariableExpression(var: !1921, expr: !DIExpression())
!1921 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !1893, isLocal: true, isDefinition: true)
!1922 = !DIGlobalVariableExpression(var: !1923, expr: !DIExpression())
!1923 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !195, isLocal: true, isDefinition: true)
!1924 = !DIGlobalVariableExpression(var: !1925, expr: !DIExpression())
!1925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !185, isLocal: true, isDefinition: true)
!1926 = !{i32 7, !"Dwarf Version", i32 5}
!1927 = !{i32 2, !"Debug Info Version", i32 3}
!1928 = !{i32 1, !"wchar_size", i32 2}
!1929 = !{i32 8, !"cf-protection-branch", i32 1}
!1930 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1931 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1932 = !{i32 1, !"Code Model", i32 2}
!1933 = !{i32 1, !"override-stack-alignment", i32 8}
!1934 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1935 = distinct !DISubprogram(name: "pnp_init_resources", scope: !3, file: !3, line: 236, type: !1822, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1936)
!1936 = !{!1937}
!1937 = !DILocalVariable(name: "dev", arg: 1, scope: !1935, file: !3, line: 236, type: !267)
!1938 = !DILocation(line: 236, column: 41, scope: !1935)
!1939 = !DILocation(line: 238, column: 21, scope: !1935)
!1940 = !DILocation(line: 238, column: 2, scope: !1935)
!1941 = !DILocation(line: 239, column: 1, scope: !1935)
!1942 = !DISubprogram(name: "pnp_free_resources", scope: !87, file: !87, line: 152, type: !1822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1943 = distinct !DISubprogram(name: "pnp_auto_config_dev", scope: !3, file: !3, line: 308, type: !1757, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DILocalVariable(name: "dev", arg: 1, scope: !1943, file: !3, line: 308, type: !267)
!1946 = !DILocalVariable(name: "i", scope: !1943, file: !3, line: 310, type: !46)
!1947 = !DILocalVariable(name: "ret", scope: !1943, file: !3, line: 310, type: !46)
!1948 = !DILocation(line: 308, column: 41, scope: !1943)
!1949 = !DILocation(line: 310, column: 2, scope: !1943)
!1950 = !DILocation(line: 310, column: 6, scope: !1943)
!1951 = !DILocation(line: 310, column: 9, scope: !1943)
!1952 = !DILocation(line: 312, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 312, column: 6)
!1954 = !DILocation(line: 312, column: 6, scope: !1943)
!1955 = !DILocation(line: 313, column: 3, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 313, column: 3)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 313, column: 3)
!1958 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 312, column: 31)
!1959 = !DILocation(line: 313, column: 3, scope: !1957)
!1960 = !DILocation(line: 313, column: 3, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 313, column: 3)
!1962 = !DILocation(line: 313, column: 3, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 313, column: 3)
!1964 = !DILocation(line: 314, column: 3, scope: !1958)
!1965 = !DILocation(line: 317, column: 29, scope: !1943)
!1966 = !DILocation(line: 317, column: 8, scope: !1943)
!1967 = !DILocation(line: 317, column: 6, scope: !1943)
!1968 = !DILocation(line: 318, column: 6, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 318, column: 6)
!1970 = !DILocation(line: 318, column: 10, scope: !1969)
!1971 = !DILocation(line: 318, column: 6, scope: !1943)
!1972 = !DILocation(line: 319, column: 3, scope: !1969)
!1973 = !DILocation(line: 321, column: 9, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 321, column: 2)
!1975 = !DILocation(line: 321, column: 7, scope: !1974)
!1976 = !DILocation(line: 321, column: 14, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 321, column: 2)
!1978 = !DILocation(line: 321, column: 18, scope: !1977)
!1979 = !DILocation(line: 321, column: 23, scope: !1977)
!1980 = !DILocation(line: 321, column: 16, scope: !1977)
!1981 = !DILocation(line: 321, column: 2, scope: !1974)
!1982 = !DILocation(line: 322, column: 30, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 321, column: 48)
!1984 = !DILocation(line: 322, column: 35, scope: !1983)
!1985 = !DILocation(line: 322, column: 9, scope: !1983)
!1986 = !DILocation(line: 322, column: 7, scope: !1983)
!1987 = !DILocation(line: 323, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 323, column: 7)
!1989 = !DILocation(line: 323, column: 11, scope: !1988)
!1990 = !DILocation(line: 323, column: 7, scope: !1983)
!1991 = !DILocation(line: 324, column: 4, scope: !1988)
!1992 = !DILocation(line: 325, column: 2, scope: !1983)
!1993 = !DILocation(line: 321, column: 44, scope: !1977)
!1994 = !DILocation(line: 321, column: 2, scope: !1977)
!1995 = distinct !{!1995, !1981, !1996, !1997, !1998}
!1996 = !DILocation(line: 325, column: 2, scope: !1974)
!1997 = !{!"llvm.loop.mustprogress"}
!1998 = !{!"llvm.loop.unroll.disable"}
!1999 = !DILocation(line: 327, column: 2, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 327, column: 2)
!2001 = !DILocation(line: 327, column: 2, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 327, column: 2)
!2003 = !DILocation(line: 328, column: 9, scope: !1943)
!2004 = !DILocation(line: 328, column: 2, scope: !1943)
!2005 = !DILocation(line: 329, column: 1, scope: !1943)
!2006 = !DISubprogram(name: "_dev_printk", scope: !2007, file: !2007, line: 41, type: !2008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2007 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !158, !939, !158, null}
!2010 = distinct !DISubprogram(name: "pnp_assign_resources", scope: !3, file: !3, line: 256, type: !2011, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!46, !267, !46}
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2025}
!2014 = !DILocalVariable(name: "dev", arg: 1, scope: !2010, file: !3, line: 256, type: !267)
!2015 = !DILocalVariable(name: "set", arg: 2, scope: !2010, file: !3, line: 256, type: !46)
!2016 = !DILocalVariable(name: "option", scope: !2010, file: !3, line: 258, type: !85)
!2017 = !DILocalVariable(name: "nport", scope: !2010, file: !3, line: 259, type: !46)
!2018 = !DILocalVariable(name: "nmem", scope: !2010, file: !3, line: 259, type: !46)
!2019 = !DILocalVariable(name: "nirq", scope: !2010, file: !3, line: 259, type: !46)
!2020 = !DILocalVariable(name: "ndma", scope: !2010, file: !3, line: 260, type: !46)
!2021 = !DILocalVariable(name: "ret", scope: !2010, file: !3, line: 261, type: !46)
!2022 = !DILocalVariable(name: "__mptr", scope: !2023, file: !3, line: 267, type: !84)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 267, column: 2)
!2024 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 267, column: 2)
!2025 = !DILocalVariable(name: "__mptr", scope: !2026, file: !3, line: 267, type: !84)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 267, column: 2)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 267, column: 2)
!2028 = !DILocation(line: 256, column: 49, scope: !2010)
!2029 = !DILocation(line: 256, column: 58, scope: !2010)
!2030 = !DILocation(line: 258, column: 2, scope: !2010)
!2031 = !DILocation(line: 258, column: 21, scope: !2010)
!2032 = !DILocation(line: 259, column: 2, scope: !2010)
!2033 = !DILocation(line: 259, column: 6, scope: !2010)
!2034 = !DILocation(line: 259, column: 17, scope: !2010)
!2035 = !DILocation(line: 259, column: 27, scope: !2010)
!2036 = !DILocation(line: 260, column: 2, scope: !2010)
!2037 = !DILocation(line: 260, column: 6, scope: !2010)
!2038 = !DILocation(line: 261, column: 2, scope: !2010)
!2039 = !DILocation(line: 261, column: 6, scope: !2010)
!2040 = !DILocation(line: 263, column: 2, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 263, column: 2)
!2042 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 263, column: 2)
!2043 = !DILocation(line: 263, column: 2, scope: !2042)
!2044 = !DILocation(line: 263, column: 2, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 263, column: 2)
!2046 = !DILocation(line: 263, column: 2, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 263, column: 2)
!2048 = !DILocation(line: 264, column: 2, scope: !2010)
!2049 = !DILocation(line: 265, column: 27, scope: !2010)
!2050 = !DILocation(line: 265, column: 2, scope: !2010)
!2051 = !DILocation(line: 267, column: 2, scope: !2023)
!2052 = !DILocation(line: 267, column: 2, scope: !2024)
!2053 = !DILocation(line: 267, column: 2, scope: !2027)
!2054 = !DILocation(line: 268, column: 31, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 268, column: 7)
!2056 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 267, column: 51)
!2057 = !DILocation(line: 268, column: 7, scope: !2055)
!2058 = !DILocation(line: 268, column: 39, scope: !2055)
!2059 = !DILocation(line: 269, column: 22, scope: !2055)
!2060 = !DILocation(line: 269, column: 7, scope: !2055)
!2061 = !DILocation(line: 269, column: 33, scope: !2055)
!2062 = !DILocation(line: 269, column: 30, scope: !2055)
!2063 = !DILocation(line: 268, column: 7, scope: !2056)
!2064 = !DILocation(line: 270, column: 5, scope: !2055)
!2065 = !DILocation(line: 272, column: 11, scope: !2056)
!2066 = !DILocation(line: 272, column: 19, scope: !2056)
!2067 = !DILocation(line: 272, column: 3, scope: !2056)
!2068 = !DILocation(line: 274, column: 26, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 272, column: 25)
!2070 = !DILocation(line: 274, column: 32, scope: !2069)
!2071 = !DILocation(line: 274, column: 40, scope: !2069)
!2072 = !DILocation(line: 274, column: 53, scope: !2069)
!2073 = !DILocation(line: 274, column: 10, scope: !2069)
!2074 = !DILocation(line: 274, column: 8, scope: !2069)
!2075 = !DILocation(line: 275, column: 4, scope: !2069)
!2076 = !DILocation(line: 277, column: 25, scope: !2069)
!2077 = !DILocation(line: 277, column: 31, scope: !2069)
!2078 = !DILocation(line: 277, column: 39, scope: !2069)
!2079 = !DILocation(line: 277, column: 50, scope: !2069)
!2080 = !DILocation(line: 277, column: 10, scope: !2069)
!2081 = !DILocation(line: 277, column: 8, scope: !2069)
!2082 = !DILocation(line: 278, column: 4, scope: !2069)
!2083 = !DILocation(line: 280, column: 25, scope: !2069)
!2084 = !DILocation(line: 280, column: 31, scope: !2069)
!2085 = !DILocation(line: 280, column: 39, scope: !2069)
!2086 = !DILocation(line: 280, column: 50, scope: !2069)
!2087 = !DILocation(line: 280, column: 10, scope: !2069)
!2088 = !DILocation(line: 280, column: 8, scope: !2069)
!2089 = !DILocation(line: 281, column: 4, scope: !2069)
!2090 = !DILocation(line: 284, column: 25, scope: !2069)
!2091 = !DILocation(line: 284, column: 31, scope: !2069)
!2092 = !DILocation(line: 284, column: 39, scope: !2069)
!2093 = !DILocation(line: 284, column: 50, scope: !2069)
!2094 = !DILocation(line: 284, column: 10, scope: !2069)
!2095 = !DILocation(line: 284, column: 8, scope: !2069)
!2096 = !DILocation(line: 285, column: 4, scope: !2069)
!2097 = !DILocation(line: 288, column: 8, scope: !2069)
!2098 = !DILocation(line: 289, column: 4, scope: !2069)
!2099 = !DILocation(line: 291, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 291, column: 7)
!2101 = !DILocation(line: 291, column: 11, scope: !2100)
!2102 = !DILocation(line: 291, column: 7, scope: !2056)
!2103 = !DILocation(line: 292, column: 4, scope: !2100)
!2104 = !DILocation(line: 293, column: 2, scope: !2056)
!2105 = !DILocation(line: 267, column: 2, scope: !2026)
!2106 = distinct !{!2106, !2052, !2107, !1997, !1998}
!2107 = !DILocation(line: 293, column: 2, scope: !2024)
!2108 = !DILocation(line: 295, column: 2, scope: !2010)
!2109 = !DILocation(line: 296, column: 6, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 296, column: 6)
!2111 = !DILocation(line: 296, column: 10, scope: !2110)
!2112 = !DILocation(line: 296, column: 6, scope: !2010)
!2113 = !DILocation(line: 297, column: 3, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 297, column: 3)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 297, column: 3)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 296, column: 15)
!2117 = !DILocation(line: 297, column: 3, scope: !2115)
!2118 = !DILocation(line: 297, column: 3, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 297, column: 3)
!2120 = !DILocation(line: 297, column: 3, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 297, column: 3)
!2122 = !DILocation(line: 298, column: 28, scope: !2116)
!2123 = !DILocation(line: 298, column: 3, scope: !2116)
!2124 = !DILocation(line: 299, column: 2, scope: !2116)
!2125 = !DILocation(line: 300, column: 26, scope: !2110)
!2126 = !DILocation(line: 300, column: 3, scope: !2110)
!2127 = !DILocation(line: 301, column: 9, scope: !2010)
!2128 = !DILocation(line: 302, column: 1, scope: !2010)
!2129 = !DILocation(line: 301, column: 2, scope: !2010)
!2130 = !DISubprogram(name: "_dev_err", scope: !2007, file: !2007, line: 50, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !939, !158, null}
!2133 = distinct !DISubprogram(name: "pnp_start_dev", scope: !3, file: !3, line: 337, type: !1757, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "dev", arg: 1, scope: !2133, file: !3, line: 337, type: !267)
!2136 = !DILocation(line: 337, column: 35, scope: !2133)
!2137 = !DILocation(line: 339, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 339, column: 6)
!2139 = !DILocation(line: 339, column: 6, scope: !2133)
!2140 = !DILocation(line: 340, column: 3, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 340, column: 3)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 340, column: 3)
!2143 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 339, column: 27)
!2144 = !DILocation(line: 340, column: 3, scope: !2142)
!2145 = !DILocation(line: 340, column: 3, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 340, column: 3)
!2147 = !DILocation(line: 340, column: 3, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 340, column: 3)
!2149 = !DILocation(line: 341, column: 3, scope: !2143)
!2150 = !DILocation(line: 344, column: 25, scope: !2133)
!2151 = !DILocation(line: 344, column: 2, scope: !2133)
!2152 = !DILocation(line: 345, column: 6, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 345, column: 6)
!2154 = !DILocation(line: 345, column: 11, scope: !2153)
!2155 = !DILocation(line: 345, column: 21, scope: !2153)
!2156 = !DILocation(line: 345, column: 25, scope: !2153)
!2157 = !DILocation(line: 345, column: 30, scope: !2153)
!2158 = !DILocation(line: 345, column: 6, scope: !2133)
!2159 = !DILocation(line: 346, column: 3, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 346, column: 3)
!2161 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 345, column: 35)
!2162 = !DILocation(line: 346, column: 3, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 346, column: 3)
!2164 = !DILocation(line: 347, column: 3, scope: !2161)
!2165 = !DILocation(line: 350, column: 2, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 350, column: 2)
!2167 = !DILocation(line: 350, column: 2, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 350, column: 2)
!2169 = !DILocation(line: 351, column: 2, scope: !2133)
!2170 = !DILocation(line: 352, column: 1, scope: !2133)
!2171 = !DISubprogram(name: "dbg_pnp_show_resources", scope: !87, file: !87, line: 150, type: !2172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !267, !355}
!2174 = !DISubprogram(name: "_dev_info", scope: !2007, file: !2007, line: 56, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2175 = distinct !DISubprogram(name: "pnp_stop_dev", scope: !3, file: !3, line: 361, type: !1757, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2176)
!2176 = !{!2177}
!2177 = !DILocalVariable(name: "dev", arg: 1, scope: !2175, file: !3, line: 361, type: !267)
!2178 = !DILocation(line: 361, column: 34, scope: !2175)
!2179 = !DILocation(line: 363, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 363, column: 6)
!2181 = !{i8 0, i8 2}
!2182 = !DILocation(line: 363, column: 6, scope: !2175)
!2183 = !DILocation(line: 364, column: 3, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 364, column: 3)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 364, column: 3)
!2186 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 363, column: 29)
!2187 = !DILocation(line: 364, column: 3, scope: !2185)
!2188 = !DILocation(line: 364, column: 3, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 364, column: 3)
!2190 = !DILocation(line: 364, column: 3, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 364, column: 3)
!2192 = !DILocation(line: 365, column: 3, scope: !2186)
!2193 = !DILocation(line: 367, column: 6, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 367, column: 6)
!2195 = !DILocation(line: 367, column: 11, scope: !2194)
!2196 = !DILocation(line: 367, column: 21, scope: !2194)
!2197 = !DILocation(line: 367, column: 29, scope: !2194)
!2198 = !DILocation(line: 367, column: 34, scope: !2194)
!2199 = !DILocation(line: 367, column: 6, scope: !2175)
!2200 = !DILocation(line: 368, column: 3, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 368, column: 3)
!2202 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 367, column: 39)
!2203 = !DILocation(line: 368, column: 3, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 368, column: 3)
!2205 = !DILocation(line: 369, column: 3, scope: !2202)
!2206 = !DILocation(line: 372, column: 2, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 372, column: 2)
!2208 = !DILocation(line: 372, column: 2, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 372, column: 2)
!2210 = !DILocation(line: 373, column: 2, scope: !2175)
!2211 = !DILocation(line: 374, column: 1, scope: !2175)
!2212 = distinct !DISubprogram(name: "pnp_activate_dev", scope: !3, file: !3, line: 383, type: !1757, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2213 = !{!2214, !2215}
!2214 = !DILocalVariable(name: "dev", arg: 1, scope: !2212, file: !3, line: 383, type: !267)
!2215 = !DILocalVariable(name: "error", scope: !2212, file: !3, line: 385, type: !46)
!2216 = !DILocation(line: 383, column: 38, scope: !2212)
!2217 = !DILocation(line: 385, column: 2, scope: !2212)
!2218 = !DILocation(line: 385, column: 6, scope: !2212)
!2219 = !DILocation(line: 387, column: 6, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 387, column: 6)
!2221 = !DILocation(line: 387, column: 11, scope: !2220)
!2222 = !DILocation(line: 387, column: 6, scope: !2212)
!2223 = !DILocation(line: 388, column: 3, scope: !2220)
!2224 = !DILocation(line: 391, column: 26, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 391, column: 6)
!2226 = !DILocation(line: 391, column: 6, scope: !2225)
!2227 = !DILocation(line: 391, column: 6, scope: !2212)
!2228 = !DILocation(line: 392, column: 3, scope: !2225)
!2229 = !DILocation(line: 394, column: 24, scope: !2212)
!2230 = !DILocation(line: 394, column: 10, scope: !2212)
!2231 = !DILocation(line: 394, column: 8, scope: !2212)
!2232 = !DILocation(line: 395, column: 6, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 395, column: 6)
!2234 = !DILocation(line: 395, column: 6, scope: !2212)
!2235 = !DILocation(line: 396, column: 10, scope: !2233)
!2236 = !DILocation(line: 396, column: 3, scope: !2233)
!2237 = !DILocation(line: 398, column: 2, scope: !2212)
!2238 = !DILocation(line: 398, column: 7, scope: !2212)
!2239 = !DILocation(line: 398, column: 14, scope: !2212)
!2240 = !DILocation(line: 399, column: 2, scope: !2212)
!2241 = !DILocation(line: 400, column: 1, scope: !2212)
!2242 = distinct !DISubprogram(name: "pnp_disable_dev", scope: !3, file: !3, line: 409, type: !1757, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2243)
!2243 = !{!2244, !2245}
!2244 = !DILocalVariable(name: "dev", arg: 1, scope: !2242, file: !3, line: 409, type: !267)
!2245 = !DILocalVariable(name: "error", scope: !2242, file: !3, line: 411, type: !46)
!2246 = !DILocation(line: 409, column: 37, scope: !2242)
!2247 = !DILocation(line: 411, column: 2, scope: !2242)
!2248 = !DILocation(line: 411, column: 6, scope: !2242)
!2249 = !DILocation(line: 413, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 413, column: 6)
!2251 = !DILocation(line: 413, column: 12, scope: !2250)
!2252 = !DILocation(line: 413, column: 6, scope: !2242)
!2253 = !DILocation(line: 414, column: 3, scope: !2250)
!2254 = !DILocation(line: 416, column: 23, scope: !2242)
!2255 = !DILocation(line: 416, column: 10, scope: !2242)
!2256 = !DILocation(line: 416, column: 8, scope: !2242)
!2257 = !DILocation(line: 417, column: 6, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 417, column: 6)
!2259 = !DILocation(line: 417, column: 6, scope: !2242)
!2260 = !DILocation(line: 418, column: 10, scope: !2258)
!2261 = !DILocation(line: 418, column: 3, scope: !2258)
!2262 = !DILocation(line: 420, column: 2, scope: !2242)
!2263 = !DILocation(line: 420, column: 7, scope: !2242)
!2264 = !DILocation(line: 420, column: 14, scope: !2242)
!2265 = !DILocation(line: 423, column: 2, scope: !2242)
!2266 = !DILocation(line: 424, column: 27, scope: !2242)
!2267 = !DILocation(line: 424, column: 2, scope: !2242)
!2268 = !DILocation(line: 425, column: 2, scope: !2242)
!2269 = !DILocation(line: 427, column: 2, scope: !2242)
!2270 = !DILocation(line: 428, column: 1, scope: !2242)
!2271 = !DISubprogram(name: "mutex_lock", scope: !605, file: !605, line: 227, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !2274}
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!2275 = distinct !DISubprogram(name: "pnp_clean_resource_table", scope: !3, file: !3, line: 241, type: !1822, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2276 = !{!2277, !2278, !2279, !2280, !2283, !2285}
!2277 = !DILocalVariable(name: "dev", arg: 1, scope: !2275, file: !3, line: 241, type: !267)
!2278 = !DILocalVariable(name: "pnp_res", scope: !2275, file: !3, line: 243, type: !147)
!2279 = !DILocalVariable(name: "tmp", scope: !2275, file: !3, line: 243, type: !147)
!2280 = !DILocalVariable(name: "__mptr", scope: !2281, file: !3, line: 245, type: !84)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 245, column: 2)
!2282 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 245, column: 2)
!2283 = !DILocalVariable(name: "__mptr", scope: !2284, file: !3, line: 245, type: !84)
!2284 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 245, column: 2)
!2285 = !DILocalVariable(name: "__mptr", scope: !2286, file: !3, line: 245, type: !84)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 245, column: 2)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 245, column: 2)
!2288 = !DILocation(line: 241, column: 54, scope: !2275)
!2289 = !DILocation(line: 243, column: 2, scope: !2275)
!2290 = !DILocation(line: 243, column: 23, scope: !2275)
!2291 = !DILocation(line: 243, column: 33, scope: !2275)
!2292 = !DILocation(line: 245, column: 2, scope: !2281)
!2293 = !DILocation(line: 245, column: 2, scope: !2282)
!2294 = !DILocation(line: 245, column: 2, scope: !2284)
!2295 = !DILocation(line: 245, column: 2, scope: !2287)
!2296 = !DILocation(line: 246, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 246, column: 7)
!2298 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 245, column: 64)
!2299 = !DILocation(line: 246, column: 16, scope: !2297)
!2300 = !DILocation(line: 246, column: 20, scope: !2297)
!2301 = !DILocation(line: 246, column: 26, scope: !2297)
!2302 = !DILocation(line: 246, column: 7, scope: !2298)
!2303 = !DILocation(line: 247, column: 22, scope: !2297)
!2304 = !DILocation(line: 247, column: 4, scope: !2297)
!2305 = !DILocation(line: 248, column: 2, scope: !2298)
!2306 = !DILocation(line: 245, column: 2, scope: !2286)
!2307 = distinct !{!2307, !2293, !2308, !1997, !1998}
!2308 = !DILocation(line: 248, column: 2, scope: !2282)
!2309 = !DILocation(line: 249, column: 1, scope: !2275)
!2310 = !DISubprogram(name: "mutex_unlock", scope: !605, file: !605, line: 246, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2311 = distinct !DISubprogram(name: "pnp_option_is_dependent", scope: !87, file: !87, line: 93, type: !2312, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!46, !85}
!2314 = !{!2315}
!2315 = !DILocalVariable(name: "option", arg: 1, scope: !2311, file: !87, line: 93, type: !85)
!2316 = !DILocation(line: 93, column: 62, scope: !2311)
!2317 = !DILocation(line: 95, column: 9, scope: !2311)
!2318 = !DILocation(line: 95, column: 17, scope: !2311)
!2319 = !DILocation(line: 95, column: 23, scope: !2311)
!2320 = !DILocation(line: 95, column: 2, scope: !2311)
!2321 = distinct !DISubprogram(name: "pnp_option_set", scope: !87, file: !87, line: 98, type: !2322, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!7, !85}
!2324 = !{!2325}
!2325 = !DILocalVariable(name: "option", arg: 1, scope: !2321, file: !87, line: 98, type: !85)
!2326 = !DILocation(line: 98, column: 62, scope: !2321)
!2327 = !DILocation(line: 100, column: 10, scope: !2321)
!2328 = !DILocation(line: 100, column: 18, scope: !2321)
!2329 = !DILocation(line: 100, column: 24, scope: !2321)
!2330 = !DILocation(line: 100, column: 49, scope: !2321)
!2331 = !DILocation(line: 100, column: 2, scope: !2321)
!2332 = distinct !DISubprogram(name: "pnp_assign_port", scope: !3, file: !3, line: 38, type: !2333, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!46, !267, !2335, !46}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2336 = !{!2337, !2338, !2339, !2340, !2341, !2342}
!2337 = !DILocalVariable(name: "dev", arg: 1, scope: !2332, file: !3, line: 38, type: !267)
!2338 = !DILocalVariable(name: "rule", arg: 2, scope: !2332, file: !3, line: 38, type: !2335)
!2339 = !DILocalVariable(name: "idx", arg: 3, scope: !2332, file: !3, line: 38, type: !46)
!2340 = !DILocalVariable(name: "res", scope: !2332, file: !3, line: 40, type: !164)
!2341 = !DILocalVariable(name: "local_res", scope: !2332, file: !3, line: 40, type: !152)
!2342 = !DILabel(scope: !2332, name: "__add", file: !3, line: 76)
!2343 = !DILocation(line: 38, column: 44, scope: !2332)
!2344 = !DILocation(line: 38, column: 66, scope: !2332)
!2345 = !DILocation(line: 38, column: 76, scope: !2332)
!2346 = !DILocation(line: 40, column: 2, scope: !2332)
!2347 = !DILocation(line: 40, column: 19, scope: !2332)
!2348 = !DILocation(line: 40, column: 24, scope: !2332)
!2349 = !DILocation(line: 42, column: 26, scope: !2332)
!2350 = !DILocation(line: 42, column: 31, scope: !2332)
!2351 = !DILocation(line: 42, column: 37, scope: !2332)
!2352 = !DILocation(line: 42, column: 59, scope: !2332)
!2353 = !DILocation(line: 42, column: 8, scope: !2332)
!2354 = !DILocation(line: 42, column: 6, scope: !2332)
!2355 = !DILocation(line: 43, column: 6, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 43, column: 6)
!2357 = !DILocation(line: 43, column: 6, scope: !2332)
!2358 = !DILocation(line: 44, column: 3, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 44, column: 3)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 44, column: 3)
!2361 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 43, column: 11)
!2362 = !DILocation(line: 44, column: 3, scope: !2360)
!2363 = !DILocation(line: 44, column: 3, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 44, column: 3)
!2365 = !DILocation(line: 44, column: 3, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 44, column: 3)
!2367 = !DILocation(line: 47, column: 3, scope: !2361)
!2368 = !DILocation(line: 50, column: 6, scope: !2332)
!2369 = !DILocation(line: 51, column: 15, scope: !2332)
!2370 = !DILocation(line: 51, column: 21, scope: !2332)
!2371 = !DILocation(line: 51, column: 27, scope: !2332)
!2372 = !DILocation(line: 51, column: 2, scope: !2332)
!2373 = !DILocation(line: 51, column: 7, scope: !2332)
!2374 = !DILocation(line: 51, column: 13, scope: !2332)
!2375 = !DILocation(line: 52, column: 2, scope: !2332)
!2376 = !DILocation(line: 52, column: 7, scope: !2332)
!2377 = !DILocation(line: 52, column: 13, scope: !2332)
!2378 = !DILocation(line: 53, column: 2, scope: !2332)
!2379 = !DILocation(line: 53, column: 7, scope: !2332)
!2380 = !DILocation(line: 53, column: 11, scope: !2332)
!2381 = !DILocation(line: 55, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 55, column: 6)
!2383 = !DILocation(line: 55, column: 13, scope: !2382)
!2384 = !DILocation(line: 55, column: 6, scope: !2332)
!2385 = !DILocation(line: 56, column: 3, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 55, column: 19)
!2387 = !DILocation(line: 56, column: 8, scope: !2386)
!2388 = !DILocation(line: 56, column: 14, scope: !2386)
!2389 = !DILocation(line: 57, column: 3, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 57, column: 3)
!2391 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 57, column: 3)
!2392 = !DILocation(line: 57, column: 3, scope: !2391)
!2393 = !DILocation(line: 57, column: 3, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 57, column: 3)
!2395 = !DILocation(line: 57, column: 3, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 57, column: 3)
!2397 = !DILocation(line: 58, column: 3, scope: !2386)
!2398 = !DILocation(line: 61, column: 15, scope: !2332)
!2399 = !DILocation(line: 61, column: 21, scope: !2332)
!2400 = !DILocation(line: 61, column: 2, scope: !2332)
!2401 = !DILocation(line: 61, column: 7, scope: !2332)
!2402 = !DILocation(line: 61, column: 13, scope: !2332)
!2403 = !DILocation(line: 62, column: 13, scope: !2332)
!2404 = !DILocation(line: 62, column: 18, scope: !2332)
!2405 = !DILocation(line: 62, column: 26, scope: !2332)
!2406 = !DILocation(line: 62, column: 32, scope: !2332)
!2407 = !DILocation(line: 62, column: 24, scope: !2332)
!2408 = !DILocation(line: 62, column: 37, scope: !2332)
!2409 = !DILocation(line: 62, column: 2, scope: !2332)
!2410 = !DILocation(line: 62, column: 7, scope: !2332)
!2411 = !DILocation(line: 62, column: 11, scope: !2332)
!2412 = !DILocation(line: 64, column: 2, scope: !2332)
!2413 = !DILocation(line: 64, column: 25, scope: !2332)
!2414 = !DILocation(line: 64, column: 30, scope: !2332)
!2415 = !DILocation(line: 64, column: 10, scope: !2332)
!2416 = !DILocation(line: 64, column: 9, scope: !2332)
!2417 = !DILocation(line: 65, column: 17, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 64, column: 36)
!2419 = !DILocation(line: 65, column: 23, scope: !2418)
!2420 = !DILocation(line: 65, column: 3, scope: !2418)
!2421 = !DILocation(line: 65, column: 8, scope: !2418)
!2422 = !DILocation(line: 65, column: 14, scope: !2418)
!2423 = !DILocation(line: 66, column: 14, scope: !2418)
!2424 = !DILocation(line: 66, column: 19, scope: !2418)
!2425 = !DILocation(line: 66, column: 27, scope: !2418)
!2426 = !DILocation(line: 66, column: 33, scope: !2418)
!2427 = !DILocation(line: 66, column: 25, scope: !2418)
!2428 = !DILocation(line: 66, column: 38, scope: !2418)
!2429 = !DILocation(line: 66, column: 3, scope: !2418)
!2430 = !DILocation(line: 66, column: 8, scope: !2418)
!2431 = !DILocation(line: 66, column: 12, scope: !2418)
!2432 = !DILocation(line: 67, column: 7, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 67, column: 7)
!2434 = !DILocation(line: 67, column: 12, scope: !2433)
!2435 = !DILocation(line: 67, column: 20, scope: !2433)
!2436 = !DILocation(line: 67, column: 26, scope: !2433)
!2437 = !DILocation(line: 67, column: 18, scope: !2433)
!2438 = !DILocation(line: 67, column: 30, scope: !2433)
!2439 = !DILocation(line: 67, column: 34, scope: !2433)
!2440 = !DILocation(line: 67, column: 40, scope: !2433)
!2441 = !DILocation(line: 67, column: 7, scope: !2418)
!2442 = !DILocation(line: 68, column: 4, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 68, column: 4)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 68, column: 4)
!2445 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 67, column: 47)
!2446 = !DILocation(line: 68, column: 4, scope: !2444)
!2447 = !DILocation(line: 68, column: 4, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 68, column: 4)
!2449 = !DILocation(line: 68, column: 4, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 68, column: 4)
!2451 = !DILocation(line: 72, column: 4, scope: !2445)
!2452 = distinct !{!2452, !2412, !2453, !1997, !1998}
!2453 = !DILocation(line: 74, column: 2, scope: !2332)
!2454 = !DILocation(line: 76, column: 1, scope: !2332)
!2455 = !DILocation(line: 77, column: 22, scope: !2332)
!2456 = !DILocation(line: 77, column: 27, scope: !2332)
!2457 = !DILocation(line: 77, column: 32, scope: !2332)
!2458 = !DILocation(line: 77, column: 39, scope: !2332)
!2459 = !DILocation(line: 77, column: 44, scope: !2332)
!2460 = !DILocation(line: 77, column: 49, scope: !2332)
!2461 = !DILocation(line: 77, column: 54, scope: !2332)
!2462 = !DILocation(line: 77, column: 2, scope: !2332)
!2463 = !DILocation(line: 78, column: 2, scope: !2332)
!2464 = !DILocation(line: 79, column: 1, scope: !2332)
!2465 = distinct !DISubprogram(name: "pnp_assign_mem", scope: !3, file: !3, line: 81, type: !2466, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2469)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!46, !267, !2468, !46}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475}
!2470 = !DILocalVariable(name: "dev", arg: 1, scope: !2465, file: !3, line: 81, type: !267)
!2471 = !DILocalVariable(name: "rule", arg: 2, scope: !2465, file: !3, line: 81, type: !2468)
!2472 = !DILocalVariable(name: "idx", arg: 3, scope: !2465, file: !3, line: 81, type: !46)
!2473 = !DILocalVariable(name: "res", scope: !2465, file: !3, line: 83, type: !164)
!2474 = !DILocalVariable(name: "local_res", scope: !2465, file: !3, line: 83, type: !152)
!2475 = !DILabel(scope: !2465, name: "__add", file: !3, line: 127)
!2476 = !DILocation(line: 81, column: 43, scope: !2465)
!2477 = !DILocation(line: 81, column: 64, scope: !2465)
!2478 = !DILocation(line: 81, column: 74, scope: !2465)
!2479 = !DILocation(line: 83, column: 2, scope: !2465)
!2480 = !DILocation(line: 83, column: 19, scope: !2465)
!2481 = !DILocation(line: 83, column: 24, scope: !2465)
!2482 = !DILocation(line: 85, column: 26, scope: !2465)
!2483 = !DILocation(line: 85, column: 31, scope: !2465)
!2484 = !DILocation(line: 85, column: 37, scope: !2465)
!2485 = !DILocation(line: 85, column: 60, scope: !2465)
!2486 = !DILocation(line: 85, column: 8, scope: !2465)
!2487 = !DILocation(line: 85, column: 6, scope: !2465)
!2488 = !DILocation(line: 86, column: 6, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 86, column: 6)
!2490 = !DILocation(line: 86, column: 6, scope: !2465)
!2491 = !DILocation(line: 87, column: 3, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 87, column: 3)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 87, column: 3)
!2494 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 86, column: 11)
!2495 = !DILocation(line: 87, column: 3, scope: !2493)
!2496 = !DILocation(line: 87, column: 3, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 87, column: 3)
!2498 = !DILocation(line: 87, column: 3, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 87, column: 3)
!2500 = !DILocation(line: 90, column: 3, scope: !2494)
!2501 = !DILocation(line: 93, column: 6, scope: !2465)
!2502 = !DILocation(line: 94, column: 15, scope: !2465)
!2503 = !DILocation(line: 94, column: 21, scope: !2465)
!2504 = !DILocation(line: 94, column: 27, scope: !2465)
!2505 = !DILocation(line: 94, column: 2, scope: !2465)
!2506 = !DILocation(line: 94, column: 7, scope: !2465)
!2507 = !DILocation(line: 94, column: 13, scope: !2465)
!2508 = !DILocation(line: 95, column: 2, scope: !2465)
!2509 = !DILocation(line: 95, column: 7, scope: !2465)
!2510 = !DILocation(line: 95, column: 13, scope: !2465)
!2511 = !DILocation(line: 96, column: 2, scope: !2465)
!2512 = !DILocation(line: 96, column: 7, scope: !2465)
!2513 = !DILocation(line: 96, column: 11, scope: !2465)
!2514 = !DILocation(line: 99, column: 8, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 99, column: 6)
!2516 = !DILocation(line: 99, column: 14, scope: !2515)
!2517 = !DILocation(line: 99, column: 20, scope: !2515)
!2518 = !DILocation(line: 99, column: 6, scope: !2465)
!2519 = !DILocation(line: 100, column: 3, scope: !2515)
!2520 = !DILocation(line: 100, column: 8, scope: !2515)
!2521 = !DILocation(line: 100, column: 14, scope: !2515)
!2522 = !DILocation(line: 101, column: 6, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 101, column: 6)
!2524 = !DILocation(line: 101, column: 12, scope: !2523)
!2525 = !DILocation(line: 101, column: 18, scope: !2523)
!2526 = !DILocation(line: 101, column: 6, scope: !2465)
!2527 = !DILocation(line: 102, column: 3, scope: !2523)
!2528 = !DILocation(line: 102, column: 8, scope: !2523)
!2529 = !DILocation(line: 102, column: 14, scope: !2523)
!2530 = !DILocation(line: 103, column: 6, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 103, column: 6)
!2532 = !DILocation(line: 103, column: 12, scope: !2531)
!2533 = !DILocation(line: 103, column: 18, scope: !2531)
!2534 = !DILocation(line: 103, column: 6, scope: !2465)
!2535 = !DILocation(line: 104, column: 3, scope: !2531)
!2536 = !DILocation(line: 104, column: 8, scope: !2531)
!2537 = !DILocation(line: 104, column: 14, scope: !2531)
!2538 = !DILocation(line: 106, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 106, column: 6)
!2540 = !DILocation(line: 106, column: 13, scope: !2539)
!2541 = !DILocation(line: 106, column: 6, scope: !2465)
!2542 = !DILocation(line: 107, column: 3, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 106, column: 19)
!2544 = !DILocation(line: 107, column: 8, scope: !2543)
!2545 = !DILocation(line: 107, column: 14, scope: !2543)
!2546 = !DILocation(line: 108, column: 3, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 108, column: 3)
!2548 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 108, column: 3)
!2549 = !DILocation(line: 108, column: 3, scope: !2548)
!2550 = !DILocation(line: 108, column: 3, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 108, column: 3)
!2552 = !DILocation(line: 108, column: 3, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 108, column: 3)
!2554 = !DILocation(line: 109, column: 3, scope: !2543)
!2555 = !DILocation(line: 112, column: 15, scope: !2465)
!2556 = !DILocation(line: 112, column: 21, scope: !2465)
!2557 = !DILocation(line: 112, column: 2, scope: !2465)
!2558 = !DILocation(line: 112, column: 7, scope: !2465)
!2559 = !DILocation(line: 112, column: 13, scope: !2465)
!2560 = !DILocation(line: 113, column: 13, scope: !2465)
!2561 = !DILocation(line: 113, column: 18, scope: !2465)
!2562 = !DILocation(line: 113, column: 26, scope: !2465)
!2563 = !DILocation(line: 113, column: 32, scope: !2465)
!2564 = !DILocation(line: 113, column: 24, scope: !2465)
!2565 = !DILocation(line: 113, column: 37, scope: !2465)
!2566 = !DILocation(line: 113, column: 2, scope: !2465)
!2567 = !DILocation(line: 113, column: 7, scope: !2465)
!2568 = !DILocation(line: 113, column: 11, scope: !2465)
!2569 = !DILocation(line: 115, column: 2, scope: !2465)
!2570 = !DILocation(line: 115, column: 24, scope: !2465)
!2571 = !DILocation(line: 115, column: 29, scope: !2465)
!2572 = !DILocation(line: 115, column: 10, scope: !2465)
!2573 = !DILocation(line: 115, column: 9, scope: !2465)
!2574 = !DILocation(line: 116, column: 17, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 115, column: 35)
!2576 = !DILocation(line: 116, column: 23, scope: !2575)
!2577 = !DILocation(line: 116, column: 3, scope: !2575)
!2578 = !DILocation(line: 116, column: 8, scope: !2575)
!2579 = !DILocation(line: 116, column: 14, scope: !2575)
!2580 = !DILocation(line: 117, column: 14, scope: !2575)
!2581 = !DILocation(line: 117, column: 19, scope: !2575)
!2582 = !DILocation(line: 117, column: 27, scope: !2575)
!2583 = !DILocation(line: 117, column: 33, scope: !2575)
!2584 = !DILocation(line: 117, column: 25, scope: !2575)
!2585 = !DILocation(line: 117, column: 38, scope: !2575)
!2586 = !DILocation(line: 117, column: 3, scope: !2575)
!2587 = !DILocation(line: 117, column: 8, scope: !2575)
!2588 = !DILocation(line: 117, column: 12, scope: !2575)
!2589 = !DILocation(line: 118, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 118, column: 7)
!2591 = !DILocation(line: 118, column: 12, scope: !2590)
!2592 = !DILocation(line: 118, column: 20, scope: !2590)
!2593 = !DILocation(line: 118, column: 26, scope: !2590)
!2594 = !DILocation(line: 118, column: 18, scope: !2590)
!2595 = !DILocation(line: 118, column: 30, scope: !2590)
!2596 = !DILocation(line: 118, column: 34, scope: !2590)
!2597 = !DILocation(line: 118, column: 40, scope: !2590)
!2598 = !DILocation(line: 118, column: 7, scope: !2575)
!2599 = !DILocation(line: 119, column: 4, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 119, column: 4)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 119, column: 4)
!2602 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 118, column: 47)
!2603 = !DILocation(line: 119, column: 4, scope: !2601)
!2604 = !DILocation(line: 119, column: 4, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 119, column: 4)
!2606 = !DILocation(line: 119, column: 4, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 119, column: 4)
!2608 = !DILocation(line: 123, column: 4, scope: !2602)
!2609 = distinct !{!2609, !2569, !2610, !1997, !1998}
!2610 = !DILocation(line: 125, column: 2, scope: !2465)
!2611 = !DILocation(line: 127, column: 1, scope: !2465)
!2612 = !DILocation(line: 128, column: 23, scope: !2465)
!2613 = !DILocation(line: 128, column: 28, scope: !2465)
!2614 = !DILocation(line: 128, column: 33, scope: !2465)
!2615 = !DILocation(line: 128, column: 40, scope: !2465)
!2616 = !DILocation(line: 128, column: 45, scope: !2465)
!2617 = !DILocation(line: 128, column: 50, scope: !2465)
!2618 = !DILocation(line: 128, column: 55, scope: !2465)
!2619 = !DILocation(line: 128, column: 2, scope: !2465)
!2620 = !DILocation(line: 129, column: 2, scope: !2465)
!2621 = !DILocation(line: 130, column: 1, scope: !2465)
!2622 = !DILocation(line: 132, column: 43, scope: !264)
!2623 = !DILocation(line: 132, column: 64, scope: !264)
!2624 = !DILocation(line: 132, column: 74, scope: !264)
!2625 = !DILocation(line: 134, column: 2, scope: !264)
!2626 = !DILocation(line: 134, column: 19, scope: !264)
!2627 = !DILocation(line: 134, column: 24, scope: !264)
!2628 = !DILocation(line: 135, column: 2, scope: !264)
!2629 = !DILocation(line: 135, column: 6, scope: !264)
!2630 = !DILocation(line: 142, column: 26, scope: !264)
!2631 = !DILocation(line: 142, column: 31, scope: !264)
!2632 = !DILocation(line: 142, column: 37, scope: !264)
!2633 = !DILocation(line: 142, column: 60, scope: !264)
!2634 = !DILocation(line: 142, column: 8, scope: !264)
!2635 = !DILocation(line: 142, column: 6, scope: !264)
!2636 = !DILocation(line: 143, column: 6, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !264, file: !3, line: 143, column: 6)
!2638 = !DILocation(line: 143, column: 6, scope: !264)
!2639 = !DILocation(line: 144, column: 3, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 144, column: 3)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 144, column: 3)
!2642 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 143, column: 11)
!2643 = !DILocation(line: 144, column: 3, scope: !2641)
!2644 = !DILocation(line: 144, column: 3, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 144, column: 3)
!2646 = !DILocation(line: 144, column: 3, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 144, column: 3)
!2648 = !DILocation(line: 146, column: 3, scope: !2642)
!2649 = !DILocation(line: 149, column: 6, scope: !264)
!2650 = !DILocation(line: 150, column: 15, scope: !264)
!2651 = !DILocation(line: 150, column: 21, scope: !264)
!2652 = !DILocation(line: 150, column: 27, scope: !264)
!2653 = !DILocation(line: 150, column: 2, scope: !264)
!2654 = !DILocation(line: 150, column: 7, scope: !264)
!2655 = !DILocation(line: 150, column: 13, scope: !264)
!2656 = !DILocation(line: 151, column: 2, scope: !264)
!2657 = !DILocation(line: 151, column: 7, scope: !264)
!2658 = !DILocation(line: 151, column: 13, scope: !264)
!2659 = !DILocation(line: 152, column: 2, scope: !264)
!2660 = !DILocation(line: 152, column: 7, scope: !264)
!2661 = !DILocation(line: 152, column: 11, scope: !264)
!2662 = !DILocation(line: 154, column: 19, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !264, file: !3, line: 154, column: 6)
!2664 = !DILocation(line: 154, column: 25, scope: !2663)
!2665 = !DILocation(line: 154, column: 29, scope: !2663)
!2666 = !DILocation(line: 154, column: 6, scope: !2663)
!2667 = !DILocation(line: 154, column: 6, scope: !264)
!2668 = !DILocation(line: 155, column: 3, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 154, column: 48)
!2670 = !DILocation(line: 155, column: 8, scope: !2669)
!2671 = !DILocation(line: 155, column: 14, scope: !2669)
!2672 = !DILocation(line: 156, column: 3, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 156, column: 3)
!2674 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 156, column: 3)
!2675 = !DILocation(line: 156, column: 3, scope: !2674)
!2676 = !DILocation(line: 156, column: 3, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 156, column: 3)
!2678 = !DILocation(line: 156, column: 3, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 156, column: 3)
!2680 = !DILocation(line: 157, column: 3, scope: !2669)
!2681 = !DILocation(line: 161, column: 29, scope: !264)
!2682 = !DILocation(line: 161, column: 35, scope: !264)
!2683 = !DILocation(line: 161, column: 39, scope: !264)
!2684 = !DILocation(line: 161, column: 15, scope: !264)
!2685 = !DILocation(line: 161, column: 2, scope: !264)
!2686 = !DILocation(line: 161, column: 7, scope: !264)
!2687 = !DILocation(line: 161, column: 13, scope: !264)
!2688 = !DILocation(line: 162, column: 6, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !264, file: !3, line: 162, column: 6)
!2690 = !DILocation(line: 162, column: 11, scope: !2689)
!2691 = !DILocation(line: 162, column: 17, scope: !2689)
!2692 = !DILocation(line: 162, column: 6, scope: !264)
!2693 = !DILocation(line: 163, column: 14, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 162, column: 31)
!2695 = !DILocation(line: 163, column: 19, scope: !2694)
!2696 = !DILocation(line: 163, column: 3, scope: !2694)
!2697 = !DILocation(line: 163, column: 8, scope: !2694)
!2698 = !DILocation(line: 163, column: 12, scope: !2694)
!2699 = !DILocation(line: 164, column: 3, scope: !2694)
!2700 = !DILocation(line: 166, column: 9, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !264, file: !3, line: 166, column: 2)
!2702 = !DILocation(line: 166, column: 7, scope: !2701)
!2703 = !DILocation(line: 166, column: 14, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 166, column: 2)
!2705 = !DILocation(line: 166, column: 16, scope: !2704)
!2706 = !DILocation(line: 166, column: 2, scope: !2701)
!2707 = !DILocation(line: 167, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 167, column: 7)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 166, column: 27)
!2710 = !DILocation(line: 167, column: 7, scope: !2709)
!2711 = !DILocation(line: 168, column: 33, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 167, column: 42)
!2713 = !DILocation(line: 168, column: 28, scope: !2712)
!2714 = !DILocation(line: 168, column: 17, scope: !2712)
!2715 = !DILocation(line: 168, column: 22, scope: !2712)
!2716 = !DILocation(line: 168, column: 26, scope: !2712)
!2717 = !DILocation(line: 168, column: 4, scope: !2712)
!2718 = !DILocation(line: 168, column: 9, scope: !2712)
!2719 = !DILocation(line: 168, column: 15, scope: !2712)
!2720 = !DILocation(line: 169, column: 22, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 169, column: 8)
!2722 = !DILocation(line: 169, column: 27, scope: !2721)
!2723 = !DILocation(line: 169, column: 8, scope: !2721)
!2724 = !DILocation(line: 169, column: 8, scope: !2712)
!2725 = !DILocation(line: 170, column: 5, scope: !2721)
!2726 = !DILocation(line: 171, column: 3, scope: !2712)
!2727 = !DILocation(line: 172, column: 2, scope: !2709)
!2728 = !DILocation(line: 166, column: 23, scope: !2704)
!2729 = !DILocation(line: 166, column: 2, scope: !2704)
!2730 = distinct !{!2730, !2706, !2731, !1997, !1998}
!2731 = !DILocation(line: 172, column: 2, scope: !2701)
!2732 = !DILocation(line: 174, column: 6, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !264, file: !3, line: 174, column: 6)
!2734 = !DILocation(line: 174, column: 12, scope: !2733)
!2735 = !DILocation(line: 174, column: 18, scope: !2733)
!2736 = !DILocation(line: 174, column: 6, scope: !264)
!2737 = !DILocation(line: 175, column: 3, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 174, column: 45)
!2739 = !DILocation(line: 175, column: 8, scope: !2738)
!2740 = !DILocation(line: 175, column: 14, scope: !2738)
!2741 = !DILocation(line: 176, column: 3, scope: !2738)
!2742 = !DILocation(line: 176, column: 8, scope: !2738)
!2743 = !DILocation(line: 176, column: 12, scope: !2738)
!2744 = !DILocation(line: 177, column: 3, scope: !2738)
!2745 = !DILocation(line: 177, column: 8, scope: !2738)
!2746 = !DILocation(line: 177, column: 14, scope: !2738)
!2747 = !DILocation(line: 178, column: 3, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 178, column: 3)
!2749 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 178, column: 3)
!2750 = !DILocation(line: 178, column: 3, scope: !2749)
!2751 = !DILocation(line: 178, column: 3, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 178, column: 3)
!2753 = !DILocation(line: 178, column: 3, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 178, column: 3)
!2755 = !DILocation(line: 179, column: 3, scope: !2738)
!2756 = !DILocation(line: 182, column: 2, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 182, column: 2)
!2758 = distinct !DILexicalBlock(scope: !264, file: !3, line: 182, column: 2)
!2759 = !DILocation(line: 182, column: 2, scope: !2758)
!2760 = !DILocation(line: 182, column: 2, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 182, column: 2)
!2762 = !DILocation(line: 182, column: 2, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 182, column: 2)
!2764 = !DILocation(line: 183, column: 2, scope: !264)
!2765 = !DILocation(line: 185, column: 1, scope: !264)
!2766 = !DILocation(line: 186, column: 23, scope: !264)
!2767 = !DILocation(line: 186, column: 28, scope: !264)
!2768 = !DILocation(line: 186, column: 33, scope: !264)
!2769 = !DILocation(line: 186, column: 40, scope: !264)
!2770 = !DILocation(line: 186, column: 45, scope: !264)
!2771 = !DILocation(line: 186, column: 2, scope: !264)
!2772 = !DILocation(line: 187, column: 2, scope: !264)
!2773 = !DILocation(line: 188, column: 1, scope: !264)
!2774 = !DILocation(line: 191, column: 43, scope: !1907)
!2775 = !DILocation(line: 191, column: 64, scope: !1907)
!2776 = !DILocation(line: 191, column: 74, scope: !1907)
!2777 = !DILocation(line: 193, column: 2, scope: !1907)
!2778 = !DILocation(line: 193, column: 19, scope: !1907)
!2779 = !DILocation(line: 193, column: 24, scope: !1907)
!2780 = !DILocation(line: 194, column: 2, scope: !1907)
!2781 = !DILocation(line: 194, column: 6, scope: !1907)
!2782 = !DILocation(line: 201, column: 26, scope: !1907)
!2783 = !DILocation(line: 201, column: 31, scope: !1907)
!2784 = !DILocation(line: 201, column: 37, scope: !1907)
!2785 = !DILocation(line: 201, column: 60, scope: !1907)
!2786 = !DILocation(line: 201, column: 8, scope: !1907)
!2787 = !DILocation(line: 201, column: 6, scope: !1907)
!2788 = !DILocation(line: 202, column: 6, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 202, column: 6)
!2790 = !DILocation(line: 202, column: 6, scope: !1907)
!2791 = !DILocation(line: 203, column: 3, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 203, column: 3)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 203, column: 3)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 202, column: 11)
!2795 = !DILocation(line: 203, column: 3, scope: !2793)
!2796 = !DILocation(line: 203, column: 3, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 203, column: 3)
!2798 = !DILocation(line: 203, column: 3, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 203, column: 3)
!2800 = !DILocation(line: 205, column: 3, scope: !2794)
!2801 = !DILocation(line: 208, column: 6, scope: !1907)
!2802 = !DILocation(line: 209, column: 15, scope: !1907)
!2803 = !DILocation(line: 209, column: 21, scope: !1907)
!2804 = !DILocation(line: 209, column: 27, scope: !1907)
!2805 = !DILocation(line: 209, column: 2, scope: !1907)
!2806 = !DILocation(line: 209, column: 7, scope: !1907)
!2807 = !DILocation(line: 209, column: 13, scope: !1907)
!2808 = !DILocation(line: 210, column: 2, scope: !1907)
!2809 = !DILocation(line: 210, column: 7, scope: !1907)
!2810 = !DILocation(line: 210, column: 13, scope: !1907)
!2811 = !DILocation(line: 211, column: 2, scope: !1907)
!2812 = !DILocation(line: 211, column: 7, scope: !1907)
!2813 = !DILocation(line: 211, column: 11, scope: !1907)
!2814 = !DILocation(line: 213, column: 7, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 213, column: 6)
!2816 = !DILocation(line: 213, column: 13, scope: !2815)
!2817 = !DILocation(line: 213, column: 6, scope: !1907)
!2818 = !DILocation(line: 214, column: 3, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 213, column: 18)
!2820 = !DILocation(line: 214, column: 8, scope: !2819)
!2821 = !DILocation(line: 214, column: 14, scope: !2819)
!2822 = !DILocation(line: 215, column: 3, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 215, column: 3)
!2824 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 215, column: 3)
!2825 = !DILocation(line: 215, column: 3, scope: !2824)
!2826 = !DILocation(line: 215, column: 3, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 215, column: 3)
!2828 = !DILocation(line: 215, column: 3, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 215, column: 3)
!2830 = !DILocation(line: 216, column: 3, scope: !2819)
!2831 = !DILocation(line: 219, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 219, column: 2)
!2833 = !DILocation(line: 219, column: 7, scope: !2832)
!2834 = !DILocation(line: 219, column: 14, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 219, column: 2)
!2836 = !DILocation(line: 219, column: 16, scope: !2835)
!2837 = !DILocation(line: 219, column: 2, scope: !2832)
!2838 = !DILocation(line: 220, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 220, column: 7)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 219, column: 26)
!2841 = !DILocation(line: 220, column: 13, scope: !2839)
!2842 = !DILocation(line: 220, column: 30, scope: !2839)
!2843 = !DILocation(line: 220, column: 25, scope: !2839)
!2844 = !DILocation(line: 220, column: 22, scope: !2839)
!2845 = !DILocation(line: 220, column: 17, scope: !2839)
!2846 = !DILocation(line: 220, column: 7, scope: !2840)
!2847 = !DILocation(line: 221, column: 33, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 220, column: 35)
!2849 = !DILocation(line: 221, column: 28, scope: !2848)
!2850 = !DILocation(line: 221, column: 17, scope: !2848)
!2851 = !DILocation(line: 221, column: 22, scope: !2848)
!2852 = !DILocation(line: 221, column: 26, scope: !2848)
!2853 = !DILocation(line: 221, column: 4, scope: !2848)
!2854 = !DILocation(line: 221, column: 9, scope: !2848)
!2855 = !DILocation(line: 221, column: 15, scope: !2848)
!2856 = !DILocation(line: 222, column: 22, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 222, column: 8)
!2858 = !DILocation(line: 222, column: 27, scope: !2857)
!2859 = !DILocation(line: 222, column: 8, scope: !2857)
!2860 = !DILocation(line: 222, column: 8, scope: !2848)
!2861 = !DILocation(line: 223, column: 5, scope: !2857)
!2862 = !DILocation(line: 224, column: 3, scope: !2848)
!2863 = !DILocation(line: 225, column: 2, scope: !2840)
!2864 = !DILocation(line: 219, column: 22, scope: !2835)
!2865 = !DILocation(line: 219, column: 2, scope: !2835)
!2866 = distinct !{!2866, !2837, !2867, !1997, !1998}
!2867 = !DILocation(line: 225, column: 2, scope: !2832)
!2868 = !DILocation(line: 227, column: 2, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 227, column: 2)
!2870 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 227, column: 2)
!2871 = !DILocation(line: 227, column: 2, scope: !2870)
!2872 = !DILocation(line: 227, column: 2, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 227, column: 2)
!2874 = !DILocation(line: 227, column: 2, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 227, column: 2)
!2876 = !DILocation(line: 228, column: 2, scope: !1907)
!2877 = !DILocation(line: 230, column: 1, scope: !1907)
!2878 = !DILocation(line: 231, column: 23, scope: !1907)
!2879 = !DILocation(line: 231, column: 28, scope: !1907)
!2880 = !DILocation(line: 231, column: 33, scope: !1907)
!2881 = !DILocation(line: 231, column: 40, scope: !1907)
!2882 = !DILocation(line: 231, column: 45, scope: !1907)
!2883 = !DILocation(line: 231, column: 2, scope: !1907)
!2884 = !DILocation(line: 232, column: 2, scope: !1907)
!2885 = !DILocation(line: 233, column: 1, scope: !1907)
!2886 = distinct !DISubprogram(name: "pnp_find_resource", scope: !3, file: !3, line: 22, type: !2887, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!164, !267, !117, !98, !7}
!2889 = !{!2890, !2891, !2892, !2893, !2894}
!2890 = !DILocalVariable(name: "dev", arg: 1, scope: !2886, file: !3, line: 22, type: !267)
!2891 = !DILocalVariable(name: "rule", arg: 2, scope: !2886, file: !3, line: 23, type: !117)
!2892 = !DILocalVariable(name: "type", arg: 3, scope: !2886, file: !3, line: 24, type: !98)
!2893 = !DILocalVariable(name: "bar", arg: 4, scope: !2886, file: !3, line: 25, type: !7)
!2894 = !DILocalVariable(name: "res", scope: !2886, file: !3, line: 27, type: !164)
!2895 = !DILocation(line: 22, column: 59, scope: !2886)
!2896 = !DILocation(line: 23, column: 22, scope: !2886)
!2897 = !DILocation(line: 24, column: 22, scope: !2886)
!2898 = !DILocation(line: 25, column: 21, scope: !2886)
!2899 = !DILocation(line: 27, column: 2, scope: !2886)
!2900 = !DILocation(line: 27, column: 19, scope: !2886)
!2901 = !DILocation(line: 27, column: 42, scope: !2886)
!2902 = !DILocation(line: 27, column: 47, scope: !2886)
!2903 = !DILocation(line: 27, column: 53, scope: !2886)
!2904 = !DILocation(line: 27, column: 25, scope: !2886)
!2905 = !DILocation(line: 30, column: 6, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 30, column: 6)
!2907 = !DILocation(line: 30, column: 6, scope: !2886)
!2908 = !DILocation(line: 31, column: 3, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 30, column: 11)
!2910 = !DILocation(line: 31, column: 8, scope: !2909)
!2911 = !DILocation(line: 31, column: 14, scope: !2909)
!2912 = !DILocation(line: 32, column: 17, scope: !2909)
!2913 = !DILocation(line: 32, column: 22, scope: !2909)
!2914 = !DILocation(line: 32, column: 3, scope: !2909)
!2915 = !DILocation(line: 32, column: 8, scope: !2909)
!2916 = !DILocation(line: 32, column: 14, scope: !2909)
!2917 = !DILocation(line: 33, column: 2, scope: !2909)
!2918 = !DILocation(line: 35, column: 9, scope: !2886)
!2919 = !DILocation(line: 36, column: 1, scope: !2886)
!2920 = !DILocation(line: 35, column: 2, scope: !2886)
!2921 = !DISubprogram(name: "pnp_check_port", scope: !87, file: !87, line: 142, type: !2922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!46, !267, !164}
!2924 = !DISubprogram(name: "pnp_add_io_resource", scope: !87, file: !87, line: 168, type: !2925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!147, !267, !106, !106, !46}
!2927 = !DISubprogram(name: "pnp_get_resource", scope: !269, file: !269, line: 27, type: !2928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!164, !267, !98, !7}
!2930 = !DISubprogram(name: "pnp_check_mem", scope: !87, file: !87, line: 143, type: !2922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2931 = !DISubprogram(name: "pnp_add_mem_resource", scope: !87, file: !87, line: 171, type: !2925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2932 = distinct !DISubprogram(name: "bitmap_empty", scope: !2933, file: !2933, line: 436, type: !2934, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2936)
!2933 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!704, !144, !7}
!2936 = !{!2937, !2938}
!2937 = !DILocalVariable(name: "src", arg: 1, scope: !2932, file: !2933, line: 436, type: !144)
!2938 = !DILocalVariable(name: "nbits", arg: 2, scope: !2932, file: !2933, line: 436, type: !7)
!2939 = !DILocation(line: 436, column: 54, scope: !2932)
!2940 = !DILocation(line: 436, column: 68, scope: !2932)
!2941 = !DILocation(line: 438, column: 6, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2932, file: !2933, line: 438, column: 6)
!2943 = !DILocation(line: 438, column: 6, scope: !2932)
!2944 = !DILocation(line: 439, column: 14, scope: !2942)
!2945 = !DILocation(line: 439, column: 13, scope: !2942)
!2946 = !DILocation(line: 439, column: 20, scope: !2942)
!2947 = !DILocation(line: 439, column: 18, scope: !2942)
!2948 = !DILocation(line: 439, column: 10, scope: !2942)
!2949 = !DILocation(line: 439, column: 3, scope: !2942)
!2950 = !DILocation(line: 441, column: 24, scope: !2932)
!2951 = !DILocation(line: 441, column: 29, scope: !2932)
!2952 = !DILocation(line: 441, column: 9, scope: !2932)
!2953 = !DILocation(line: 441, column: 39, scope: !2932)
!2954 = !DILocation(line: 441, column: 36, scope: !2932)
!2955 = !DILocation(line: 441, column: 2, scope: !2932)
!2956 = !DILocation(line: 442, column: 1, scope: !2932)
!2957 = distinct !DISubprogram(name: "find_next_bit", scope: !2958, file: !2958, line: 54, type: !2959, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2961)
!2958 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!98, !144, !98, !98}
!2961 = !{!2962, !2963, !2964, !2965}
!2962 = !DILocalVariable(name: "addr", arg: 1, scope: !2957, file: !2958, line: 54, type: !144)
!2963 = !DILocalVariable(name: "size", arg: 2, scope: !2957, file: !2958, line: 54, type: !98)
!2964 = !DILocalVariable(name: "offset", arg: 3, scope: !2957, file: !2958, line: 55, type: !98)
!2965 = !DILocalVariable(name: "val", scope: !2966, file: !2958, line: 58, type: !98)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !2958, line: 57, column: 31)
!2967 = distinct !DILexicalBlock(scope: !2957, file: !2958, line: 57, column: 6)
!2968 = !DILocation(line: 54, column: 50, scope: !2957)
!2969 = !DILocation(line: 54, column: 70, scope: !2957)
!2970 = !DILocation(line: 55, column: 22, scope: !2957)
!2971 = !DILocation(line: 57, column: 6, scope: !2967)
!2972 = !DILocation(line: 57, column: 6, scope: !2957)
!2973 = !DILocation(line: 58, column: 3, scope: !2966)
!2974 = !DILocation(line: 58, column: 17, scope: !2966)
!2975 = !DILocation(line: 60, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2966, file: !2958, line: 60, column: 7)
!2977 = !DILocation(line: 60, column: 7, scope: !2966)
!2978 = !DILocation(line: 61, column: 11, scope: !2976)
!2979 = !DILocation(line: 61, column: 4, scope: !2976)
!2980 = !DILocation(line: 63, column: 10, scope: !2966)
!2981 = !DILocation(line: 63, column: 9, scope: !2966)
!2982 = !DILocation(line: 63, column: 17, scope: !2966)
!2983 = !DILocation(line: 63, column: 15, scope: !2966)
!2984 = !DILocation(line: 63, column: 7, scope: !2966)
!2985 = !DILocation(line: 64, column: 10, scope: !2966)
!2986 = !DILocation(line: 64, column: 16, scope: !2966)
!2987 = !DILocation(line: 64, column: 29, scope: !2966)
!2988 = !DILocation(line: 64, column: 3, scope: !2966)
!2989 = !DILocation(line: 65, column: 2, scope: !2967)
!2990 = !DILocation(line: 67, column: 24, scope: !2957)
!2991 = !DILocation(line: 67, column: 30, scope: !2957)
!2992 = !DILocation(line: 67, column: 36, scope: !2957)
!2993 = !DILocation(line: 67, column: 9, scope: !2957)
!2994 = !DILocation(line: 67, column: 2, scope: !2957)
!2995 = !DILocation(line: 68, column: 1, scope: !2957)
!2996 = distinct !DISubprogram(name: "const_test_bit", scope: !2997, file: !2997, line: 166, type: !2998, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3003)
!2997 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!704, !98, !3000}
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !98)
!3003 = !{!3004, !3005, !3006, !3007, !3008}
!3004 = !DILocalVariable(name: "nr", arg: 1, scope: !2996, file: !2997, line: 166, type: !98)
!3005 = !DILocalVariable(name: "addr", arg: 2, scope: !2996, file: !2997, line: 166, type: !3000)
!3006 = !DILocalVariable(name: "p", scope: !2996, file: !2997, line: 168, type: !144)
!3007 = !DILocalVariable(name: "mask", scope: !2996, file: !2997, line: 169, type: !98)
!3008 = !DILocalVariable(name: "val", scope: !2996, file: !2997, line: 170, type: !98)
!3009 = !DILocation(line: 166, column: 30, scope: !2996)
!3010 = !DILocation(line: 166, column: 64, scope: !2996)
!3011 = !DILocation(line: 168, column: 2, scope: !2996)
!3012 = !DILocation(line: 168, column: 23, scope: !2996)
!3013 = !DILocation(line: 168, column: 50, scope: !2996)
!3014 = !DILocation(line: 168, column: 57, scope: !2996)
!3015 = !DILocation(line: 168, column: 55, scope: !2996)
!3016 = !DILocation(line: 169, column: 2, scope: !2996)
!3017 = !DILocation(line: 169, column: 16, scope: !2996)
!3018 = !DILocation(line: 169, column: 23, scope: !2996)
!3019 = !DILocation(line: 170, column: 2, scope: !2996)
!3020 = !DILocation(line: 170, column: 16, scope: !2996)
!3021 = !DILocation(line: 170, column: 23, scope: !2996)
!3022 = !DILocation(line: 170, column: 22, scope: !2996)
!3023 = !DILocation(line: 172, column: 12, scope: !2996)
!3024 = !DILocation(line: 172, column: 18, scope: !2996)
!3025 = !DILocation(line: 172, column: 16, scope: !2996)
!3026 = !DILocation(line: 172, column: 10, scope: !2996)
!3027 = !DILocation(line: 172, column: 9, scope: !2996)
!3028 = !DILocation(line: 173, column: 1, scope: !2996)
!3029 = !DILocation(line: 172, column: 2, scope: !2996)
!3030 = distinct !DISubprogram(name: "_test_bit", scope: !3031, file: !3031, line: 139, type: !2998, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3032)
!3031 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3032 = !{!3033, !3034}
!3033 = !DILocalVariable(name: "nr", arg: 1, scope: !3030, file: !3031, line: 139, type: !98)
!3034 = !DILocalVariable(name: "addr", arg: 2, scope: !3030, file: !3031, line: 139, type: !3000)
!3035 = !DILocation(line: 139, column: 25, scope: !3030)
!3036 = !DILocation(line: 139, column: 59, scope: !3030)
!3037 = !DILocation(line: 141, column: 25, scope: !3030)
!3038 = !DILocation(line: 141, column: 32, scope: !3030)
!3039 = !DILocation(line: 141, column: 30, scope: !3030)
!3040 = !DILocation(line: 141, column: 2, scope: !3030)
!3041 = !DILocation(line: 142, column: 23, scope: !3030)
!3042 = !DILocation(line: 142, column: 27, scope: !3030)
!3043 = !DILocation(line: 142, column: 9, scope: !3030)
!3044 = !DILocation(line: 142, column: 2, scope: !3030)
!3045 = !DISubprogram(name: "pnp_check_irq", scope: !87, file: !87, line: 144, type: !2922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3046 = !DISubprogram(name: "pnp_add_irq_resource", scope: !87, file: !87, line: 164, type: !3047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!147, !267, !46, !46}
!3049 = distinct !DISubprogram(name: "find_first_bit", scope: !2958, file: !2958, line: 200, type: !3050, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!98, !144, !98}
!3052 = !{!3053, !3054, !3055}
!3053 = !DILocalVariable(name: "addr", arg: 1, scope: !3049, file: !2958, line: 200, type: !144)
!3054 = !DILocalVariable(name: "size", arg: 2, scope: !3049, file: !2958, line: 200, type: !98)
!3055 = !DILocalVariable(name: "val", scope: !3056, file: !2958, line: 203, type: !98)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !2958, line: 202, column: 31)
!3057 = distinct !DILexicalBlock(scope: !3049, file: !2958, line: 202, column: 6)
!3058 = !DILocation(line: 200, column: 51, scope: !3049)
!3059 = !DILocation(line: 200, column: 71, scope: !3049)
!3060 = !DILocation(line: 202, column: 6, scope: !3057)
!3061 = !DILocation(line: 202, column: 6, scope: !3049)
!3062 = !DILocation(line: 203, column: 3, scope: !3056)
!3063 = !DILocation(line: 203, column: 17, scope: !3056)
!3064 = !DILocation(line: 203, column: 24, scope: !3056)
!3065 = !DILocation(line: 203, column: 23, scope: !3056)
!3066 = !DILocation(line: 203, column: 31, scope: !3056)
!3067 = !DILocation(line: 203, column: 29, scope: !3056)
!3068 = !DILocation(line: 205, column: 10, scope: !3056)
!3069 = !DILocation(line: 205, column: 16, scope: !3056)
!3070 = !DILocation(line: 205, column: 29, scope: !3056)
!3071 = !DILocation(line: 205, column: 3, scope: !3056)
!3072 = !DILocation(line: 206, column: 2, scope: !3057)
!3073 = !DILocation(line: 208, column: 25, scope: !3049)
!3074 = !DILocation(line: 208, column: 31, scope: !3049)
!3075 = !DILocation(line: 208, column: 9, scope: !3049)
!3076 = !DILocation(line: 208, column: 2, scope: !3049)
!3077 = !DILocation(line: 209, column: 1, scope: !3049)
!3078 = distinct !DISubprogram(name: "variable__ffs", scope: !3079, file: !3079, line: 250, type: !3080, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3079 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!98, !98}
!3082 = !{!3083}
!3083 = !DILocalVariable(name: "word", arg: 1, scope: !3078, file: !3079, line: 250, type: !98)
!3084 = !DILocation(line: 250, column: 66, scope: !3078)
!3085 = !DILocation(line: 254, column: 11, scope: !3078)
!3086 = !DILocation(line: 252, column: 2, scope: !3078)
!3087 = !{i64 854397}
!3088 = !DILocation(line: 255, column: 9, scope: !3078)
!3089 = !DILocation(line: 255, column: 2, scope: !3078)
!3090 = !DISubprogram(name: "_find_first_bit", scope: !2958, file: !2958, line: 21, type: !3050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3091 = !DISubprogram(name: "_find_next_bit", scope: !2958, file: !2958, line: 11, type: !2959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3092 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3093, file: !3093, line: 66, type: !3094, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3099)
!3093 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !3096, !400}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3098)
!3098 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3099 = !{!3100, !3101}
!3100 = !DILocalVariable(name: "v", arg: 1, scope: !3092, file: !3093, line: 66, type: !3096)
!3101 = !DILocalVariable(name: "size", arg: 2, scope: !3092, file: !3093, line: 66, type: !400)
!3102 = !DILocation(line: 66, column: 73, scope: !3092)
!3103 = !DILocation(line: 66, column: 83, scope: !3092)
!3104 = !DILocation(line: 68, column: 19, scope: !3092)
!3105 = !DILocation(line: 68, column: 22, scope: !3092)
!3106 = !DILocation(line: 68, column: 2, scope: !3092)
!3107 = !DILocation(line: 69, column: 2, scope: !3092)
!3108 = !DILocation(line: 70, column: 1, scope: !3092)
!3109 = distinct !DISubprogram(name: "arch_test_bit", scope: !3079, file: !3079, line: 237, type: !2998, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3110)
!3110 = !{!3111, !3112}
!3111 = !DILocalVariable(name: "nr", arg: 1, scope: !3109, file: !3079, line: 237, type: !98)
!3112 = !DILocalVariable(name: "addr", arg: 2, scope: !3109, file: !3079, line: 237, type: !3000)
!3113 = !DILocation(line: 237, column: 29, scope: !3109)
!3114 = !DILocation(line: 237, column: 63, scope: !3109)
!3115 = !DILocation(line: 239, column: 30, scope: !3109)
!3116 = !DILocation(line: 239, column: 9, scope: !3109)
!3117 = !DILocation(line: 239, column: 54, scope: !3109)
!3118 = !DILocation(line: 239, column: 58, scope: !3109)
!3119 = !DILocation(line: 239, column: 36, scope: !3109)
!3120 = !DILocation(line: 240, column: 26, scope: !3109)
!3121 = !DILocation(line: 240, column: 30, scope: !3109)
!3122 = !DILocation(line: 240, column: 8, scope: !3109)
!3123 = !DILocation(line: 239, column: 2, scope: !3109)
!3124 = distinct !DISubprogram(name: "kasan_check_read", scope: !3125, file: !3125, line: 40, type: !3126, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3128)
!3125 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!704, !3096, !7}
!3128 = !{!3129, !3130}
!3129 = !DILocalVariable(name: "p", arg: 1, scope: !3124, file: !3125, line: 40, type: !3096)
!3130 = !DILocalVariable(name: "size", arg: 2, scope: !3124, file: !3125, line: 40, type: !7)
!3131 = !DILocation(line: 40, column: 58, scope: !3124)
!3132 = !DILocation(line: 40, column: 74, scope: !3124)
!3133 = !DILocation(line: 42, column: 2, scope: !3124)
!3134 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3135, file: !3135, line: 229, type: !3136, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3138)
!3135 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !3096, !400, !46}
!3138 = !{!3139, !3140, !3141}
!3139 = !DILocalVariable(name: "ptr", arg: 1, scope: !3134, file: !3135, line: 229, type: !3096)
!3140 = !DILocalVariable(name: "size", arg: 2, scope: !3134, file: !3135, line: 229, type: !400)
!3141 = !DILocalVariable(name: "type", arg: 3, scope: !3134, file: !3135, line: 230, type: !46)
!3142 = !DILocation(line: 229, column: 60, scope: !3134)
!3143 = !DILocation(line: 229, column: 72, scope: !3134)
!3144 = !DILocation(line: 230, column: 15, scope: !3134)
!3145 = !DILocation(line: 230, column: 23, scope: !3134)
!3146 = distinct !DISubprogram(name: "constant_test_bit", scope: !3079, file: !3079, line: 204, type: !3147, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!704, !389, !3000}
!3149 = !{!3150, !3151}
!3150 = !DILocalVariable(name: "nr", arg: 1, scope: !3146, file: !3079, line: 204, type: !389)
!3151 = !DILocalVariable(name: "addr", arg: 2, scope: !3146, file: !3079, line: 204, type: !3000)
!3152 = !DILocation(line: 204, column: 52, scope: !3146)
!3153 = !DILocation(line: 204, column: 86, scope: !3146)
!3154 = !DILocation(line: 206, column: 19, scope: !3146)
!3155 = !DILocation(line: 206, column: 22, scope: !3146)
!3156 = !DILocation(line: 206, column: 15, scope: !3146)
!3157 = !DILocation(line: 207, column: 4, scope: !3146)
!3158 = !DILocation(line: 207, column: 9, scope: !3146)
!3159 = !DILocation(line: 207, column: 12, scope: !3146)
!3160 = !DILocation(line: 206, column: 44, scope: !3146)
!3161 = !DILocation(line: 207, column: 37, scope: !3146)
!3162 = !DILocation(line: 206, column: 2, scope: !3146)
!3163 = distinct !DISubprogram(name: "variable_test_bit", scope: !3079, file: !3079, line: 224, type: !3147, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3164)
!3164 = !{!3165, !3166, !3167}
!3165 = !DILocalVariable(name: "nr", arg: 1, scope: !3163, file: !3079, line: 224, type: !389)
!3166 = !DILocalVariable(name: "addr", arg: 2, scope: !3163, file: !3079, line: 224, type: !3000)
!3167 = !DILocalVariable(name: "oldbit", scope: !3163, file: !3079, line: 226, type: !704)
!3168 = !DILocation(line: 224, column: 52, scope: !3163)
!3169 = !DILocation(line: 224, column: 86, scope: !3163)
!3170 = !DILocation(line: 226, column: 2, scope: !3163)
!3171 = !DILocation(line: 226, column: 7, scope: !3163)
!3172 = !DILocation(line: 231, column: 33, scope: !3163)
!3173 = !DILocation(line: 231, column: 46, scope: !3163)
!3174 = !DILocation(line: 228, column: 2, scope: !3163)
!3175 = !{i64 2148359322, i64 2148359396}
!3176 = !DILocation(line: 233, column: 9, scope: !3163)
!3177 = !DILocation(line: 234, column: 1, scope: !3163)
!3178 = !DILocation(line: 233, column: 2, scope: !3163)
!3179 = !DISubprogram(name: "pnp_check_dma", scope: !87, file: !87, line: 146, type: !2922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3180 = !DISubprogram(name: "pnp_add_dma_resource", scope: !87, file: !87, line: 166, type: !3047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3181 = !DISubprogram(name: "pnp_free_resource", scope: !87, file: !87, line: 160, type: !3182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !147}
