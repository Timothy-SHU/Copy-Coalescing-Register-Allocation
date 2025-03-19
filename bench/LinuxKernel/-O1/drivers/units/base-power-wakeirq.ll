; ModuleID = 'drivers/base/power/wakeirq.c'
source_filename = "drivers/base/power/wakeirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_set_wake_irq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_set_wake_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_clear_wake_irq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_clear_wake_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_set_dedicated_wake_irq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_set_dedicated_wake_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_pm_set_dedicated_wake_irq_reverse: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dev_pm_set_dedicated_wake_irq_reverse ; .previous"

%struct.wake_irq = type { ptr, i32, i32, ptr }
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
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.cpumask = type { [1 x i64] }

@__UNIQUE_ID___addressable_dev_pm_set_wake_irq206 = internal global ptr @dev_pm_set_wake_irq, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_dev_pm_clear_wake_irq207 = internal global ptr @dev_pm_clear_wake_irq, section ".discard.addressable", align 8, !dbg !182
@__UNIQUE_ID___addressable_dev_pm_set_dedicated_wake_irq208 = internal global ptr @dev_pm_set_dedicated_wake_irq, section ".discard.addressable", align 8, !dbg !184
@__UNIQUE_ID___addressable_dev_pm_set_dedicated_wake_irq_reverse209 = internal global ptr @dev_pm_set_dedicated_wake_irq_reverse, section ".discard.addressable", align 8, !dbg !186
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !188
@dev_pm_attach_wake_irq.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !194
@.str.1 = private unnamed_addr constant [37 x i8] c"%s %s: wake irq already initialized\0A\00", align 1, !dbg !1875
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/base/power/wakeirq.c\00", align 1, !dbg !1880
@.str.3 = private unnamed_addr constant [10 x i8] c"%s:wakeup\00", align 1, !dbg !1885
@.str.4 = private unnamed_addr constant [29 x i8] c"wake IRQ with no resume: %i\0A\00", align 1, !dbg !1890
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_dev_pm_set_wake_irq206, ptr @__UNIQUE_ID___addressable_dev_pm_clear_wake_irq207, ptr @__UNIQUE_ID___addressable_dev_pm_set_dedicated_wake_irq208, ptr @__UNIQUE_ID___addressable_dev_pm_set_dedicated_wake_irq_reverse209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %irq) #0 align 16 !dbg !1901 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %wirq = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1905, metadata !DIExpression()), !dbg !1909
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !1906, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.start.p0(i64 8, ptr %wirq) #14, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %wirq, metadata !1907, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1908, metadata !DIExpression()), !dbg !1914
  %0 = load i32, ptr %irq.addr, align 4, !dbg !1915
  %cmp = icmp slt i32 %0, 0, !dbg !1917
  br i1 %cmp, label %if.then, label %if.end, !dbg !1918

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1919

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #15, !dbg !1920
  store ptr %call, ptr %wirq, align 8, !dbg !1921
  %1 = load ptr, ptr %wirq, align 8, !dbg !1922
  %tobool = icmp ne ptr %1, null, !dbg !1922
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !1924

if.then1:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !1925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1925

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1926
  %3 = load ptr, ptr %wirq, align 8, !dbg !1927
  %dev3 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 0, !dbg !1928
  store ptr %2, ptr %dev3, align 8, !dbg !1929
  %4 = load i32, ptr %irq.addr, align 4, !dbg !1930
  %5 = load ptr, ptr %wirq, align 8, !dbg !1931
  %irq4 = getelementptr inbounds %struct.wake_irq, ptr %5, i32 0, i32 2, !dbg !1932
  store i32 %4, ptr %irq4, align 4, !dbg !1933
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !1934
  %7 = load ptr, ptr %wirq, align 8, !dbg !1935
  %call5 = call i32 @dev_pm_attach_wake_irq(ptr noundef %6, ptr noundef %7) #16, !dbg !1936
  store i32 %call5, ptr %err, align 4, !dbg !1937
  %8 = load i32, ptr %err, align 4, !dbg !1938
  %tobool6 = icmp ne i32 %8, 0, !dbg !1938
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1940

if.then7:                                         ; preds = %if.end2
  %9 = load ptr, ptr %wirq, align 8, !dbg !1941
  call void @kfree(ptr noundef %9) #16, !dbg !1942
  br label %if.end8, !dbg !1942

if.end8:                                          ; preds = %if.then7, %if.end2
  %10 = load i32, ptr %err, align 4, !dbg !1943
  store i32 %10, ptr %retval, align 4, !dbg !1944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1944

cleanup:                                          ; preds = %if.end8, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !1945
  call void @llvm.lifetime.end.p0(i64 8, ptr %wirq) #14, !dbg !1945
  %11 = load i32, ptr %retval, align 4, !dbg !1945
  ret i32 %11, !dbg !1945
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !1946 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1950, metadata !DIExpression()), !dbg !1952
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1951, metadata !DIExpression()), !dbg !1953
  %0 = load i64, ptr %size.addr, align 8, !dbg !1954
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1955
  %or = or i32 %1, 256, !dbg !1956
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1957
  ret ptr %call, !dbg !1958
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_pm_attach_wake_irq(ptr noundef %dev, ptr noundef %wirq) #0 align 16 !dbg !196 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %wirq.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp23 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp66 = alloca i64, align 8
  %tmp75 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1854, metadata !DIExpression()), !dbg !1959
  store ptr %wirq, ptr %wirq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wirq.addr, metadata !1855, metadata !DIExpression()), !dbg !1960
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1961
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1856, metadata !DIExpression()), !dbg !1962
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1963
  %tobool = icmp ne ptr %0, null, !dbg !1963
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1965

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %wirq.addr, align 8, !dbg !1966
  %tobool1 = icmp ne ptr %1, null, !dbg !1966
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1967

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !1968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1968

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !1969

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !1970

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1971
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1857, metadata !DIExpression()), !dbg !1971
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1971
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1861, metadata !DIExpression()), !dbg !1971
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1971
  %conv = zext i1 %cmp to i32, !dbg !1971
  store i32 1, ptr %tmp, align 4, !dbg !1971
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1972
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1972
  %2 = load i32, ptr %tmp, align 4, !dbg !1971
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !1972
  %power = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !1972
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !1972
  %call = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !1972
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !1972
  store i64 %call3, ptr %flags, align 8, !dbg !1972
  br label %do.cond, !dbg !1972

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1972

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !1970

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !1970

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !1973
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !1862, metadata !DIExpression()), !dbg !1973
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !1973
  %power6 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, !dbg !1973
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, ptr %power6, i32 0, i32 12, !dbg !1973
  %5 = load ptr, ptr %wakeirq, align 8, !dbg !1973
  %tobool7 = icmp ne ptr %5, null, !dbg !1973
  %lnot = xor i1 %tobool7, true, !dbg !1973
  %lnot8 = xor i1 %lnot, true, !dbg !1973
  %frombool = zext i1 %lnot8 to i8, !dbg !1973
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !1973
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !1974
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !1865, metadata !DIExpression()), !dbg !1974
  %6 = load i8, ptr %__ret_do_once, align 1, !dbg !1974, !range !1975, !noundef !428
  %tobool9 = trunc i8 %6 to i1, !dbg !1974
  %lnot10 = xor i1 %tobool9, true, !dbg !1974
  %lnot11 = xor i1 %lnot10, true, !dbg !1974
  %frombool12 = zext i1 %lnot11 to i8, !dbg !1974
  store i8 %frombool12, ptr %__ret_cond, align 1, !dbg !1974
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !1974
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !1868, metadata !DIExpression()), !dbg !1974
  store i8 0, ptr %__ret_once, align 1, !dbg !1974
  %7 = load i8, ptr %__ret_cond, align 1, !dbg !1976, !range !1975, !noundef !428
  %tobool13 = trunc i8 %7 to i1, !dbg !1976
  br i1 %tobool13, label %land.rhs, label %land.end, !dbg !1976

land.rhs:                                         ; preds = %do.end5
  %8 = load i8, ptr @dev_pm_attach_wake_irq.__already_done, align 1, !dbg !1976, !range !1975, !noundef !428
  %tobool15 = trunc i8 %8 to i1, !dbg !1976
  %lnot16 = xor i1 %tobool15, true, !dbg !1976
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end5
  %9 = phi i1 [ false, %do.end5 ], [ %lnot16, %land.rhs ], !dbg !1978
  %lnot17 = xor i1 %9, true, !dbg !1976
  %lnot18 = xor i1 %lnot17, true, !dbg !1976
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !1976
  %conv19 = sext i32 %lnot.ext to i64, !dbg !1976
  %expval = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !1976
  %tobool20 = icmp ne i64 %expval, 0, !dbg !1976
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1974

if.then21:                                        ; preds = %land.end
  store i8 1, ptr @dev_pm_attach_wake_irq.__already_done, align 1, !dbg !1979
  store i8 1, ptr %__ret_once, align 1, !dbg !1979
  br label %if.end22, !dbg !1979

if.end22:                                         ; preds = %if.then21, %land.end
  %10 = load i8, ptr %__ret_once, align 1, !dbg !1974, !range !1975, !noundef !428
  %tobool24 = trunc i8 %10 to i1, !dbg !1974
  %lnot25 = xor i1 %tobool24, true, !dbg !1974
  %lnot27 = xor i1 %lnot25, true, !dbg !1974
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !1974
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !1974
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !1974
  store i64 %expval30, ptr %tmp23, align 8, !dbg !1976
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !1981
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !1981
  %11 = load i64, ptr %tmp23, align 8, !dbg !1974
  %tobool31 = icmp ne i64 %11, 0, !dbg !1981
  br i1 %tobool31, label %if.then32, label %if.end74, !dbg !1973

if.then32:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1982
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1869, metadata !DIExpression()), !dbg !1982
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1982
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !1983
  %tobool33 = icmp ne i32 %12, 0, !dbg !1983
  %lnot34 = xor i1 %tobool33, true, !dbg !1983
  %lnot36 = xor i1 %lnot34, true, !dbg !1983
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !1983
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !1983
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !1983
  %tobool40 = icmp ne i64 %expval39, 0, !dbg !1983
  br i1 %tobool40, label %if.then41, label %if.end65, !dbg !1982

if.then41:                                        ; preds = %if.then32
  br label %do.body42, !dbg !1983

do.body42:                                        ; preds = %if.then41
  br label %do.body43, !dbg !1984

do.body43:                                        ; preds = %do.body42
  br label %do.cond44, !dbg !1985

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !1985

do.end45:                                         ; preds = %do.cond44
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !1984
  %call46 = call ptr @dev_driver_string(ptr noundef %13) #16, !dbg !1984
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !1984
  %call47 = call ptr @dev_name(ptr noundef %14) #16, !dbg !1984
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, ptr noundef %call46, ptr noundef %call47) #16, !dbg !1984
  br label %do.body48, !dbg !1984

do.body48:                                        ; preds = %do.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !1987
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1871, metadata !DIExpression()), !dbg !1987
  store i32 2313, ptr %__flags, align 4, !dbg !1987
  br label %do.body49, !dbg !1987

do.body49:                                        ; preds = %do.body48
  br label %do.cond50, !dbg !1988

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !1988

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !1987

do.body52:                                        ; preds = %do.end51
  %15 = load i32, ptr %__flags, align 4, !dbg !1990
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 28, i32 %15, i64 12) #14, !dbg !1990, !srcloc !1992
  br label %do.cond53, !dbg !1990

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !1990

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !1987

do.body55:                                        ; preds = %do.end54
  br label %do.cond56, !dbg !1993

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !1993

do.end57:                                         ; preds = %do.cond56
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !1984
  br label %do.cond58, !dbg !1987

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !1987

do.end59:                                         ; preds = %do.cond58
  br label %do.body60, !dbg !1984

do.body60:                                        ; preds = %do.end59
  br label %do.cond61, !dbg !1995

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !1995

do.end62:                                         ; preds = %do.cond61
  br label %do.cond63, !dbg !1984

do.cond63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !1984

do.end64:                                         ; preds = %do.cond63
  br label %if.end65, !dbg !1984

if.end65:                                         ; preds = %do.end64, %if.then32
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !1982
  %tobool67 = icmp ne i32 %16, 0, !dbg !1982
  %lnot68 = xor i1 %tobool67, true, !dbg !1982
  %lnot70 = xor i1 %lnot68, true, !dbg !1982
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !1982
  %conv72 = sext i32 %lnot.ext71 to i64, !dbg !1982
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 0), !dbg !1982
  store i64 %expval73, ptr %tmp66, align 8, !dbg !1983
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1981
  %17 = load i64, ptr %tmp66, align 8, !dbg !1982
  br label %if.end74, !dbg !1981

if.end74:                                         ; preds = %if.end65, %if.end22
  %18 = load i8, ptr %__ret_do_once, align 1, !dbg !1973, !range !1975, !noundef !428
  %tobool76 = trunc i8 %18 to i1, !dbg !1973
  %lnot77 = xor i1 %tobool76, true, !dbg !1973
  %lnot79 = xor i1 %lnot77, true, !dbg !1973
  %lnot.ext80 = zext i1 %lnot79 to i32, !dbg !1973
  %conv81 = sext i32 %lnot.ext80 to i64, !dbg !1973
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 0), !dbg !1973
  store i64 %expval82, ptr %tmp75, align 8, !dbg !1981
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !1997
  %19 = load i64, ptr %tmp75, align 8, !dbg !1973
  %tobool83 = icmp ne i64 %19, 0, !dbg !1997
  br i1 %tobool83, label %if.then84, label %if.end87, !dbg !1998

if.then84:                                        ; preds = %if.end74
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !1999
  %power85 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 11, !dbg !2001
  %lock86 = getelementptr inbounds %struct.dev_pm_info, ptr %power85, i32 0, i32 3, !dbg !2002
  %21 = load i64, ptr %flags, align 8, !dbg !2003
  call void @spin_unlock_irqrestore(ptr noundef %lock86, i64 noundef %21) #16, !dbg !2004
  store i32 -17, ptr %retval, align 4, !dbg !2005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2005

if.end87:                                         ; preds = %if.end74
  %22 = load ptr, ptr %wirq.addr, align 8, !dbg !2006
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2007
  %power88 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 11, !dbg !2008
  %wakeirq89 = getelementptr inbounds %struct.dev_pm_info, ptr %power88, i32 0, i32 12, !dbg !2009
  store ptr %22, ptr %wakeirq89, align 8, !dbg !2010
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !2011
  %25 = load ptr, ptr %wirq.addr, align 8, !dbg !2012
  call void @device_wakeup_attach_irq(ptr noundef %24, ptr noundef %25) #16, !dbg !2013
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !2014
  %power90 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 11, !dbg !2015
  %lock91 = getelementptr inbounds %struct.dev_pm_info, ptr %power90, i32 0, i32 3, !dbg !2016
  %27 = load i64, ptr %flags, align 8, !dbg !2017
  call void @spin_unlock_irqrestore(ptr noundef %lock91, i64 noundef %27) #16, !dbg !2018
  store i32 0, ptr %retval, align 4, !dbg !2019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2019

cleanup:                                          ; preds = %if.end87, %if.then84, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !2020
  %28 = load i32, ptr %retval, align 4, !dbg !2020
  ret i32 %28, !dbg !2020
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2021 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dev_pm_clear_wake_irq(ptr noundef %dev) #0 align 16 !dbg !2024 {
entry:
  %dev.addr = alloca ptr, align 8
  %wirq = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2026, metadata !DIExpression()), !dbg !2034
  call void @llvm.lifetime.start.p0(i64 8, ptr %wirq) #14, !dbg !2035
  call void @llvm.dbg.declare(metadata ptr %wirq, metadata !2027, metadata !DIExpression()), !dbg !2036
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2037
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2038
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 12, !dbg !2039
  %1 = load ptr, ptr %wakeirq, align 8, !dbg !2039
  store ptr %1, ptr %wirq, align 8, !dbg !2036
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !2040
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2028, metadata !DIExpression()), !dbg !2041
  %2 = load ptr, ptr %wirq, align 8, !dbg !2042
  %tobool = icmp ne ptr %2, null, !dbg !2042
  br i1 %tobool, label %if.end, label %if.then, !dbg !2044

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2045

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2046

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !2047

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !2048
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2029, metadata !DIExpression()), !dbg !2048
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !2048
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2033, metadata !DIExpression()), !dbg !2048
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2048
  %conv = zext i1 %cmp to i32, !dbg !2048
  store i32 1, ptr %tmp, align 4, !dbg !2048
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !2049
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !2049
  %3 = load i32, ptr %tmp, align 4, !dbg !2048
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2049
  %power2 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, !dbg !2049
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 3, !dbg !2049
  %call = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !2049
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !2049
  store i64 %call3, ptr %flags, align 8, !dbg !2049
  br label %do.cond, !dbg !2049

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2049

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !2047

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !2047

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2050
  call void @device_wakeup_detach_irq(ptr noundef %5) #16, !dbg !2051
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2052
  %power6 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !2053
  %wakeirq7 = getelementptr inbounds %struct.dev_pm_info, ptr %power6, i32 0, i32 12, !dbg !2054
  store ptr null, ptr %wakeirq7, align 8, !dbg !2055
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2056
  %power8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, !dbg !2057
  %lock9 = getelementptr inbounds %struct.dev_pm_info, ptr %power8, i32 0, i32 3, !dbg !2058
  %8 = load i64, ptr %flags, align 8, !dbg !2059
  call void @spin_unlock_irqrestore(ptr noundef %lock9, i64 noundef %8) #16, !dbg !2060
  %9 = load ptr, ptr %wirq, align 8, !dbg !2061
  %status = getelementptr inbounds %struct.wake_irq, ptr %9, i32 0, i32 1, !dbg !2063
  %10 = load i32, ptr %status, align 8, !dbg !2063
  %conv10 = zext i32 %10 to i64, !dbg !2061
  %and = and i64 %conv10, 1, !dbg !2064
  %tobool11 = icmp ne i64 %and, 0, !dbg !2064
  br i1 %tobool11, label %if.then12, label %if.end18, !dbg !2065

if.then12:                                        ; preds = %do.end5
  %11 = load ptr, ptr %wirq, align 8, !dbg !2066
  %irq = getelementptr inbounds %struct.wake_irq, ptr %11, i32 0, i32 2, !dbg !2068
  %12 = load i32, ptr %irq, align 4, !dbg !2068
  %13 = load ptr, ptr %wirq, align 8, !dbg !2069
  %call13 = call ptr @free_irq(i32 noundef %12, ptr noundef %13) #16, !dbg !2070
  %14 = load ptr, ptr %wirq, align 8, !dbg !2071
  %status14 = getelementptr inbounds %struct.wake_irq, ptr %14, i32 0, i32 1, !dbg !2072
  %15 = load i32, ptr %status14, align 8, !dbg !2073
  %conv15 = zext i32 %15 to i64, !dbg !2073
  %and16 = and i64 %conv15, -8, !dbg !2073
  %conv17 = trunc i64 %and16 to i32, !dbg !2073
  store i32 %conv17, ptr %status14, align 8, !dbg !2073
  br label %if.end18, !dbg !2074

if.end18:                                         ; preds = %if.then12, %do.end5
  %16 = load ptr, ptr %wirq, align 8, !dbg !2075
  %name = getelementptr inbounds %struct.wake_irq, ptr %16, i32 0, i32 3, !dbg !2076
  %17 = load ptr, ptr %name, align 8, !dbg !2076
  call void @kfree(ptr noundef %17) #16, !dbg !2077
  %18 = load ptr, ptr %wirq, align 8, !dbg !2078
  call void @kfree(ptr noundef %18) #16, !dbg !2079
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2080
  br label %cleanup, !dbg !2080

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !2080
  call void @llvm.lifetime.end.p0(i64 8, ptr %wirq) #14, !dbg !2080
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2080

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2081 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !2086 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2092, metadata !DIExpression()), !dbg !2093
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2094
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2095
  ret ptr %1, !dbg !2096
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2097 dso_local void @device_wakeup_detach_irq(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !2098 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2102, metadata !DIExpression()), !dbg !2108
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2103, metadata !DIExpression()), !dbg !2109
  br label %do.body, !dbg !2110

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2104, metadata !DIExpression()), !dbg !2111
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2107, metadata !DIExpression()), !dbg !2111
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2111
  %conv = zext i1 %cmp to i32, !dbg !2111
  store i32 1, ptr %tmp, align 4, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !2112
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !2112
  %0 = load i32, ptr %tmp, align 4, !dbg !2111
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2112
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !2112
  %3 = load i64, ptr %flags.addr, align 8, !dbg !2112
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !2112
  br label %do.end, !dbg !2112

do.end:                                           ; preds = %do.body
  ret void, !dbg !2113
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2114 dso_local ptr @free_irq(i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %dev, i32 noundef %irq) #0 align 16 !dbg !2117 {
entry:
  %dev.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2119, metadata !DIExpression()), !dbg !2121
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2120, metadata !DIExpression()), !dbg !2122
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2123
  %1 = load i32, ptr %irq.addr, align 4, !dbg !2124
  %call = call i32 @__dev_pm_set_dedicated_wake_irq(ptr noundef %0, i32 noundef %1, i32 noundef 0) #16, !dbg !2125
  ret i32 %call, !dbg !2126
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__dev_pm_set_dedicated_wake_irq(ptr noundef %dev, i32 noundef %irq, i32 noundef %flag) #0 align 16 !dbg !2127 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %wirq = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2131, metadata !DIExpression()), !dbg !2139
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2132, metadata !DIExpression()), !dbg !2140
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !2133, metadata !DIExpression()), !dbg !2141
  call void @llvm.lifetime.start.p0(i64 8, ptr %wirq) #14, !dbg !2142
  call void @llvm.dbg.declare(metadata ptr %wirq, metadata !2134, metadata !DIExpression()), !dbg !2143
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2135, metadata !DIExpression()), !dbg !2145
  %0 = load i32, ptr %irq.addr, align 4, !dbg !2146
  %cmp = icmp slt i32 %0, 0, !dbg !2148
  br i1 %cmp, label %if.then, label %if.end, !dbg !2149

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2150

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #15, !dbg !2151
  store ptr %call, ptr %wirq, align 8, !dbg !2152
  %1 = load ptr, ptr %wirq, align 8, !dbg !2153
  %tobool = icmp ne ptr %1, null, !dbg !2153
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2155

if.then1:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2156

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2157
  %call3 = call ptr @dev_name(ptr noundef %2) #16, !dbg !2158
  %call4 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.3, ptr noundef %call3) #16, !dbg !2159
  %3 = load ptr, ptr %wirq, align 8, !dbg !2160
  %name = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 3, !dbg !2161
  store ptr %call4, ptr %name, align 8, !dbg !2162
  %4 = load ptr, ptr %wirq, align 8, !dbg !2163
  %name5 = getelementptr inbounds %struct.wake_irq, ptr %4, i32 0, i32 3, !dbg !2165
  %5 = load ptr, ptr %name5, align 8, !dbg !2165
  %tobool6 = icmp ne ptr %5, null, !dbg !2163
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2166

if.then7:                                         ; preds = %if.end2
  store i32 -12, ptr %err, align 4, !dbg !2167
  br label %err_free, !dbg !2169

if.end8:                                          ; preds = %if.end2
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2170
  %7 = load ptr, ptr %wirq, align 8, !dbg !2171
  %dev9 = getelementptr inbounds %struct.wake_irq, ptr %7, i32 0, i32 0, !dbg !2172
  store ptr %6, ptr %dev9, align 8, !dbg !2173
  %8 = load i32, ptr %irq.addr, align 4, !dbg !2174
  %9 = load ptr, ptr %wirq, align 8, !dbg !2175
  %irq10 = getelementptr inbounds %struct.wake_irq, ptr %9, i32 0, i32 2, !dbg !2176
  store i32 %8, ptr %irq10, align 4, !dbg !2177
  %10 = load i32, ptr %irq.addr, align 4, !dbg !2178
  call void @irq_set_status_flags(i32 noundef %10, i64 noundef 524288) #16, !dbg !2179
  %11 = load i32, ptr %irq.addr, align 4, !dbg !2180
  %12 = load ptr, ptr %wirq, align 8, !dbg !2181
  %name11 = getelementptr inbounds %struct.wake_irq, ptr %12, i32 0, i32 3, !dbg !2182
  %13 = load ptr, ptr %name11, align 8, !dbg !2182
  %14 = load ptr, ptr %wirq, align 8, !dbg !2183
  %call12 = call i32 @request_threaded_irq(i32 noundef %11, ptr noundef null, ptr noundef @handle_threaded_wake_irq, i64 noundef 532480, ptr noundef %13, ptr noundef %14) #16, !dbg !2184
  store i32 %call12, ptr %err, align 4, !dbg !2185
  %15 = load i32, ptr %err, align 4, !dbg !2186
  %tobool13 = icmp ne i32 %15, 0, !dbg !2186
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2188

