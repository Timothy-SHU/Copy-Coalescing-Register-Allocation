; ModuleID = 'kernel/time/clockevents.c'
source_filename = "kernel/time/clockevents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_clockevent_delta2ns: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad clockevent_delta2ns ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_clockevents_unbind_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad clockevents_unbind_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_clockevents_register_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad clockevents_register_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_clockevents_config_and_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad clockevents_config_and_register ; .previous"
module asm ".section\09\22.initcall6.init..kmod_clockevents__214_777_clockevents_init_sysfs\22, \22a\22\09\09"
module asm "__initcall__kmod_clockevents__214_777_clockevents_init_sysfs6:\09\09\09"
module asm ".long\09__initstub__kmod_clockevents__214_777_clockevents_init_sysfs6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.pcpu_hot = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tick_device = type { ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [48 x i8] }
%struct.ce_unbind = type { ptr, i32 }

@__UNIQUE_ID___addressable_clockevent_delta2ns206 = internal global ptr @clockevent_delta2ns, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"kernel/time/clockevents.c\00", align 1, !dbg !1786
@clockevents_program_event.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !1791
@.str.1 = private unnamed_addr constant [19 x i8] c"Current state: %d\0A\00", align 1, !dbg !1827
@clockevents_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @clockevents_mutex, i64 16), ptr getelementptr (i8, ptr @clockevents_mutex, i64 16) } }, align 8, !dbg !1885
@__UNIQUE_ID___addressable_clockevents_unbind_device211 = internal global ptr @clockevents_unbind_device, section ".discard.addressable", align 8, !dbg !1832
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !1834
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@cpu_all_bits = external dso_local constant [1 x i64], align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"%s cpumask == cpu_all_mask, using cpu_possible_mask instead\0A\00", align 1, !dbg !1839
@clockevents_lock = internal global %struct.raw_spinlock zeroinitializer, align 4, !dbg !1887
@clockevent_devices = internal global %struct.list_head { ptr @clockevent_devices, ptr @clockevent_devices }, align 8, !dbg !1889
@__UNIQUE_ID___addressable_clockevents_register_device212 = internal global ptr @clockevents_register_device, section ".discard.addressable", align 8, !dbg !1844
@__UNIQUE_ID___addressable_clockevents_config_and_register213 = internal global ptr @clockevents_config_and_register, section ".discard.addressable", align 8, !dbg !1846
@clockevents_released = internal global %struct.list_head { ptr @clockevents_released, ptr @clockevents_released }, align 8, !dbg !1891
@__UNIQUE_ID___addressable___initstub__kmod_clockevents__214_777_clockevents_init_sysfs6215 = internal global ptr @__initstub__kmod_clockevents__214_777_clockevents_init_sysfs6, section ".discard.addressable", align 8, !dbg !1848
@__clockevents_switch_state.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !1850
@.str.4 = private unnamed_addr constant [40 x i8] c"\014CE: Reprogramming failure. Giving up\0A\00", align 1, !dbg !1872
@.str.5 = private unnamed_addr constant [46 x i8] c"\014CE: %s increased min_delta_ns to %llu nsec\0A\00", align 1, !dbg !1877
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1, !dbg !1882
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@clockevents_subsys = internal global %struct.bus_type { ptr @.str.7, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 8, !dbg !1903
@.str.7 = private unnamed_addr constant [12 x i8] c"clockevents\00", align 1, !dbg !1893
@.str.8 = private unnamed_addr constant [11 x i8] c"clockevent\00", align 1, !dbg !1898
@tick_percpu_dev = internal global %struct.device zeroinitializer, section ".data..percpu", align 8, !dbg !1905
@dev_attr_current_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @current_device_show, ptr null }, align 8, !dbg !1912
@dev_attr_unbind_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 128 }, ptr null, ptr @unbind_device_store }, align 8, !dbg !1941
@.str.9 = private unnamed_addr constant [15 x i8] c"current_device\00", align 1, !dbg !1907
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1926
@tick_bc_dev = internal global %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str.11, ptr null, ptr @clockevents_subsys, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 8, !dbg !1934
@.str.11 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1, !dbg !1929
@.str.12 = private unnamed_addr constant [14 x i8] c"unbind_device\00", align 1, !dbg !1936
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_clockevent_delta2ns206, ptr @__UNIQUE_ID___addressable_clockevents_unbind_device211, ptr @__UNIQUE_ID___addressable_clockevents_register_device212, ptr @__UNIQUE_ID___addressable_clockevents_config_and_register213, ptr @__UNIQUE_ID___addressable___initstub__kmod_clockevents__214_777_clockevents_init_sysfs6215], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @clockevent_delta2ns(i64 noundef %latch, ptr noundef %evt) #0 align 16 !dbg !1952 {
entry:
  %latch.addr = alloca i64, align 8
  %evt.addr = alloca ptr, align 8
  store i64 %latch, ptr %latch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %latch.addr, metadata !1956, metadata !DIExpression()), !dbg !1958
  store ptr %evt, ptr %evt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %evt.addr, metadata !1957, metadata !DIExpression()), !dbg !1959
  %0 = load i64, ptr %latch.addr, align 8, !dbg !1960
  %1 = load ptr, ptr %evt.addr, align 8, !dbg !1961
  %call = call i64 @cev_delta2ns(i64 noundef %0, ptr noundef %1, i1 noundef zeroext false) #11, !dbg !1962
  ret i64 %call, !dbg !1963
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cev_delta2ns(i64 noundef %latch, ptr noundef %evt, i1 noundef zeroext %ismax) #0 align 16 !dbg !1964 {
entry:
  %latch.addr = alloca i64, align 8
  %evt.addr = alloca ptr, align 8
  %ismax.addr = alloca i8, align 1
  %clc = alloca i64, align 8
  %rnd = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  store i64 %latch, ptr %latch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %latch.addr, metadata !1968, metadata !DIExpression()), !dbg !1983
  store ptr %evt, ptr %evt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %evt.addr, metadata !1969, metadata !DIExpression()), !dbg !1984
  %frombool = zext i1 %ismax to i8
  store i8 %frombool, ptr %ismax.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ismax.addr, metadata !1970, metadata !DIExpression()), !dbg !1985
  call void @llvm.lifetime.start.p0(i64 8, ptr %clc) #12, !dbg !1986
  call void @llvm.dbg.declare(metadata ptr %clc, metadata !1971, metadata !DIExpression()), !dbg !1987
  %0 = load i64, ptr %latch.addr, align 8, !dbg !1988
  %1 = load ptr, ptr %evt.addr, align 8, !dbg !1989
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 7, !dbg !1990
  %2 = load i32, ptr %shift, align 4, !dbg !1990
  %sh_prom = zext i32 %2 to i64, !dbg !1991
  %shl = shl i64 %0, %sh_prom, !dbg !1991
  store i64 %shl, ptr %clc, align 8, !dbg !1987
  call void @llvm.lifetime.start.p0(i64 8, ptr %rnd) #12, !dbg !1992
  call void @llvm.dbg.declare(metadata ptr %rnd, metadata !1972, metadata !DIExpression()), !dbg !1993
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1973, metadata !DIExpression()), !dbg !1994
  %3 = load ptr, ptr %evt.addr, align 8, !dbg !1994
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 6, !dbg !1994
  %4 = load i32, ptr %mult, align 16, !dbg !1994
  %tobool = icmp ne i32 %4, 0, !dbg !1994
  %lnot = xor i1 %tobool, true, !dbg !1994
  %lnot1 = xor i1 %lnot, true, !dbg !1994
  %lnot2 = xor i1 %lnot1, true, !dbg !1994
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1994
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1994
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1995
  %tobool3 = icmp ne i32 %5, 0, !dbg !1995
  %lnot4 = xor i1 %tobool3, true, !dbg !1995
  %lnot6 = xor i1 %lnot4, true, !dbg !1995
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1995
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1995
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1995
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1995
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1994

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1995

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !1996
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1976, metadata !DIExpression()), !dbg !1996
  store i32 2305, ptr %__flags, align 4, !dbg !1996
  br label %do.body9, !dbg !1996

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1997

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1997

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !1996

do.body10:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !1999
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 38, i32 %6, i64 12) #12, !dbg !1999, !srcloc !2001
  br label %do.cond11, !dbg !1999

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1999

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !1996

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !2002

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2002

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !1995
  br label %do.cond16, !dbg !1996

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !1996

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !1996

if.end:                                           ; preds = %do.end17, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !1994
  %tobool18 = icmp ne i32 %7, 0, !dbg !1994
  %lnot19 = xor i1 %tobool18, true, !dbg !1994
  %lnot21 = xor i1 %lnot19, true, !dbg !1994
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !1994
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !1994
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !1994
  store i64 %expval24, ptr %tmp, align 8, !dbg !1995
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !2004
  %8 = load i64, ptr %tmp, align 8, !dbg !1994
  %tobool25 = icmp ne i64 %8, 0, !dbg !2004
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !2005

if.then26:                                        ; preds = %if.end
  %9 = load ptr, ptr %evt.addr, align 8, !dbg !2006
  %mult27 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 6, !dbg !2007
  store i32 1, ptr %mult27, align 16, !dbg !2008
  br label %if.end28, !dbg !2006

if.end28:                                         ; preds = %if.then26, %if.end
  %10 = load ptr, ptr %evt.addr, align 8, !dbg !2009
  %mult29 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 6, !dbg !2010
  %11 = load i32, ptr %mult29, align 16, !dbg !2010
  %conv30 = zext i32 %11 to i64, !dbg !2011
  %sub = sub i64 %conv30, 1, !dbg !2012
  store i64 %sub, ptr %rnd, align 8, !dbg !2013
  %12 = load i64, ptr %clc, align 8, !dbg !2014
  %13 = load ptr, ptr %evt.addr, align 8, !dbg !2016
  %shift31 = getelementptr inbounds %struct.clock_event_device, ptr %13, i32 0, i32 7, !dbg !2017
  %14 = load i32, ptr %shift31, align 4, !dbg !2017
  %sh_prom32 = zext i32 %14 to i64, !dbg !2018
  %shr = lshr i64 %12, %sh_prom32, !dbg !2018
  %15 = load i64, ptr %latch.addr, align 8, !dbg !2019
  %cmp = icmp ne i64 %shr, %15, !dbg !2020
  br i1 %cmp, label %if.then34, label %if.end35, !dbg !2021

if.then34:                                        ; preds = %if.end28
  store i64 -1, ptr %clc, align 8, !dbg !2022
  br label %if.end35, !dbg !2023

if.end35:                                         ; preds = %if.then34, %if.end28
  %16 = load i64, ptr %clc, align 8, !dbg !2024
  %sub36 = sub i64 -1, %16, !dbg !2026
  %17 = load i64, ptr %rnd, align 8, !dbg !2027
  %cmp37 = icmp ugt i64 %sub36, %17, !dbg !2028
  br i1 %cmp37, label %land.lhs.true, label %if.end48, !dbg !2029

land.lhs.true:                                    ; preds = %if.end35
  %18 = load i8, ptr %ismax.addr, align 1, !dbg !2030, !range !2031, !noundef !412
  %tobool39 = trunc i8 %18 to i1, !dbg !2030
  br i1 %tobool39, label %lor.lhs.false, label %if.then47, !dbg !2032

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load ptr, ptr %evt.addr, align 8, !dbg !2033
  %mult40 = getelementptr inbounds %struct.clock_event_device, ptr %19, i32 0, i32 6, !dbg !2034
  %20 = load i32, ptr %mult40, align 16, !dbg !2034
  %conv41 = zext i32 %20 to i64, !dbg !2033
  %21 = load ptr, ptr %evt.addr, align 8, !dbg !2035
  %shift42 = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 7, !dbg !2036
  %22 = load i32, ptr %shift42, align 4, !dbg !2036
  %sh_prom43 = zext i32 %22 to i64, !dbg !2037
  %shl44 = shl i64 1, %sh_prom43, !dbg !2037
  %cmp45 = icmp ule i64 %conv41, %shl44, !dbg !2038
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !2039

if.then47:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %23 = load i64, ptr %rnd, align 8, !dbg !2040
  %24 = load i64, ptr %clc, align 8, !dbg !2041
  %add = add i64 %24, %23, !dbg !2041
  store i64 %add, ptr %clc, align 8, !dbg !2041
  br label %if.end48, !dbg !2042

if.end48:                                         ; preds = %if.then47, %lor.lhs.false, %if.end35
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #12, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !1979, metadata !DIExpression()), !dbg !2043
  %25 = load ptr, ptr %evt.addr, align 8, !dbg !2043
  %mult49 = getelementptr inbounds %struct.clock_event_device, ptr %25, i32 0, i32 6, !dbg !2043
  %26 = load i32, ptr %mult49, align 16, !dbg !2043
  store i32 %26, ptr %__base, align 4, !dbg !2043
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #12, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !1982, metadata !DIExpression()), !dbg !2043
  %27 = load i64, ptr %clc, align 8, !dbg !2043
  %28 = load i32, ptr %__base, align 4, !dbg !2043
  %conv50 = zext i32 %28 to i64, !dbg !2043
  %rem = urem i64 %27, %conv50, !dbg !2043
  %conv51 = trunc i64 %rem to i32, !dbg !2043
  store i32 %conv51, ptr %__rem, align 4, !dbg !2043
  %29 = load i64, ptr %clc, align 8, !dbg !2043
  %30 = load i32, ptr %__base, align 4, !dbg !2043
  %conv52 = zext i32 %30 to i64, !dbg !2043
  %div = udiv i64 %29, %conv52, !dbg !2043
  store i64 %div, ptr %clc, align 8, !dbg !2043
  %31 = load i32, ptr %__rem, align 4, !dbg !2043
  store i32 %31, ptr %tmp53, align 4, !dbg !2043
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #12, !dbg !2044
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #12, !dbg !2044
  %32 = load i32, ptr %tmp53, align 4, !dbg !2043
  %33 = load i64, ptr %clc, align 8, !dbg !2045
  %cmp54 = icmp ugt i64 %33, 1000, !dbg !2046
  br i1 %cmp54, label %cond.true, label %cond.false, !dbg !2045

cond.true:                                        ; preds = %if.end48
  %34 = load i64, ptr %clc, align 8, !dbg !2047
  br label %cond.end, !dbg !2045

cond.false:                                       ; preds = %if.end48
  br label %cond.end, !dbg !2045

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %34, %cond.true ], [ 1000, %cond.false ], !dbg !2045
  call void @llvm.lifetime.end.p0(i64 8, ptr %rnd) #12, !dbg !2048
  call void @llvm.lifetime.end.p0(i64 8, ptr %clc) #12, !dbg !2048
  ret i64 %cond, !dbg !2049
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clockevents_switch_state(ptr noundef %dev, i32 noundef %state) #0 align 16 !dbg !2050 {
entry:
  %dev.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2054, metadata !DIExpression()), !dbg !2066
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2055, metadata !DIExpression()), !dbg !2067
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2068
  %call = call i32 @clockevent_get_state(ptr noundef %0) #11, !dbg !2069
  %1 = load i32, ptr %state.addr, align 4, !dbg !2070
  %cmp = icmp ne i32 %call, %1, !dbg !2071
  br i1 %cmp, label %if.then, label %if.end37, !dbg !2072

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2073
  %3 = load i32, ptr %state.addr, align 4, !dbg !2075
  %call1 = call i32 @__clockevents_switch_state(ptr noundef %2, i32 noundef %3) #11, !dbg !2076
  %tobool = icmp ne i32 %call1, 0, !dbg !2076
  br i1 %tobool, label %if.then2, label %if.end, !dbg !2077

if.then2:                                         ; preds = %if.then
  br label %if.end37, !dbg !2078

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2079
  %5 = load i32, ptr %state.addr, align 4, !dbg !2080
  call void @clockevent_set_state(ptr noundef %4, i32 noundef %5) #11, !dbg !2081
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2082
  %call3 = call zeroext i1 @clockevent_state_oneshot(ptr noundef %6) #11, !dbg !2083
  br i1 %call3, label %if.then4, label %if.end36, !dbg !2084

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2056, metadata !DIExpression()), !dbg !2085
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2085
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 6, !dbg !2085
  %8 = load i32, ptr %mult, align 16, !dbg !2085
  %tobool5 = icmp ne i32 %8, 0, !dbg !2085
  %lnot = xor i1 %tobool5, true, !dbg !2085
  %lnot6 = xor i1 %lnot, true, !dbg !2085
  %lnot7 = xor i1 %lnot6, true, !dbg !2085
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !2085
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2085
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !2086
  %tobool8 = icmp ne i32 %9, 0, !dbg !2086
  %lnot9 = xor i1 %tobool8, true, !dbg !2086
  %lnot11 = xor i1 %lnot9, true, !dbg !2086
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !2086
  %conv = sext i32 %lnot.ext12 to i64, !dbg !2086
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2086
  %tobool13 = icmp ne i64 %expval, 0, !dbg !2086
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !2085

if.then14:                                        ; preds = %if.then4
  br label %do.body, !dbg !2086

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !2087
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2063, metadata !DIExpression()), !dbg !2087
  store i32 2305, ptr %__flags, align 4, !dbg !2087
  br label %do.body15, !dbg !2087

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !2088

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !2088

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !2087

do.body16:                                        ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !2090
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 161, i32 %10, i64 12) #12, !dbg !2090, !srcloc !2092
  br label %do.cond17, !dbg !2090

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !2090

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !2087

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !2093

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !2093

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !2086
  br label %do.cond22, !dbg !2087

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !2087

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !2087

if.end24:                                         ; preds = %do.end23, %if.then4
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !2085
  %tobool25 = icmp ne i32 %11, 0, !dbg !2085
  %lnot26 = xor i1 %tobool25, true, !dbg !2085
  %lnot28 = xor i1 %lnot26, true, !dbg !2085
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !2085
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !2085
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !2085
  store i64 %expval31, ptr %tmp, align 8, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !2095
  %12 = load i64, ptr %tmp, align 8, !dbg !2085
  %tobool32 = icmp ne i64 %12, 0, !dbg !2095
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !2096

if.then33:                                        ; preds = %if.end24
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !2097
  %mult34 = getelementptr inbounds %struct.clock_event_device, ptr %13, i32 0, i32 6, !dbg !2098
  store i32 1, ptr %mult34, align 16, !dbg !2099
  br label %if.end35, !dbg !2097

if.end35:                                         ; preds = %if.then33, %if.end24
  br label %if.end36, !dbg !2100

if.end36:                                         ; preds = %if.end35, %if.end
  br label %if.end37, !dbg !2101

if.end37:                                         ; preds = %if.then2, %if.end36, %entry
  ret void, !dbg !2102
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clockevent_get_state(ptr noundef %dev) #2 align 16 !dbg !2103 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2108, metadata !DIExpression()), !dbg !2109
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2110
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !2111
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !2111
  ret i32 %1, !dbg !2112
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__clockevents_switch_state(ptr noundef %dev, i32 noundef %state) #0 align 16 !dbg !1852 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp81 = alloca i64, align 8
  %tmp90 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1856, metadata !DIExpression()), !dbg !2113
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1857, metadata !DIExpression()), !dbg !2114
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2115
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !2117
  %1 = load i32, ptr %features, align 4, !dbg !2117
  %and = and i32 %1, 16, !dbg !2118
  %tobool = icmp ne i32 %and, 0, !dbg !2118
  br i1 %tobool, label %if.then, label %if.end, !dbg !2119

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2120
  br label %return, !dbg !2120

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !2121
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb16
    i32 4, label %sw.bb27
  ], !dbg !2122

sw.bb:                                            ; preds = %if.end, %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2123
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 14, !dbg !2125
  %4 = load ptr, ptr %set_state_shutdown, align 32, !dbg !2125
  %tobool1 = icmp ne ptr %4, null, !dbg !2123
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !2126

if.then2:                                         ; preds = %sw.bb
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2127
  %set_state_shutdown3 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 14, !dbg !2128
  %6 = load ptr, ptr %set_state_shutdown3, align 32, !dbg !2128
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2129
  %call = call i32 %6(ptr noundef %7) #11, !dbg !2127
  store i32 %call, ptr %retval, align 4, !dbg !2130
  br label %return, !dbg !2130

if.end4:                                          ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !2131
  br label %return, !dbg !2131

sw.bb5:                                           ; preds = %if.end
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2132
  %features6 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9, !dbg !2134
  %9 = load i32, ptr %features6, align 4, !dbg !2134
  %and7 = and i32 %9, 1, !dbg !2135
  %tobool8 = icmp ne i32 %and7, 0, !dbg !2135
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2136

if.then9:                                         ; preds = %sw.bb5
  store i32 -38, ptr %retval, align 4, !dbg !2137
  br label %return, !dbg !2137

if.end10:                                         ; preds = %sw.bb5
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2138
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 11, !dbg !2140
  %11 = load ptr, ptr %set_state_periodic, align 8, !dbg !2140
  %tobool11 = icmp ne ptr %11, null, !dbg !2138
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !2141

if.then12:                                        ; preds = %if.end10
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2142
  %set_state_periodic13 = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 11, !dbg !2143
  %13 = load ptr, ptr %set_state_periodic13, align 8, !dbg !2143
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2144
  %call14 = call i32 %13(ptr noundef %14) #11, !dbg !2142
  store i32 %call14, ptr %retval, align 4, !dbg !2145
  br label %return, !dbg !2145

if.end15:                                         ; preds = %if.end10
  store i32 0, ptr %retval, align 4, !dbg !2146
  br label %return, !dbg !2146

sw.bb16:                                          ; preds = %if.end
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2147
  %features17 = getelementptr inbounds %struct.clock_event_device, ptr %15, i32 0, i32 9, !dbg !2149
  %16 = load i32, ptr %features17, align 4, !dbg !2149
  %and18 = and i32 %16, 2, !dbg !2150
  %tobool19 = icmp ne i32 %and18, 0, !dbg !2150
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !2151

if.then20:                                        ; preds = %sw.bb16
  store i32 -38, ptr %retval, align 4, !dbg !2152
  br label %return, !dbg !2152

if.end21:                                         ; preds = %sw.bb16
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !2153
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %17, i32 0, i32 12, !dbg !2155
  %18 = load ptr, ptr %set_state_oneshot, align 16, !dbg !2155
  %tobool22 = icmp ne ptr %18, null, !dbg !2153
  br i1 %tobool22, label %if.then23, label %if.end26, !dbg !2156

if.then23:                                        ; preds = %if.end21
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !2157
  %set_state_oneshot24 = getelementptr inbounds %struct.clock_event_device, ptr %19, i32 0, i32 12, !dbg !2158
  %20 = load ptr, ptr %set_state_oneshot24, align 16, !dbg !2158
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !2159
  %call25 = call i32 %20(ptr noundef %21) #11, !dbg !2157
  store i32 %call25, ptr %retval, align 4, !dbg !2160
  br label %return, !dbg !2160

if.end26:                                         ; preds = %if.end21
  store i32 0, ptr %retval, align 4, !dbg !2161
  br label %return, !dbg !2161

sw.bb27:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #12, !dbg !2162
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !1858, metadata !DIExpression()), !dbg !2162
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !2162
  %call28 = call zeroext i1 @clockevent_state_oneshot(ptr noundef %22) #11, !dbg !2162
  %lnot = xor i1 %call28, true, !dbg !2162
  %lnot29 = xor i1 %lnot, true, !dbg !2162
  %lnot30 = xor i1 %lnot29, true, !dbg !2162
  %frombool = zext i1 %lnot30 to i8, !dbg !2162
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !2162
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !1862, metadata !DIExpression()), !dbg !2163
  %23 = load i8, ptr %__ret_do_once, align 1, !dbg !2163, !range !2031, !noundef !412
  %tobool31 = trunc i8 %23 to i1, !dbg !2163
  %lnot32 = xor i1 %tobool31, true, !dbg !2163
  %lnot33 = xor i1 %lnot32, true, !dbg !2163
  %frombool34 = zext i1 %lnot33 to i8, !dbg !2163
  store i8 %frombool34, ptr %__ret_cond, align 1, !dbg !2163
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !1865, metadata !DIExpression()), !dbg !2163
  store i8 0, ptr %__ret_once, align 1, !dbg !2163
  %24 = load i8, ptr %__ret_cond, align 1, !dbg !2164, !range !2031, !noundef !412
  %tobool35 = trunc i8 %24 to i1, !dbg !2164
  br i1 %tobool35, label %land.rhs, label %land.end, !dbg !2164

land.rhs:                                         ; preds = %sw.bb27
  %25 = load i8, ptr @__clockevents_switch_state.__already_done, align 1, !dbg !2164, !range !2031, !noundef !412
  %tobool36 = trunc i8 %25 to i1, !dbg !2164
  %lnot37 = xor i1 %tobool36, true, !dbg !2164
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb27
  %26 = phi i1 [ false, %sw.bb27 ], [ %lnot37, %land.rhs ], !dbg !2166
  %lnot38 = xor i1 %26, true, !dbg !2164
  %lnot39 = xor i1 %lnot38, true, !dbg !2164
  %lnot.ext = zext i1 %lnot39 to i32, !dbg !2164
  %conv = sext i32 %lnot.ext to i64, !dbg !2164
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2164
  %tobool40 = icmp ne i64 %expval, 0, !dbg !2164
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !2163

if.then41:                                        ; preds = %land.end
  store i8 1, ptr @__clockevents_switch_state.__already_done, align 1, !dbg !2167
  store i8 1, ptr %__ret_once, align 1, !dbg !2167
  br label %if.end42, !dbg !2167

if.end42:                                         ; preds = %if.then41, %land.end
  %27 = load i8, ptr %__ret_once, align 1, !dbg !2163, !range !2031, !noundef !412
  %tobool43 = trunc i8 %27 to i1, !dbg !2163
  %lnot44 = xor i1 %tobool43, true, !dbg !2163
  %lnot46 = xor i1 %lnot44, true, !dbg !2163
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !2163
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !2163
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0), !dbg !2163
  store i64 %expval49, ptr %tmp, align 8, !dbg !2164
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !2169
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !2169
  %28 = load i64, ptr %tmp, align 8, !dbg !2163
  %tobool50 = icmp ne i64 %28, 0, !dbg !2169
  br i1 %tobool50, label %if.then51, label %if.end89, !dbg !2162

if.then51:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !2170
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1866, metadata !DIExpression()), !dbg !2170
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2170
  %29 = load i32, ptr %__ret_warn_on, align 4, !dbg !2171
  %tobool52 = icmp ne i32 %29, 0, !dbg !2171
  %lnot53 = xor i1 %tobool52, true, !dbg !2171
  %lnot55 = xor i1 %lnot53, true, !dbg !2171
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !2171
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !2171
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !2171
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !2171
  br i1 %tobool59, label %if.then60, label %if.end80, !dbg !2170

if.then60:                                        ; preds = %if.then51
  br label %do.body, !dbg !2171

do.body:                                          ; preds = %if.then60
  br label %do.body61, !dbg !2172

do.body61:                                        ; preds = %do.body
  br label %do.cond, !dbg !2173

do.cond:                                          ; preds = %do.body61
  br label %do.end, !dbg !2173

do.end:                                           ; preds = %do.cond
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !2172
  %call62 = call i32 @clockevent_get_state(ptr noundef %30) #11, !dbg !2172
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, i32 noundef %call62) #11, !dbg !2172
  br label %do.body63, !dbg !2172

do.body63:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !2175
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1868, metadata !DIExpression()), !dbg !2175
  store i32 2313, ptr %__flags, align 4, !dbg !2175
  br label %do.body64, !dbg !2175

do.body64:                                        ; preds = %do.body63
  br label %do.cond65, !dbg !2176

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !2176

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !2175

do.body67:                                        ; preds = %do.end66
  %31 = load i32, ptr %__flags, align 4, !dbg !2178
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 127, i32 %31, i64 12) #12, !dbg !2178, !srcloc !2180
  br label %do.cond68, !dbg !2178

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !2178

do.end69:                                         ; preds = %do.cond68
  br label %do.body70, !dbg !2175

do.body70:                                        ; preds = %do.end69
  br label %do.cond71, !dbg !2181

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !2181

do.end72:                                         ; preds = %do.cond71
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !2172
  br label %do.cond73, !dbg !2175

do.cond73:                                        ; preds = %do.end72
  br label %do.end74, !dbg !2175

do.end74:                                         ; preds = %do.cond73
  br label %do.body75, !dbg !2172

do.body75:                                        ; preds = %do.end74
  br label %do.cond76, !dbg !2183

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !2183

do.end77:                                         ; preds = %do.cond76
  br label %do.cond78, !dbg !2172

do.cond78:                                        ; preds = %do.end77
  br label %do.end79, !dbg !2172

do.end79:                                         ; preds = %do.cond78
  br label %if.end80, !dbg !2172

if.end80:                                         ; preds = %do.end79, %if.then51
  %32 = load i32, ptr %__ret_warn_on, align 4, !dbg !2170
  %tobool82 = icmp ne i32 %32, 0, !dbg !2170
  %lnot83 = xor i1 %tobool82, true, !dbg !2170
  %lnot85 = xor i1 %lnot83, true, !dbg !2170
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !2170
  %conv87 = sext i32 %lnot.ext86 to i64, !dbg !2170
  %expval88 = call i64 @llvm.expect.i64(i64 %conv87, i64 0), !dbg !2170
  store i64 %expval88, ptr %tmp81, align 8, !dbg !2171
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !2169
  %33 = load i64, ptr %tmp81, align 8, !dbg !2170
  br label %if.end89, !dbg !2169

if.end89:                                         ; preds = %if.end80, %if.end42
  %34 = load i8, ptr %__ret_do_once, align 1, !dbg !2162, !range !2031, !noundef !412
  %tobool91 = trunc i8 %34 to i1, !dbg !2162
  %lnot92 = xor i1 %tobool91, true, !dbg !2162
  %lnot94 = xor i1 %lnot92, true, !dbg !2162
  %lnot.ext95 = zext i1 %lnot94 to i32, !dbg !2162
  %conv96 = sext i32 %lnot.ext95 to i64, !dbg !2162
  %expval97 = call i64 @llvm.expect.i64(i64 %conv96, i64 0), !dbg !2162
  store i64 %expval97, ptr %tmp90, align 8, !dbg !2169
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #12, !dbg !2185
  %35 = load i64, ptr %tmp90, align 8, !dbg !2162
  %tobool98 = icmp ne i64 %35, 0, !dbg !2185
  br i1 %tobool98, label %if.then99, label %if.end100, !dbg !2186

if.then99:                                        ; preds = %if.end89
  store i32 -22, ptr %retval, align 4, !dbg !2187
  br label %return, !dbg !2187

if.end100:                                        ; preds = %if.end89
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !2188
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, ptr %36, i32 0, i32 13, !dbg !2190
  %37 = load ptr, ptr %set_state_oneshot_stopped, align 8, !dbg !2190
  %tobool101 = icmp ne ptr %37, null, !dbg !2188
  br i1 %tobool101, label %if.then102, label %if.else, !dbg !2191

if.then102:                                       ; preds = %if.end100
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !2192
  %set_state_oneshot_stopped103 = getelementptr inbounds %struct.clock_event_device, ptr %38, i32 0, i32 13, !dbg !2193
  %39 = load ptr, ptr %set_state_oneshot_stopped103, align 8, !dbg !2193
  %40 = load ptr, ptr %dev.addr, align 8, !dbg !2194
  %call104 = call i32 %39(ptr noundef %40) #11, !dbg !2192
  store i32 %call104, ptr %retval, align 4, !dbg !2195
  br label %return, !dbg !2195

if.else:                                          ; preds = %if.end100
  store i32 -38, ptr %retval, align 4, !dbg !2196
  br label %return, !dbg !2196

sw.default:                                       ; preds = %if.end
  store i32 -38, ptr %retval, align 4, !dbg !2197
  br label %return, !dbg !2197

return:                                           ; preds = %sw.default, %if.else, %if.then102, %if.then99, %if.end26, %if.then23, %if.then20, %if.end15, %if.then12, %if.then9, %if.end4, %if.then2, %if.then
  %41 = load i32, ptr %retval, align 4, !dbg !2198
  ret i32 %41, !dbg !2198
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clockevent_set_state(ptr noundef %dev, i32 noundef %state) #2 align 16 !dbg !2199 {
entry:
  %dev.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2201, metadata !DIExpression()), !dbg !2203
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2202, metadata !DIExpression()), !dbg !2204
  %0 = load i32, ptr %state.addr, align 4, !dbg !2205
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2206
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8, !dbg !2207
  store i32 %0, ptr %state_use_accessors, align 8, !dbg !2208
  ret void, !dbg !2209
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_oneshot(ptr noundef %dev) #2 align 16 !dbg !2210 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2214, metadata !DIExpression()), !dbg !2215
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2216
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !2217
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !2217
  %cmp = icmp eq i32 %1, 3, !dbg !2218
  ret i1 %cmp, !dbg !2219
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clockevents_shutdown(ptr noundef %dev) #0 align 16 !dbg !2220 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2222, metadata !DIExpression()), !dbg !2223
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2224
  call void @clockevents_switch_state(ptr noundef %0, i32 noundef 1) #11, !dbg !2225
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2226
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 3, !dbg !2227
  store i64 9223372036854775807, ptr %next_event, align 8, !dbg !2228
  ret void, !dbg !2229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @clockevents_tick_resume(ptr noundef %dev) #0 align 16 !dbg !2230 {
entry:
  %dev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2232, metadata !DIExpression()), !dbg !2234
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2235
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2233, metadata !DIExpression()), !dbg !2236
  store i32 0, ptr %ret, align 4, !dbg !2236
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2237
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 15, !dbg !2239
  %1 = load ptr, ptr %tick_resume, align 8, !dbg !2239
  %tobool = icmp ne ptr %1, null, !dbg !2237
  br i1 %tobool, label %if.then, label %if.end, !dbg !2240

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2241
  %tick_resume1 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 15, !dbg !2242
  %3 = load ptr, ptr %tick_resume1, align 8, !dbg !2242
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2243
  %call = call i32 %3(ptr noundef %4) #11, !dbg !2241
  store i32 %call, ptr %ret, align 4, !dbg !2244
  br label %if.end, !dbg !2245

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %ret, align 4, !dbg !2246
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2247
  ret i32 %5, !dbg !2248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @clockevents_program_event(ptr noundef %dev, i64 noundef %expires, i1 noundef zeroext %force) #0 align 16 !dbg !1793 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %expires.addr = alloca i64, align 8
  %force.addr = alloca i8, align 1
  %clc = alloca i64, align 8
  %delta = alloca i64, align 8
  %rc = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp56 = alloca i64, align 8
  %__ret_warn_on66 = alloca i32, align 4
  %__flags82 = alloca i32, align 4
  %tmp100 = alloca i64, align 8
  %tmp109 = alloca i64, align 8
  %__UNIQUE_ID___x207 = alloca i64, align 8
  %__UNIQUE_ID___y208 = alloca i64, align 8
  %tmp130 = alloca i64, align 8
  %__UNIQUE_ID___x209 = alloca i64, align 8
  %__UNIQUE_ID___y210 = alloca i64, align 8
  %tmp137 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1797, metadata !DIExpression()), !dbg !2249
  store i64 %expires, ptr %expires.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %expires.addr, metadata !1798, metadata !DIExpression()), !dbg !2250
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %force.addr, metadata !1799, metadata !DIExpression()), !dbg !2251
  call void @llvm.lifetime.start.p0(i64 8, ptr %clc) #12, !dbg !2252
  call void @llvm.dbg.declare(metadata ptr %clc, metadata !1800, metadata !DIExpression()), !dbg !2253
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #12, !dbg !2254
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !1801, metadata !DIExpression()), !dbg !2255
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1802, metadata !DIExpression()), !dbg !2257
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1803, metadata !DIExpression()), !dbg !2258
  %0 = load i64, ptr %expires.addr, align 8, !dbg !2258
  %cmp = icmp slt i64 %0, 0, !dbg !2258
  %lnot = xor i1 %cmp, true, !dbg !2258
  %lnot1 = xor i1 %lnot, true, !dbg !2258
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2258
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2258
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2259
  %tobool = icmp ne i32 %1, 0, !dbg !2259
  %lnot2 = xor i1 %tobool, true, !dbg !2259
  %lnot4 = xor i1 %lnot2, true, !dbg !2259
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2259
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2259
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2259
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2259
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2258

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2259

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !2260
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1806, metadata !DIExpression()), !dbg !2260
  store i32 2307, ptr %__flags, align 4, !dbg !2260
  br label %do.body7, !dbg !2260

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !2261

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2261

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !2260

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !2263
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 310, i32 %2, i64 12) #12, !dbg !2263, !srcloc !2265
  br label %do.cond9, !dbg !2263

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2263

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2260

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !2266

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2266

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !2259
  br label %do.cond14, !dbg !2260

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2260

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !2260

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2258
  %tobool16 = icmp ne i32 %3, 0, !dbg !2258
  %lnot17 = xor i1 %tobool16, true, !dbg !2258
  %lnot19 = xor i1 %lnot17, true, !dbg !2258
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2258
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2258
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !2258
  store i64 %expval22, ptr %tmp, align 8, !dbg !2259
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !2268
  %4 = load i64, ptr %tmp, align 8, !dbg !2258
  %tobool23 = icmp ne i64 %4, 0, !dbg !2268
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2269

if.then24:                                        ; preds = %if.end
  store i32 -62, ptr %retval, align 4, !dbg !2270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2270

if.end25:                                         ; preds = %if.end
  %5 = load i64, ptr %expires.addr, align 8, !dbg !2271
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2272
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 3, !dbg !2273
  store i64 %5, ptr %next_event, align 8, !dbg !2274
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2275
  %call = call zeroext i1 @clockevent_state_shutdown(ptr noundef %7) #11, !dbg !2277
  br i1 %call, label %if.then26, label %if.end27, !dbg !2278

if.then26:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4, !dbg !2279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2279

if.end27:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #12, !dbg !2280
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !1809, metadata !DIExpression()), !dbg !2280
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2280
  %call28 = call zeroext i1 @clockevent_state_oneshot(ptr noundef %8) #11, !dbg !2280
  %lnot29 = xor i1 %call28, true, !dbg !2280
  %lnot31 = xor i1 %lnot29, true, !dbg !2280
  %lnot33 = xor i1 %lnot31, true, !dbg !2280
  %frombool35 = zext i1 %lnot33 to i8, !dbg !2280
  store i8 %frombool35, ptr %__ret_do_once, align 1, !dbg !2280
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !2281
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !1811, metadata !DIExpression()), !dbg !2281
  %9 = load i8, ptr %__ret_do_once, align 1, !dbg !2281, !range !2031, !noundef !412
  %tobool36 = trunc i8 %9 to i1, !dbg !2281
  %lnot37 = xor i1 %tobool36, true, !dbg !2281
  %lnot39 = xor i1 %lnot37, true, !dbg !2281
  %frombool41 = zext i1 %lnot39 to i8, !dbg !2281
  store i8 %frombool41, ptr %__ret_cond, align 1, !dbg !2281
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !2281
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !1814, metadata !DIExpression()), !dbg !2281
  store i8 0, ptr %__ret_once, align 1, !dbg !2281
  %10 = load i8, ptr %__ret_cond, align 1, !dbg !2282, !range !2031, !noundef !412
  %tobool42 = trunc i8 %10 to i1, !dbg !2282
  br i1 %tobool42, label %land.rhs, label %land.end, !dbg !2282

land.rhs:                                         ; preds = %if.end27
  %11 = load i8, ptr @clockevents_program_event.__already_done, align 1, !dbg !2282, !range !2031, !noundef !412
  %tobool44 = trunc i8 %11 to i1, !dbg !2282
  %lnot45 = xor i1 %tobool44, true, !dbg !2282
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end27
  %12 = phi i1 [ false, %if.end27 ], [ %lnot45, %land.rhs ], !dbg !2284
  %lnot47 = xor i1 %12, true, !dbg !2282
  %lnot49 = xor i1 %lnot47, true, !dbg !2282
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !2282
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !2282
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 0), !dbg !2282
  %tobool53 = icmp ne i64 %expval52, 0, !dbg !2282
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !2281

if.then54:                                        ; preds = %land.end
  store i8 1, ptr @clockevents_program_event.__already_done, align 1, !dbg !2285
  store i8 1, ptr %__ret_once, align 1, !dbg !2285
  br label %if.end55, !dbg !2285

if.end55:                                         ; preds = %if.then54, %land.end
  %13 = load i8, ptr %__ret_once, align 1, !dbg !2281, !range !2031, !noundef !412
  %tobool57 = trunc i8 %13 to i1, !dbg !2281
  %lnot58 = xor i1 %tobool57, true, !dbg !2281
  %lnot60 = xor i1 %lnot58, true, !dbg !2281
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !2281
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !2281
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !2281
  store i64 %expval63, ptr %tmp56, align 8, !dbg !2282
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !2287
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !2287
  %14 = load i64, ptr %tmp56, align 8, !dbg !2281
  %tobool64 = icmp ne i64 %14, 0, !dbg !2287
  br i1 %tobool64, label %if.then65, label %if.end108, !dbg !2280

if.then65:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on66) #12, !dbg !2288
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on66, metadata !1815, metadata !DIExpression()), !dbg !2288
  store i32 1, ptr %__ret_warn_on66, align 4, !dbg !2288
  %15 = load i32, ptr %__ret_warn_on66, align 4, !dbg !2289
  %tobool67 = icmp ne i32 %15, 0, !dbg !2289
  %lnot68 = xor i1 %tobool67, true, !dbg !2289
  %lnot70 = xor i1 %lnot68, true, !dbg !2289
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !2289
  %conv72 = sext i32 %lnot.ext71 to i64, !dbg !2289
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 0), !dbg !2289
  %tobool74 = icmp ne i64 %expval73, 0, !dbg !2289
  br i1 %tobool74, label %if.then75, label %if.end99, !dbg !2288

if.then75:                                        ; preds = %if.then65
  br label %do.body76, !dbg !2289

do.body76:                                        ; preds = %if.then75
  br label %do.body77, !dbg !2290

do.body77:                                        ; preds = %do.body76
  br label %do.cond78, !dbg !2291

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !2291

do.end79:                                         ; preds = %do.cond78
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2290
  %call80 = call i32 @clockevent_get_state(ptr noundef %16) #11, !dbg !2290
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, i32 noundef %call80) #11, !dbg !2290
  br label %do.body81, !dbg !2290

do.body81:                                        ; preds = %do.end79
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags82) #12, !dbg !2293
  call void @llvm.dbg.declare(metadata ptr %__flags82, metadata !1817, metadata !DIExpression()), !dbg !2293
  store i32 2313, ptr %__flags82, align 4, !dbg !2293
  br label %do.body83, !dbg !2293

do.body83:                                        ; preds = %do.body81
  br label %do.cond84, !dbg !2294

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !2294

do.end85:                                         ; preds = %do.cond84
  br label %do.body86, !dbg !2293

do.body86:                                        ; preds = %do.end85
  %17 = load i32, ptr %__flags82, align 4, !dbg !2296
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 320, i32 %17, i64 12) #12, !dbg !2296, !srcloc !2298
  br label %do.cond87, !dbg !2296

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !2296

do.end88:                                         ; preds = %do.cond87
  br label %do.body89, !dbg !2293

do.body89:                                        ; preds = %do.end88
  br label %do.cond90, !dbg !2299

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !2299

do.end91:                                         ; preds = %do.cond90
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags82) #12, !dbg !2290
  br label %do.cond92, !dbg !2293

do.cond92:                                        ; preds = %do.end91
  br label %do.end93, !dbg !2293

do.end93:                                         ; preds = %do.cond92
  br label %do.body94, !dbg !2290

do.body94:                                        ; preds = %do.end93
  br label %do.cond95, !dbg !2301

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !2301

do.end96:                                         ; preds = %do.cond95
  br label %do.cond97, !dbg !2290

do.cond97:                                        ; preds = %do.end96
  br label %do.end98, !dbg !2290

do.end98:                                         ; preds = %do.cond97
  br label %if.end99, !dbg !2290

if.end99:                                         ; preds = %do.end98, %if.then65
  %18 = load i32, ptr %__ret_warn_on66, align 4, !dbg !2288
  %tobool101 = icmp ne i32 %18, 0, !dbg !2288
  %lnot102 = xor i1 %tobool101, true, !dbg !2288
  %lnot104 = xor i1 %lnot102, true, !dbg !2288
  %lnot.ext105 = zext i1 %lnot104 to i32, !dbg !2288
  %conv106 = sext i32 %lnot.ext105 to i64, !dbg !2288
  %expval107 = call i64 @llvm.expect.i64(i64 %conv106, i64 0), !dbg !2288
  store i64 %expval107, ptr %tmp100, align 8, !dbg !2289
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on66) #12, !dbg !2287
  %19 = load i64, ptr %tmp100, align 8, !dbg !2288
  br label %if.end108, !dbg !2287

if.end108:                                        ; preds = %if.end99, %if.end55
  %20 = load i8, ptr %__ret_do_once, align 1, !dbg !2280, !range !2031, !noundef !412
  %tobool110 = trunc i8 %20 to i1, !dbg !2280
  %lnot111 = xor i1 %tobool110, true, !dbg !2280
  %lnot113 = xor i1 %lnot111, true, !dbg !2280
  %lnot.ext114 = zext i1 %lnot113 to i32, !dbg !2280
  %conv115 = sext i32 %lnot.ext114 to i64, !dbg !2280
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 0), !dbg !2280
  store i64 %expval116, ptr %tmp109, align 8, !dbg !2287
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #12, !dbg !2303
  %21 = load i64, ptr %tmp109, align 8, !dbg !2280
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !2304
  %features = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 9, !dbg !2306
  %23 = load i32, ptr %features, align 4, !dbg !2306
  %and = and i32 %23, 4, !dbg !2307
  %tobool117 = icmp ne i32 %and, 0, !dbg !2307
  br i1 %tobool117, label %if.then118, label %if.end120, !dbg !2308

if.then118:                                       ; preds = %if.end108
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !2309
  %set_next_ktime = getelementptr inbounds %struct.clock_event_device, ptr %24, i32 0, i32 2, !dbg !2310
  %25 = load ptr, ptr %set_next_ktime, align 16, !dbg !2310
  %26 = load i64, ptr %expires.addr, align 8, !dbg !2311
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !2312
  %call119 = call i32 %25(i64 noundef %26, ptr noundef %27) #11, !dbg !2309
  store i32 %call119, ptr %retval, align 4, !dbg !2313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2313

if.end120:                                        ; preds = %if.end108
  %28 = load i64, ptr %expires.addr, align 8, !dbg !2314
  %call121 = call i64 @ktime_get() #11, !dbg !2314
  %sub = sub i64 %28, %call121, !dbg !2314
  %call122 = call i64 @ktime_to_ns(i64 noundef %sub) #11, !dbg !2315
  store i64 %call122, ptr %delta, align 8, !dbg !2316
  %29 = load i64, ptr %delta, align 8, !dbg !2317
  %cmp123 = icmp sle i64 %29, 0, !dbg !2319
  br i1 %cmp123, label %if.then125, label %if.end129, !dbg !2320

if.then125:                                       ; preds = %if.end120
  %30 = load i8, ptr %force.addr, align 1, !dbg !2321, !range !2031, !noundef !412
  %tobool126 = trunc i8 %30 to i1, !dbg !2321
  br i1 %tobool126, label %cond.true, label %cond.false, !dbg !2321

cond.true:                                        ; preds = %if.then125
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !2322
  %call128 = call i32 @clockevents_program_min_delta(ptr noundef %31) #11, !dbg !2323
  br label %cond.end, !dbg !2321

cond.false:                                       ; preds = %if.then125
  br label %cond.end, !dbg !2321

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call128, %cond.true ], [ -62, %cond.false ], !dbg !2321
  store i32 %cond, ptr %retval, align 4, !dbg !2324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2324

if.end129:                                        ; preds = %if.end120
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x207) #12, !dbg !2325
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x207, metadata !1821, metadata !DIExpression()), !dbg !2325
  %32 = load i64, ptr %delta, align 8, !dbg !2325
  store i64 %32, ptr %__UNIQUE_ID___x207, align 8, !dbg !2325
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y208) #12, !dbg !2325
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y208, metadata !1823, metadata !DIExpression()), !dbg !2325
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !2325
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %33, i32 0, i32 4, !dbg !2325
  %34 = load i64, ptr %max_delta_ns, align 32, !dbg !2325
  store i64 %34, ptr %__UNIQUE_ID___y208, align 8, !dbg !2325
  %35 = load i64, ptr %__UNIQUE_ID___x207, align 8, !dbg !2325
  %36 = load i64, ptr %__UNIQUE_ID___y208, align 8, !dbg !2325
  %cmp131 = icmp slt i64 %35, %36, !dbg !2325
  br i1 %cmp131, label %cond.true133, label %cond.false134, !dbg !2325

cond.true133:                                     ; preds = %if.end129
  %37 = load i64, ptr %__UNIQUE_ID___x207, align 8, !dbg !2325
  br label %cond.end135, !dbg !2325

cond.false134:                                    ; preds = %if.end129
  %38 = load i64, ptr %__UNIQUE_ID___y208, align 8, !dbg !2325
  br label %cond.end135, !dbg !2325

cond.end135:                                      ; preds = %cond.false134, %cond.true133
  %cond136 = phi i64 [ %37, %cond.true133 ], [ %38, %cond.false134 ], !dbg !2325
  store i64 %cond136, ptr %tmp130, align 8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y208) #12, !dbg !2326
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x207) #12, !dbg !2326
  %39 = load i64, ptr %tmp130, align 8, !dbg !2325
  store i64 %39, ptr %delta, align 8, !dbg !2327
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x209) #12, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x209, metadata !1824, metadata !DIExpression()), !dbg !2328
  %40 = load i64, ptr %delta, align 8, !dbg !2328
  store i64 %40, ptr %__UNIQUE_ID___x209, align 8, !dbg !2328
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y210) #12, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y210, metadata !1826, metadata !DIExpression()), !dbg !2328
  %41 = load ptr, ptr %dev.addr, align 8, !dbg !2328
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %41, i32 0, i32 5, !dbg !2328
  %42 = load i64, ptr %min_delta_ns, align 8, !dbg !2328
  store i64 %42, ptr %__UNIQUE_ID___y210, align 8, !dbg !2328
  %43 = load i64, ptr %__UNIQUE_ID___x209, align 8, !dbg !2328
  %44 = load i64, ptr %__UNIQUE_ID___y210, align 8, !dbg !2328
  %cmp138 = icmp sgt i64 %43, %44, !dbg !2328
  br i1 %cmp138, label %cond.true140, label %cond.false141, !dbg !2328

cond.true140:                                     ; preds = %cond.end135
  %45 = load i64, ptr %__UNIQUE_ID___x209, align 8, !dbg !2328
  br label %cond.end142, !dbg !2328

cond.false141:                                    ; preds = %cond.end135
  %46 = load i64, ptr %__UNIQUE_ID___y210, align 8, !dbg !2328
  br label %cond.end142, !dbg !2328

cond.end142:                                      ; preds = %cond.false141, %cond.true140
  %cond143 = phi i64 [ %45, %cond.true140 ], [ %46, %cond.false141 ], !dbg !2328
  store i64 %cond143, ptr %tmp137, align 8, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y210) #12, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x209) #12, !dbg !2329
  %47 = load i64, ptr %tmp137, align 8, !dbg !2328
  store i64 %47, ptr %delta, align 8, !dbg !2330
  %48 = load i64, ptr %delta, align 8, !dbg !2331
  %49 = load ptr, ptr %dev.addr, align 8, !dbg !2332
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %49, i32 0, i32 6, !dbg !2333
  %50 = load i32, ptr %mult, align 16, !dbg !2333
  %conv144 = zext i32 %50 to i64, !dbg !2332
  %mul = mul i64 %48, %conv144, !dbg !2334
  %51 = load ptr, ptr %dev.addr, align 8, !dbg !2335
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %51, i32 0, i32 7, !dbg !2336
  %52 = load i32, ptr %shift, align 4, !dbg !2336
  %sh_prom = zext i32 %52 to i64, !dbg !2337
  %shr = lshr i64 %mul, %sh_prom, !dbg !2337
  store i64 %shr, ptr %clc, align 8, !dbg !2338
  %53 = load ptr, ptr %dev.addr, align 8, !dbg !2339
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %53, i32 0, i32 1, !dbg !2340
  %54 = load ptr, ptr %set_next_event, align 8, !dbg !2340
  %55 = load i64, ptr %clc, align 8, !dbg !2341
  %56 = load ptr, ptr %dev.addr, align 8, !dbg !2342
  %call145 = call i32 %54(i64 noundef %55, ptr noundef %56) #11, !dbg !2339
  store i32 %call145, ptr %rc, align 4, !dbg !2343
  %57 = load i32, ptr %rc, align 4, !dbg !2344
  %tobool146 = icmp ne i32 %57, 0, !dbg !2344
  br i1 %tobool146, label %land.lhs.true, label %cond.false151, !dbg !2345

land.lhs.true:                                    ; preds = %cond.end142
  %58 = load i8, ptr %force.addr, align 1, !dbg !2346, !range !2031, !noundef !412
  %tobool147 = trunc i8 %58 to i1, !dbg !2346
  br i1 %tobool147, label %cond.true149, label %cond.false151, !dbg !2347

cond.true149:                                     ; preds = %land.lhs.true
  %59 = load ptr, ptr %dev.addr, align 8, !dbg !2348
  %call150 = call i32 @clockevents_program_min_delta(ptr noundef %59) #11, !dbg !2349
  br label %cond.end152, !dbg !2347

cond.false151:                                    ; preds = %land.lhs.true, %cond.end142
  %60 = load i32, ptr %rc, align 4, !dbg !2350
  br label %cond.end152, !dbg !2347

cond.end152:                                      ; preds = %cond.false151, %cond.true149
  %cond153 = phi i32 [ %call150, %cond.true149 ], [ %60, %cond.false151 ], !dbg !2347
  store i32 %cond153, ptr %retval, align 4, !dbg !2351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2351

cleanup:                                          ; preds = %cond.end152, %cond.end, %if.then118, %if.then26, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !2352
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #12, !dbg !2352
  call void @llvm.lifetime.end.p0(i64 8, ptr %clc) #12, !dbg !2352
  %61 = load i32, ptr %retval, align 4, !dbg !2352
  ret i32 %61, !dbg !2352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_shutdown(ptr noundef %dev) #2 align 16 !dbg !2353 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2355, metadata !DIExpression()), !dbg !2356
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2357
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !2358
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !2358
  %cmp = icmp eq i32 %1, 1, !dbg !2359
  ret i1 %cmp, !dbg !2360
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2361 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_ns(i64 noundef %kt) #2 align 16 !dbg !2364 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !2369, metadata !DIExpression()), !dbg !2370
  %0 = load i64, ptr %kt.addr, align 8, !dbg !2371
  ret i64 %0, !dbg !2372
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2373 dso_local i64 @ktime_get() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clockevents_program_min_delta(ptr noundef %dev) #0 align 16 !dbg !2375 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %clc = alloca i64, align 8
  %delta = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.lifetime.start.p0(i64 8, ptr %clc) #12, !dbg !2382
  call void @llvm.dbg.declare(metadata ptr %clc, metadata !2378, metadata !DIExpression()), !dbg !2383
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #12, !dbg !2384
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !2379, metadata !DIExpression()), !dbg !2385
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2386
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2380, metadata !DIExpression()), !dbg !2387
  store i32 0, ptr %i, align 4, !dbg !2388
  br label %for.cond, !dbg !2390

for.cond:                                         ; preds = %if.end13, %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2391
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 5, !dbg !2394
  %1 = load i64, ptr %min_delta_ns, align 8, !dbg !2394
  store i64 %1, ptr %delta, align 8, !dbg !2395
  %call = call i64 @ktime_get() #11, !dbg !2396
  %2 = load i64, ptr %delta, align 8, !dbg !2396
  %add = add i64 %call, %2, !dbg !2396
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2397
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 3, !dbg !2398
  store i64 %add, ptr %next_event, align 8, !dbg !2399
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2400
  %call1 = call zeroext i1 @clockevent_state_shutdown(ptr noundef %4) #11, !dbg !2402
  br i1 %call1, label %if.then, label %if.end, !dbg !2403

if.then:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2404

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2405
  %retries = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 10, !dbg !2406
  %6 = load i64, ptr %retries, align 64, !dbg !2407
  %inc = add i64 %6, 1, !dbg !2407
  store i64 %inc, ptr %retries, align 64, !dbg !2407
  %7 = load i64, ptr %delta, align 8, !dbg !2408
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2409
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 6, !dbg !2410
  %9 = load i32, ptr %mult, align 16, !dbg !2410
  %conv = zext i32 %9 to i64, !dbg !2409
  %mul = mul i64 %7, %conv, !dbg !2411
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2412
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 7, !dbg !2413
  %11 = load i32, ptr %shift, align 4, !dbg !2413
  %sh_prom = zext i32 %11 to i64, !dbg !2414
  %shr = lshr i64 %mul, %sh_prom, !dbg !2414
  store i64 %shr, ptr %clc, align 8, !dbg !2415
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2416
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 1, !dbg !2418
  %13 = load ptr, ptr %set_next_event, align 8, !dbg !2418
  %14 = load i64, ptr %clc, align 8, !dbg !2419
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2420
  %call2 = call i32 %13(i64 noundef %14, ptr noundef %15) #11, !dbg !2416
  %cmp = icmp eq i32 %call2, 0, !dbg !2421
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !2422

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2423

if.end5:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4, !dbg !2424
  %inc6 = add i32 %16, 1, !dbg !2424
  store i32 %inc6, ptr %i, align 4, !dbg !2424
  %cmp7 = icmp sgt i32 %inc6, 2, !dbg !2426
  br i1 %cmp7, label %if.then9, label %if.end13, !dbg !2427

if.then9:                                         ; preds = %if.end5
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !2428
  %call10 = call i32 @clockevents_increase_min_delta(ptr noundef %17) #11, !dbg !2431
  %tobool = icmp ne i32 %call10, 0, !dbg !2431
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !2432

if.then11:                                        ; preds = %if.then9
  store i32 -62, ptr %retval, align 4, !dbg !2433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2433

if.end12:                                         ; preds = %if.then9
  store i32 0, ptr %i, align 4, !dbg !2434
  br label %if.end13, !dbg !2435

if.end13:                                         ; preds = %if.end12, %if.end5
  br label %for.cond, !dbg !2436, !llvm.loop !2437

cleanup:                                          ; preds = %if.then11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2441
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #12, !dbg !2441
  call void @llvm.lifetime.end.p0(i64 8, ptr %clc) #12, !dbg !2441
  %18 = load i32, ptr %retval, align 4, !dbg !2441
  ret i32 %18, !dbg !2441
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @clockevents_unbind_device(ptr noundef %ced, i32 noundef %cpu) #0 align 16 !dbg !2442 {
entry:
  %ced.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %ced, ptr %ced.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ced.addr, metadata !2446, metadata !DIExpression()), !dbg !2449
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2451
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2448, metadata !DIExpression()), !dbg !2452
  call void @mutex_lock(ptr noundef @clockevents_mutex) #11, !dbg !2453
  %0 = load ptr, ptr %ced.addr, align 8, !dbg !2454
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2455
  %call = call i32 @clockevents_unbind(ptr noundef %0, i32 noundef %1) #11, !dbg !2456
  store i32 %call, ptr %ret, align 4, !dbg !2457
  call void @mutex_unlock(ptr noundef @clockevents_mutex) #11, !dbg !2458
  %2 = load i32, ptr %ret, align 4, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2460
  ret i32 %2, !dbg !2461
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2462 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clockevents_unbind(ptr noundef %ced, i32 noundef %cpu) #0 align 16 !dbg !2466 {
entry:
  %ced.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %cu = alloca %struct.ce_unbind, align 8
  store ptr %ced, ptr %ced.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ced.addr, metadata !2468, metadata !DIExpression()), !dbg !2475
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2469, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 16, ptr %cu) #12, !dbg !2477
  call void @llvm.dbg.declare(metadata ptr %cu, metadata !2470, metadata !DIExpression()), !dbg !2478
  %ce = getelementptr inbounds %struct.ce_unbind, ptr %cu, i32 0, i32 0, !dbg !2479
  %0 = load ptr, ptr %ced.addr, align 8, !dbg !2480
  store ptr %0, ptr %ce, align 8, !dbg !2479
  %res = getelementptr inbounds %struct.ce_unbind, ptr %cu, i32 0, i32 1, !dbg !2479
  store i32 -19, ptr %res, align 8, !dbg !2479
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2481
  %call = call i32 @smp_call_function_single(i32 noundef %1, ptr noundef @__clockevents_unbind, ptr noundef %cu, i32 noundef 1) #11, !dbg !2482
  %res1 = getelementptr inbounds %struct.ce_unbind, ptr %cu, i32 0, i32 1, !dbg !2483
  %2 = load i32, ptr %res1, align 8, !dbg !2483
  call void @llvm.lifetime.end.p0(i64 16, ptr %cu) #12, !dbg !2484
  ret i32 %2, !dbg !2485
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2486 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clockevents_register_device(ptr noundef %dev) #0 align 16 !dbg !2487 {
entry:
  %dev.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp25 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %__ret_warn_on40 = alloca i32, align 4
  %__flags55 = alloca i32, align 4
  %tmp73 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp86 = alloca i32, align 4
  %__dummy91 = alloca i64, align 8
  %__dummy292 = alloca i64, align 8
  %tmp95 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2489, metadata !DIExpression()), !dbg !2521
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2490, metadata !DIExpression()), !dbg !2523
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2524
  call void @clockevent_set_state(ptr noundef %0, i32 noundef 0) #11, !dbg !2525
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2526
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 25, !dbg !2527
  %2 = load ptr, ptr %cpumask, align 16, !dbg !2527
  %tobool = icmp ne ptr %2, null, !dbg !2526
  br i1 %tobool, label %if.end35, label %if.then, !dbg !2528

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !2529
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2491, metadata !DIExpression()), !dbg !2529
  %call = call i32 @cpumask_weight(ptr noundef @__cpu_possible_mask) #11, !dbg !2529
  %cmp = icmp ugt i32 %call, 1, !dbg !2529
  %lnot = xor i1 %cmp, true, !dbg !2529
  %lnot1 = xor i1 %lnot, true, !dbg !2529
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2529
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2529
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2530
  %tobool2 = icmp ne i32 %3, 0, !dbg !2530
  %lnot3 = xor i1 %tobool2, true, !dbg !2530
  %lnot5 = xor i1 %lnot3, true, !dbg !2530
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2530
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2530
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2530
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2530
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !2529

if.then8:                                         ; preds = %if.then
  br label %do.body, !dbg !2530

do.body:                                          ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !2531
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2495, metadata !DIExpression()), !dbg !2531
  store i32 2305, ptr %__flags, align 4, !dbg !2531
  br label %do.body9, !dbg !2531

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2532

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2532

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !2531

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !2534
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 451, i32 %4, i64 12) #12, !dbg !2534, !srcloc !2536
  br label %do.cond11, !dbg !2534

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2534

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !2531

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !2537

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2537

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !2530
  br label %do.cond16, !dbg !2531

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2531

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !2531

if.end:                                           ; preds = %do.end17, %if.then
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2529
  %tobool18 = icmp ne i32 %5, 0, !dbg !2529
  %lnot19 = xor i1 %tobool18, true, !dbg !2529
  %lnot21 = xor i1 %lnot19, true, !dbg !2529
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2529
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2529
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !2529
  store i64 %expval24, ptr %tmp, align 8, !dbg !2530
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !2539
  %6 = load i64, ptr %tmp, align 8, !dbg !2529
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #11, !dbg !2540
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !2541
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2498, metadata !DIExpression()), !dbg !2541
  br label %do.body26, !dbg !2541

do.body26:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !2542
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2501, metadata !DIExpression()), !dbg !2542
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2542
  %7 = load ptr, ptr %__vpp_verify, align 8, !dbg !2542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !2541
  br label %do.cond27, !dbg !2542

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !2542

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !2543
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2503, metadata !DIExpression()), !dbg !2543
  %8 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !2543, !srcloc !2544
  store i32 %8, ptr %pfo_val__, align 4, !dbg !2543
  %9 = load i32, ptr %pfo_val__, align 4, !dbg !2543
  %conv30 = zext i32 %9 to i64, !dbg !2543
  %conv31 = trunc i64 %conv30 to i32, !dbg !2543
  store i32 %conv31, ptr %tmp29, align 4, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !2541
  %10 = load i32, ptr %tmp29, align 4, !dbg !2543
  store i32 %10, ptr %pscr_ret__, align 4, !dbg !2541
  %11 = load i32, ptr %pscr_ret__, align 4, !dbg !2541
  store i32 %11, ptr %tmp32, align 4, !dbg !2541
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !2540
  %12 = load i32, ptr %tmp32, align 4, !dbg !2541
  store i32 %12, ptr %tmp25, align 4, !dbg !2540
  %13 = load i32, ptr %tmp25, align 4, !dbg !2540
  %call33 = call ptr @get_cpu_mask(i32 noundef %13) #11, !dbg !2545
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2546
  %cpumask34 = getelementptr inbounds %struct.clock_event_device, ptr %14, i32 0, i32 25, !dbg !2547
  store ptr %call33, ptr %cpumask34, align 16, !dbg !2548
  br label %if.end35, !dbg !2549

if.end35:                                         ; preds = %do.end28, %entry
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2550
  %cpumask36 = getelementptr inbounds %struct.clock_event_device, ptr %15, i32 0, i32 25, !dbg !2551
  %16 = load ptr, ptr %cpumask36, align 16, !dbg !2551
  %cmp37 = icmp eq ptr %16, @cpu_all_bits, !dbg !2552
  br i1 %cmp37, label %if.then39, label %if.end82, !dbg !2553

if.then39:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on40) #12, !dbg !2554
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on40, metadata !2505, metadata !DIExpression()), !dbg !2554
  store i32 1, ptr %__ret_warn_on40, align 4, !dbg !2554
  %17 = load i32, ptr %__ret_warn_on40, align 4, !dbg !2555
  %tobool41 = icmp ne i32 %17, 0, !dbg !2555
  %lnot42 = xor i1 %tobool41, true, !dbg !2555
  %lnot44 = xor i1 %lnot42, true, !dbg !2555
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !2555
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !2555
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !2555
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !2555
  br i1 %tobool48, label %if.then49, label %if.end72, !dbg !2554

if.then49:                                        ; preds = %if.then39
  br label %do.body50, !dbg !2555

do.body50:                                        ; preds = %if.then49
  br label %do.body51, !dbg !2556

do.body51:                                        ; preds = %do.body50
  br label %do.cond52, !dbg !2557

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !2557

do.end53:                                         ; preds = %do.cond52
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !2556
  %name = getelementptr inbounds %struct.clock_event_device, ptr %18, i32 0, i32 21, !dbg !2556
  %19 = load ptr, ptr %name, align 8, !dbg !2556
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef %19) #11, !dbg !2556
  br label %do.body54, !dbg !2556

do.body54:                                        ; preds = %do.end53
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags55) #12, !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %__flags55, metadata !2509, metadata !DIExpression()), !dbg !2559
  store i32 2313, ptr %__flags55, align 4, !dbg !2559
  br label %do.body56, !dbg !2559

do.body56:                                        ; preds = %do.body54
  br label %do.cond57, !dbg !2560

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !2560

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !2559

do.body59:                                        ; preds = %do.end58
  %20 = load i32, ptr %__flags55, align 4, !dbg !2562
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 457, i32 %20, i64 12) #12, !dbg !2562, !srcloc !2564
  br label %do.cond60, !dbg !2562

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !2562

do.end61:                                         ; preds = %do.cond60
  br label %do.body62, !dbg !2559

do.body62:                                        ; preds = %do.end61
  br label %do.cond63, !dbg !2565

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !2565

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags55) #12, !dbg !2556
  br label %do.cond65, !dbg !2559

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !2559

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !2556

do.body67:                                        ; preds = %do.end66
  br label %do.cond68, !dbg !2567

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !2567

do.end69:                                         ; preds = %do.cond68
  br label %do.cond70, !dbg !2556

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !2556

do.end71:                                         ; preds = %do.cond70
  br label %if.end72, !dbg !2556

if.end72:                                         ; preds = %do.end71, %if.then39
  %21 = load i32, ptr %__ret_warn_on40, align 4, !dbg !2554
  %tobool74 = icmp ne i32 %21, 0, !dbg !2554
  %lnot75 = xor i1 %tobool74, true, !dbg !2554
  %lnot77 = xor i1 %lnot75, true, !dbg !2554
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !2554
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !2554
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0), !dbg !2554
  store i64 %expval80, ptr %tmp73, align 8, !dbg !2555
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on40) #12, !dbg !2569
  %22 = load i64, ptr %tmp73, align 8, !dbg !2554
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2570
  %cpumask81 = getelementptr inbounds %struct.clock_event_device, ptr %23, i32 0, i32 25, !dbg !2571
  store ptr @__cpu_possible_mask, ptr %cpumask81, align 16, !dbg !2572
  br label %if.end82, !dbg !2573

if.end82:                                         ; preds = %if.end72, %if.end35
  br label %do.body83, !dbg !2574

do.body83:                                        ; preds = %if.end82
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !2575
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !2575
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2516, metadata !DIExpression()), !dbg !2575
  %cmp84 = icmp eq ptr %__dummy, %__dummy2, !dbg !2575
  %conv85 = zext i1 %cmp84 to i32, !dbg !2575
  store i32 1, ptr %tmp86, align 4, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !2576
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !2576
  %24 = load i32, ptr %tmp86, align 4, !dbg !2575
  %call87 = call i64 @_raw_spin_lock_irqsave(ptr noundef @clockevents_lock) #11, !dbg !2576
  store i64 %call87, ptr %flags, align 8, !dbg !2576
  br label %do.cond88, !dbg !2576

do.cond88:                                        ; preds = %do.body83
  br label %do.end89, !dbg !2576

do.end89:                                         ; preds = %do.cond88
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !2577
  %list = getelementptr inbounds %struct.clock_event_device, ptr %25, i32 0, i32 26, !dbg !2578
  call void @list_add(ptr noundef %list, ptr noundef @clockevent_devices) #11, !dbg !2579
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !2580
  call void @tick_check_new_device(ptr noundef %26) #11, !dbg !2581
  call void @clockevents_notify_released() #11, !dbg !2582
  br label %do.body90, !dbg !2583

do.body90:                                        ; preds = %do.end89
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy91) #12, !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %__dummy91, metadata !2517, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy292) #12, !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %__dummy292, metadata !2520, metadata !DIExpression()), !dbg !2584
  %cmp93 = icmp eq ptr %__dummy91, %__dummy292, !dbg !2584
  %conv94 = zext i1 %cmp93 to i32, !dbg !2584
  store i32 1, ptr %tmp95, align 4, !dbg !2584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy292) #12, !dbg !2585
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy91) #12, !dbg !2585
  %27 = load i32, ptr %tmp95, align 4, !dbg !2584
  %28 = load i64, ptr %flags, align 8, !dbg !2585
  call void @_raw_spin_unlock_irqrestore(ptr noundef @clockevents_lock, i64 noundef %28) #11, !dbg !2585
  br label %do.cond96, !dbg !2585

do.cond96:                                        ; preds = %do.body90
  br label %do.end97, !dbg !2585

do.end97:                                         ; preds = %do.cond96
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !2586
  ret void, !dbg !2586
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #2 align 16 !dbg !2587 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !2591, metadata !DIExpression()), !dbg !2592
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !2593
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !2593
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2593
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #11, !dbg !2594
  ret i32 %call, !dbg !2595
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_mask(i32 noundef %cpu) #2 align 16 !dbg !2596 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2600, metadata !DIExpression()), !dbg !2604
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !2605
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2601, metadata !DIExpression()), !dbg !2606
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2607
  %rem = urem i32 %0, 64, !dbg !2608
  %add = add i32 1, %rem, !dbg !2609
  %idxprom = zext i32 %add to i64, !dbg !2610
  %arrayidx = getelementptr [65 x [1 x i64]], ptr @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !2610
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !2610
  store ptr %arraydecay, ptr %p, align 8, !dbg !2606
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2611
  %div = udiv i32 %1, 64, !dbg !2612
  %2 = load ptr, ptr %p, align 8, !dbg !2613
  %idx.ext = zext i32 %div to i64, !dbg !2613
  %idx.neg = sub i64 0, %idx.ext, !dbg !2613
  %add.ptr = getelementptr i64, ptr %2, i64 %idx.neg, !dbg !2613
  store ptr %add.ptr, ptr %p, align 8, !dbg !2613
  %3 = load ptr, ptr %p, align 8, !dbg !2614
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !2615
  ret ptr %3, !dbg !2616
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #6 align 16 !dbg !2617 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2622, metadata !DIExpression()), !dbg !2623
  ret void, !dbg !2624
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2625 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #2 align 16 !dbg !2630 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2635, metadata !DIExpression()), !dbg !2637
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2636, metadata !DIExpression()), !dbg !2638
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2639
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2640
  %2 = load ptr, ptr %head.addr, align 8, !dbg !2641
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !2642
  %3 = load ptr, ptr %next, align 8, !dbg !2642
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #11, !dbg !2643
  ret void, !dbg !2644
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2645 dso_local void @tick_check_new_device(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clockevents_notify_released() #0 align 16 !dbg !2646 {
entry:
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !2652
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2648, metadata !DIExpression()), !dbg !2653
  br label %while.cond, !dbg !2654

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @list_empty(ptr noundef @clockevents_released) #11, !dbg !2655
  %tobool = icmp ne i32 %call, 0, !dbg !2656
  %lnot = xor i1 %tobool, true, !dbg !2656
  br i1 %lnot, label %while.body, label %while.end, !dbg !2654

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2657
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2649, metadata !DIExpression()), !dbg !2657
  %0 = load ptr, ptr @clockevents_released, align 8, !dbg !2657
  store ptr %0, ptr %__mptr, align 8, !dbg !2657
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2657
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !2657
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2657
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2658
  %2 = load ptr, ptr %tmp, align 8, !dbg !2657
  store ptr %2, ptr %dev, align 8, !dbg !2659
  %3 = load ptr, ptr %dev, align 8, !dbg !2660
  %list = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 26, !dbg !2661
  call void @list_move(ptr noundef %list, ptr noundef @clockevent_devices) #11, !dbg !2662
  %4 = load ptr, ptr %dev, align 8, !dbg !2663
  call void @tick_check_new_device(ptr noundef %4) #11, !dbg !2664
  br label %while.cond, !dbg !2654, !llvm.loop !2665

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !2668
  ret void, !dbg !2668
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2669 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clockevents_config_and_register(ptr noundef %dev, i32 noundef %freq, i64 noundef %min_delta, i64 noundef %max_delta) #0 align 16 !dbg !2672 {
entry:
  %dev.addr = alloca ptr, align 8
  %freq.addr = alloca i32, align 4
  %min_delta.addr = alloca i64, align 8
  %max_delta.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2676, metadata !DIExpression()), !dbg !2680
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !2677, metadata !DIExpression()), !dbg !2681
  store i64 %min_delta, ptr %min_delta.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min_delta.addr, metadata !2678, metadata !DIExpression()), !dbg !2682
  store i64 %max_delta, ptr %max_delta.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_delta.addr, metadata !2679, metadata !DIExpression()), !dbg !2683
  %0 = load i64, ptr %min_delta.addr, align 8, !dbg !2684
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2685
  %min_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 19, !dbg !2686
  store i64 %0, ptr %min_delta_ticks, align 8, !dbg !2687
  %2 = load i64, ptr %max_delta.addr, align 8, !dbg !2688
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2689
  %max_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 20, !dbg !2690
  store i64 %2, ptr %max_delta_ticks, align 16, !dbg !2691
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2692
  %5 = load i32, ptr %freq.addr, align 4, !dbg !2693
  call void @clockevents_config(ptr noundef %4, i32 noundef %5) #11, !dbg !2694
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2695
  call void @clockevents_register_device(ptr noundef %6) #11, !dbg !2696
  ret void, !dbg !2697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clockevents_config(ptr noundef %dev, i32 noundef %freq) #0 align 16 !dbg !2698 {
entry:
  %dev.addr = alloca ptr, align 8
  %freq.addr = alloca i32, align 4
  %sec = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2702, metadata !DIExpression()), !dbg !2708
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !2703, metadata !DIExpression()), !dbg !2709
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !2710
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !2704, metadata !DIExpression()), !dbg !2711
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2712
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !2714
  %1 = load i32, ptr %features, align 4, !dbg !2714
  %and = and i32 %1, 2, !dbg !2715
  %tobool = icmp ne i32 %and, 0, !dbg !2715
  br i1 %tobool, label %if.end, label %if.then, !dbg !2716

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2717

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2718
  %max_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 20, !dbg !2719
  %3 = load i64, ptr %max_delta_ticks, align 16, !dbg !2719
  store i64 %3, ptr %sec, align 8, !dbg !2720
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #12, !dbg !2721
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !2705, metadata !DIExpression()), !dbg !2721
  %4 = load i32, ptr %freq.addr, align 4, !dbg !2721
  store i32 %4, ptr %__base, align 4, !dbg !2721
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #12, !dbg !2721
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !2707, metadata !DIExpression()), !dbg !2721
  %5 = load i64, ptr %sec, align 8, !dbg !2721
  %6 = load i32, ptr %__base, align 4, !dbg !2721
  %conv = zext i32 %6 to i64, !dbg !2721
  %rem = urem i64 %5, %conv, !dbg !2721
  %conv1 = trunc i64 %rem to i32, !dbg !2721
  store i32 %conv1, ptr %__rem, align 4, !dbg !2721
  %7 = load i64, ptr %sec, align 8, !dbg !2721
  %8 = load i32, ptr %__base, align 4, !dbg !2721
  %conv2 = zext i32 %8 to i64, !dbg !2721
  %div = udiv i64 %7, %conv2, !dbg !2721
  store i64 %div, ptr %sec, align 8, !dbg !2721
  %9 = load i32, ptr %__rem, align 4, !dbg !2721
  store i32 %9, ptr %tmp, align 4, !dbg !2721
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #12, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #12, !dbg !2722
  %10 = load i32, ptr %tmp, align 4, !dbg !2721
  %11 = load i64, ptr %sec, align 8, !dbg !2723
  %tobool3 = icmp ne i64 %11, 0, !dbg !2723
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !2725

if.then4:                                         ; preds = %if.end
  store i64 1, ptr %sec, align 8, !dbg !2726
  br label %if.end11, !dbg !2727

if.else:                                          ; preds = %if.end
  %12 = load i64, ptr %sec, align 8, !dbg !2728
  %cmp = icmp ugt i64 %12, 600, !dbg !2730
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !2731

land.lhs.true:                                    ; preds = %if.else
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !2732
  %max_delta_ticks6 = getelementptr inbounds %struct.clock_event_device, ptr %13, i32 0, i32 20, !dbg !2733
  %14 = load i64, ptr %max_delta_ticks6, align 16, !dbg !2733
  %cmp7 = icmp ugt i64 %14, 4294967295, !dbg !2734
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !2735

if.then9:                                         ; preds = %land.lhs.true
  store i64 600, ptr %sec, align 8, !dbg !2736
  br label %if.end10, !dbg !2737

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then4
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2738
  %16 = load i32, ptr %freq.addr, align 4, !dbg !2739
  %17 = load i64, ptr %sec, align 8, !dbg !2740
  %conv12 = trunc i64 %17 to i32, !dbg !2740
  call void @clockevents_calc_mult_shift(ptr noundef %15, i32 noundef %16, i32 noundef %conv12) #11, !dbg !2741
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !2742
  %min_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %18, i32 0, i32 19, !dbg !2743
  %19 = load i64, ptr %min_delta_ticks, align 8, !dbg !2743
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !2744
  %call = call i64 @cev_delta2ns(i64 noundef %19, ptr noundef %20, i1 noundef zeroext false) #11, !dbg !2745
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !2746
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 5, !dbg !2747
  store i64 %call, ptr %min_delta_ns, align 8, !dbg !2748
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !2749
  %max_delta_ticks13 = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 20, !dbg !2750
  %23 = load i64, ptr %max_delta_ticks13, align 16, !dbg !2750
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !2751
  %call14 = call i64 @cev_delta2ns(i64 noundef %23, ptr noundef %24, i1 noundef zeroext true) #11, !dbg !2752
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !2753
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %25, i32 0, i32 4, !dbg !2754
  store i64 %call14, ptr %max_delta_ns, align 32, !dbg !2755
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2756
  br label %cleanup, !dbg !2756

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !2756
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2756

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__clockevents_update_freq(ptr noundef %dev, i32 noundef %freq) #0 align 16 !dbg !2757 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %freq.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2761, metadata !DIExpression()), !dbg !2763
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !2762, metadata !DIExpression()), !dbg !2764
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2765
  %1 = load i32, ptr %freq.addr, align 4, !dbg !2766
  call void @clockevents_config(ptr noundef %0, i32 noundef %1) #11, !dbg !2767
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2768
  %call = call zeroext i1 @clockevent_state_oneshot(ptr noundef %2) #11, !dbg !2770
  br i1 %call, label %if.then, label %if.end, !dbg !2771

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2772
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2773
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 3, !dbg !2774
  %5 = load i64, ptr %next_event, align 8, !dbg !2774
  %call1 = call i32 @clockevents_program_event(ptr noundef %3, i64 noundef %5, i1 noundef zeroext false) #11, !dbg !2775
  store i32 %call1, ptr %retval, align 4, !dbg !2776
  br label %return, !dbg !2776

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2777
  %call2 = call zeroext i1 @clockevent_state_periodic(ptr noundef %6) #11, !dbg !2779
  br i1 %call2, label %if.then3, label %if.end5, !dbg !2780

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2781
  %call4 = call i32 @__clockevents_switch_state(ptr noundef %7, i32 noundef 2) #11, !dbg !2782
  store i32 %call4, ptr %retval, align 4, !dbg !2783
  br label %return, !dbg !2783

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2784
  br label %return, !dbg !2784

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !2785
  ret i32 %8, !dbg !2785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_periodic(ptr noundef %dev) #2 align 16 !dbg !2786 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2788, metadata !DIExpression()), !dbg !2789
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2790
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !2791
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !2791
  %cmp = icmp eq i32 %1, 2, !dbg !2792
  ret i1 %cmp, !dbg !2793
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @clockevents_update_freq(ptr noundef %dev, i32 noundef %freq) #0 align 16 !dbg !2794 {
entry:
  %dev.addr = alloca ptr, align 8
  %freq.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy10 = alloca i64, align 8
  %__dummy211 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2796, metadata !DIExpression()), !dbg !2810
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !2797, metadata !DIExpression()), !dbg !2811
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !2812
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2798, metadata !DIExpression()), !dbg !2813
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2814
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2799, metadata !DIExpression()), !dbg !2815
  br label %do.body, !dbg !2816

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2817

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !2818
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2800, metadata !DIExpression()), !dbg !2818
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !2818
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2804, metadata !DIExpression()), !dbg !2818
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2818
  %conv = zext i1 %cmp to i32, !dbg !2818
  store i32 1, ptr %tmp, align 4, !dbg !2818
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !2819
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !2819
  %0 = load i32, ptr %tmp, align 4, !dbg !2818
  %call = call i64 @arch_local_irq_save() #11, !dbg !2819
  store i64 %call, ptr %flags, align 8, !dbg !2819
  br label %do.cond, !dbg !2819

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2819

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !2817

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2817

do.end3:                                          ; preds = %do.cond2
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2820
  %2 = load i32, ptr %freq.addr, align 4, !dbg !2821
  %call4 = call i32 @tick_broadcast_update_freq(ptr noundef %1, i32 noundef %2) #11, !dbg !2822
  store i32 %call4, ptr %ret, align 4, !dbg !2823
  %3 = load i32, ptr %ret, align 4, !dbg !2824
  %cmp5 = icmp eq i32 %3, -19, !dbg !2826
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2827

if.then:                                          ; preds = %do.end3
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2828
  %5 = load i32, ptr %freq.addr, align 4, !dbg !2829
  %call7 = call i32 @__clockevents_update_freq(ptr noundef %4, i32 noundef %5) #11, !dbg !2830
  store i32 %call7, ptr %ret, align 4, !dbg !2831
  br label %if.end, !dbg !2832

if.end:                                           ; preds = %if.then, %do.end3
  br label %do.body8, !dbg !2833

do.body8:                                         ; preds = %if.end
  br label %do.body9, !dbg !2834

do.body9:                                         ; preds = %do.body8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy10) #12, !dbg !2835
  call void @llvm.dbg.declare(metadata ptr %__dummy10, metadata !2805, metadata !DIExpression()), !dbg !2835
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy211) #12, !dbg !2835
  call void @llvm.dbg.declare(metadata ptr %__dummy211, metadata !2809, metadata !DIExpression()), !dbg !2835
  %cmp12 = icmp eq ptr %__dummy10, %__dummy211, !dbg !2835
  %conv13 = zext i1 %cmp12 to i32, !dbg !2835
  store i32 1, ptr %tmp14, align 4, !dbg !2835
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy211) #12, !dbg !2836
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy10) #12, !dbg !2836
  %6 = load i32, ptr %tmp14, align 4, !dbg !2835
  br label %do.body15, !dbg !2836

do.body15:                                        ; preds = %do.body9
  br label %do.cond16, !dbg !2837

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !2837

do.end17:                                         ; preds = %do.cond16
  %7 = load i64, ptr %flags, align 8, !dbg !2836
  call void @arch_local_irq_restore(i64 noundef %7) #11, !dbg !2836
  br label %do.cond18, !dbg !2836

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !2836

do.end19:                                         ; preds = %do.cond18
  br label %do.cond20, !dbg !2834

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2834

do.end21:                                         ; preds = %do.cond20
  %8 = load i32, ptr %ret, align 4, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2840
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !2840
  ret i32 %8, !dbg !2841
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #6 align 16 !dbg !2842 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2847, metadata !DIExpression()), !dbg !2849
  %call = call i64 @arch_local_save_flags() #11, !dbg !2850
  store i64 %call, ptr %flags, align 8, !dbg !2849
  call void @arch_local_irq_disable() #11, !dbg !2851
  %0 = load i64, ptr %flags, align 8, !dbg !2852
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !2853
  ret i64 %0, !dbg !2854
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2855 dso_local i32 @tick_broadcast_update_freq(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #6 align 16 !dbg !2856 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2860, metadata !DIExpression()), !dbg !2861
  %0 = load i64, ptr %flags.addr, align 8, !dbg !2862
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #11, !dbg !2864
  %tobool = icmp ne i32 %call, 0, !dbg !2864
  br i1 %tobool, label %if.end, label %if.then, !dbg !2865

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #11, !dbg !2866
  br label %if.end, !dbg !2866

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clockevents_handle_noop(ptr noundef %dev) #0 align 16 !dbg !2868 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  ret void, !dbg !2872
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clockevents_exchange_device(ptr noundef %old, ptr noundef %new) #0 align 16 !dbg !2873 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2877, metadata !DIExpression()), !dbg !2879
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2878, metadata !DIExpression()), !dbg !2880
  %0 = load ptr, ptr %old.addr, align 8, !dbg !2881
  %tobool = icmp ne ptr %0, null, !dbg !2881
  br i1 %tobool, label %if.then, label %if.end, !dbg !2883

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2884
  %owner = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 27, !dbg !2886
  %2 = load ptr, ptr %owner, align 8, !dbg !2886
  call void @module_put(ptr noundef %2) #11, !dbg !2887
  %3 = load ptr, ptr %old.addr, align 8, !dbg !2888
  call void @clockevents_switch_state(ptr noundef %3, i32 noundef 0) #11, !dbg !2889
  %4 = load ptr, ptr %old.addr, align 8, !dbg !2890
  %list = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 26, !dbg !2891
  call void @list_move(ptr noundef %list, ptr noundef @clockevents_released) #11, !dbg !2892
  br label %if.end, !dbg !2893

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %new.addr, align 8, !dbg !2894
  %tobool1 = icmp ne ptr %5, null, !dbg !2894
  br i1 %tobool1, label %if.then2, label %if.end14, !dbg !2896

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !2897

do.body:                                          ; preds = %if.then2
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2899
  %call = call zeroext i1 @clockevent_state_detached(ptr noundef %6) #11, !dbg !2899
  %lnot = xor i1 %call, true, !dbg !2899
  %lnot3 = xor i1 %lnot, true, !dbg !2899
  %lnot4 = xor i1 %lnot3, true, !dbg !2899
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2899
  %conv = sext i32 %lnot.ext to i64, !dbg !2899
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2899
  %tobool5 = icmp ne i64 %expval, 0, !dbg !2899
  br i1 %tobool5, label %if.then6, label %if.end12, !dbg !2902

if.then6:                                         ; preds = %do.body
  br label %do.body7, !dbg !2899

do.body7:                                         ; preds = %if.then6
  br label %do.body8, !dbg !2903

do.body8:                                         ; preds = %do.body7
  br label %do.end, !dbg !2905

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2903

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 582, i32 0, i64 12) #12, !dbg !2907, !srcloc !2909
  br label %do.end10, !dbg !2907

do.end10:                                         ; preds = %do.body9
  unreachable, !dbg !2903

do.end11:                                         ; No predecessors!
  br label %if.end12, !dbg !2903

if.end12:                                         ; preds = %do.end11, %do.body
  br label %do.end13, !dbg !2902

do.end13:                                         ; preds = %if.end12
  %7 = load ptr, ptr %new.addr, align 8, !dbg !2910
  call void @clockevents_shutdown(ptr noundef %7) #11, !dbg !2911
  br label %if.end14, !dbg !2912

if.end14:                                         ; preds = %do.end13, %if.end
  ret void, !dbg !2913
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2914 dso_local void @module_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move(ptr noundef %list, ptr noundef %head) #2 align 16 !dbg !2915 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2917, metadata !DIExpression()), !dbg !2919
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2918, metadata !DIExpression()), !dbg !2920
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2921
  call void @__list_del_entry(ptr noundef %0) #11, !dbg !2922
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2923
  %2 = load ptr, ptr %head.addr, align 8, !dbg !2924
  call void @list_add(ptr noundef %1, ptr noundef %2) #11, !dbg !2925
  ret void, !dbg !2926
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_detached(ptr noundef %dev) #2 align 16 !dbg !2927 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2929, metadata !DIExpression()), !dbg !2930
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2931
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !2932
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !2932
  %cmp = icmp eq i32 %1, 0, !dbg !2933
  ret i1 %cmp, !dbg !2934
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clockevents_suspend() #0 align 16 !dbg !2935 {
entry:
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !2944
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2937, metadata !DIExpression()), !dbg !2945
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2938, metadata !DIExpression()), !dbg !2946
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clockevent_devices, i32 0, i32 1), align 8, !dbg !2946
  store ptr %0, ptr %__mptr, align 8, !dbg !2946
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2946
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !2946
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2946
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2947
  %2 = load ptr, ptr %tmp, align 8, !dbg !2946
  store ptr %2, ptr %dev, align 8, !dbg !2947
  br label %for.cond, !dbg !2947

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !2948
  %list = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 26, !dbg !2948
  %cmp = icmp eq ptr %list, @clockevent_devices, !dbg !2948
  %lnot = xor i1 %cmp, true, !dbg !2948
  br i1 %lnot, label %for.body, label %for.end, !dbg !2947

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %dev, align 8, !dbg !2949
  %suspend = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 17, !dbg !2951
  %5 = load ptr, ptr %suspend, align 8, !dbg !2951
  %tobool = icmp ne ptr %5, null, !dbg !2949
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2952

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr %dev, align 8, !dbg !2953
  %call = call zeroext i1 @clockevent_state_detached(ptr noundef %6) #11, !dbg !2954
  br i1 %call, label %if.end, label %if.then, !dbg !2955

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %dev, align 8, !dbg !2956
  %suspend1 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 17, !dbg !2957
  %8 = load ptr, ptr %suspend1, align 8, !dbg !2957
  %9 = load ptr, ptr %dev, align 8, !dbg !2958
  call void %8(ptr noundef %9) #11, !dbg !2956
  br label %if.end, !dbg !2956

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2959

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #12, !dbg !2960
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2941, metadata !DIExpression()), !dbg !2960
  %10 = load ptr, ptr %dev, align 8, !dbg !2960
  %list3 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 26, !dbg !2960
  %prev = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 1, !dbg !2960
  %11 = load ptr, ptr %prev, align 8, !dbg !2960
  store ptr %11, ptr %__mptr2, align 8, !dbg !2960
  %12 = load ptr, ptr %__mptr2, align 8, !dbg !2960
  %add.ptr5 = getelementptr i8, ptr %12, i64 -184, !dbg !2960
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !2960
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #12, !dbg !2948
  %13 = load ptr, ptr %tmp4, align 8, !dbg !2960
  store ptr %13, ptr %dev, align 8, !dbg !2948
  br label %for.cond, !dbg !2948, !llvm.loop !2961

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !2963
  ret void, !dbg !2963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clockevents_resume() #0 align 16 !dbg !2964 {
entry:
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !2973
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2966, metadata !DIExpression()), !dbg !2974
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2975
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2967, metadata !DIExpression()), !dbg !2975
  %0 = load ptr, ptr @clockevent_devices, align 8, !dbg !2975
  store ptr %0, ptr %__mptr, align 8, !dbg !2975
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2975
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !2975
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2975
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2976
  %2 = load ptr, ptr %tmp, align 8, !dbg !2975
  store ptr %2, ptr %dev, align 8, !dbg !2976
  br label %for.cond, !dbg !2976

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !2977
  %list = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 26, !dbg !2977
  %cmp = icmp eq ptr %list, @clockevent_devices, !dbg !2977
  %lnot = xor i1 %cmp, true, !dbg !2977
  br i1 %lnot, label %for.body, label %for.end, !dbg !2976

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %dev, align 8, !dbg !2978
  %resume = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 18, !dbg !2980
  %5 = load ptr, ptr %resume, align 64, !dbg !2980
  %tobool = icmp ne ptr %5, null, !dbg !2978
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2981

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr %dev, align 8, !dbg !2982
  %call = call zeroext i1 @clockevent_state_detached(ptr noundef %6) #11, !dbg !2983
  br i1 %call, label %if.end, label %if.then, !dbg !2984

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %dev, align 8, !dbg !2985
  %resume1 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 18, !dbg !2986
  %8 = load ptr, ptr %resume1, align 64, !dbg !2986
  %9 = load ptr, ptr %dev, align 8, !dbg !2987
  call void %8(ptr noundef %9) #11, !dbg !2985
  br label %if.end, !dbg !2985

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2988

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #12, !dbg !2989
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2970, metadata !DIExpression()), !dbg !2989
  %10 = load ptr, ptr %dev, align 8, !dbg !2989
  %list3 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 26, !dbg !2989
  %next = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 0, !dbg !2989
  %11 = load ptr, ptr %next, align 8, !dbg !2989
  store ptr %11, ptr %__mptr2, align 8, !dbg !2989
  %12 = load ptr, ptr %__mptr2, align 8, !dbg !2989
  %add.ptr5 = getelementptr i8, ptr %12, i64 -184, !dbg !2989
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !2989
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #12, !dbg !2977
  %13 = load ptr, ptr %tmp4, align 8, !dbg !2989
  store ptr %13, ptr %dev, align 8, !dbg !2977
  br label %for.cond, !dbg !2977, !llvm.loop !2990

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !2992
  ret void, !dbg !2992
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_offline_cpu(i32 noundef %cpu) #0 align 16 !dbg !2993 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @_raw_spin_lock(ptr noundef @clockevents_lock) #11, !dbg !2999
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3000
  call void @tick_broadcast_offline(i32 noundef %0) #11, !dbg !3001
  call void @_raw_spin_unlock(ptr noundef @clockevents_lock) #11, !dbg !3002
  ret void, !dbg !3003
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3004 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3007 dso_local void @tick_broadcast_offline(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3008 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_cleanup_dead_cpu(i32 noundef %cpu) #0 align 16 !dbg !3009 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp1 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__mptr15 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__mptr59 = alloca ptr, align 8
  %tmp62 = alloca ptr, align 8
  %__dummy66 = alloca i64, align 8
  %__dummy267 = alloca i64, align 8
  %tmp70 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3013, metadata !DIExpression()), !dbg !3041
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !3042
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3014, metadata !DIExpression()), !dbg !3043
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !3042
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3015, metadata !DIExpression()), !dbg !3044
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !3045
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3016, metadata !DIExpression()), !dbg !3046
  br label %do.body, !dbg !3047

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !3048
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3017, metadata !DIExpression()), !dbg !3048
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !3048
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3020, metadata !DIExpression()), !dbg !3048
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3048
  %conv = zext i1 %cmp to i32, !dbg !3048
  store i32 1, ptr %tmp1, align 4, !dbg !3048
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !3049
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !3049
  %0 = load i32, ptr %tmp1, align 4, !dbg !3048
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @clockevents_lock) #11, !dbg !3049
  store i64 %call, ptr %flags, align 8, !dbg !3049
  br label %do.cond, !dbg !3049

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3049

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3050
  call void @tick_shutdown(i32 noundef %1) #11, !dbg !3051
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !3052
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3021, metadata !DIExpression()), !dbg !3052
  %2 = load ptr, ptr @clockevents_released, align 8, !dbg !3052
  store ptr %2, ptr %__mptr, align 8, !dbg !3052
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3052
  %add.ptr = getelementptr i8, ptr %3, i64 -184, !dbg !3052
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !3052
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !3053
  %4 = load ptr, ptr %tmp2, align 8, !dbg !3052
  store ptr %4, ptr %dev, align 8, !dbg !3053
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #12, !dbg !3054
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !3024, metadata !DIExpression()), !dbg !3054
  %5 = load ptr, ptr %dev, align 8, !dbg !3054
  %list = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 26, !dbg !3054
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !3054
  %6 = load ptr, ptr %next, align 8, !dbg !3054
  store ptr %6, ptr %__mptr3, align 8, !dbg !3054
  %7 = load ptr, ptr %__mptr3, align 8, !dbg !3054
  %add.ptr5 = getelementptr i8, ptr %7, i64 -184, !dbg !3054
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #12, !dbg !3053
  %8 = load ptr, ptr %tmp4, align 8, !dbg !3054
  store ptr %8, ptr %tmp, align 8, !dbg !3053
  br label %for.cond, !dbg !3053

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load ptr, ptr %dev, align 8, !dbg !3055
  %list6 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 26, !dbg !3055
  %cmp7 = icmp eq ptr %list6, @clockevents_released, !dbg !3055
  %lnot = xor i1 %cmp7, true, !dbg !3055
  br i1 %lnot, label %for.body, label %for.end, !dbg !3053

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %dev, align 8, !dbg !3056
  %list9 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 26, !dbg !3057
  call void @list_del(ptr noundef %list9) #11, !dbg !3058
  br label %for.inc, !dbg !3058

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %tmp, align 8, !dbg !3055
  store ptr %11, ptr %dev, align 8, !dbg !3055
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #12, !dbg !3059
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !3026, metadata !DIExpression()), !dbg !3059
  %12 = load ptr, ptr %tmp, align 8, !dbg !3059
  %list11 = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 26, !dbg !3059
  %next12 = getelementptr inbounds %struct.list_head, ptr %list11, i32 0, i32 0, !dbg !3059
  %13 = load ptr, ptr %next12, align 8, !dbg !3059
  store ptr %13, ptr %__mptr10, align 8, !dbg !3059
  %14 = load ptr, ptr %__mptr10, align 8, !dbg !3059
  %add.ptr14 = getelementptr i8, ptr %14, i64 -184, !dbg !3059
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !3059
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #12, !dbg !3055
  %15 = load ptr, ptr %tmp13, align 8, !dbg !3059
  store ptr %15, ptr %tmp, align 8, !dbg !3055
  br label %for.cond, !dbg !3055, !llvm.loop !3060

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #12, !dbg !3062
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !3029, metadata !DIExpression()), !dbg !3062
  %16 = load ptr, ptr @clockevent_devices, align 8, !dbg !3062
  store ptr %16, ptr %__mptr15, align 8, !dbg !3062
  %17 = load ptr, ptr %__mptr15, align 8, !dbg !3062
  %add.ptr17 = getelementptr i8, ptr %17, i64 -184, !dbg !3062
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !3062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #12, !dbg !3063
  %18 = load ptr, ptr %tmp16, align 8, !dbg !3062
  store ptr %18, ptr %dev, align 8, !dbg !3063
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #12, !dbg !3064
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !3032, metadata !DIExpression()), !dbg !3064
  %19 = load ptr, ptr %dev, align 8, !dbg !3064
  %list19 = getelementptr inbounds %struct.clock_event_device, ptr %19, i32 0, i32 26, !dbg !3064
  %next20 = getelementptr inbounds %struct.list_head, ptr %list19, i32 0, i32 0, !dbg !3064
  %20 = load ptr, ptr %next20, align 8, !dbg !3064
  store ptr %20, ptr %__mptr18, align 8, !dbg !3064
  %21 = load ptr, ptr %__mptr18, align 8, !dbg !3064
  %add.ptr22 = getelementptr i8, ptr %21, i64 -184, !dbg !3064
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !3064
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #12, !dbg !3063
  %22 = load ptr, ptr %tmp21, align 8, !dbg !3064
  store ptr %22, ptr %tmp, align 8, !dbg !3063
  br label %for.cond23, !dbg !3063

for.cond23:                                       ; preds = %for.inc58, %for.end
  %23 = load ptr, ptr %dev, align 8, !dbg !3065
  %list24 = getelementptr inbounds %struct.clock_event_device, ptr %23, i32 0, i32 26, !dbg !3065
  %cmp25 = icmp eq ptr %list24, @clockevent_devices, !dbg !3065
  %lnot27 = xor i1 %cmp25, true, !dbg !3065
  br i1 %lnot27, label %for.body28, label %for.end64, !dbg !3063

for.body28:                                       ; preds = %for.cond23
  %24 = load i32, ptr %cpu.addr, align 4, !dbg !3066
  %25 = load ptr, ptr %dev, align 8, !dbg !3069
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %25, i32 0, i32 25, !dbg !3070
  %26 = load ptr, ptr %cpumask, align 16, !dbg !3070
  %call29 = call zeroext i1 @cpumask_test_cpu(i32 noundef %24, ptr noundef %26) #11, !dbg !3071
  br i1 %call29, label %land.lhs.true, label %if.end57, !dbg !3072

land.lhs.true:                                    ; preds = %for.body28
  %27 = load ptr, ptr %dev, align 8, !dbg !3073
  %cpumask31 = getelementptr inbounds %struct.clock_event_device, ptr %27, i32 0, i32 25, !dbg !3074
  %28 = load ptr, ptr %cpumask31, align 16, !dbg !3074
  %call32 = call i32 @cpumask_weight(ptr noundef %28) #11, !dbg !3075
  %cmp33 = icmp eq i32 %call32, 1, !dbg !3076
  br i1 %cmp33, label %land.lhs.true35, label %if.end57, !dbg !3077

land.lhs.true35:                                  ; preds = %land.lhs.true
  %29 = load ptr, ptr %dev, align 8, !dbg !3078
  %call36 = call i32 @tick_is_broadcast_device(ptr noundef %29) #11, !dbg !3079
  %tobool = icmp ne i32 %call36, 0, !dbg !3079
  br i1 %tobool, label %if.end57, label %if.then, !dbg !3080

if.then:                                          ; preds = %land.lhs.true35
  br label %do.body37, !dbg !3081

do.body37:                                        ; preds = %if.then
  %30 = load ptr, ptr %dev, align 8, !dbg !3083
  %call38 = call zeroext i1 @clockevent_state_detached(ptr noundef %30) #11, !dbg !3083
  %lnot39 = xor i1 %call38, true, !dbg !3083
  %lnot40 = xor i1 %lnot39, true, !dbg !3083
  %lnot41 = xor i1 %lnot40, true, !dbg !3083
  %lnot.ext = zext i1 %lnot41 to i32, !dbg !3083
  %conv42 = sext i32 %lnot.ext to i64, !dbg !3083
  %expval = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !3083
  %tobool43 = icmp ne i64 %expval, 0, !dbg !3083
  br i1 %tobool43, label %if.then44, label %if.end, !dbg !3086

if.then44:                                        ; preds = %do.body37
  br label %do.body45, !dbg !3083

do.body45:                                        ; preds = %if.then44
  br label %do.body46, !dbg !3087

do.body46:                                        ; preds = %do.body45
  br label %do.cond47, !dbg !3089

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !3089

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !3087

do.body49:                                        ; preds = %do.end48
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 653, i32 0, i64 12) #12, !dbg !3091, !srcloc !3093
  br label %do.cond50, !dbg !3091

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !3091

do.end51:                                         ; preds = %do.cond50
  unreachable, !dbg !3087

do.cond52:                                        ; No predecessors!
  br label %do.end53, !dbg !3087

do.end53:                                         ; preds = %do.cond52
  br label %if.end, !dbg !3087

if.end:                                           ; preds = %do.end53, %do.body37
  br label %do.cond54, !dbg !3086

do.cond54:                                        ; preds = %if.end
  br label %do.end55, !dbg !3086

do.end55:                                         ; preds = %do.cond54
  %31 = load ptr, ptr %dev, align 8, !dbg !3094
  %list56 = getelementptr inbounds %struct.clock_event_device, ptr %31, i32 0, i32 26, !dbg !3095
  call void @list_del(ptr noundef %list56) #11, !dbg !3096
  br label %if.end57, !dbg !3097

if.end57:                                         ; preds = %do.end55, %land.lhs.true35, %land.lhs.true, %for.body28
  br label %for.inc58, !dbg !3098

for.inc58:                                        ; preds = %if.end57
  %32 = load ptr, ptr %tmp, align 8, !dbg !3065
  store ptr %32, ptr %dev, align 8, !dbg !3065
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr59) #12, !dbg !3099
  call void @llvm.dbg.declare(metadata ptr %__mptr59, metadata !3034, metadata !DIExpression()), !dbg !3099
  %33 = load ptr, ptr %tmp, align 8, !dbg !3099
  %list60 = getelementptr inbounds %struct.clock_event_device, ptr %33, i32 0, i32 26, !dbg !3099
  %next61 = getelementptr inbounds %struct.list_head, ptr %list60, i32 0, i32 0, !dbg !3099
  %34 = load ptr, ptr %next61, align 8, !dbg !3099
  store ptr %34, ptr %__mptr59, align 8, !dbg !3099
  %35 = load ptr, ptr %__mptr59, align 8, !dbg !3099
  %add.ptr63 = getelementptr i8, ptr %35, i64 -184, !dbg !3099
  store ptr %add.ptr63, ptr %tmp62, align 8, !dbg !3099
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr59) #12, !dbg !3065
  %36 = load ptr, ptr %tmp62, align 8, !dbg !3099
  store ptr %36, ptr %tmp, align 8, !dbg !3065
  br label %for.cond23, !dbg !3065, !llvm.loop !3100

for.end64:                                        ; preds = %for.cond23
  br label %do.body65, !dbg !3102

do.body65:                                        ; preds = %for.end64
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy66) #12, !dbg !3103
  call void @llvm.dbg.declare(metadata ptr %__dummy66, metadata !3037, metadata !DIExpression()), !dbg !3103
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy267) #12, !dbg !3103
  call void @llvm.dbg.declare(metadata ptr %__dummy267, metadata !3040, metadata !DIExpression()), !dbg !3103
  %cmp68 = icmp eq ptr %__dummy66, %__dummy267, !dbg !3103
  %conv69 = zext i1 %cmp68 to i32, !dbg !3103
  store i32 1, ptr %tmp70, align 4, !dbg !3103
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy267) #12, !dbg !3104
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy66) #12, !dbg !3104
  %37 = load i32, ptr %tmp70, align 4, !dbg !3103
  %38 = load i64, ptr %flags, align 8, !dbg !3104
  call void @_raw_spin_unlock_irqrestore(ptr noundef @clockevents_lock, i64 noundef %38) #11, !dbg !3104
  br label %do.cond71, !dbg !3104

do.cond71:                                        ; preds = %do.body65
  br label %do.end72, !dbg !3104

do.end72:                                         ; preds = %do.cond71
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !3105
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !3105
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !3105
  ret void, !dbg !3105
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3106 dso_local void @tick_shutdown(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #2 align 16 !dbg !3107 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3111, metadata !DIExpression()), !dbg !3112
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3113
  call void @__list_del_entry(ptr noundef %0) #11, !dbg !3114
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3115
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3116
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !3117
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !3118
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !3119
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !3120
  ret void, !dbg !3121
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #6 align 16 !dbg !3122 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3126, metadata !DIExpression()), !dbg !3128
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !3127, metadata !DIExpression()), !dbg !3129
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3130
  %call = call i32 @cpumask_check(i32 noundef %0) #11, !dbg !3130
  %conv = zext i32 %call to i64, !dbg !3130
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !3130
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3130
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3130
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #11, !dbg !3130
  ret i1 %call1, !dbg !3131
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3132 dso_local i32 @tick_is_broadcast_device(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_clockevents__214_777_clockevents_init_sysfs6() #7 section ".init.text" align 16 !dbg !3133 {
entry:
  %call = call i32 @clockevents_init_sysfs() #14, !dbg !3134
  ret i32 %call, !dbg !3134
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @clockevents_init_sysfs() #7 section ".init.text" align 16 !dbg !3135 {
entry:
  %err = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !3138
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3137, metadata !DIExpression()), !dbg !3139
  %call = call i32 @subsys_system_register(ptr noundef @clockevents_subsys, ptr noundef null) #11, !dbg !3140
  store i32 %call, ptr %err, align 4, !dbg !3139
  %0 = load i32, ptr %err, align 4, !dbg !3141
  %tobool = icmp ne i32 %0, 0, !dbg !3141
  br i1 %tobool, label %if.end, label %if.then, !dbg !3143

if.then:                                          ; preds = %entry
  %call1 = call i32 @tick_init_sysfs() #14, !dbg !3144
  store i32 %call1, ptr %err, align 4, !dbg !3145
  br label %if.end, !dbg !3146

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %err, align 4, !dbg !3147
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !3148
  ret i32 %1, !dbg !3149
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clockevents_increase_min_delta(ptr noundef %dev) #0 align 16 !dbg !3150 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3152, metadata !DIExpression()), !dbg !3153
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3154
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 5, !dbg !3156
  %1 = load i64, ptr %min_delta_ns, align 8, !dbg !3156
  %cmp = icmp uge i64 %1, 1000000, !dbg !3157
  br i1 %cmp, label %if.then, label %if.end, !dbg !3158

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3159

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !3162

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.4) #14, !dbg !3159
  store i32 %call, ptr %tmp, align 4, !dbg !3162
  %2 = load i32, ptr %tmp, align 4, !dbg !3159
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !3164
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 3, !dbg !3165
  store i64 9223372036854775807, ptr %next_event, align 8, !dbg !3166
  store i32 -62, ptr %retval, align 4, !dbg !3167
  br label %return, !dbg !3167

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !3168
  %min_delta_ns1 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 5, !dbg !3170
  %5 = load i64, ptr %min_delta_ns1, align 8, !dbg !3170
  %cmp2 = icmp ult i64 %5, 5000, !dbg !3171
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !3172

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !3173
  %min_delta_ns4 = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 5, !dbg !3174
  store i64 5000, ptr %min_delta_ns4, align 8, !dbg !3175
  br label %if.end7, !dbg !3173

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !3176
  %min_delta_ns5 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 5, !dbg !3177
  %8 = load i64, ptr %min_delta_ns5, align 8, !dbg !3177
  %shr = lshr i64 %8, 1, !dbg !3178
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !3179
  %min_delta_ns6 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 5, !dbg !3180
  %10 = load i64, ptr %min_delta_ns6, align 8, !dbg !3181
  %add = add i64 %10, %shr, !dbg !3181
  store i64 %add, ptr %min_delta_ns6, align 8, !dbg !3181
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !3182
  %min_delta_ns8 = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 5, !dbg !3184
  %12 = load i64, ptr %min_delta_ns8, align 8, !dbg !3184
  %cmp9 = icmp ugt i64 %12, 1000000, !dbg !3185
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !3186

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !3187
  %min_delta_ns11 = getelementptr inbounds %struct.clock_event_device, ptr %13, i32 0, i32 5, !dbg !3188
  store i64 1000000, ptr %min_delta_ns11, align 8, !dbg !3189
  br label %if.end12, !dbg !3187

if.end12:                                         ; preds = %if.then10, %if.end7
  br label %do.body13, !dbg !3190

do.body13:                                        ; preds = %if.end12
  br label %do.end14, !dbg !3192

do.end14:                                         ; preds = %do.body13
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !3190
  %name = getelementptr inbounds %struct.clock_event_device, ptr %14, i32 0, i32 21, !dbg !3190
  %15 = load ptr, ptr %name, align 8, !dbg !3190
  %tobool = icmp ne ptr %15, null, !dbg !3190
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3190

cond.true:                                        ; preds = %do.end14
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !3190
  %name16 = getelementptr inbounds %struct.clock_event_device, ptr %16, i32 0, i32 21, !dbg !3190
  %17 = load ptr, ptr %name16, align 8, !dbg !3190
  br label %cond.end, !dbg !3190

cond.false:                                       ; preds = %do.end14
  br label %cond.end, !dbg !3190

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ @.str.6, %cond.false ], !dbg !3190
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !3190
  %min_delta_ns17 = getelementptr inbounds %struct.clock_event_device, ptr %18, i32 0, i32 5, !dbg !3190
  %19 = load i64, ptr %min_delta_ns17, align 8, !dbg !3190
  %call18 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.5, ptr noundef %cond, i64 noundef %19) #14, !dbg !3190
  store i32 %call18, ptr %tmp15, align 4, !dbg !3192
  %20 = load i32, ptr %tmp15, align 4, !dbg !3190
  store i32 0, ptr %retval, align 4, !dbg !3194
  br label %return, !dbg !3194

return:                                           ; preds = %cond.end, %do.end
  %21 = load i32, ptr %retval, align 4, !dbg !3195
  ret i32 %21, !dbg !3195
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3196 dso_local i32 @_printk_deferred(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3200 dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__clockevents_unbind(ptr noundef %arg) #0 align 16 !dbg !3205 {
entry:
  %arg.addr = alloca ptr, align 8
  %cu = alloca ptr, align 8
  %res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3207, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 8, ptr %cu) #12, !dbg !3219
  call void @llvm.dbg.declare(metadata ptr %cu, metadata !3208, metadata !DIExpression()), !dbg !3220
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !3221
  store ptr %0, ptr %cu, align 8, !dbg !3220
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #12, !dbg !3222
  call void @llvm.dbg.declare(metadata ptr %res, metadata !3210, metadata !DIExpression()), !dbg !3223
  call void @_raw_spin_lock(ptr noundef @clockevents_lock) #11, !dbg !3224
  %1 = load ptr, ptr %cu, align 8, !dbg !3225
  %ce = getelementptr inbounds %struct.ce_unbind, ptr %1, i32 0, i32 0, !dbg !3226
  %2 = load ptr, ptr %ce, align 8, !dbg !3226
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #11, !dbg !3227
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !3228
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3211, metadata !DIExpression()), !dbg !3228
  br label %do.body, !dbg !3228

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3229
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3214, metadata !DIExpression()), !dbg !3229
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3229
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3229
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3228
  br label %do.cond, !dbg !3229

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3229

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !3230
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3216, metadata !DIExpression()), !dbg !3230
  %4 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !3230, !srcloc !3231
  store i32 %4, ptr %pfo_val__, align 4, !dbg !3230
  %5 = load i32, ptr %pfo_val__, align 4, !dbg !3230
  %conv = zext i32 %5 to i64, !dbg !3230
  %conv2 = trunc i64 %conv to i32, !dbg !3230
  store i32 %conv2, ptr %tmp1, align 4, !dbg !3230
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !3228
  %6 = load i32, ptr %tmp1, align 4, !dbg !3230
  store i32 %6, ptr %pscr_ret__, align 4, !dbg !3228
  %7 = load i32, ptr %pscr_ret__, align 4, !dbg !3228
  store i32 %7, ptr %tmp3, align 4, !dbg !3228
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !3227
  %8 = load i32, ptr %tmp3, align 4, !dbg !3228
  store i32 %8, ptr %tmp, align 4, !dbg !3227
  %9 = load i32, ptr %tmp, align 4, !dbg !3227
  %call = call i32 @__clockevents_try_unbind(ptr noundef %2, i32 noundef %9) #11, !dbg !3232
  store i32 %call, ptr %res, align 4, !dbg !3233
  %10 = load i32, ptr %res, align 4, !dbg !3234
  %cmp = icmp eq i32 %10, -11, !dbg !3236
  br i1 %cmp, label %if.then, label %if.end, !dbg !3237

if.then:                                          ; preds = %do.end
  %11 = load ptr, ptr %cu, align 8, !dbg !3238
  %ce5 = getelementptr inbounds %struct.ce_unbind, ptr %11, i32 0, i32 0, !dbg !3239
  %12 = load ptr, ptr %ce5, align 8, !dbg !3239
  %call6 = call i32 @clockevents_replace(ptr noundef %12) #11, !dbg !3240
  store i32 %call6, ptr %res, align 4, !dbg !3241
  br label %if.end, !dbg !3242

if.end:                                           ; preds = %if.then, %do.end
  %13 = load i32, ptr %res, align 4, !dbg !3243
  %14 = load ptr, ptr %cu, align 8, !dbg !3244
  %res7 = getelementptr inbounds %struct.ce_unbind, ptr %14, i32 0, i32 1, !dbg !3245
  store i32 %13, ptr %res7, align 8, !dbg !3246
  call void @_raw_spin_unlock(ptr noundef @clockevents_lock) #11, !dbg !3247
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #12, !dbg !3248
  call void @llvm.lifetime.end.p0(i64 8, ptr %cu) #12, !dbg !3248
  ret void, !dbg !3248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__clockevents_try_unbind(ptr noundef %ced, i32 noundef %cpu) #0 align 16 !dbg !3249 {
entry:
  %retval = alloca i32, align 4
  %ced.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %ced, ptr %ced.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ced.addr, metadata !3251, metadata !DIExpression()), !dbg !3258
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3252, metadata !DIExpression()), !dbg !3259
  %0 = load ptr, ptr %ced.addr, align 8, !dbg !3260
  %call = call zeroext i1 @clockevent_state_detached(ptr noundef %0) #11, !dbg !3262
  br i1 %call, label %if.then, label %if.end, !dbg !3263

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ced.addr, align 8, !dbg !3264
  %list = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 26, !dbg !3266
  call void @list_del_init(ptr noundef %list) #11, !dbg !3267
  store i32 0, ptr %retval, align 4, !dbg !3268
  br label %return, !dbg !3268

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ced.addr, align 8, !dbg !3269
  br label %do.body, !dbg !3270

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3271
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3253, metadata !DIExpression()), !dbg !3271
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3271
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3270
  br label %do.end, !dbg !3271

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !3272
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3256, metadata !DIExpression()), !dbg !3272
  store i64 ptrtoint (ptr @tick_cpu_device to i64), ptr %__ptr, align 8, !dbg !3272
  %4 = load i64, ptr %__ptr, align 8, !dbg !3272
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !3272
  %idxprom = sext i32 %5 to i64, !dbg !3272
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3272
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3272
  %add = add i64 %4, %6, !dbg !3272
  %7 = inttoptr i64 %add to ptr, !dbg !3272
  store ptr %7, ptr %tmp1, align 8, !dbg !3272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !3270
  %8 = load ptr, ptr %tmp1, align 8, !dbg !3272
  store ptr %8, ptr %tmp, align 8, !dbg !3271
  %9 = load ptr, ptr %tmp, align 8, !dbg !3270
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %9, i32 0, i32 0, !dbg !3273
  %10 = load ptr, ptr %evtdev, align 8, !dbg !3273
  %cmp = icmp eq ptr %2, %10, !dbg !3274
  %11 = zext i1 %cmp to i64, !dbg !3269
  %cond = select i1 %cmp, i32 -11, i32 -16, !dbg !3269
  store i32 %cond, ptr %retval, align 4, !dbg !3275
  br label %return, !dbg !3275

return:                                           ; preds = %do.end, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !3276
  ret i32 %12, !dbg !3276
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clockevents_replace(ptr noundef %ced) #0 align 16 !dbg !3277 {
entry:
  %ced.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %newdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %ced, ptr %ced.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ced.addr, metadata !3279, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !3289
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3280, metadata !DIExpression()), !dbg !3290
  call void @llvm.lifetime.start.p0(i64 8, ptr %newdev) #12, !dbg !3289
  call void @llvm.dbg.declare(metadata ptr %newdev, metadata !3281, metadata !DIExpression()), !dbg !3291
  store ptr null, ptr %newdev, align 8, !dbg !3291
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !3292
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3282, metadata !DIExpression()), !dbg !3292
  %0 = load ptr, ptr @clockevent_devices, align 8, !dbg !3292
  store ptr %0, ptr %__mptr, align 8, !dbg !3292
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3292
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !3292
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3292
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !3293
  %2 = load ptr, ptr %tmp, align 8, !dbg !3292
  store ptr %2, ptr %dev, align 8, !dbg !3293
  br label %for.cond, !dbg !3293

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !3294
  %list = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 26, !dbg !3294
  %cmp = icmp eq ptr %list, @clockevent_devices, !dbg !3294
  %lnot = xor i1 %cmp, true, !dbg !3294
  br i1 %lnot, label %for.body, label %for.end, !dbg !3293

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %dev, align 8, !dbg !3295
  %5 = load ptr, ptr %ced.addr, align 8, !dbg !3298
  %cmp1 = icmp eq ptr %4, %5, !dbg !3299
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !3300

lor.lhs.false:                                    ; preds = %for.body
  %6 = load ptr, ptr %dev, align 8, !dbg !3301
  %call = call zeroext i1 @clockevent_state_detached(ptr noundef %6) #11, !dbg !3302
  br i1 %call, label %if.end, label %if.then, !dbg !3303

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !3304

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %newdev, align 8, !dbg !3305
  %8 = load ptr, ptr %dev, align 8, !dbg !3307
  %call2 = call zeroext i1 @tick_check_replacement(ptr noundef %7, ptr noundef %8) #11, !dbg !3308
  br i1 %call2, label %if.end4, label %if.then3, !dbg !3309

if.then3:                                         ; preds = %if.end
  br label %for.inc, !dbg !3310

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %dev, align 8, !dbg !3311
  %owner = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 27, !dbg !3313
  %10 = load ptr, ptr %owner, align 8, !dbg !3313
  %call5 = call zeroext i1 @try_module_get(ptr noundef %10) #11, !dbg !3314
  br i1 %call5, label %if.end7, label %if.then6, !dbg !3315

if.then6:                                         ; preds = %if.end4
  br label %for.inc, !dbg !3316

if.end7:                                          ; preds = %if.end4
  %11 = load ptr, ptr %newdev, align 8, !dbg !3317
  %tobool = icmp ne ptr %11, null, !dbg !3317
  br i1 %tobool, label %if.then8, label %if.end10, !dbg !3319

if.then8:                                         ; preds = %if.end7
  %12 = load ptr, ptr %newdev, align 8, !dbg !3320
  %owner9 = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 27, !dbg !3321
  %13 = load ptr, ptr %owner9, align 8, !dbg !3321
  call void @module_put(ptr noundef %13) #11, !dbg !3322
  br label %if.end10, !dbg !3322

if.end10:                                         ; preds = %if.then8, %if.end7
  %14 = load ptr, ptr %dev, align 8, !dbg !3323
  store ptr %14, ptr %newdev, align 8, !dbg !3324
  br label %for.inc, !dbg !3325

for.inc:                                          ; preds = %if.end10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #12, !dbg !3326
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !3285, metadata !DIExpression()), !dbg !3326
  %15 = load ptr, ptr %dev, align 8, !dbg !3326
  %list12 = getelementptr inbounds %struct.clock_event_device, ptr %15, i32 0, i32 26, !dbg !3326
  %next = getelementptr inbounds %struct.list_head, ptr %list12, i32 0, i32 0, !dbg !3326
  %16 = load ptr, ptr %next, align 8, !dbg !3326
  store ptr %16, ptr %__mptr11, align 8, !dbg !3326
  %17 = load ptr, ptr %__mptr11, align 8, !dbg !3326
  %add.ptr14 = getelementptr i8, ptr %17, i64 -184, !dbg !3326
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !3326
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #12, !dbg !3294
  %18 = load ptr, ptr %tmp13, align 8, !dbg !3326
  store ptr %18, ptr %dev, align 8, !dbg !3294
  br label %for.cond, !dbg !3294, !llvm.loop !3327

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %newdev, align 8, !dbg !3329
  %tobool15 = icmp ne ptr %19, null, !dbg !3329
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !3331

if.then16:                                        ; preds = %for.end
  %20 = load ptr, ptr %newdev, align 8, !dbg !3332
  call void @tick_install_replacement(ptr noundef %20) #11, !dbg !3334
  %21 = load ptr, ptr %ced.addr, align 8, !dbg !3335
  %list17 = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 26, !dbg !3336
  call void @list_del_init(ptr noundef %list17) #11, !dbg !3337
  br label %if.end18, !dbg !3338

if.end18:                                         ; preds = %if.then16, %for.end
  %22 = load ptr, ptr %newdev, align 8, !dbg !3339
  %tobool19 = icmp ne ptr %22, null, !dbg !3339
  %23 = zext i1 %tobool19 to i64, !dbg !3339
  %cond = select i1 %tobool19, i32 0, i32 -16, !dbg !3339
  call void @llvm.lifetime.end.p0(i64 8, ptr %newdev) #12, !dbg !3340
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !3340
  ret i32 %cond, !dbg !3341
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #2 align 16 !dbg !3342 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3344, metadata !DIExpression()), !dbg !3345
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3346
  call void @__list_del_entry(ptr noundef %0) #11, !dbg !3347
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3348
  call void @INIT_LIST_HEAD(ptr noundef %1) #11, !dbg !3349
  ret void, !dbg !3350
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #2 align 16 !dbg !3351 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3353, metadata !DIExpression()), !dbg !3354
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3355
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #11, !dbg !3357
  br i1 %call, label %if.end, label %if.then, !dbg !3358

if.then:                                          ; preds = %entry
  br label %return, !dbg !3359

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3360
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3361
  %2 = load ptr, ptr %prev, align 8, !dbg !3361
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3362
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3363
  %4 = load ptr, ptr %next, align 8, !dbg !3363
  call void @__list_del(ptr noundef %2, ptr noundef %4) #11, !dbg !3364
  br label %return, !dbg !3365

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #2 align 16 !dbg !3366 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3368, metadata !DIExpression()), !dbg !3369
  br label %do.body, !dbg !3370

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3371

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3373

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3371

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3375
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3375
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3375
  store volatile ptr %0, ptr %next, align 8, !dbg !3375
  br label %do.end3, !dbg !3375

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3371

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3377

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3378

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3380

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3378

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3382
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3382
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3382
  store volatile ptr %2, ptr %prev, align 8, !dbg !3382
  br label %do.end9, !dbg !3382

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3378

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #2 align 16 !dbg !3385 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3389, metadata !DIExpression()), !dbg !3390
  ret i1 true, !dbg !3391
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !3392 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3394, metadata !DIExpression()), !dbg !3396
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3395, metadata !DIExpression()), !dbg !3397
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3398
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3399
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3400
  store ptr %0, ptr %prev1, align 8, !dbg !3401
  br label %do.body, !dbg !3402

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3403

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3405

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3403

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3407
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3407
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3407
  store volatile ptr %2, ptr %next4, align 8, !dbg !3407
  br label %do.end5, !dbg !3407

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3403

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3409
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3410 dso_local zeroext i1 @tick_check_replacement(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3413 dso_local zeroext i1 @try_module_get(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3416 dso_local void @tick_install_replacement(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #6 align 16 !dbg !3417 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3422, metadata !DIExpression()), !dbg !3424
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3423, metadata !DIExpression()), !dbg !3425
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3426
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3426
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3426

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !3426
  %cmp = icmp ule i32 %2, 64, !dbg !3426
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3426

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3426
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3426
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3428

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !3429
  %5 = load i64, ptr %4, align 8, !dbg !3430
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !3431
  %sub = sub i32 0, %6, !dbg !3431
  %and = and i32 %sub, 63, !dbg !3431
  %sh_prom = zext i32 %and to i64, !dbg !3431
  %shr = lshr i64 -1, %sh_prom, !dbg !3431
  %and3 = and i64 %5, %shr, !dbg !3432
  %call = call i64 @hweight_long(i64 noundef %and3) #11, !dbg !3433
  %conv = trunc i64 %call to i32, !dbg !3433
  store i32 %conv, ptr %retval, align 4, !dbg !3434
  br label %return, !dbg !3434

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !3435
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !3436
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #11, !dbg !3437
  store i32 %call4, ptr %retval, align 4, !dbg !3438
  br label %return, !dbg !3438

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !3439
  ret i32 %9, !dbg !3439
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #6 align 16 !dbg !3440 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3445, metadata !DIExpression()), !dbg !3446
  %0 = load i64, ptr %w.addr, align 8, !dbg !3447
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3447
  br i1 %1, label %cond.true, label %cond.false, !dbg !3447

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !3447
  %and = and i64 %2, 1, !dbg !3447
  %tobool = icmp ne i64 %and, 0, !dbg !3447
  %lnot = xor i1 %tobool, true, !dbg !3447
  %lnot1 = xor i1 %lnot, true, !dbg !3447
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3447
  %3 = load i64, ptr %w.addr, align 8, !dbg !3447
  %and2 = and i64 %3, 2, !dbg !3447
  %tobool3 = icmp ne i64 %and2, 0, !dbg !3447
  %lnot4 = xor i1 %tobool3, true, !dbg !3447
  %lnot6 = xor i1 %lnot4, true, !dbg !3447
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3447
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !3447
  %4 = load i64, ptr %w.addr, align 8, !dbg !3447
  %and8 = and i64 %4, 4, !dbg !3447
  %tobool9 = icmp ne i64 %and8, 0, !dbg !3447
  %lnot10 = xor i1 %tobool9, true, !dbg !3447
  %lnot12 = xor i1 %lnot10, true, !dbg !3447
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !3447
  %add14 = add i32 %add, %lnot.ext13, !dbg !3447
  %5 = load i64, ptr %w.addr, align 8, !dbg !3447
  %and15 = and i64 %5, 8, !dbg !3447
  %tobool16 = icmp ne i64 %and15, 0, !dbg !3447
  %lnot17 = xor i1 %tobool16, true, !dbg !3447
  %lnot19 = xor i1 %lnot17, true, !dbg !3447
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3447
  %add21 = add i32 %add14, %lnot.ext20, !dbg !3447
  %6 = load i64, ptr %w.addr, align 8, !dbg !3447
  %and22 = and i64 %6, 16, !dbg !3447
  %tobool23 = icmp ne i64 %and22, 0, !dbg !3447
  %lnot24 = xor i1 %tobool23, true, !dbg !3447
  %lnot26 = xor i1 %lnot24, true, !dbg !3447
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !3447
  %add28 = add i32 %add21, %lnot.ext27, !dbg !3447
  %7 = load i64, ptr %w.addr, align 8, !dbg !3447
  %and29 = and i64 %7, 32, !dbg !3447
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3447
  %lnot31 = xor i1 %tobool30, true, !dbg !3447
  %lnot33 = xor i1 %lnot31, true, !dbg !3447
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !3447
  %add35 = add i32 %add28, %lnot.ext34, !dbg !3447
  %8 = load i64, ptr %w.addr, align 8, !dbg !3447
  %and36 = and i64 %8, 64, !dbg !3447
  %tobool37 = icmp ne i64 %and36, 0, !dbg !3447
  %lnot38 = xor i1 %tobool37, true, !dbg !3447
  %lnot40 = xor i1 %lnot38, true, !dbg !3447
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !3447
  %add42 = add i32 %add35, %lnot.ext41, !dbg !3447
  %9 = load i64, ptr %w.addr, align 8, !dbg !3447
  %and43 = and i64 %9, 128, !dbg !3447
  %tobool44 = icmp ne i64 %and43, 0, !dbg !3447
  %lnot45 = xor i1 %tobool44, true, !dbg !3447
  %lnot47 = xor i1 %lnot45, true, !dbg !3447
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !3447
  %add49 = add i32 %add42, %lnot.ext48, !dbg !3447
  %10 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr = lshr i64 %10, 8, !dbg !3447
  %and50 = and i64 %shr, 1, !dbg !3447
  %tobool51 = icmp ne i64 %and50, 0, !dbg !3447
  %lnot52 = xor i1 %tobool51, true, !dbg !3447
  %lnot54 = xor i1 %lnot52, true, !dbg !3447
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !3447
  %11 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr56 = lshr i64 %11, 8, !dbg !3447
  %and57 = and i64 %shr56, 2, !dbg !3447
  %tobool58 = icmp ne i64 %and57, 0, !dbg !3447
  %lnot59 = xor i1 %tobool58, true, !dbg !3447
  %lnot61 = xor i1 %lnot59, true, !dbg !3447
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !3447
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !3447
  %12 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr64 = lshr i64 %12, 8, !dbg !3447
  %and65 = and i64 %shr64, 4, !dbg !3447
  %tobool66 = icmp ne i64 %and65, 0, !dbg !3447
  %lnot67 = xor i1 %tobool66, true, !dbg !3447
  %lnot69 = xor i1 %lnot67, true, !dbg !3447
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !3447
  %add71 = add i32 %add63, %lnot.ext70, !dbg !3447
  %13 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr72 = lshr i64 %13, 8, !dbg !3447
  %and73 = and i64 %shr72, 8, !dbg !3447
  %tobool74 = icmp ne i64 %and73, 0, !dbg !3447
  %lnot75 = xor i1 %tobool74, true, !dbg !3447
  %lnot77 = xor i1 %lnot75, true, !dbg !3447
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !3447
  %add79 = add i32 %add71, %lnot.ext78, !dbg !3447
  %14 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr80 = lshr i64 %14, 8, !dbg !3447
  %and81 = and i64 %shr80, 16, !dbg !3447
  %tobool82 = icmp ne i64 %and81, 0, !dbg !3447
  %lnot83 = xor i1 %tobool82, true, !dbg !3447
  %lnot85 = xor i1 %lnot83, true, !dbg !3447
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !3447
  %add87 = add i32 %add79, %lnot.ext86, !dbg !3447
  %15 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr88 = lshr i64 %15, 8, !dbg !3447
  %and89 = and i64 %shr88, 32, !dbg !3447
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3447
  %lnot91 = xor i1 %tobool90, true, !dbg !3447
  %lnot93 = xor i1 %lnot91, true, !dbg !3447
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !3447
  %add95 = add i32 %add87, %lnot.ext94, !dbg !3447
  %16 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr96 = lshr i64 %16, 8, !dbg !3447
  %and97 = and i64 %shr96, 64, !dbg !3447
  %tobool98 = icmp ne i64 %and97, 0, !dbg !3447
  %lnot99 = xor i1 %tobool98, true, !dbg !3447
  %lnot101 = xor i1 %lnot99, true, !dbg !3447
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !3447
  %add103 = add i32 %add95, %lnot.ext102, !dbg !3447
  %17 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr104 = lshr i64 %17, 8, !dbg !3447
  %and105 = and i64 %shr104, 128, !dbg !3447
  %tobool106 = icmp ne i64 %and105, 0, !dbg !3447
  %lnot107 = xor i1 %tobool106, true, !dbg !3447
  %lnot109 = xor i1 %lnot107, true, !dbg !3447
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !3447
  %add111 = add i32 %add103, %lnot.ext110, !dbg !3447
  %add112 = add i32 %add49, %add111, !dbg !3447
  %18 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr113 = lshr i64 %18, 16, !dbg !3447
  %and114 = and i64 %shr113, 1, !dbg !3447
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3447
  %lnot116 = xor i1 %tobool115, true, !dbg !3447
  %lnot118 = xor i1 %lnot116, true, !dbg !3447
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !3447
  %19 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr120 = lshr i64 %19, 16, !dbg !3447
  %and121 = and i64 %shr120, 2, !dbg !3447
  %tobool122 = icmp ne i64 %and121, 0, !dbg !3447
  %lnot123 = xor i1 %tobool122, true, !dbg !3447
  %lnot125 = xor i1 %lnot123, true, !dbg !3447
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !3447
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !3447
  %20 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr128 = lshr i64 %20, 16, !dbg !3447
  %and129 = and i64 %shr128, 4, !dbg !3447
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3447
  %lnot131 = xor i1 %tobool130, true, !dbg !3447
  %lnot133 = xor i1 %lnot131, true, !dbg !3447
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !3447
  %add135 = add i32 %add127, %lnot.ext134, !dbg !3447
  %21 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr136 = lshr i64 %21, 16, !dbg !3447
  %and137 = and i64 %shr136, 8, !dbg !3447
  %tobool138 = icmp ne i64 %and137, 0, !dbg !3447
  %lnot139 = xor i1 %tobool138, true, !dbg !3447
  %lnot141 = xor i1 %lnot139, true, !dbg !3447
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !3447
  %add143 = add i32 %add135, %lnot.ext142, !dbg !3447
  %22 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr144 = lshr i64 %22, 16, !dbg !3447
  %and145 = and i64 %shr144, 16, !dbg !3447
  %tobool146 = icmp ne i64 %and145, 0, !dbg !3447
  %lnot147 = xor i1 %tobool146, true, !dbg !3447
  %lnot149 = xor i1 %lnot147, true, !dbg !3447
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !3447
  %add151 = add i32 %add143, %lnot.ext150, !dbg !3447
  %23 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr152 = lshr i64 %23, 16, !dbg !3447
  %and153 = and i64 %shr152, 32, !dbg !3447
  %tobool154 = icmp ne i64 %and153, 0, !dbg !3447
  %lnot155 = xor i1 %tobool154, true, !dbg !3447
  %lnot157 = xor i1 %lnot155, true, !dbg !3447
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !3447
  %add159 = add i32 %add151, %lnot.ext158, !dbg !3447
  %24 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr160 = lshr i64 %24, 16, !dbg !3447
  %and161 = and i64 %shr160, 64, !dbg !3447
  %tobool162 = icmp ne i64 %and161, 0, !dbg !3447
  %lnot163 = xor i1 %tobool162, true, !dbg !3447
  %lnot165 = xor i1 %lnot163, true, !dbg !3447
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !3447
  %add167 = add i32 %add159, %lnot.ext166, !dbg !3447
  %25 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr168 = lshr i64 %25, 16, !dbg !3447
  %and169 = and i64 %shr168, 128, !dbg !3447
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3447
  %lnot171 = xor i1 %tobool170, true, !dbg !3447
  %lnot173 = xor i1 %lnot171, true, !dbg !3447
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !3447
  %add175 = add i32 %add167, %lnot.ext174, !dbg !3447
  %26 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr176 = lshr i64 %26, 16, !dbg !3447
  %shr177 = lshr i64 %shr176, 8, !dbg !3447
  %and178 = and i64 %shr177, 1, !dbg !3447
  %tobool179 = icmp ne i64 %and178, 0, !dbg !3447
  %lnot180 = xor i1 %tobool179, true, !dbg !3447
  %lnot182 = xor i1 %lnot180, true, !dbg !3447
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !3447
  %27 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr184 = lshr i64 %27, 16, !dbg !3447
  %shr185 = lshr i64 %shr184, 8, !dbg !3447
  %and186 = and i64 %shr185, 2, !dbg !3447
  %tobool187 = icmp ne i64 %and186, 0, !dbg !3447
  %lnot188 = xor i1 %tobool187, true, !dbg !3447
  %lnot190 = xor i1 %lnot188, true, !dbg !3447
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !3447
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !3447
  %28 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr193 = lshr i64 %28, 16, !dbg !3447
  %shr194 = lshr i64 %shr193, 8, !dbg !3447
  %and195 = and i64 %shr194, 4, !dbg !3447
  %tobool196 = icmp ne i64 %and195, 0, !dbg !3447
  %lnot197 = xor i1 %tobool196, true, !dbg !3447
  %lnot199 = xor i1 %lnot197, true, !dbg !3447
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !3447
  %add201 = add i32 %add192, %lnot.ext200, !dbg !3447
  %29 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr202 = lshr i64 %29, 16, !dbg !3447
  %shr203 = lshr i64 %shr202, 8, !dbg !3447
  %and204 = and i64 %shr203, 8, !dbg !3447
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3447
  %lnot206 = xor i1 %tobool205, true, !dbg !3447
  %lnot208 = xor i1 %lnot206, true, !dbg !3447
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !3447
  %add210 = add i32 %add201, %lnot.ext209, !dbg !3447
  %30 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr211 = lshr i64 %30, 16, !dbg !3447
  %shr212 = lshr i64 %shr211, 8, !dbg !3447
  %and213 = and i64 %shr212, 16, !dbg !3447
  %tobool214 = icmp ne i64 %and213, 0, !dbg !3447
  %lnot215 = xor i1 %tobool214, true, !dbg !3447
  %lnot217 = xor i1 %lnot215, true, !dbg !3447
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !3447
  %add219 = add i32 %add210, %lnot.ext218, !dbg !3447
  %31 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr220 = lshr i64 %31, 16, !dbg !3447
  %shr221 = lshr i64 %shr220, 8, !dbg !3447
  %and222 = and i64 %shr221, 32, !dbg !3447
  %tobool223 = icmp ne i64 %and222, 0, !dbg !3447
  %lnot224 = xor i1 %tobool223, true, !dbg !3447
  %lnot226 = xor i1 %lnot224, true, !dbg !3447
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !3447
  %add228 = add i32 %add219, %lnot.ext227, !dbg !3447
  %32 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr229 = lshr i64 %32, 16, !dbg !3447
  %shr230 = lshr i64 %shr229, 8, !dbg !3447
  %and231 = and i64 %shr230, 64, !dbg !3447
  %tobool232 = icmp ne i64 %and231, 0, !dbg !3447
  %lnot233 = xor i1 %tobool232, true, !dbg !3447
  %lnot235 = xor i1 %lnot233, true, !dbg !3447
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !3447
  %add237 = add i32 %add228, %lnot.ext236, !dbg !3447
  %33 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr238 = lshr i64 %33, 16, !dbg !3447
  %shr239 = lshr i64 %shr238, 8, !dbg !3447
  %and240 = and i64 %shr239, 128, !dbg !3447
  %tobool241 = icmp ne i64 %and240, 0, !dbg !3447
  %lnot242 = xor i1 %tobool241, true, !dbg !3447
  %lnot244 = xor i1 %lnot242, true, !dbg !3447
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !3447
  %add246 = add i32 %add237, %lnot.ext245, !dbg !3447
  %add247 = add i32 %add175, %add246, !dbg !3447
  %add248 = add i32 %add112, %add247, !dbg !3447
  %34 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr249 = lshr i64 %34, 32, !dbg !3447
  %and250 = and i64 %shr249, 1, !dbg !3447
  %tobool251 = icmp ne i64 %and250, 0, !dbg !3447
  %lnot252 = xor i1 %tobool251, true, !dbg !3447
  %lnot254 = xor i1 %lnot252, true, !dbg !3447
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !3447
  %35 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr256 = lshr i64 %35, 32, !dbg !3447
  %and257 = and i64 %shr256, 2, !dbg !3447
  %tobool258 = icmp ne i64 %and257, 0, !dbg !3447
  %lnot259 = xor i1 %tobool258, true, !dbg !3447
  %lnot261 = xor i1 %lnot259, true, !dbg !3447
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !3447
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !3447
  %36 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr264 = lshr i64 %36, 32, !dbg !3447
  %and265 = and i64 %shr264, 4, !dbg !3447
  %tobool266 = icmp ne i64 %and265, 0, !dbg !3447
  %lnot267 = xor i1 %tobool266, true, !dbg !3447
  %lnot269 = xor i1 %lnot267, true, !dbg !3447
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !3447
  %add271 = add i32 %add263, %lnot.ext270, !dbg !3447
  %37 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr272 = lshr i64 %37, 32, !dbg !3447
  %and273 = and i64 %shr272, 8, !dbg !3447
  %tobool274 = icmp ne i64 %and273, 0, !dbg !3447
  %lnot275 = xor i1 %tobool274, true, !dbg !3447
  %lnot277 = xor i1 %lnot275, true, !dbg !3447
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !3447
  %add279 = add i32 %add271, %lnot.ext278, !dbg !3447
  %38 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr280 = lshr i64 %38, 32, !dbg !3447
  %and281 = and i64 %shr280, 16, !dbg !3447
  %tobool282 = icmp ne i64 %and281, 0, !dbg !3447
  %lnot283 = xor i1 %tobool282, true, !dbg !3447
  %lnot285 = xor i1 %lnot283, true, !dbg !3447
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !3447
  %add287 = add i32 %add279, %lnot.ext286, !dbg !3447
  %39 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr288 = lshr i64 %39, 32, !dbg !3447
  %and289 = and i64 %shr288, 32, !dbg !3447
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3447
  %lnot291 = xor i1 %tobool290, true, !dbg !3447
  %lnot293 = xor i1 %lnot291, true, !dbg !3447
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !3447
  %add295 = add i32 %add287, %lnot.ext294, !dbg !3447
  %40 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr296 = lshr i64 %40, 32, !dbg !3447
  %and297 = and i64 %shr296, 64, !dbg !3447
  %tobool298 = icmp ne i64 %and297, 0, !dbg !3447
  %lnot299 = xor i1 %tobool298, true, !dbg !3447
  %lnot301 = xor i1 %lnot299, true, !dbg !3447
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !3447
  %add303 = add i32 %add295, %lnot.ext302, !dbg !3447
  %41 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr304 = lshr i64 %41, 32, !dbg !3447
  %and305 = and i64 %shr304, 128, !dbg !3447
  %tobool306 = icmp ne i64 %and305, 0, !dbg !3447
  %lnot307 = xor i1 %tobool306, true, !dbg !3447
  %lnot309 = xor i1 %lnot307, true, !dbg !3447
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !3447
  %add311 = add i32 %add303, %lnot.ext310, !dbg !3447
  %42 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr312 = lshr i64 %42, 32, !dbg !3447
  %shr313 = lshr i64 %shr312, 8, !dbg !3447
  %and314 = and i64 %shr313, 1, !dbg !3447
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3447
  %lnot316 = xor i1 %tobool315, true, !dbg !3447
  %lnot318 = xor i1 %lnot316, true, !dbg !3447
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !3447
  %43 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr320 = lshr i64 %43, 32, !dbg !3447
  %shr321 = lshr i64 %shr320, 8, !dbg !3447
  %and322 = and i64 %shr321, 2, !dbg !3447
  %tobool323 = icmp ne i64 %and322, 0, !dbg !3447
  %lnot324 = xor i1 %tobool323, true, !dbg !3447
  %lnot326 = xor i1 %lnot324, true, !dbg !3447
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !3447
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !3447
  %44 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr329 = lshr i64 %44, 32, !dbg !3447
  %shr330 = lshr i64 %shr329, 8, !dbg !3447
  %and331 = and i64 %shr330, 4, !dbg !3447
  %tobool332 = icmp ne i64 %and331, 0, !dbg !3447
  %lnot333 = xor i1 %tobool332, true, !dbg !3447
  %lnot335 = xor i1 %lnot333, true, !dbg !3447
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !3447
  %add337 = add i32 %add328, %lnot.ext336, !dbg !3447
  %45 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr338 = lshr i64 %45, 32, !dbg !3447
  %shr339 = lshr i64 %shr338, 8, !dbg !3447
  %and340 = and i64 %shr339, 8, !dbg !3447
  %tobool341 = icmp ne i64 %and340, 0, !dbg !3447
  %lnot342 = xor i1 %tobool341, true, !dbg !3447
  %lnot344 = xor i1 %lnot342, true, !dbg !3447
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !3447
  %add346 = add i32 %add337, %lnot.ext345, !dbg !3447
  %46 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr347 = lshr i64 %46, 32, !dbg !3447
  %shr348 = lshr i64 %shr347, 8, !dbg !3447
  %and349 = and i64 %shr348, 16, !dbg !3447
  %tobool350 = icmp ne i64 %and349, 0, !dbg !3447
  %lnot351 = xor i1 %tobool350, true, !dbg !3447
  %lnot353 = xor i1 %lnot351, true, !dbg !3447
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !3447
  %add355 = add i32 %add346, %lnot.ext354, !dbg !3447
  %47 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr356 = lshr i64 %47, 32, !dbg !3447
  %shr357 = lshr i64 %shr356, 8, !dbg !3447
  %and358 = and i64 %shr357, 32, !dbg !3447
  %tobool359 = icmp ne i64 %and358, 0, !dbg !3447
  %lnot360 = xor i1 %tobool359, true, !dbg !3447
  %lnot362 = xor i1 %lnot360, true, !dbg !3447
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !3447
  %add364 = add i32 %add355, %lnot.ext363, !dbg !3447
  %48 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr365 = lshr i64 %48, 32, !dbg !3447
  %shr366 = lshr i64 %shr365, 8, !dbg !3447
  %and367 = and i64 %shr366, 64, !dbg !3447
  %tobool368 = icmp ne i64 %and367, 0, !dbg !3447
  %lnot369 = xor i1 %tobool368, true, !dbg !3447
  %lnot371 = xor i1 %lnot369, true, !dbg !3447
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !3447
  %add373 = add i32 %add364, %lnot.ext372, !dbg !3447
  %49 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr374 = lshr i64 %49, 32, !dbg !3447
  %shr375 = lshr i64 %shr374, 8, !dbg !3447
  %and376 = and i64 %shr375, 128, !dbg !3447
  %tobool377 = icmp ne i64 %and376, 0, !dbg !3447
  %lnot378 = xor i1 %tobool377, true, !dbg !3447
  %lnot380 = xor i1 %lnot378, true, !dbg !3447
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !3447
  %add382 = add i32 %add373, %lnot.ext381, !dbg !3447
  %add383 = add i32 %add311, %add382, !dbg !3447
  %50 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr384 = lshr i64 %50, 32, !dbg !3447
  %shr385 = lshr i64 %shr384, 16, !dbg !3447
  %and386 = and i64 %shr385, 1, !dbg !3447
  %tobool387 = icmp ne i64 %and386, 0, !dbg !3447
  %lnot388 = xor i1 %tobool387, true, !dbg !3447
  %lnot390 = xor i1 %lnot388, true, !dbg !3447
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !3447
  %51 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr392 = lshr i64 %51, 32, !dbg !3447
  %shr393 = lshr i64 %shr392, 16, !dbg !3447
  %and394 = and i64 %shr393, 2, !dbg !3447
  %tobool395 = icmp ne i64 %and394, 0, !dbg !3447
  %lnot396 = xor i1 %tobool395, true, !dbg !3447
  %lnot398 = xor i1 %lnot396, true, !dbg !3447
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !3447
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !3447
  %52 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr401 = lshr i64 %52, 32, !dbg !3447
  %shr402 = lshr i64 %shr401, 16, !dbg !3447
  %and403 = and i64 %shr402, 4, !dbg !3447
  %tobool404 = icmp ne i64 %and403, 0, !dbg !3447
  %lnot405 = xor i1 %tobool404, true, !dbg !3447
  %lnot407 = xor i1 %lnot405, true, !dbg !3447
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !3447
  %add409 = add i32 %add400, %lnot.ext408, !dbg !3447
  %53 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr410 = lshr i64 %53, 32, !dbg !3447
  %shr411 = lshr i64 %shr410, 16, !dbg !3447
  %and412 = and i64 %shr411, 8, !dbg !3447
  %tobool413 = icmp ne i64 %and412, 0, !dbg !3447
  %lnot414 = xor i1 %tobool413, true, !dbg !3447
  %lnot416 = xor i1 %lnot414, true, !dbg !3447
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !3447
  %add418 = add i32 %add409, %lnot.ext417, !dbg !3447
  %54 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr419 = lshr i64 %54, 32, !dbg !3447
  %shr420 = lshr i64 %shr419, 16, !dbg !3447
  %and421 = and i64 %shr420, 16, !dbg !3447
  %tobool422 = icmp ne i64 %and421, 0, !dbg !3447
  %lnot423 = xor i1 %tobool422, true, !dbg !3447
  %lnot425 = xor i1 %lnot423, true, !dbg !3447
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !3447
  %add427 = add i32 %add418, %lnot.ext426, !dbg !3447
  %55 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr428 = lshr i64 %55, 32, !dbg !3447
  %shr429 = lshr i64 %shr428, 16, !dbg !3447
  %and430 = and i64 %shr429, 32, !dbg !3447
  %tobool431 = icmp ne i64 %and430, 0, !dbg !3447
  %lnot432 = xor i1 %tobool431, true, !dbg !3447
  %lnot434 = xor i1 %lnot432, true, !dbg !3447
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !3447
  %add436 = add i32 %add427, %lnot.ext435, !dbg !3447
  %56 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr437 = lshr i64 %56, 32, !dbg !3447
  %shr438 = lshr i64 %shr437, 16, !dbg !3447
  %and439 = and i64 %shr438, 64, !dbg !3447
  %tobool440 = icmp ne i64 %and439, 0, !dbg !3447
  %lnot441 = xor i1 %tobool440, true, !dbg !3447
  %lnot443 = xor i1 %lnot441, true, !dbg !3447
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !3447
  %add445 = add i32 %add436, %lnot.ext444, !dbg !3447
  %57 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr446 = lshr i64 %57, 32, !dbg !3447
  %shr447 = lshr i64 %shr446, 16, !dbg !3447
  %and448 = and i64 %shr447, 128, !dbg !3447
  %tobool449 = icmp ne i64 %and448, 0, !dbg !3447
  %lnot450 = xor i1 %tobool449, true, !dbg !3447
  %lnot452 = xor i1 %lnot450, true, !dbg !3447
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !3447
  %add454 = add i32 %add445, %lnot.ext453, !dbg !3447
  %58 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr455 = lshr i64 %58, 32, !dbg !3447
  %shr456 = lshr i64 %shr455, 16, !dbg !3447
  %shr457 = lshr i64 %shr456, 8, !dbg !3447
  %and458 = and i64 %shr457, 1, !dbg !3447
  %tobool459 = icmp ne i64 %and458, 0, !dbg !3447
  %lnot460 = xor i1 %tobool459, true, !dbg !3447
  %lnot462 = xor i1 %lnot460, true, !dbg !3447
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !3447
  %59 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr464 = lshr i64 %59, 32, !dbg !3447
  %shr465 = lshr i64 %shr464, 16, !dbg !3447
  %shr466 = lshr i64 %shr465, 8, !dbg !3447
  %and467 = and i64 %shr466, 2, !dbg !3447
  %tobool468 = icmp ne i64 %and467, 0, !dbg !3447
  %lnot469 = xor i1 %tobool468, true, !dbg !3447
  %lnot471 = xor i1 %lnot469, true, !dbg !3447
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !3447
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !3447
  %60 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr474 = lshr i64 %60, 32, !dbg !3447
  %shr475 = lshr i64 %shr474, 16, !dbg !3447
  %shr476 = lshr i64 %shr475, 8, !dbg !3447
  %and477 = and i64 %shr476, 4, !dbg !3447
  %tobool478 = icmp ne i64 %and477, 0, !dbg !3447
  %lnot479 = xor i1 %tobool478, true, !dbg !3447
  %lnot481 = xor i1 %lnot479, true, !dbg !3447
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !3447
  %add483 = add i32 %add473, %lnot.ext482, !dbg !3447
  %61 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr484 = lshr i64 %61, 32, !dbg !3447
  %shr485 = lshr i64 %shr484, 16, !dbg !3447
  %shr486 = lshr i64 %shr485, 8, !dbg !3447
  %and487 = and i64 %shr486, 8, !dbg !3447
  %tobool488 = icmp ne i64 %and487, 0, !dbg !3447
  %lnot489 = xor i1 %tobool488, true, !dbg !3447
  %lnot491 = xor i1 %lnot489, true, !dbg !3447
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !3447
  %add493 = add i32 %add483, %lnot.ext492, !dbg !3447
  %62 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr494 = lshr i64 %62, 32, !dbg !3447
  %shr495 = lshr i64 %shr494, 16, !dbg !3447
  %shr496 = lshr i64 %shr495, 8, !dbg !3447
  %and497 = and i64 %shr496, 16, !dbg !3447
  %tobool498 = icmp ne i64 %and497, 0, !dbg !3447
  %lnot499 = xor i1 %tobool498, true, !dbg !3447
  %lnot501 = xor i1 %lnot499, true, !dbg !3447
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !3447
  %add503 = add i32 %add493, %lnot.ext502, !dbg !3447
  %63 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr504 = lshr i64 %63, 32, !dbg !3447
  %shr505 = lshr i64 %shr504, 16, !dbg !3447
  %shr506 = lshr i64 %shr505, 8, !dbg !3447
  %and507 = and i64 %shr506, 32, !dbg !3447
  %tobool508 = icmp ne i64 %and507, 0, !dbg !3447
  %lnot509 = xor i1 %tobool508, true, !dbg !3447
  %lnot511 = xor i1 %lnot509, true, !dbg !3447
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !3447
  %add513 = add i32 %add503, %lnot.ext512, !dbg !3447
  %64 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr514 = lshr i64 %64, 32, !dbg !3447
  %shr515 = lshr i64 %shr514, 16, !dbg !3447
  %shr516 = lshr i64 %shr515, 8, !dbg !3447
  %and517 = and i64 %shr516, 64, !dbg !3447
  %tobool518 = icmp ne i64 %and517, 0, !dbg !3447
  %lnot519 = xor i1 %tobool518, true, !dbg !3447
  %lnot521 = xor i1 %lnot519, true, !dbg !3447
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !3447
  %add523 = add i32 %add513, %lnot.ext522, !dbg !3447
  %65 = load i64, ptr %w.addr, align 8, !dbg !3447
  %shr524 = lshr i64 %65, 32, !dbg !3447
  %shr525 = lshr i64 %shr524, 16, !dbg !3447
  %shr526 = lshr i64 %shr525, 8, !dbg !3447
  %and527 = and i64 %shr526, 128, !dbg !3447
  %tobool528 = icmp ne i64 %and527, 0, !dbg !3447
  %lnot529 = xor i1 %tobool528, true, !dbg !3447
  %lnot531 = xor i1 %lnot529, true, !dbg !3447
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !3447
  %add533 = add i32 %add523, %lnot.ext532, !dbg !3447
  %add534 = add i32 %add454, %add533, !dbg !3447
  %add535 = add i32 %add383, %add534, !dbg !3447
  %add536 = add i32 %add248, %add535, !dbg !3447
  %conv = zext i32 %add536 to i64, !dbg !3447
  br label %cond.end, !dbg !3447

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !3447
  %call = call i64 @__arch_hweight64(i64 noundef %66) #11, !dbg !3447
  br label %cond.end, !dbg !3447

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !3447
  ret i64 %cond, !dbg !3448
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3449 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #6 align 16 !dbg !3450 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3455, metadata !DIExpression()), !dbg !3457
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #12, !dbg !3458
  call void @llvm.dbg.declare(metadata ptr %res, metadata !3456, metadata !DIExpression()), !dbg !3459
  %0 = load i64, ptr %w.addr, align 8, !dbg !3460
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #15, !dbg !3461, !srcloc !3462
  store i64 %1, ptr %res, align 8, !dbg !3461
  %2 = load i64, ptr %res, align 8, !dbg !3463
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #12, !dbg !3464
  ret i64 %2, !dbg !3465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !3466 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3470, metadata !DIExpression()), !dbg !3473
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3471, metadata !DIExpression()), !dbg !3474
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3472, metadata !DIExpression()), !dbg !3475
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3476
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3478
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3479
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11, !dbg !3480
  br i1 %call, label %if.end, label %if.then, !dbg !3481

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3482

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3483
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3484
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3485
  store ptr %3, ptr %prev1, align 8, !dbg !3486
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3487
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3488
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3489
  store ptr %5, ptr %next2, align 8, !dbg !3490
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3491
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3492
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3493
  store ptr %7, ptr %prev3, align 8, !dbg !3494
  br label %do.body, !dbg !3495

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3496

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3498

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3496

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3500
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3500
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3500
  store volatile ptr %9, ptr %next6, align 8, !dbg !3500
  br label %do.end7, !dbg !3500

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3496

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3502
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !3503 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3507, metadata !DIExpression()), !dbg !3510
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3508, metadata !DIExpression()), !dbg !3511
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3509, metadata !DIExpression()), !dbg !3512
  ret i1 true, !dbg !3513
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #2 align 16 !dbg !3514 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3520, metadata !DIExpression()), !dbg !3521
  br label %do.body, !dbg !3522

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3524

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3522
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3522
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3522
  store ptr %1, ptr %tmp, align 8, !dbg !3524
  %2 = load ptr, ptr %tmp, align 8, !dbg !3522
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3526
  %cmp = icmp eq ptr %2, %3, !dbg !3527
  %conv = zext i1 %cmp to i32, !dbg !3527
  ret i32 %conv, !dbg !3528
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clockevents_calc_mult_shift(ptr noundef %ce, i32 noundef %freq, i32 noundef %maxsec) #2 align 16 !dbg !3529 {
entry:
  %ce.addr = alloca ptr, align 8
  %freq.addr = alloca i32, align 4
  %maxsec.addr = alloca i32, align 4
  store ptr %ce, ptr %ce.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ce.addr, metadata !3533, metadata !DIExpression()), !dbg !3536
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !3534, metadata !DIExpression()), !dbg !3537
  store i32 %maxsec, ptr %maxsec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxsec.addr, metadata !3535, metadata !DIExpression()), !dbg !3538
  %0 = load ptr, ptr %ce.addr, align 8, !dbg !3539
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 6, !dbg !3540
  %1 = load ptr, ptr %ce.addr, align 8, !dbg !3541
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 7, !dbg !3542
  %2 = load i32, ptr %freq.addr, align 4, !dbg !3543
  %3 = load i32, ptr %maxsec.addr, align 4, !dbg !3544
  call void @clocks_calc_mult_shift(ptr noundef %mult, ptr noundef %shift, i32 noundef 1000000000, i32 noundef %2, i32 noundef %3) #11, !dbg !3545
  ret void, !dbg !3546
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3547 dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !3552 {
entry:
  %call = call i64 @native_save_fl() #11, !dbg !3553
  ret i64 %call, !dbg !3554
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #6 align 16 !dbg !3555 {
entry:
  call void @native_irq_disable() #11, !dbg !3556
  ret void, !dbg !3557
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !3558 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !3561
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3560, metadata !DIExpression()), !dbg !3562
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #12, !dbg !3563, !srcloc !3564
  %0 = load i64, ptr %flags, align 8, !dbg !3565
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !3566
  ret i64 %0, !dbg !3567
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #6 align 16 !dbg !3568 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3569, !srcloc !3570
  ret void, !dbg !3571
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !3572 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3576, metadata !DIExpression()), !dbg !3577
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3578
  %and = and i64 %0, 512, !dbg !3579
  %tobool = icmp ne i64 %and, 0, !dbg !3580
  %lnot = xor i1 %tobool, true, !dbg !3580
  %lnot.ext = zext i1 %lnot to i32, !dbg !3580
  ret i32 %lnot.ext, !dbg !3581
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #6 align 16 !dbg !3582 {
entry:
  call void @native_irq_enable() #11, !dbg !3583
  ret void, !dbg !3584
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #6 align 16 !dbg !3585 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3586, !srcloc !3587
  ret void, !dbg !3588
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3589 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3597, metadata !DIExpression()), !dbg !3599
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3598, metadata !DIExpression()), !dbg !3600
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3601
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3602
  %div = udiv i64 %1, 64, !dbg !3602
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3603
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !3604
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3605
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3606
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !3607
  ret i1 %call, !dbg !3608
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !3609 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3613, metadata !DIExpression()), !dbg !3614
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3615
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #11, !dbg !3616
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3617
  ret i32 %1, !dbg !3618
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !3619 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3627, metadata !DIExpression()), !dbg !3629
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3628, metadata !DIExpression()), !dbg !3630
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3631
  %1 = load i64, ptr %size.addr, align 8, !dbg !3632
  %conv = trunc i64 %1 to i32, !dbg !3632
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !3633
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3634
  %3 = load i64, ptr %size.addr, align 8, !dbg !3634
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !3634
  ret void, !dbg !3635
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3636 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3639, metadata !DIExpression()), !dbg !3641
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3640, metadata !DIExpression()), !dbg !3642
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3643
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3644
  br i1 %1, label %cond.true, label %cond.false, !dbg !3644

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3645
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3646
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !3647
  %conv = zext i1 %call to i32, !dbg !3647
  br label %cond.end, !dbg !3644

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3648
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3649
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !3650
  %conv2 = zext i1 %call1 to i32, !dbg !3650
  br label %cond.end, !dbg !3644

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3644
  %tobool = icmp ne i32 %cond, 0, !dbg !3644
  ret i1 %tobool, !dbg !3651
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !3652 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3657, metadata !DIExpression()), !dbg !3659
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3658, metadata !DIExpression()), !dbg !3660
  ret i1 true, !dbg !3661
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !3662 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3667, metadata !DIExpression()), !dbg !3670
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3668, metadata !DIExpression()), !dbg !3671
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3669, metadata !DIExpression()), !dbg !3672
  ret void, !dbg !3673
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3674 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3678, metadata !DIExpression()), !dbg !3680
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3679, metadata !DIExpression()), !dbg !3681
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3682
  %and = and i64 %0, 63, !dbg !3683
  %shl = shl i64 1, %and, !dbg !3684
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3685
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3686
  %shr = ashr i64 %2, 6, !dbg !3687
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3685
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3685
  %and1 = and i64 %shl, %3, !dbg !3688
  %cmp = icmp ne i64 %and1, 0, !dbg !3689
  ret i1 %cmp, !dbg !3690
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3691 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3693, metadata !DIExpression()), !dbg !3696
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3694, metadata !DIExpression()), !dbg !3697
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !3698
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3695, metadata !DIExpression()), !dbg !3699
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3700
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3701
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !3702, !srcloc !3703
  %3 = icmp ult i8 %2, 2, !dbg !3702
  call void @llvm.assume(i1 %3), !dbg !3702
  store i8 %2, ptr %oldbit, align 1, !dbg !3702
  %4 = load i8, ptr %oldbit, align 1, !dbg !3704, !range !2031, !noundef !412
  %tobool = trunc i8 %4 to i1, !dbg !3704
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !3705
  ret i1 %tobool, !dbg !3706
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !3707 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3711, metadata !DIExpression()), !dbg !3713
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3712, metadata !DIExpression()), !dbg !3714
  ret void, !dbg !3715
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3716 dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @tick_init_sysfs() #7 section ".init.text" align 16 !dbg !3720 {
entry:
  %retval = alloca i32, align 4
  %cpu = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !3733
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3722, metadata !DIExpression()), !dbg !3734
  store i32 0, ptr %cpu, align 4, !dbg !3735
  br label %for.cond, !dbg !3735

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !3736
  %conv = sext i32 %0 to i64, !dbg !3736
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #11, !dbg !3736
  %conv1 = trunc i64 %call to i32, !dbg !3736
  store i32 %conv1, ptr %cpu, align 4, !dbg !3736
  %1 = load i32, ptr %cpu, align 4, !dbg !3736
  %cmp = icmp ult i32 %1, 64, !dbg !3736
  br i1 %cmp, label %for.body, label %for.end, !dbg !3735

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !3737
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3723, metadata !DIExpression()), !dbg !3738
  br label %do.body, !dbg !3739

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3740
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3727, metadata !DIExpression()), !dbg !3740
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3740
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !3740
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3739
  br label %do.cond, !dbg !3740

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3740

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !3741
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3730, metadata !DIExpression()), !dbg !3741
  store i64 ptrtoint (ptr @tick_percpu_dev to i64), ptr %__ptr, align 8, !dbg !3741
  %3 = load i64, ptr %__ptr, align 8, !dbg !3741
  %4 = load i32, ptr %cpu, align 4, !dbg !3741
  %idxprom = sext i32 %4 to i64, !dbg !3741
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3741
  %5 = load i64, ptr %arrayidx, align 8, !dbg !3741
  %add = add i64 %3, %5, !dbg !3741
  %6 = inttoptr i64 %add to ptr, !dbg !3741
  store ptr %6, ptr %tmp3, align 8, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !3739
  %7 = load ptr, ptr %tmp3, align 8, !dbg !3741
  store ptr %7, ptr %tmp, align 8, !dbg !3740
  %8 = load ptr, ptr %tmp, align 8, !dbg !3739
  store ptr %8, ptr %dev, align 8, !dbg !3738
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !3742
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3732, metadata !DIExpression()), !dbg !3743
  %9 = load i32, ptr %cpu, align 4, !dbg !3744
  %10 = load ptr, ptr %dev, align 8, !dbg !3745
  %id = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27, !dbg !3746
  store i32 %9, ptr %id, align 8, !dbg !3747
  %11 = load ptr, ptr %dev, align 8, !dbg !3748
  %bus = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 5, !dbg !3749
  store ptr @clockevents_subsys, ptr %bus, align 8, !dbg !3750
  %12 = load ptr, ptr %dev, align 8, !dbg !3751
  %call4 = call i32 @device_register(ptr noundef %12) #11, !dbg !3752
  store i32 %call4, ptr %err, align 4, !dbg !3753
  %13 = load i32, ptr %err, align 4, !dbg !3754
  %tobool = icmp ne i32 %13, 0, !dbg !3754
  br i1 %tobool, label %if.end, label %if.then, !dbg !3756

if.then:                                          ; preds = %do.end
  %14 = load ptr, ptr %dev, align 8, !dbg !3757
  %call5 = call i32 @device_create_file(ptr noundef %14, ptr noundef @dev_attr_current_device) #11, !dbg !3758
  store i32 %call5, ptr %err, align 4, !dbg !3759
  br label %if.end, !dbg !3760

if.end:                                           ; preds = %if.then, %do.end
  %15 = load i32, ptr %err, align 4, !dbg !3761
  %tobool6 = icmp ne i32 %15, 0, !dbg !3761
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !3763

if.then7:                                         ; preds = %if.end
  %16 = load ptr, ptr %dev, align 8, !dbg !3764
  %call8 = call i32 @device_create_file(ptr noundef %16, ptr noundef @dev_attr_unbind_device) #11, !dbg !3765
  store i32 %call8, ptr %err, align 4, !dbg !3766
  br label %if.end9, !dbg !3767

if.end9:                                          ; preds = %if.then7, %if.end
  %17 = load i32, ptr %err, align 4, !dbg !3768
  %tobool10 = icmp ne i32 %17, 0, !dbg !3768
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3770

if.then11:                                        ; preds = %if.end9
  %18 = load i32, ptr %err, align 4, !dbg !3771
  store i32 %18, ptr %retval, align 4, !dbg !3772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3772

if.end12:                                         ; preds = %if.end9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3773
  br label %cleanup, !dbg !3773

cleanup:                                          ; preds = %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !3773
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !3773
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3774

for.inc:                                          ; preds = %cleanup.cont
  %19 = load i32, ptr %cpu, align 4, !dbg !3736
  %inc = add i32 %19, 1, !dbg !3736
  store i32 %inc, ptr %cpu, align 4, !dbg !3736
  br label %for.cond, !dbg !3736, !llvm.loop !3775

for.end:                                          ; preds = %for.cond
  %call14 = call i32 @tick_broadcast_init_sysfs() #14, !dbg !3777
  store i32 %call14, ptr %retval, align 4, !dbg !3778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !3778

cleanup15:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !3779
  %20 = load i32, ptr %retval, align 4, !dbg !3779
  ret i32 %20, !dbg !3779
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #2 align 16 !dbg !3780 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3785, metadata !DIExpression()), !dbg !3791
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3786, metadata !DIExpression()), !dbg !3792
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3787, metadata !DIExpression()), !dbg !3793
  %0 = load i64, ptr %size.addr, align 8, !dbg !3794
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3794
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3794

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3794
  %cmp = icmp ule i64 %2, 64, !dbg !3794
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3794

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3794
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3794
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3795

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !3796
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3788, metadata !DIExpression()), !dbg !3797
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3798
  %5 = load i64, ptr %size.addr, align 8, !dbg !3798
  %cmp3 = icmp uge i64 %4, %5, !dbg !3798
  %lnot = xor i1 %cmp3, true, !dbg !3798
  %lnot4 = xor i1 %lnot, true, !dbg !3798
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3798
  %conv = sext i32 %lnot.ext to i64, !dbg !3798
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3798
  %tobool = icmp ne i64 %expval, 0, !dbg !3798
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3800

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3801
  store i64 %6, ptr %retval, align 8, !dbg !3802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3802

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3803
  %8 = load i64, ptr %7, align 8, !dbg !3804
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3805
  %shl = shl i64 1, %9, !dbg !3805
  %sub = sub i64 -1, %shl, !dbg !3805
  %add = add i64 %sub, 1, !dbg !3805
  %10 = load i64, ptr %size.addr, align 8, !dbg !3805
  %sub6 = sub i64 %10, 1, !dbg !3805
  %sub7 = sub i64 63, %sub6, !dbg !3805
  %shr = lshr i64 -1, %sub7, !dbg !3805
  %and = and i64 %add, %shr, !dbg !3805
  %add8 = add i64 0, %and, !dbg !3805
  %and9 = and i64 %8, %add8, !dbg !3806
  store i64 %and9, ptr %val, align 8, !dbg !3807
  %11 = load i64, ptr %val, align 8, !dbg !3808
  %tobool10 = icmp ne i64 %11, 0, !dbg !3808
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3808

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !3809
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3809
  br i1 %13, label %cond.true11, label %cond.false, !dbg !3809

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3809
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !3809
  %cast = trunc i64 %15 to i32, !dbg !3809
  %conv12 = sext i32 %cast to i64, !dbg !3809
  br label %cond.end, !dbg !3809

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !3809
  %call = call i64 @variable__ffs(i64 noundef %16) #11, !dbg !3809
  br label %cond.end, !dbg !3809

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !3809
  br label %cond.end14, !dbg !3808

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !3810
  br label %cond.end14, !dbg !3808

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3808
  store i64 %cond15, ptr %retval, align 8, !dbg !3811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3811

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !3812
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !3813
  %19 = load i64, ptr %size.addr, align 8, !dbg !3814
  %20 = load i64, ptr %offset.addr, align 8, !dbg !3815
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #11, !dbg !3816
  store i64 %call17, ptr %retval, align 8, !dbg !3817
  br label %return, !dbg !3817

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !3818
  ret i64 %21, !dbg !3818
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3819 dso_local i32 @device_register(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3820 dso_local i32 @device_create_file(ptr noundef, ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @tick_broadcast_init_sysfs() #7 section ".init.text" align 16 !dbg !3825 {
entry:
  %err = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !3828
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3827, metadata !DIExpression()), !dbg !3829
  %call = call i32 @device_register(ptr noundef @tick_bc_dev) #11, !dbg !3830
  store i32 %call, ptr %err, align 4, !dbg !3829
  %0 = load i32, ptr %err, align 4, !dbg !3831
  %tobool = icmp ne i32 %0, 0, !dbg !3831
  br i1 %tobool, label %if.end, label %if.then, !dbg !3833

if.then:                                          ; preds = %entry
  %call1 = call i32 @device_create_file(ptr noundef @tick_bc_dev, ptr noundef @dev_attr_current_device) #11, !dbg !3834
  store i32 %call1, ptr %err, align 4, !dbg !3835
  br label %if.end, !dbg !3836

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %err, align 4, !dbg !3837
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !3838
  ret i32 %1, !dbg !3839
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !3840 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3842, metadata !DIExpression()), !dbg !3843
  %0 = load i64, ptr %word.addr, align 8, !dbg !3844
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !3845, !srcloc !3846
  store i64 %1, ptr %word.addr, align 8, !dbg !3845
  %2 = load i64, ptr %word.addr, align 8, !dbg !3847
  ret i64 %2, !dbg !3848
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3849 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @current_device_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3850 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %count = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3852, metadata !DIExpression()), !dbg !3857
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3853, metadata !DIExpression()), !dbg !3858
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3854, metadata !DIExpression()), !dbg !3859
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #12, !dbg !3860
  call void @llvm.dbg.declare(metadata ptr %td, metadata !3855, metadata !DIExpression()), !dbg !3861
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #12, !dbg !3862
  call void @llvm.dbg.declare(metadata ptr %count, metadata !3856, metadata !DIExpression()), !dbg !3863
  store i64 0, ptr %count, align 8, !dbg !3863
  call void @_raw_spin_lock_irq(ptr noundef @clockevents_lock) #11, !dbg !3864
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3865
  %call = call ptr @tick_get_tick_dev(ptr noundef %0) #11, !dbg !3866
  store ptr %call, ptr %td, align 8, !dbg !3867
  %1 = load ptr, ptr %td, align 8, !dbg !3868
  %tobool = icmp ne ptr %1, null, !dbg !3868
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3870

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %td, align 8, !dbg !3871
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %2, i32 0, i32 0, !dbg !3872
  %3 = load ptr, ptr %evtdev, align 8, !dbg !3872
  %tobool1 = icmp ne ptr %3, null, !dbg !3871
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3873

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !3874
  %5 = load ptr, ptr %td, align 8, !dbg !3875
  %evtdev2 = getelementptr inbounds %struct.tick_device, ptr %5, i32 0, i32 0, !dbg !3876
  %6 = load ptr, ptr %evtdev2, align 8, !dbg !3876
  %name = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 21, !dbg !3877
  %7 = load ptr, ptr %name, align 8, !dbg !3877
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %4, i64 noundef 4096, ptr noundef @.str.10, ptr noundef %7) #11, !dbg !3878
  %conv = sext i32 %call3 to i64, !dbg !3878
  store i64 %conv, ptr %count, align 8, !dbg !3879
  br label %if.end, !dbg !3880

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @_raw_spin_unlock_irq(ptr noundef @clockevents_lock) #11, !dbg !3881
  %8 = load i64, ptr %count, align 8, !dbg !3882
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #12, !dbg !3883
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #12, !dbg !3883
  ret i64 %8, !dbg !3884
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3885 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tick_get_tick_dev(ptr noundef %dev) #0 align 16 !dbg !3886 {
entry:
  %dev.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3890, metadata !DIExpression()), !dbg !3896
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3897
  %cmp = icmp eq ptr %0, @tick_bc_dev, !dbg !3898
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3897

cond.true:                                        ; preds = %entry
  %call = call ptr @tick_get_broadcast_device() #11, !dbg !3899
  br label %cond.end, !dbg !3897

cond.false:                                       ; preds = %entry
  br label %do.body, !dbg !3900

do.body:                                          ; preds = %cond.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3901
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3891, metadata !DIExpression()), !dbg !3901
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3901
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !3901
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3900
  br label %do.end, !dbg !3901

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !3902
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3894, metadata !DIExpression()), !dbg !3902
  store i64 ptrtoint (ptr @tick_cpu_device to i64), ptr %__ptr, align 8, !dbg !3902
  %2 = load i64, ptr %__ptr, align 8, !dbg !3902
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !3902
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !3902
  %4 = load i32, ptr %id, align 8, !dbg !3902
  %idxprom = zext i32 %4 to i64, !dbg !3902
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3902
  %5 = load i64, ptr %arrayidx, align 8, !dbg !3902
  %add = add i64 %2, %5, !dbg !3902
  %6 = inttoptr i64 %add to ptr, !dbg !3902
  store ptr %6, ptr %tmp1, align 8, !dbg !3902
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !3900
  %7 = load ptr, ptr %tmp1, align 8, !dbg !3902
  store ptr %7, ptr %tmp, align 8, !dbg !3901
  %8 = load ptr, ptr %tmp, align 8, !dbg !3900
  br label %cond.end, !dbg !3897

cond.end:                                         ; preds = %do.end, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %8, %do.end ], !dbg !3897
  ret ptr %cond, !dbg !3903
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3904 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3908 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3909 dso_local ptr @tick_get_broadcast_device() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @unbind_device_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3912 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %name = alloca [32 x i8], align 16
  %ret = alloca i64, align 8
  %ce = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3914, metadata !DIExpression()), !dbg !3928
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3915, metadata !DIExpression()), !dbg !3929
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3916, metadata !DIExpression()), !dbg !3930
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3917, metadata !DIExpression()), !dbg !3931
  call void @llvm.lifetime.start.p0(i64 32, ptr %name) #12, !dbg !3932
  call void @llvm.dbg.declare(metadata ptr %name, metadata !3918, metadata !DIExpression()), !dbg !3933
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !3934
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3919, metadata !DIExpression()), !dbg !3935
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3936
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !3937
  %1 = load i64, ptr %count.addr, align 8, !dbg !3938
  %call = call i64 @sysfs_get_uname(ptr noundef %0, ptr noundef %arraydecay, i64 noundef %1) #11, !dbg !3939
  store i64 %call, ptr %ret, align 8, !dbg !3935
  call void @llvm.lifetime.start.p0(i64 8, ptr %ce) #12, !dbg !3940
  call void @llvm.dbg.declare(metadata ptr %ce, metadata !3920, metadata !DIExpression()), !dbg !3941
  store ptr null, ptr %ce, align 8, !dbg !3941
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #12, !dbg !3940
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !3921, metadata !DIExpression()), !dbg !3942
  %2 = load i64, ptr %ret, align 8, !dbg !3943
  %cmp = icmp slt i64 %2, 0, !dbg !3945
  br i1 %cmp, label %if.then, label %if.end, !dbg !3946

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %ret, align 8, !dbg !3947
  store i64 %3, ptr %retval, align 8, !dbg !3948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3948

if.end:                                           ; preds = %entry
  store i64 -19, ptr %ret, align 8, !dbg !3949
  call void @mutex_lock(ptr noundef @clockevents_mutex) #11, !dbg !3950
  call void @_raw_spin_lock_irq(ptr noundef @clockevents_lock) #11, !dbg !3951
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !3952
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3922, metadata !DIExpression()), !dbg !3952
  %4 = load ptr, ptr @clockevent_devices, align 8, !dbg !3952
  store ptr %4, ptr %__mptr, align 8, !dbg !3952
  %5 = load ptr, ptr %__mptr, align 8, !dbg !3952
  %add.ptr = getelementptr i8, ptr %5, i64 -184, !dbg !3952
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3952
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !3953
  %6 = load ptr, ptr %tmp, align 8, !dbg !3952
  store ptr %6, ptr %iter, align 8, !dbg !3953
  br label %for.cond, !dbg !3953

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load ptr, ptr %iter, align 8, !dbg !3954
  %list = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 26, !dbg !3954
  %cmp1 = icmp eq ptr %list, @clockevent_devices, !dbg !3954
  %lnot = xor i1 %cmp1, true, !dbg !3954
  br i1 %lnot, label %for.body, label %for.end, !dbg !3953

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %iter, align 8, !dbg !3955
  %name2 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 21, !dbg !3958
  %9 = load ptr, ptr %name2, align 8, !dbg !3958
  %arraydecay3 = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !3959
  %call4 = call i32 @strcmp(ptr noundef %9, ptr noundef %arraydecay3) #11, !dbg !3960
  %tobool = icmp ne i32 %call4, 0, !dbg !3960
  br i1 %tobool, label %if.end7, label %if.then5, !dbg !3961

if.then5:                                         ; preds = %for.body
  %10 = load ptr, ptr %iter, align 8, !dbg !3962
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !3964
  %id = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27, !dbg !3965
  %12 = load i32, ptr %id, align 8, !dbg !3965
  %call6 = call i32 @__clockevents_try_unbind(ptr noundef %10, i32 noundef %12) #11, !dbg !3966
  %conv = sext i32 %call6 to i64, !dbg !3966
  store i64 %conv, ptr %ret, align 8, !dbg !3967
  %13 = load ptr, ptr %iter, align 8, !dbg !3968
  store ptr %13, ptr %ce, align 8, !dbg !3969
  br label %for.end, !dbg !3970

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !3971

for.inc:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #12, !dbg !3972
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !3925, metadata !DIExpression()), !dbg !3972
  %14 = load ptr, ptr %iter, align 8, !dbg !3972
  %list9 = getelementptr inbounds %struct.clock_event_device, ptr %14, i32 0, i32 26, !dbg !3972
  %next = getelementptr inbounds %struct.list_head, ptr %list9, i32 0, i32 0, !dbg !3972
  %15 = load ptr, ptr %next, align 8, !dbg !3972
  store ptr %15, ptr %__mptr8, align 8, !dbg !3972
  %16 = load ptr, ptr %__mptr8, align 8, !dbg !3972
  %add.ptr11 = getelementptr i8, ptr %16, i64 -184, !dbg !3972
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !3972
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #12, !dbg !3954
  %17 = load ptr, ptr %tmp10, align 8, !dbg !3972
  store ptr %17, ptr %iter, align 8, !dbg !3954
  br label %for.cond, !dbg !3954, !llvm.loop !3973

for.end:                                          ; preds = %if.then5, %for.cond
  call void @_raw_spin_unlock_irq(ptr noundef @clockevents_lock) #11, !dbg !3975
  %18 = load i64, ptr %ret, align 8, !dbg !3976
  %cmp12 = icmp eq i64 %18, -11, !dbg !3978
  br i1 %cmp12, label %if.then14, label %if.end18, !dbg !3979

if.then14:                                        ; preds = %for.end
  %19 = load ptr, ptr %ce, align 8, !dbg !3980
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !3981
  %id15 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27, !dbg !3982
  %21 = load i32, ptr %id15, align 8, !dbg !3982
  %call16 = call i32 @clockevents_unbind(ptr noundef %19, i32 noundef %21) #11, !dbg !3983
  %conv17 = sext i32 %call16 to i64, !dbg !3983
  store i64 %conv17, ptr %ret, align 8, !dbg !3984
  br label %if.end18, !dbg !3985

if.end18:                                         ; preds = %if.then14, %for.end
  call void @mutex_unlock(ptr noundef @clockevents_mutex) #11, !dbg !3986
  %22 = load i64, ptr %ret, align 8, !dbg !3987
  %tobool19 = icmp ne i64 %22, 0, !dbg !3987
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !3987

cond.true:                                        ; preds = %if.end18
  %23 = load i64, ptr %ret, align 8, !dbg !3988
  br label %cond.end, !dbg !3987

cond.false:                                       ; preds = %if.end18
  %24 = load i64, ptr %count.addr, align 8, !dbg !3989
  br label %cond.end, !dbg !3987

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !3987
  store i64 %cond, ptr %retval, align 8, !dbg !3990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3990

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #12, !dbg !3991
  call void @llvm.lifetime.end.p0(i64 8, ptr %ce) #12, !dbg !3991
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !3991
  call void @llvm.lifetime.end.p0(i64 32, ptr %name) #12, !dbg !3991
  %25 = load i64, ptr %retval, align 8, !dbg !3991
  ret i64 %25, !dbg !3991
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3992 dso_local i64 @sysfs_get_uname(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3995 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(read) }
attributes #14 = { cold noredzone }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!llvm.ident = !{!1951}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_clockevent_delta2ns206", scope: !2, file: !3, line: 89, type: !103, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.clockevents.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/clockevents\22 -D KBUILD_BASENAME=\22clockevents\22 -D KBUILD_MODNAME=\22clockevents\22 -D __KBUILD_MODNAME=kmod_clockevents -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/clockevents.ll kernel/time/clockevents.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !1785, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/time/clockevents.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4902fc897dc7f7d5fee75ac7c3172047")
!4 = !{!5, !14, !21, !27, !32, !37, !43, !50, !55, !63, !71, !77, !86, !91, !96}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_event_state", file: !6, line: 35, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/clockchips.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86f5f8ec61303214145eac8153b8fae6")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CLOCK_EVT_STATE_DETACHED", value: 0)
!10 = !DIEnumerator(name: "CLOCK_EVT_STATE_SHUTDOWN", value: 1)
!11 = !DIEnumerator(name: "CLOCK_EVT_STATE_PERIODIC", value: 2)
!12 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT", value: 3)
!13 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT_STOPPED", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !22, line: 26, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!25 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!26 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 10, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "false", value: 0)
!31 = !DIEnumerator(name: "true", value: 1)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_device_mode", file: !33, line: 7, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "kernel/time/tick-sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0af3376d02c13b090a2952893b05c615")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "TICKDEV_MODE_PERIODIC", value: 0)
!36 = !DIEnumerator(name: "TICKDEV_MODE_ONESHOT", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !38, line: 45, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!41 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!42 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !44, line: 487, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!47 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!48 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!49 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !51, line: 65, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!54 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !56, line: 620, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!59 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!60 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!61 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!62 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !56, line: 597, baseType: !64, size: 32, elements: !65)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !{!66, !67, !68, !69, !70}
!66 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!67 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!68 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!69 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!70 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !72, line: 30, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!76 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !44, line: 547, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85}
!79 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!80 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!81 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!82 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!83 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!84 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!85 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !44, line: 564, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!89 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!90 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !44, line: 577, baseType: !7, size: 32, elements: !92)
!92 = !{!93, !94, !95}
!93 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!94 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!95 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !44, line: 503, baseType: !7, size: 32, elements: !97)
!97 = !{!98, !99, !100, !101}
!98 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!99 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!100 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!101 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!102 = !{!103, !104, !109, !112, !111, !114, !115, !124, !64, !125, !126, !1207, !1208, !1213, !7, !110, !1215, !1190, !1217}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !105, line: 22, baseType: !106)
!105 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!108 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !105, line: 23, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !111)
!111 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !113, line: 115, baseType: !104)
!113 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!114 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !118, line: 19, size: 64, elements: !119)
!118 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !117, file: !118, line: 19, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 1)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_event_device", file: !6, line: 100, size: 2048, align: 512, elements: !128)
!128 = !{!129, !133, !137, !143, !144, !145, !146, !149, !150, !151, !152, !153, !157, !158, !159, !160, !161, !165, !166, !167, !168, !169, !173, !174, !175, !176, !177, !183}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event_handler", scope: !127, file: !6, line: 101, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !126}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_event", scope: !127, file: !6, line: 102, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!64, !114, !126}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_ktime", scope: !127, file: !6, line: 103, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!64, !141, !126}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !142, line: 29, baseType: !104)
!142 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next_event", scope: !127, file: !6, line: 104, baseType: !141, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ns", scope: !127, file: !6, line: 105, baseType: !109, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ns", scope: !127, file: !6, line: 106, baseType: !109, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !127, file: !6, line: 107, baseType: !147, size: 32, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !105, line: 21, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !7)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !127, file: !6, line: 108, baseType: !147, size: 32, offset: 416)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !127, file: !6, line: 109, baseType: !5, size: 32, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !127, file: !6, line: 110, baseType: !7, size: 32, offset: 480)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !127, file: !6, line: 111, baseType: !114, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_periodic", scope: !127, file: !6, line: 113, baseType: !154, size: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!64, !126}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot", scope: !127, file: !6, line: 114, baseType: !154, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot_stopped", scope: !127, file: !6, line: 115, baseType: !154, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_shutdown", scope: !127, file: !6, line: 116, baseType: !154, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tick_resume", scope: !127, file: !6, line: 117, baseType: !154, size: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast", scope: !127, file: !6, line: 119, baseType: !162, size: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !115}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !127, file: !6, line: 120, baseType: !130, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !127, file: !6, line: 121, baseType: !130, size: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ticks", scope: !127, file: !6, line: 122, baseType: !114, size: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ticks", scope: !127, file: !6, line: 123, baseType: !114, size: 64, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !6, line: 125, baseType: !170, size: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !127, file: !6, line: 126, baseType: !64, size: 32, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !127, file: !6, line: 127, baseType: !64, size: 32, offset: 1312)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "bound_on", scope: !127, file: !6, line: 128, baseType: !64, size: 32, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !127, file: !6, line: 129, baseType: !115, size: 64, offset: 1408)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !127, file: !6, line: 130, baseType: !178, size: 128, offset: 1472)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !113, line: 190, size: 128, elements: !179)
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !113, line: 191, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !113, line: 191, baseType: !181, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !127, file: !6, line: 131, baseType: !184, size: 64, offset: 1600)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !186)
!186 = !{!187, !188, !189, !193, !863, !889, !890, !891, !892, !896, !899, !900, !901, !954, !955, !956, !957, !958, !959, !960, !961, !964, !968, !988, !1005, !1006, !1007, !1008, !1017, !1040, !1041, !1044, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1058, !1059, !1165, !1173, !1174, !1175, !1177, !1181, !1182, !1186, !1187, !1188, !1189, !1191, !1192, !1193, !1200, !1201, !1202, !1206}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !185, file: !15, line: 403, baseType: !14, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !185, file: !15, line: 406, baseType: !178, size: 128, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !15, line: 409, baseType: !190, size: 448, offset: 192)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 448, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 56)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !185, file: !15, line: 417, baseType: !194, size: 768, offset: 640)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !195)
!195 = !{!196, !846, !847, !848, !851}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !194, file: !15, line: 46, baseType: !197, size: 512)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !198, line: 64, size: 512, elements: !199)
!198 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!199 = !{!200, !201, !202, !204, !291, !716, !831, !841, !842, !843, !844, !845}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !198, line: 65, baseType: !170, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !197, file: !198, line: 66, baseType: !178, size: 128, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !198, line: 67, baseType: !203, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !197, file: !198, line: 68, baseType: !205, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !198, line: 168, size: 768, elements: !207)
!207 = !{!208, !209, !250, !251}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !206, file: !198, line: 169, baseType: !178, size: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !206, file: !198, line: 170, baseType: !210, size: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !211, line: 29, baseType: !212)
!211 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !211, line: 17, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !211, line: 18, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !211, line: 18, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !215, file: !211, line: 19, baseType: !218, size: 32)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !219, line: 14, size: 32, elements: !220)
!219 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !218, file: !219, line: 15, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !223, line: 44, baseType: !224)
!223 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !223, line: 14, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !223, line: 15, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !223, line: 15, size: 32, elements: !228)
!228 = !{!229, !234, !242}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !227, file: !223, line: 16, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !113, line: 174, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 172, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !231, file: !113, line: 173, baseType: !64, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !223, line: 24, baseType: !235, size: 16)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !223, line: 24, size: 16, elements: !236)
!236 = !{!237, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !235, file: !223, line: 25, baseType: !238, size: 8)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !105, line: 17, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !107, line: 21, baseType: !240)
!240 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !235, file: !223, line: 26, baseType: !238, size: 8, offset: 8)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !223, line: 28, baseType: !243, size: 32)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !223, line: 28, size: 32, elements: !244)
!244 = !{!245, !249}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !243, file: !223, line: 29, baseType: !246, size: 16)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !105, line: 19, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !107, line: 24, baseType: !248)
!248 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !243, file: !223, line: 30, baseType: !246, size: 16, offset: 16)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !206, file: !198, line: 171, baseType: !197, size: 512, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !206, file: !198, line: 172, baseType: !252, size: 64, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !198, line: 133, size: 192, elements: !255)
!255 = !{!256, !263, !268}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !254, file: !198, line: 134, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!64, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !198, line: 135, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!170, !261}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !254, file: !198, line: 136, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!64, !261, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !198, line: 125, size: 20736, elements: !275)
!275 = !{!276, !281, !285, !286, !290}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !274, file: !198, line: 126, baseType: !277, size: 192)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 192, elements: !279)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!279 = !{!280}
!280 = !DISubrange(count: 3)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !274, file: !198, line: 127, baseType: !282, size: 4096, offset: 192)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 4096, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !274, file: !198, line: 128, baseType: !64, size: 32, offset: 4288)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !274, file: !198, line: 129, baseType: !287, size: 16384, offset: 4320)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16384, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 2048)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !274, file: !198, line: 130, baseType: !64, size: 32, offset: 20704)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !197, file: !198, line: 69, baseType: !292, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !198, line: 116, size: 384, elements: !295)
!295 = !{!296, !300, !328, !662, !693, !697}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !294, file: !198, line: 117, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !203}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !294, file: !198, line: 118, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !304, line: 254, size: 128, elements: !305)
!304 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!305 = !{!306, !321}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !303, file: !304, line: 255, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !203, !315, !278}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !113, line: 66, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !312, line: 73, baseType: !313)
!312 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !312, line: 15, baseType: !314)
!314 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !304, line: 30, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !304, line: 31, baseType: !170, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !316, file: !304, line: 32, baseType: !320, size: 16, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !113, line: 24, baseType: !248)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !303, file: !304, line: 256, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!310, !203, !315, !170, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 61, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !312, line: 72, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !312, line: 16, baseType: !114)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !294, file: !198, line: 119, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !304, line: 84, size: 320, elements: !333)
!333 = !{!334, !335, !339, !658, !660}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !304, line: 85, baseType: !170, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !332, file: !304, line: 86, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!320, !203, !315, !64}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !332, file: !304, line: 88, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!320, !203, !343, !64}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !304, line: 175, size: 512, elements: !345)
!345 = !{!346, !347, !348, !349, !356, !365, !366}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !344, file: !304, line: 176, baseType: !316, size: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !344, file: !304, line: 177, baseType: !325, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !344, file: !304, line: 178, baseType: !103, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !344, file: !304, line: 179, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !355, line: 32, flags: DIFlagFwdDecl)
!355 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !344, file: !304, line: 180, baseType: !357, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!310, !360, !203, !343, !278, !363, !325}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !362, line: 537, flags: DIFlagFwdDecl)
!362 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !113, line: 52, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !312, line: 88, baseType: !108)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !344, file: !304, line: 182, baseType: !357, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !344, file: !304, line: 184, baseType: !367, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!64, !360, !203, !343, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !355, line: 625, size: 1344, elements: !372)
!372 = !{!373, !390, !607, !613, !620, !621, !626, !629, !641, !642, !645, !649, !650, !651, !652, !653, !656}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !355, line: 628, baseType: !374, size: 128)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !355, line: 628, size: 128, elements: !375)
!375 = !{!376, !381}
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !355, line: 629, baseType: !377, size: 128)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !355, line: 629, size: 128, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !377, file: !355, line: 631, baseType: !114, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !377, file: !355, line: 632, baseType: !114, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !374, file: !355, line: 635, baseType: !382, size: 128, align: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !113, line: 232, size: 128, align: 64, elements: !383)
!383 = !{!384, !386}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !113, line: 233, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !382, file: !113, line: 234, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !385}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !371, file: !355, line: 639, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !355, line: 733, size: 10240, elements: !393)
!393 = !{!394, !603}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !355, line: 734, baseType: !395, size: 10240)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !355, line: 734, size: 10240, elements: !396)
!396 = !{!397, !401, !415, !419, !420, !421, !422, !423, !424, !432, !433, !434, !440, !441, !448, !449, !450, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !497, !511, !514, !569, !570, !571, !574, !577, !578, !581, !582, !583, !590, !591}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !355, line: 739, baseType: !398, size: 512, align: 512)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !355, line: 739, size: 512, align: 512, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !398, file: !355, line: 747, baseType: !230, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !395, file: !355, line: 750, baseType: !402, size: 128, offset: 512)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !403, line: 218, size: 128, elements: !404)
!403 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!404 = !{!405, !413, !414}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !403, line: 219, baseType: !406, size: 32)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !402, file: !403, line: 219, size: 32, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !406, file: !403, line: 220, baseType: !210, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !406, file: !403, line: 221, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !403, line: 197, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 197, elements: !412)
!412 = !{}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !402, file: !403, line: 223, baseType: !7, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !402, file: !403, line: 224, baseType: !103, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !395, file: !355, line: 752, baseType: !416, size: 64, offset: 640)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!114, !360, !114, !114, !114, !114}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !395, file: !355, line: 756, baseType: !114, size: 64, offset: 704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !395, file: !355, line: 757, baseType: !114, size: 64, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !395, file: !355, line: 760, baseType: !114, size: 64, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !395, file: !355, line: 761, baseType: !114, size: 64, offset: 896)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !395, file: !355, line: 763, baseType: !114, size: 64, offset: 960)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !395, file: !355, line: 764, baseType: !425, size: 64, offset: 1024)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !362, line: 299, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 299, size: 64, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !427, file: !362, line: 299, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !431, line: 18, baseType: !114)
!431 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!432 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !395, file: !355, line: 773, baseType: !230, size: 32, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !395, file: !355, line: 785, baseType: !230, size: 32, offset: 1120)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !395, file: !355, line: 795, baseType: !435, size: 64, offset: 1152)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !355, line: 726, size: 128, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !436, file: !355, line: 727, baseType: !109, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !436, file: !355, line: 728, baseType: !64, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !395, file: !355, line: 801, baseType: !114, size: 64, offset: 1216)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !395, file: !355, line: 804, baseType: !442, size: 64, offset: 1280)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !443, line: 13, baseType: !444)
!443 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !113, line: 181, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 179, size: 64, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !445, file: !113, line: 180, baseType: !104, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !395, file: !355, line: 806, baseType: !64, size: 32, offset: 1344)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !395, file: !355, line: 808, baseType: !210, size: 32, offset: 1376)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !395, file: !355, line: 823, baseType: !451, size: 320, offset: 1408)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !452, line: 48, size: 320, elements: !453)
!452 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!453 = !{!454, !455, !456, !461, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !451, file: !452, line: 49, baseType: !442, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !451, file: !452, line: 55, baseType: !442, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !451, file: !452, line: 57, baseType: !457, size: 32, offset: 128)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !458, line: 15, size: 32, elements: !459)
!458 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !457, file: !458, line: 20, baseType: !230, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !451, file: !452, line: 59, baseType: !462, size: 32, offset: 160)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !219, line: 23, baseType: !218)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !451, file: !452, line: 60, baseType: !178, size: 128, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !395, file: !355, line: 825, baseType: !178, size: 128, offset: 1728)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !395, file: !355, line: 845, baseType: !64, size: 32, offset: 1856)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !395, file: !355, line: 849, baseType: !114, size: 64, offset: 1920)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !395, file: !355, line: 850, baseType: !114, size: 64, offset: 1984)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !395, file: !355, line: 852, baseType: !114, size: 64, offset: 2048)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !395, file: !355, line: 853, baseType: !114, size: 64, offset: 2112)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !395, file: !355, line: 854, baseType: !444, size: 64, offset: 2176)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !395, file: !355, line: 855, baseType: !114, size: 64, offset: 2240)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !395, file: !355, line: 856, baseType: !114, size: 64, offset: 2304)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !395, file: !355, line: 857, baseType: !114, size: 64, offset: 2368)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !395, file: !355, line: 858, baseType: !114, size: 64, offset: 2432)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !395, file: !355, line: 865, baseType: !476, size: 32, offset: 2496)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !477, line: 69, baseType: !478)
!477 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !477, line: 64, size: 32, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !478, file: !477, line: 65, baseType: !7, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !395, file: !355, line: 867, baseType: !210, size: 32, offset: 2528)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !395, file: !355, line: 869, baseType: !114, size: 64, offset: 2560)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !395, file: !355, line: 869, baseType: !114, size: 64, offset: 2624)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !395, file: !355, line: 869, baseType: !114, size: 64, offset: 2688)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !395, file: !355, line: 869, baseType: !114, size: 64, offset: 2752)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !395, file: !355, line: 870, baseType: !114, size: 64, offset: 2816)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !395, file: !355, line: 870, baseType: !114, size: 64, offset: 2880)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !395, file: !355, line: 870, baseType: !114, size: 64, offset: 2944)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !395, file: !355, line: 871, baseType: !114, size: 64, offset: 3008)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !395, file: !355, line: 871, baseType: !114, size: 64, offset: 3072)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !395, file: !355, line: 871, baseType: !114, size: 64, offset: 3136)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !395, file: !355, line: 871, baseType: !114, size: 64, offset: 3200)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !395, file: !355, line: 873, baseType: !494, size: 3328, offset: 3264)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 3328, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 52)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !395, file: !355, line: 875, baseType: !498, size: 1280, offset: 6592)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 1280, elements: !509)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !500, line: 22, size: 320, elements: !501)
!500 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!501 = !{!502, !503, !504, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !499, file: !500, line: 23, baseType: !462, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !499, file: !500, line: 24, baseType: !104, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !499, file: !500, line: 26, baseType: !178, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !499, file: !500, line: 28, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !105, line: 20, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !64)
!509 = !{!510}
!510 = !DISubrange(count: 4)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !395, file: !355, line: 877, baseType: !512, size: 64, offset: 7872)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !355, line: 877, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !395, file: !355, line: 880, baseType: !515, size: 1088, offset: 7936)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !516, line: 72, baseType: !517)
!516 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 23, size: 1088, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !526, !527, !535, !536, !563, !564, !565}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !517, file: !516, line: 28, baseType: !109, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !517, file: !516, line: 38, baseType: !444, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !517, file: !516, line: 40, baseType: !114, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !517, file: !516, line: 43, baseType: !451, size: 320, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !517, file: !516, line: 44, baseType: !524, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !516, line: 44, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !516, line: 48, baseType: !114, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !517, file: !516, line: 59, baseType: !528, size: 256, offset: 640)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !529, line: 66, size: 256, elements: !530)
!529 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!530 = !{!531, !532, !533, !534}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !528, file: !529, line: 67, baseType: !442, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !528, file: !529, line: 68, baseType: !462, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !528, file: !529, line: 70, baseType: !457, size: 32, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !528, file: !529, line: 72, baseType: !178, size: 128, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !517, file: !516, line: 60, baseType: !103, size: 64, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !517, file: !516, line: 61, baseType: !537, size: 64, offset: 960)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !540, line: 13, size: 1216, elements: !541)
!540 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!541 = !{!542, !543, !544, !545, !546, !547, !548, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !539, file: !540, line: 14, baseType: !103, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !539, file: !540, line: 15, baseType: !114, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !539, file: !540, line: 17, baseType: !114, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !539, file: !540, line: 17, baseType: !114, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !539, file: !540, line: 18, baseType: !114, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !539, file: !540, line: 18, baseType: !114, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !539, file: !540, line: 19, baseType: !549, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !539, file: !540, line: 21, baseType: !314, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !539, file: !540, line: 23, baseType: !314, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !539, file: !540, line: 24, baseType: !314, size: 64, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !539, file: !540, line: 25, baseType: !314, size: 64, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !539, file: !540, line: 26, baseType: !314, size: 64, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !539, file: !540, line: 27, baseType: !314, size: 64, offset: 768)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !539, file: !540, line: 28, baseType: !314, size: 64, offset: 832)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !539, file: !540, line: 29, baseType: !314, size: 64, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !539, file: !540, line: 30, baseType: !314, size: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !539, file: !540, line: 31, baseType: !314, size: 64, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !539, file: !540, line: 32, baseType: !314, size: 64, offset: 1088)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !539, file: !540, line: 33, baseType: !314, size: 64, offset: 1152)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !517, file: !516, line: 63, baseType: !230, size: 32, offset: 1024)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !517, file: !516, line: 69, baseType: !246, size: 16, offset: 1056)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !517, file: !516, line: 70, baseType: !566, size: 16, offset: 1072)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !105, line: 18, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !568)
!568 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !355, line: 882, baseType: !114, size: 64, offset: 9024)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !395, file: !355, line: 885, baseType: !210, size: 32, offset: 9088)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !395, file: !355, line: 886, baseType: !572, size: 64, offset: 9152)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !355, line: 732, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !395, file: !355, line: 901, baseType: !575, size: 64, offset: 9216)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !355, line: 901, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !395, file: !355, line: 904, baseType: !360, size: 64, offset: 9280)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !395, file: !355, line: 906, baseType: !579, size: 64, offset: 9344)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !355, line: 906, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !395, file: !355, line: 930, baseType: !230, size: 32, offset: 9408)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !395, file: !355, line: 933, baseType: !230, size: 32, offset: 9440)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !395, file: !355, line: 935, baseType: !584, size: 64, offset: 9472)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !585, line: 103, size: 64, elements: !586)
!585 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !584, file: !585, line: 104, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !585, line: 101, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !395, file: !355, line: 940, baseType: !442, size: 64, offset: 9536)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !395, file: !355, line: 942, baseType: !592, size: 256, offset: 9600)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !593, line: 98, size: 256, elements: !594)
!593 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!594 = !{!595, !596, !597}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !592, file: !593, line: 99, baseType: !442, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !592, file: !593, line: 100, baseType: !178, size: 128, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !592, file: !593, line: 101, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !593, line: 21, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !392, file: !355, line: 986, baseType: !604, offset: 10240)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: -1)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !371, file: !355, line: 640, baseType: !608, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !362, line: 297, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !362, line: 297, size: 64, elements: !610)
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !609, file: !362, line: 297, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !431, line: 19, baseType: !114)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !355, line: 646, baseType: !614, size: 64, offset: 256)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !355, line: 646, size: 64, elements: !615)
!615 = !{!616, !619}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !614, file: !355, line: 647, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !355, line: 542, baseType: !114)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !614, file: !355, line: 648, baseType: !618, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !371, file: !355, line: 666, baseType: !64, size: 32, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !371, file: !355, line: 667, baseType: !622, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !355, line: 579, size: 320, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !623, file: !355, line: 580, baseType: !451, size: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !371, file: !355, line: 670, baseType: !627, size: 8, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !113, line: 35, baseType: !628)
!628 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !371, file: !355, line: 681, baseType: !630, size: 256, offset: 512)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !355, line: 678, size: 256, elements: !631)
!631 = !{!632, !640}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !630, file: !355, line: 679, baseType: !633, size: 192, align: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !634, line: 5, size: 192, align: 64, elements: !635)
!634 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!635 = !{!636, !637, !639}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !633, file: !634, line: 6, baseType: !114, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !633, file: !634, line: 7, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !633, file: !634, line: 8, baseType: !638, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !630, file: !355, line: 680, baseType: !114, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !371, file: !355, line: 689, baseType: !178, size: 128, offset: 768)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !371, file: !355, line: 691, baseType: !643, size: 64, offset: 896)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !355, line: 691, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !371, file: !355, line: 694, baseType: !646, size: 64, offset: 960)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !355, line: 694, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !371, file: !355, line: 697, baseType: !114, size: 64, offset: 1024)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !371, file: !355, line: 699, baseType: !360, size: 64, offset: 1088)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !371, file: !355, line: 700, baseType: !103, size: 64, offset: 1152)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !371, file: !355, line: 711, baseType: !442, size: 64, offset: 1216)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !371, file: !355, line: 717, baseType: !654, size: 64, offset: 1280)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !355, line: 717, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !371, file: !355, line: 722, baseType: !657, offset: 1344)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !355, line: 570, elements: !412)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !332, file: !304, line: 90, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !332, file: !304, line: 91, baseType: !661, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !294, file: !198, line: 120, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!666, !261}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !22, line: 39, size: 384, elements: !669)
!669 = !{!670, !671, !675, !679, !685, !689}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !22, line: 40, baseType: !21, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !668, file: !22, line: 41, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!627}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !668, file: !22, line: 42, baseType: !676, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!103}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !668, file: !22, line: 43, baseType: !680, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!549, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !22, line: 19, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !668, file: !22, line: 44, baseType: !686, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!549}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !668, file: !22, line: 45, baseType: !690, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !103}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !294, file: !198, line: 121, baseType: !694, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!549, !261}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !294, file: !198, line: 122, baseType: !698, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !261, !701, !709}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !703, line: 23, baseType: !704)
!703 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !703, line: 21, size: 32, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !704, file: !703, line: 22, baseType: !707, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !113, line: 37, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !312, line: 49, baseType: !7)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !703, line: 28, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !703, line: 26, size: 32, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !711, file: !703, line: 27, baseType: !714, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !113, line: 38, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !312, line: 50, baseType: !7)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !197, file: !198, line: 70, baseType: !717, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !719, line: 190, size: 1152, elements: !720)
!719 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !823, !824, !825, !826, !827, !830}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !718, file: !719, line: 191, baseType: !230, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !718, file: !719, line: 192, baseType: !230, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !718, file: !719, line: 202, baseType: !717, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !718, file: !719, line: 203, baseType: !170, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !718, file: !719, line: 205, baseType: !633, size: 192, align: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !718, file: !719, line: 207, baseType: !549, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !718, file: !719, line: 208, baseType: !7, size: 32, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !719, line: 209, baseType: !729, size: 256, offset: 512)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !718, file: !719, line: 209, size: 256, elements: !730)
!730 = !{!731, !743, !747}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !729, file: !719, line: 210, baseType: !732, size: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !719, line: 153, size: 256, elements: !733)
!733 = !{!734, !735, !739, !742}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !732, file: !719, line: 154, baseType: !114, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !732, file: !719, line: 156, baseType: !736, size: 64, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !634, line: 12, size: 64, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !736, file: !634, line: 13, baseType: !638, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !732, file: !719, line: 162, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !719, line: 162, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !732, file: !719, line: 167, baseType: !114, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !729, file: !719, line: 211, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !719, line: 170, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !744, file: !719, line: 171, baseType: !717, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !729, file: !719, line: 212, baseType: !748, size: 256)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !719, line: 174, size: 256, elements: !749)
!749 = !{!750, !818, !821, !822}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !748, file: !719, line: 175, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !719, line: 271, size: 768, elements: !754)
!754 = !{!755, !778, !782, !786, !791, !795, !799, !803, !804, !805, !806, !814}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !753, file: !719, line: 276, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!64, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !719, line: 251, size: 1216, elements: !761)
!761 = !{!762, !763, !764, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !760, file: !719, line: 253, baseType: !717, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !760, file: !719, line: 254, baseType: !360, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !760, file: !719, line: 255, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !767, line: 66, flags: DIFlagFwdDecl)
!767 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!768 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !760, file: !719, line: 256, baseType: !103, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !760, file: !719, line: 259, baseType: !528, size: 256, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !760, file: !719, line: 260, baseType: !528, size: 256, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !760, file: !719, line: 261, baseType: !64, size: 32, offset: 768)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !760, file: !719, line: 262, baseType: !178, size: 128, offset: 832)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !760, file: !719, line: 263, baseType: !278, size: 64, offset: 960)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !760, file: !719, line: 265, baseType: !325, size: 64, offset: 1024)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !760, file: !719, line: 266, baseType: !627, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !760, file: !719, line: 267, baseType: !627, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !760, file: !719, line: 268, baseType: !646, size: 64, offset: 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !753, file: !719, line: 277, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !759}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !753, file: !719, line: 290, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!64, !765, !103}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !753, file: !719, line: 292, baseType: !787, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!103, !765, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !753, file: !719, line: 293, baseType: !792, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!103, !765, !103, !790}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !753, file: !719, line: 294, baseType: !796, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !765, !103}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !753, file: !719, line: 296, baseType: !800, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!310, !759, !278, !325, !363}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !753, file: !719, line: 306, baseType: !325, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !753, file: !719, line: 313, baseType: !627, size: 8, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !753, file: !719, line: 314, baseType: !800, size: 64, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !753, file: !719, line: 317, baseType: !807, size: 64, offset: 640)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!810, !759, !812}
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !811, line: 59, baseType: !7)
!811 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !719, line: 31, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !753, file: !719, line: 320, baseType: !815, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!64, !759, !370}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !748, file: !719, line: 176, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !719, line: 35, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !748, file: !719, line: 177, baseType: !363, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !748, file: !719, line: 178, baseType: !717, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !718, file: !719, line: 215, baseType: !103, size: 64, offset: 768)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !718, file: !719, line: 221, baseType: !109, size: 64, offset: 832)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !719, line: 223, baseType: !248, size: 16, offset: 896)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !718, file: !719, line: 224, baseType: !320, size: 16, offset: 912)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !718, file: !719, line: 225, baseType: !828, size: 64, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !719, line: 36, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !718, file: !719, line: 227, baseType: !382, size: 128, align: 64, offset: 1024)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !197, file: !198, line: 71, baseType: !832, size: 32, offset: 448)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !833, line: 19, size: 32, elements: !834)
!833 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !832, file: !833, line: 20, baseType: !836, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !837, line: 113, baseType: !838)
!837 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !837, line: 111, size: 32, elements: !839)
!839 = !{!840}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !838, file: !837, line: 112, baseType: !230, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !197, file: !198, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !197, file: !198, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !197, file: !198, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !197, file: !198, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !197, file: !198, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !194, file: !15, line: 47, baseType: !184, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !194, file: !15, line: 48, baseType: !203, size: 64, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !194, file: !15, line: 49, baseType: !849, size: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !194, file: !15, line: 50, baseType: !852, size: 64, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !854, line: 26, size: 256, elements: !855)
!854 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !853, file: !854, line: 27, baseType: !7, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !853, file: !854, line: 28, baseType: !858, size: 192, offset: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !859, line: 43, size: 192, elements: !860)
!859 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !858, file: !859, line: 44, baseType: !462, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !858, file: !859, line: 45, baseType: !178, size: 128, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !185, file: !15, line: 418, baseType: !864, size: 64, offset: 1408)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !866)
!866 = !{!867, !868, !873, !877, !881, !885}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !865, file: !15, line: 54, baseType: !316, size: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !865, file: !15, line: 55, baseType: !869, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!310, !864, !872, !278}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !865, file: !15, line: 57, baseType: !874, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!310, !864, !872, !170, !325}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !865, file: !15, line: 59, baseType: !878, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !184, !170}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !865, file: !15, line: 60, baseType: !882, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!64, !184}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !865, file: !15, line: 61, baseType: !886, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !184}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !185, file: !15, line: 419, baseType: !170, size: 64, offset: 1472)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !185, file: !15, line: 420, baseType: !170, size: 64, offset: 1536)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !185, file: !15, line: 421, baseType: !203, size: 64, offset: 1600)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !185, file: !15, line: 424, baseType: !893, size: 64, offset: 1664)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !185, file: !15, line: 425, baseType: !897, size: 64, offset: 1728)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !185, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !185, file: !15, line: 435, baseType: !528, size: 256, offset: 1856)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !185, file: !15, line: 437, baseType: !902, size: 64, offset: 2112)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !904, line: 69, size: 320, elements: !905)
!904 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!905 = !{!906, !907, !908, !925, !927, !931, !932}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !903, file: !904, line: 70, baseType: !170, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !903, file: !904, line: 71, baseType: !184, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !903, file: !904, line: 72, baseType: !909, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !904, line: 47, size: 256, elements: !912)
!912 = !{!913, !914, !920, !924}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !911, file: !904, line: 49, baseType: !7, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !911, file: !904, line: 51, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!64, !170, !918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !911, file: !904, line: 53, baseType: !921, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!64, !278, !918}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !911, file: !904, line: 55, baseType: !690, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !903, file: !904, line: 73, baseType: !926, size: 16, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !903, file: !904, line: 74, baseType: !928, size: 8, offset: 208)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !105, line: 16, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !107, line: 20, baseType: !930)
!930 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !903, file: !904, line: 75, baseType: !238, size: 8, offset: 216)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !904, line: 76, baseType: !933, size: 64, offset: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !904, line: 76, size: 64, elements: !934)
!934 = !{!935, !936, !943}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !933, file: !904, line: 77, baseType: !103, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !933, file: !904, line: 78, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !904, line: 86, size: 128, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !939, file: !904, line: 87, baseType: !7, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !939, file: !904, line: 88, baseType: !278, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !933, file: !904, line: 79, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !904, line: 92, size: 256, elements: !947)
!947 = !{!948, !949, !950, !952, !953}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !946, file: !904, line: 94, baseType: !7, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !946, file: !904, line: 95, baseType: !7, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !946, file: !904, line: 96, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !946, file: !904, line: 97, baseType: !909, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !946, file: !904, line: 98, baseType: !103, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !185, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !185, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !185, file: !15, line: 442, baseType: !893, size: 64, offset: 2240)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !185, file: !15, line: 443, baseType: !897, size: 64, offset: 2304)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !185, file: !15, line: 444, baseType: !627, size: 8, offset: 2368)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !185, file: !15, line: 451, baseType: !627, size: 8, offset: 2376)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !185, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !185, file: !15, line: 455, baseType: !962, size: 64, offset: 2432)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !15, line: 43, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !185, file: !15, line: 458, baseType: !965, size: 64, offset: 2496)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!64}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !185, file: !15, line: 460, baseType: !969, size: 4032, align: 512, offset: 2560)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 4032, elements: !986)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !970, file: !15, line: 363, baseType: !103, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !970, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !970, file: !15, line: 367, baseType: !975, size: 448, offset: 128)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !975, file: !15, line: 320, baseType: !184, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !975, file: !15, line: 321, baseType: !979, size: 384, offset: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !980, line: 40, size: 384, elements: !981)
!980 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !979, file: !980, line: 41, baseType: !983, size: 384, align: 64)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 384, align: 64, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 2)
!986 = !{!987}
!987 = !DISubrange(count: 7)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !185, file: !15, line: 463, baseType: !989, size: 192, offset: 6592)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !990, line: 8, size: 192, elements: !991)
!990 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !989, file: !990, line: 10, baseType: !7, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !989, file: !990, line: 11, baseType: !124, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !989, file: !990, line: 12, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !997, line: 59, size: 48, elements: !998)
!997 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!998 = !{!999, !1000, !1001, !1002, !1003, !1004}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !996, file: !997, line: 60, baseType: !566, size: 16)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !996, file: !997, line: 61, baseType: !566, size: 16, offset: 16)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !996, file: !997, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !996, file: !997, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !996, file: !997, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !996, file: !997, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !185, file: !15, line: 465, baseType: !114, size: 64, offset: 6784)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !185, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !185, file: !15, line: 470, baseType: !178, size: 128, offset: 6912)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !185, file: !15, line: 471, baseType: !1009, size: 64, offset: 7040)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1011, line: 33, size: 96, elements: !1012)
!1011 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1012 = !{!1013, !1014, !1015, !1016}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1010, file: !1011, line: 37, baseType: !64, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1010, file: !1011, line: 43, baseType: !64, size: 32, offset: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1010, file: !1011, line: 45, baseType: !248, size: 16, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !1011, line: 47, baseType: !248, size: 16, offset: 80)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !185, file: !15, line: 476, baseType: !1018, size: 64, offset: 7104)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !1020)
!1020 = !{!1021, !1037, !1038, !1039}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1019, file: !15, line: 379, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1024, line: 204, baseType: !1025)
!1024 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1024, line: 197, size: 192, elements: !1026)
!1026 = !{!1027, !1029, !1030, !1031, !1033, !1035}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1025, file: !1024, line: 198, baseType: !1028, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1024, line: 21, baseType: !148)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1025, file: !1024, line: 199, baseType: !240, size: 8, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1025, file: !1024, line: 200, baseType: !240, size: 8, offset: 40)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1025, file: !1024, line: 201, baseType: !1032, size: 16, offset: 48)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1024, line: 17, baseType: !247)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1025, file: !1024, line: 202, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1024, line: 16, baseType: !110)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1025, file: !1024, line: 203, baseType: !1036, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1024, line: 22, baseType: !110)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1019, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1019, file: !15, line: 381, baseType: !278, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1019, file: !15, line: 382, baseType: !278, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !185, file: !15, line: 477, baseType: !1019, size: 256, offset: 7168)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !185, file: !15, line: 480, baseType: !1042, size: 64, offset: 7424)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !185, file: !15, line: 483, baseType: !1045, size: 64, offset: 7488)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !185, file: !15, line: 488, baseType: !278, size: 64, offset: 7552)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !185, file: !15, line: 492, baseType: !103, size: 64, offset: 7616)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !185, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !185, file: !15, line: 495, baseType: !103, size: 64, offset: 7744)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !185, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !185, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !185, file: !15, line: 500, baseType: !1054, size: 64, offset: 7872)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1056, line: 45, baseType: !1057)
!1056 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !185, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !185, file: !15, line: 504, baseType: !1060, size: 64, offset: 8000)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1063, line: 96, size: 192, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1064 = !{!1065, !1066, !1126, !1129}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1062, file: !1063, line: 97, baseType: !7, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1062, file: !1063, line: 98, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1063, line: 24, size: 3072, elements: !1069)
!1069 = !{!1070, !1072, !1073, !1074, !1075, !1089, !1090, !1091, !1092, !1110, !1111, !1112, !1123, !1124, !1125}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1068, file: !1063, line: 26, baseType: !1071, size: 128)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 128, elements: !984)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1068, file: !1063, line: 27, baseType: !1071, size: 128, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1068, file: !1063, line: 28, baseType: !64, size: 32, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1068, file: !1063, line: 31, baseType: !210, size: 32, align: 512, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1068, file: !1063, line: 32, baseType: !1076, size: 960, offset: 576)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1077, line: 206, size: 960, elements: !1078)
!1077 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1078 = !{!1079, !1080, !1083, !1085, !1086, !1088}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1076, file: !1077, line: 207, baseType: !385, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1076, file: !1077, line: 208, baseType: !1081, size: 256, offset: 64)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 256, elements: !509)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1076, file: !1077, line: 209, baseType: !1084, size: 256, offset: 320)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !509)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1076, file: !1077, line: 213, baseType: !314, size: 64, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1076, file: !1077, line: 215, baseType: !1087, size: 256, offset: 640)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 256, elements: !509)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1076, file: !1077, line: 216, baseType: !238, size: 8, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1068, file: !1063, line: 33, baseType: !114, size: 64, offset: 1536)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1068, file: !1063, line: 34, baseType: !114, size: 64, offset: 1600)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1068, file: !1063, line: 35, baseType: !627, size: 8, offset: 1664)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1068, file: !1063, line: 36, baseType: !1093, size: 320, offset: 1728)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1094, line: 11, size: 320, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1095 = !{!1096, !1103, !1104, !1109}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1093, file: !1094, line: 16, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !113, line: 198, size: 128, elements: !1098)
!1098 = !{!1099, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !113, line: 199, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1097, file: !113, line: 199, baseType: !1102, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1093, file: !1094, line: 17, baseType: !114, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1093, file: !1094, line: 18, baseType: !1105, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1093, file: !1094, line: 19, baseType: !147, size: 32, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1068, file: !1063, line: 37, baseType: !592, size: 256, offset: 2048)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1068, file: !1063, line: 38, baseType: !382, size: 128, align: 64, offset: 2304)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1068, file: !1063, line: 39, baseType: !1113, size: 64, offset: 2432)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1063, line: 49, size: 768, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1114, file: !1063, line: 50, baseType: !210, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1114, file: !1063, line: 51, baseType: !1084, size: 256, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1114, file: !1063, line: 53, baseType: !1084, size: 256, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1114, file: !1063, line: 54, baseType: !114, size: 64, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1114, file: !1063, line: 55, baseType: !1113, size: 64, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1114, file: !1063, line: 56, baseType: !64, size: 32, offset: 704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1114, file: !1063, line: 57, baseType: !64, size: 32, offset: 736)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1068, file: !1063, line: 40, baseType: !114, size: 64, offset: 2496)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1068, file: !1063, line: 42, baseType: !64, size: 32, offset: 2560)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1068, file: !1063, line: 43, baseType: !1061, size: 64, offset: 2624)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1062, file: !1063, line: 99, baseType: !1127, offset: 128)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1128, line: 211, elements: !412)
!1128 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1062, file: !1063, line: 100, baseType: !1130, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1063, line: 63, size: 3008, elements: !1132)
!1132 = !{!1133, !1134, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1164}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1131, file: !1063, line: 64, baseType: !1113, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1131, file: !1063, line: 65, baseType: !1135, size: 192, offset: 64)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 192, elements: !279)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1131, file: !1063, line: 67, baseType: !64, size: 32, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1131, file: !1063, line: 68, baseType: !528, size: 256, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1131, file: !1063, line: 69, baseType: !210, size: 32, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1131, file: !1063, line: 70, baseType: !528, size: 256, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1131, file: !1063, line: 71, baseType: !114, size: 64, offset: 896)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1131, file: !1063, line: 72, baseType: !114, size: 64, offset: 960)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1131, file: !1063, line: 73, baseType: !114, size: 64, offset: 1024)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1131, file: !1063, line: 74, baseType: !114, size: 64, offset: 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1131, file: !1063, line: 75, baseType: !114, size: 64, offset: 1152)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1131, file: !1063, line: 76, baseType: !114, size: 64, offset: 1216)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1131, file: !1063, line: 77, baseType: !114, size: 64, offset: 1280)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1131, file: !1063, line: 78, baseType: !114, size: 64, offset: 1344)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1131, file: !1063, line: 79, baseType: !627, size: 8, offset: 1408)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1131, file: !1063, line: 80, baseType: !114, size: 64, offset: 1472)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1131, file: !1063, line: 81, baseType: !528, size: 256, offset: 1536)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1131, file: !1063, line: 82, baseType: !853, size: 256, offset: 1792)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1131, file: !1063, line: 84, baseType: !230, size: 32, offset: 2048)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1131, file: !1063, line: 87, baseType: !114, size: 64, offset: 2112)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1131, file: !1063, line: 88, baseType: !114, size: 64, offset: 2176)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1131, file: !1063, line: 89, baseType: !1156, size: 704, offset: 2240)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !593, line: 111, size: 704, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1163}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1156, file: !593, line: 112, baseType: !592, size: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1156, file: !593, line: 113, baseType: !1093, size: 320, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1156, file: !593, line: 116, baseType: !1161, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !593, line: 18, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1156, file: !593, line: 117, baseType: !64, size: 32, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1131, file: !1063, line: 90, baseType: !1061, size: 64, offset: 2944)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !185, file: !15, line: 515, baseType: !1166, size: 64, offset: 8064)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1168, line: 117, size: 128, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1167, file: !1168, line: 118, baseType: !507, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1167, file: !1168, line: 119, baseType: !507, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1167, file: !1168, line: 120, baseType: !314, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !185, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !185, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !185, file: !15, line: 520, baseType: !1176, size: 64, offset: 8192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !185, file: !15, line: 523, baseType: !1178, size: 64, offset: 8256)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !185, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !185, file: !15, line: 525, baseType: !1183, size: 64, offset: 8384)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !185, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !185, file: !15, line: 533, baseType: !103, size: 64, offset: 8512)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !185, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !185, file: !15, line: 535, baseType: !1190, size: 64, offset: 8640)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !185, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !185, file: !15, line: 539, baseType: !64, size: 32, offset: 8736)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !185, file: !15, line: 540, baseType: !1194, size: 64, offset: 8768)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1196, line: 32, size: 64, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1195, file: !1196, line: 33, baseType: !507, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1195, file: !1196, line: 34, baseType: !507, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !185, file: !15, line: 563, baseType: !178, size: 128, offset: 8832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !185, file: !15, line: 565, baseType: !178, size: 128, offset: 8960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !185, file: !15, line: 568, baseType: !1203, size: 64, offset: 9088)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !185, file: !15, line: 570, baseType: !230, size: 32, offset: 9152)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !113, line: 113, baseType: !109)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tick_device", file: !33, line: 12, size: 128, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "evtdev", scope: !1209, file: !33, line: 13, baseType: !126, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1209, file: !33, line: 14, baseType: !32, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !181)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !44, line: 705, size: 5824, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1225, !1226, !1279, !1370, !1371, !1372, !1373, !1374, !1381, !1549, !1562, !1572, !1576, !1578, !1579, !1580, !1584, !1591, !1592, !1595, !1598, !1724, !1725, !1726, !1729, !1730, !1731, !1732, !1762, !1763, !1764, !1767, !1770, !1779, !1780, !1781, !1782, !1783, !1784}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1218, file: !44, line: 706, baseType: !197, size: 512)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1218, file: !44, line: 707, baseType: !1217, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1218, file: !44, line: 709, baseType: !1223, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !44, line: 37, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1218, file: !44, line: 711, baseType: !170, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1218, file: !44, line: 712, baseType: !1227, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !44, line: 89, size: 384, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1239, !1244, !1248}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1229, file: !44, line: 90, baseType: !170, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1229, file: !44, line: 91, baseType: !329, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1229, file: !44, line: 92, baseType: !1234, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!64, !1237, !273}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1218)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1229, file: !44, line: 93, baseType: !1240, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!278, !1237, !1243, !701, !709}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1229, file: !44, line: 95, baseType: !1245, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !1217}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1229, file: !44, line: 97, baseType: !1249, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !56, line: 286, size: 1472, elements: !1252)
!1252 = !{!1253, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1251, file: !56, line: 287, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!64, !1217}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1251, file: !56, line: 288, baseType: !1245, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1251, file: !56, line: 289, baseType: !1254, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1251, file: !56, line: 290, baseType: !1254, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1251, file: !56, line: 291, baseType: !1254, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1251, file: !56, line: 292, baseType: !1254, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1251, file: !56, line: 293, baseType: !1254, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1251, file: !56, line: 294, baseType: !1254, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1251, file: !56, line: 295, baseType: !1254, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1251, file: !56, line: 296, baseType: !1254, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1251, file: !56, line: 297, baseType: !1254, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1251, file: !56, line: 298, baseType: !1254, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1251, file: !56, line: 299, baseType: !1254, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1251, file: !56, line: 300, baseType: !1254, size: 64, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1251, file: !56, line: 301, baseType: !1254, size: 64, offset: 896)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1251, file: !56, line: 302, baseType: !1254, size: 64, offset: 960)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1251, file: !56, line: 303, baseType: !1254, size: 64, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1251, file: !56, line: 304, baseType: !1254, size: 64, offset: 1088)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1251, file: !56, line: 305, baseType: !1254, size: 64, offset: 1152)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1251, file: !56, line: 306, baseType: !1254, size: 64, offset: 1216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1251, file: !56, line: 307, baseType: !1254, size: 64, offset: 1280)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1251, file: !56, line: 308, baseType: !1254, size: 64, offset: 1344)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1251, file: !56, line: 309, baseType: !1254, size: 64, offset: 1408)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1218, file: !44, line: 714, baseType: !1280, size: 64, offset: 768)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1283, line: 80, size: 1344, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1369}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1282, file: !1283, line: 81, baseType: !170, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1282, file: !1283, line: 82, baseType: !170, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1282, file: !1283, line: 83, baseType: !329, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1282, file: !1283, line: 84, baseType: !329, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1282, file: !1283, line: 85, baseType: !329, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1282, file: !1283, line: 87, baseType: !1291, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!64, !1217, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !38, line: 96, size: 1152, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1319, !1332, !1333, !1334, !1335, !1336, !1344, !1345, !1346, !1347, !1348, !1349}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1295, file: !38, line: 97, baseType: !170, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1295, file: !38, line: 98, baseType: !1280, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1295, file: !38, line: 100, baseType: !184, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1295, file: !38, line: 101, baseType: !170, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1295, file: !38, line: 103, baseType: !627, size: 8, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1295, file: !38, line: 104, baseType: !37, size: 32, offset: 288)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1295, file: !38, line: 106, baseType: !1304, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1307, line: 282, size: 1600, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1308 = !{!1309, !1313, !1314, !1318}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1306, file: !1307, line: 283, baseType: !1310, size: 256)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !1311)
!1311 = !{!1312}
!1312 = !DISubrange(count: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1306, file: !1307, line: 284, baseType: !1310, size: 256, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1306, file: !1307, line: 285, baseType: !1315, size: 1024, offset: 512)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1024, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1306, file: !1307, line: 286, baseType: !549, size: 64, offset: 1536)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1295, file: !38, line: 107, baseType: !1320, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1307, line: 217, size: 256, elements: !1323)
!1323 = !{!1324, !1328, !1330, !1331}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1322, file: !1307, line: 218, baseType: !1325, size: 128)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 128, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 16)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1322, file: !1307, line: 219, baseType: !1329, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1307, line: 15, baseType: !114)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1322, file: !1307, line: 220, baseType: !148, size: 32, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1322, file: !1307, line: 221, baseType: !148, size: 32, offset: 224)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1295, file: !38, line: 109, baseType: !1254, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1295, file: !38, line: 110, baseType: !1245, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1295, file: !38, line: 111, baseType: !1254, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1295, file: !38, line: 112, baseType: !1245, size: 64, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1295, file: !38, line: 113, baseType: !1337, size: 64, offset: 704)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!64, !1217, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !56, line: 60, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !56, line: 58, size: 32, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1341, file: !56, line: 59, baseType: !64, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1295, file: !38, line: 114, baseType: !1254, size: 64, offset: 768)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1295, file: !38, line: 115, baseType: !329, size: 64, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1295, file: !38, line: 116, baseType: !329, size: 64, offset: 896)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1295, file: !38, line: 118, baseType: !1249, size: 64, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1295, file: !38, line: 119, baseType: !1245, size: 64, offset: 1024)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1295, file: !38, line: 121, baseType: !1350, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !38, line: 121, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1282, file: !1283, line: 88, baseType: !1234, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1282, file: !1283, line: 89, baseType: !1254, size: 64, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1282, file: !1283, line: 90, baseType: !1245, size: 64, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1282, file: !1283, line: 91, baseType: !1245, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1282, file: !1283, line: 92, baseType: !1245, size: 64, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1282, file: !1283, line: 94, baseType: !1254, size: 64, offset: 704)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1282, file: !1283, line: 95, baseType: !1254, size: 64, offset: 768)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1282, file: !1283, line: 97, baseType: !1337, size: 64, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1282, file: !1283, line: 98, baseType: !1254, size: 64, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1282, file: !1283, line: 100, baseType: !1254, size: 64, offset: 960)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1282, file: !1283, line: 102, baseType: !1254, size: 64, offset: 1024)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1282, file: !1283, line: 103, baseType: !1245, size: 64, offset: 1088)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1282, file: !1283, line: 105, baseType: !1249, size: 64, offset: 1152)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1282, file: !1283, line: 107, baseType: !1366, size: 64, offset: 1216)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1283, line: 107, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1282, file: !1283, line: 109, baseType: !627, size: 8, offset: 1280)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1218, file: !44, line: 715, baseType: !1294, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1218, file: !44, line: 717, baseType: !103, size: 64, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1218, file: !44, line: 719, baseType: !103, size: 64, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1218, file: !44, line: 721, baseType: !528, size: 256, offset: 1024)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1218, file: !44, line: 725, baseType: !1375, size: 448, offset: 1280)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !44, line: 517, size: 448, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1375, file: !44, line: 518, baseType: !178, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1375, file: !44, line: 519, baseType: !178, size: 128, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1375, file: !44, line: 520, baseType: !178, size: 128, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1375, file: !44, line: 521, baseType: !43, size: 32, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1218, file: !44, line: 726, baseType: !1382, size: 2496, offset: 1728)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !56, line: 663, size: 2496, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1426, !1427, !1428, !1429, !1430, !1431, !1502, !1503, !1504, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1542, !1546}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1382, file: !56, line: 664, baseType: !1340, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1382, file: !56, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1382, file: !56, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1382, file: !56, line: 667, baseType: !627, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1382, file: !56, line: 668, baseType: !627, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1382, file: !56, line: 669, baseType: !627, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1382, file: !56, line: 670, baseType: !627, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1382, file: !56, line: 671, baseType: !627, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1382, file: !56, line: 672, baseType: !627, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1382, file: !56, line: 673, baseType: !627, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1382, file: !56, line: 674, baseType: !627, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1382, file: !56, line: 675, baseType: !147, size: 32, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1382, file: !56, line: 676, baseType: !210, size: 32, offset: 96)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1382, file: !56, line: 678, baseType: !178, size: 128, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1382, file: !56, line: 679, baseType: !853, size: 256, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1382, file: !56, line: 680, baseType: !1400, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1402, line: 43, size: 1536, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1401, file: !1402, line: 44, baseType: !170, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1401, file: !1402, line: 45, baseType: !64, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1401, file: !1402, line: 46, baseType: !178, size: 128, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1401, file: !1402, line: 47, baseType: !210, size: 32, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1401, file: !1402, line: 48, baseType: !1409, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !56, line: 629, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1401, file: !1402, line: 49, baseType: !1093, size: 320, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1401, file: !1402, line: 50, baseType: !114, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1401, file: !1402, line: 51, baseType: !141, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1401, file: !1402, line: 52, baseType: !141, size: 64, offset: 832)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1401, file: !1402, line: 53, baseType: !141, size: 64, offset: 896)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1401, file: !1402, line: 54, baseType: !141, size: 64, offset: 960)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1401, file: !1402, line: 55, baseType: !141, size: 64, offset: 1024)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1401, file: !1402, line: 56, baseType: !114, size: 64, offset: 1088)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1401, file: !1402, line: 57, baseType: !114, size: 64, offset: 1152)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1401, file: !1402, line: 58, baseType: !114, size: 64, offset: 1216)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1401, file: !1402, line: 59, baseType: !114, size: 64, offset: 1280)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1401, file: !1402, line: 60, baseType: !114, size: 64, offset: 1344)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1401, file: !1402, line: 61, baseType: !1217, size: 64, offset: 1408)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1401, file: !1402, line: 62, baseType: !627, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1401, file: !1402, line: 63, baseType: !627, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1382, file: !56, line: 681, baseType: !627, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1382, file: !56, line: 682, baseType: !627, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1382, file: !56, line: 683, baseType: !627, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1382, file: !56, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1382, file: !56, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1382, file: !56, line: 690, baseType: !1432, size: 512, offset: 640)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !51, line: 118, size: 512, elements: !1433)
!1433 = !{!1434, !1440, !1441, !1446, !1498, !1499, !1500, !1501}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1432, file: !51, line: 119, baseType: !1435, size: 256)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1436, line: 9, size: 256, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1435, file: !1436, line: 10, baseType: !633, size: 192, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1435, file: !1436, line: 11, baseType: !141, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1432, file: !51, line: 120, baseType: !141, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1432, file: !51, line: 121, baseType: !1442, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!50, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1432, file: !51, line: 122, baseType: !1447, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !51, line: 159, size: 512, align: 512, elements: !1449)
!1449 = !{!1450, !1475, !1476, !1479, !1484, !1485, !1493, !1497}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1448, file: !51, line: 160, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !51, line: 215, size: 4608, align: 512, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1452, file: !51, line: 216, baseType: !462, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1452, file: !51, line: 217, baseType: !7, size: 32, offset: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1452, file: !51, line: 218, baseType: !7, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1452, file: !51, line: 219, baseType: !7, size: 32, offset: 96)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1452, file: !51, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1452, file: !51, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1452, file: !51, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1452, file: !51, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1452, file: !51, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1452, file: !51, line: 226, baseType: !7, size: 32, offset: 160)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1452, file: !51, line: 227, baseType: !248, size: 16, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1452, file: !51, line: 228, baseType: !248, size: 16, offset: 208)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1452, file: !51, line: 229, baseType: !7, size: 32, offset: 224)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1452, file: !51, line: 235, baseType: !141, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1452, file: !51, line: 236, baseType: !1445, size: 64, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1452, file: !51, line: 237, baseType: !141, size: 64, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1452, file: !51, line: 238, baseType: !1445, size: 64, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1452, file: !51, line: 239, baseType: !1472, size: 4096, align: 512, offset: 512)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1448, size: 4096, align: 512, elements: !1473)
!1473 = !{!1474}
!1474 = !DISubrange(count: 8)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1448, file: !51, line: 161, baseType: !7, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1448, file: !51, line: 162, baseType: !1477, size: 32, offset: 96)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !113, line: 32, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !312, line: 96, baseType: !64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1448, file: !51, line: 163, baseType: !1480, size: 32, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !477, line: 274, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !477, line: 274, size: 32, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1481, file: !477, line: 274, baseType: !476, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1448, file: !51, line: 164, baseType: !1445, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1448, file: !51, line: 165, baseType: !1486, size: 128, offset: 256)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1436, line: 14, size: 128, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1486, file: !1436, line: 15, baseType: !1489, size: 128)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !634, line: 26, size: 128, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1489, file: !634, line: 27, baseType: !736, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1489, file: !634, line: 28, baseType: !638, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1448, file: !51, line: 166, baseType: !1494, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!141}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1448, file: !51, line: 167, baseType: !141, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1432, file: !51, line: 123, baseType: !238, size: 8, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1432, file: !51, line: 124, baseType: !238, size: 8, offset: 456)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1432, file: !51, line: 125, baseType: !238, size: 8, offset: 464)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1432, file: !51, line: 126, baseType: !238, size: 8, offset: 472)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1382, file: !56, line: 691, baseType: !109, size: 64, offset: 1152)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1382, file: !56, line: 692, baseType: !592, size: 256, offset: 1216)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1382, file: !56, line: 693, baseType: !1505, size: 192, offset: 1472)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1506, line: 41, baseType: !1507)
!1506 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1506, line: 37, size: 192, elements: !1508)
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1507, file: !1506, line: 38, baseType: !210, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1507, file: !1506, line: 39, baseType: !178, size: 128, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1382, file: !56, line: 694, baseType: !1409, size: 64, offset: 1664)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1382, file: !56, line: 695, baseType: !230, size: 32, offset: 1728)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1382, file: !56, line: 696, baseType: !230, size: 32, offset: 1760)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1382, file: !56, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1382, file: !56, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1382, file: !56, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1382, file: !56, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1382, file: !56, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1382, file: !56, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1382, file: !56, line: 703, baseType: !627, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1382, file: !56, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1382, file: !56, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1382, file: !56, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1382, file: !56, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1382, file: !56, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1382, file: !56, line: 709, baseType: !7, size: 32, offset: 1824)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1382, file: !56, line: 710, baseType: !55, size: 32, offset: 1856)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1382, file: !56, line: 711, baseType: !63, size: 32, offset: 1888)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1382, file: !56, line: 712, baseType: !63, size: 32, offset: 1920)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1382, file: !56, line: 713, baseType: !64, size: 32, offset: 1952)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1382, file: !56, line: 714, baseType: !64, size: 32, offset: 1984)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1382, file: !56, line: 715, baseType: !109, size: 64, offset: 2048)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1382, file: !56, line: 716, baseType: !109, size: 64, offset: 2112)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1382, file: !56, line: 717, baseType: !109, size: 64, offset: 2176)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1382, file: !56, line: 718, baseType: !109, size: 64, offset: 2240)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1382, file: !56, line: 720, baseType: !1537, size: 64, offset: 2304)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !56, line: 632, size: 64, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1538, file: !56, line: 633, baseType: !210, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1538, file: !56, line: 634, baseType: !7, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1382, file: !56, line: 721, baseType: !1543, size: 64, offset: 2368)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1217, !507}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1382, file: !56, line: 722, baseType: !1547, size: 64, offset: 2432)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !56, line: 722, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1218, file: !44, line: 727, baseType: !1550, size: 64, offset: 4224)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !56, line: 742, size: 1792, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1559, !1560, !1561}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1551, file: !56, line: 743, baseType: !1251, size: 1472)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1551, file: !56, line: 744, baseType: !1254, size: 64, offset: 1472)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1551, file: !56, line: 745, baseType: !1556, size: 64, offset: 1536)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !1217, !627}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1551, file: !56, line: 746, baseType: !1254, size: 64, offset: 1600)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1551, file: !56, line: 747, baseType: !1245, size: 64, offset: 1664)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1551, file: !56, line: 748, baseType: !1245, size: 64, offset: 1728)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1218, file: !44, line: 736, baseType: !1563, size: 128, offset: 4288)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !44, line: 529, size: 128, elements: !1564)
!1564 = !{!1565, !1569}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1563, file: !44, line: 531, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1568, line: 13, flags: DIFlagFwdDecl)
!1568 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1563, file: !44, line: 532, baseType: !1570, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !44, line: 49, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1218, file: !44, line: 738, baseType: !1573, size: 64, offset: 4416)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !44, line: 738, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1218, file: !44, line: 740, baseType: !1577, size: 64, offset: 4480)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1218, file: !44, line: 741, baseType: !109, size: 64, offset: 4544)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1218, file: !44, line: 746, baseType: !109, size: 64, offset: 4608)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1218, file: !44, line: 747, baseType: !1581, size: 64, offset: 4672)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1583)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !44, line: 747, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1218, file: !44, line: 749, baseType: !1585, size: 64, offset: 4736)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !44, line: 428, size: 128, elements: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1586, file: !44, line: 433, baseType: !7, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1586, file: !44, line: 434, baseType: !7, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1586, file: !44, line: 435, baseType: !114, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1218, file: !44, line: 751, baseType: !178, size: 128, offset: 4800)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1218, file: !44, line: 762, baseType: !1593, size: 64, offset: 4928)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !44, line: 762, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1218, file: !44, line: 770, baseType: !1596, offset: 4992)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1597, line: 5, elements: !412)
!1597 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1218, file: !44, line: 772, baseType: !1599, size: 64, offset: 4992)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1601, line: 48, size: 1152, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1602 = !{!1603, !1604, !1606, !1607, !1710, !1718, !1719, !1720, !1721, !1722, !1723}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1600, file: !1601, line: 49, baseType: !170, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1600, file: !1601, line: 50, baseType: !1605, size: 32, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1601, line: 25, baseType: !147)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1600, file: !1601, line: 51, baseType: !170, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1600, file: !1601, line: 52, baseType: !1608, size: 512, offset: 192)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1609, line: 41, size: 512, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1610 = !{!1611, !1613, !1706, !1707, !1708, !1709}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1608, file: !1609, line: 42, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1608, file: !1609, line: 43, baseType: !1614, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1609, line: 125, size: 1408, elements: !1617)
!1617 = !{!1618, !1622, !1626, !1632, !1636, !1637, !1641, !1645, !1649, !1653, !1657, !1658, !1662, !1666, !1670, !1681, !1682, !1683, !1684, !1694, !1698, !1702}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1616, file: !1609, line: 126, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!1612, !1612}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1616, file: !1609, line: 127, baseType: !1623, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1612}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1616, file: !1609, line: 128, baseType: !1627, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!627, !1630}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1616, file: !1609, line: 129, baseType: !1633, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!549, !1630, !1237}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1616, file: !1609, line: 131, baseType: !1627, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1616, file: !1609, line: 133, baseType: !1638, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!71, !1630}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1616, file: !1609, line: 134, baseType: !1642, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!627, !1630, !170}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1616, file: !1609, line: 136, baseType: !1646, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!64, !1630, !170, !7, !103, !325}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1616, file: !1609, line: 141, baseType: !1650, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!64, !1630, !170, !1176, !325}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1616, file: !1609, line: 144, baseType: !1654, size: 64, offset: 576)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!170, !1630}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1616, file: !1609, line: 145, baseType: !1654, size: 64, offset: 640)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1616, file: !1609, line: 146, baseType: !1659, size: 64, offset: 704)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!1612, !1630}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1616, file: !1609, line: 148, baseType: !1663, size: 64, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1612, !1630, !1612}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1616, file: !1609, line: 151, baseType: !1667, size: 64, offset: 832)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1612, !1630, !170}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1616, file: !1609, line: 153, baseType: !1671, size: 64, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!64, !1630, !170, !170, !7, !7, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1609, line: 94, size: 640, elements: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1675, file: !1609, line: 95, baseType: !1612, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1675, file: !1609, line: 96, baseType: !7, size: 32, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1675, file: !1609, line: 97, baseType: !1680, size: 512, offset: 128)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 512, elements: !1473)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1616, file: !1609, line: 158, baseType: !1663, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1616, file: !1609, line: 161, baseType: !1659, size: 64, offset: 1024)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1616, file: !1609, line: 163, baseType: !1619, size: 64, offset: 1088)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1616, file: !1609, line: 164, baseType: !1685, size: 64, offset: 1152)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!64, !1630, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1609, line: 73, size: 128, elements: !1690)
!1690 = !{!1691, !1692, !1693}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1689, file: !1609, line: 74, baseType: !7, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1689, file: !1609, line: 75, baseType: !7, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1689, file: !1609, line: 76, baseType: !1630, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1616, file: !1609, line: 166, baseType: !1695, size: 64, offset: 1216)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!103, !1612, !64}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1616, file: !1609, line: 167, baseType: !1699, size: 64, offset: 1280)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!64, !1630, !7}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1616, file: !1609, line: 168, baseType: !1703, size: 64, offset: 1344)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!64, !1612}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1608, file: !1609, line: 44, baseType: !1217, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1608, file: !1609, line: 45, baseType: !178, size: 128, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1608, file: !1609, line: 46, baseType: !178, size: 128, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !1609, line: 47, baseType: !238, size: 8, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1600, file: !1601, line: 54, baseType: !1711, size: 64, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1601, line: 28, size: 256, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1712, file: !1601, line: 29, baseType: !278, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1712, file: !1601, line: 30, baseType: !64, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1712, file: !1601, line: 31, baseType: !103, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1712, file: !1601, line: 32, baseType: !1711, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1600, file: !1601, line: 55, baseType: !1711, size: 64, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1600, file: !1601, line: 56, baseType: !1599, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1600, file: !1601, line: 57, baseType: !1599, size: 64, offset: 896)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1600, file: !1601, line: 58, baseType: !1599, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1600, file: !1601, line: 62, baseType: !114, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1600, file: !1601, line: 63, baseType: !103, size: 64, offset: 1088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1218, file: !44, line: 773, baseType: !1612, size: 64, offset: 5056)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1218, file: !44, line: 776, baseType: !64, size: 32, offset: 5120)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1218, file: !44, line: 778, baseType: !1727, size: 32, offset: 5152)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !113, line: 21, baseType: !1728)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !113, line: 18, baseType: !147)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1218, file: !44, line: 779, baseType: !147, size: 32, offset: 5184)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1218, file: !44, line: 781, baseType: !210, size: 32, offset: 5216)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1218, file: !44, line: 782, baseType: !178, size: 128, offset: 5248)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1218, file: !44, line: 784, baseType: !1733, size: 64, offset: 5376)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1736, line: 52, size: 768, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1746, !1750, !1751, !1752, !1753, !1757, !1761}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1735, file: !1736, line: 53, baseType: !170, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1735, file: !1736, line: 55, baseType: !329, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1735, file: !1736, line: 56, baseType: !329, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1735, file: !1736, line: 58, baseType: !1234, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1735, file: !1736, line: 59, baseType: !1743, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!278, !1237, !1243}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1735, file: !1736, line: 61, baseType: !1747, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !1733}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1735, file: !1736, line: 62, baseType: !1245, size: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1735, file: !1736, line: 64, baseType: !1254, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1735, file: !1736, line: 66, baseType: !666, size: 64, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1735, file: !1736, line: 67, baseType: !1754, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!549, !1237}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1735, file: !1736, line: 69, baseType: !1758, size: 64, offset: 640)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1237, !701, !709}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1735, file: !1736, line: 71, baseType: !1249, size: 64, offset: 704)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1218, file: !44, line: 785, baseType: !329, size: 64, offset: 5440)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1218, file: !44, line: 787, baseType: !1245, size: 64, offset: 5504)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1218, file: !44, line: 788, baseType: !1765, size: 64, offset: 5568)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !44, line: 46, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1218, file: !44, line: 789, baseType: !1768, size: 64, offset: 5632)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !44, line: 48, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1218, file: !44, line: 791, baseType: !1771, size: 64, offset: 5696)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !44, line: 597, size: 128, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1772, file: !44, line: 598, baseType: !77, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1772, file: !44, line: 599, baseType: !86, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1772, file: !44, line: 600, baseType: !91, size: 32, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1772, file: !44, line: 601, baseType: !627, size: 8, offset: 96)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1772, file: !44, line: 602, baseType: !627, size: 8, offset: 104)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1218, file: !44, line: 793, baseType: !96, size: 32, offset: 5760)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1218, file: !44, line: 795, baseType: !627, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1218, file: !44, line: 796, baseType: !627, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1218, file: !44, line: 797, baseType: !627, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1218, file: !44, line: 798, baseType: !627, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1218, file: !44, line: 799, baseType: !627, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1785 = !{!0, !1786, !1791, !1827, !1832, !1834, !1839, !1844, !1846, !1848, !1850, !1872, !1877, !1882, !1885, !1887, !1889, !1891, !1893, !1898, !1903, !1905, !1907, !1912, !1926, !1929, !1934, !1936, !1941}
!1786 = !DIGlobalVariableExpression(var: !1787, expr: !DIExpression())
!1787 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !1788, isLocal: true, isDefinition: true)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 208, elements: !1789)
!1789 = !{!1790}
!1790 = !DISubrange(count: 26)
!1791 = !DIGlobalVariableExpression(var: !1792, expr: !DIExpression())
!1792 = distinct !DIGlobalVariable(name: "__already_done", scope: !1793, file: !3, line: 319, type: !627, isLocal: true, isDefinition: true)
!1793 = distinct !DISubprogram(name: "clockevents_program_event", scope: !3, file: !3, line: 303, type: !1794, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!64, !126, !141, !627}
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802, !1803, !1806, !1809, !1811, !1814, !1815, !1817, !1821, !1823, !1824, !1826}
!1797 = !DILocalVariable(name: "dev", arg: 1, scope: !1793, file: !3, line: 303, type: !126)
!1798 = !DILocalVariable(name: "expires", arg: 2, scope: !1793, file: !3, line: 303, type: !141)
!1799 = !DILocalVariable(name: "force", arg: 3, scope: !1793, file: !3, line: 304, type: !627)
!1800 = !DILocalVariable(name: "clc", scope: !1793, file: !3, line: 306, type: !111)
!1801 = !DILocalVariable(name: "delta", scope: !1793, file: !3, line: 307, type: !112)
!1802 = !DILocalVariable(name: "rc", scope: !1793, file: !3, line: 308, type: !64)
!1803 = !DILocalVariable(name: "__ret_warn_on", scope: !1804, file: !3, line: 310, type: !64)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 310, column: 6)
!1805 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 310, column: 6)
!1806 = !DILocalVariable(name: "__flags", scope: !1807, file: !3, line: 310, type: !64)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 310, column: 6)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 310, column: 6)
!1809 = !DILocalVariable(name: "__ret_do_once", scope: !1810, file: !3, line: 319, type: !627)
!1810 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 319, column: 2)
!1811 = !DILocalVariable(name: "__ret_cond", scope: !1812, file: !3, line: 319, type: !627)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 319, column: 2)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 319, column: 2)
!1814 = !DILocalVariable(name: "__ret_once", scope: !1812, file: !3, line: 319, type: !627)
!1815 = !DILocalVariable(name: "__ret_warn_on", scope: !1816, file: !3, line: 319, type: !64)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 319, column: 2)
!1817 = !DILocalVariable(name: "__flags", scope: !1818, file: !3, line: 319, type: !64)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 319, column: 2)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 319, column: 2)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 319, column: 2)
!1821 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !1822, file: !3, line: 330, type: !112)
!1822 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 330, column: 10)
!1823 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !1822, file: !3, line: 330, type: !112)
!1824 = !DILocalVariable(name: "__UNIQUE_ID___x209", scope: !1825, file: !3, line: 331, type: !112)
!1825 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 331, column: 10)
!1826 = !DILocalVariable(name: "__UNIQUE_ID___y210", scope: !1825, file: !3, line: 331, type: !112)
!1827 = !DIGlobalVariableExpression(var: !1828, expr: !DIExpression())
!1828 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !1829, isLocal: true, isDefinition: true)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 152, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 19)
!1832 = !DIGlobalVariableExpression(var: !1833, expr: !DIExpression())
!1833 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_clockevents_unbind_device211", scope: !2, file: !3, line: 437, type: !103, isLocal: true, isDefinition: true)
!1834 = !DIGlobalVariableExpression(var: !1835, expr: !DIExpression())
!1835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 452, type: !1836, isLocal: true, isDefinition: true)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 40, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 5)
!1839 = !DIGlobalVariableExpression(var: !1840, expr: !DIExpression())
!1840 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !1841, isLocal: true, isDefinition: true)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 488, elements: !1842)
!1842 = !{!1843}
!1843 = !DISubrange(count: 61)
!1844 = !DIGlobalVariableExpression(var: !1845, expr: !DIExpression())
!1845 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_clockevents_register_device212", scope: !2, file: !3, line: 469, type: !103, isLocal: true, isDefinition: true)
!1846 = !DIGlobalVariableExpression(var: !1847, expr: !DIExpression())
!1847 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_clockevents_config_and_register213", scope: !2, file: !3, line: 513, type: !103, isLocal: true, isDefinition: true)
!1848 = !DIGlobalVariableExpression(var: !1849, expr: !DIExpression())
!1849 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_clockevents__214_777_clockevents_init_sysfs6215", scope: !2, file: !3, line: 777, type: !103, isLocal: true, isDefinition: true)
!1850 = !DIGlobalVariableExpression(var: !1851, expr: !DIExpression())
!1851 = distinct !DIGlobalVariable(name: "__already_done", scope: !1852, file: !3, line: 125, type: !627, isLocal: true, isDefinition: true)
!1852 = distinct !DISubprogram(name: "__clockevents_switch_state", scope: !3, file: !3, line: 91, type: !1853, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1855)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!64, !126, !5}
!1855 = !{!1856, !1857, !1858, !1862, !1865, !1866, !1868}
!1856 = !DILocalVariable(name: "dev", arg: 1, scope: !1852, file: !3, line: 91, type: !126)
!1857 = !DILocalVariable(name: "state", arg: 2, scope: !1852, file: !3, line: 92, type: !5)
!1858 = !DILocalVariable(name: "__ret_do_once", scope: !1859, file: !3, line: 125, type: !627)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 125, column: 7)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 125, column: 7)
!1861 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 98, column: 17)
!1862 = !DILocalVariable(name: "__ret_cond", scope: !1863, file: !3, line: 125, type: !627)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 125, column: 7)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 125, column: 7)
!1865 = !DILocalVariable(name: "__ret_once", scope: !1863, file: !3, line: 125, type: !627)
!1866 = !DILocalVariable(name: "__ret_warn_on", scope: !1867, file: !3, line: 125, type: !64)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 125, column: 7)
!1868 = !DILocalVariable(name: "__flags", scope: !1869, file: !3, line: 125, type: !64)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 125, column: 7)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 125, column: 7)
!1871 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 125, column: 7)
!1872 = !DIGlobalVariableExpression(var: !1873, expr: !DIExpression())
!1873 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !1874, isLocal: true, isDefinition: true)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 320, elements: !1875)
!1875 = !{!1876}
!1876 = !DISubrange(count: 40)
!1877 = !DIGlobalVariableExpression(var: !1878, expr: !DIExpression())
!1878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !1879, isLocal: true, isDefinition: true)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 368, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 46)
!1882 = !DIGlobalVariableExpression(var: !1883, expr: !DIExpression())
!1883 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !1884, isLocal: true, isDefinition: true)
!1884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16, elements: !984)
!1885 = !DIGlobalVariableExpression(var: !1886, expr: !DIExpression())
!1886 = distinct !DIGlobalVariable(name: "clockevents_mutex", scope: !2, file: !3, line: 25, type: !528, isLocal: true, isDefinition: true)
!1887 = !DIGlobalVariableExpression(var: !1888, expr: !DIExpression())
!1888 = distinct !DIGlobalVariable(name: "clockevents_lock", scope: !2, file: !3, line: 23, type: !462, isLocal: true, isDefinition: true)
!1889 = !DIGlobalVariableExpression(var: !1890, expr: !DIExpression())
!1890 = distinct !DIGlobalVariable(name: "clockevent_devices", scope: !2, file: !3, line: 20, type: !178, isLocal: true, isDefinition: true)
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(name: "clockevents_released", scope: !2, file: !3, line: 21, type: !178, isLocal: true, isDefinition: true)
!1893 = !DIGlobalVariableExpression(var: !1894, expr: !DIExpression())
!1894 = distinct !DIGlobalVariable(scope: null, file: !3, line: 663, type: !1895, isLocal: true, isDefinition: true)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 96, elements: !1896)
!1896 = !{!1897}
!1897 = !DISubrange(count: 12)
!1898 = !DIGlobalVariableExpression(var: !1899, expr: !DIExpression())
!1899 = distinct !DIGlobalVariable(scope: null, file: !3, line: 664, type: !1900, isLocal: true, isDefinition: true)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 88, elements: !1901)
!1901 = !{!1902}
!1902 = !DISubrange(count: 11)
!1903 = !DIGlobalVariableExpression(var: !1904, expr: !DIExpression())
!1904 = distinct !DIGlobalVariable(name: "clockevents_subsys", scope: !2, file: !3, line: 662, type: !1282, isLocal: true, isDefinition: true)
!1905 = !DIGlobalVariableExpression(var: !1906, expr: !DIExpression())
!1906 = distinct !DIGlobalVariable(name: "tick_percpu_dev", scope: !2, file: !3, line: 667, type: !1218, isLocal: true, isDefinition: true)
!1907 = !DIGlobalVariableExpression(var: !1908, expr: !DIExpression())
!1908 = distinct !DIGlobalVariable(scope: null, file: !3, line: 684, type: !1909, isLocal: true, isDefinition: true)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 120, elements: !1910)
!1910 = !{!1911}
!1911 = !DISubrange(count: 15)
!1912 = !DIGlobalVariableExpression(var: !1913, expr: !DIExpression())
!1913 = distinct !DIGlobalVariable(name: "dev_attr_current_device", scope: !2, file: !3, line: 684, type: !1914, isLocal: true, isDefinition: true)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !44, line: 106, size: 256, elements: !1915)
!1915 = !{!1916, !1917, !1922}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1914, file: !44, line: 107, baseType: !316, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1914, file: !44, line: 108, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!310, !1217, !1921, !278}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1914, file: !44, line: 110, baseType: !1923, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!310, !1217, !1921, !170, !325}
!1926 = !DIGlobalVariableExpression(var: !1927, expr: !DIExpression())
!1927 = distinct !DIGlobalVariable(scope: null, file: !3, line: 680, type: !1928, isLocal: true, isDefinition: true)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 32, elements: !509)
!1929 = !DIGlobalVariableExpression(var: !1930, expr: !DIExpression())
!1930 = distinct !DIGlobalVariable(scope: null, file: !3, line: 721, type: !1931, isLocal: true, isDefinition: true)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 80, elements: !1932)
!1932 = !{!1933}
!1933 = !DISubrange(count: 10)
!1934 = !DIGlobalVariableExpression(var: !1935, expr: !DIExpression())
!1935 = distinct !DIGlobalVariable(name: "tick_bc_dev", scope: !2, file: !3, line: 720, type: !1218, isLocal: true, isDefinition: true)
!1936 = !DIGlobalVariableExpression(var: !1937, expr: !DIExpression())
!1937 = distinct !DIGlobalVariable(scope: null, file: !3, line: 717, type: !1938, isLocal: true, isDefinition: true)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 112, elements: !1939)
!1939 = !{!1940}
!1940 = !DISubrange(count: 14)
!1941 = !DIGlobalVariableExpression(var: !1942, expr: !DIExpression())
!1942 = distinct !DIGlobalVariable(name: "dev_attr_unbind_device", scope: !2, file: !3, line: 717, type: !1914, isLocal: true, isDefinition: true)
!1943 = !{i32 7, !"Dwarf Version", i32 5}
!1944 = !{i32 2, !"Debug Info Version", i32 3}
!1945 = !{i32 1, !"wchar_size", i32 2}
!1946 = !{i32 8, !"cf-protection-branch", i32 1}
!1947 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1948 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1949 = !{i32 1, !"Code Model", i32 2}
!1950 = !{i32 1, !"override-stack-alignment", i32 8}
!1951 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1952 = distinct !DISubprogram(name: "clockevent_delta2ns", scope: !3, file: !3, line: 85, type: !1953, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!109, !114, !126}
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "latch", arg: 1, scope: !1952, file: !3, line: 85, type: !114)
!1957 = !DILocalVariable(name: "evt", arg: 2, scope: !1952, file: !3, line: 85, type: !126)
!1958 = !DILocation(line: 85, column: 39, scope: !1952)
!1959 = !DILocation(line: 85, column: 73, scope: !1952)
!1960 = !DILocation(line: 87, column: 22, scope: !1952)
!1961 = !DILocation(line: 87, column: 29, scope: !1952)
!1962 = !DILocation(line: 87, column: 9, scope: !1952)
!1963 = !DILocation(line: 87, column: 2, scope: !1952)
!1964 = distinct !DISubprogram(name: "cev_delta2ns", scope: !3, file: !3, line: 32, type: !1965, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!109, !114, !126, !627}
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1976, !1979, !1982}
!1968 = !DILocalVariable(name: "latch", arg: 1, scope: !1964, file: !3, line: 32, type: !114)
!1969 = !DILocalVariable(name: "evt", arg: 2, scope: !1964, file: !3, line: 32, type: !126)
!1970 = !DILocalVariable(name: "ismax", arg: 3, scope: !1964, file: !3, line: 33, type: !627)
!1971 = !DILocalVariable(name: "clc", scope: !1964, file: !3, line: 35, type: !109)
!1972 = !DILocalVariable(name: "rnd", scope: !1964, file: !3, line: 36, type: !109)
!1973 = !DILocalVariable(name: "__ret_warn_on", scope: !1974, file: !3, line: 38, type: !64)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 38, column: 6)
!1975 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 38, column: 6)
!1976 = !DILocalVariable(name: "__flags", scope: !1977, file: !3, line: 38, type: !64)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 38, column: 6)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 38, column: 6)
!1979 = !DILocalVariable(name: "__base", scope: !1980, file: !3, line: 72, type: !1981)
!1980 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 72, column: 2)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !113, line: 110, baseType: !147)
!1982 = !DILocalVariable(name: "__rem", scope: !1980, file: !3, line: 72, type: !1981)
!1983 = !DILocation(line: 32, column: 39, scope: !1964)
!1984 = !DILocation(line: 32, column: 73, scope: !1964)
!1985 = !DILocation(line: 33, column: 9, scope: !1964)
!1986 = !DILocation(line: 35, column: 2, scope: !1964)
!1987 = !DILocation(line: 35, column: 6, scope: !1964)
!1988 = !DILocation(line: 35, column: 18, scope: !1964)
!1989 = !DILocation(line: 35, column: 27, scope: !1964)
!1990 = !DILocation(line: 35, column: 32, scope: !1964)
!1991 = !DILocation(line: 35, column: 24, scope: !1964)
!1992 = !DILocation(line: 36, column: 2, scope: !1964)
!1993 = !DILocation(line: 36, column: 6, scope: !1964)
!1994 = !DILocation(line: 38, column: 6, scope: !1974)
!1995 = !DILocation(line: 38, column: 6, scope: !1978)
!1996 = !DILocation(line: 38, column: 6, scope: !1977)
!1997 = !DILocation(line: 38, column: 6, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 38, column: 6)
!1999 = !DILocation(line: 38, column: 6, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 38, column: 6)
!2001 = !{i64 2152870646, i64 2152870675, i64 2152870721, i64 2152870779, i64 2152870833, i64 2152870887, i64 2152870942, i64 2152870973, i64 2152871281, i64 2152871287, i64 2152871334, i64 2152871357, i64 2152871383}
!2002 = !DILocation(line: 38, column: 6, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 38, column: 6)
!2004 = !DILocation(line: 38, column: 6, scope: !1975)
!2005 = !DILocation(line: 38, column: 6, scope: !1964)
!2006 = !DILocation(line: 39, column: 3, scope: !1975)
!2007 = !DILocation(line: 39, column: 8, scope: !1975)
!2008 = !DILocation(line: 39, column: 13, scope: !1975)
!2009 = !DILocation(line: 40, column: 14, scope: !1964)
!2010 = !DILocation(line: 40, column: 19, scope: !1964)
!2011 = !DILocation(line: 40, column: 8, scope: !1964)
!2012 = !DILocation(line: 40, column: 24, scope: !1964)
!2013 = !DILocation(line: 40, column: 6, scope: !1964)
!2014 = !DILocation(line: 46, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 46, column: 6)
!2016 = !DILocation(line: 46, column: 14, scope: !2015)
!2017 = !DILocation(line: 46, column: 19, scope: !2015)
!2018 = !DILocation(line: 46, column: 11, scope: !2015)
!2019 = !DILocation(line: 46, column: 34, scope: !2015)
!2020 = !DILocation(line: 46, column: 26, scope: !2015)
!2021 = !DILocation(line: 46, column: 6, scope: !1964)
!2022 = !DILocation(line: 47, column: 7, scope: !2015)
!2023 = !DILocation(line: 47, column: 3, scope: !2015)
!2024 = !DILocation(line: 68, column: 15, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 68, column: 6)
!2026 = !DILocation(line: 68, column: 13, scope: !2025)
!2027 = !DILocation(line: 68, column: 21, scope: !2025)
!2028 = !DILocation(line: 68, column: 19, scope: !2025)
!2029 = !DILocation(line: 68, column: 26, scope: !2025)
!2030 = !DILocation(line: 69, column: 8, scope: !2025)
!2031 = !{i8 0, i8 2}
!2032 = !DILocation(line: 69, column: 14, scope: !2025)
!2033 = !DILocation(line: 69, column: 17, scope: !2025)
!2034 = !DILocation(line: 69, column: 22, scope: !2025)
!2035 = !DILocation(line: 69, column: 39, scope: !2025)
!2036 = !DILocation(line: 69, column: 44, scope: !2025)
!2037 = !DILocation(line: 69, column: 36, scope: !2025)
!2038 = !DILocation(line: 69, column: 27, scope: !2025)
!2039 = !DILocation(line: 68, column: 6, scope: !1964)
!2040 = !DILocation(line: 70, column: 10, scope: !2025)
!2041 = !DILocation(line: 70, column: 7, scope: !2025)
!2042 = !DILocation(line: 70, column: 3, scope: !2025)
!2043 = !DILocation(line: 72, column: 2, scope: !1980)
!2044 = !DILocation(line: 72, column: 2, scope: !1964)
!2045 = !DILocation(line: 75, column: 9, scope: !1964)
!2046 = !DILocation(line: 75, column: 13, scope: !1964)
!2047 = !DILocation(line: 75, column: 22, scope: !1964)
!2048 = !DILocation(line: 76, column: 1, scope: !1964)
!2049 = !DILocation(line: 75, column: 2, scope: !1964)
!2050 = distinct !DISubprogram(name: "clockevents_switch_state", scope: !3, file: !3, line: 147, type: !2051, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !126, !5}
!2053 = !{!2054, !2055, !2056, !2063}
!2054 = !DILocalVariable(name: "dev", arg: 1, scope: !2050, file: !3, line: 147, type: !126)
!2055 = !DILocalVariable(name: "state", arg: 2, scope: !2050, file: !3, line: 148, type: !5)
!2056 = !DILocalVariable(name: "__ret_warn_on", scope: !2057, file: !3, line: 161, type: !64)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 161, column: 8)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 161, column: 8)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 160, column: 38)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 160, column: 7)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 150, column: 42)
!2062 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 150, column: 6)
!2063 = !DILocalVariable(name: "__flags", scope: !2064, file: !3, line: 161, type: !64)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 161, column: 8)
!2065 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 161, column: 8)
!2066 = !DILocation(line: 147, column: 58, scope: !2050)
!2067 = !DILocation(line: 148, column: 33, scope: !2050)
!2068 = !DILocation(line: 150, column: 27, scope: !2062)
!2069 = !DILocation(line: 150, column: 6, scope: !2062)
!2070 = !DILocation(line: 150, column: 35, scope: !2062)
!2071 = !DILocation(line: 150, column: 32, scope: !2062)
!2072 = !DILocation(line: 150, column: 6, scope: !2050)
!2073 = !DILocation(line: 151, column: 34, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 151, column: 7)
!2075 = !DILocation(line: 151, column: 39, scope: !2074)
!2076 = !DILocation(line: 151, column: 7, scope: !2074)
!2077 = !DILocation(line: 151, column: 7, scope: !2061)
!2078 = !DILocation(line: 152, column: 4, scope: !2074)
!2079 = !DILocation(line: 154, column: 24, scope: !2061)
!2080 = !DILocation(line: 154, column: 29, scope: !2061)
!2081 = !DILocation(line: 154, column: 3, scope: !2061)
!2082 = !DILocation(line: 160, column: 32, scope: !2060)
!2083 = !DILocation(line: 160, column: 7, scope: !2060)
!2084 = !DILocation(line: 160, column: 7, scope: !2061)
!2085 = !DILocation(line: 161, column: 8, scope: !2057)
!2086 = !DILocation(line: 161, column: 8, scope: !2065)
!2087 = !DILocation(line: 161, column: 8, scope: !2064)
!2088 = !DILocation(line: 161, column: 8, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 161, column: 8)
!2090 = !DILocation(line: 161, column: 8, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 161, column: 8)
!2092 = !{i64 2152876953, i64 2152876982, i64 2152877028, i64 2152877086, i64 2152877140, i64 2152877194, i64 2152877249, i64 2152877280, i64 2152877588, i64 2152877594, i64 2152877641, i64 2152877664, i64 2152877690}
!2093 = !DILocation(line: 161, column: 8, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 161, column: 8)
!2095 = !DILocation(line: 161, column: 8, scope: !2058)
!2096 = !DILocation(line: 161, column: 8, scope: !2059)
!2097 = !DILocation(line: 162, column: 5, scope: !2058)
!2098 = !DILocation(line: 162, column: 10, scope: !2058)
!2099 = !DILocation(line: 162, column: 15, scope: !2058)
!2100 = !DILocation(line: 163, column: 3, scope: !2059)
!2101 = !DILocation(line: 164, column: 2, scope: !2061)
!2102 = !DILocation(line: 165, column: 1, scope: !2050)
!2103 = distinct !DISubprogram(name: "clockevent_get_state", scope: !2104, file: !2104, line: 39, type: !2105, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2104 = !DIFile(filename: "kernel/time/tick-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43882d5594f243c1bfbd5b540566356d")
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!5, !126}
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "dev", arg: 1, scope: !2103, file: !2104, line: 39, type: !126)
!2109 = !DILocation(line: 39, column: 86, scope: !2103)
!2110 = !DILocation(line: 41, column: 9, scope: !2103)
!2111 = !DILocation(line: 41, column: 14, scope: !2103)
!2112 = !DILocation(line: 41, column: 2, scope: !2103)
!2113 = !DILocation(line: 91, column: 66, scope: !1852)
!2114 = !DILocation(line: 92, column: 34, scope: !1852)
!2115 = !DILocation(line: 94, column: 6, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 94, column: 6)
!2117 = !DILocation(line: 94, column: 11, scope: !2116)
!2118 = !DILocation(line: 94, column: 20, scope: !2116)
!2119 = !DILocation(line: 94, column: 6, scope: !1852)
!2120 = !DILocation(line: 95, column: 3, scope: !2116)
!2121 = !DILocation(line: 98, column: 10, scope: !1852)
!2122 = !DILocation(line: 98, column: 2, scope: !1852)
!2123 = !DILocation(line: 103, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 103, column: 7)
!2125 = !DILocation(line: 103, column: 12, scope: !2124)
!2126 = !DILocation(line: 103, column: 7, scope: !1861)
!2127 = !DILocation(line: 104, column: 11, scope: !2124)
!2128 = !DILocation(line: 104, column: 16, scope: !2124)
!2129 = !DILocation(line: 104, column: 35, scope: !2124)
!2130 = !DILocation(line: 104, column: 4, scope: !2124)
!2131 = !DILocation(line: 105, column: 3, scope: !1861)
!2132 = !DILocation(line: 109, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 109, column: 7)
!2134 = !DILocation(line: 109, column: 14, scope: !2133)
!2135 = !DILocation(line: 109, column: 23, scope: !2133)
!2136 = !DILocation(line: 109, column: 7, scope: !1861)
!2137 = !DILocation(line: 110, column: 4, scope: !2133)
!2138 = !DILocation(line: 111, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 111, column: 7)
!2140 = !DILocation(line: 111, column: 12, scope: !2139)
!2141 = !DILocation(line: 111, column: 7, scope: !1861)
!2142 = !DILocation(line: 112, column: 11, scope: !2139)
!2143 = !DILocation(line: 112, column: 16, scope: !2139)
!2144 = !DILocation(line: 112, column: 35, scope: !2139)
!2145 = !DILocation(line: 112, column: 4, scope: !2139)
!2146 = !DILocation(line: 113, column: 3, scope: !1861)
!2147 = !DILocation(line: 117, column: 9, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 117, column: 7)
!2149 = !DILocation(line: 117, column: 14, scope: !2148)
!2150 = !DILocation(line: 117, column: 23, scope: !2148)
!2151 = !DILocation(line: 117, column: 7, scope: !1861)
!2152 = !DILocation(line: 118, column: 4, scope: !2148)
!2153 = !DILocation(line: 119, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 119, column: 7)
!2155 = !DILocation(line: 119, column: 12, scope: !2154)
!2156 = !DILocation(line: 119, column: 7, scope: !1861)
!2157 = !DILocation(line: 120, column: 11, scope: !2154)
!2158 = !DILocation(line: 120, column: 16, scope: !2154)
!2159 = !DILocation(line: 120, column: 34, scope: !2154)
!2160 = !DILocation(line: 120, column: 4, scope: !2154)
!2161 = !DILocation(line: 121, column: 3, scope: !1861)
!2162 = !DILocation(line: 125, column: 7, scope: !1859)
!2163 = !DILocation(line: 125, column: 7, scope: !1863)
!2164 = !DILocation(line: 125, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 125, column: 7)
!2166 = !DILocation(line: 0, scope: !2165)
!2167 = !DILocation(line: 125, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 125, column: 7)
!2169 = !DILocation(line: 125, column: 7, scope: !1864)
!2170 = !DILocation(line: 125, column: 7, scope: !1867)
!2171 = !DILocation(line: 125, column: 7, scope: !1871)
!2172 = !DILocation(line: 125, column: 7, scope: !1870)
!2173 = !DILocation(line: 125, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 125, column: 7)
!2175 = !DILocation(line: 125, column: 7, scope: !1869)
!2176 = !DILocation(line: 125, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 125, column: 7)
!2178 = !DILocation(line: 125, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 125, column: 7)
!2180 = !{i64 2152875388, i64 2152875417, i64 2152875463, i64 2152875521, i64 2152875575, i64 2152875629, i64 2152875684, i64 2152875715, i64 2152876023, i64 2152876029, i64 2152876076, i64 2152876099, i64 2152876125}
!2181 = !DILocation(line: 125, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 125, column: 7)
!2183 = !DILocation(line: 125, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 125, column: 7)
!2185 = !DILocation(line: 125, column: 7, scope: !1860)
!2186 = !DILocation(line: 125, column: 7, scope: !1861)
!2187 = !DILocation(line: 128, column: 4, scope: !1860)
!2188 = !DILocation(line: 130, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 130, column: 7)
!2190 = !DILocation(line: 130, column: 12, scope: !2189)
!2191 = !DILocation(line: 130, column: 7, scope: !1861)
!2192 = !DILocation(line: 131, column: 11, scope: !2189)
!2193 = !DILocation(line: 131, column: 16, scope: !2189)
!2194 = !DILocation(line: 131, column: 42, scope: !2189)
!2195 = !DILocation(line: 131, column: 4, scope: !2189)
!2196 = !DILocation(line: 133, column: 4, scope: !2189)
!2197 = !DILocation(line: 136, column: 3, scope: !1861)
!2198 = !DILocation(line: 138, column: 1, scope: !1852)
!2199 = distinct !DISubprogram(name: "clockevent_set_state", scope: !2104, file: !2104, line: 44, type: !2051, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2200 = !{!2201, !2202}
!2201 = !DILocalVariable(name: "dev", arg: 1, scope: !2199, file: !2104, line: 44, type: !126)
!2202 = !DILocalVariable(name: "state", arg: 2, scope: !2199, file: !2104, line: 45, type: !5)
!2203 = !DILocation(line: 44, column: 68, scope: !2199)
!2204 = !DILocation(line: 45, column: 29, scope: !2199)
!2205 = !DILocation(line: 47, column: 29, scope: !2199)
!2206 = !DILocation(line: 47, column: 2, scope: !2199)
!2207 = !DILocation(line: 47, column: 7, scope: !2199)
!2208 = !DILocation(line: 47, column: 27, scope: !2199)
!2209 = !DILocation(line: 48, column: 1, scope: !2199)
!2210 = distinct !DISubprogram(name: "clockevent_state_oneshot", scope: !6, file: !6, line: 150, type: !2211, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!627, !126}
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "dev", arg: 1, scope: !2210, file: !6, line: 150, type: !126)
!2215 = !DILocation(line: 150, column: 72, scope: !2210)
!2216 = !DILocation(line: 152, column: 9, scope: !2210)
!2217 = !DILocation(line: 152, column: 14, scope: !2210)
!2218 = !DILocation(line: 152, column: 34, scope: !2210)
!2219 = !DILocation(line: 152, column: 2, scope: !2210)
!2220 = distinct !DISubprogram(name: "clockevents_shutdown", scope: !3, file: !3, line: 171, type: !131, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2221 = !{!2222}
!2222 = !DILocalVariable(name: "dev", arg: 1, scope: !2220, file: !3, line: 171, type: !126)
!2223 = !DILocation(line: 171, column: 54, scope: !2220)
!2224 = !DILocation(line: 173, column: 27, scope: !2220)
!2225 = !DILocation(line: 173, column: 2, scope: !2220)
!2226 = !DILocation(line: 174, column: 2, scope: !2220)
!2227 = !DILocation(line: 174, column: 7, scope: !2220)
!2228 = !DILocation(line: 174, column: 18, scope: !2220)
!2229 = !DILocation(line: 175, column: 1, scope: !2220)
!2230 = distinct !DISubprogram(name: "clockevents_tick_resume", scope: !3, file: !3, line: 181, type: !155, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2231 = !{!2232, !2233}
!2232 = !DILocalVariable(name: "dev", arg: 1, scope: !2230, file: !3, line: 181, type: !126)
!2233 = !DILocalVariable(name: "ret", scope: !2230, file: !3, line: 183, type: !64)
!2234 = !DILocation(line: 181, column: 56, scope: !2230)
!2235 = !DILocation(line: 183, column: 2, scope: !2230)
!2236 = !DILocation(line: 183, column: 6, scope: !2230)
!2237 = !DILocation(line: 185, column: 6, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 185, column: 6)
!2239 = !DILocation(line: 185, column: 11, scope: !2238)
!2240 = !DILocation(line: 185, column: 6, scope: !2230)
!2241 = !DILocation(line: 186, column: 9, scope: !2238)
!2242 = !DILocation(line: 186, column: 14, scope: !2238)
!2243 = !DILocation(line: 186, column: 26, scope: !2238)
!2244 = !DILocation(line: 186, column: 7, scope: !2238)
!2245 = !DILocation(line: 186, column: 3, scope: !2238)
!2246 = !DILocation(line: 188, column: 9, scope: !2230)
!2247 = !DILocation(line: 189, column: 1, scope: !2230)
!2248 = !DILocation(line: 188, column: 2, scope: !2230)
!2249 = !DILocation(line: 303, column: 58, scope: !1793)
!2250 = !DILocation(line: 303, column: 71, scope: !1793)
!2251 = !DILocation(line: 304, column: 15, scope: !1793)
!2252 = !DILocation(line: 306, column: 2, scope: !1793)
!2253 = !DILocation(line: 306, column: 21, scope: !1793)
!2254 = !DILocation(line: 307, column: 2, scope: !1793)
!2255 = !DILocation(line: 307, column: 10, scope: !1793)
!2256 = !DILocation(line: 308, column: 2, scope: !1793)
!2257 = !DILocation(line: 308, column: 6, scope: !1793)
!2258 = !DILocation(line: 310, column: 6, scope: !1804)
!2259 = !DILocation(line: 310, column: 6, scope: !1808)
!2260 = !DILocation(line: 310, column: 6, scope: !1807)
!2261 = !DILocation(line: 310, column: 6, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 310, column: 6)
!2263 = !DILocation(line: 310, column: 6, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 310, column: 6)
!2265 = !{i64 2152879595, i64 2152879624, i64 2152879670, i64 2152879728, i64 2152879782, i64 2152879836, i64 2152879891, i64 2152879922, i64 2152880230, i64 2152880236, i64 2152880283, i64 2152880306, i64 2152880332}
!2266 = !DILocation(line: 310, column: 6, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 310, column: 6)
!2268 = !DILocation(line: 310, column: 6, scope: !1805)
!2269 = !DILocation(line: 310, column: 6, scope: !1793)
!2270 = !DILocation(line: 311, column: 3, scope: !1805)
!2271 = !DILocation(line: 313, column: 20, scope: !1793)
!2272 = !DILocation(line: 313, column: 2, scope: !1793)
!2273 = !DILocation(line: 313, column: 7, scope: !1793)
!2274 = !DILocation(line: 313, column: 18, scope: !1793)
!2275 = !DILocation(line: 315, column: 32, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 315, column: 6)
!2277 = !DILocation(line: 315, column: 6, scope: !2276)
!2278 = !DILocation(line: 315, column: 6, scope: !1793)
!2279 = !DILocation(line: 316, column: 3, scope: !2276)
!2280 = !DILocation(line: 319, column: 2, scope: !1810)
!2281 = !DILocation(line: 319, column: 2, scope: !1812)
!2282 = !DILocation(line: 319, column: 2, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 319, column: 2)
!2284 = !DILocation(line: 0, scope: !2283)
!2285 = !DILocation(line: 319, column: 2, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 319, column: 2)
!2287 = !DILocation(line: 319, column: 2, scope: !1813)
!2288 = !DILocation(line: 319, column: 2, scope: !1816)
!2289 = !DILocation(line: 319, column: 2, scope: !1820)
!2290 = !DILocation(line: 319, column: 2, scope: !1819)
!2291 = !DILocation(line: 319, column: 2, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 319, column: 2)
!2293 = !DILocation(line: 319, column: 2, scope: !1818)
!2294 = !DILocation(line: 319, column: 2, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 319, column: 2)
!2296 = !DILocation(line: 319, column: 2, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 319, column: 2)
!2298 = !{i64 2152882256, i64 2152882285, i64 2152882331, i64 2152882389, i64 2152882443, i64 2152882497, i64 2152882552, i64 2152882583, i64 2152882891, i64 2152882897, i64 2152882944, i64 2152882967, i64 2152882993}
!2299 = !DILocation(line: 319, column: 2, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 319, column: 2)
!2301 = !DILocation(line: 319, column: 2, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 319, column: 2)
!2303 = !DILocation(line: 319, column: 2, scope: !1793)
!2304 = !DILocation(line: 323, column: 6, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 323, column: 6)
!2306 = !DILocation(line: 323, column: 11, scope: !2305)
!2307 = !DILocation(line: 323, column: 20, scope: !2305)
!2308 = !DILocation(line: 323, column: 6, scope: !1793)
!2309 = !DILocation(line: 324, column: 10, scope: !2305)
!2310 = !DILocation(line: 324, column: 15, scope: !2305)
!2311 = !DILocation(line: 324, column: 30, scope: !2305)
!2312 = !DILocation(line: 324, column: 39, scope: !2305)
!2313 = !DILocation(line: 324, column: 3, scope: !2305)
!2314 = !DILocation(line: 326, column: 22, scope: !1793)
!2315 = !DILocation(line: 326, column: 10, scope: !1793)
!2316 = !DILocation(line: 326, column: 8, scope: !1793)
!2317 = !DILocation(line: 327, column: 6, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 327, column: 6)
!2319 = !DILocation(line: 327, column: 12, scope: !2318)
!2320 = !DILocation(line: 327, column: 6, scope: !1793)
!2321 = !DILocation(line: 328, column: 10, scope: !2318)
!2322 = !DILocation(line: 328, column: 48, scope: !2318)
!2323 = !DILocation(line: 328, column: 18, scope: !2318)
!2324 = !DILocation(line: 328, column: 3, scope: !2318)
!2325 = !DILocation(line: 330, column: 10, scope: !1822)
!2326 = !DILocation(line: 330, column: 10, scope: !1793)
!2327 = !DILocation(line: 330, column: 8, scope: !1793)
!2328 = !DILocation(line: 331, column: 10, scope: !1825)
!2329 = !DILocation(line: 331, column: 10, scope: !1793)
!2330 = !DILocation(line: 331, column: 8, scope: !1793)
!2331 = !DILocation(line: 333, column: 30, scope: !1793)
!2332 = !DILocation(line: 333, column: 38, scope: !1793)
!2333 = !DILocation(line: 333, column: 43, scope: !1793)
!2334 = !DILocation(line: 333, column: 36, scope: !1793)
!2335 = !DILocation(line: 333, column: 52, scope: !1793)
!2336 = !DILocation(line: 333, column: 57, scope: !1793)
!2337 = !DILocation(line: 333, column: 49, scope: !1793)
!2338 = !DILocation(line: 333, column: 6, scope: !1793)
!2339 = !DILocation(line: 334, column: 7, scope: !1793)
!2340 = !DILocation(line: 334, column: 12, scope: !1793)
!2341 = !DILocation(line: 334, column: 43, scope: !1793)
!2342 = !DILocation(line: 334, column: 48, scope: !1793)
!2343 = !DILocation(line: 334, column: 5, scope: !1793)
!2344 = !DILocation(line: 336, column: 10, scope: !1793)
!2345 = !DILocation(line: 336, column: 13, scope: !1793)
!2346 = !DILocation(line: 336, column: 16, scope: !1793)
!2347 = !DILocation(line: 336, column: 9, scope: !1793)
!2348 = !DILocation(line: 336, column: 55, scope: !1793)
!2349 = !DILocation(line: 336, column: 25, scope: !1793)
!2350 = !DILocation(line: 336, column: 62, scope: !1793)
!2351 = !DILocation(line: 336, column: 2, scope: !1793)
!2352 = !DILocation(line: 337, column: 1, scope: !1793)
!2353 = distinct !DISubprogram(name: "clockevent_state_shutdown", scope: !6, file: !6, line: 140, type: !2211, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2354)
!2354 = !{!2355}
!2355 = !DILocalVariable(name: "dev", arg: 1, scope: !2353, file: !6, line: 140, type: !126)
!2356 = !DILocation(line: 140, column: 73, scope: !2353)
!2357 = !DILocation(line: 142, column: 9, scope: !2353)
!2358 = !DILocation(line: 142, column: 14, scope: !2353)
!2359 = !DILocation(line: 142, column: 34, scope: !2353)
!2360 = !DILocation(line: 142, column: 2, scope: !2353)
!2361 = !DISubprogram(name: "__warn_printk", scope: !1011, file: !1011, line: 93, type: !2362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !170, null}
!2364 = distinct !DISubprogram(name: "ktime_to_ns", scope: !142, file: !142, line: 80, type: !2365, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!104, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!2368 = !{!2369}
!2369 = !DILocalVariable(name: "kt", arg: 1, scope: !2364, file: !142, line: 80, type: !2367)
!2370 = !DILocation(line: 80, column: 45, scope: !2364)
!2371 = !DILocation(line: 82, column: 9, scope: !2364)
!2372 = !DILocation(line: 82, column: 2, scope: !2364)
!2373 = !DISubprogram(name: "ktime_get", scope: !2374, file: !2374, line: 67, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2374 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!2375 = distinct !DISubprogram(name: "clockevents_program_min_delta", scope: !3, file: !3, line: 233, type: !155, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2376)
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DILocalVariable(name: "dev", arg: 1, scope: !2375, file: !3, line: 233, type: !126)
!2378 = !DILocalVariable(name: "clc", scope: !2375, file: !3, line: 235, type: !111)
!2379 = !DILocalVariable(name: "delta", scope: !2375, file: !3, line: 236, type: !112)
!2380 = !DILocalVariable(name: "i", scope: !2375, file: !3, line: 237, type: !64)
!2381 = !DILocation(line: 233, column: 69, scope: !2375)
!2382 = !DILocation(line: 235, column: 2, scope: !2375)
!2383 = !DILocation(line: 235, column: 21, scope: !2375)
!2384 = !DILocation(line: 236, column: 2, scope: !2375)
!2385 = !DILocation(line: 236, column: 10, scope: !2375)
!2386 = !DILocation(line: 237, column: 2, scope: !2375)
!2387 = !DILocation(line: 237, column: 6, scope: !2375)
!2388 = !DILocation(line: 239, column: 9, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 239, column: 2)
!2390 = !DILocation(line: 239, column: 7, scope: !2389)
!2391 = !DILocation(line: 240, column: 11, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 239, column: 16)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 239, column: 2)
!2394 = !DILocation(line: 240, column: 16, scope: !2392)
!2395 = !DILocation(line: 240, column: 9, scope: !2392)
!2396 = !DILocation(line: 241, column: 21, scope: !2392)
!2397 = !DILocation(line: 241, column: 3, scope: !2392)
!2398 = !DILocation(line: 241, column: 8, scope: !2392)
!2399 = !DILocation(line: 241, column: 19, scope: !2392)
!2400 = !DILocation(line: 243, column: 33, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 243, column: 7)
!2402 = !DILocation(line: 243, column: 7, scope: !2401)
!2403 = !DILocation(line: 243, column: 7, scope: !2392)
!2404 = !DILocation(line: 244, column: 4, scope: !2401)
!2405 = !DILocation(line: 246, column: 3, scope: !2392)
!2406 = !DILocation(line: 246, column: 8, scope: !2392)
!2407 = !DILocation(line: 246, column: 15, scope: !2392)
!2408 = !DILocation(line: 247, column: 31, scope: !2392)
!2409 = !DILocation(line: 247, column: 39, scope: !2392)
!2410 = !DILocation(line: 247, column: 44, scope: !2392)
!2411 = !DILocation(line: 247, column: 37, scope: !2392)
!2412 = !DILocation(line: 247, column: 53, scope: !2392)
!2413 = !DILocation(line: 247, column: 58, scope: !2392)
!2414 = !DILocation(line: 247, column: 50, scope: !2392)
!2415 = !DILocation(line: 247, column: 7, scope: !2392)
!2416 = !DILocation(line: 248, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 248, column: 7)
!2418 = !DILocation(line: 248, column: 12, scope: !2417)
!2419 = !DILocation(line: 248, column: 43, scope: !2417)
!2420 = !DILocation(line: 248, column: 48, scope: !2417)
!2421 = !DILocation(line: 248, column: 53, scope: !2417)
!2422 = !DILocation(line: 248, column: 7, scope: !2392)
!2423 = !DILocation(line: 249, column: 4, scope: !2417)
!2424 = !DILocation(line: 251, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 251, column: 7)
!2426 = !DILocation(line: 251, column: 11, scope: !2425)
!2427 = !DILocation(line: 251, column: 7, scope: !2392)
!2428 = !DILocation(line: 257, column: 39, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 257, column: 8)
!2430 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 251, column: 16)
!2431 = !DILocation(line: 257, column: 8, scope: !2429)
!2432 = !DILocation(line: 257, column: 8, scope: !2430)
!2433 = !DILocation(line: 258, column: 5, scope: !2429)
!2434 = !DILocation(line: 259, column: 6, scope: !2430)
!2435 = !DILocation(line: 260, column: 3, scope: !2430)
!2436 = !DILocation(line: 239, column: 2, scope: !2393)
!2437 = distinct !{!2437, !2438, !2439, !2440}
!2438 = !DILocation(line: 239, column: 2, scope: !2389)
!2439 = !DILocation(line: 261, column: 2, scope: !2389)
!2440 = !{!"llvm.loop.unroll.disable"}
!2441 = !DILocation(line: 262, column: 1, scope: !2375)
!2442 = distinct !DISubprogram(name: "clockevents_unbind_device", scope: !3, file: !3, line: 428, type: !2443, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!64, !126, !64}
!2445 = !{!2446, !2447, !2448}
!2446 = !DILocalVariable(name: "ced", arg: 1, scope: !2442, file: !3, line: 428, type: !126)
!2447 = !DILocalVariable(name: "cpu", arg: 2, scope: !2442, file: !3, line: 428, type: !64)
!2448 = !DILocalVariable(name: "ret", scope: !2442, file: !3, line: 430, type: !64)
!2449 = !DILocation(line: 428, column: 58, scope: !2442)
!2450 = !DILocation(line: 428, column: 67, scope: !2442)
!2451 = !DILocation(line: 430, column: 2, scope: !2442)
!2452 = !DILocation(line: 430, column: 6, scope: !2442)
!2453 = !DILocation(line: 432, column: 2, scope: !2442)
!2454 = !DILocation(line: 433, column: 27, scope: !2442)
!2455 = !DILocation(line: 433, column: 32, scope: !2442)
!2456 = !DILocation(line: 433, column: 8, scope: !2442)
!2457 = !DILocation(line: 433, column: 6, scope: !2442)
!2458 = !DILocation(line: 434, column: 2, scope: !2442)
!2459 = !DILocation(line: 435, column: 9, scope: !2442)
!2460 = !DILocation(line: 436, column: 1, scope: !2442)
!2461 = !DILocation(line: 435, column: 2, scope: !2442)
!2462 = !DISubprogram(name: "mutex_lock", scope: !529, file: !529, line: 227, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!2466 = distinct !DISubprogram(name: "clockevents_unbind", scope: !3, file: !3, line: 417, type: !2443, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2467 = !{!2468, !2469, !2470}
!2468 = !DILocalVariable(name: "ced", arg: 1, scope: !2466, file: !3, line: 417, type: !126)
!2469 = !DILocalVariable(name: "cpu", arg: 2, scope: !2466, file: !3, line: 417, type: !64)
!2470 = !DILocalVariable(name: "cu", scope: !2466, file: !3, line: 419, type: !2471)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ce_unbind", file: !3, line: 27, size: 128, elements: !2472)
!2472 = !{!2473, !2474}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ce", scope: !2471, file: !3, line: 28, baseType: !126, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !2471, file: !3, line: 29, baseType: !64, size: 32, offset: 64)
!2475 = !DILocation(line: 417, column: 58, scope: !2466)
!2476 = !DILocation(line: 417, column: 67, scope: !2466)
!2477 = !DILocation(line: 419, column: 2, scope: !2466)
!2478 = !DILocation(line: 419, column: 19, scope: !2466)
!2479 = !DILocation(line: 419, column: 24, scope: !2466)
!2480 = !DILocation(line: 419, column: 32, scope: !2466)
!2481 = !DILocation(line: 421, column: 27, scope: !2466)
!2482 = !DILocation(line: 421, column: 2, scope: !2466)
!2483 = !DILocation(line: 422, column: 12, scope: !2466)
!2484 = !DILocation(line: 423, column: 1, scope: !2466)
!2485 = !DILocation(line: 422, column: 2, scope: !2466)
!2486 = !DISubprogram(name: "mutex_unlock", scope: !529, file: !529, line: 246, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2487 = distinct !DISubprogram(name: "clockevents_register_device", scope: !3, file: !3, line: 443, type: !131, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2488)
!2488 = !{!2489, !2490, !2491, !2495, !2498, !2501, !2503, !2505, !2509, !2513, !2516, !2517, !2520}
!2489 = !DILocalVariable(name: "dev", arg: 1, scope: !2487, file: !3, line: 443, type: !126)
!2490 = !DILocalVariable(name: "flags", scope: !2487, file: !3, line: 445, type: !114)
!2491 = !DILocalVariable(name: "__ret_warn_on", scope: !2492, file: !3, line: 451, type: !64)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 451, column: 3)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 450, column: 21)
!2494 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 450, column: 6)
!2495 = !DILocalVariable(name: "__flags", scope: !2496, file: !3, line: 451, type: !64)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 451, column: 3)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 451, column: 3)
!2498 = !DILocalVariable(name: "pscr_ret__", scope: !2499, file: !3, line: 452, type: !64)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 452, column: 18)
!2500 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 452, column: 18)
!2501 = !DILocalVariable(name: "__vpp_verify", scope: !2502, file: !3, line: 452, type: !549)
!2502 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 452, column: 18)
!2503 = !DILocalVariable(name: "pfo_val__", scope: !2504, file: !3, line: 452, type: !147)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 452, column: 18)
!2505 = !DILocalVariable(name: "__ret_warn_on", scope: !2506, file: !3, line: 456, type: !64)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 456, column: 3)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 455, column: 36)
!2508 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 455, column: 6)
!2509 = !DILocalVariable(name: "__flags", scope: !2510, file: !3, line: 456, type: !64)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 456, column: 3)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 456, column: 3)
!2512 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 456, column: 3)
!2513 = !DILocalVariable(name: "__dummy", scope: !2514, file: !3, line: 461, type: !114)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 461, column: 2)
!2515 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 461, column: 2)
!2516 = !DILocalVariable(name: "__dummy2", scope: !2514, file: !3, line: 461, type: !114)
!2517 = !DILocalVariable(name: "__dummy", scope: !2518, file: !3, line: 467, type: !114)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 467, column: 2)
!2519 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 467, column: 2)
!2520 = !DILocalVariable(name: "__dummy2", scope: !2518, file: !3, line: 467, type: !114)
!2521 = !DILocation(line: 443, column: 61, scope: !2487)
!2522 = !DILocation(line: 445, column: 2, scope: !2487)
!2523 = !DILocation(line: 445, column: 16, scope: !2487)
!2524 = !DILocation(line: 448, column: 23, scope: !2487)
!2525 = !DILocation(line: 448, column: 2, scope: !2487)
!2526 = !DILocation(line: 450, column: 7, scope: !2494)
!2527 = !DILocation(line: 450, column: 12, scope: !2494)
!2528 = !DILocation(line: 450, column: 6, scope: !2487)
!2529 = !DILocation(line: 451, column: 3, scope: !2492)
!2530 = !DILocation(line: 451, column: 3, scope: !2497)
!2531 = !DILocation(line: 451, column: 3, scope: !2496)
!2532 = !DILocation(line: 451, column: 3, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 451, column: 3)
!2534 = !DILocation(line: 451, column: 3, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 451, column: 3)
!2536 = !{i64 2152917409, i64 2152917438, i64 2152917484, i64 2152917542, i64 2152917596, i64 2152917650, i64 2152917705, i64 2152917736, i64 2152918044, i64 2152918050, i64 2152918097, i64 2152918120, i64 2152918146}
!2537 = !DILocation(line: 451, column: 3, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 451, column: 3)
!2539 = !DILocation(line: 451, column: 3, scope: !2493)
!2540 = !DILocation(line: 452, column: 18, scope: !2500)
!2541 = !DILocation(line: 452, column: 18, scope: !2499)
!2542 = !DILocation(line: 452, column: 18, scope: !2502)
!2543 = !DILocation(line: 452, column: 18, scope: !2504)
!2544 = !{i64 2152922727}
!2545 = !DILocation(line: 452, column: 18, scope: !2493)
!2546 = !DILocation(line: 452, column: 3, scope: !2493)
!2547 = !DILocation(line: 452, column: 8, scope: !2493)
!2548 = !DILocation(line: 452, column: 16, scope: !2493)
!2549 = !DILocation(line: 453, column: 2, scope: !2493)
!2550 = !DILocation(line: 455, column: 6, scope: !2508)
!2551 = !DILocation(line: 455, column: 11, scope: !2508)
!2552 = !DILocation(line: 455, column: 19, scope: !2508)
!2553 = !DILocation(line: 455, column: 6, scope: !2487)
!2554 = !DILocation(line: 456, column: 3, scope: !2506)
!2555 = !DILocation(line: 456, column: 3, scope: !2512)
!2556 = !DILocation(line: 456, column: 3, scope: !2511)
!2557 = !DILocation(line: 456, column: 3, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 456, column: 3)
!2559 = !DILocation(line: 456, column: 3, scope: !2510)
!2560 = !DILocation(line: 456, column: 3, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 456, column: 3)
!2562 = !DILocation(line: 456, column: 3, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 456, column: 3)
!2564 = !{i64 2152924313, i64 2152924342, i64 2152924388, i64 2152924446, i64 2152924500, i64 2152924554, i64 2152924609, i64 2152924640, i64 2152924948, i64 2152924954, i64 2152925001, i64 2152925024, i64 2152925050}
!2565 = !DILocation(line: 456, column: 3, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 456, column: 3)
!2567 = !DILocation(line: 456, column: 3, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 456, column: 3)
!2569 = !DILocation(line: 456, column: 3, scope: !2507)
!2570 = !DILocation(line: 458, column: 3, scope: !2507)
!2571 = !DILocation(line: 458, column: 8, scope: !2507)
!2572 = !DILocation(line: 458, column: 16, scope: !2507)
!2573 = !DILocation(line: 459, column: 2, scope: !2507)
!2574 = !DILocation(line: 461, column: 2, scope: !2487)
!2575 = !DILocation(line: 461, column: 2, scope: !2514)
!2576 = !DILocation(line: 461, column: 2, scope: !2515)
!2577 = !DILocation(line: 463, column: 12, scope: !2487)
!2578 = !DILocation(line: 463, column: 17, scope: !2487)
!2579 = !DILocation(line: 463, column: 2, scope: !2487)
!2580 = !DILocation(line: 464, column: 24, scope: !2487)
!2581 = !DILocation(line: 464, column: 2, scope: !2487)
!2582 = !DILocation(line: 465, column: 2, scope: !2487)
!2583 = !DILocation(line: 467, column: 2, scope: !2487)
!2584 = !DILocation(line: 467, column: 2, scope: !2518)
!2585 = !DILocation(line: 467, column: 2, scope: !2519)
!2586 = !DILocation(line: 468, column: 1, scope: !2487)
!2587 = distinct !DISubprogram(name: "cpumask_weight", scope: !118, file: !118, line: 690, type: !2588, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!7, !115}
!2590 = !{!2591}
!2591 = !DILocalVariable(name: "srcp", arg: 1, scope: !2587, file: !118, line: 690, type: !115)
!2592 = !DILocation(line: 690, column: 65, scope: !2587)
!2593 = !DILocation(line: 692, column: 23, scope: !2587)
!2594 = !DILocation(line: 692, column: 9, scope: !2587)
!2595 = !DILocation(line: 692, column: 2, scope: !2587)
!2596 = distinct !DISubprogram(name: "get_cpu_mask", scope: !118, file: !118, line: 1056, type: !2597, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!115, !7}
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "cpu", arg: 1, scope: !2596, file: !118, line: 1056, type: !7)
!2601 = !DILocalVariable(name: "p", scope: !2596, file: !118, line: 1058, type: !2602)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!2604 = !DILocation(line: 1056, column: 63, scope: !2596)
!2605 = !DILocation(line: 1058, column: 2, scope: !2596)
!2606 = !DILocation(line: 1058, column: 23, scope: !2596)
!2607 = !DILocation(line: 1058, column: 46, scope: !2596)
!2608 = !DILocation(line: 1058, column: 50, scope: !2596)
!2609 = !DILocation(line: 1058, column: 44, scope: !2596)
!2610 = !DILocation(line: 1058, column: 27, scope: !2596)
!2611 = !DILocation(line: 1059, column: 7, scope: !2596)
!2612 = !DILocation(line: 1059, column: 11, scope: !2596)
!2613 = !DILocation(line: 1059, column: 4, scope: !2596)
!2614 = !DILocation(line: 1060, column: 9, scope: !2596)
!2615 = !DILocation(line: 1061, column: 1, scope: !2596)
!2616 = !DILocation(line: 1060, column: 2, scope: !2596)
!2617 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !2618, file: !2618, line: 313, type: !2619, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2621)
!2618 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !170}
!2621 = !{!2622}
!2622 = !DILocalVariable(name: "op", arg: 1, scope: !2617, file: !2618, line: 313, type: !170)
!2623 = !DILocation(line: 313, column: 66, scope: !2617)
!2624 = !DILocation(line: 313, column: 72, scope: !2617)
!2625 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !2626, file: !2626, line: 32, type: !2627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2626 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!114, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!2630 = distinct !DISubprogram(name: "list_add", scope: !2631, file: !2631, line: 167, type: !2632, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2634)
!2631 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !181, !181}
!2634 = !{!2635, !2636}
!2635 = !DILocalVariable(name: "new", arg: 1, scope: !2630, file: !2631, line: 167, type: !181)
!2636 = !DILocalVariable(name: "head", arg: 2, scope: !2630, file: !2631, line: 167, type: !181)
!2637 = !DILocation(line: 167, column: 47, scope: !2630)
!2638 = !DILocation(line: 167, column: 70, scope: !2630)
!2639 = !DILocation(line: 169, column: 13, scope: !2630)
!2640 = !DILocation(line: 169, column: 18, scope: !2630)
!2641 = !DILocation(line: 169, column: 24, scope: !2630)
!2642 = !DILocation(line: 169, column: 30, scope: !2630)
!2643 = !DILocation(line: 169, column: 2, scope: !2630)
!2644 = !DILocation(line: 170, column: 1, scope: !2630)
!2645 = !DISubprogram(name: "tick_check_new_device", scope: !2104, file: !2104, line: 22, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2646 = distinct !DISubprogram(name: "clockevents_notify_released", scope: !3, file: !3, line: 343, type: !1204, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2647)
!2647 = !{!2648, !2649}
!2648 = !DILocalVariable(name: "dev", scope: !2646, file: !3, line: 345, type: !126)
!2649 = !DILocalVariable(name: "__mptr", scope: !2650, file: !3, line: 348, type: !103)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 348, column: 9)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 347, column: 45)
!2652 = !DILocation(line: 345, column: 2, scope: !2646)
!2653 = !DILocation(line: 345, column: 29, scope: !2646)
!2654 = !DILocation(line: 347, column: 2, scope: !2646)
!2655 = !DILocation(line: 347, column: 10, scope: !2646)
!2656 = !DILocation(line: 347, column: 9, scope: !2646)
!2657 = !DILocation(line: 348, column: 9, scope: !2650)
!2658 = !DILocation(line: 348, column: 9, scope: !2651)
!2659 = !DILocation(line: 348, column: 7, scope: !2651)
!2660 = !DILocation(line: 350, column: 14, scope: !2651)
!2661 = !DILocation(line: 350, column: 19, scope: !2651)
!2662 = !DILocation(line: 350, column: 3, scope: !2651)
!2663 = !DILocation(line: 351, column: 25, scope: !2651)
!2664 = !DILocation(line: 351, column: 3, scope: !2651)
!2665 = distinct !{!2665, !2654, !2666, !2667, !2440}
!2666 = !DILocation(line: 352, column: 2, scope: !2646)
!2667 = !{!"llvm.loop.mustprogress"}
!2668 = !DILocation(line: 353, column: 1, scope: !2646)
!2669 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !2626, file: !2626, line: 43, type: !2670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !2629, !114}
!2672 = distinct !DISubprogram(name: "clockevents_config_and_register", scope: !3, file: !3, line: 504, type: !2673, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !126, !147, !114, !114}
!2675 = !{!2676, !2677, !2678, !2679}
!2676 = !DILocalVariable(name: "dev", arg: 1, scope: !2672, file: !3, line: 504, type: !126)
!2677 = !DILocalVariable(name: "freq", arg: 2, scope: !2672, file: !3, line: 505, type: !147)
!2678 = !DILocalVariable(name: "min_delta", arg: 3, scope: !2672, file: !3, line: 505, type: !114)
!2679 = !DILocalVariable(name: "max_delta", arg: 4, scope: !2672, file: !3, line: 506, type: !114)
!2680 = !DILocation(line: 504, column: 65, scope: !2672)
!2681 = !DILocation(line: 505, column: 14, scope: !2672)
!2682 = !DILocation(line: 505, column: 34, scope: !2672)
!2683 = !DILocation(line: 506, column: 24, scope: !2672)
!2684 = !DILocation(line: 508, column: 25, scope: !2672)
!2685 = !DILocation(line: 508, column: 2, scope: !2672)
!2686 = !DILocation(line: 508, column: 7, scope: !2672)
!2687 = !DILocation(line: 508, column: 23, scope: !2672)
!2688 = !DILocation(line: 509, column: 25, scope: !2672)
!2689 = !DILocation(line: 509, column: 2, scope: !2672)
!2690 = !DILocation(line: 509, column: 7, scope: !2672)
!2691 = !DILocation(line: 509, column: 23, scope: !2672)
!2692 = !DILocation(line: 510, column: 21, scope: !2672)
!2693 = !DILocation(line: 510, column: 26, scope: !2672)
!2694 = !DILocation(line: 510, column: 2, scope: !2672)
!2695 = !DILocation(line: 511, column: 30, scope: !2672)
!2696 = !DILocation(line: 511, column: 2, scope: !2672)
!2697 = !DILocation(line: 512, column: 1, scope: !2672)
!2698 = distinct !DISubprogram(name: "clockevents_config", scope: !3, file: !3, line: 471, type: !2699, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !126, !147}
!2701 = !{!2702, !2703, !2704, !2705, !2707}
!2702 = !DILocalVariable(name: "dev", arg: 1, scope: !2698, file: !3, line: 471, type: !126)
!2703 = !DILocalVariable(name: "freq", arg: 2, scope: !2698, file: !3, line: 471, type: !147)
!2704 = !DILocalVariable(name: "sec", scope: !2698, file: !3, line: 473, type: !109)
!2705 = !DILocalVariable(name: "__base", scope: !2706, file: !3, line: 484, type: !1981)
!2706 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 484, column: 2)
!2707 = !DILocalVariable(name: "__rem", scope: !2706, file: !3, line: 484, type: !1981)
!2708 = !DILocation(line: 471, column: 59, scope: !2698)
!2709 = !DILocation(line: 471, column: 68, scope: !2698)
!2710 = !DILocation(line: 473, column: 2, scope: !2698)
!2711 = !DILocation(line: 473, column: 6, scope: !2698)
!2712 = !DILocation(line: 475, column: 8, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 475, column: 6)
!2714 = !DILocation(line: 475, column: 13, scope: !2713)
!2715 = !DILocation(line: 475, column: 22, scope: !2713)
!2716 = !DILocation(line: 475, column: 6, scope: !2698)
!2717 = !DILocation(line: 476, column: 3, scope: !2713)
!2718 = !DILocation(line: 483, column: 8, scope: !2698)
!2719 = !DILocation(line: 483, column: 13, scope: !2698)
!2720 = !DILocation(line: 483, column: 6, scope: !2698)
!2721 = !DILocation(line: 484, column: 2, scope: !2706)
!2722 = !DILocation(line: 484, column: 2, scope: !2698)
!2723 = !DILocation(line: 485, column: 7, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 485, column: 6)
!2725 = !DILocation(line: 485, column: 6, scope: !2698)
!2726 = !DILocation(line: 486, column: 7, scope: !2724)
!2727 = !DILocation(line: 486, column: 3, scope: !2724)
!2728 = !DILocation(line: 487, column: 11, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 487, column: 11)
!2730 = !DILocation(line: 487, column: 15, scope: !2729)
!2731 = !DILocation(line: 487, column: 21, scope: !2729)
!2732 = !DILocation(line: 487, column: 24, scope: !2729)
!2733 = !DILocation(line: 487, column: 29, scope: !2729)
!2734 = !DILocation(line: 487, column: 45, scope: !2729)
!2735 = !DILocation(line: 487, column: 11, scope: !2724)
!2736 = !DILocation(line: 488, column: 7, scope: !2729)
!2737 = !DILocation(line: 488, column: 3, scope: !2729)
!2738 = !DILocation(line: 490, column: 30, scope: !2698)
!2739 = !DILocation(line: 490, column: 35, scope: !2698)
!2740 = !DILocation(line: 490, column: 41, scope: !2698)
!2741 = !DILocation(line: 490, column: 2, scope: !2698)
!2742 = !DILocation(line: 491, column: 35, scope: !2698)
!2743 = !DILocation(line: 491, column: 40, scope: !2698)
!2744 = !DILocation(line: 491, column: 57, scope: !2698)
!2745 = !DILocation(line: 491, column: 22, scope: !2698)
!2746 = !DILocation(line: 491, column: 2, scope: !2698)
!2747 = !DILocation(line: 491, column: 7, scope: !2698)
!2748 = !DILocation(line: 491, column: 20, scope: !2698)
!2749 = !DILocation(line: 492, column: 35, scope: !2698)
!2750 = !DILocation(line: 492, column: 40, scope: !2698)
!2751 = !DILocation(line: 492, column: 57, scope: !2698)
!2752 = !DILocation(line: 492, column: 22, scope: !2698)
!2753 = !DILocation(line: 492, column: 2, scope: !2698)
!2754 = !DILocation(line: 492, column: 7, scope: !2698)
!2755 = !DILocation(line: 492, column: 20, scope: !2698)
!2756 = !DILocation(line: 493, column: 1, scope: !2698)
!2757 = distinct !DISubprogram(name: "__clockevents_update_freq", scope: !3, file: !3, line: 515, type: !2758, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!64, !126, !147}
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "dev", arg: 1, scope: !2757, file: !3, line: 515, type: !126)
!2762 = !DILocalVariable(name: "freq", arg: 2, scope: !2757, file: !3, line: 515, type: !147)
!2763 = !DILocation(line: 515, column: 58, scope: !2757)
!2764 = !DILocation(line: 515, column: 67, scope: !2757)
!2765 = !DILocation(line: 517, column: 21, scope: !2757)
!2766 = !DILocation(line: 517, column: 26, scope: !2757)
!2767 = !DILocation(line: 517, column: 2, scope: !2757)
!2768 = !DILocation(line: 519, column: 31, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 519, column: 6)
!2770 = !DILocation(line: 519, column: 6, scope: !2769)
!2771 = !DILocation(line: 519, column: 6, scope: !2757)
!2772 = !DILocation(line: 520, column: 36, scope: !2769)
!2773 = !DILocation(line: 520, column: 41, scope: !2769)
!2774 = !DILocation(line: 520, column: 46, scope: !2769)
!2775 = !DILocation(line: 520, column: 10, scope: !2769)
!2776 = !DILocation(line: 520, column: 3, scope: !2769)
!2777 = !DILocation(line: 522, column: 32, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 522, column: 6)
!2779 = !DILocation(line: 522, column: 6, scope: !2778)
!2780 = !DILocation(line: 522, column: 6, scope: !2757)
!2781 = !DILocation(line: 523, column: 37, scope: !2778)
!2782 = !DILocation(line: 523, column: 10, scope: !2778)
!2783 = !DILocation(line: 523, column: 3, scope: !2778)
!2784 = !DILocation(line: 525, column: 2, scope: !2757)
!2785 = !DILocation(line: 526, column: 1, scope: !2757)
!2786 = distinct !DISubprogram(name: "clockevent_state_periodic", scope: !6, file: !6, line: 145, type: !2211, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2787)
!2787 = !{!2788}
!2788 = !DILocalVariable(name: "dev", arg: 1, scope: !2786, file: !6, line: 145, type: !126)
!2789 = !DILocation(line: 145, column: 73, scope: !2786)
!2790 = !DILocation(line: 147, column: 9, scope: !2786)
!2791 = !DILocation(line: 147, column: 14, scope: !2786)
!2792 = !DILocation(line: 147, column: 34, scope: !2786)
!2793 = !DILocation(line: 147, column: 2, scope: !2786)
!2794 = distinct !DISubprogram(name: "clockevents_update_freq", scope: !3, file: !3, line: 540, type: !2758, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2804, !2805, !2809}
!2796 = !DILocalVariable(name: "dev", arg: 1, scope: !2794, file: !3, line: 540, type: !126)
!2797 = !DILocalVariable(name: "freq", arg: 2, scope: !2794, file: !3, line: 540, type: !147)
!2798 = !DILocalVariable(name: "flags", scope: !2794, file: !3, line: 542, type: !114)
!2799 = !DILocalVariable(name: "ret", scope: !2794, file: !3, line: 543, type: !64)
!2800 = !DILocalVariable(name: "__dummy", scope: !2801, file: !3, line: 545, type: !114)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 545, column: 2)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 545, column: 2)
!2803 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 545, column: 2)
!2804 = !DILocalVariable(name: "__dummy2", scope: !2801, file: !3, line: 545, type: !114)
!2805 = !DILocalVariable(name: "__dummy", scope: !2806, file: !3, line: 549, type: !114)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 549, column: 2)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 549, column: 2)
!2808 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 549, column: 2)
!2809 = !DILocalVariable(name: "__dummy2", scope: !2806, file: !3, line: 549, type: !114)
!2810 = !DILocation(line: 540, column: 56, scope: !2794)
!2811 = !DILocation(line: 540, column: 65, scope: !2794)
!2812 = !DILocation(line: 542, column: 2, scope: !2794)
!2813 = !DILocation(line: 542, column: 16, scope: !2794)
!2814 = !DILocation(line: 543, column: 2, scope: !2794)
!2815 = !DILocation(line: 543, column: 6, scope: !2794)
!2816 = !DILocation(line: 545, column: 2, scope: !2794)
!2817 = !DILocation(line: 545, column: 2, scope: !2803)
!2818 = !DILocation(line: 545, column: 2, scope: !2801)
!2819 = !DILocation(line: 545, column: 2, scope: !2802)
!2820 = !DILocation(line: 546, column: 35, scope: !2794)
!2821 = !DILocation(line: 546, column: 40, scope: !2794)
!2822 = !DILocation(line: 546, column: 8, scope: !2794)
!2823 = !DILocation(line: 546, column: 6, scope: !2794)
!2824 = !DILocation(line: 547, column: 6, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 547, column: 6)
!2826 = !DILocation(line: 547, column: 10, scope: !2825)
!2827 = !DILocation(line: 547, column: 6, scope: !2794)
!2828 = !DILocation(line: 548, column: 35, scope: !2825)
!2829 = !DILocation(line: 548, column: 40, scope: !2825)
!2830 = !DILocation(line: 548, column: 9, scope: !2825)
!2831 = !DILocation(line: 548, column: 7, scope: !2825)
!2832 = !DILocation(line: 548, column: 3, scope: !2825)
!2833 = !DILocation(line: 549, column: 2, scope: !2794)
!2834 = !DILocation(line: 549, column: 2, scope: !2808)
!2835 = !DILocation(line: 549, column: 2, scope: !2806)
!2836 = !DILocation(line: 549, column: 2, scope: !2807)
!2837 = !DILocation(line: 549, column: 2, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 549, column: 2)
!2839 = !DILocation(line: 550, column: 9, scope: !2794)
!2840 = !DILocation(line: 551, column: 1, scope: !2794)
!2841 = !DILocation(line: 550, column: 2, scope: !2794)
!2842 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2843, file: !2843, line: 101, type: !2844, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2846)
!2843 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!114}
!2846 = !{!2847}
!2847 = !DILocalVariable(name: "flags", scope: !2842, file: !2843, line: 103, type: !114)
!2848 = !DILocation(line: 103, column: 2, scope: !2842)
!2849 = !DILocation(line: 103, column: 16, scope: !2842)
!2850 = !DILocation(line: 103, column: 24, scope: !2842)
!2851 = !DILocation(line: 104, column: 2, scope: !2842)
!2852 = !DILocation(line: 105, column: 9, scope: !2842)
!2853 = !DILocation(line: 106, column: 1, scope: !2842)
!2854 = !DILocation(line: 105, column: 2, scope: !2842)
!2855 = !DISubprogram(name: "tick_broadcast_update_freq", scope: !2104, file: !2104, line: 71, type: !2758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2856 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2843, file: !2843, line: 132, type: !2857, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null, !114}
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "flags", arg: 1, scope: !2856, file: !2843, line: 132, type: !114)
!2861 = !DILocation(line: 132, column: 66, scope: !2856)
!2862 = !DILocation(line: 134, column: 32, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2856, file: !2843, line: 134, column: 6)
!2864 = !DILocation(line: 134, column: 7, scope: !2863)
!2865 = !DILocation(line: 134, column: 6, scope: !2856)
!2866 = !DILocation(line: 135, column: 3, scope: !2863)
!2867 = !DILocation(line: 136, column: 1, scope: !2856)
!2868 = distinct !DISubprogram(name: "clockevents_handle_noop", scope: !3, file: !3, line: 556, type: !131, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2869)
!2869 = !{!2870}
!2870 = !DILocalVariable(name: "dev", arg: 1, scope: !2868, file: !3, line: 556, type: !126)
!2871 = !DILocation(line: 556, column: 57, scope: !2868)
!2872 = !DILocation(line: 558, column: 1, scope: !2868)
!2873 = distinct !DISubprogram(name: "clockevents_exchange_device", scope: !3, file: !3, line: 568, type: !2874, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !126, !126}
!2876 = !{!2877, !2878}
!2877 = !DILocalVariable(name: "old", arg: 1, scope: !2873, file: !3, line: 568, type: !126)
!2878 = !DILocalVariable(name: "new", arg: 2, scope: !2873, file: !3, line: 569, type: !126)
!2879 = !DILocation(line: 568, column: 61, scope: !2873)
!2880 = !DILocation(line: 569, column: 33, scope: !2873)
!2881 = !DILocation(line: 575, column: 6, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 575, column: 6)
!2883 = !DILocation(line: 575, column: 6, scope: !2873)
!2884 = !DILocation(line: 576, column: 14, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 575, column: 11)
!2886 = !DILocation(line: 576, column: 19, scope: !2885)
!2887 = !DILocation(line: 576, column: 3, scope: !2885)
!2888 = !DILocation(line: 577, column: 28, scope: !2885)
!2889 = !DILocation(line: 577, column: 3, scope: !2885)
!2890 = !DILocation(line: 578, column: 14, scope: !2885)
!2891 = !DILocation(line: 578, column: 19, scope: !2885)
!2892 = !DILocation(line: 578, column: 3, scope: !2885)
!2893 = !DILocation(line: 579, column: 2, scope: !2885)
!2894 = !DILocation(line: 581, column: 6, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 581, column: 6)
!2896 = !DILocation(line: 581, column: 6, scope: !2873)
!2897 = !DILocation(line: 582, column: 3, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 581, column: 11)
!2899 = !DILocation(line: 582, column: 3, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 582, column: 3)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 582, column: 3)
!2902 = !DILocation(line: 582, column: 3, scope: !2901)
!2903 = !DILocation(line: 582, column: 3, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 582, column: 3)
!2905 = !DILocation(line: 582, column: 3, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 582, column: 3)
!2907 = !DILocation(line: 582, column: 3, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 582, column: 3)
!2909 = !{i64 2152931187, i64 2152931216, i64 2152931262, i64 2152931320, i64 2152931374, i64 2152931428, i64 2152931483, i64 2152931514}
!2910 = !DILocation(line: 583, column: 24, scope: !2898)
!2911 = !DILocation(line: 583, column: 3, scope: !2898)
!2912 = !DILocation(line: 584, column: 2, scope: !2898)
!2913 = !DILocation(line: 585, column: 1, scope: !2873)
!2914 = !DISubprogram(name: "module_put", scope: !15, file: !15, line: 706, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2915 = distinct !DISubprogram(name: "list_move", scope: !2631, file: !2631, line: 296, type: !2632, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "list", arg: 1, scope: !2915, file: !2631, line: 296, type: !181)
!2918 = !DILocalVariable(name: "head", arg: 2, scope: !2915, file: !2631, line: 296, type: !181)
!2919 = !DILocation(line: 296, column: 48, scope: !2915)
!2920 = !DILocation(line: 296, column: 72, scope: !2915)
!2921 = !DILocation(line: 298, column: 19, scope: !2915)
!2922 = !DILocation(line: 298, column: 2, scope: !2915)
!2923 = !DILocation(line: 299, column: 11, scope: !2915)
!2924 = !DILocation(line: 299, column: 17, scope: !2915)
!2925 = !DILocation(line: 299, column: 2, scope: !2915)
!2926 = !DILocation(line: 300, column: 1, scope: !2915)
!2927 = distinct !DISubprogram(name: "clockevent_state_detached", scope: !6, file: !6, line: 135, type: !2211, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2928)
!2928 = !{!2929}
!2929 = !DILocalVariable(name: "dev", arg: 1, scope: !2927, file: !6, line: 135, type: !126)
!2930 = !DILocation(line: 135, column: 73, scope: !2927)
!2931 = !DILocation(line: 137, column: 9, scope: !2927)
!2932 = !DILocation(line: 137, column: 14, scope: !2927)
!2933 = !DILocation(line: 137, column: 34, scope: !2927)
!2934 = !DILocation(line: 137, column: 2, scope: !2927)
!2935 = distinct !DISubprogram(name: "clockevents_suspend", scope: !3, file: !3, line: 590, type: !1204, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2936)
!2936 = !{!2937, !2938, !2941}
!2937 = !DILocalVariable(name: "dev", scope: !2935, file: !3, line: 592, type: !126)
!2938 = !DILocalVariable(name: "__mptr", scope: !2939, file: !3, line: 594, type: !103)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 594, column: 2)
!2940 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 594, column: 2)
!2941 = !DILocalVariable(name: "__mptr", scope: !2942, file: !3, line: 594, type: !103)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 594, column: 2)
!2943 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 594, column: 2)
!2944 = !DILocation(line: 592, column: 2, scope: !2935)
!2945 = !DILocation(line: 592, column: 29, scope: !2935)
!2946 = !DILocation(line: 594, column: 2, scope: !2939)
!2947 = !DILocation(line: 594, column: 2, scope: !2940)
!2948 = !DILocation(line: 594, column: 2, scope: !2943)
!2949 = !DILocation(line: 595, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 595, column: 7)
!2951 = !DILocation(line: 595, column: 12, scope: !2950)
!2952 = !DILocation(line: 595, column: 20, scope: !2950)
!2953 = !DILocation(line: 595, column: 50, scope: !2950)
!2954 = !DILocation(line: 595, column: 24, scope: !2950)
!2955 = !DILocation(line: 595, column: 7, scope: !2943)
!2956 = !DILocation(line: 596, column: 4, scope: !2950)
!2957 = !DILocation(line: 596, column: 9, scope: !2950)
!2958 = !DILocation(line: 596, column: 17, scope: !2950)
!2959 = !DILocation(line: 595, column: 53, scope: !2950)
!2960 = !DILocation(line: 594, column: 2, scope: !2942)
!2961 = distinct !{!2961, !2947, !2962, !2667, !2440}
!2962 = !DILocation(line: 596, column: 20, scope: !2940)
!2963 = !DILocation(line: 597, column: 1, scope: !2935)
!2964 = distinct !DISubprogram(name: "clockevents_resume", scope: !3, file: !3, line: 602, type: !1204, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2965)
!2965 = !{!2966, !2967, !2970}
!2966 = !DILocalVariable(name: "dev", scope: !2964, file: !3, line: 604, type: !126)
!2967 = !DILocalVariable(name: "__mptr", scope: !2968, file: !3, line: 606, type: !103)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 606, column: 2)
!2969 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 606, column: 2)
!2970 = !DILocalVariable(name: "__mptr", scope: !2971, file: !3, line: 606, type: !103)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 606, column: 2)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 606, column: 2)
!2973 = !DILocation(line: 604, column: 2, scope: !2964)
!2974 = !DILocation(line: 604, column: 29, scope: !2964)
!2975 = !DILocation(line: 606, column: 2, scope: !2968)
!2976 = !DILocation(line: 606, column: 2, scope: !2969)
!2977 = !DILocation(line: 606, column: 2, scope: !2972)
!2978 = !DILocation(line: 607, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 607, column: 7)
!2980 = !DILocation(line: 607, column: 12, scope: !2979)
!2981 = !DILocation(line: 607, column: 19, scope: !2979)
!2982 = !DILocation(line: 607, column: 49, scope: !2979)
!2983 = !DILocation(line: 607, column: 23, scope: !2979)
!2984 = !DILocation(line: 607, column: 7, scope: !2972)
!2985 = !DILocation(line: 608, column: 4, scope: !2979)
!2986 = !DILocation(line: 608, column: 9, scope: !2979)
!2987 = !DILocation(line: 608, column: 16, scope: !2979)
!2988 = !DILocation(line: 607, column: 52, scope: !2979)
!2989 = !DILocation(line: 606, column: 2, scope: !2971)
!2990 = distinct !{!2990, !2976, !2991, !2667, !2440}
!2991 = !DILocation(line: 608, column: 19, scope: !2969)
!2992 = !DILocation(line: 609, column: 1, scope: !2964)
!2993 = distinct !DISubprogram(name: "tick_offline_cpu", scope: !3, file: !3, line: 620, type: !2994, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !7}
!2996 = !{!2997}
!2997 = !DILocalVariable(name: "cpu", arg: 1, scope: !2993, file: !3, line: 620, type: !7)
!2998 = !DILocation(line: 620, column: 36, scope: !2993)
!2999 = !DILocation(line: 622, column: 2, scope: !2993)
!3000 = !DILocation(line: 623, column: 25, scope: !2993)
!3001 = !DILocation(line: 623, column: 2, scope: !2993)
!3002 = !DILocation(line: 624, column: 2, scope: !2993)
!3003 = !DILocation(line: 625, column: 1, scope: !2993)
!3004 = !DISubprogram(name: "_raw_spin_lock", scope: !2626, file: !2626, line: 22, type: !3005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2629}
!3007 = !DISubprogram(name: "tick_broadcast_offline", scope: !2104, file: !2104, line: 141, type: !2994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3008 = !DISubprogram(name: "_raw_spin_unlock", scope: !2626, file: !2626, line: 39, type: !3005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3009 = distinct !DISubprogram(name: "tick_cleanup_dead_cpu", scope: !3, file: !3, line: 632, type: !3010, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !64}
!3012 = !{!3013, !3014, !3015, !3016, !3017, !3020, !3021, !3024, !3026, !3029, !3032, !3034, !3037, !3040}
!3013 = !DILocalVariable(name: "cpu", arg: 1, scope: !3009, file: !3, line: 632, type: !64)
!3014 = !DILocalVariable(name: "dev", scope: !3009, file: !3, line: 634, type: !126)
!3015 = !DILocalVariable(name: "tmp", scope: !3009, file: !3, line: 634, type: !126)
!3016 = !DILocalVariable(name: "flags", scope: !3009, file: !3, line: 635, type: !114)
!3017 = !DILocalVariable(name: "__dummy", scope: !3018, file: !3, line: 637, type: !114)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 637, column: 2)
!3019 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 637, column: 2)
!3020 = !DILocalVariable(name: "__dummy2", scope: !3018, file: !3, line: 637, type: !114)
!3021 = !DILocalVariable(name: "__mptr", scope: !3022, file: !3, line: 644, type: !103)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 644, column: 2)
!3023 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 644, column: 2)
!3024 = !DILocalVariable(name: "__mptr", scope: !3025, file: !3, line: 644, type: !103)
!3025 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 644, column: 2)
!3026 = !DILocalVariable(name: "__mptr", scope: !3027, file: !3, line: 644, type: !103)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 644, column: 2)
!3028 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 644, column: 2)
!3029 = !DILocalVariable(name: "__mptr", scope: !3030, file: !3, line: 649, type: !103)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 649, column: 2)
!3031 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 649, column: 2)
!3032 = !DILocalVariable(name: "__mptr", scope: !3033, file: !3, line: 649, type: !103)
!3033 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 649, column: 2)
!3034 = !DILocalVariable(name: "__mptr", scope: !3035, file: !3, line: 649, type: !103)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 649, column: 2)
!3036 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 649, column: 2)
!3037 = !DILocalVariable(name: "__dummy", scope: !3038, file: !3, line: 657, type: !114)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 657, column: 2)
!3039 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 657, column: 2)
!3040 = !DILocalVariable(name: "__dummy2", scope: !3038, file: !3, line: 657, type: !114)
!3041 = !DILocation(line: 632, column: 32, scope: !3009)
!3042 = !DILocation(line: 634, column: 2, scope: !3009)
!3043 = !DILocation(line: 634, column: 29, scope: !3009)
!3044 = !DILocation(line: 634, column: 35, scope: !3009)
!3045 = !DILocation(line: 635, column: 2, scope: !3009)
!3046 = !DILocation(line: 635, column: 16, scope: !3009)
!3047 = !DILocation(line: 637, column: 2, scope: !3009)
!3048 = !DILocation(line: 637, column: 2, scope: !3018)
!3049 = !DILocation(line: 637, column: 2, scope: !3019)
!3050 = !DILocation(line: 639, column: 16, scope: !3009)
!3051 = !DILocation(line: 639, column: 2, scope: !3009)
!3052 = !DILocation(line: 644, column: 2, scope: !3022)
!3053 = !DILocation(line: 644, column: 2, scope: !3023)
!3054 = !DILocation(line: 644, column: 2, scope: !3025)
!3055 = !DILocation(line: 644, column: 2, scope: !3028)
!3056 = !DILocation(line: 645, column: 13, scope: !3028)
!3057 = !DILocation(line: 645, column: 18, scope: !3028)
!3058 = !DILocation(line: 645, column: 3, scope: !3028)
!3059 = !DILocation(line: 644, column: 2, scope: !3027)
!3060 = distinct !{!3060, !3053, !3061, !2667, !2440}
!3061 = !DILocation(line: 645, column: 22, scope: !3023)
!3062 = !DILocation(line: 649, column: 2, scope: !3030)
!3063 = !DILocation(line: 649, column: 2, scope: !3031)
!3064 = !DILocation(line: 649, column: 2, scope: !3033)
!3065 = !DILocation(line: 649, column: 2, scope: !3036)
!3066 = !DILocation(line: 650, column: 24, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 650, column: 7)
!3068 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 649, column: 64)
!3069 = !DILocation(line: 650, column: 29, scope: !3067)
!3070 = !DILocation(line: 650, column: 34, scope: !3067)
!3071 = !DILocation(line: 650, column: 7, scope: !3067)
!3072 = !DILocation(line: 650, column: 43, scope: !3067)
!3073 = !DILocation(line: 651, column: 22, scope: !3067)
!3074 = !DILocation(line: 651, column: 27, scope: !3067)
!3075 = !DILocation(line: 651, column: 7, scope: !3067)
!3076 = !DILocation(line: 651, column: 36, scope: !3067)
!3077 = !DILocation(line: 651, column: 41, scope: !3067)
!3078 = !DILocation(line: 652, column: 33, scope: !3067)
!3079 = !DILocation(line: 652, column: 8, scope: !3067)
!3080 = !DILocation(line: 650, column: 7, scope: !3068)
!3081 = !DILocation(line: 653, column: 4, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 652, column: 39)
!3083 = !DILocation(line: 653, column: 4, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 653, column: 4)
!3085 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 653, column: 4)
!3086 = !DILocation(line: 653, column: 4, scope: !3085)
!3087 = !DILocation(line: 653, column: 4, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 653, column: 4)
!3089 = !DILocation(line: 653, column: 4, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 653, column: 4)
!3091 = !DILocation(line: 653, column: 4, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 653, column: 4)
!3093 = !{i64 2152948357, i64 2152948386, i64 2152948432, i64 2152948490, i64 2152948544, i64 2152948598, i64 2152948653, i64 2152948684}
!3094 = !DILocation(line: 654, column: 14, scope: !3082)
!3095 = !DILocation(line: 654, column: 19, scope: !3082)
!3096 = !DILocation(line: 654, column: 4, scope: !3082)
!3097 = !DILocation(line: 655, column: 3, scope: !3082)
!3098 = !DILocation(line: 656, column: 2, scope: !3068)
!3099 = !DILocation(line: 649, column: 2, scope: !3035)
!3100 = distinct !{!3100, !3063, !3101, !2667, !2440}
!3101 = !DILocation(line: 656, column: 2, scope: !3031)
!3102 = !DILocation(line: 657, column: 2, scope: !3009)
!3103 = !DILocation(line: 657, column: 2, scope: !3038)
!3104 = !DILocation(line: 657, column: 2, scope: !3039)
!3105 = !DILocation(line: 658, column: 1, scope: !3009)
!3106 = !DISubprogram(name: "tick_shutdown", scope: !2104, file: !2104, line: 23, type: !2994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3107 = distinct !DISubprogram(name: "list_del", scope: !2631, file: !2631, line: 227, type: !3108, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !181}
!3110 = !{!3111}
!3111 = !DILocalVariable(name: "entry", arg: 1, scope: !3107, file: !2631, line: 227, type: !181)
!3112 = !DILocation(line: 227, column: 47, scope: !3107)
!3113 = !DILocation(line: 229, column: 19, scope: !3107)
!3114 = !DILocation(line: 229, column: 2, scope: !3107)
!3115 = !DILocation(line: 230, column: 2, scope: !3107)
!3116 = !DILocation(line: 230, column: 9, scope: !3107)
!3117 = !DILocation(line: 230, column: 14, scope: !3107)
!3118 = !DILocation(line: 231, column: 2, scope: !3107)
!3119 = !DILocation(line: 231, column: 9, scope: !3107)
!3120 = !DILocation(line: 231, column: 14, scope: !3107)
!3121 = !DILocation(line: 232, column: 1, scope: !3107)
!3122 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !118, file: !118, line: 502, type: !3123, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!627, !64, !115}
!3125 = !{!3126, !3127}
!3126 = !DILocalVariable(name: "cpu", arg: 1, scope: !3122, file: !118, line: 502, type: !64)
!3127 = !DILocalVariable(name: "cpumask", arg: 2, scope: !3122, file: !118, line: 502, type: !115)
!3128 = !DILocation(line: 502, column: 50, scope: !3122)
!3129 = !DILocation(line: 502, column: 77, scope: !3122)
!3130 = !DILocation(line: 504, column: 9, scope: !3122)
!3131 = !DILocation(line: 504, column: 2, scope: !3122)
!3132 = !DISubprogram(name: "tick_is_broadcast_device", scope: !2104, file: !2104, line: 65, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3133 = distinct !DISubprogram(name: "__initstub__kmod_clockevents__214_777_clockevents_init_sysfs6", scope: !3, file: !3, line: 777, type: !966, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3134 = !DILocation(line: 777, column: 1, scope: !3133)
!3135 = distinct !DISubprogram(name: "clockevents_init_sysfs", scope: !3, file: !3, line: 769, type: !966, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3136)
!3136 = !{!3137}
!3137 = !DILocalVariable(name: "err", scope: !3135, file: !3, line: 771, type: !64)
!3138 = !DILocation(line: 771, column: 2, scope: !3135)
!3139 = !DILocation(line: 771, column: 6, scope: !3135)
!3140 = !DILocation(line: 771, column: 12, scope: !3135)
!3141 = !DILocation(line: 773, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 773, column: 6)
!3143 = !DILocation(line: 773, column: 6, scope: !3135)
!3144 = !DILocation(line: 774, column: 9, scope: !3142)
!3145 = !DILocation(line: 774, column: 7, scope: !3142)
!3146 = !DILocation(line: 774, column: 3, scope: !3142)
!3147 = !DILocation(line: 775, column: 9, scope: !3135)
!3148 = !DILocation(line: 776, column: 1, scope: !3135)
!3149 = !DILocation(line: 775, column: 2, scope: !3135)
!3150 = distinct !DISubprogram(name: "clockevents_increase_min_delta", scope: !3, file: !3, line: 202, type: !155, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3151)
!3151 = !{!3152}
!3152 = !DILocalVariable(name: "dev", arg: 1, scope: !3150, file: !3, line: 202, type: !126)
!3153 = !DILocation(line: 202, column: 70, scope: !3150)
!3154 = !DILocation(line: 205, column: 6, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 205, column: 6)
!3156 = !DILocation(line: 205, column: 11, scope: !3155)
!3157 = !DILocation(line: 205, column: 24, scope: !3155)
!3158 = !DILocation(line: 205, column: 6, scope: !3150)
!3159 = !DILocation(line: 206, column: 3, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 206, column: 3)
!3161 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 205, column: 44)
!3162 = !DILocation(line: 206, column: 3, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 206, column: 3)
!3164 = !DILocation(line: 208, column: 3, scope: !3161)
!3165 = !DILocation(line: 208, column: 8, scope: !3161)
!3166 = !DILocation(line: 208, column: 19, scope: !3161)
!3167 = !DILocation(line: 209, column: 3, scope: !3161)
!3168 = !DILocation(line: 212, column: 6, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 212, column: 6)
!3170 = !DILocation(line: 212, column: 11, scope: !3169)
!3171 = !DILocation(line: 212, column: 24, scope: !3169)
!3172 = !DILocation(line: 212, column: 6, scope: !3150)
!3173 = !DILocation(line: 213, column: 3, scope: !3169)
!3174 = !DILocation(line: 213, column: 8, scope: !3169)
!3175 = !DILocation(line: 213, column: 21, scope: !3169)
!3176 = !DILocation(line: 215, column: 24, scope: !3169)
!3177 = !DILocation(line: 215, column: 29, scope: !3169)
!3178 = !DILocation(line: 215, column: 42, scope: !3169)
!3179 = !DILocation(line: 215, column: 3, scope: !3169)
!3180 = !DILocation(line: 215, column: 8, scope: !3169)
!3181 = !DILocation(line: 215, column: 21, scope: !3169)
!3182 = !DILocation(line: 217, column: 6, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 217, column: 6)
!3184 = !DILocation(line: 217, column: 11, scope: !3183)
!3185 = !DILocation(line: 217, column: 24, scope: !3183)
!3186 = !DILocation(line: 217, column: 6, scope: !3150)
!3187 = !DILocation(line: 218, column: 3, scope: !3183)
!3188 = !DILocation(line: 218, column: 8, scope: !3183)
!3189 = !DILocation(line: 218, column: 21, scope: !3183)
!3190 = !DILocation(line: 220, column: 2, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 220, column: 2)
!3192 = !DILocation(line: 220, column: 2, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 220, column: 2)
!3194 = !DILocation(line: 224, column: 2, scope: !3150)
!3195 = !DILocation(line: 225, column: 1, scope: !3150)
!3196 = !DISubprogram(name: "_printk_deferred", scope: !3197, file: !3197, line: 158, type: !3198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3197 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!64, !170, null}
!3200 = !DISubprogram(name: "smp_call_function_single", scope: !3201, file: !3201, line: 50, type: !3202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3201 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!64, !64, !3204, !103, !64}
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !3201, line: 17, baseType: !690)
!3205 = distinct !DISubprogram(name: "__clockevents_unbind", scope: !3, file: !3, line: 400, type: !691, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3206)
!3206 = !{!3207, !3208, !3210, !3211, !3214, !3216}
!3207 = !DILocalVariable(name: "arg", arg: 1, scope: !3205, file: !3, line: 400, type: !103)
!3208 = !DILocalVariable(name: "cu", scope: !3205, file: !3, line: 402, type: !3209)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!3210 = !DILocalVariable(name: "res", scope: !3205, file: !3, line: 403, type: !64)
!3211 = !DILocalVariable(name: "pscr_ret__", scope: !3212, file: !3, line: 406, type: !64)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 406, column: 41)
!3213 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 406, column: 41)
!3214 = !DILocalVariable(name: "__vpp_verify", scope: !3215, file: !3, line: 406, type: !549)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 406, column: 41)
!3216 = !DILocalVariable(name: "pfo_val__", scope: !3217, file: !3, line: 406, type: !147)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 406, column: 41)
!3218 = !DILocation(line: 400, column: 40, scope: !3205)
!3219 = !DILocation(line: 402, column: 2, scope: !3205)
!3220 = !DILocation(line: 402, column: 20, scope: !3205)
!3221 = !DILocation(line: 402, column: 25, scope: !3205)
!3222 = !DILocation(line: 403, column: 2, scope: !3205)
!3223 = !DILocation(line: 403, column: 6, scope: !3205)
!3224 = !DILocation(line: 405, column: 2, scope: !3205)
!3225 = !DILocation(line: 406, column: 33, scope: !3205)
!3226 = !DILocation(line: 406, column: 37, scope: !3205)
!3227 = !DILocation(line: 406, column: 41, scope: !3213)
!3228 = !DILocation(line: 406, column: 41, scope: !3212)
!3229 = !DILocation(line: 406, column: 41, scope: !3215)
!3230 = !DILocation(line: 406, column: 41, scope: !3217)
!3231 = !{i64 2152909864}
!3232 = !DILocation(line: 406, column: 8, scope: !3205)
!3233 = !DILocation(line: 406, column: 6, scope: !3205)
!3234 = !DILocation(line: 407, column: 6, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 407, column: 6)
!3236 = !DILocation(line: 407, column: 10, scope: !3235)
!3237 = !DILocation(line: 407, column: 6, scope: !3205)
!3238 = !DILocation(line: 408, column: 29, scope: !3235)
!3239 = !DILocation(line: 408, column: 33, scope: !3235)
!3240 = !DILocation(line: 408, column: 9, scope: !3235)
!3241 = !DILocation(line: 408, column: 7, scope: !3235)
!3242 = !DILocation(line: 408, column: 3, scope: !3235)
!3243 = !DILocation(line: 409, column: 12, scope: !3205)
!3244 = !DILocation(line: 409, column: 2, scope: !3205)
!3245 = !DILocation(line: 409, column: 6, scope: !3205)
!3246 = !DILocation(line: 409, column: 10, scope: !3205)
!3247 = !DILocation(line: 410, column: 2, scope: !3205)
!3248 = !DILocation(line: 411, column: 1, scope: !3205)
!3249 = distinct !DISubprogram(name: "__clockevents_try_unbind", scope: !3, file: !3, line: 386, type: !2443, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3250)
!3250 = !{!3251, !3252, !3253, !3256}
!3251 = !DILocalVariable(name: "ced", arg: 1, scope: !3249, file: !3, line: 386, type: !126)
!3252 = !DILocalVariable(name: "cpu", arg: 2, scope: !3249, file: !3, line: 386, type: !64)
!3253 = !DILocalVariable(name: "__vpp_verify", scope: !3254, file: !3, line: 394, type: !549)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 394, column: 16)
!3255 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 394, column: 16)
!3256 = !DILocalVariable(name: "__ptr", scope: !3257, file: !3, line: 394, type: !114)
!3257 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 394, column: 16)
!3258 = !DILocation(line: 386, column: 64, scope: !3249)
!3259 = !DILocation(line: 386, column: 73, scope: !3249)
!3260 = !DILocation(line: 389, column: 32, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 389, column: 6)
!3262 = !DILocation(line: 389, column: 6, scope: !3261)
!3263 = !DILocation(line: 389, column: 6, scope: !3249)
!3264 = !DILocation(line: 390, column: 18, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 389, column: 38)
!3266 = !DILocation(line: 390, column: 23, scope: !3265)
!3267 = !DILocation(line: 390, column: 3, scope: !3265)
!3268 = !DILocation(line: 391, column: 3, scope: !3265)
!3269 = !DILocation(line: 394, column: 9, scope: !3249)
!3270 = !DILocation(line: 394, column: 16, scope: !3255)
!3271 = !DILocation(line: 394, column: 16, scope: !3254)
!3272 = !DILocation(line: 394, column: 16, scope: !3257)
!3273 = !DILocation(line: 394, column: 46, scope: !3249)
!3274 = !DILocation(line: 394, column: 13, scope: !3249)
!3275 = !DILocation(line: 394, column: 2, scope: !3249)
!3276 = !DILocation(line: 395, column: 1, scope: !3249)
!3277 = distinct !DISubprogram(name: "clockevents_replace", scope: !3, file: !3, line: 358, type: !155, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3285}
!3279 = !DILocalVariable(name: "ced", arg: 1, scope: !3277, file: !3, line: 358, type: !126)
!3280 = !DILocalVariable(name: "dev", scope: !3277, file: !3, line: 360, type: !126)
!3281 = !DILocalVariable(name: "newdev", scope: !3277, file: !3, line: 360, type: !126)
!3282 = !DILocalVariable(name: "__mptr", scope: !3283, file: !3, line: 362, type: !103)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 362, column: 2)
!3284 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 362, column: 2)
!3285 = !DILocalVariable(name: "__mptr", scope: !3286, file: !3, line: 362, type: !103)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 362, column: 2)
!3287 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 362, column: 2)
!3288 = !DILocation(line: 358, column: 59, scope: !3277)
!3289 = !DILocation(line: 360, column: 2, scope: !3277)
!3290 = !DILocation(line: 360, column: 29, scope: !3277)
!3291 = !DILocation(line: 360, column: 35, scope: !3277)
!3292 = !DILocation(line: 362, column: 2, scope: !3283)
!3293 = !DILocation(line: 362, column: 2, scope: !3284)
!3294 = !DILocation(line: 362, column: 2, scope: !3287)
!3295 = !DILocation(line: 363, column: 7, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 363, column: 7)
!3297 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 362, column: 54)
!3298 = !DILocation(line: 363, column: 14, scope: !3296)
!3299 = !DILocation(line: 363, column: 11, scope: !3296)
!3300 = !DILocation(line: 363, column: 18, scope: !3296)
!3301 = !DILocation(line: 363, column: 48, scope: !3296)
!3302 = !DILocation(line: 363, column: 22, scope: !3296)
!3303 = !DILocation(line: 363, column: 7, scope: !3297)
!3304 = !DILocation(line: 364, column: 4, scope: !3296)
!3305 = !DILocation(line: 366, column: 31, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 366, column: 7)
!3307 = !DILocation(line: 366, column: 39, scope: !3306)
!3308 = !DILocation(line: 366, column: 8, scope: !3306)
!3309 = !DILocation(line: 366, column: 7, scope: !3297)
!3310 = !DILocation(line: 367, column: 4, scope: !3306)
!3311 = !DILocation(line: 369, column: 23, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 369, column: 7)
!3313 = !DILocation(line: 369, column: 28, scope: !3312)
!3314 = !DILocation(line: 369, column: 8, scope: !3312)
!3315 = !DILocation(line: 369, column: 7, scope: !3297)
!3316 = !DILocation(line: 370, column: 4, scope: !3312)
!3317 = !DILocation(line: 372, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 372, column: 7)
!3319 = !DILocation(line: 372, column: 7, scope: !3297)
!3320 = !DILocation(line: 373, column: 15, scope: !3318)
!3321 = !DILocation(line: 373, column: 23, scope: !3318)
!3322 = !DILocation(line: 373, column: 4, scope: !3318)
!3323 = !DILocation(line: 374, column: 12, scope: !3297)
!3324 = !DILocation(line: 374, column: 10, scope: !3297)
!3325 = !DILocation(line: 375, column: 2, scope: !3297)
!3326 = !DILocation(line: 362, column: 2, scope: !3286)
!3327 = distinct !{!3327, !3293, !3328, !2667, !2440}
!3328 = !DILocation(line: 375, column: 2, scope: !3284)
!3329 = !DILocation(line: 376, column: 6, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 376, column: 6)
!3331 = !DILocation(line: 376, column: 6, scope: !3277)
!3332 = !DILocation(line: 377, column: 28, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 376, column: 14)
!3334 = !DILocation(line: 377, column: 3, scope: !3333)
!3335 = !DILocation(line: 378, column: 18, scope: !3333)
!3336 = !DILocation(line: 378, column: 23, scope: !3333)
!3337 = !DILocation(line: 378, column: 3, scope: !3333)
!3338 = !DILocation(line: 379, column: 2, scope: !3333)
!3339 = !DILocation(line: 380, column: 9, scope: !3277)
!3340 = !DILocation(line: 381, column: 1, scope: !3277)
!3341 = !DILocation(line: 380, column: 2, scope: !3277)
!3342 = distinct !DISubprogram(name: "list_del_init", scope: !2631, file: !2631, line: 285, type: !3108, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3343)
!3343 = !{!3344}
!3344 = !DILocalVariable(name: "entry", arg: 1, scope: !3342, file: !2631, line: 285, type: !181)
!3345 = !DILocation(line: 285, column: 52, scope: !3342)
!3346 = !DILocation(line: 287, column: 19, scope: !3342)
!3347 = !DILocation(line: 287, column: 2, scope: !3342)
!3348 = !DILocation(line: 288, column: 17, scope: !3342)
!3349 = !DILocation(line: 288, column: 2, scope: !3342)
!3350 = !DILocation(line: 289, column: 1, scope: !3342)
!3351 = distinct !DISubprogram(name: "__list_del_entry", scope: !2631, file: !2631, line: 213, type: !3108, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3352)
!3352 = !{!3353}
!3353 = !DILocalVariable(name: "entry", arg: 1, scope: !3351, file: !2631, line: 213, type: !181)
!3354 = !DILocation(line: 213, column: 55, scope: !3351)
!3355 = !DILocation(line: 215, column: 30, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3351, file: !2631, line: 215, column: 6)
!3357 = !DILocation(line: 215, column: 7, scope: !3356)
!3358 = !DILocation(line: 215, column: 6, scope: !3351)
!3359 = !DILocation(line: 216, column: 3, scope: !3356)
!3360 = !DILocation(line: 218, column: 13, scope: !3351)
!3361 = !DILocation(line: 218, column: 20, scope: !3351)
!3362 = !DILocation(line: 218, column: 26, scope: !3351)
!3363 = !DILocation(line: 218, column: 33, scope: !3351)
!3364 = !DILocation(line: 218, column: 2, scope: !3351)
!3365 = !DILocation(line: 219, column: 1, scope: !3351)
!3366 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2631, file: !2631, line: 35, type: !3108, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3367)
!3367 = !{!3368}
!3368 = !DILocalVariable(name: "list", arg: 1, scope: !3366, file: !2631, line: 35, type: !181)
!3369 = !DILocation(line: 35, column: 53, scope: !3366)
!3370 = !DILocation(line: 37, column: 2, scope: !3366)
!3371 = !DILocation(line: 37, column: 2, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3366, file: !2631, line: 37, column: 2)
!3373 = !DILocation(line: 37, column: 2, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3372, file: !2631, line: 37, column: 2)
!3375 = !DILocation(line: 37, column: 2, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3372, file: !2631, line: 37, column: 2)
!3377 = !DILocation(line: 38, column: 2, scope: !3366)
!3378 = !DILocation(line: 38, column: 2, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3366, file: !2631, line: 38, column: 2)
!3380 = !DILocation(line: 38, column: 2, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3379, file: !2631, line: 38, column: 2)
!3382 = !DILocation(line: 38, column: 2, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3379, file: !2631, line: 38, column: 2)
!3384 = !DILocation(line: 39, column: 1, scope: !3366)
!3385 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2631, file: !2631, line: 134, type: !3386, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!627, !181}
!3388 = !{!3389}
!3389 = !DILocalVariable(name: "entry", arg: 1, scope: !3385, file: !2631, line: 134, type: !181)
!3390 = !DILocation(line: 134, column: 61, scope: !3385)
!3391 = !DILocation(line: 136, column: 2, scope: !3385)
!3392 = distinct !DISubprogram(name: "__list_del", scope: !2631, file: !2631, line: 193, type: !2632, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3393)
!3393 = !{!3394, !3395}
!3394 = !DILocalVariable(name: "prev", arg: 1, scope: !3392, file: !2631, line: 193, type: !181)
!3395 = !DILocalVariable(name: "next", arg: 2, scope: !3392, file: !2631, line: 193, type: !181)
!3396 = !DILocation(line: 193, column: 50, scope: !3392)
!3397 = !DILocation(line: 193, column: 75, scope: !3392)
!3398 = !DILocation(line: 195, column: 15, scope: !3392)
!3399 = !DILocation(line: 195, column: 2, scope: !3392)
!3400 = !DILocation(line: 195, column: 8, scope: !3392)
!3401 = !DILocation(line: 195, column: 13, scope: !3392)
!3402 = !DILocation(line: 196, column: 2, scope: !3392)
!3403 = !DILocation(line: 196, column: 2, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3392, file: !2631, line: 196, column: 2)
!3405 = !DILocation(line: 196, column: 2, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3404, file: !2631, line: 196, column: 2)
!3407 = !DILocation(line: 196, column: 2, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3404, file: !2631, line: 196, column: 2)
!3409 = !DILocation(line: 197, column: 1, scope: !3392)
!3410 = !DISubprogram(name: "tick_check_replacement", scope: !2104, file: !2104, line: 26, type: !3411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!627, !126, !126}
!3413 = !DISubprogram(name: "try_module_get", scope: !15, file: !15, line: 696, type: !3414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!627, !184}
!3416 = !DISubprogram(name: "tick_install_replacement", scope: !2104, file: !2104, line: 28, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3417 = distinct !DISubprogram(name: "bitmap_weight", scope: !3418, file: !3418, line: 453, type: !3419, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3421)
!3418 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!7, !2602, !7}
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "src", arg: 1, scope: !3417, file: !3418, line: 453, type: !2602)
!3423 = !DILocalVariable(name: "nbits", arg: 2, scope: !3417, file: !3418, line: 453, type: !7)
!3424 = !DILocation(line: 453, column: 49, scope: !3417)
!3425 = !DILocation(line: 453, column: 67, scope: !3417)
!3426 = !DILocation(line: 455, column: 6, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3417, file: !3418, line: 455, column: 6)
!3428 = !DILocation(line: 455, column: 6, scope: !3417)
!3429 = !DILocation(line: 456, column: 24, scope: !3427)
!3430 = !DILocation(line: 456, column: 23, scope: !3427)
!3431 = !DILocation(line: 456, column: 30, scope: !3427)
!3432 = !DILocation(line: 456, column: 28, scope: !3427)
!3433 = !DILocation(line: 456, column: 10, scope: !3427)
!3434 = !DILocation(line: 456, column: 3, scope: !3427)
!3435 = !DILocation(line: 457, column: 25, scope: !3417)
!3436 = !DILocation(line: 457, column: 30, scope: !3417)
!3437 = !DILocation(line: 457, column: 9, scope: !3417)
!3438 = !DILocation(line: 457, column: 2, scope: !3417)
!3439 = !DILocation(line: 458, column: 1, scope: !3417)
!3440 = distinct !DISubprogram(name: "hweight_long", scope: !3441, file: !3441, line: 95, type: !3442, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3444)
!3441 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!114, !114}
!3444 = !{!3445}
!3445 = !DILocalVariable(name: "w", arg: 1, scope: !3440, file: !3441, line: 95, type: !114)
!3446 = !DILocation(line: 95, column: 65, scope: !3440)
!3447 = !DILocation(line: 97, column: 41, scope: !3440)
!3448 = !DILocation(line: 97, column: 2, scope: !3440)
!3449 = !DISubprogram(name: "__bitmap_weight", scope: !3418, file: !3418, line: 171, type: !3419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3450 = distinct !DISubprogram(name: "__arch_hweight64", scope: !3451, file: !3451, line: 43, type: !3452, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3454)
!3451 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!114, !110}
!3454 = !{!3455, !3456}
!3455 = !DILocalVariable(name: "w", arg: 1, scope: !3450, file: !3451, line: 43, type: !110)
!3456 = !DILocalVariable(name: "res", scope: !3450, file: !3451, line: 45, type: !114)
!3457 = !DILocation(line: 43, column: 61, scope: !3450)
!3458 = !DILocation(line: 45, column: 2, scope: !3450)
!3459 = !DILocation(line: 45, column: 16, scope: !3450)
!3460 = !DILocation(line: 49, column: 15, scope: !3450)
!3461 = !DILocation(line: 47, column: 2, scope: !3450)
!3462 = !{i64 2148244090, i64 2148244118, i64 2148244124, i64 2148244140, i64 2148244156, i64 2148244183, i64 2148244516, i64 2148243816, i64 2148244522, i64 2148244570, i64 2148244634, i64 2148244698, i64 2148244755, i64 2148243897, i64 2148243922, i64 2148244962, i64 2148245092, i64 2148245023, i64 2148245106, i64 2148244014}
!3463 = !DILocation(line: 51, column: 9, scope: !3450)
!3464 = !DILocation(line: 52, column: 1, scope: !3450)
!3465 = !DILocation(line: 51, column: 2, scope: !3450)
!3466 = distinct !DISubprogram(name: "__list_add", scope: !2631, file: !2631, line: 146, type: !3467, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !181, !181, !181}
!3469 = !{!3470, !3471, !3472}
!3470 = !DILocalVariable(name: "new", arg: 1, scope: !3466, file: !2631, line: 146, type: !181)
!3471 = !DILocalVariable(name: "prev", arg: 2, scope: !3466, file: !2631, line: 147, type: !181)
!3472 = !DILocalVariable(name: "next", arg: 3, scope: !3466, file: !2631, line: 148, type: !181)
!3473 = !DILocation(line: 146, column: 49, scope: !3466)
!3474 = !DILocation(line: 147, column: 28, scope: !3466)
!3475 = !DILocation(line: 148, column: 28, scope: !3466)
!3476 = !DILocation(line: 150, column: 24, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3466, file: !2631, line: 150, column: 6)
!3478 = !DILocation(line: 150, column: 29, scope: !3477)
!3479 = !DILocation(line: 150, column: 35, scope: !3477)
!3480 = !DILocation(line: 150, column: 7, scope: !3477)
!3481 = !DILocation(line: 150, column: 6, scope: !3466)
!3482 = !DILocation(line: 151, column: 3, scope: !3477)
!3483 = !DILocation(line: 153, column: 15, scope: !3466)
!3484 = !DILocation(line: 153, column: 2, scope: !3466)
!3485 = !DILocation(line: 153, column: 8, scope: !3466)
!3486 = !DILocation(line: 153, column: 13, scope: !3466)
!3487 = !DILocation(line: 154, column: 14, scope: !3466)
!3488 = !DILocation(line: 154, column: 2, scope: !3466)
!3489 = !DILocation(line: 154, column: 7, scope: !3466)
!3490 = !DILocation(line: 154, column: 12, scope: !3466)
!3491 = !DILocation(line: 155, column: 14, scope: !3466)
!3492 = !DILocation(line: 155, column: 2, scope: !3466)
!3493 = !DILocation(line: 155, column: 7, scope: !3466)
!3494 = !DILocation(line: 155, column: 12, scope: !3466)
!3495 = !DILocation(line: 156, column: 2, scope: !3466)
!3496 = !DILocation(line: 156, column: 2, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3466, file: !2631, line: 156, column: 2)
!3498 = !DILocation(line: 156, column: 2, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3497, file: !2631, line: 156, column: 2)
!3500 = !DILocation(line: 156, column: 2, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3497, file: !2631, line: 156, column: 2)
!3502 = !DILocation(line: 157, column: 1, scope: !3466)
!3503 = distinct !DISubprogram(name: "__list_add_valid", scope: !2631, file: !2631, line: 128, type: !3504, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!627, !181, !181, !181}
!3506 = !{!3507, !3508, !3509}
!3507 = !DILocalVariable(name: "new", arg: 1, scope: !3503, file: !2631, line: 128, type: !181)
!3508 = !DILocalVariable(name: "prev", arg: 2, scope: !3503, file: !2631, line: 129, type: !181)
!3509 = !DILocalVariable(name: "next", arg: 3, scope: !3503, file: !2631, line: 130, type: !181)
!3510 = !DILocation(line: 128, column: 55, scope: !3503)
!3511 = !DILocation(line: 129, column: 23, scope: !3503)
!3512 = !DILocation(line: 130, column: 23, scope: !3503)
!3513 = !DILocation(line: 132, column: 2, scope: !3503)
!3514 = distinct !DISubprogram(name: "list_empty", scope: !2631, file: !2631, line: 371, type: !3515, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3519)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!64, !3517}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!3519 = !{!3520}
!3520 = !DILocalVariable(name: "head", arg: 1, scope: !3514, file: !2631, line: 371, type: !3517)
!3521 = !DILocation(line: 371, column: 54, scope: !3514)
!3522 = !DILocation(line: 373, column: 9, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3514, file: !2631, line: 373, column: 9)
!3524 = !DILocation(line: 373, column: 9, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3523, file: !2631, line: 373, column: 9)
!3526 = !DILocation(line: 373, column: 34, scope: !3514)
!3527 = !DILocation(line: 373, column: 31, scope: !3514)
!3528 = !DILocation(line: 373, column: 2, scope: !3514)
!3529 = distinct !DISubprogram(name: "clockevents_calc_mult_shift", scope: !6, file: !6, line: 193, type: !3530, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !126, !147, !147}
!3532 = !{!3533, !3534, !3535}
!3533 = !DILocalVariable(name: "ce", arg: 1, scope: !3529, file: !6, line: 193, type: !126)
!3534 = !DILocalVariable(name: "freq", arg: 2, scope: !3529, file: !6, line: 193, type: !147)
!3535 = !DILocalVariable(name: "maxsec", arg: 3, scope: !3529, file: !6, line: 193, type: !147)
!3536 = !DILocation(line: 193, column: 56, scope: !3529)
!3537 = !DILocation(line: 193, column: 64, scope: !3529)
!3538 = !DILocation(line: 193, column: 74, scope: !3529)
!3539 = !DILocation(line: 195, column: 33, scope: !3529)
!3540 = !DILocation(line: 195, column: 37, scope: !3529)
!3541 = !DILocation(line: 195, column: 44, scope: !3529)
!3542 = !DILocation(line: 195, column: 48, scope: !3529)
!3543 = !DILocation(line: 195, column: 69, scope: !3529)
!3544 = !DILocation(line: 195, column: 75, scope: !3529)
!3545 = !DILocation(line: 195, column: 9, scope: !3529)
!3546 = !DILocation(line: 195, column: 2, scope: !3529)
!3547 = !DISubprogram(name: "clocks_calc_mult_shift", scope: !3548, file: !3548, line: 224, type: !3549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3548 = !DIFile(filename: "./include/linux/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f664f6d0ed93221709a7301012f8ae1")
!3549 = !DISubroutineType(types: !3550)
!3550 = !{null, !3551, !3551, !147, !147, !147}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!3552 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2843, file: !2843, line: 65, type: !2844, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3553 = !DILocation(line: 67, column: 9, scope: !3552)
!3554 = !DILocation(line: 67, column: 2, scope: !3552)
!3555 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2843, file: !2843, line: 70, type: !1204, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3556 = !DILocation(line: 72, column: 2, scope: !3555)
!3557 = !DILocation(line: 73, column: 1, scope: !3555)
!3558 = distinct !DISubprogram(name: "native_save_fl", scope: !2843, file: !2843, line: 17, type: !2844, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3559)
!3559 = !{!3560}
!3560 = !DILocalVariable(name: "flags", scope: !3558, file: !2843, line: 19, type: !114)
!3561 = !DILocation(line: 19, column: 2, scope: !3558)
!3562 = !DILocation(line: 19, column: 16, scope: !3558)
!3563 = !DILocation(line: 26, column: 2, scope: !3558)
!3564 = !{i64 1775109, i64 1775130}
!3565 = !DILocation(line: 32, column: 9, scope: !3558)
!3566 = !DILocation(line: 33, column: 1, scope: !3558)
!3567 = !DILocation(line: 32, column: 2, scope: !3558)
!3568 = distinct !DISubprogram(name: "native_irq_disable", scope: !2843, file: !2843, line: 35, type: !1204, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3569 = !DILocation(line: 37, column: 2, scope: !3568)
!3570 = !{i64 1775313}
!3571 = !DILocation(line: 38, column: 1, scope: !3568)
!3572 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2843, file: !2843, line: 120, type: !3573, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!64, !114}
!3575 = !{!3576}
!3576 = !DILocalVariable(name: "flags", arg: 1, scope: !3572, file: !2843, line: 120, type: !114)
!3577 = !DILocation(line: 120, column: 67, scope: !3572)
!3578 = !DILocation(line: 122, column: 11, scope: !3572)
!3579 = !DILocation(line: 122, column: 17, scope: !3572)
!3580 = !DILocation(line: 122, column: 9, scope: !3572)
!3581 = !DILocation(line: 122, column: 2, scope: !3572)
!3582 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !2843, file: !2843, line: 75, type: !1204, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3583 = !DILocation(line: 77, column: 2, scope: !3582)
!3584 = !DILocation(line: 78, column: 1, scope: !3582)
!3585 = distinct !DISubprogram(name: "native_irq_enable", scope: !2843, file: !2843, line: 40, type: !1204, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3586 = !DILocation(line: 42, column: 2, scope: !3585)
!3587 = !{i64 1775405}
!3588 = !DILocation(line: 43, column: 1, scope: !3585)
!3589 = distinct !DISubprogram(name: "_test_bit", scope: !3590, file: !3590, line: 139, type: !3591, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3596)
!3590 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!627, !114, !3593}
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3595)
!3595 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!3596 = !{!3597, !3598}
!3597 = !DILocalVariable(name: "nr", arg: 1, scope: !3589, file: !3590, line: 139, type: !114)
!3598 = !DILocalVariable(name: "addr", arg: 2, scope: !3589, file: !3590, line: 139, type: !3593)
!3599 = !DILocation(line: 139, column: 25, scope: !3589)
!3600 = !DILocation(line: 139, column: 59, scope: !3589)
!3601 = !DILocation(line: 141, column: 25, scope: !3589)
!3602 = !DILocation(line: 141, column: 32, scope: !3589)
!3603 = !DILocation(line: 141, column: 30, scope: !3589)
!3604 = !DILocation(line: 141, column: 2, scope: !3589)
!3605 = !DILocation(line: 142, column: 23, scope: !3589)
!3606 = !DILocation(line: 142, column: 27, scope: !3589)
!3607 = !DILocation(line: 142, column: 9, scope: !3589)
!3608 = !DILocation(line: 142, column: 2, scope: !3589)
!3609 = distinct !DISubprogram(name: "cpumask_check", scope: !118, file: !118, line: 148, type: !3610, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!7, !7}
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "cpu", arg: 1, scope: !3609, file: !118, line: 148, type: !7)
!3614 = !DILocation(line: 148, column: 64, scope: !3609)
!3615 = !DILocation(line: 150, column: 20, scope: !3609)
!3616 = !DILocation(line: 150, column: 2, scope: !3609)
!3617 = !DILocation(line: 151, column: 9, scope: !3609)
!3618 = !DILocation(line: 151, column: 2, scope: !3609)
!3619 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3620, file: !3620, line: 66, type: !3621, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3626)
!3620 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !3623, !325}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3625)
!3625 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3626 = !{!3627, !3628}
!3627 = !DILocalVariable(name: "v", arg: 1, scope: !3619, file: !3620, line: 66, type: !3623)
!3628 = !DILocalVariable(name: "size", arg: 2, scope: !3619, file: !3620, line: 66, type: !325)
!3629 = !DILocation(line: 66, column: 73, scope: !3619)
!3630 = !DILocation(line: 66, column: 83, scope: !3619)
!3631 = !DILocation(line: 68, column: 19, scope: !3619)
!3632 = !DILocation(line: 68, column: 22, scope: !3619)
!3633 = !DILocation(line: 68, column: 2, scope: !3619)
!3634 = !DILocation(line: 69, column: 2, scope: !3619)
!3635 = !DILocation(line: 70, column: 1, scope: !3619)
!3636 = distinct !DISubprogram(name: "arch_test_bit", scope: !3637, file: !3637, line: 237, type: !3591, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3638)
!3637 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3638 = !{!3639, !3640}
!3639 = !DILocalVariable(name: "nr", arg: 1, scope: !3636, file: !3637, line: 237, type: !114)
!3640 = !DILocalVariable(name: "addr", arg: 2, scope: !3636, file: !3637, line: 237, type: !3593)
!3641 = !DILocation(line: 237, column: 29, scope: !3636)
!3642 = !DILocation(line: 237, column: 63, scope: !3636)
!3643 = !DILocation(line: 239, column: 30, scope: !3636)
!3644 = !DILocation(line: 239, column: 9, scope: !3636)
!3645 = !DILocation(line: 239, column: 54, scope: !3636)
!3646 = !DILocation(line: 239, column: 58, scope: !3636)
!3647 = !DILocation(line: 239, column: 36, scope: !3636)
!3648 = !DILocation(line: 240, column: 26, scope: !3636)
!3649 = !DILocation(line: 240, column: 30, scope: !3636)
!3650 = !DILocation(line: 240, column: 8, scope: !3636)
!3651 = !DILocation(line: 239, column: 2, scope: !3636)
!3652 = distinct !DISubprogram(name: "kasan_check_read", scope: !3653, file: !3653, line: 40, type: !3654, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3656)
!3653 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!627, !3623, !7}
!3656 = !{!3657, !3658}
!3657 = !DILocalVariable(name: "p", arg: 1, scope: !3652, file: !3653, line: 40, type: !3623)
!3658 = !DILocalVariable(name: "size", arg: 2, scope: !3652, file: !3653, line: 40, type: !7)
!3659 = !DILocation(line: 40, column: 58, scope: !3652)
!3660 = !DILocation(line: 40, column: 74, scope: !3652)
!3661 = !DILocation(line: 42, column: 2, scope: !3652)
!3662 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3663, file: !3663, line: 229, type: !3664, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3666)
!3663 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !3623, !325, !64}
!3666 = !{!3667, !3668, !3669}
!3667 = !DILocalVariable(name: "ptr", arg: 1, scope: !3662, file: !3663, line: 229, type: !3623)
!3668 = !DILocalVariable(name: "size", arg: 2, scope: !3662, file: !3663, line: 229, type: !325)
!3669 = !DILocalVariable(name: "type", arg: 3, scope: !3662, file: !3663, line: 230, type: !64)
!3670 = !DILocation(line: 229, column: 60, scope: !3662)
!3671 = !DILocation(line: 229, column: 72, scope: !3662)
!3672 = !DILocation(line: 230, column: 15, scope: !3662)
!3673 = !DILocation(line: 230, column: 23, scope: !3662)
!3674 = distinct !DISubprogram(name: "constant_test_bit", scope: !3637, file: !3637, line: 204, type: !3675, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!627, !314, !3593}
!3677 = !{!3678, !3679}
!3678 = !DILocalVariable(name: "nr", arg: 1, scope: !3674, file: !3637, line: 204, type: !314)
!3679 = !DILocalVariable(name: "addr", arg: 2, scope: !3674, file: !3637, line: 204, type: !3593)
!3680 = !DILocation(line: 204, column: 52, scope: !3674)
!3681 = !DILocation(line: 204, column: 86, scope: !3674)
!3682 = !DILocation(line: 206, column: 19, scope: !3674)
!3683 = !DILocation(line: 206, column: 22, scope: !3674)
!3684 = !DILocation(line: 206, column: 15, scope: !3674)
!3685 = !DILocation(line: 207, column: 4, scope: !3674)
!3686 = !DILocation(line: 207, column: 9, scope: !3674)
!3687 = !DILocation(line: 207, column: 12, scope: !3674)
!3688 = !DILocation(line: 206, column: 44, scope: !3674)
!3689 = !DILocation(line: 207, column: 37, scope: !3674)
!3690 = !DILocation(line: 206, column: 2, scope: !3674)
!3691 = distinct !DISubprogram(name: "variable_test_bit", scope: !3637, file: !3637, line: 224, type: !3675, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3692)
!3692 = !{!3693, !3694, !3695}
!3693 = !DILocalVariable(name: "nr", arg: 1, scope: !3691, file: !3637, line: 224, type: !314)
!3694 = !DILocalVariable(name: "addr", arg: 2, scope: !3691, file: !3637, line: 224, type: !3593)
!3695 = !DILocalVariable(name: "oldbit", scope: !3691, file: !3637, line: 226, type: !627)
!3696 = !DILocation(line: 224, column: 52, scope: !3691)
!3697 = !DILocation(line: 224, column: 86, scope: !3691)
!3698 = !DILocation(line: 226, column: 2, scope: !3691)
!3699 = !DILocation(line: 226, column: 7, scope: !3691)
!3700 = !DILocation(line: 231, column: 33, scope: !3691)
!3701 = !DILocation(line: 231, column: 46, scope: !3691)
!3702 = !DILocation(line: 228, column: 2, scope: !3691)
!3703 = !{i64 2148237641, i64 2148237715}
!3704 = !DILocation(line: 233, column: 9, scope: !3691)
!3705 = !DILocation(line: 234, column: 1, scope: !3691)
!3706 = !DILocation(line: 233, column: 2, scope: !3691)
!3707 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !118, file: !118, line: 140, type: !3708, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !7, !7}
!3710 = !{!3711, !3712}
!3711 = !DILocalVariable(name: "cpu", arg: 1, scope: !3707, file: !118, line: 140, type: !7)
!3712 = !DILocalVariable(name: "bits", arg: 2, scope: !3707, file: !118, line: 140, type: !7)
!3713 = !DILocation(line: 140, column: 60, scope: !3707)
!3714 = !DILocation(line: 140, column: 78, scope: !3707)
!3715 = !DILocation(line: 145, column: 1, scope: !3707)
!3716 = !DISubprogram(name: "subsys_system_register", scope: !44, file: !44, line: 75, type: !3717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!64, !3719, !329}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!3720 = distinct !DISubprogram(name: "tick_init_sysfs", scope: !3, file: !3, line: 748, type: !966, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3721)
!3721 = !{!3722, !3723, !3727, !3730, !3732}
!3722 = !DILocalVariable(name: "cpu", scope: !3720, file: !3, line: 750, type: !64)
!3723 = !DILocalVariable(name: "dev", scope: !3724, file: !3, line: 753, type: !1217)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 752, column: 29)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 752, column: 2)
!3726 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 752, column: 2)
!3727 = !DILocalVariable(name: "__vpp_verify", scope: !3728, file: !3, line: 753, type: !549)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 753, column: 25)
!3729 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 753, column: 25)
!3730 = !DILocalVariable(name: "__ptr", scope: !3731, file: !3, line: 753, type: !114)
!3731 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 753, column: 25)
!3732 = !DILocalVariable(name: "err", scope: !3724, file: !3, line: 754, type: !64)
!3733 = !DILocation(line: 750, column: 2, scope: !3720)
!3734 = !DILocation(line: 750, column: 6, scope: !3720)
!3735 = !DILocation(line: 752, column: 2, scope: !3726)
!3736 = !DILocation(line: 752, column: 2, scope: !3725)
!3737 = !DILocation(line: 753, column: 3, scope: !3724)
!3738 = !DILocation(line: 753, column: 18, scope: !3724)
!3739 = !DILocation(line: 753, column: 25, scope: !3729)
!3740 = !DILocation(line: 753, column: 25, scope: !3728)
!3741 = !DILocation(line: 753, column: 25, scope: !3731)
!3742 = !DILocation(line: 754, column: 3, scope: !3724)
!3743 = !DILocation(line: 754, column: 7, scope: !3724)
!3744 = !DILocation(line: 756, column: 13, scope: !3724)
!3745 = !DILocation(line: 756, column: 3, scope: !3724)
!3746 = !DILocation(line: 756, column: 8, scope: !3724)
!3747 = !DILocation(line: 756, column: 11, scope: !3724)
!3748 = !DILocation(line: 757, column: 3, scope: !3724)
!3749 = !DILocation(line: 757, column: 8, scope: !3724)
!3750 = !DILocation(line: 757, column: 12, scope: !3724)
!3751 = !DILocation(line: 758, column: 25, scope: !3724)
!3752 = !DILocation(line: 758, column: 9, scope: !3724)
!3753 = !DILocation(line: 758, column: 7, scope: !3724)
!3754 = !DILocation(line: 759, column: 8, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 759, column: 7)
!3756 = !DILocation(line: 759, column: 7, scope: !3724)
!3757 = !DILocation(line: 760, column: 29, scope: !3755)
!3758 = !DILocation(line: 760, column: 10, scope: !3755)
!3759 = !DILocation(line: 760, column: 8, scope: !3755)
!3760 = !DILocation(line: 760, column: 4, scope: !3755)
!3761 = !DILocation(line: 761, column: 8, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 761, column: 7)
!3763 = !DILocation(line: 761, column: 7, scope: !3724)
!3764 = !DILocation(line: 762, column: 29, scope: !3762)
!3765 = !DILocation(line: 762, column: 10, scope: !3762)
!3766 = !DILocation(line: 762, column: 8, scope: !3762)
!3767 = !DILocation(line: 762, column: 4, scope: !3762)
!3768 = !DILocation(line: 763, column: 7, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 763, column: 7)
!3770 = !DILocation(line: 763, column: 7, scope: !3724)
!3771 = !DILocation(line: 764, column: 11, scope: !3769)
!3772 = !DILocation(line: 764, column: 4, scope: !3769)
!3773 = !DILocation(line: 765, column: 2, scope: !3725)
!3774 = !DILocation(line: 765, column: 2, scope: !3724)
!3775 = distinct !{!3775, !3735, !3776, !2667, !2440}
!3776 = !DILocation(line: 765, column: 2, scope: !3726)
!3777 = !DILocation(line: 766, column: 9, scope: !3720)
!3778 = !DILocation(line: 766, column: 2, scope: !3720)
!3779 = !DILocation(line: 767, column: 1, scope: !3720)
!3780 = distinct !DISubprogram(name: "find_next_bit", scope: !3781, file: !3781, line: 54, type: !3782, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3784)
!3781 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!114, !2602, !114, !114}
!3784 = !{!3785, !3786, !3787, !3788}
!3785 = !DILocalVariable(name: "addr", arg: 1, scope: !3780, file: !3781, line: 54, type: !2602)
!3786 = !DILocalVariable(name: "size", arg: 2, scope: !3780, file: !3781, line: 54, type: !114)
!3787 = !DILocalVariable(name: "offset", arg: 3, scope: !3780, file: !3781, line: 55, type: !114)
!3788 = !DILocalVariable(name: "val", scope: !3789, file: !3781, line: 58, type: !114)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !3781, line: 57, column: 31)
!3790 = distinct !DILexicalBlock(scope: !3780, file: !3781, line: 57, column: 6)
!3791 = !DILocation(line: 54, column: 50, scope: !3780)
!3792 = !DILocation(line: 54, column: 70, scope: !3780)
!3793 = !DILocation(line: 55, column: 22, scope: !3780)
!3794 = !DILocation(line: 57, column: 6, scope: !3790)
!3795 = !DILocation(line: 57, column: 6, scope: !3780)
!3796 = !DILocation(line: 58, column: 3, scope: !3789)
!3797 = !DILocation(line: 58, column: 17, scope: !3789)
!3798 = !DILocation(line: 60, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3789, file: !3781, line: 60, column: 7)
!3800 = !DILocation(line: 60, column: 7, scope: !3789)
!3801 = !DILocation(line: 61, column: 11, scope: !3799)
!3802 = !DILocation(line: 61, column: 4, scope: !3799)
!3803 = !DILocation(line: 63, column: 10, scope: !3789)
!3804 = !DILocation(line: 63, column: 9, scope: !3789)
!3805 = !DILocation(line: 63, column: 17, scope: !3789)
!3806 = !DILocation(line: 63, column: 15, scope: !3789)
!3807 = !DILocation(line: 63, column: 7, scope: !3789)
!3808 = !DILocation(line: 64, column: 10, scope: !3789)
!3809 = !DILocation(line: 64, column: 16, scope: !3789)
!3810 = !DILocation(line: 64, column: 29, scope: !3789)
!3811 = !DILocation(line: 64, column: 3, scope: !3789)
!3812 = !DILocation(line: 65, column: 2, scope: !3790)
!3813 = !DILocation(line: 67, column: 24, scope: !3780)
!3814 = !DILocation(line: 67, column: 30, scope: !3780)
!3815 = !DILocation(line: 67, column: 36, scope: !3780)
!3816 = !DILocation(line: 67, column: 9, scope: !3780)
!3817 = !DILocation(line: 67, column: 2, scope: !3780)
!3818 = !DILocation(line: 68, column: 1, scope: !3780)
!3819 = !DISubprogram(name: "device_register", scope: !44, file: !44, line: 1054, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3820 = !DISubprogram(name: "device_create_file", scope: !44, file: !44, line: 259, type: !3821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!64, !1217, !3823}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!3825 = distinct !DISubprogram(name: "tick_broadcast_init_sysfs", scope: !3, file: !3, line: 732, type: !966, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3826)
!3826 = !{!3827}
!3827 = !DILocalVariable(name: "err", scope: !3825, file: !3, line: 734, type: !64)
!3828 = !DILocation(line: 734, column: 2, scope: !3825)
!3829 = !DILocation(line: 734, column: 6, scope: !3825)
!3830 = !DILocation(line: 734, column: 12, scope: !3825)
!3831 = !DILocation(line: 736, column: 7, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 736, column: 6)
!3833 = !DILocation(line: 736, column: 6, scope: !3825)
!3834 = !DILocation(line: 737, column: 9, scope: !3832)
!3835 = !DILocation(line: 737, column: 7, scope: !3832)
!3836 = !DILocation(line: 737, column: 3, scope: !3832)
!3837 = !DILocation(line: 738, column: 9, scope: !3825)
!3838 = !DILocation(line: 739, column: 1, scope: !3825)
!3839 = !DILocation(line: 738, column: 2, scope: !3825)
!3840 = distinct !DISubprogram(name: "variable__ffs", scope: !3637, file: !3637, line: 250, type: !3442, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3841)
!3841 = !{!3842}
!3842 = !DILocalVariable(name: "word", arg: 1, scope: !3840, file: !3637, line: 250, type: !114)
!3843 = !DILocation(line: 250, column: 66, scope: !3840)
!3844 = !DILocation(line: 254, column: 11, scope: !3840)
!3845 = !DILocation(line: 252, column: 2, scope: !3840)
!3846 = !{i64 732716}
!3847 = !DILocation(line: 255, column: 9, scope: !3840)
!3848 = !DILocation(line: 255, column: 2, scope: !3840)
!3849 = !DISubprogram(name: "_find_next_bit", scope: !3781, file: !3781, line: 11, type: !3782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3850 = distinct !DISubprogram(name: "current_device_show", scope: !3, file: !3, line: 670, type: !1919, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856}
!3852 = !DILocalVariable(name: "dev", arg: 1, scope: !3850, file: !3, line: 670, type: !1217)
!3853 = !DILocalVariable(name: "attr", arg: 2, scope: !3850, file: !3, line: 671, type: !1921)
!3854 = !DILocalVariable(name: "buf", arg: 3, scope: !3850, file: !3, line: 672, type: !278)
!3855 = !DILocalVariable(name: "td", scope: !3850, file: !3, line: 674, type: !1208)
!3856 = !DILocalVariable(name: "count", scope: !3850, file: !3, line: 675, type: !310)
!3857 = !DILocation(line: 670, column: 51, scope: !3850)
!3858 = !DILocation(line: 671, column: 33, scope: !3850)
!3859 = !DILocation(line: 672, column: 14, scope: !3850)
!3860 = !DILocation(line: 674, column: 2, scope: !3850)
!3861 = !DILocation(line: 674, column: 22, scope: !3850)
!3862 = !DILocation(line: 675, column: 2, scope: !3850)
!3863 = !DILocation(line: 675, column: 10, scope: !3850)
!3864 = !DILocation(line: 677, column: 2, scope: !3850)
!3865 = !DILocation(line: 678, column: 25, scope: !3850)
!3866 = !DILocation(line: 678, column: 7, scope: !3850)
!3867 = !DILocation(line: 678, column: 5, scope: !3850)
!3868 = !DILocation(line: 679, column: 6, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 679, column: 6)
!3870 = !DILocation(line: 679, column: 9, scope: !3869)
!3871 = !DILocation(line: 679, column: 12, scope: !3869)
!3872 = !DILocation(line: 679, column: 16, scope: !3869)
!3873 = !DILocation(line: 679, column: 6, scope: !3850)
!3874 = !DILocation(line: 680, column: 20, scope: !3869)
!3875 = !DILocation(line: 680, column: 44, scope: !3869)
!3876 = !DILocation(line: 680, column: 48, scope: !3869)
!3877 = !DILocation(line: 680, column: 56, scope: !3869)
!3878 = !DILocation(line: 680, column: 11, scope: !3869)
!3879 = !DILocation(line: 680, column: 9, scope: !3869)
!3880 = !DILocation(line: 680, column: 3, scope: !3869)
!3881 = !DILocation(line: 681, column: 2, scope: !3850)
!3882 = !DILocation(line: 682, column: 9, scope: !3850)
!3883 = !DILocation(line: 683, column: 1, scope: !3850)
!3884 = !DILocation(line: 682, column: 2, scope: !3850)
!3885 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !2626, file: !2626, line: 29, type: !3005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3886 = distinct !DISubprogram(name: "tick_get_tick_dev", scope: !3, file: !3, line: 726, type: !3887, scopeLine: 727, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!1208, !1217}
!3889 = !{!3890, !3891, !3894}
!3890 = !DILocalVariable(name: "dev", arg: 1, scope: !3886, file: !3, line: 726, type: !1217)
!3891 = !DILocalVariable(name: "__vpp_verify", scope: !3892, file: !3, line: 729, type: !549)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 729, column: 4)
!3893 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 729, column: 4)
!3894 = !DILocalVariable(name: "__ptr", scope: !3895, file: !3, line: 729, type: !114)
!3895 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 729, column: 4)
!3896 = !DILocation(line: 726, column: 61, scope: !3886)
!3897 = !DILocation(line: 728, column: 9, scope: !3886)
!3898 = !DILocation(line: 728, column: 13, scope: !3886)
!3899 = !DILocation(line: 728, column: 31, scope: !3886)
!3900 = !DILocation(line: 729, column: 4, scope: !3893)
!3901 = !DILocation(line: 729, column: 4, scope: !3892)
!3902 = !DILocation(line: 729, column: 4, scope: !3895)
!3903 = !DILocation(line: 728, column: 2, scope: !3886)
!3904 = !DISubprogram(name: "snprintf", scope: !3905, file: !3905, line: 12, type: !3906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3905 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!64, !278, !325, !170, null}
!3908 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !2626, file: !2626, line: 41, type: !3005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3909 = !DISubprogram(name: "tick_get_broadcast_device", scope: !2104, file: !2104, line: 72, type: !3910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!1208}
!3912 = distinct !DISubprogram(name: "unbind_device_store", scope: !3, file: !3, line: 687, type: !1924, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3925}
!3914 = !DILocalVariable(name: "dev", arg: 1, scope: !3912, file: !3, line: 687, type: !1217)
!3915 = !DILocalVariable(name: "attr", arg: 2, scope: !3912, file: !3, line: 688, type: !1921)
!3916 = !DILocalVariable(name: "buf", arg: 3, scope: !3912, file: !3, line: 689, type: !170)
!3917 = !DILocalVariable(name: "count", arg: 4, scope: !3912, file: !3, line: 689, type: !325)
!3918 = !DILocalVariable(name: "name", scope: !3912, file: !3, line: 691, type: !1310)
!3919 = !DILocalVariable(name: "ret", scope: !3912, file: !3, line: 692, type: !310)
!3920 = !DILocalVariable(name: "ce", scope: !3912, file: !3, line: 693, type: !126)
!3921 = !DILocalVariable(name: "iter", scope: !3912, file: !3, line: 693, type: !126)
!3922 = !DILocalVariable(name: "__mptr", scope: !3923, file: !3, line: 701, type: !103)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 701, column: 2)
!3924 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 701, column: 2)
!3925 = !DILocalVariable(name: "__mptr", scope: !3926, file: !3, line: 701, type: !103)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 701, column: 2)
!3927 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 701, column: 2)
!3928 = !DILocation(line: 687, column: 51, scope: !3912)
!3929 = !DILocation(line: 688, column: 33, scope: !3912)
!3930 = !DILocation(line: 689, column: 20, scope: !3912)
!3931 = !DILocation(line: 689, column: 32, scope: !3912)
!3932 = !DILocation(line: 691, column: 2, scope: !3912)
!3933 = !DILocation(line: 691, column: 7, scope: !3912)
!3934 = !DILocation(line: 692, column: 2, scope: !3912)
!3935 = !DILocation(line: 692, column: 10, scope: !3912)
!3936 = !DILocation(line: 692, column: 32, scope: !3912)
!3937 = !DILocation(line: 692, column: 37, scope: !3912)
!3938 = !DILocation(line: 692, column: 43, scope: !3912)
!3939 = !DILocation(line: 692, column: 16, scope: !3912)
!3940 = !DILocation(line: 693, column: 2, scope: !3912)
!3941 = !DILocation(line: 693, column: 29, scope: !3912)
!3942 = !DILocation(line: 693, column: 41, scope: !3912)
!3943 = !DILocation(line: 695, column: 6, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 695, column: 6)
!3945 = !DILocation(line: 695, column: 10, scope: !3944)
!3946 = !DILocation(line: 695, column: 6, scope: !3912)
!3947 = !DILocation(line: 696, column: 10, scope: !3944)
!3948 = !DILocation(line: 696, column: 3, scope: !3944)
!3949 = !DILocation(line: 698, column: 6, scope: !3912)
!3950 = !DILocation(line: 699, column: 2, scope: !3912)
!3951 = !DILocation(line: 700, column: 2, scope: !3912)
!3952 = !DILocation(line: 701, column: 2, scope: !3923)
!3953 = !DILocation(line: 701, column: 2, scope: !3924)
!3954 = !DILocation(line: 701, column: 2, scope: !3927)
!3955 = !DILocation(line: 702, column: 15, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 702, column: 7)
!3957 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 701, column: 55)
!3958 = !DILocation(line: 702, column: 21, scope: !3956)
!3959 = !DILocation(line: 702, column: 27, scope: !3956)
!3960 = !DILocation(line: 702, column: 8, scope: !3956)
!3961 = !DILocation(line: 702, column: 7, scope: !3957)
!3962 = !DILocation(line: 703, column: 35, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 702, column: 34)
!3964 = !DILocation(line: 703, column: 41, scope: !3963)
!3965 = !DILocation(line: 703, column: 46, scope: !3963)
!3966 = !DILocation(line: 703, column: 10, scope: !3963)
!3967 = !DILocation(line: 703, column: 8, scope: !3963)
!3968 = !DILocation(line: 704, column: 9, scope: !3963)
!3969 = !DILocation(line: 704, column: 7, scope: !3963)
!3970 = !DILocation(line: 705, column: 4, scope: !3963)
!3971 = !DILocation(line: 707, column: 2, scope: !3957)
!3972 = !DILocation(line: 701, column: 2, scope: !3926)
!3973 = distinct !{!3973, !3953, !3974, !2667, !2440}
!3974 = !DILocation(line: 707, column: 2, scope: !3924)
!3975 = !DILocation(line: 708, column: 2, scope: !3912)
!3976 = !DILocation(line: 712, column: 6, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 712, column: 6)
!3978 = !DILocation(line: 712, column: 10, scope: !3977)
!3979 = !DILocation(line: 712, column: 6, scope: !3912)
!3980 = !DILocation(line: 713, column: 28, scope: !3977)
!3981 = !DILocation(line: 713, column: 32, scope: !3977)
!3982 = !DILocation(line: 713, column: 37, scope: !3977)
!3983 = !DILocation(line: 713, column: 9, scope: !3977)
!3984 = !DILocation(line: 713, column: 7, scope: !3977)
!3985 = !DILocation(line: 713, column: 3, scope: !3977)
!3986 = !DILocation(line: 714, column: 2, scope: !3912)
!3987 = !DILocation(line: 715, column: 9, scope: !3912)
!3988 = !DILocation(line: 715, column: 15, scope: !3912)
!3989 = !DILocation(line: 715, column: 21, scope: !3912)
!3990 = !DILocation(line: 715, column: 2, scope: !3912)
!3991 = !DILocation(line: 716, column: 1, scope: !3912)
!3992 = !DISubprogram(name: "sysfs_get_uname", scope: !2104, file: !2104, line: 59, type: !3993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!310, !170, !278, !325}
!3995 = !DISubprogram(name: "strcmp", scope: !3996, file: !3996, line: 88, type: !3997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3996 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!64, !170, !170}