if.then14:                                        ; preds = %if.end8
  br label %err_free_name, !dbg !2189

if.end15:                                         ; preds = %if.end8
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2190
  %17 = load ptr, ptr %wirq, align 8, !dbg !2191
  %call16 = call i32 @dev_pm_attach_wake_irq(ptr noundef %16, ptr noundef %17) #16, !dbg !2192
  store i32 %call16, ptr %err, align 4, !dbg !2193
  %18 = load i32, ptr %err, align 4, !dbg !2194
  %tobool17 = icmp ne i32 %18, 0, !dbg !2194
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2196

if.then18:                                        ; preds = %if.end15
  br label %err_free_irq, !dbg !2197

if.end19:                                         ; preds = %if.end15
  %19 = load i32, ptr %flag.addr, align 4, !dbg !2198
  %conv = zext i32 %19 to i64, !dbg !2198
  %or = or i64 1, %conv, !dbg !2199
  %conv20 = trunc i64 %or to i32, !dbg !2200
  %20 = load ptr, ptr %wirq, align 8, !dbg !2201
  %status = getelementptr inbounds %struct.wake_irq, ptr %20, i32 0, i32 1, !dbg !2202
  store i32 %conv20, ptr %status, align 8, !dbg !2203
  %21 = load i32, ptr %err, align 4, !dbg !2204
  store i32 %21, ptr %retval, align 4, !dbg !2205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2205

err_free_irq:                                     ; preds = %if.then18
  call void @llvm.dbg.label(metadata !2136), !dbg !2206
  %22 = load i32, ptr %irq.addr, align 4, !dbg !2207
  %23 = load ptr, ptr %wirq, align 8, !dbg !2208
  %call21 = call ptr @free_irq(i32 noundef %22, ptr noundef %23) #16, !dbg !2209
  br label %err_free_name, !dbg !2209

err_free_name:                                    ; preds = %err_free_irq, %if.then14
  call void @llvm.dbg.label(metadata !2137), !dbg !2210
  %24 = load ptr, ptr %wirq, align 8, !dbg !2211
  %name22 = getelementptr inbounds %struct.wake_irq, ptr %24, i32 0, i32 3, !dbg !2212
  %25 = load ptr, ptr %name22, align 8, !dbg !2212
  call void @kfree(ptr noundef %25) #16, !dbg !2213
  br label %err_free, !dbg !2213

err_free:                                         ; preds = %err_free_name, %if.then7
  call void @llvm.dbg.label(metadata !2138), !dbg !2214
  %26 = load ptr, ptr %wirq, align 8, !dbg !2215
  call void @kfree(ptr noundef %26) #16, !dbg !2216
  %27 = load i32, ptr %err, align 4, !dbg !2217
  store i32 %27, ptr %retval, align 4, !dbg !2218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2218

cleanup:                                          ; preds = %err_free, %if.end19, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !2219
  call void @llvm.lifetime.end.p0(i64 8, ptr %wirq) #14, !dbg !2219
  %28 = load i32, ptr %retval, align 4, !dbg !2219
  ret i32 %28, !dbg !2219
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dev_pm_set_dedicated_wake_irq_reverse(ptr noundef %dev, i32 noundef %irq) #0 align 16 !dbg !2220 {
entry:
  %dev.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2222, metadata !DIExpression()), !dbg !2224
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2223, metadata !DIExpression()), !dbg !2225
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2226
  %1 = load i32, ptr %irq.addr, align 4, !dbg !2227
  %call = call i32 @__dev_pm_set_dedicated_wake_irq(ptr noundef %0, i32 noundef %1, i32 noundef 4) #16, !dbg !2228
  ret i32 %call, !dbg !2229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dev_pm_enable_wake_irq_check(ptr noundef %dev, i1 noundef zeroext %can_change_status) #0 align 16 !dbg !2230 {
entry:
  %dev.addr = alloca ptr, align 8
  %can_change_status.addr = alloca i8, align 1
  %wirq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2232, metadata !DIExpression()), !dbg !2236
  %frombool = zext i1 %can_change_status to i8
  store i8 %frombool, ptr %can_change_status.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %can_change_status.addr, metadata !2233, metadata !DIExpression()), !dbg !2237
  call void @llvm.lifetime.start.p0(i64 8, ptr %wirq) #14, !dbg !2238
  call void @llvm.dbg.declare(metadata ptr %wirq, metadata !2234, metadata !DIExpression()), !dbg !2239
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2240
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2241
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 12, !dbg !2242
  %1 = load ptr, ptr %wakeirq, align 8, !dbg !2242
  store ptr %1, ptr %wirq, align 8, !dbg !2239
  %2 = load ptr, ptr %wirq, align 8, !dbg !2243
  %tobool = icmp ne ptr %2, null, !dbg !2243
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2245

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %wirq, align 8, !dbg !2246
  %status = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 1, !dbg !2247
  %4 = load i32, ptr %status, align 8, !dbg !2247
  %conv = zext i32 %4 to i64, !dbg !2246
  %and = and i64 %conv, 7, !dbg !2248
  %tobool1 = icmp ne i64 %and, 0, !dbg !2248
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2249

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2250

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %wirq, align 8, !dbg !2251
  %status2 = getelementptr inbounds %struct.wake_irq, ptr %5, i32 0, i32 1, !dbg !2251
  %6 = load i32, ptr %status2, align 8, !dbg !2251
  %conv3 = zext i32 %6 to i64, !dbg !2251
  %and4 = and i64 %conv3, 2, !dbg !2251
  %tobool5 = icmp ne i64 %and4, 0, !dbg !2251
  %lnot = xor i1 %tobool5, true, !dbg !2251
  %lnot6 = xor i1 %lnot, true, !dbg !2251
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2251
  %conv7 = sext i32 %lnot.ext to i64, !dbg !2251
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !2251
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2251
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2253

if.then9:                                         ; preds = %if.end
  br label %enable, !dbg !2254

if.else:                                          ; preds = %if.end
  %7 = load i8, ptr %can_change_status.addr, align 1, !dbg !2256, !range !1975, !noundef !428
  %tobool10 = trunc i8 %7 to i1, !dbg !2256
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !2258

if.then11:                                        ; preds = %if.else
  %8 = load ptr, ptr %wirq, align 8, !dbg !2259
  %status12 = getelementptr inbounds %struct.wake_irq, ptr %8, i32 0, i32 1, !dbg !2261
  %9 = load i32, ptr %status12, align 8, !dbg !2262
  %conv13 = zext i32 %9 to i64, !dbg !2262
  %or = or i64 %conv13, 2, !dbg !2262
  %conv14 = trunc i64 %or to i32, !dbg !2262
  store i32 %conv14, ptr %status12, align 8, !dbg !2262
  br label %enable, !dbg !2263

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2264

enable:                                           ; preds = %if.then11, %if.then9
  call void @llvm.dbg.label(metadata !2235), !dbg !2265
  %10 = load i8, ptr %can_change_status.addr, align 1, !dbg !2266, !range !1975, !noundef !428
  %tobool17 = trunc i8 %10 to i1, !dbg !2266
  br i1 %tobool17, label %lor.lhs.false18, label %if.then23, !dbg !2268

lor.lhs.false18:                                  ; preds = %enable
  %11 = load ptr, ptr %wirq, align 8, !dbg !2269
  %status19 = getelementptr inbounds %struct.wake_irq, ptr %11, i32 0, i32 1, !dbg !2270
  %12 = load i32, ptr %status19, align 8, !dbg !2270
  %conv20 = zext i32 %12 to i64, !dbg !2269
  %and21 = and i64 %conv20, 4, !dbg !2271
  %tobool22 = icmp ne i64 %and21, 0, !dbg !2271
  br i1 %tobool22, label %if.end28, label %if.then23, !dbg !2272

if.then23:                                        ; preds = %lor.lhs.false18, %enable
  %13 = load ptr, ptr %wirq, align 8, !dbg !2273
  %irq = getelementptr inbounds %struct.wake_irq, ptr %13, i32 0, i32 2, !dbg !2275
  %14 = load i32, ptr %irq, align 4, !dbg !2275
  call void @enable_irq(i32 noundef %14) #16, !dbg !2276
  %15 = load ptr, ptr %wirq, align 8, !dbg !2277
  %status24 = getelementptr inbounds %struct.wake_irq, ptr %15, i32 0, i32 1, !dbg !2278
  %16 = load i32, ptr %status24, align 8, !dbg !2279
  %conv25 = zext i32 %16 to i64, !dbg !2279
  %or26 = or i64 %conv25, 8, !dbg !2279
  %conv27 = trunc i64 %or26 to i32, !dbg !2279
  store i32 %conv27, ptr %status24, align 8, !dbg !2279
  br label %if.end28, !dbg !2280

if.end28:                                         ; preds = %if.then23, %lor.lhs.false18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2281
  br label %cleanup, !dbg !2281

cleanup:                                          ; preds = %if.end28, %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wirq) #14, !dbg !2281
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2281

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2282 dso_local void @enable_irq(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dev_pm_disable_wake_irq_check(ptr noundef %dev, i1 noundef zeroext %cond_disable) #0 align 16 !dbg !2285 {
entry:
  %dev.addr = alloca ptr, align 8
  %cond_disable.addr = alloca i8, align 1
  %wirq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2287, metadata !DIExpression()), !dbg !2290
  %frombool = zext i1 %cond_disable to i8
  store i8 %frombool, ptr %cond_disable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cond_disable.addr, metadata !2288, metadata !DIExpression()), !dbg !2291
  call void @llvm.lifetime.start.p0(i64 8, ptr %wirq) #14, !dbg !2292
  call void @llvm.dbg.declare(metadata ptr %wirq, metadata !2289, metadata !DIExpression()), !dbg !2293
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2294
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2295
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 12, !dbg !2296
  %1 = load ptr, ptr %wakeirq, align 8, !dbg !2296
  store ptr %1, ptr %wirq, align 8, !dbg !2293
  %2 = load ptr, ptr %wirq, align 8, !dbg !2297
  %tobool = icmp ne ptr %2, null, !dbg !2297
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2299

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %wirq, align 8, !dbg !2300
  %status = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 1, !dbg !2301
  %4 = load i32, ptr %status, align 8, !dbg !2301
  %conv = zext i32 %4 to i64, !dbg !2300
  %and = and i64 %conv, 7, !dbg !2302
  %tobool1 = icmp ne i64 %and, 0, !dbg !2302
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2303

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2304

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8, ptr %cond_disable.addr, align 1, !dbg !2305, !range !1975, !noundef !428
  %tobool2 = trunc i8 %5 to i1, !dbg !2305
  br i1 %tobool2, label %land.lhs.true, label %if.end9, !dbg !2307

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %wirq, align 8, !dbg !2308
  %status4 = getelementptr inbounds %struct.wake_irq, ptr %6, i32 0, i32 1, !dbg !2309
  %7 = load i32, ptr %status4, align 8, !dbg !2309
  %conv5 = zext i32 %7 to i64, !dbg !2308
  %and6 = and i64 %conv5, 4, !dbg !2310
  %tobool7 = icmp ne i64 %and6, 0, !dbg !2310
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2311

if.then8:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2312

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %wirq, align 8, !dbg !2313
  %status10 = getelementptr inbounds %struct.wake_irq, ptr %8, i32 0, i32 1, !dbg !2315
  %9 = load i32, ptr %status10, align 8, !dbg !2315
  %conv11 = zext i32 %9 to i64, !dbg !2313
  %and12 = and i64 %conv11, 2, !dbg !2316
  %tobool13 = icmp ne i64 %and12, 0, !dbg !2316
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !2317

if.then14:                                        ; preds = %if.end9
  %10 = load ptr, ptr %wirq, align 8, !dbg !2318
  %status15 = getelementptr inbounds %struct.wake_irq, ptr %10, i32 0, i32 1, !dbg !2320
  %11 = load i32, ptr %status15, align 8, !dbg !2321
  %conv16 = zext i32 %11 to i64, !dbg !2321
  %and17 = and i64 %conv16, -9, !dbg !2321
  %conv18 = trunc i64 %and17 to i32, !dbg !2321
  store i32 %conv18, ptr %status15, align 8, !dbg !2321
  %12 = load ptr, ptr %wirq, align 8, !dbg !2322
  %irq = getelementptr inbounds %struct.wake_irq, ptr %12, i32 0, i32 2, !dbg !2323
  %13 = load i32, ptr %irq, align 4, !dbg !2323
  call void @disable_irq_nosync(i32 noundef %13) #16, !dbg !2324
  br label %if.end19, !dbg !2325

if.end19:                                         ; preds = %if.then14, %if.end9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2326
  br label %cleanup, !dbg !2326

cleanup:                                          ; preds = %if.end19, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wirq) #14, !dbg !2326
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2326

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2327 dso_local void @disable_irq_nosync(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dev_pm_enable_wake_irq_complete(ptr noundef %dev) #0 align 16 !dbg !2328 {
entry:
  %dev.addr = alloca ptr, align 8
  %wirq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.lifetime.start.p0(i64 8, ptr %wirq) #14, !dbg !2333
  call void @llvm.dbg.declare(metadata ptr %wirq, metadata !2331, metadata !DIExpression()), !dbg !2334
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2335
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2336
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 12, !dbg !2337
  %1 = load ptr, ptr %wakeirq, align 8, !dbg !2337
  store ptr %1, ptr %wirq, align 8, !dbg !2334
  %2 = load ptr, ptr %wirq, align 8, !dbg !2338
  %tobool = icmp ne ptr %2, null, !dbg !2338
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2340

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %wirq, align 8, !dbg !2341
  %status = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 1, !dbg !2342
  %4 = load i32, ptr %status, align 8, !dbg !2342
  %conv = zext i32 %4 to i64, !dbg !2341
  %and = and i64 %conv, 7, !dbg !2343
  %tobool1 = icmp ne i64 %and, 0, !dbg !2343
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2344

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2345

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %wirq, align 8, !dbg !2346
  %status2 = getelementptr inbounds %struct.wake_irq, ptr %5, i32 0, i32 1, !dbg !2348
  %6 = load i32, ptr %status2, align 8, !dbg !2348
  %conv3 = zext i32 %6 to i64, !dbg !2346
  %and4 = and i64 %conv3, 2, !dbg !2349
  %tobool5 = icmp ne i64 %and4, 0, !dbg !2349
  br i1 %tobool5, label %land.lhs.true, label %if.end14, !dbg !2350

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %wirq, align 8, !dbg !2351
  %status6 = getelementptr inbounds %struct.wake_irq, ptr %7, i32 0, i32 1, !dbg !2352
  %8 = load i32, ptr %status6, align 8, !dbg !2352
  %conv7 = zext i32 %8 to i64, !dbg !2351
  %and8 = and i64 %conv7, 4, !dbg !2353
  %tobool9 = icmp ne i64 %and8, 0, !dbg !2353
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !2354

if.then10:                                        ; preds = %land.lhs.true
  %9 = load ptr, ptr %wirq, align 8, !dbg !2355
  %irq = getelementptr inbounds %struct.wake_irq, ptr %9, i32 0, i32 2, !dbg !2357
  %10 = load i32, ptr %irq, align 4, !dbg !2357
  call void @enable_irq(i32 noundef %10) #16, !dbg !2358
  %11 = load ptr, ptr %wirq, align 8, !dbg !2359
  %status11 = getelementptr inbounds %struct.wake_irq, ptr %11, i32 0, i32 1, !dbg !2360
  %12 = load i32, ptr %status11, align 8, !dbg !2361
  %conv12 = zext i32 %12 to i64, !dbg !2361
  %or = or i64 %conv12, 8, !dbg !2361
  %conv13 = trunc i64 %or to i32, !dbg !2361
  store i32 %conv13, ptr %status11, align 8, !dbg !2361
  br label %if.end14, !dbg !2362

if.end14:                                         ; preds = %if.then10, %land.lhs.true, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2363
  br label %cleanup, !dbg !2363

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wirq) #14, !dbg !2363
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2363

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dev_pm_arm_wake_irq(ptr noundef %wirq) #0 align 16 !dbg !2364 {
entry:
  %wirq.addr = alloca ptr, align 8
  store ptr %wirq, ptr %wirq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wirq.addr, metadata !2368, metadata !DIExpression()), !dbg !2369
  %0 = load ptr, ptr %wirq.addr, align 8, !dbg !2370
  %tobool = icmp ne ptr %0, null, !dbg !2370
  br i1 %tobool, label %if.end, label %if.then, !dbg !2372

if.then:                                          ; preds = %entry
  br label %if.end11, !dbg !2373

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %wirq.addr, align 8, !dbg !2374
  %dev = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 0, !dbg !2376
  %2 = load ptr, ptr %dev, align 8, !dbg !2376
  %call = call zeroext i1 @device_may_wakeup(ptr noundef %2) #16, !dbg !2377
  br i1 %call, label %if.then1, label %if.end11, !dbg !2378

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %wirq.addr, align 8, !dbg !2379
  %status = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 1, !dbg !2382
  %4 = load i32, ptr %status, align 8, !dbg !2382
  %conv = zext i32 %4 to i64, !dbg !2379
  %and = and i64 %conv, 1, !dbg !2383
  %tobool2 = icmp ne i64 %and, 0, !dbg !2383
  br i1 %tobool2, label %land.lhs.true, label %if.end8, !dbg !2384

land.lhs.true:                                    ; preds = %if.then1
  %5 = load ptr, ptr %wirq.addr, align 8, !dbg !2385
  %status3 = getelementptr inbounds %struct.wake_irq, ptr %5, i32 0, i32 1, !dbg !2386
  %6 = load i32, ptr %status3, align 8, !dbg !2386
  %conv4 = zext i32 %6 to i64, !dbg !2385
  %and5 = and i64 %conv4, 8, !dbg !2387
  %tobool6 = icmp ne i64 %and5, 0, !dbg !2387
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2388

if.then7:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %wirq.addr, align 8, !dbg !2389
  %irq = getelementptr inbounds %struct.wake_irq, ptr %7, i32 0, i32 2, !dbg !2390
  %8 = load i32, ptr %irq, align 4, !dbg !2390
  call void @enable_irq(i32 noundef %8) #16, !dbg !2391
  br label %if.end8, !dbg !2391

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %if.then1
  %9 = load ptr, ptr %wirq.addr, align 8, !dbg !2392
  %irq9 = getelementptr inbounds %struct.wake_irq, ptr %9, i32 0, i32 2, !dbg !2393
  %10 = load i32, ptr %irq9, align 4, !dbg !2393
  %call10 = call i32 @enable_irq_wake(i32 noundef %10) #16, !dbg !2394
  br label %if.end11, !dbg !2395

if.end11:                                         ; preds = %if.then, %if.end8, %if.end
  ret void, !dbg !2396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_may_wakeup(ptr noundef %dev) #7 align 16 !dbg !2397 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2401, metadata !DIExpression()), !dbg !2402
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2403
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2404
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !2405
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !2405
  %bf.clear = and i16 %bf.load, 1, !dbg !2405
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2405
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2403
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2406

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2407
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2408
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2409
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2409
  %tobool2 = icmp ne ptr %2, null, !dbg !2410
  %lnot = xor i1 %tobool2, true, !dbg !2410
  %lnot3 = xor i1 %lnot, true, !dbg !2411
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !2412
  ret i1 %3, !dbg !2413
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @enable_irq_wake(i32 noundef %irq) #7 align 16 !dbg !2414 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2418, metadata !DIExpression()), !dbg !2419
  %0 = load i32, ptr %irq.addr, align 4, !dbg !2420
  %call = call i32 @irq_set_irq_wake(i32 noundef %0, i32 noundef 1) #16, !dbg !2421
  ret i32 %call, !dbg !2422
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dev_pm_disarm_wake_irq(ptr noundef %wirq) #0 align 16 !dbg !2423 {
entry:
  %wirq.addr = alloca ptr, align 8
  store ptr %wirq, ptr %wirq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wirq.addr, metadata !2425, metadata !DIExpression()), !dbg !2426
  %0 = load ptr, ptr %wirq.addr, align 8, !dbg !2427
  %tobool = icmp ne ptr %0, null, !dbg !2427
  br i1 %tobool, label %if.end, label %if.then, !dbg !2429

if.then:                                          ; preds = %entry
  br label %if.end11, !dbg !2430

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %wirq.addr, align 8, !dbg !2431
  %dev = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 0, !dbg !2433
  %2 = load ptr, ptr %dev, align 8, !dbg !2433
  %call = call zeroext i1 @device_may_wakeup(ptr noundef %2) #16, !dbg !2434
  br i1 %call, label %if.then1, label %if.end11, !dbg !2435

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %wirq.addr, align 8, !dbg !2436
  %irq = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 2, !dbg !2438
  %4 = load i32, ptr %irq, align 4, !dbg !2438
  %call2 = call i32 @disable_irq_wake(i32 noundef %4) #16, !dbg !2439
  %5 = load ptr, ptr %wirq.addr, align 8, !dbg !2440
  %status = getelementptr inbounds %struct.wake_irq, ptr %5, i32 0, i32 1, !dbg !2442
  %6 = load i32, ptr %status, align 8, !dbg !2442
  %conv = zext i32 %6 to i64, !dbg !2440
  %and = and i64 %conv, 1, !dbg !2443
  %tobool3 = icmp ne i64 %and, 0, !dbg !2443
  br i1 %tobool3, label %land.lhs.true, label %if.end10, !dbg !2444

land.lhs.true:                                    ; preds = %if.then1
  %7 = load ptr, ptr %wirq.addr, align 8, !dbg !2445
  %status4 = getelementptr inbounds %struct.wake_irq, ptr %7, i32 0, i32 1, !dbg !2446
  %8 = load i32, ptr %status4, align 8, !dbg !2446
  %conv5 = zext i32 %8 to i64, !dbg !2445
  %and6 = and i64 %conv5, 8, !dbg !2447
  %tobool7 = icmp ne i64 %and6, 0, !dbg !2447
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !2448

if.then8:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %wirq.addr, align 8, !dbg !2449
  %irq9 = getelementptr inbounds %struct.wake_irq, ptr %9, i32 0, i32 2, !dbg !2450
  %10 = load i32, ptr %irq9, align 4, !dbg !2450
  call void @disable_irq_nosync(i32 noundef %10) #16, !dbg !2451
  br label %if.end10, !dbg !2451

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %if.then1
  br label %if.end11, !dbg !2452

if.end11:                                         ; preds = %if.then, %if.end10, %if.end
  ret void, !dbg !2453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @disable_irq_wake(i32 noundef %irq) #7 align 16 !dbg !2454 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2456, metadata !DIExpression()), !dbg !2457
  %0 = load i32, ptr %irq.addr, align 4, !dbg !2458
  %call = call i32 @irq_set_irq_wake(i32 noundef %0, i32 noundef 0) #16, !dbg !2459
  ret i32 %call, !dbg !2460
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2461 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2463, metadata !DIExpression()), !dbg !2468
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2464, metadata !DIExpression()), !dbg !2469
  %0 = load i64, ptr %size.addr, align 8, !dbg !2470
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2471
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2472

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2473
  %tobool = icmp ne i64 %2, 0, !dbg !2473
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2474

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2465, metadata !DIExpression()), !dbg !2476
  %3 = load i64, ptr %size.addr, align 8, !dbg !2477
  %cmp = icmp ugt i64 %3, 8192, !dbg !2479
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2480

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2481
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2482
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2483
  store ptr %call, ptr %retval, align 8, !dbg !2484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2484

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2485
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2485
  store i32 %call2, ptr %index, align 4, !dbg !2486
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2487
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2488
  %9 = ptrtoint ptr %8 to i64, !dbg !2488
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2489
  %idxprom = zext i32 %call3 to i64, !dbg !2490
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2490
  %10 = load i32, ptr %index, align 4, !dbg !2491
  %idxprom4 = zext i32 %10 to i64, !dbg !2490
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2490
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2490
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2492
  %13 = load i64, ptr %size.addr, align 8, !dbg !2493
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !2494
  store ptr %call6, ptr %retval, align 8, !dbg !2495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2495

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !2496
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2497
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2498
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2499
  store ptr %call8, ptr %retval, align 8, !dbg !2500
  br label %return, !dbg !2500

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2501
  ret ptr %16, !dbg !2501
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2502 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !2503 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2507, metadata !DIExpression()), !dbg !2509
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2508, metadata !DIExpression()), !dbg !2510
  %0 = load i64, ptr %size.addr, align 8, !dbg !2511
  %tobool = icmp ne i64 %0, 0, !dbg !2511
  br i1 %tobool, label %if.end, label %if.then, !dbg !2513

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2514
  br label %return, !dbg !2514

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2515
  %cmp = icmp ule i64 %1, 8, !dbg !2517
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2518

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2519
  br label %return, !dbg !2519

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2520
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2522
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2523

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2524
  %cmp4 = icmp ule i64 %3, 96, !dbg !2525
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2526

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2527
  br label %return, !dbg !2527

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2528
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2530
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2531

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2532
  %cmp9 = icmp ule i64 %5, 192, !dbg !2533
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2534

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2535
  br label %return, !dbg !2535

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2536
  %cmp12 = icmp ule i64 %6, 8, !dbg !2538
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2539

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2540
  br label %return, !dbg !2540

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2541
  %cmp15 = icmp ule i64 %7, 16, !dbg !2543
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2544

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2545
  br label %return, !dbg !2545

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2546
  %cmp18 = icmp ule i64 %8, 32, !dbg !2548
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2549

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2550
  br label %return, !dbg !2550

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2551
  %cmp21 = icmp ule i64 %9, 64, !dbg !2553
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2554

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2555
  br label %return, !dbg !2555

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2556
  %cmp24 = icmp ule i64 %10, 128, !dbg !2558
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2559

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2560
  br label %return, !dbg !2560

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2561
  %cmp27 = icmp ule i64 %11, 256, !dbg !2563
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2564

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2565
  br label %return, !dbg !2565

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2566
  %cmp30 = icmp ule i64 %12, 512, !dbg !2568
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2569

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2570
  br label %return, !dbg !2570

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2571
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2573
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2574

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2575
  br label %return, !dbg !2575

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2576
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2578
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2579

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2580
  br label %return, !dbg !2580

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2581
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2583
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2584

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2585
  br label %return, !dbg !2585

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2586
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2588
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2589

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2590
  br label %return, !dbg !2590

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2591
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2593
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2594

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2595
  br label %return, !dbg !2595

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2596
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2598
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2599

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2600
  br label %return, !dbg !2600

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2601
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2603
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2604

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2605
  br label %return, !dbg !2605

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2606
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2608
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2609

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2610
  br label %return, !dbg !2610

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2611
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2613
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2614

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2615
  br label %return, !dbg !2615

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2616
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2618
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2619

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2620
  br label %return, !dbg !2620

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2621
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2623
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2624

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2625
  br label %return, !dbg !2625

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2626
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2628
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2629

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2630
  br label %return, !dbg !2630

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2631, !range !1975, !noundef !428
  %tobool69 = trunc i8 %25 to i1, !dbg !2631
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2633

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2634

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #18, !dbg !2635, !srcloc !2638
  unreachable, !dbg !2635

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2639

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2640

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2641

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2643

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2641

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !2645, !srcloc !2647
  br label %do.end75, !dbg !2645

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2641

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2648
  br label %return, !dbg !2648

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2649
  ret i32 %26, !dbg !2649
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2650 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !2656 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2660, metadata !DIExpression()), !dbg !2662
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2661, metadata !DIExpression()), !dbg !2663
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2664
  %and = and i32 %0, 17, !dbg !2664
  %cmp = icmp eq i32 %and, 0, !dbg !2664
  %lnot = xor i1 %cmp, true, !dbg !2664
  %lnot1 = xor i1 %lnot, true, !dbg !2664
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2664
  %conv = sext i32 %lnot.ext to i64, !dbg !2664
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2664
  %tobool = icmp ne i64 %expval, 0, !dbg !2664
  br i1 %tobool, label %if.then, label %if.end, !dbg !2666

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2667
  br label %return, !dbg !2667

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2668
  %and2 = and i32 %1, 1, !dbg !2670
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2670
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2671

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2672
  br label %return, !dbg !2672

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2673
  br label %return, !dbg !2673

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2675
  ret i32 %2, !dbg !2675
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2676 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2677 dso_local void @__compiletime_assert_204() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2678 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2681 dso_local ptr @dev_driver_string(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #7 align 16 !dbg !2684 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2686, metadata !DIExpression()), !dbg !2687
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2688
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !2690
  %1 = load ptr, ptr %init_name, align 8, !dbg !2690
  %tobool = icmp ne ptr %1, null, !dbg !2688
  br i1 %tobool, label %if.then, label %if.end, !dbg !2691

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2692
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !2693
  %3 = load ptr, ptr %init_name1, align 8, !dbg !2693
  store ptr %3, ptr %retval, align 8, !dbg !2694
  br label %return, !dbg !2694

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2695
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !2696
  %call = call ptr @kobject_name(ptr noundef %kobj) #16, !dbg !2697
  store ptr %call, ptr %retval, align 8, !dbg !2698
  br label %return, !dbg !2698

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !2699
  ret ptr %5, !dbg !2699
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2700 dso_local void @device_wakeup_attach_irq(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #7 align 16 !dbg !2703 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2705, metadata !DIExpression()), !dbg !2706
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2707
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !2708
  %1 = load ptr, ptr %name, align 8, !dbg !2708
  ret ptr %1, !dbg !2709
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2710 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2713 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_set_status_flags(i32 noundef %irq, i64 noundef %set) #7 align 16 !dbg !2717 {
entry:
  %irq.addr = alloca i32, align 4
  %set.addr = alloca i64, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2721, metadata !DIExpression()), !dbg !2723
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2722, metadata !DIExpression()), !dbg !2724
  %0 = load i32, ptr %irq.addr, align 4, !dbg !2725
  %1 = load i64, ptr %set.addr, align 8, !dbg !2726
  call void @irq_modify_status(i32 noundef %0, i64 noundef 0, i64 noundef %1) #16, !dbg !2727
  ret void, !dbg !2728
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2729 dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handle_threaded_wake_irq(i32 noundef %irq, ptr noundef %_wirq) #0 align 16 !dbg !2737 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %_wirq.addr = alloca ptr, align 8
  %wirq = alloca ptr, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2739, metadata !DIExpression()), !dbg !2743
  store ptr %_wirq, ptr %_wirq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_wirq.addr, metadata !2740, metadata !DIExpression()), !dbg !2744
  call void @llvm.lifetime.start.p0(i64 8, ptr %wirq) #14, !dbg !2745
  call void @llvm.dbg.declare(metadata ptr %wirq, metadata !2741, metadata !DIExpression()), !dbg !2746
  %0 = load ptr, ptr %_wirq.addr, align 8, !dbg !2747
  store ptr %0, ptr %wirq, align 8, !dbg !2746
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #14, !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2742, metadata !DIExpression()), !dbg !2749
  %1 = load i32, ptr %irq.addr, align 4, !dbg !2750
  %call = call ptr @irq_get_irq_data(i32 noundef %1) #16, !dbg !2752
  %call1 = call zeroext i1 @irqd_is_wakeup_set(ptr noundef %call) #16, !dbg !2753
  br i1 %call1, label %if.then, label %if.end, !dbg !2754

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %wirq, align 8, !dbg !2755
  %dev = getelementptr inbounds %struct.wake_irq, ptr %2, i32 0, i32 0, !dbg !2757
  %3 = load ptr, ptr %dev, align 8, !dbg !2757
  call void @pm_wakeup_event(ptr noundef %3, i32 noundef 0) #16, !dbg !2758
  store i32 1, ptr %retval, align 4, !dbg !2759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2759

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %wirq, align 8, !dbg !2760
  %dev2 = getelementptr inbounds %struct.wake_irq, ptr %4, i32 0, i32 0, !dbg !2761
  %5 = load ptr, ptr %dev2, align 8, !dbg !2761
  %call3 = call i32 @pm_runtime_resume(ptr noundef %5) #16, !dbg !2762
  store i32 %call3, ptr %res, align 4, !dbg !2763
  %6 = load i32, ptr %res, align 4, !dbg !2764
  %cmp = icmp slt i32 %6, 0, !dbg !2766
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !2767

if.then4:                                         ; preds = %if.end
  br label %do.body, !dbg !2768

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !2770

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2770

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %wirq, align 8, !dbg !2768
  %dev5 = getelementptr inbounds %struct.wake_irq, ptr %7, i32 0, i32 0, !dbg !2768
  %8 = load ptr, ptr %dev5, align 8, !dbg !2768
  %9 = load i32, ptr %res, align 4, !dbg !2768
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef @.str.4, i32 noundef %9) #19, !dbg !2768
  br label %if.end6, !dbg !2772

if.end6:                                          ; preds = %do.end, %if.end
  store i32 1, ptr %retval, align 4, !dbg !2773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2773

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #14, !dbg !2774
  call void @llvm.lifetime.end.p0(i64 8, ptr %wirq) #14, !dbg !2774
  %10 = load i32, ptr %retval, align 4, !dbg !2774
  ret i32 %10, !dbg !2774
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2775 dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_wakeup_set(ptr noundef %d) #7 align 16 !dbg !2778 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2890, metadata !DIExpression()), !dbg !2891
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2892
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2892
  %1 = load ptr, ptr %common, align 8, !dbg !2892
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2892
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2892
  %and = and i32 %2, 16384, !dbg !2893
  %tobool = icmp ne i32 %and, 0, !dbg !2892
  ret i1 %tobool, !dbg !2894
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2895 dso_local ptr @irq_get_irq_data(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pm_wakeup_event(ptr noundef %dev, i32 noundef %msec) #7 align 16 !dbg !2898 {
entry:
  %dev.addr = alloca ptr, align 8
  %msec.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2902, metadata !DIExpression()), !dbg !2904
  store i32 %msec, ptr %msec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msec.addr, metadata !2903, metadata !DIExpression()), !dbg !2905
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2906
  %1 = load i32, ptr %msec.addr, align 4, !dbg !2907
  call void @pm_wakeup_dev_event(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #16, !dbg !2908
  ret void, !dbg !2909
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pm_runtime_resume(ptr noundef %dev) #7 align 16 !dbg !2910 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2913, metadata !DIExpression()), !dbg !2914
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2915
  %call = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 0) #16, !dbg !2916
  ret i32 %call, !dbg !2917
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2918 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2922 dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2925 dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2926 dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }
attributes #19 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899}
!llvm.ident = !{!1900}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_set_wake_irq206", scope: !2, file: !3, line: 71, type: !179, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/power/.wakeirq.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/power/wakeirq\22 -D KBUILD_BASENAME=\22wakeirq\22 -D KBUILD_MODNAME=\22wakeirq\22 -D __KBUILD_MODNAME=kmod_wakeirq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/power/wakeirq.ll drivers/base/power/wakeirq.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !176, globals: !181, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/power/wakeirq.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51395737b71c443c13c07f6df662c0e4")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !66, !70, !79, !84, !89, !95, !100, !110, !137, !143, !150}
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
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!73 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!74 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!75 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!76 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!77 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!78 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!82 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!83 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!87 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!88 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!92 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!93 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!94 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 10, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!97 = !{!98, !99}
!98 = !DIEnumerator(name: "false", value: 0)
!99 = !DIEnumerator(name: "true", value: 1)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !101, line: 364, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!102 = !{!103, !104, !105, !106, !107, !108, !109}
!103 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!104 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!105 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!106 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!107 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!108 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!109 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 77, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!113 = !DIEnumerator(name: "IRQ_TYPE_NONE", value: 0)
!114 = !DIEnumerator(name: "IRQ_TYPE_EDGE_RISING", value: 1)
!115 = !DIEnumerator(name: "IRQ_TYPE_EDGE_FALLING", value: 2)
!116 = !DIEnumerator(name: "IRQ_TYPE_EDGE_BOTH", value: 3)
!117 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_HIGH", value: 4)
!118 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_LOW", value: 8)
!119 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_MASK", value: 12)
!120 = !DIEnumerator(name: "IRQ_TYPE_SENSE_MASK", value: 15)
!121 = !DIEnumerator(name: "IRQ_TYPE_DEFAULT", value: 15)
!122 = !DIEnumerator(name: "IRQ_TYPE_PROBE", value: 16)
!123 = !DIEnumerator(name: "IRQ_LEVEL", value: 256)
!124 = !DIEnumerator(name: "IRQ_PER_CPU", value: 512)
!125 = !DIEnumerator(name: "IRQ_NOPROBE", value: 1024)
!126 = !DIEnumerator(name: "IRQ_NOREQUEST", value: 2048)
!127 = !DIEnumerator(name: "IRQ_NOAUTOEN", value: 4096)
!128 = !DIEnumerator(name: "IRQ_NO_BALANCING", value: 8192)
!129 = !DIEnumerator(name: "IRQ_MOVE_PCNTXT", value: 16384)
!130 = !DIEnumerator(name: "IRQ_NESTED_THREAD", value: 32768)
!131 = !DIEnumerator(name: "IRQ_NOTHREAD", value: 65536)
!132 = !DIEnumerator(name: "IRQ_PER_CPU_DEVID", value: 131072)
!133 = !DIEnumerator(name: "IRQ_IS_POLLED", value: 262144)
!134 = !DIEnumerator(name: "IRQ_DISABLE_UNLAZY", value: 524288)
!135 = !DIEnumerator(name: "IRQ_HIDDEN", value: 1048576)
!136 = !DIEnumerator(name: "IRQ_NO_DEBUG", value: 2097152)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !138, line: 11, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!141 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!142 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !144, line: 497, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!145 = !{!146, !147, !148, !149}
!146 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!147 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!148 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!149 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 227, baseType: !7, size: 32, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!152 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15)
!153 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256)
!154 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512)
!155 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024)
!156 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048)
!157 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096)
!158 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192)
!159 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384)
!160 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768)
!161 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536)
!162 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072)
!163 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144)
!164 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288)
!165 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576)
!166 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152)
!167 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304)
!168 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608)
!169 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216)
!170 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432)
!171 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864)
!172 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 134217728)
!173 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 268435456)
!174 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 536870912)
!175 = !DIEnumerator(name: "IRQD_RESEND_WHEN_IN_PROGRESS", value: 1073741824)
!176 = !{!177, !179, !180}
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !178, line: 154, baseType: !7)
!178 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!180 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!181 = !{!0, !182, !184, !186, !188, !194, !1875, !1880, !1885, !1890}
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_clear_wake_irq207", scope: !2, file: !3, line: 104, type: !179, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_set_dedicated_wake_irq208", scope: !2, file: !3, line: 213, type: !179, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dev_pm_set_dedicated_wake_irq_reverse209", scope: !2, file: !3, line: 234, type: !179, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !101, line: 480, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 168, elements: !192)
!191 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!192 = !{!193}
!193 = !DISubrange(count: 21)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "__already_done", scope: !196, file: !3, line: 27, type: !649, isLocal: true, isDefinition: true)
!196 = distinct !DISubprogram(name: "dev_pm_attach_wake_irq", scope: !3, file: !3, line: 19, type: !197, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!197 = !DISubroutineType(types: !198)
!198 = !{!46, !199, !1416}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !201)
!201 = !{!202, !867, !868, !871, !872, !925, !1377, !1378, !1379, !1380, !1381, !1388, !1636, !1649, !1659, !1663, !1665, !1666, !1667, !1671, !1678, !1679, !1682, !1685, !1689, !1793, !1794, !1797, !1798, !1799, !1800, !1830, !1831, !1832, !1835, !1838, !1847, !1848, !1849, !1850, !1851, !1852}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !200, file: !26, line: 706, baseType: !203, size: 512)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !204, line: 64, size: 512, elements: !205)
!204 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!205 = !{!206, !209, !215, !217, !306, !738, !852, !862, !863, !864, !865, !866}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !204, line: 65, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !203, file: !204, line: 66, baseType: !210, size: 128, offset: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !178, line: 190, size: 128, elements: !211)
!211 = !{!212, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !178, line: 191, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !210, file: !178, line: 191, baseType: !213, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !204, line: 67, baseType: !216, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !203, file: !204, line: 68, baseType: !218, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !204, line: 168, size: 768, elements: !220)
!220 = !{!221, !222, !265, !266}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !219, file: !204, line: 169, baseType: !210, size: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !219, file: !204, line: 170, baseType: !223, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !224, line: 29, baseType: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !224, line: 17, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !224, line: 18, baseType: !228, size: 32)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !224, line: 18, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !228, file: !224, line: 19, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !232, line: 14, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !231, file: !232, line: 15, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !236, line: 44, baseType: !237)
!236 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !236, line: 14, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !236, line: 15, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !236, line: 15, size: 32, elements: !241)
!241 = !{!242, !247, !257}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !240, file: !236, line: 16, baseType: !243, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !178, line: 174, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 172, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !244, file: !178, line: 173, baseType: !46, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !236, line: 24, baseType: !248, size: 16)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !236, line: 24, size: 16, elements: !249)
!249 = !{!250, !256}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !248, file: !236, line: 25, baseType: !251, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !252, line: 17, baseType: !253)
!252 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !254, line: 21, baseType: !255)
!254 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!255 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !248, file: !236, line: 26, baseType: !251, size: 8, offset: 8)
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !236, line: 28, baseType: !258, size: 32)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !236, line: 28, size: 32, elements: !259)
!259 = !{!260, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !258, file: !236, line: 29, baseType: !261, size: 16)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !252, line: 19, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !254, line: 24, baseType: !263)
!263 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !258, file: !236, line: 30, baseType: !261, size: 16, offset: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !219, file: !204, line: 171, baseType: !203, size: 512, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !219, file: !204, line: 172, baseType: !267, size: 64, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !204, line: 133, size: 192, elements: !270)
!270 = !{!271, !278, !283}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !269, file: !204, line: 134, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!46, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !204, line: 135, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!207, !276}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !269, file: !204, line: 136, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!46, !276, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !204, line: 125, size: 20736, elements: !290)
!290 = !{!291, !296, !300, !301, !305}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !289, file: !204, line: 126, baseType: !292, size: 192)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 192, elements: !294)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!294 = !{!295}
!295 = !DISubrange(count: 3)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !289, file: !204, line: 127, baseType: !297, size: 4096, offset: 192)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 4096, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !289, file: !204, line: 128, baseType: !46, size: 32, offset: 4288)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !289, file: !204, line: 129, baseType: !302, size: 16384, offset: 4320)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 16384, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 2048)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !289, file: !204, line: 130, baseType: !46, size: 32, offset: 20704)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !203, file: !204, line: 69, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !204, line: 116, size: 384, elements: !310)
!310 = !{!311, !315, !343, !685, !716, !720}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !309, file: !204, line: 117, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !216}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !309, file: !204, line: 118, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !319, line: 254, size: 128, elements: !320)
!319 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!320 = !{!321, !336}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !318, file: !319, line: 255, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !216, !330, !293}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !178, line: 66, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !327, line: 73, baseType: !328)
!327 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !327, line: 15, baseType: !329)
!329 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !319, line: 30, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !319, line: 31, baseType: !207, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !331, file: !319, line: 32, baseType: !335, size: 16, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !178, line: 24, baseType: !263)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !318, file: !319, line: 256, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!325, !216, !330, !207, !340}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !178, line: 61, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !327, line: 72, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !327, line: 16, baseType: !180)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !309, file: !204, line: 119, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !319, line: 84, size: 320, elements: !348)
!348 = !{!349, !350, !354, !681, !683}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !319, line: 85, baseType: !207, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !347, file: !319, line: 86, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!335, !216, !330, !46}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !347, file: !319, line: 88, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!335, !216, !358, !46}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !319, line: 175, size: 512, elements: !360)
!360 = !{!361, !362, !363, !364, !371, !381, !382}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !359, file: !319, line: 176, baseType: !331, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !359, file: !319, line: 177, baseType: !340, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !359, file: !319, line: 178, baseType: !179, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !359, file: !319, line: 179, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !370, line: 32, flags: DIFlagFwdDecl)
!370 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !359, file: !319, line: 180, baseType: !372, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!325, !375, !216, !358, !293, !378, !340}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !377, line: 537, flags: DIFlagFwdDecl)
!377 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !178, line: 52, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !327, line: 88, baseType: !380)
!380 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !359, file: !319, line: 182, baseType: !372, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !359, file: !319, line: 184, baseType: !383, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!46, !375, !216, !358, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !370, line: 625, size: 1344, elements: !388)
!388 = !{!389, !406, !629, !635, !642, !643, !648, !651, !663, !664, !667, !671, !672, !673, !674, !675, !679}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !370, line: 628, baseType: !390, size: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !370, line: 628, size: 128, elements: !391)
!391 = !{!392, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !370, line: 629, baseType: !393, size: 128)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !370, line: 629, size: 128, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !393, file: !370, line: 631, baseType: !180, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !393, file: !370, line: 632, baseType: !180, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !390, file: !370, line: 635, baseType: !398, size: 128, align: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !178, line: 232, size: 128, align: 64, elements: !399)
!399 = !{!400, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !178, line: 233, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !398, file: !178, line: 234, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !401}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !387, file: !370, line: 639, baseType: !407, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !370, line: 733, size: 10240, elements: !409)
!409 = !{!410, !625}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !370, line: 734, baseType: !411, size: 10240)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !370, line: 734, size: 10240, elements: !412)
!412 = !{!413, !417, !431, !435, !436, !437, !438, !439, !440, !448, !449, !450, !459, !460, !469, !470, !471, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !518, !532, !535, !590, !591, !592, !595, !599, !600, !603, !604, !605, !612, !613}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !370, line: 739, baseType: !414, size: 512, align: 512)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !370, line: 739, size: 512, align: 512, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !414, file: !370, line: 747, baseType: !243, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !411, file: !370, line: 750, baseType: !418, size: 128, offset: 512)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !419, line: 218, size: 128, elements: !420)
!419 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!420 = !{!421, !429, !430}
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !419, line: 219, baseType: !422, size: 32)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !419, line: 219, size: 32, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !422, file: !419, line: 220, baseType: !223, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !422, file: !419, line: 221, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !419, line: 197, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 197, elements: !428)
!428 = !{}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !418, file: !419, line: 223, baseType: !7, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !418, file: !419, line: 224, baseType: !179, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !411, file: !370, line: 752, baseType: !432, size: 64, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!180, !375, !180, !180, !180, !180}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !411, file: !370, line: 756, baseType: !180, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !411, file: !370, line: 757, baseType: !180, size: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !411, file: !370, line: 760, baseType: !180, size: 64, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !411, file: !370, line: 761, baseType: !180, size: 64, offset: 896)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !411, file: !370, line: 763, baseType: !180, size: 64, offset: 960)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !411, file: !370, line: 764, baseType: !441, size: 64, offset: 1024)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !377, line: 299, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 299, size: 64, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !443, file: !377, line: 299, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !447, line: 18, baseType: !180)
!447 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!448 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !411, file: !370, line: 773, baseType: !243, size: 32, offset: 1088)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !411, file: !370, line: 785, baseType: !243, size: 32, offset: 1120)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !411, file: !370, line: 795, baseType: !451, size: 64, offset: 1152)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !370, line: 726, size: 128, elements: !453)
!453 = !{!454, !458}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !452, file: !370, line: 727, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !252, line: 23, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !254, line: 31, baseType: !457)
!457 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !452, file: !370, line: 728, baseType: !46, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !411, file: !370, line: 801, baseType: !180, size: 64, offset: 1216)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !411, file: !370, line: 804, baseType: !461, size: 64, offset: 1280)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !462, line: 13, baseType: !463)
!462 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !178, line: 181, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 179, size: 64, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !464, file: !178, line: 180, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !252, line: 22, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !254, line: 30, baseType: !380)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !411, file: !370, line: 806, baseType: !46, size: 32, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !411, file: !370, line: 808, baseType: !223, size: 32, offset: 1376)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !411, file: !370, line: 823, baseType: !472, size: 320, offset: 1408)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !473, line: 48, size: 320, elements: !474)
!473 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!474 = !{!475, !476, !477, !482, !484}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !472, file: !473, line: 49, baseType: !461, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !472, file: !473, line: 55, baseType: !461, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !472, file: !473, line: 57, baseType: !478, size: 32, offset: 128)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !479, line: 15, size: 32, elements: !480)
!479 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !478, file: !479, line: 20, baseType: !243, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !472, file: !473, line: 59, baseType: !483, size: 32, offset: 160)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !232, line: 23, baseType: !231)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !472, file: !473, line: 60, baseType: !210, size: 128, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !411, file: !370, line: 825, baseType: !210, size: 128, offset: 1728)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !411, file: !370, line: 845, baseType: !46, size: 32, offset: 1856)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !411, file: !370, line: 849, baseType: !180, size: 64, offset: 1920)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !411, file: !370, line: 850, baseType: !180, size: 64, offset: 1984)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !411, file: !370, line: 852, baseType: !180, size: 64, offset: 2048)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !411, file: !370, line: 853, baseType: !180, size: 64, offset: 2112)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !411, file: !370, line: 854, baseType: !463, size: 64, offset: 2176)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !411, file: !370, line: 855, baseType: !180, size: 64, offset: 2240)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !411, file: !370, line: 856, baseType: !180, size: 64, offset: 2304)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !411, file: !370, line: 857, baseType: !180, size: 64, offset: 2368)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !411, file: !370, line: 858, baseType: !180, size: 64, offset: 2432)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !411, file: !370, line: 865, baseType: !497, size: 32, offset: 2496)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !498, line: 69, baseType: !499)
!498 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !498, line: 64, size: 32, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !499, file: !498, line: 65, baseType: !7, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !411, file: !370, line: 867, baseType: !223, size: 32, offset: 2528)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !411, file: !370, line: 869, baseType: !180, size: 64, offset: 2560)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !411, file: !370, line: 869, baseType: !180, size: 64, offset: 2624)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !411, file: !370, line: 869, baseType: !180, size: 64, offset: 2688)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !411, file: !370, line: 869, baseType: !180, size: 64, offset: 2752)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !411, file: !370, line: 870, baseType: !180, size: 64, offset: 2816)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !411, file: !370, line: 870, baseType: !180, size: 64, offset: 2880)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !411, file: !370, line: 870, baseType: !180, size: 64, offset: 2944)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !411, file: !370, line: 871, baseType: !180, size: 64, offset: 3008)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !411, file: !370, line: 871, baseType: !180, size: 64, offset: 3072)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !411, file: !370, line: 871, baseType: !180, size: 64, offset: 3136)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !411, file: !370, line: 871, baseType: !180, size: 64, offset: 3200)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !411, file: !370, line: 873, baseType: !515, size: 3328, offset: 3264)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 3328, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 52)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !411, file: !370, line: 875, baseType: !519, size: 1280, offset: 6592)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 1280, elements: !530)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !521, line: 22, size: 320, elements: !522)
!521 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!522 = !{!523, !524, !525, !526}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !520, file: !521, line: 23, baseType: !483, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !520, file: !521, line: 24, baseType: !467, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !520, file: !521, line: 26, baseType: !210, size: 128, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !520, file: !521, line: 28, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !252, line: 20, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !254, line: 26, baseType: !46)
!530 = !{!531}
!531 = !DISubrange(count: 4)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !411, file: !370, line: 877, baseType: !533, size: 64, offset: 7872)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !370, line: 877, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !411, file: !370, line: 880, baseType: !536, size: 1088, offset: 7936)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !537, line: 72, baseType: !538)
!537 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 23, size: 1088, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !547, !548, !556, !557, !584, !585, !586}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !538, file: !537, line: 28, baseType: !455, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !538, file: !537, line: 38, baseType: !463, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !538, file: !537, line: 40, baseType: !180, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !538, file: !537, line: 43, baseType: !472, size: 320, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !538, file: !537, line: 44, baseType: !545, size: 64, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !537, line: 44, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !537, line: 48, baseType: !180, size: 64, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !538, file: !537, line: 59, baseType: !549, size: 256, offset: 640)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !550, line: 66, size: 256, elements: !551)
!550 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!551 = !{!552, !553, !554, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !549, file: !550, line: 67, baseType: !461, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !549, file: !550, line: 68, baseType: !483, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !549, file: !550, line: 70, baseType: !478, size: 32, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !549, file: !550, line: 72, baseType: !210, size: 128, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !538, file: !537, line: 60, baseType: !179, size: 64, offset: 896)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !538, file: !537, line: 61, baseType: !558, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !561, line: 13, size: 1216, elements: !562)
!561 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!562 = !{!563, !564, !565, !566, !567, !568, !569, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !560, file: !561, line: 14, baseType: !179, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !560, file: !561, line: 15, baseType: !180, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !560, file: !561, line: 17, baseType: !180, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !560, file: !561, line: 17, baseType: !180, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !560, file: !561, line: 18, baseType: !180, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !560, file: !561, line: 18, baseType: !180, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !560, file: !561, line: 19, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !560, file: !561, line: 21, baseType: !329, size: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !560, file: !561, line: 23, baseType: !329, size: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !560, file: !561, line: 24, baseType: !329, size: 64, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !560, file: !561, line: 25, baseType: !329, size: 64, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !560, file: !561, line: 26, baseType: !329, size: 64, offset: 704)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !560, file: !561, line: 27, baseType: !329, size: 64, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !560, file: !561, line: 28, baseType: !329, size: 64, offset: 832)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !560, file: !561, line: 29, baseType: !329, size: 64, offset: 896)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !560, file: !561, line: 30, baseType: !329, size: 64, offset: 960)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !560, file: !561, line: 31, baseType: !329, size: 64, offset: 1024)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !560, file: !561, line: 32, baseType: !329, size: 64, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !560, file: !561, line: 33, baseType: !329, size: 64, offset: 1152)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !538, file: !537, line: 63, baseType: !243, size: 32, offset: 1024)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !538, file: !537, line: 69, baseType: !261, size: 16, offset: 1056)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !538, file: !537, line: 70, baseType: !587, size: 16, offset: 1072)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !252, line: 18, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !254, line: 23, baseType: !589)
!589 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !370, line: 882, baseType: !180, size: 64, offset: 9024)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !411, file: !370, line: 885, baseType: !223, size: 32, offset: 9088)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !411, file: !370, line: 886, baseType: !593, size: 64, offset: 9152)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !370, line: 732, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !411, file: !370, line: 901, baseType: !596, size: 64, offset: 9216)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !598, line: 18, flags: DIFlagFwdDecl)
!598 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !411, file: !370, line: 904, baseType: !375, size: 64, offset: 9280)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !411, file: !370, line: 906, baseType: !601, size: 64, offset: 9344)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !370, line: 906, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !411, file: !370, line: 930, baseType: !243, size: 32, offset: 9408)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !411, file: !370, line: 933, baseType: !243, size: 32, offset: 9440)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !411, file: !370, line: 935, baseType: !606, size: 64, offset: 9472)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !607, line: 103, size: 64, elements: !608)
!607 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !606, file: !607, line: 104, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !607, line: 101, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !411, file: !370, line: 940, baseType: !461, size: 64, offset: 9536)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !411, file: !370, line: 942, baseType: !614, size: 256, offset: 9600)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !615, line: 98, size: 256, elements: !616)
!615 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!616 = !{!617, !618, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !614, file: !615, line: 99, baseType: !461, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !614, file: !615, line: 100, baseType: !210, size: 128, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !614, file: !615, line: 101, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !615, line: 21, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !408, file: !370, line: 986, baseType: !626, offset: 10240)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: -1)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !387, file: !370, line: 640, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !377, line: 297, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !377, line: 297, size: 64, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !631, file: !377, line: 297, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !447, line: 19, baseType: !180)
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !370, line: 646, baseType: !636, size: 64, offset: 256)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !370, line: 646, size: 64, elements: !637)
!637 = !{!638, !641}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !636, file: !370, line: 647, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !370, line: 542, baseType: !180)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !636, file: !370, line: 648, baseType: !640, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !387, file: !370, line: 666, baseType: !46, size: 32, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !387, file: !370, line: 667, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !370, line: 579, size: 320, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !645, file: !370, line: 580, baseType: !472, size: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !387, file: !370, line: 670, baseType: !649, size: 8, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !178, line: 35, baseType: !650)
!650 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !387, file: !370, line: 681, baseType: !652, size: 256, offset: 512)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !370, line: 678, size: 256, elements: !653)
!653 = !{!654, !662}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !652, file: !370, line: 679, baseType: !655, size: 192, align: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !656, line: 5, size: 192, align: 64, elements: !657)
!656 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!657 = !{!658, !659, !661}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !655, file: !656, line: 6, baseType: !180, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !655, file: !656, line: 7, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !655, file: !656, line: 8, baseType: !660, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !652, file: !370, line: 680, baseType: !180, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !387, file: !370, line: 689, baseType: !210, size: 128, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !387, file: !370, line: 691, baseType: !665, size: 64, offset: 896)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !370, line: 691, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !387, file: !370, line: 694, baseType: !668, size: 64, offset: 960)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !370, line: 694, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !387, file: !370, line: 697, baseType: !180, size: 64, offset: 1024)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !387, file: !370, line: 699, baseType: !375, size: 64, offset: 1088)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !387, file: !370, line: 700, baseType: !179, size: 64, offset: 1152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !387, file: !370, line: 711, baseType: !461, size: 64, offset: 1216)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !387, file: !370, line: 717, baseType: !676, size: 64, offset: 1280)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !678, line: 54, flags: DIFlagFwdDecl)
!678 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !387, file: !370, line: 722, baseType: !680, offset: 1344)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !370, line: 570, elements: !428)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !347, file: !319, line: 90, baseType: !682, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !347, file: !319, line: 91, baseType: !684, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !309, file: !204, line: 120, baseType: !686, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!689, !276}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !692)
!692 = !{!693, !694, !698, !702, !708, !712}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !6, line: 40, baseType: !5, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !691, file: !6, line: 41, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!649}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !691, file: !6, line: 42, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!179}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !691, file: !6, line: 43, baseType: !703, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!570, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !691, file: !6, line: 44, baseType: !709, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!570}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !691, file: !6, line: 45, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !179}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !309, file: !204, line: 121, baseType: !717, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!570, !276}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !309, file: !204, line: 122, baseType: !721, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !276, !724, !731}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !598, line: 23, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !598, line: 21, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !726, file: !598, line: 22, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !178, line: 37, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !327, line: 49, baseType: !7)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !598, line: 28, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !598, line: 26, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !733, file: !598, line: 27, baseType: !736, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !178, line: 38, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !327, line: 50, baseType: !7)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !203, file: !204, line: 70, baseType: !739, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !741, line: 190, size: 1152, elements: !742)
!741 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !844, !845, !846, !847, !848, !851}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !740, file: !741, line: 191, baseType: !243, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !740, file: !741, line: 192, baseType: !243, size: 32, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !740, file: !741, line: 202, baseType: !739, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !740, file: !741, line: 203, baseType: !207, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !740, file: !741, line: 205, baseType: !655, size: 192, align: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !740, file: !741, line: 207, baseType: !570, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !740, file: !741, line: 208, baseType: !7, size: 32, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !741, line: 209, baseType: !751, size: 256, offset: 512)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !741, line: 209, size: 256, elements: !752)
!752 = !{!753, !765, !769}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !751, file: !741, line: 210, baseType: !754, size: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !741, line: 153, size: 256, elements: !755)
!755 = !{!756, !757, !761, !764}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !754, file: !741, line: 154, baseType: !180, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !754, file: !741, line: 156, baseType: !758, size: 64, offset: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !656, line: 12, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !758, file: !656, line: 13, baseType: !660, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !754, file: !741, line: 162, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !741, line: 162, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !754, file: !741, line: 167, baseType: !180, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !751, file: !741, line: 211, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !741, line: 170, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !766, file: !741, line: 171, baseType: !739, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !751, file: !741, line: 212, baseType: !770, size: 256)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !741, line: 174, size: 256, elements: !771)
!771 = !{!772, !839, !842, !843}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !770, file: !741, line: 175, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !741, line: 271, size: 768, elements: !776)
!776 = !{!777, !799, !803, !807, !812, !816, !820, !824, !825, !826, !827, !835}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !775, file: !741, line: 276, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!46, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !741, line: 251, size: 1216, elements: !783)
!783 = !{!784, !785, !786, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !782, file: !741, line: 253, baseType: !739, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !782, file: !741, line: 254, baseType: !375, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !782, file: !741, line: 255, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !678, line: 66, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !782, file: !741, line: 256, baseType: !179, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !782, file: !741, line: 259, baseType: !549, size: 256, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !782, file: !741, line: 260, baseType: !549, size: 256, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !782, file: !741, line: 261, baseType: !46, size: 32, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !782, file: !741, line: 262, baseType: !210, size: 128, offset: 832)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !782, file: !741, line: 263, baseType: !293, size: 64, offset: 960)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !782, file: !741, line: 265, baseType: !340, size: 64, offset: 1024)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !782, file: !741, line: 266, baseType: !649, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !782, file: !741, line: 267, baseType: !649, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !782, file: !741, line: 268, baseType: !668, size: 64, offset: 1152)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !775, file: !741, line: 277, baseType: !800, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !781}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !775, file: !741, line: 290, baseType: !804, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!46, !787, !179}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !775, file: !741, line: 292, baseType: !808, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!179, !787, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !775, file: !741, line: 293, baseType: !813, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!179, !787, !179, !811}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !775, file: !741, line: 294, baseType: !817, size: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !787, !179}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !775, file: !741, line: 296, baseType: !821, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!325, !781, !293, !340, !378}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !775, file: !741, line: 306, baseType: !340, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !775, file: !741, line: 313, baseType: !649, size: 8, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !775, file: !741, line: 314, baseType: !821, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !775, file: !741, line: 317, baseType: !828, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!831, !781, !833}
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !832, line: 59, baseType: !7)
!832 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !741, line: 31, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !775, file: !741, line: 320, baseType: !836, size: 64, offset: 704)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!46, !781, !386}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !770, file: !741, line: 176, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !741, line: 35, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !770, file: !741, line: 177, baseType: !378, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !770, file: !741, line: 178, baseType: !739, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !740, file: !741, line: 215, baseType: !179, size: 64, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !740, file: !741, line: 221, baseType: !455, size: 64, offset: 832)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !741, line: 223, baseType: !263, size: 16, offset: 896)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !740, file: !741, line: 224, baseType: !335, size: 16, offset: 912)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !740, file: !741, line: 225, baseType: !849, size: 64, offset: 960)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !741, line: 36, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !740, file: !741, line: 227, baseType: !398, size: 128, align: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !203, file: !204, line: 71, baseType: !853, size: 32, offset: 448)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !854, line: 19, size: 32, elements: !855)
!854 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !853, file: !854, line: 20, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !858, line: 113, baseType: !859)
!858 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !858, line: 111, size: 32, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !859, file: !858, line: 112, baseType: !243, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !203, file: !204, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !203, file: !204, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !203, file: !204, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !203, file: !204, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !203, file: !204, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !26, line: 707, baseType: !199, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !200, file: !26, line: 709, baseType: !869, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !200, file: !26, line: 711, baseType: !207, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !26, line: 712, baseType: !873, size: 64, offset: 704)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !876)
!876 = !{!877, !878, !879, !885, !890, !894}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !875, file: !26, line: 90, baseType: !207, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !875, file: !26, line: 91, baseType: !344, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !875, file: !26, line: 92, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!46, !883, !288}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !875, file: !26, line: 93, baseType: !886, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!293, !883, !889, !724, !731}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !875, file: !26, line: 95, baseType: !891, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !199}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !875, file: !26, line: 97, baseType: !895, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !898)
!898 = !{!899, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !897, file: !38, line: 287, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!46, !199}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !897, file: !38, line: 288, baseType: !891, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !897, file: !38, line: 289, baseType: !900, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !897, file: !38, line: 290, baseType: !900, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !897, file: !38, line: 291, baseType: !900, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !897, file: !38, line: 292, baseType: !900, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !897, file: !38, line: 293, baseType: !900, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !897, file: !38, line: 294, baseType: !900, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !897, file: !38, line: 295, baseType: !900, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !897, file: !38, line: 296, baseType: !900, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !897, file: !38, line: 297, baseType: !900, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !897, file: !38, line: 298, baseType: !900, size: 64, offset: 704)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !897, file: !38, line: 299, baseType: !900, size: 64, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !897, file: !38, line: 300, baseType: !900, size: 64, offset: 832)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !897, file: !38, line: 301, baseType: !900, size: 64, offset: 896)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !897, file: !38, line: 302, baseType: !900, size: 64, offset: 960)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !897, file: !38, line: 303, baseType: !900, size: 64, offset: 1024)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !897, file: !38, line: 304, baseType: !900, size: 64, offset: 1088)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !897, file: !38, line: 305, baseType: !900, size: 64, offset: 1152)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !897, file: !38, line: 306, baseType: !900, size: 64, offset: 1216)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !897, file: !38, line: 307, baseType: !900, size: 64, offset: 1280)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !897, file: !38, line: 308, baseType: !900, size: 64, offset: 1344)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !897, file: !38, line: 309, baseType: !900, size: 64, offset: 1408)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !200, file: !26, line: 714, baseType: !926, size: 64, offset: 768)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !929, line: 80, size: 1344, elements: !930)
!929 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!930 = !{!931, !932, !933, !934, !935, !936, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1376}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !928, file: !929, line: 81, baseType: !207, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !928, file: !929, line: 82, baseType: !207, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !928, file: !929, line: 83, baseType: !344, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !928, file: !929, line: 84, baseType: !344, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !928, file: !929, line: 85, baseType: !344, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !928, file: !929, line: 87, baseType: !937, size: 64, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!46, !199, !940}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !942)
!942 = !{!943, !944, !945, !1328, !1329, !1330, !1331, !1335, !1339, !1340, !1341, !1342, !1343, !1351, !1352, !1353, !1354, !1355, !1356}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !941, file: !20, line: 97, baseType: !207, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !941, file: !20, line: 98, baseType: !926, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !941, file: !20, line: 100, baseType: !946, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !948)
!948 = !{!949, !950, !951, !955, !976, !1002, !1003, !1004, !1005, !1009, !1012, !1013, !1014, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1082, !1086, !1106, !1124, !1125, !1126, !1127, !1136, !1160, !1161, !1164, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1178, !1179, !1286, !1294, !1295, !1296, !1298, !1302, !1303, !1307, !1308, !1309, !1310, !1312, !1313, !1314, !1321, !1322, !1323, !1327}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !947, file: !13, line: 403, baseType: !12, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !947, file: !13, line: 406, baseType: !210, size: 128, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !947, file: !13, line: 409, baseType: !952, size: 448, offset: 192)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 448, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 56)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !947, file: !13, line: 417, baseType: !956, size: 768, offset: 640)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !957)
!957 = !{!958, !959, !960, !961, !964}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !956, file: !13, line: 46, baseType: !203, size: 512)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !956, file: !13, line: 47, baseType: !946, size: 64, offset: 512)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !956, file: !13, line: 48, baseType: !216, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !956, file: !13, line: 49, baseType: !962, size: 64, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !956, file: !13, line: 50, baseType: !965, size: 64, offset: 704)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !967, line: 26, size: 256, elements: !968)
!967 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !966, file: !967, line: 27, baseType: !7, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !966, file: !967, line: 28, baseType: !971, size: 192, offset: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !972, line: 43, size: 192, elements: !973)
!972 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !971, file: !972, line: 44, baseType: !483, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !971, file: !972, line: 45, baseType: !210, size: 128, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !947, file: !13, line: 418, baseType: !977, size: 64, offset: 1408)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !979)
!979 = !{!980, !981, !986, !990, !994, !998}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !978, file: !13, line: 54, baseType: !331, size: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !978, file: !13, line: 55, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!325, !977, !985, !293}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !978, file: !13, line: 57, baseType: !987, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!325, !977, !985, !207, !340}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !978, file: !13, line: 59, baseType: !991, size: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !946, !207}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !978, file: !13, line: 60, baseType: !995, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!46, !946}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !978, file: !13, line: 61, baseType: !999, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !946}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !947, file: !13, line: 419, baseType: !207, size: 64, offset: 1472)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !947, file: !13, line: 420, baseType: !207, size: 64, offset: 1536)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !947, file: !13, line: 421, baseType: !216, size: 64, offset: 1600)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !947, file: !13, line: 424, baseType: !1006, size: 64, offset: 1664)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !947, file: !13, line: 425, baseType: !1010, size: 64, offset: 1728)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !947, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !947, file: !13, line: 435, baseType: !549, size: 256, offset: 1856)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !947, file: !13, line: 437, baseType: !1015, size: 64, offset: 2112)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1017, line: 69, size: 320, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1018 = !{!1019, !1020, !1021, !1038, !1040, !1044, !1045}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1016, file: !1017, line: 70, baseType: !207, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1016, file: !1017, line: 71, baseType: !946, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1016, file: !1017, line: 72, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1017, line: 47, size: 256, elements: !1025)
!1025 = !{!1026, !1027, !1033, !1037}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1024, file: !1017, line: 49, baseType: !7, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1024, file: !1017, line: 51, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!46, !207, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1024, file: !1017, line: 53, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!46, !293, !1031}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1024, file: !1017, line: 55, baseType: !713, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1016, file: !1017, line: 73, baseType: !1039, size: 16, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1016, file: !1017, line: 74, baseType: !1041, size: 8, offset: 208)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !252, line: 16, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !254, line: 20, baseType: !1043)
!1043 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !1017, line: 75, baseType: !251, size: 8, offset: 216)
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !1017, line: 76, baseType: !1046, size: 64, offset: 256)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !1017, line: 76, size: 64, elements: !1047)
!1047 = !{!1048, !1049, !1056}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1046, file: !1017, line: 77, baseType: !179, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1046, file: !1017, line: 78, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1017, line: 86, size: 128, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1052, file: !1017, line: 87, baseType: !7, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1052, file: !1017, line: 88, baseType: !293, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1046, file: !1017, line: 79, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1017, line: 92, size: 256, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1065, !1066}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1059, file: !1017, line: 94, baseType: !7, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1059, file: !1017, line: 95, baseType: !7, size: 32, offset: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1059, file: !1017, line: 96, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1059, file: !1017, line: 97, baseType: !1022, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1059, file: !1017, line: 98, baseType: !179, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !947, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !947, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !947, file: !13, line: 442, baseType: !1006, size: 64, offset: 2240)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !947, file: !13, line: 443, baseType: !1010, size: 64, offset: 2304)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !947, file: !13, line: 444, baseType: !649, size: 8, offset: 2368)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !947, file: !13, line: 451, baseType: !649, size: 8, offset: 2376)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !947, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !947, file: !13, line: 455, baseType: !1075, size: 64, offset: 2432)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1077, line: 23, size: 96, elements: !1078)
!1077 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1076, file: !1077, line: 24, baseType: !46, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1076, file: !1077, line: 24, baseType: !46, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1076, file: !1077, line: 24, baseType: !46, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !947, file: !13, line: 458, baseType: !1083, size: 64, offset: 2496)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!46}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !947, file: !13, line: 460, baseType: !1087, size: 4032, align: 512, offset: 2560)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1088, size: 4032, elements: !1104)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1088, file: !13, line: 363, baseType: !179, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1088, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1088, file: !13, line: 367, baseType: !1093, size: 448, offset: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1093, file: !13, line: 320, baseType: !946, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1093, file: !13, line: 321, baseType: !1097, size: 384, offset: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1098, line: 40, size: 384, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1097, file: !1098, line: 41, baseType: !1101, size: 384, align: 64)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 384, align: 64, elements: !1102)
!1102 = !{!1103}
!1103 = !DISubrange(count: 2)
!1104 = !{!1105}
!1105 = !DISubrange(count: 7)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !947, file: !13, line: 463, baseType: !1107, size: 192, offset: 6592)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1108, line: 8, size: 192, elements: !1109)
!1108 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1109 = !{!1110, !1111, !1113}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1107, file: !1108, line: 10, baseType: !7, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1107, file: !1108, line: 11, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1107, file: !1108, line: 12, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1116, line: 59, size: 48, elements: !1117)
!1116 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1115, file: !1116, line: 60, baseType: !587, size: 16)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1115, file: !1116, line: 61, baseType: !587, size: 16, offset: 16)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1115, file: !1116, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1115, file: !1116, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1115, file: !1116, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1115, file: !1116, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !947, file: !13, line: 465, baseType: !180, size: 64, offset: 6784)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !947, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !947, file: !13, line: 470, baseType: !210, size: 128, offset: 6912)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !947, file: !13, line: 471, baseType: !1128, size: 64, offset: 7040)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1130, line: 33, size: 96, elements: !1131)
!1130 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1131 = !{!1132, !1133, !1134, !1135}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1129, file: !1130, line: 37, baseType: !46, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1129, file: !1130, line: 43, baseType: !46, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1129, file: !1130, line: 45, baseType: !263, size: 16, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1130, line: 47, baseType: !263, size: 16, offset: 80)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !947, file: !13, line: 476, baseType: !1137, size: 64, offset: 7104)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1139)
!1139 = !{!1140, !1157, !1158, !1159}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1138, file: !13, line: 379, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1143, line: 204, baseType: !1144)
!1143 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1143, line: 197, size: 192, elements: !1145)
!1145 = !{!1146, !1149, !1150, !1151, !1153, !1155}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1144, file: !1143, line: 198, baseType: !1147, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1143, line: 21, baseType: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !254, line: 27, baseType: !7)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1144, file: !1143, line: 199, baseType: !255, size: 8, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1144, file: !1143, line: 200, baseType: !255, size: 8, offset: 40)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1144, file: !1143, line: 201, baseType: !1152, size: 16, offset: 48)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1143, line: 17, baseType: !262)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1144, file: !1143, line: 202, baseType: !1154, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1143, line: 16, baseType: !456)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1144, file: !1143, line: 203, baseType: !1156, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1143, line: 22, baseType: !456)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1138, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1138, file: !13, line: 381, baseType: !293, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1138, file: !13, line: 382, baseType: !293, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !947, file: !13, line: 477, baseType: !1138, size: 256, offset: 7168)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !947, file: !13, line: 480, baseType: !1162, size: 64, offset: 7424)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !947, file: !13, line: 483, baseType: !1165, size: 64, offset: 7488)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !947, file: !13, line: 488, baseType: !293, size: 64, offset: 7552)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !947, file: !13, line: 492, baseType: !179, size: 64, offset: 7616)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !947, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !947, file: !13, line: 495, baseType: !179, size: 64, offset: 7744)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !947, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !947, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !947, file: !13, line: 500, baseType: !1174, size: 64, offset: 7872)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1176, line: 45, baseType: !1177)
!1176 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !947, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !947, file: !13, line: 504, baseType: !1180, size: 64, offset: 8000)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1183, line: 96, size: 192, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1184 = !{!1185, !1186, !1247, !1250}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1182, file: !1183, line: 97, baseType: !7, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1182, file: !1183, line: 98, baseType: !1187, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1183, line: 24, size: 3072, elements: !1189)
!1189 = !{!1190, !1192, !1193, !1194, !1195, !1209, !1210, !1211, !1212, !1231, !1232, !1233, !1244, !1245, !1246}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1188, file: !1183, line: 26, baseType: !1191, size: 128)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 128, elements: !1102)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1188, file: !1183, line: 27, baseType: !1191, size: 128, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1188, file: !1183, line: 28, baseType: !46, size: 32, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1188, file: !1183, line: 31, baseType: !223, size: 32, align: 512, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1188, file: !1183, line: 32, baseType: !1196, size: 960, offset: 576)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1197, line: 206, size: 960, elements: !1198)
!1197 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1198 = !{!1199, !1200, !1203, !1205, !1206, !1208}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1196, file: !1197, line: 207, baseType: !401, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1196, file: !1197, line: 208, baseType: !1201, size: 256, offset: 64)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1202, size: 256, elements: !530)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1196, file: !1197, line: 209, baseType: !1204, size: 256, offset: 320)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !530)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1196, file: !1197, line: 213, baseType: !329, size: 64, offset: 576)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1196, file: !1197, line: 215, baseType: !1207, size: 256, offset: 640)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 256, elements: !530)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1196, file: !1197, line: 216, baseType: !251, size: 8, offset: 896)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1188, file: !1183, line: 33, baseType: !180, size: 64, offset: 1536)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1188, file: !1183, line: 34, baseType: !180, size: 64, offset: 1600)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1188, file: !1183, line: 35, baseType: !649, size: 8, offset: 1664)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1188, file: !1183, line: 36, baseType: !1213, size: 320, offset: 1728)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1214, line: 11, size: 320, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1215 = !{!1216, !1223, !1224, !1229}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1213, file: !1214, line: 16, baseType: !1217, size: 128)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !178, line: 198, size: 128, elements: !1218)
!1218 = !{!1219, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1217, file: !178, line: 199, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1217, file: !178, line: 199, baseType: !1222, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1213, file: !1214, line: 17, baseType: !180, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1213, file: !1214, line: 18, baseType: !1225, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1228}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1213, file: !1214, line: 19, baseType: !1230, size: 32, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !252, line: 21, baseType: !1148)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1188, file: !1183, line: 37, baseType: !614, size: 256, offset: 2048)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1188, file: !1183, line: 38, baseType: !398, size: 128, align: 64, offset: 2304)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1188, file: !1183, line: 39, baseType: !1234, size: 64, offset: 2432)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1183, line: 49, size: 768, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1235, file: !1183, line: 50, baseType: !223, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1235, file: !1183, line: 51, baseType: !1204, size: 256, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1235, file: !1183, line: 53, baseType: !1204, size: 256, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1235, file: !1183, line: 54, baseType: !180, size: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1235, file: !1183, line: 55, baseType: !1234, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1235, file: !1183, line: 56, baseType: !46, size: 32, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1235, file: !1183, line: 57, baseType: !46, size: 32, offset: 736)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1188, file: !1183, line: 40, baseType: !180, size: 64, offset: 2496)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1188, file: !1183, line: 42, baseType: !46, size: 32, offset: 2560)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1188, file: !1183, line: 43, baseType: !1181, size: 64, offset: 2624)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1182, file: !1183, line: 99, baseType: !1248, offset: 128)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1249, line: 211, elements: !428)
!1249 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1182, file: !1183, line: 100, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1183, line: 63, size: 3008, elements: !1253)
!1253 = !{!1254, !1255, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1285}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1252, file: !1183, line: 64, baseType: !1234, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1252, file: !1183, line: 65, baseType: !1256, size: 192, offset: 64)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1234, size: 192, elements: !294)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1252, file: !1183, line: 67, baseType: !46, size: 32, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1252, file: !1183, line: 68, baseType: !549, size: 256, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1252, file: !1183, line: 69, baseType: !223, size: 32, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1252, file: !1183, line: 70, baseType: !549, size: 256, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1252, file: !1183, line: 71, baseType: !180, size: 64, offset: 896)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1252, file: !1183, line: 72, baseType: !180, size: 64, offset: 960)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1252, file: !1183, line: 73, baseType: !180, size: 64, offset: 1024)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1252, file: !1183, line: 74, baseType: !180, size: 64, offset: 1088)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1252, file: !1183, line: 75, baseType: !180, size: 64, offset: 1152)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1252, file: !1183, line: 76, baseType: !180, size: 64, offset: 1216)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1252, file: !1183, line: 77, baseType: !180, size: 64, offset: 1280)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1252, file: !1183, line: 78, baseType: !180, size: 64, offset: 1344)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1252, file: !1183, line: 79, baseType: !649, size: 8, offset: 1408)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1252, file: !1183, line: 80, baseType: !180, size: 64, offset: 1472)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1252, file: !1183, line: 81, baseType: !549, size: 256, offset: 1536)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1252, file: !1183, line: 82, baseType: !966, size: 256, offset: 1792)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1252, file: !1183, line: 84, baseType: !243, size: 32, offset: 2048)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1252, file: !1183, line: 87, baseType: !180, size: 64, offset: 2112)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1252, file: !1183, line: 88, baseType: !180, size: 64, offset: 2176)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1252, file: !1183, line: 89, baseType: !1277, size: 704, offset: 2240)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !615, line: 111, size: 704, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1284}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1277, file: !615, line: 112, baseType: !614, size: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1277, file: !615, line: 113, baseType: !1213, size: 320, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1277, file: !615, line: 116, baseType: !1282, size: 64, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !615, line: 18, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1277, file: !615, line: 117, baseType: !46, size: 32, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1252, file: !1183, line: 90, baseType: !1181, size: 64, offset: 2944)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !947, file: !13, line: 515, baseType: !1287, size: 64, offset: 8064)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1289, line: 117, size: 128, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1290 = !{!1291, !1292, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1288, file: !1289, line: 118, baseType: !528, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1288, file: !1289, line: 119, baseType: !528, size: 32, offset: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1288, file: !1289, line: 120, baseType: !329, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !947, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !947, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !947, file: !13, line: 520, baseType: !1297, size: 64, offset: 8192)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !947, file: !13, line: 523, baseType: !1299, size: 64, offset: 8256)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !947, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !947, file: !13, line: 525, baseType: !1304, size: 64, offset: 8384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !947, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !947, file: !13, line: 533, baseType: !179, size: 64, offset: 8512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !947, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !947, file: !13, line: 535, baseType: !1311, size: 64, offset: 8640)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !947, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !947, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !947, file: !13, line: 540, baseType: !1315, size: 64, offset: 8768)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1317, line: 32, size: 64, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1316, file: !1317, line: 33, baseType: !528, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1316, file: !1317, line: 34, baseType: !528, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !947, file: !13, line: 563, baseType: !210, size: 128, offset: 8832)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !947, file: !13, line: 565, baseType: !210, size: 128, offset: 8960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !947, file: !13, line: 568, baseType: !1324, size: 64, offset: 9088)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !947, file: !13, line: 570, baseType: !243, size: 32, offset: 9152)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !941, file: !20, line: 101, baseType: !207, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !941, file: !20, line: 103, baseType: !649, size: 8, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !941, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !941, file: !20, line: 106, baseType: !1332, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !941, file: !20, line: 107, baseType: !1336, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !941, file: !20, line: 109, baseType: !900, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !941, file: !20, line: 110, baseType: !891, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !941, file: !20, line: 111, baseType: !900, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !941, file: !20, line: 112, baseType: !891, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !941, file: !20, line: 113, baseType: !1344, size: 64, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!46, !199, !1347}
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1348, file: !38, line: 59, baseType: !46, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !941, file: !20, line: 114, baseType: !900, size: 64, offset: 768)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !941, file: !20, line: 115, baseType: !344, size: 64, offset: 832)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !941, file: !20, line: 116, baseType: !344, size: 64, offset: 896)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !941, file: !20, line: 118, baseType: !895, size: 64, offset: 960)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !941, file: !20, line: 119, baseType: !891, size: 64, offset: 1024)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !941, file: !20, line: 121, baseType: !1357, size: 64, offset: 1088)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !928, file: !929, line: 88, baseType: !880, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !928, file: !929, line: 89, baseType: !900, size: 64, offset: 448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !928, file: !929, line: 90, baseType: !891, size: 64, offset: 512)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !928, file: !929, line: 91, baseType: !891, size: 64, offset: 576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !928, file: !929, line: 92, baseType: !891, size: 64, offset: 640)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !928, file: !929, line: 94, baseType: !900, size: 64, offset: 704)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !928, file: !929, line: 95, baseType: !900, size: 64, offset: 768)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !928, file: !929, line: 97, baseType: !1344, size: 64, offset: 832)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !928, file: !929, line: 98, baseType: !900, size: 64, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !928, file: !929, line: 100, baseType: !900, size: 64, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !928, file: !929, line: 102, baseType: !900, size: 64, offset: 1024)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !928, file: !929, line: 103, baseType: !891, size: 64, offset: 1088)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !928, file: !929, line: 105, baseType: !895, size: 64, offset: 1152)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !928, file: !929, line: 107, baseType: !1373, size: 64, offset: 1216)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !929, line: 107, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !928, file: !929, line: 109, baseType: !649, size: 8, offset: 1280)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !200, file: !26, line: 715, baseType: !940, size: 64, offset: 832)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !200, file: !26, line: 717, baseType: !179, size: 64, offset: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !200, file: !26, line: 719, baseType: !179, size: 64, offset: 960)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !200, file: !26, line: 721, baseType: !549, size: 256, offset: 1024)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !200, file: !26, line: 725, baseType: !1382, size: 448, offset: 1280)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1382, file: !26, line: 518, baseType: !210, size: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1382, file: !26, line: 519, baseType: !210, size: 128, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1382, file: !26, line: 520, baseType: !210, size: 128, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1382, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !200, file: !26, line: 726, baseType: !1389, size: 2496, offset: 1728)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1441, !1442, !1443, !1444, !1445, !1446, !1517, !1518, !1519, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1557, !1561}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1389, file: !38, line: 664, baseType: !1347, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1389, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1389, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1389, file: !38, line: 667, baseType: !649, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1389, file: !38, line: 668, baseType: !649, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1389, file: !38, line: 669, baseType: !649, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1389, file: !38, line: 670, baseType: !649, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1389, file: !38, line: 671, baseType: !649, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1389, file: !38, line: 672, baseType: !649, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1389, file: !38, line: 673, baseType: !649, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1389, file: !38, line: 674, baseType: !649, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1389, file: !38, line: 675, baseType: !1230, size: 32, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1389, file: !38, line: 676, baseType: !223, size: 32, offset: 96)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1389, file: !38, line: 678, baseType: !210, size: 128, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1389, file: !38, line: 679, baseType: !966, size: 256, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1389, file: !38, line: 680, baseType: !1407, size: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1409, line: 43, size: 1536, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1424, !1425, !1426, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1408, file: !1409, line: 44, baseType: !207, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1408, file: !1409, line: 45, baseType: !46, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1408, file: !1409, line: 46, baseType: !210, size: 128, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1408, file: !1409, line: 47, baseType: !223, size: 32, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1408, file: !1409, line: 48, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1418, line: 34, size: 192, elements: !1419)
!1418 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1327210c8ac5950226b4c5538c62ec75")
!1419 = !{!1420, !1421, !1422, !1423}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1417, file: !1418, line: 35, baseType: !199, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1417, file: !1418, line: 36, baseType: !7, size: 32, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1417, file: !1418, line: 37, baseType: !46, size: 32, offset: 96)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1417, file: !1418, line: 38, baseType: !207, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1408, file: !1409, line: 49, baseType: !1213, size: 320, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1408, file: !1409, line: 50, baseType: !180, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1408, file: !1409, line: 51, baseType: !1427, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1428, line: 29, baseType: !467)
!1428 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1408, file: !1409, line: 52, baseType: !1427, size: 64, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1408, file: !1409, line: 53, baseType: !1427, size: 64, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1408, file: !1409, line: 54, baseType: !1427, size: 64, offset: 960)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1408, file: !1409, line: 55, baseType: !1427, size: 64, offset: 1024)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1408, file: !1409, line: 56, baseType: !180, size: 64, offset: 1088)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1408, file: !1409, line: 57, baseType: !180, size: 64, offset: 1152)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1408, file: !1409, line: 58, baseType: !180, size: 64, offset: 1216)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1408, file: !1409, line: 59, baseType: !180, size: 64, offset: 1280)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1408, file: !1409, line: 60, baseType: !180, size: 64, offset: 1344)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1408, file: !1409, line: 61, baseType: !199, size: 64, offset: 1408)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1408, file: !1409, line: 62, baseType: !649, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1408, file: !1409, line: 63, baseType: !649, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1389, file: !38, line: 681, baseType: !649, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1389, file: !38, line: 682, baseType: !649, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1389, file: !38, line: 683, baseType: !649, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1389, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1389, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1389, file: !38, line: 690, baseType: !1447, size: 512, offset: 640)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1448)
!1448 = !{!1449, !1455, !1456, !1461, !1513, !1514, !1515, !1516}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1447, file: !33, line: 119, baseType: !1450, size: 256)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1451, line: 9, size: 256, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1450, file: !1451, line: 10, baseType: !655, size: 192, align: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1450, file: !1451, line: 11, baseType: !1427, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1447, file: !33, line: 120, baseType: !1427, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1447, file: !33, line: 121, baseType: !1457, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!32, !1460}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1447, file: !33, line: 122, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1464)
!1464 = !{!1465, !1490, !1491, !1494, !1499, !1500, !1508, !1512}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1463, file: !33, line: 160, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !33, line: 216, baseType: !483, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1467, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1467, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1467, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1467, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1467, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1467, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1467, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1467, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1467, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1467, file: !33, line: 227, baseType: !263, size: 16, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1467, file: !33, line: 228, baseType: !263, size: 16, offset: 208)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1467, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1467, file: !33, line: 235, baseType: !1427, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1467, file: !33, line: 236, baseType: !1460, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1467, file: !33, line: 237, baseType: !1427, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1467, file: !33, line: 238, baseType: !1460, size: 64, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1467, file: !33, line: 239, baseType: !1487, size: 4096, align: 512, offset: 512)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 4096, align: 512, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 8)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1463, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1463, file: !33, line: 162, baseType: !1492, size: 32, offset: 96)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !178, line: 32, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !327, line: 96, baseType: !46)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1463, file: !33, line: 163, baseType: !1495, size: 32, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !498, line: 274, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !498, line: 274, size: 32, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1496, file: !498, line: 274, baseType: !497, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1463, file: !33, line: 164, baseType: !1460, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1463, file: !33, line: 165, baseType: !1501, size: 128, offset: 256)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1451, line: 14, size: 128, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1501, file: !1451, line: 15, baseType: !1504, size: 128)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !656, line: 26, size: 128, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1504, file: !656, line: 27, baseType: !758, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1504, file: !656, line: 28, baseType: !660, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1463, file: !33, line: 166, baseType: !1509, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1427}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1463, file: !33, line: 167, baseType: !1427, size: 64, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1447, file: !33, line: 123, baseType: !251, size: 8, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1447, file: !33, line: 124, baseType: !251, size: 8, offset: 456)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1447, file: !33, line: 125, baseType: !251, size: 8, offset: 464)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1447, file: !33, line: 126, baseType: !251, size: 8, offset: 472)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1389, file: !38, line: 691, baseType: !455, size: 64, offset: 1152)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1389, file: !38, line: 692, baseType: !614, size: 256, offset: 1216)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1389, file: !38, line: 693, baseType: !1520, size: 192, offset: 1472)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1521, line: 41, baseType: !1522)
!1521 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1521, line: 37, size: 192, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1522, file: !1521, line: 38, baseType: !223, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1522, file: !1521, line: 39, baseType: !210, size: 128, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1389, file: !38, line: 694, baseType: !1416, size: 64, offset: 1664)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1389, file: !38, line: 695, baseType: !243, size: 32, offset: 1728)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1389, file: !38, line: 696, baseType: !243, size: 32, offset: 1760)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1389, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1389, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1389, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1389, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1389, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1389, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1389, file: !38, line: 703, baseType: !649, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1389, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1389, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1389, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1389, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1389, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1389, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1389, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1389, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1389, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1389, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1389, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1389, file: !38, line: 715, baseType: !455, size: 64, offset: 2048)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1389, file: !38, line: 716, baseType: !455, size: 64, offset: 2112)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1389, file: !38, line: 717, baseType: !455, size: 64, offset: 2176)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1389, file: !38, line: 718, baseType: !455, size: 64, offset: 2240)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1389, file: !38, line: 720, baseType: !1552, size: 64, offset: 2304)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1553, file: !38, line: 633, baseType: !223, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1553, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1389, file: !38, line: 721, baseType: !1558, size: 64, offset: 2368)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !199, !528}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1389, file: !38, line: 722, baseType: !1562, size: 64, offset: 2432)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1564)
!1564 = !{!1565, !1594, !1595, !1602, !1607, !1634, !1635}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1563, file: !54, line: 118, baseType: !1566, size: 320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1567)
!1567 = !{!1568, !1573, !1574, !1575, !1576, !1577}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1566, file: !54, line: 53, baseType: !1569, size: 128)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1570, line: 82, size: 128, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1569, file: !1570, line: 83, baseType: !210, size: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1566, file: !54, line: 54, baseType: !528, size: 32, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1566, file: !54, line: 55, baseType: !528, size: 32, offset: 160)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1566, file: !54, line: 56, baseType: !528, size: 32, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1566, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1566, file: !54, line: 58, baseType: !1578, size: 64, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1580, line: 65, size: 384, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1579, file: !1580, line: 66, baseType: !472, size: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1579, file: !1580, line: 67, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1580, line: 54, size: 192, elements: !1586)
!1586 = !{!1587, !1592, !1593}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1585, file: !1580, line: 55, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1580, line: 51, baseType: !1589)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!46, !1584, !180, !179}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1585, file: !1580, line: 56, baseType: !1584, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1585, file: !1580, line: 57, baseType: !46, size: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1563, file: !54, line: 119, baseType: !1566, size: 320, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1563, file: !54, line: 120, baseType: !1596, size: 1408, offset: 640)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1596, file: !54, line: 86, baseType: !1566, size: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1596, file: !54, line: 87, baseType: !1579, size: 384, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1596, file: !54, line: 88, baseType: !1566, size: 320, offset: 704)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1596, file: !54, line: 89, baseType: !1579, size: 384, offset: 1024)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1563, file: !54, line: 121, baseType: !1603, size: 192, offset: 2048)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1603, file: !54, line: 72, baseType: !210, size: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1603, file: !54, line: 73, baseType: !528, size: 32, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1563, file: !54, line: 122, baseType: !1608, size: 64, offset: 2240)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1610)
!1610 = !{!1611, !1612, !1633}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1609, file: !54, line: 108, baseType: !59, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1609, file: !54, line: 113, baseType: !1613, size: 448, offset: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !54, line: 109, size: 448, elements: !1614)
!1614 = !{!1615, !1621, !1626}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1613, file: !54, line: 110, baseType: !1616, size: 320)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1570, line: 86, size: 320, elements: !1617)
!1617 = !{!1618, !1619, !1620}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1616, file: !1570, line: 87, baseType: !46, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1616, file: !1570, line: 88, baseType: !210, size: 128, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1616, file: !1570, line: 89, baseType: !210, size: 128, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1613, file: !54, line: 111, baseType: !1622, size: 192)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1622, file: !54, line: 67, baseType: !210, size: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !54, line: 68, baseType: !528, size: 32, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1613, file: !54, line: 112, baseType: !1627, size: 448)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1628)
!1628 = !{!1629, !1630, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1627, file: !54, line: 93, baseType: !66, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1627, file: !54, line: 94, baseType: !1616, size: 320, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1627, file: !54, line: 95, baseType: !1632, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1609, file: !54, line: 114, baseType: !199, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1563, file: !54, line: 123, baseType: !1608, size: 64, offset: 2304)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1563, file: !54, line: 124, baseType: !1608, size: 64, offset: 2368)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !200, file: !26, line: 727, baseType: !1637, size: 64, offset: 4224)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1646, !1647, !1648}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1638, file: !38, line: 743, baseType: !897, size: 1472)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1638, file: !38, line: 744, baseType: !900, size: 64, offset: 1472)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1638, file: !38, line: 745, baseType: !1643, size: 64, offset: 1536)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !199, !649}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1638, file: !38, line: 746, baseType: !900, size: 64, offset: 1600)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1638, file: !38, line: 747, baseType: !891, size: 64, offset: 1664)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1638, file: !38, line: 748, baseType: !891, size: 64, offset: 1728)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !200, file: !26, line: 736, baseType: !1650, size: 128, offset: 4288)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1651)
!1651 = !{!1652, !1656}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1650, file: !26, line: 531, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1655, line: 13, flags: DIFlagFwdDecl)
!1655 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1650, file: !26, line: 532, baseType: !1657, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !200, file: !26, line: 738, baseType: !1660, size: 64, offset: 4416)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !200, file: !26, line: 740, baseType: !1664, size: 64, offset: 4480)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !200, file: !26, line: 741, baseType: !455, size: 64, offset: 4544)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !200, file: !26, line: 746, baseType: !455, size: 64, offset: 4608)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !200, file: !26, line: 747, baseType: !1668, size: 64, offset: 4672)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !200, file: !26, line: 749, baseType: !1672, size: 64, offset: 4736)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1673, file: !26, line: 433, baseType: !7, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1673, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1673, file: !26, line: 435, baseType: !180, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !200, file: !26, line: 751, baseType: !210, size: 128, offset: 4800)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !200, file: !26, line: 762, baseType: !1680, size: 64, offset: 4928)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !200, file: !26, line: 770, baseType: !1683, offset: 4992)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1684, line: 5, elements: !428)
!1684 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !200, file: !26, line: 772, baseType: !1686, size: 64, offset: 4992)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1688, line: 18, flags: DIFlagFwdDecl)
!1688 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !200, file: !26, line: 773, baseType: !1690, size: 64, offset: 5056)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1692, line: 41, size: 512, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1693 = !{!1694, !1695, !1789, !1790, !1791, !1792}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1691, file: !1692, line: 42, baseType: !1690, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1691, file: !1692, line: 43, baseType: !1696, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1692, line: 125, size: 1408, elements: !1699)
!1699 = !{!1700, !1704, !1708, !1714, !1718, !1719, !1724, !1728, !1732, !1736, !1740, !1741, !1745, !1749, !1753, !1764, !1765, !1766, !1767, !1777, !1781, !1785}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1698, file: !1692, line: 126, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1690, !1690}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1698, file: !1692, line: 127, baseType: !1705, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1690}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1698, file: !1692, line: 128, baseType: !1709, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!649, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1698, file: !1692, line: 129, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!570, !1712, !883}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1698, file: !1692, line: 131, baseType: !1709, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1698, file: !1692, line: 133, baseType: !1720, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!1723, !1712}
!1723 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !1692, line: 132, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1698, file: !1692, line: 134, baseType: !1725, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!649, !1712, !207}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1698, file: !1692, line: 136, baseType: !1729, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!46, !1712, !207, !7, !179, !340}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1698, file: !1692, line: 141, baseType: !1733, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!46, !1712, !207, !1297, !340}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1698, file: !1692, line: 144, baseType: !1737, size: 64, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!207, !1712}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1698, file: !1692, line: 145, baseType: !1737, size: 64, offset: 640)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1698, file: !1692, line: 146, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!1690, !1712}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1698, file: !1692, line: 148, baseType: !1746, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1690, !1712, !1690}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1698, file: !1692, line: 151, baseType: !1750, size: 64, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1690, !1712, !207}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1698, file: !1692, line: 153, baseType: !1754, size: 64, offset: 896)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!46, !1712, !207, !207, !7, !7, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1692, line: 94, size: 640, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1758, file: !1692, line: 95, baseType: !1690, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1758, file: !1692, line: 96, baseType: !7, size: 32, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1758, file: !1692, line: 97, baseType: !1763, size: 512, offset: 128)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 512, elements: !1488)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1698, file: !1692, line: 158, baseType: !1746, size: 64, offset: 960)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1698, file: !1692, line: 161, baseType: !1742, size: 64, offset: 1024)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1698, file: !1692, line: 163, baseType: !1701, size: 64, offset: 1088)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1698, file: !1692, line: 164, baseType: !1768, size: 64, offset: 1152)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!46, !1712, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1692, line: 73, size: 128, elements: !1773)
!1773 = !{!1774, !1775, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1772, file: !1692, line: 74, baseType: !7, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1772, file: !1692, line: 75, baseType: !7, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1772, file: !1692, line: 76, baseType: !1712, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1698, file: !1692, line: 166, baseType: !1778, size: 64, offset: 1216)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!179, !1690, !46}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1698, file: !1692, line: 167, baseType: !1782, size: 64, offset: 1280)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!46, !1712, !7}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1698, file: !1692, line: 168, baseType: !1786, size: 64, offset: 1344)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!46, !1690}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1691, file: !1692, line: 44, baseType: !199, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1691, file: !1692, line: 45, baseType: !210, size: 128, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1691, file: !1692, line: 46, baseType: !210, size: 128, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !1692, line: 47, baseType: !251, size: 8, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !200, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !200, file: !26, line: 778, baseType: !1795, size: 32, offset: 5152)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !178, line: 21, baseType: !1796)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !178, line: 18, baseType: !1230)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !200, file: !26, line: 779, baseType: !1230, size: 32, offset: 5184)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !200, file: !26, line: 781, baseType: !223, size: 32, offset: 5216)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !200, file: !26, line: 782, baseType: !210, size: 128, offset: 5248)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !200, file: !26, line: 784, baseType: !1801, size: 64, offset: 5376)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1804, line: 52, size: 768, elements: !1805)
!1804 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1805 = !{!1806, !1807, !1808, !1809, !1810, !1814, !1818, !1819, !1820, !1821, !1825, !1829}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1803, file: !1804, line: 53, baseType: !207, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1803, file: !1804, line: 55, baseType: !344, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1803, file: !1804, line: 56, baseType: !344, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1803, file: !1804, line: 58, baseType: !880, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1803, file: !1804, line: 59, baseType: !1811, size: 64, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!293, !883, !889}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1803, file: !1804, line: 61, baseType: !1815, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !1801}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1803, file: !1804, line: 62, baseType: !891, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1803, file: !1804, line: 64, baseType: !900, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1803, file: !1804, line: 66, baseType: !689, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1803, file: !1804, line: 67, baseType: !1822, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!570, !883}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1803, file: !1804, line: 69, baseType: !1826, size: 64, offset: 640)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !883, !724, !731}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1803, file: !1804, line: 71, baseType: !895, size: 64, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !200, file: !26, line: 785, baseType: !344, size: 64, offset: 5440)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !200, file: !26, line: 787, baseType: !891, size: 64, offset: 5504)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !200, file: !26, line: 788, baseType: !1833, size: 64, offset: 5568)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !200, file: !26, line: 789, baseType: !1836, size: 64, offset: 5632)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !200, file: !26, line: 791, baseType: !1839, size: 64, offset: 5696)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845, !1846}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1840, file: !26, line: 598, baseType: !70, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1840, file: !26, line: 599, baseType: !79, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1840, file: !26, line: 600, baseType: !84, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1840, file: !26, line: 601, baseType: !649, size: 8, offset: 96)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1840, file: !26, line: 602, baseType: !649, size: 8, offset: 104)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !200, file: !26, line: 793, baseType: !89, size: 32, offset: 5760)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !200, file: !26, line: 795, baseType: !649, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !200, file: !26, line: 796, baseType: !649, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !200, file: !26, line: 797, baseType: !649, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !200, file: !26, line: 798, baseType: !649, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !200, file: !26, line: 799, baseType: !649, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1853 = !{!1854, !1855, !1856, !1857, !1861, !1862, !1865, !1868, !1869, !1871}
!1854 = !DILocalVariable(name: "dev", arg: 1, scope: !196, file: !3, line: 19, type: !199)
!1855 = !DILocalVariable(name: "wirq", arg: 2, scope: !196, file: !3, line: 19, type: !1416)
!1856 = !DILocalVariable(name: "flags", scope: !196, file: !3, line: 21, type: !180)
!1857 = !DILocalVariable(name: "__dummy", scope: !1858, file: !3, line: 26, type: !180)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 26, column: 2)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 26, column: 2)
!1860 = distinct !DILexicalBlock(scope: !196, file: !3, line: 26, column: 2)
!1861 = !DILocalVariable(name: "__dummy2", scope: !1858, file: !3, line: 26, type: !180)
!1862 = !DILocalVariable(name: "__ret_do_once", scope: !1863, file: !3, line: 27, type: !649)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 27, column: 6)
!1864 = distinct !DILexicalBlock(scope: !196, file: !3, line: 27, column: 6)
!1865 = !DILocalVariable(name: "__ret_cond", scope: !1866, file: !3, line: 27, type: !649)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 27, column: 6)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 27, column: 6)
!1868 = !DILocalVariable(name: "__ret_once", scope: !1866, file: !3, line: 27, type: !649)
!1869 = !DILocalVariable(name: "__ret_warn_on", scope: !1870, file: !3, line: 27, type: !46)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 27, column: 6)
!1871 = !DILocalVariable(name: "__flags", scope: !1872, file: !3, line: 27, type: !46)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 27, column: 6)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 27, column: 6)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 27, column: 6)
!1875 = !DIGlobalVariableExpression(var: !1876, expr: !DIExpression())
!1876 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !1877, isLocal: true, isDefinition: true)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 296, elements: !1878)
!1878 = !{!1879}
!1879 = !DISubrange(count: 37)
!1880 = !DIGlobalVariableExpression(var: !1881, expr: !DIExpression())
!1881 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !1882, isLocal: true, isDefinition: true)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 232, elements: !1883)
!1883 = !{!1884}
!1884 = !DISubrange(count: 29)
!1885 = !DIGlobalVariableExpression(var: !1886, expr: !DIExpression())
!1886 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !1887, isLocal: true, isDefinition: true)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 80, elements: !1888)
!1888 = !{!1889}
!1889 = !DISubrange(count: 10)
!1890 = !DIGlobalVariableExpression(var: !1891, expr: !DIExpression())
!1891 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !1882, isLocal: true, isDefinition: true)
!1892 = !{i32 7, !"Dwarf Version", i32 5}
!1893 = !{i32 2, !"Debug Info Version", i32 3}
!1894 = !{i32 1, !"wchar_size", i32 2}
!1895 = !{i32 8, !"cf-protection-branch", i32 1}
!1896 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1897 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1898 = !{i32 1, !"Code Model", i32 2}
!1899 = !{i32 1, !"override-stack-alignment", i32 8}
!1900 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1901 = distinct !DISubprogram(name: "dev_pm_set_wake_irq", scope: !3, file: !3, line: 50, type: !1902, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!46, !199, !46}
!1904 = !{!1905, !1906, !1907, !1908}
!1905 = !DILocalVariable(name: "dev", arg: 1, scope: !1901, file: !3, line: 50, type: !199)
!1906 = !DILocalVariable(name: "irq", arg: 2, scope: !1901, file: !3, line: 50, type: !46)
!1907 = !DILocalVariable(name: "wirq", scope: !1901, file: !3, line: 52, type: !1416)
!1908 = !DILocalVariable(name: "err", scope: !1901, file: !3, line: 53, type: !46)
!1909 = !DILocation(line: 50, column: 40, scope: !1901)
!1910 = !DILocation(line: 50, column: 49, scope: !1901)
!1911 = !DILocation(line: 52, column: 2, scope: !1901)
!1912 = !DILocation(line: 52, column: 19, scope: !1901)
!1913 = !DILocation(line: 53, column: 2, scope: !1901)
!1914 = !DILocation(line: 53, column: 6, scope: !1901)
!1915 = !DILocation(line: 55, column: 6, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 55, column: 6)
!1917 = !DILocation(line: 55, column: 10, scope: !1916)
!1918 = !DILocation(line: 55, column: 6, scope: !1901)
!1919 = !DILocation(line: 56, column: 3, scope: !1916)
!1920 = !DILocation(line: 58, column: 9, scope: !1901)
!1921 = !DILocation(line: 58, column: 7, scope: !1901)
!1922 = !DILocation(line: 59, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 59, column: 6)
!1924 = !DILocation(line: 59, column: 6, scope: !1901)
!1925 = !DILocation(line: 60, column: 3, scope: !1923)
!1926 = !DILocation(line: 62, column: 14, scope: !1901)
!1927 = !DILocation(line: 62, column: 2, scope: !1901)
!1928 = !DILocation(line: 62, column: 8, scope: !1901)
!1929 = !DILocation(line: 62, column: 12, scope: !1901)
!1930 = !DILocation(line: 63, column: 14, scope: !1901)
!1931 = !DILocation(line: 63, column: 2, scope: !1901)
!1932 = !DILocation(line: 63, column: 8, scope: !1901)
!1933 = !DILocation(line: 63, column: 12, scope: !1901)
!1934 = !DILocation(line: 65, column: 31, scope: !1901)
!1935 = !DILocation(line: 65, column: 36, scope: !1901)
!1936 = !DILocation(line: 65, column: 8, scope: !1901)
!1937 = !DILocation(line: 65, column: 6, scope: !1901)
!1938 = !DILocation(line: 66, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 66, column: 6)
!1940 = !DILocation(line: 66, column: 6, scope: !1901)
!1941 = !DILocation(line: 67, column: 9, scope: !1939)
!1942 = !DILocation(line: 67, column: 3, scope: !1939)
!1943 = !DILocation(line: 69, column: 9, scope: !1901)
!1944 = !DILocation(line: 69, column: 2, scope: !1901)
!1945 = !DILocation(line: 70, column: 1, scope: !1901)
!1946 = distinct !DISubprogram(name: "kzalloc", scope: !101, file: !101, line: 719, type: !1947, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!179, !340, !177}
!1949 = !{!1950, !1951}
!1950 = !DILocalVariable(name: "size", arg: 1, scope: !1946, file: !101, line: 719, type: !340)
!1951 = !DILocalVariable(name: "flags", arg: 2, scope: !1946, file: !101, line: 719, type: !177)
!1952 = !DILocation(line: 719, column: 52, scope: !1946)
!1953 = !DILocation(line: 719, column: 64, scope: !1946)
!1954 = !DILocation(line: 721, column: 17, scope: !1946)
!1955 = !DILocation(line: 721, column: 23, scope: !1946)
!1956 = !DILocation(line: 721, column: 29, scope: !1946)
!1957 = !DILocation(line: 721, column: 9, scope: !1946)
!1958 = !DILocation(line: 721, column: 2, scope: !1946)
!1959 = !DILocation(line: 19, column: 50, scope: !196)
!1960 = !DILocation(line: 19, column: 72, scope: !196)
!1961 = !DILocation(line: 21, column: 2, scope: !196)
!1962 = !DILocation(line: 21, column: 16, scope: !196)
!1963 = !DILocation(line: 23, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !196, file: !3, line: 23, column: 6)
!1965 = !DILocation(line: 23, column: 11, scope: !1964)
!1966 = !DILocation(line: 23, column: 15, scope: !1964)
!1967 = !DILocation(line: 23, column: 6, scope: !196)
!1968 = !DILocation(line: 24, column: 3, scope: !1964)
!1969 = !DILocation(line: 26, column: 2, scope: !196)
!1970 = !DILocation(line: 26, column: 2, scope: !1860)
!1971 = !DILocation(line: 26, column: 2, scope: !1858)
!1972 = !DILocation(line: 26, column: 2, scope: !1859)
!1973 = !DILocation(line: 27, column: 6, scope: !1863)
!1974 = !DILocation(line: 27, column: 6, scope: !1866)
!1975 = !{i8 0, i8 2}
!1976 = !DILocation(line: 27, column: 6, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 27, column: 6)
!1978 = !DILocation(line: 0, scope: !1977)
!1979 = !DILocation(line: 27, column: 6, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 27, column: 6)
!1981 = !DILocation(line: 27, column: 6, scope: !1867)
!1982 = !DILocation(line: 27, column: 6, scope: !1870)
!1983 = !DILocation(line: 27, column: 6, scope: !1874)
!1984 = !DILocation(line: 27, column: 6, scope: !1873)
!1985 = !DILocation(line: 27, column: 6, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 27, column: 6)
!1987 = !DILocation(line: 27, column: 6, scope: !1872)
!1988 = !DILocation(line: 27, column: 6, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 27, column: 6)
!1990 = !DILocation(line: 27, column: 6, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 27, column: 6)
!1992 = !{i64 2153006660, i64 2153006689, i64 2153006735, i64 2153006793, i64 2153006847, i64 2153006901, i64 2153006956, i64 2153006987, i64 2153007295, i64 2153007301, i64 2153007348, i64 2153007371, i64 2153007397}
!1993 = !DILocation(line: 27, column: 6, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 27, column: 6)
!1995 = !DILocation(line: 27, column: 6, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 27, column: 6)
!1997 = !DILocation(line: 27, column: 6, scope: !1864)
!1998 = !DILocation(line: 27, column: 6, scope: !196)
!1999 = !DILocation(line: 29, column: 27, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 28, column: 41)
!2001 = !DILocation(line: 29, column: 32, scope: !2000)
!2002 = !DILocation(line: 29, column: 38, scope: !2000)
!2003 = !DILocation(line: 29, column: 44, scope: !2000)
!2004 = !DILocation(line: 29, column: 3, scope: !2000)
!2005 = !DILocation(line: 30, column: 3, scope: !2000)
!2006 = !DILocation(line: 33, column: 23, scope: !196)
!2007 = !DILocation(line: 33, column: 2, scope: !196)
!2008 = !DILocation(line: 33, column: 7, scope: !196)
!2009 = !DILocation(line: 33, column: 13, scope: !196)
!2010 = !DILocation(line: 33, column: 21, scope: !196)
!2011 = !DILocation(line: 34, column: 27, scope: !196)
!2012 = !DILocation(line: 34, column: 32, scope: !196)
!2013 = !DILocation(line: 34, column: 2, scope: !196)
!2014 = !DILocation(line: 36, column: 26, scope: !196)
!2015 = !DILocation(line: 36, column: 31, scope: !196)
!2016 = !DILocation(line: 36, column: 37, scope: !196)
!2017 = !DILocation(line: 36, column: 43, scope: !196)
!2018 = !DILocation(line: 36, column: 2, scope: !196)
!2019 = !DILocation(line: 37, column: 2, scope: !196)
!2020 = !DILocation(line: 38, column: 1, scope: !196)
!2021 = !DISubprogram(name: "kfree", scope: !101, file: !101, line: 227, type: !2022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !570}
!2024 = distinct !DISubprogram(name: "dev_pm_clear_wake_irq", scope: !3, file: !3, line: 84, type: !892, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2025)
!2025 = !{!2026, !2027, !2028, !2029, !2033}
!2026 = !DILocalVariable(name: "dev", arg: 1, scope: !2024, file: !3, line: 84, type: !199)
!2027 = !DILocalVariable(name: "wirq", scope: !2024, file: !3, line: 86, type: !1416)
!2028 = !DILocalVariable(name: "flags", scope: !2024, file: !3, line: 87, type: !180)
!2029 = !DILocalVariable(name: "__dummy", scope: !2030, file: !3, line: 92, type: !180)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 92, column: 2)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 92, column: 2)
!2032 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 92, column: 2)
!2033 = !DILocalVariable(name: "__dummy2", scope: !2030, file: !3, line: 92, type: !180)
!2034 = !DILocation(line: 84, column: 43, scope: !2024)
!2035 = !DILocation(line: 86, column: 2, scope: !2024)
!2036 = !DILocation(line: 86, column: 19, scope: !2024)
!2037 = !DILocation(line: 86, column: 26, scope: !2024)
!2038 = !DILocation(line: 86, column: 31, scope: !2024)
!2039 = !DILocation(line: 86, column: 37, scope: !2024)
!2040 = !DILocation(line: 87, column: 2, scope: !2024)
!2041 = !DILocation(line: 87, column: 16, scope: !2024)
!2042 = !DILocation(line: 89, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 89, column: 6)
!2044 = !DILocation(line: 89, column: 6, scope: !2024)
!2045 = !DILocation(line: 90, column: 3, scope: !2043)
!2046 = !DILocation(line: 92, column: 2, scope: !2024)
!2047 = !DILocation(line: 92, column: 2, scope: !2032)
!2048 = !DILocation(line: 92, column: 2, scope: !2030)
!2049 = !DILocation(line: 92, column: 2, scope: !2031)
!2050 = !DILocation(line: 93, column: 27, scope: !2024)
!2051 = !DILocation(line: 93, column: 2, scope: !2024)
!2052 = !DILocation(line: 94, column: 2, scope: !2024)
!2053 = !DILocation(line: 94, column: 7, scope: !2024)
!2054 = !DILocation(line: 94, column: 13, scope: !2024)
!2055 = !DILocation(line: 94, column: 21, scope: !2024)
!2056 = !DILocation(line: 95, column: 26, scope: !2024)
!2057 = !DILocation(line: 95, column: 31, scope: !2024)
!2058 = !DILocation(line: 95, column: 37, scope: !2024)
!2059 = !DILocation(line: 95, column: 43, scope: !2024)
!2060 = !DILocation(line: 95, column: 2, scope: !2024)
!2061 = !DILocation(line: 97, column: 6, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 97, column: 6)
!2063 = !DILocation(line: 97, column: 12, scope: !2062)
!2064 = !DILocation(line: 97, column: 19, scope: !2062)
!2065 = !DILocation(line: 97, column: 6, scope: !2024)
!2066 = !DILocation(line: 98, column: 12, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 97, column: 51)
!2068 = !DILocation(line: 98, column: 18, scope: !2067)
!2069 = !DILocation(line: 98, column: 23, scope: !2067)
!2070 = !DILocation(line: 98, column: 3, scope: !2067)
!2071 = !DILocation(line: 99, column: 3, scope: !2067)
!2072 = !DILocation(line: 99, column: 9, scope: !2067)
!2073 = !DILocation(line: 99, column: 16, scope: !2067)
!2074 = !DILocation(line: 100, column: 2, scope: !2067)
!2075 = !DILocation(line: 101, column: 8, scope: !2024)
!2076 = !DILocation(line: 101, column: 14, scope: !2024)
!2077 = !DILocation(line: 101, column: 2, scope: !2024)
!2078 = !DILocation(line: 102, column: 8, scope: !2024)
!2079 = !DILocation(line: 102, column: 2, scope: !2024)
!2080 = !DILocation(line: 103, column: 1, scope: !2024)
!2081 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !2082, file: !2082, line: 32, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2082 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!180, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!2086 = distinct !DISubprogram(name: "spinlock_check", scope: !2087, file: !2087, line: 324, type: !2088, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2087 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2085, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!2091 = !{!2092}
!2092 = !DILocalVariable(name: "lock", arg: 1, scope: !2086, file: !2087, line: 324, type: !2090)
!2093 = !DILocation(line: 324, column: 67, scope: !2086)
!2094 = !DILocation(line: 326, column: 10, scope: !2086)
!2095 = !DILocation(line: 326, column: 16, scope: !2086)
!2096 = !DILocation(line: 326, column: 2, scope: !2086)
!2097 = !DISubprogram(name: "device_wakeup_detach_irq", scope: !1418, file: !1418, line: 51, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2098 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2087, file: !2087, line: 404, type: !2099, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !2090, !180}
!2101 = !{!2102, !2103, !2104, !2107}
!2102 = !DILocalVariable(name: "lock", arg: 1, scope: !2098, file: !2087, line: 404, type: !2090)
!2103 = !DILocalVariable(name: "flags", arg: 2, scope: !2098, file: !2087, line: 404, type: !180)
!2104 = !DILocalVariable(name: "__dummy", scope: !2105, file: !2087, line: 406, type: !180)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !2087, line: 406, column: 2)
!2106 = distinct !DILexicalBlock(scope: !2098, file: !2087, line: 406, column: 2)
!2107 = !DILocalVariable(name: "__dummy2", scope: !2105, file: !2087, line: 406, type: !180)
!2108 = !DILocation(line: 404, column: 64, scope: !2098)
!2109 = !DILocation(line: 404, column: 84, scope: !2098)
!2110 = !DILocation(line: 406, column: 2, scope: !2098)
!2111 = !DILocation(line: 406, column: 2, scope: !2105)
!2112 = !DILocation(line: 406, column: 2, scope: !2106)
!2113 = !DILocation(line: 407, column: 1, scope: !2098)
!2114 = !DISubprogram(name: "free_irq", scope: !144, file: !144, line: 196, type: !2115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!570, !7, !179}
!2117 = distinct !DISubprogram(name: "dev_pm_set_dedicated_wake_irq", scope: !3, file: !3, line: 209, type: !1902, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2118 = !{!2119, !2120}
!2119 = !DILocalVariable(name: "dev", arg: 1, scope: !2117, file: !3, line: 209, type: !199)
!2120 = !DILocalVariable(name: "irq", arg: 2, scope: !2117, file: !3, line: 209, type: !46)
!2121 = !DILocation(line: 209, column: 50, scope: !2117)
!2122 = !DILocation(line: 209, column: 59, scope: !2117)
!2123 = !DILocation(line: 211, column: 41, scope: !2117)
!2124 = !DILocation(line: 211, column: 46, scope: !2117)
!2125 = !DILocation(line: 211, column: 9, scope: !2117)
!2126 = !DILocation(line: 211, column: 2, scope: !2117)
!2127 = distinct !DISubprogram(name: "__dev_pm_set_dedicated_wake_irq", scope: !3, file: !3, line: 145, type: !2128, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!46, !199, !46, !7}
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138}
!2131 = !DILocalVariable(name: "dev", arg: 1, scope: !2127, file: !3, line: 145, type: !199)
!2132 = !DILocalVariable(name: "irq", arg: 2, scope: !2127, file: !3, line: 145, type: !46)
!2133 = !DILocalVariable(name: "flag", arg: 3, scope: !2127, file: !3, line: 145, type: !7)
!2134 = !DILocalVariable(name: "wirq", scope: !2127, file: !3, line: 147, type: !1416)
!2135 = !DILocalVariable(name: "err", scope: !2127, file: !3, line: 148, type: !46)
!2136 = !DILabel(scope: !2127, name: "err_free_irq", file: !3, line: 187)
!2137 = !DILabel(scope: !2127, name: "err_free_name", file: !3, line: 189)
!2138 = !DILabel(scope: !2127, name: "err_free", file: !3, line: 191)
!2139 = !DILocation(line: 145, column: 59, scope: !2127)
!2140 = !DILocation(line: 145, column: 68, scope: !2127)
!2141 = !DILocation(line: 145, column: 86, scope: !2127)
!2142 = !DILocation(line: 147, column: 2, scope: !2127)
!2143 = !DILocation(line: 147, column: 19, scope: !2127)
!2144 = !DILocation(line: 148, column: 2, scope: !2127)
!2145 = !DILocation(line: 148, column: 6, scope: !2127)
!2146 = !DILocation(line: 150, column: 6, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 150, column: 6)
!2148 = !DILocation(line: 150, column: 10, scope: !2147)
!2149 = !DILocation(line: 150, column: 6, scope: !2127)
!2150 = !DILocation(line: 151, column: 3, scope: !2147)
!2151 = !DILocation(line: 153, column: 9, scope: !2127)
!2152 = !DILocation(line: 153, column: 7, scope: !2127)
!2153 = !DILocation(line: 154, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 154, column: 6)
!2155 = !DILocation(line: 154, column: 6, scope: !2127)
!2156 = !DILocation(line: 155, column: 3, scope: !2154)
!2157 = !DILocation(line: 157, column: 59, scope: !2127)
!2158 = !DILocation(line: 157, column: 50, scope: !2127)
!2159 = !DILocation(line: 157, column: 15, scope: !2127)
!2160 = !DILocation(line: 157, column: 2, scope: !2127)
!2161 = !DILocation(line: 157, column: 8, scope: !2127)
!2162 = !DILocation(line: 157, column: 13, scope: !2127)
!2163 = !DILocation(line: 158, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 158, column: 6)
!2165 = !DILocation(line: 158, column: 13, scope: !2164)
!2166 = !DILocation(line: 158, column: 6, scope: !2127)
!2167 = !DILocation(line: 159, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 158, column: 19)
!2169 = !DILocation(line: 160, column: 3, scope: !2168)
!2170 = !DILocation(line: 163, column: 14, scope: !2127)
!2171 = !DILocation(line: 163, column: 2, scope: !2127)
!2172 = !DILocation(line: 163, column: 8, scope: !2127)
!2173 = !DILocation(line: 163, column: 12, scope: !2127)
!2174 = !DILocation(line: 164, column: 14, scope: !2127)
!2175 = !DILocation(line: 164, column: 2, scope: !2127)
!2176 = !DILocation(line: 164, column: 8, scope: !2127)
!2177 = !DILocation(line: 164, column: 12, scope: !2127)
!2178 = !DILocation(line: 167, column: 23, scope: !2127)
!2179 = !DILocation(line: 167, column: 2, scope: !2127)
!2180 = !DILocation(line: 173, column: 29, scope: !2127)
!2181 = !DILocation(line: 175, column: 8, scope: !2127)
!2182 = !DILocation(line: 175, column: 14, scope: !2127)
!2183 = !DILocation(line: 175, column: 20, scope: !2127)
!2184 = !DILocation(line: 173, column: 8, scope: !2127)
!2185 = !DILocation(line: 173, column: 6, scope: !2127)
!2186 = !DILocation(line: 176, column: 6, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 176, column: 6)
!2188 = !DILocation(line: 176, column: 6, scope: !2127)
!2189 = !DILocation(line: 177, column: 3, scope: !2187)
!2190 = !DILocation(line: 179, column: 31, scope: !2127)
!2191 = !DILocation(line: 179, column: 36, scope: !2127)
!2192 = !DILocation(line: 179, column: 8, scope: !2127)
!2193 = !DILocation(line: 179, column: 6, scope: !2127)
!2194 = !DILocation(line: 180, column: 6, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 180, column: 6)
!2196 = !DILocation(line: 180, column: 6, scope: !2127)
!2197 = !DILocation(line: 181, column: 3, scope: !2195)
!2198 = !DILocation(line: 183, column: 48, scope: !2127)
!2199 = !DILocation(line: 183, column: 46, scope: !2127)
!2200 = !DILocation(line: 183, column: 17, scope: !2127)
!2201 = !DILocation(line: 183, column: 2, scope: !2127)
!2202 = !DILocation(line: 183, column: 8, scope: !2127)
!2203 = !DILocation(line: 183, column: 15, scope: !2127)
!2204 = !DILocation(line: 185, column: 9, scope: !2127)
!2205 = !DILocation(line: 185, column: 2, scope: !2127)
!2206 = !DILocation(line: 187, column: 1, scope: !2127)
!2207 = !DILocation(line: 188, column: 11, scope: !2127)
!2208 = !DILocation(line: 188, column: 16, scope: !2127)
!2209 = !DILocation(line: 188, column: 2, scope: !2127)
!2210 = !DILocation(line: 189, column: 1, scope: !2127)
!2211 = !DILocation(line: 190, column: 8, scope: !2127)
!2212 = !DILocation(line: 190, column: 14, scope: !2127)
!2213 = !DILocation(line: 190, column: 2, scope: !2127)
!2214 = !DILocation(line: 191, column: 1, scope: !2127)
!2215 = !DILocation(line: 192, column: 8, scope: !2127)
!2216 = !DILocation(line: 192, column: 2, scope: !2127)
!2217 = !DILocation(line: 194, column: 9, scope: !2127)
!2218 = !DILocation(line: 194, column: 2, scope: !2127)
!2219 = !DILocation(line: 195, column: 1, scope: !2127)
!2220 = distinct !DISubprogram(name: "dev_pm_set_dedicated_wake_irq_reverse", scope: !3, file: !3, line: 230, type: !1902, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "dev", arg: 1, scope: !2220, file: !3, line: 230, type: !199)
!2223 = !DILocalVariable(name: "irq", arg: 2, scope: !2220, file: !3, line: 230, type: !46)
!2224 = !DILocation(line: 230, column: 58, scope: !2220)
!2225 = !DILocation(line: 230, column: 67, scope: !2220)
!2226 = !DILocation(line: 232, column: 41, scope: !2220)
!2227 = !DILocation(line: 232, column: 46, scope: !2220)
!2228 = !DILocation(line: 232, column: 9, scope: !2220)
!2229 = !DILocation(line: 232, column: 2, scope: !2220)
!2230 = distinct !DISubprogram(name: "dev_pm_enable_wake_irq_check", scope: !3, file: !3, line: 250, type: !1644, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2231 = !{!2232, !2233, !2234, !2235}
!2232 = !DILocalVariable(name: "dev", arg: 1, scope: !2230, file: !3, line: 250, type: !199)
!2233 = !DILocalVariable(name: "can_change_status", arg: 2, scope: !2230, file: !3, line: 251, type: !649)
!2234 = !DILocalVariable(name: "wirq", scope: !2230, file: !3, line: 253, type: !1416)
!2235 = !DILabel(scope: !2230, name: "enable", file: !3, line: 267)
!2236 = !DILocation(line: 250, column: 50, scope: !2230)
!2237 = !DILocation(line: 251, column: 12, scope: !2230)
!2238 = !DILocation(line: 253, column: 2, scope: !2230)
!2239 = !DILocation(line: 253, column: 19, scope: !2230)
!2240 = !DILocation(line: 253, column: 26, scope: !2230)
!2241 = !DILocation(line: 253, column: 31, scope: !2230)
!2242 = !DILocation(line: 253, column: 37, scope: !2230)
!2243 = !DILocation(line: 255, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 255, column: 6)
!2245 = !DILocation(line: 255, column: 12, scope: !2244)
!2246 = !DILocation(line: 255, column: 17, scope: !2244)
!2247 = !DILocation(line: 255, column: 23, scope: !2244)
!2248 = !DILocation(line: 255, column: 30, scope: !2244)
!2249 = !DILocation(line: 255, column: 6, scope: !2230)
!2250 = !DILocation(line: 256, column: 3, scope: !2244)
!2251 = !DILocation(line: 258, column: 6, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 258, column: 6)
!2253 = !DILocation(line: 258, column: 6, scope: !2230)
!2254 = !DILocation(line: 259, column: 3, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 258, column: 57)
!2256 = !DILocation(line: 260, column: 13, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 260, column: 13)
!2258 = !DILocation(line: 260, column: 13, scope: !2252)
!2259 = !DILocation(line: 261, column: 3, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 260, column: 32)
!2261 = !DILocation(line: 261, column: 9, scope: !2260)
!2262 = !DILocation(line: 261, column: 16, scope: !2260)
!2263 = !DILocation(line: 262, column: 3, scope: !2260)
!2264 = !DILocation(line: 265, column: 2, scope: !2230)
!2265 = !DILocation(line: 267, column: 1, scope: !2230)
!2266 = !DILocation(line: 268, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 268, column: 6)
!2268 = !DILocation(line: 268, column: 25, scope: !2267)
!2269 = !DILocation(line: 268, column: 30, scope: !2267)
!2270 = !DILocation(line: 268, column: 36, scope: !2267)
!2271 = !DILocation(line: 268, column: 43, scope: !2267)
!2272 = !DILocation(line: 268, column: 6, scope: !2230)
!2273 = !DILocation(line: 269, column: 14, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 268, column: 74)
!2275 = !DILocation(line: 269, column: 20, scope: !2274)
!2276 = !DILocation(line: 269, column: 3, scope: !2274)
!2277 = !DILocation(line: 270, column: 3, scope: !2274)
!2278 = !DILocation(line: 270, column: 9, scope: !2274)
!2279 = !DILocation(line: 270, column: 16, scope: !2274)
!2280 = !DILocation(line: 271, column: 2, scope: !2274)
!2281 = !DILocation(line: 272, column: 1, scope: !2230)
!2282 = !DISubprogram(name: "enable_irq", scope: !144, file: !144, line: 230, type: !2283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !7}
!2285 = distinct !DISubprogram(name: "dev_pm_disable_wake_irq_check", scope: !3, file: !3, line: 282, type: !1644, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2286)
!2286 = !{!2287, !2288, !2289}
!2287 = !DILocalVariable(name: "dev", arg: 1, scope: !2285, file: !3, line: 282, type: !199)
!2288 = !DILocalVariable(name: "cond_disable", arg: 2, scope: !2285, file: !3, line: 282, type: !649)
!2289 = !DILocalVariable(name: "wirq", scope: !2285, file: !3, line: 284, type: !1416)
!2290 = !DILocation(line: 282, column: 51, scope: !2285)
!2291 = !DILocation(line: 282, column: 61, scope: !2285)
!2292 = !DILocation(line: 284, column: 2, scope: !2285)
!2293 = !DILocation(line: 284, column: 19, scope: !2285)
!2294 = !DILocation(line: 284, column: 26, scope: !2285)
!2295 = !DILocation(line: 284, column: 31, scope: !2285)
!2296 = !DILocation(line: 284, column: 37, scope: !2285)
!2297 = !DILocation(line: 286, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 286, column: 6)
!2299 = !DILocation(line: 286, column: 12, scope: !2298)
!2300 = !DILocation(line: 286, column: 17, scope: !2298)
!2301 = !DILocation(line: 286, column: 23, scope: !2298)
!2302 = !DILocation(line: 286, column: 30, scope: !2298)
!2303 = !DILocation(line: 286, column: 6, scope: !2285)
!2304 = !DILocation(line: 287, column: 3, scope: !2298)
!2305 = !DILocation(line: 289, column: 6, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 289, column: 6)
!2307 = !DILocation(line: 289, column: 19, scope: !2306)
!2308 = !DILocation(line: 289, column: 23, scope: !2306)
!2309 = !DILocation(line: 289, column: 29, scope: !2306)
!2310 = !DILocation(line: 289, column: 36, scope: !2306)
!2311 = !DILocation(line: 289, column: 6, scope: !2285)
!2312 = !DILocation(line: 290, column: 3, scope: !2306)
!2313 = !DILocation(line: 292, column: 6, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 292, column: 6)
!2315 = !DILocation(line: 292, column: 12, scope: !2314)
!2316 = !DILocation(line: 292, column: 19, scope: !2314)
!2317 = !DILocation(line: 292, column: 6, scope: !2285)
!2318 = !DILocation(line: 293, column: 3, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 292, column: 49)
!2320 = !DILocation(line: 293, column: 9, scope: !2319)
!2321 = !DILocation(line: 293, column: 16, scope: !2319)
!2322 = !DILocation(line: 294, column: 22, scope: !2319)
!2323 = !DILocation(line: 294, column: 28, scope: !2319)
!2324 = !DILocation(line: 294, column: 3, scope: !2319)
!2325 = !DILocation(line: 295, column: 2, scope: !2319)
!2326 = !DILocation(line: 296, column: 1, scope: !2285)
!2327 = !DISubprogram(name: "disable_irq_nosync", scope: !144, file: !144, line: 226, type: !2283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2328 = distinct !DISubprogram(name: "dev_pm_enable_wake_irq_complete", scope: !3, file: !3, line: 308, type: !892, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "dev", arg: 1, scope: !2328, file: !3, line: 308, type: !199)
!2331 = !DILocalVariable(name: "wirq", scope: !2328, file: !3, line: 310, type: !1416)
!2332 = !DILocation(line: 308, column: 53, scope: !2328)
!2333 = !DILocation(line: 310, column: 2, scope: !2328)
!2334 = !DILocation(line: 310, column: 19, scope: !2328)
!2335 = !DILocation(line: 310, column: 26, scope: !2328)
!2336 = !DILocation(line: 310, column: 31, scope: !2328)
!2337 = !DILocation(line: 310, column: 37, scope: !2328)
!2338 = !DILocation(line: 312, column: 7, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 312, column: 6)
!2340 = !DILocation(line: 312, column: 12, scope: !2339)
!2341 = !DILocation(line: 312, column: 17, scope: !2339)
!2342 = !DILocation(line: 312, column: 23, scope: !2339)
!2343 = !DILocation(line: 312, column: 30, scope: !2339)
!2344 = !DILocation(line: 312, column: 6, scope: !2328)
!2345 = !DILocation(line: 313, column: 3, scope: !2339)
!2346 = !DILocation(line: 315, column: 6, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 315, column: 6)
!2348 = !DILocation(line: 315, column: 12, scope: !2347)
!2349 = !DILocation(line: 315, column: 19, scope: !2347)
!2350 = !DILocation(line: 315, column: 48, scope: !2347)
!2351 = !DILocation(line: 316, column: 6, scope: !2347)
!2352 = !DILocation(line: 316, column: 12, scope: !2347)
!2353 = !DILocation(line: 316, column: 19, scope: !2347)
!2354 = !DILocation(line: 315, column: 6, scope: !2328)
!2355 = !DILocation(line: 317, column: 14, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 316, column: 49)
!2357 = !DILocation(line: 317, column: 20, scope: !2356)
!2358 = !DILocation(line: 317, column: 3, scope: !2356)
!2359 = !DILocation(line: 318, column: 3, scope: !2356)
!2360 = !DILocation(line: 318, column: 9, scope: !2356)
!2361 = !DILocation(line: 318, column: 16, scope: !2356)
!2362 = !DILocation(line: 319, column: 2, scope: !2356)
!2363 = !DILocation(line: 320, column: 1, scope: !2328)
!2364 = distinct !DISubprogram(name: "dev_pm_arm_wake_irq", scope: !3, file: !3, line: 329, type: !2365, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !1416}
!2367 = !{!2368}
!2368 = !DILocalVariable(name: "wirq", arg: 1, scope: !2364, file: !3, line: 329, type: !1416)
!2369 = !DILocation(line: 329, column: 43, scope: !2364)
!2370 = !DILocation(line: 331, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 331, column: 6)
!2372 = !DILocation(line: 331, column: 6, scope: !2364)
!2373 = !DILocation(line: 332, column: 3, scope: !2371)
!2374 = !DILocation(line: 334, column: 24, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 334, column: 6)
!2376 = !DILocation(line: 334, column: 30, scope: !2375)
!2377 = !DILocation(line: 334, column: 6, scope: !2375)
!2378 = !DILocation(line: 334, column: 6, scope: !2364)
!2379 = !DILocation(line: 335, column: 7, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 335, column: 7)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 334, column: 36)
!2382 = !DILocation(line: 335, column: 13, scope: !2380)
!2383 = !DILocation(line: 335, column: 20, scope: !2380)
!2384 = !DILocation(line: 335, column: 51, scope: !2380)
!2385 = !DILocation(line: 336, column: 9, scope: !2380)
!2386 = !DILocation(line: 336, column: 15, scope: !2380)
!2387 = !DILocation(line: 336, column: 22, scope: !2380)
!2388 = !DILocation(line: 335, column: 7, scope: !2381)
!2389 = !DILocation(line: 337, column: 15, scope: !2380)
!2390 = !DILocation(line: 337, column: 21, scope: !2380)
!2391 = !DILocation(line: 337, column: 4, scope: !2380)
!2392 = !DILocation(line: 339, column: 19, scope: !2381)
!2393 = !DILocation(line: 339, column: 25, scope: !2381)
!2394 = !DILocation(line: 339, column: 3, scope: !2381)
!2395 = !DILocation(line: 340, column: 2, scope: !2381)
!2396 = !DILocation(line: 341, column: 1, scope: !2364)
!2397 = distinct !DISubprogram(name: "device_may_wakeup", scope: !1409, file: !1409, line: 82, type: !2398, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!649, !199}
!2400 = !{!2401}
!2401 = !DILocalVariable(name: "dev", arg: 1, scope: !2397, file: !1409, line: 82, type: !199)
!2402 = !DILocation(line: 82, column: 53, scope: !2397)
!2403 = !DILocation(line: 84, column: 9, scope: !2397)
!2404 = !DILocation(line: 84, column: 14, scope: !2397)
!2405 = !DILocation(line: 84, column: 20, scope: !2397)
!2406 = !DILocation(line: 84, column: 31, scope: !2397)
!2407 = !DILocation(line: 84, column: 36, scope: !2397)
!2408 = !DILocation(line: 84, column: 41, scope: !2397)
!2409 = !DILocation(line: 84, column: 47, scope: !2397)
!2410 = !DILocation(line: 84, column: 35, scope: !2397)
!2411 = !DILocation(line: 84, column: 34, scope: !2397)
!2412 = !DILocation(line: 0, scope: !2397)
!2413 = !DILocation(line: 84, column: 2, scope: !2397)
!2414 = distinct !DISubprogram(name: "enable_irq_wake", scope: !144, file: !144, line: 484, type: !2415, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!46, !7}
!2417 = !{!2418}
!2418 = !DILocalVariable(name: "irq", arg: 1, scope: !2414, file: !144, line: 484, type: !7)
!2419 = !DILocation(line: 484, column: 48, scope: !2414)
!2420 = !DILocation(line: 486, column: 26, scope: !2414)
!2421 = !DILocation(line: 486, column: 9, scope: !2414)
!2422 = !DILocation(line: 486, column: 2, scope: !2414)
!2423 = distinct !DISubprogram(name: "dev_pm_disarm_wake_irq", scope: !3, file: !3, line: 350, type: !2365, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2424)
!2424 = !{!2425}
!2425 = !DILocalVariable(name: "wirq", arg: 1, scope: !2423, file: !3, line: 350, type: !1416)
!2426 = !DILocation(line: 350, column: 46, scope: !2423)
!2427 = !DILocation(line: 352, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 352, column: 6)
!2429 = !DILocation(line: 352, column: 6, scope: !2423)
!2430 = !DILocation(line: 353, column: 3, scope: !2428)
!2431 = !DILocation(line: 355, column: 24, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 355, column: 6)
!2433 = !DILocation(line: 355, column: 30, scope: !2432)
!2434 = !DILocation(line: 355, column: 6, scope: !2432)
!2435 = !DILocation(line: 355, column: 6, scope: !2423)
!2436 = !DILocation(line: 356, column: 20, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 355, column: 36)
!2438 = !DILocation(line: 356, column: 26, scope: !2437)
!2439 = !DILocation(line: 356, column: 3, scope: !2437)
!2440 = !DILocation(line: 358, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 358, column: 7)
!2442 = !DILocation(line: 358, column: 13, scope: !2441)
!2443 = !DILocation(line: 358, column: 20, scope: !2441)
!2444 = !DILocation(line: 358, column: 51, scope: !2441)
!2445 = !DILocation(line: 359, column: 9, scope: !2441)
!2446 = !DILocation(line: 359, column: 15, scope: !2441)
!2447 = !DILocation(line: 359, column: 22, scope: !2441)
!2448 = !DILocation(line: 358, column: 7, scope: !2437)
!2449 = !DILocation(line: 360, column: 23, scope: !2441)
!2450 = !DILocation(line: 360, column: 29, scope: !2441)
!2451 = !DILocation(line: 360, column: 4, scope: !2441)
!2452 = !DILocation(line: 361, column: 2, scope: !2437)
!2453 = !DILocation(line: 362, column: 1, scope: !2423)
!2454 = distinct !DISubprogram(name: "disable_irq_wake", scope: !144, file: !144, line: 489, type: !2415, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "irq", arg: 1, scope: !2454, file: !144, line: 489, type: !7)
!2457 = !DILocation(line: 489, column: 49, scope: !2454)
!2458 = !DILocation(line: 491, column: 26, scope: !2454)
!2459 = !DILocation(line: 491, column: 9, scope: !2454)
!2460 = !DILocation(line: 491, column: 2, scope: !2454)
!2461 = distinct !DISubprogram(name: "kmalloc", scope: !101, file: !101, line: 591, type: !1947, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2462)
!2462 = !{!2463, !2464, !2465}
!2463 = !DILocalVariable(name: "size", arg: 1, scope: !2461, file: !101, line: 591, type: !340)
!2464 = !DILocalVariable(name: "flags", arg: 2, scope: !2461, file: !101, line: 591, type: !177)
!2465 = !DILocalVariable(name: "index", scope: !2466, file: !101, line: 594, type: !7)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !101, line: 593, column: 42)
!2467 = distinct !DILexicalBlock(scope: !2461, file: !101, line: 593, column: 6)
!2468 = !DILocation(line: 591, column: 61, scope: !2461)
!2469 = !DILocation(line: 591, column: 73, scope: !2461)
!2470 = !DILocation(line: 593, column: 27, scope: !2467)
!2471 = !DILocation(line: 593, column: 6, scope: !2467)
!2472 = !DILocation(line: 593, column: 33, scope: !2467)
!2473 = !DILocation(line: 593, column: 36, scope: !2467)
!2474 = !DILocation(line: 593, column: 6, scope: !2461)
!2475 = !DILocation(line: 594, column: 3, scope: !2466)
!2476 = !DILocation(line: 594, column: 16, scope: !2466)
!2477 = !DILocation(line: 596, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2466, file: !101, line: 596, column: 7)
!2479 = !DILocation(line: 596, column: 12, scope: !2478)
!2480 = !DILocation(line: 596, column: 7, scope: !2466)
!2481 = !DILocation(line: 597, column: 25, scope: !2478)
!2482 = !DILocation(line: 597, column: 31, scope: !2478)
!2483 = !DILocation(line: 597, column: 11, scope: !2478)
!2484 = !DILocation(line: 597, column: 4, scope: !2478)
!2485 = !DILocation(line: 599, column: 11, scope: !2466)
!2486 = !DILocation(line: 599, column: 9, scope: !2466)
!2487 = !DILocation(line: 601, column: 33, scope: !2466)
!2488 = !DILocation(line: 601, column: 40, scope: !2466)
!2489 = !DILocation(line: 601, column: 20, scope: !2466)
!2490 = !DILocation(line: 601, column: 5, scope: !2466)
!2491 = !DILocation(line: 601, column: 51, scope: !2466)
!2492 = !DILocation(line: 602, column: 5, scope: !2466)
!2493 = !DILocation(line: 602, column: 12, scope: !2466)
!2494 = !DILocation(line: 600, column: 10, scope: !2466)
!2495 = !DILocation(line: 600, column: 3, scope: !2466)
!2496 = !DILocation(line: 603, column: 2, scope: !2467)
!2497 = !DILocation(line: 604, column: 19, scope: !2461)
!2498 = !DILocation(line: 604, column: 25, scope: !2461)
!2499 = !DILocation(line: 604, column: 9, scope: !2461)
!2500 = !DILocation(line: 604, column: 2, scope: !2461)
!2501 = !DILocation(line: 605, column: 1, scope: !2461)
!2502 = !DISubprogram(name: "kmalloc_large", scope: !101, file: !101, line: 531, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2503 = distinct !DISubprogram(name: "__kmalloc_index", scope: !101, file: !101, line: 444, type: !2504, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!7, !340, !649}
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "size", arg: 1, scope: !2503, file: !101, line: 444, type: !340)
!2508 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2503, file: !101, line: 445, type: !649)
!2509 = !DILocation(line: 444, column: 60, scope: !2503)
!2510 = !DILocation(line: 445, column: 16, scope: !2503)
!2511 = !DILocation(line: 447, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 447, column: 6)
!2513 = !DILocation(line: 447, column: 6, scope: !2503)
!2514 = !DILocation(line: 448, column: 3, scope: !2512)
!2515 = !DILocation(line: 450, column: 6, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 450, column: 6)
!2517 = !DILocation(line: 450, column: 11, scope: !2516)
!2518 = !DILocation(line: 450, column: 6, scope: !2503)
!2519 = !DILocation(line: 451, column: 3, scope: !2516)
!2520 = !DILocation(line: 453, column: 32, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 453, column: 6)
!2522 = !DILocation(line: 453, column: 37, scope: !2521)
!2523 = !DILocation(line: 453, column: 42, scope: !2521)
!2524 = !DILocation(line: 453, column: 45, scope: !2521)
!2525 = !DILocation(line: 453, column: 50, scope: !2521)
!2526 = !DILocation(line: 453, column: 6, scope: !2503)
!2527 = !DILocation(line: 454, column: 3, scope: !2521)
!2528 = !DILocation(line: 455, column: 32, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 455, column: 6)
!2530 = !DILocation(line: 455, column: 37, scope: !2529)
!2531 = !DILocation(line: 455, column: 43, scope: !2529)
!2532 = !DILocation(line: 455, column: 46, scope: !2529)
!2533 = !DILocation(line: 455, column: 51, scope: !2529)
!2534 = !DILocation(line: 455, column: 6, scope: !2503)
!2535 = !DILocation(line: 456, column: 3, scope: !2529)
!2536 = !DILocation(line: 457, column: 6, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 457, column: 6)
!2538 = !DILocation(line: 457, column: 11, scope: !2537)
!2539 = !DILocation(line: 457, column: 6, scope: !2503)
!2540 = !DILocation(line: 457, column: 26, scope: !2537)
!2541 = !DILocation(line: 458, column: 6, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 458, column: 6)
!2543 = !DILocation(line: 458, column: 11, scope: !2542)
!2544 = !DILocation(line: 458, column: 6, scope: !2503)
!2545 = !DILocation(line: 458, column: 26, scope: !2542)
!2546 = !DILocation(line: 459, column: 6, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 459, column: 6)
!2548 = !DILocation(line: 459, column: 11, scope: !2547)
!2549 = !DILocation(line: 459, column: 6, scope: !2503)
!2550 = !DILocation(line: 459, column: 26, scope: !2547)
!2551 = !DILocation(line: 460, column: 6, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 460, column: 6)
!2553 = !DILocation(line: 460, column: 11, scope: !2552)
!2554 = !DILocation(line: 460, column: 6, scope: !2503)
!2555 = !DILocation(line: 460, column: 26, scope: !2552)
!2556 = !DILocation(line: 461, column: 6, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 461, column: 6)
!2558 = !DILocation(line: 461, column: 11, scope: !2557)
!2559 = !DILocation(line: 461, column: 6, scope: !2503)
!2560 = !DILocation(line: 461, column: 26, scope: !2557)
!2561 = !DILocation(line: 462, column: 6, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 462, column: 6)
!2563 = !DILocation(line: 462, column: 11, scope: !2562)
!2564 = !DILocation(line: 462, column: 6, scope: !2503)
!2565 = !DILocation(line: 462, column: 26, scope: !2562)
!2566 = !DILocation(line: 463, column: 6, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 463, column: 6)
!2568 = !DILocation(line: 463, column: 11, scope: !2567)
!2569 = !DILocation(line: 463, column: 6, scope: !2503)
!2570 = !DILocation(line: 463, column: 26, scope: !2567)
!2571 = !DILocation(line: 464, column: 6, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 464, column: 6)
!2573 = !DILocation(line: 464, column: 11, scope: !2572)
!2574 = !DILocation(line: 464, column: 6, scope: !2503)
!2575 = !DILocation(line: 464, column: 26, scope: !2572)
!2576 = !DILocation(line: 465, column: 6, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 465, column: 6)
!2578 = !DILocation(line: 465, column: 11, scope: !2577)
!2579 = !DILocation(line: 465, column: 6, scope: !2503)
!2580 = !DILocation(line: 465, column: 26, scope: !2577)
!2581 = !DILocation(line: 466, column: 6, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 466, column: 6)
!2583 = !DILocation(line: 466, column: 11, scope: !2582)
!2584 = !DILocation(line: 466, column: 6, scope: !2503)
!2585 = !DILocation(line: 466, column: 26, scope: !2582)
!2586 = !DILocation(line: 467, column: 6, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 467, column: 6)
!2588 = !DILocation(line: 467, column: 11, scope: !2587)
!2589 = !DILocation(line: 467, column: 6, scope: !2503)
!2590 = !DILocation(line: 467, column: 26, scope: !2587)
!2591 = !DILocation(line: 468, column: 6, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 468, column: 6)
!2593 = !DILocation(line: 468, column: 11, scope: !2592)
!2594 = !DILocation(line: 468, column: 6, scope: !2503)
!2595 = !DILocation(line: 468, column: 26, scope: !2592)
!2596 = !DILocation(line: 469, column: 6, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 469, column: 6)
!2598 = !DILocation(line: 469, column: 11, scope: !2597)
!2599 = !DILocation(line: 469, column: 6, scope: !2503)
!2600 = !DILocation(line: 469, column: 26, scope: !2597)
!2601 = !DILocation(line: 470, column: 6, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 470, column: 6)
!2603 = !DILocation(line: 470, column: 11, scope: !2602)
!2604 = !DILocation(line: 470, column: 6, scope: !2503)
!2605 = !DILocation(line: 470, column: 26, scope: !2602)
!2606 = !DILocation(line: 471, column: 6, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 471, column: 6)
!2608 = !DILocation(line: 471, column: 11, scope: !2607)
!2609 = !DILocation(line: 471, column: 6, scope: !2503)
!2610 = !DILocation(line: 471, column: 26, scope: !2607)
!2611 = !DILocation(line: 472, column: 6, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 472, column: 6)
!2613 = !DILocation(line: 472, column: 11, scope: !2612)
!2614 = !DILocation(line: 472, column: 6, scope: !2503)
!2615 = !DILocation(line: 472, column: 26, scope: !2612)
!2616 = !DILocation(line: 473, column: 6, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 473, column: 6)
!2618 = !DILocation(line: 473, column: 11, scope: !2617)
!2619 = !DILocation(line: 473, column: 6, scope: !2503)
!2620 = !DILocation(line: 473, column: 26, scope: !2617)
!2621 = !DILocation(line: 474, column: 6, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 474, column: 6)
!2623 = !DILocation(line: 474, column: 11, scope: !2622)
!2624 = !DILocation(line: 474, column: 6, scope: !2503)
!2625 = !DILocation(line: 474, column: 27, scope: !2622)
!2626 = !DILocation(line: 475, column: 6, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 475, column: 6)
!2628 = !DILocation(line: 475, column: 11, scope: !2627)
!2629 = !DILocation(line: 475, column: 6, scope: !2503)
!2630 = !DILocation(line: 475, column: 32, scope: !2627)
!2631 = !DILocation(line: 477, column: 50, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2503, file: !101, line: 477, column: 6)
!2633 = !DILocation(line: 477, column: 6, scope: !2503)
!2634 = !DILocation(line: 478, column: 3, scope: !2632)
!2635 = !DILocation(line: 478, column: 3, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !101, line: 478, column: 3)
!2637 = distinct !DILexicalBlock(scope: !2632, file: !101, line: 478, column: 3)
!2638 = !{i32 -2142070271}
!2639 = !DILocation(line: 478, column: 3, scope: !2637)
!2640 = !DILocation(line: 480, column: 3, scope: !2632)
!2641 = !DILocation(line: 480, column: 3, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2632, file: !101, line: 480, column: 3)
!2643 = !DILocation(line: 480, column: 3, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2642, file: !101, line: 480, column: 3)
!2645 = !DILocation(line: 480, column: 3, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !101, line: 480, column: 3)
!2647 = !{i64 2152897228, i64 2152897257, i64 2152897303, i64 2152897361, i64 2152897415, i64 2152897469, i64 2152897524, i64 2152897555}
!2648 = !DILocation(line: 483, column: 2, scope: !2503)
!2649 = !DILocation(line: 484, column: 1, scope: !2503)
!2650 = !DISubprogram(name: "kmalloc_trace", scope: !101, file: !101, line: 525, type: !2651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!179, !2653, !177, !340}
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2655, line: 11, flags: DIFlagFwdDecl)
!2655 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2656 = distinct !DISubprogram(name: "kmalloc_type", scope: !101, file: !101, line: 401, type: !2657, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!100, !177, !180}
!2659 = !{!2660, !2661}
!2660 = !DILocalVariable(name: "flags", arg: 1, scope: !2656, file: !101, line: 401, type: !177)
!2661 = !DILocalVariable(name: "caller", arg: 2, scope: !2656, file: !101, line: 401, type: !180)
!2662 = !DILocation(line: 401, column: 67, scope: !2656)
!2663 = !DILocation(line: 401, column: 88, scope: !2656)
!2664 = !DILocation(line: 407, column: 6, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2656, file: !101, line: 407, column: 6)
!2666 = !DILocation(line: 407, column: 6, scope: !2656)
!2667 = !DILocation(line: 413, column: 3, scope: !2665)
!2668 = !DILocation(line: 423, column: 38, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2656, file: !101, line: 423, column: 6)
!2670 = !DILocation(line: 423, column: 44, scope: !2669)
!2671 = !DILocation(line: 423, column: 6, scope: !2656)
!2672 = !DILocation(line: 424, column: 3, scope: !2669)
!2673 = !DILocation(line: 426, column: 3, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2656, file: !101, line: 425, column: 6)
!2675 = !DILocation(line: 429, column: 1, scope: !2656)
!2676 = !DISubprogram(name: "__kmalloc", scope: !101, file: !101, line: 488, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2677 = !DISubprogram(name: "__compiletime_assert_204", scope: !101, file: !101, line: 478, type: !1325, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2678 = !DISubprogram(name: "__warn_printk", scope: !1130, file: !1130, line: 93, type: !2679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !207, null}
!2681 = !DISubprogram(name: "dev_driver_string", scope: !26, file: !26, line: 1247, type: !2682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!207, !883}
!2684 = distinct !DISubprogram(name: "dev_name", scope: !26, file: !26, line: 858, type: !2682, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2685)
!2685 = !{!2686}
!2686 = !DILocalVariable(name: "dev", arg: 1, scope: !2684, file: !26, line: 858, type: !883)
!2687 = !DILocation(line: 858, column: 57, scope: !2684)
!2688 = !DILocation(line: 861, column: 6, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2684, file: !26, line: 861, column: 6)
!2690 = !DILocation(line: 861, column: 11, scope: !2689)
!2691 = !DILocation(line: 861, column: 6, scope: !2684)
!2692 = !DILocation(line: 862, column: 10, scope: !2689)
!2693 = !DILocation(line: 862, column: 15, scope: !2689)
!2694 = !DILocation(line: 862, column: 3, scope: !2689)
!2695 = !DILocation(line: 864, column: 23, scope: !2684)
!2696 = !DILocation(line: 864, column: 28, scope: !2684)
!2697 = !DILocation(line: 864, column: 9, scope: !2684)
!2698 = !DILocation(line: 864, column: 2, scope: !2684)
!2699 = !DILocation(line: 865, column: 1, scope: !2684)
!2700 = !DISubprogram(name: "device_wakeup_attach_irq", scope: !1418, file: !1418, line: 50, type: !2701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !199, !1416}
!2703 = distinct !DISubprogram(name: "kobject_name", scope: !204, file: !204, line: 87, type: !281, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2704)
!2704 = !{!2705}
!2705 = !DILocalVariable(name: "kobj", arg: 1, scope: !2703, file: !204, line: 87, type: !276)
!2706 = !DILocation(line: 87, column: 62, scope: !2703)
!2707 = !DILocation(line: 89, column: 9, scope: !2703)
!2708 = !DILocation(line: 89, column: 15, scope: !2703)
!2709 = !DILocation(line: 89, column: 2, scope: !2703)
!2710 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !2082, file: !2082, line: 43, type: !2711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !2085, !180}
!2713 = !DISubprogram(name: "kasprintf", scope: !2714, file: !2714, line: 16, type: !2715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2714 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!293, !177, !207, null}
!2717 = distinct !DISubprogram(name: "irq_set_status_flags", scope: !111, file: !111, line: 760, type: !2718, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !7, !180}
!2720 = !{!2721, !2722}
!2721 = !DILocalVariable(name: "irq", arg: 1, scope: !2717, file: !111, line: 760, type: !7)
!2722 = !DILocalVariable(name: "set", arg: 2, scope: !2717, file: !111, line: 760, type: !180)
!2723 = !DILocation(line: 760, column: 54, scope: !2717)
!2724 = !DILocation(line: 760, column: 73, scope: !2717)
!2725 = !DILocation(line: 762, column: 20, scope: !2717)
!2726 = !DILocation(line: 762, column: 28, scope: !2717)
!2727 = !DILocation(line: 762, column: 2, scope: !2717)
!2728 = !DILocation(line: 763, column: 1, scope: !2717)
!2729 = !DISubprogram(name: "request_threaded_irq", scope: !144, file: !144, line: 147, type: !2730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!46, !7, !2732, !2732, !180, !207, !179}
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !144, line: 100, baseType: !2733)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!2736, !46, !179}
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !138, line: 17, baseType: !137)
!2737 = distinct !DISubprogram(name: "handle_threaded_wake_irq", scope: !3, file: !3, line: 124, type: !2734, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2738)
!2738 = !{!2739, !2740, !2741, !2742}
!2739 = !DILocalVariable(name: "irq", arg: 1, scope: !2737, file: !3, line: 124, type: !46)
!2740 = !DILocalVariable(name: "_wirq", arg: 2, scope: !2737, file: !3, line: 124, type: !179)
!2741 = !DILocalVariable(name: "wirq", scope: !2737, file: !3, line: 126, type: !1416)
!2742 = !DILocalVariable(name: "res", scope: !2737, file: !3, line: 127, type: !46)
!2743 = !DILocation(line: 124, column: 49, scope: !2737)
!2744 = !DILocation(line: 124, column: 60, scope: !2737)
!2745 = !DILocation(line: 126, column: 2, scope: !2737)
!2746 = !DILocation(line: 126, column: 19, scope: !2737)
!2747 = !DILocation(line: 126, column: 26, scope: !2737)
!2748 = !DILocation(line: 127, column: 2, scope: !2737)
!2749 = !DILocation(line: 127, column: 6, scope: !2737)
!2750 = !DILocation(line: 130, column: 42, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 130, column: 6)
!2752 = !DILocation(line: 130, column: 25, scope: !2751)
!2753 = !DILocation(line: 130, column: 6, scope: !2751)
!2754 = !DILocation(line: 130, column: 6, scope: !2737)
!2755 = !DILocation(line: 131, column: 19, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 130, column: 49)
!2757 = !DILocation(line: 131, column: 25, scope: !2756)
!2758 = !DILocation(line: 131, column: 3, scope: !2756)
!2759 = !DILocation(line: 133, column: 3, scope: !2756)
!2760 = !DILocation(line: 137, column: 26, scope: !2737)
!2761 = !DILocation(line: 137, column: 32, scope: !2737)
!2762 = !DILocation(line: 137, column: 8, scope: !2737)
!2763 = !DILocation(line: 137, column: 6, scope: !2737)
!2764 = !DILocation(line: 138, column: 6, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 138, column: 6)
!2766 = !DILocation(line: 138, column: 10, scope: !2765)
!2767 = !DILocation(line: 138, column: 6, scope: !2737)
!2768 = !DILocation(line: 139, column: 3, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 139, column: 3)
!2770 = !DILocation(line: 139, column: 3, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 139, column: 3)
!2772 = !DILocation(line: 139, column: 3, scope: !2765)
!2773 = !DILocation(line: 142, column: 2, scope: !2737)
!2774 = !DILocation(line: 143, column: 1, scope: !2737)
!2775 = !DISubprogram(name: "irq_modify_status", scope: !111, file: !111, line: 758, type: !2776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !7, !180, !180}
!2778 = distinct !DISubprogram(name: "irqd_is_wakeup_set", scope: !111, file: !111, line: 336, type: !2779, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2889)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!649, !2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !111, line: 179, size: 448, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787, !2808, !2886, !2887, !2888}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2782, file: !111, line: 180, baseType: !1230, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2782, file: !111, line: 181, baseType: !7, size: 32, offset: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !2782, file: !111, line: 182, baseType: !180, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2782, file: !111, line: 183, baseType: !2788, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !111, line: 147, size: 320, elements: !2790)
!2790 = !{!2791, !2792, !2793, !2794, !2797, !2807}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !2789, file: !111, line: 148, baseType: !7, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2789, file: !111, line: 150, baseType: !7, size: 32, offset: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2789, file: !111, line: 152, baseType: !179, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !2789, file: !111, line: 153, baseType: !2795, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !111, line: 129, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !2789, file: !111, line: 155, baseType: !2798, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !2799, line: 913, baseType: !2800)
!2799 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2801, size: 64, elements: !2805)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2799, line: 19, size: 64, elements: !2802)
!2802 = !{!2803}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2801, file: !2799, line: 19, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 64, elements: !2805)
!2805 = !{!2806}
!2806 = !DISubrange(count: 1)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !2789, file: !111, line: 158, baseType: !2798, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2782, file: !111, line: 184, baseType: !2809, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !111, line: 501, size: 2112, elements: !2811)
!2811 = !{!2812, !2813, !2817, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2834, !2838, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2853, !2854, !2855, !2861, !2862, !2867, !2871, !2875, !2879, !2883, !2884, !2885}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2810, file: !111, line: 502, baseType: !207, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !2810, file: !111, line: 503, baseType: !2814, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!7, !2781}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !2810, file: !111, line: 504, baseType: !2818, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !2781}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !2810, file: !111, line: 505, baseType: !2818, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !2810, file: !111, line: 506, baseType: !2818, size: 64, offset: 256)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !2810, file: !111, line: 508, baseType: !2818, size: 64, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !2810, file: !111, line: 509, baseType: !2818, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !2810, file: !111, line: 510, baseType: !2818, size: 64, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !2810, file: !111, line: 511, baseType: !2818, size: 64, offset: 512)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !2810, file: !111, line: 512, baseType: !2818, size: 64, offset: 576)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !2810, file: !111, line: 514, baseType: !2829, size: 64, offset: 640)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!46, !2781, !2832, !649}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !2810, file: !111, line: 515, baseType: !2835, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!46, !2781}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !2810, file: !111, line: 516, baseType: !2839, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!46, !2781, !7}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !2810, file: !111, line: 517, baseType: !2839, size: 64, offset: 832)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !2810, file: !111, line: 519, baseType: !2818, size: 64, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !2810, file: !111, line: 520, baseType: !2818, size: 64, offset: 960)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !2810, file: !111, line: 526, baseType: !2818, size: 64, offset: 1024)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !2810, file: !111, line: 527, baseType: !2818, size: 64, offset: 1088)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !2810, file: !111, line: 528, baseType: !2818, size: 64, offset: 1152)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !2810, file: !111, line: 530, baseType: !2818, size: 64, offset: 1216)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !2810, file: !111, line: 532, baseType: !2850, size: 64, offset: 1280)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !2781, !787}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !2810, file: !111, line: 533, baseType: !2835, size: 64, offset: 1344)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !2810, file: !111, line: 534, baseType: !2818, size: 64, offset: 1408)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !2810, file: !111, line: 536, baseType: !2856, size: 64, offset: 1472)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null, !2781, !2859}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !111, line: 29, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !2810, file: !111, line: 537, baseType: !2856, size: 64, offset: 1536)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !2810, file: !111, line: 539, baseType: !2863, size: 64, offset: 1600)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!46, !2781, !143, !2866}
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !2810, file: !111, line: 540, baseType: !2868, size: 64, offset: 1664)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!46, !2781, !143, !649}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !2810, file: !111, line: 542, baseType: !2872, size: 64, offset: 1728)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!46, !2781, !179}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !2810, file: !111, line: 544, baseType: !2876, size: 64, offset: 1792)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{null, !2781, !7}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !2810, file: !111, line: 545, baseType: !2880, size: 64, offset: 1856)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{null, !2781, !2832}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !2810, file: !111, line: 547, baseType: !2835, size: 64, offset: 1920)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !2810, file: !111, line: 548, baseType: !2818, size: 64, offset: 1984)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2810, file: !111, line: 550, baseType: !180, size: 64, offset: 2048)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2782, file: !111, line: 185, baseType: !1653, size: 64, offset: 256)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !2782, file: !111, line: 187, baseType: !2781, size: 64, offset: 320)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2782, file: !111, line: 189, baseType: !179, size: 64, offset: 384)
!2889 = !{!2890}
!2890 = !DILocalVariable(name: "d", arg: 1, scope: !2778, file: !111, line: 336, type: !2781)
!2891 = !DILocation(line: 336, column: 56, scope: !2778)
!2892 = !DILocation(line: 338, column: 9, scope: !2778)
!2893 = !DILocation(line: 338, column: 28, scope: !2778)
!2894 = !DILocation(line: 338, column: 2, scope: !2778)
!2895 = !DISubprogram(name: "irq_get_irq_data", scope: !111, file: !111, line: 813, type: !2896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!2781, !7}
!2898 = distinct !DISubprogram(name: "pm_wakeup_event", scope: !1409, file: !1409, line: 212, type: !2899, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !199, !7}
!2901 = !{!2902, !2903}
!2902 = !DILocalVariable(name: "dev", arg: 1, scope: !2898, file: !1409, line: 212, type: !199)
!2903 = !DILocalVariable(name: "msec", arg: 2, scope: !2898, file: !1409, line: 212, type: !7)
!2904 = !DILocation(line: 212, column: 51, scope: !2898)
!2905 = !DILocation(line: 212, column: 69, scope: !2898)
!2906 = !DILocation(line: 214, column: 29, scope: !2898)
!2907 = !DILocation(line: 214, column: 34, scope: !2898)
!2908 = !DILocation(line: 214, column: 9, scope: !2898)
!2909 = !DILocation(line: 214, column: 2, scope: !2898)
!2910 = distinct !DISubprogram(name: "pm_runtime_resume", scope: !2911, file: !2911, line: 361, type: !901, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2911 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95dc537c0e4be945b3dc143d0bbabcd4")
!2912 = !{!2913}
!2913 = !DILocalVariable(name: "dev", arg: 1, scope: !2910, file: !2911, line: 361, type: !199)
!2914 = !DILocation(line: 361, column: 52, scope: !2910)
!2915 = !DILocation(line: 363, column: 29, scope: !2910)
!2916 = !DILocation(line: 363, column: 9, scope: !2910)
!2917 = !DILocation(line: 363, column: 2, scope: !2910)
!2918 = !DISubprogram(name: "_dev_warn", scope: !2919, file: !2919, line: 52, type: !2920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2919 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !883, !207, null}
!2922 = !DISubprogram(name: "pm_wakeup_dev_event", scope: !1409, file: !1409, line: 118, type: !2923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !199, !7, !649}
!2925 = !DISubprogram(name: "__pm_runtime_resume", scope: !2911, file: !2911, line: 74, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2926 = !DISubprogram(name: "irq_set_irq_wake", scope: !144, file: !144, line: 482, type: !2927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!46, !7, !7}
