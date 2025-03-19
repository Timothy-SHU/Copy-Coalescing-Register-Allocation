; ModuleID = 'drivers/mailbox/mailbox.c'
source_filename = "drivers/mailbox/mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_chan_received_data: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_chan_received_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_chan_txdone: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_chan_txdone ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_client_txdone: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_client_txdone ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_client_peek_data: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_client_peek_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_send_message: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_send_message ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_flush: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_flush ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_bind_client: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_bind_client ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_request_channel: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_request_channel ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_request_channel_byname: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_request_channel_byname ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_free_channel: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_free_channel ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_controller_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_controller_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mbox_controller_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mbox_controller_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_mbox_controller_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_mbox_controller_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_mbox_controller_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_mbox_controller_unregister ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mbox_client = type { ptr, i8, i64, i8, ptr, ptr, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__UNIQUE_ID___addressable_mbox_chan_received_data205 = internal global ptr @mbox_chan_received_data, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [36 x i8] c"Controller can't run the TX ticker\0A\00", align 1, !dbg !1819
@__UNIQUE_ID___addressable_mbox_chan_txdone206 = internal global ptr @mbox_chan_txdone, section ".discard.addressable", align 8, !dbg !1824
@.str.1 = private unnamed_addr constant [32 x i8] c"Client can't run the TX ticker\0A\00", align 1, !dbg !1826
@__UNIQUE_ID___addressable_mbox_client_txdone207 = internal global ptr @mbox_client_txdone, section ".discard.addressable", align 8, !dbg !1828
@__UNIQUE_ID___addressable_mbox_client_peek_data208 = internal global ptr @mbox_client_peek_data, section ".discard.addressable", align 8, !dbg !1830
@.str.2 = private unnamed_addr constant [34 x i8] c"Try increasing MBOX_TX_QUEUE_LEN\0A\00", align 1, !dbg !1832
@__UNIQUE_ID___addressable_mbox_send_message209 = internal global ptr @mbox_send_message, section ".discard.addressable", align 8, !dbg !1837
@__UNIQUE_ID___addressable_mbox_flush210 = internal global ptr @mbox_flush, section ".discard.addressable", align 8, !dbg !1839
@con_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @con_mutex, i64 16), ptr getelementptr (i8, ptr @con_mutex, i64 16) } }, align 8, !dbg !1902
@__UNIQUE_ID___addressable_mbox_bind_client211 = internal global ptr @mbox_bind_client, section ".discard.addressable", align 8, !dbg !1841
@.str.3 = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1, !dbg !1843
@.str.4 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1, !dbg !1846
@mbox_cons = internal global %struct.list_head { ptr @mbox_cons, ptr @mbox_cons }, align 8, !dbg !1919
@__UNIQUE_ID___addressable_mbox_request_channel212 = internal global ptr @mbox_request_channel, section ".discard.addressable", align 8, !dbg !1851
@.str.5 = private unnamed_addr constant [33 x i8] c"%s() currently only supports DT\0A\00", align 1, !dbg !1853
@__func__.mbox_request_channel_byname = private unnamed_addr constant [28 x i8] c"mbox_request_channel_byname\00", align 1, !dbg !1858
@.str.6 = private unnamed_addr constant [11 x i8] c"mbox-names\00", align 1, !dbg !1863
@.str.7 = private unnamed_addr constant [40 x i8] c"%s() requires an \22mbox-names\22 property\0A\00", align 1, !dbg !1868
@.str.8 = private unnamed_addr constant [42 x i8] c"%s() could not locate channel named \22%s\22\0A\00", align 1, !dbg !1873
@__UNIQUE_ID___addressable_mbox_request_channel_byname213 = internal global ptr @mbox_request_channel_byname, section ".discard.addressable", align 8, !dbg !1878
@__UNIQUE_ID___addressable_mbox_free_channel214 = internal global ptr @mbox_free_channel, section ".discard.addressable", align 8, !dbg !1880
@.str.9 = private unnamed_addr constant [31 x i8] c"last_tx_done method is absent\0A\00", align 1, !dbg !1882
@__UNIQUE_ID___addressable_mbox_controller_register215 = internal global ptr @mbox_controller_register, section ".discard.addressable", align 8, !dbg !1887
@__UNIQUE_ID___addressable_mbox_controller_unregister216 = internal global ptr @mbox_controller_unregister, section ".discard.addressable", align 8, !dbg !1889
@.str.10 = private unnamed_addr constant [34 x i8] c"__devm_mbox_controller_unregister\00", align 1, !dbg !1891
@__UNIQUE_ID___addressable_devm_mbox_controller_register217 = internal global ptr @devm_mbox_controller_register, section ".discard.addressable", align 8, !dbg !1893
@.str.11 = private unnamed_addr constant [26 x i8] c"drivers/mailbox/mailbox.c\00", align 1, !dbg !1895
@__UNIQUE_ID___addressable_devm_mbox_controller_unregister218 = internal global ptr @devm_mbox_controller_unregister, section ".discard.addressable", align 8, !dbg !1900
@.str.12 = private unnamed_addr constant [33 x i8] c"Unable to startup the chan (%d)\0A\00", align 1, !dbg !1904
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1906
@.str.13 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !1914
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID___addressable_mbox_chan_received_data205, ptr @__UNIQUE_ID___addressable_mbox_chan_txdone206, ptr @__UNIQUE_ID___addressable_mbox_client_txdone207, ptr @__UNIQUE_ID___addressable_mbox_client_peek_data208, ptr @__UNIQUE_ID___addressable_mbox_send_message209, ptr @__UNIQUE_ID___addressable_mbox_flush210, ptr @__UNIQUE_ID___addressable_mbox_bind_client211, ptr @__UNIQUE_ID___addressable_mbox_request_channel212, ptr @__UNIQUE_ID___addressable_mbox_request_channel_byname213, ptr @__UNIQUE_ID___addressable_mbox_free_channel214, ptr @__UNIQUE_ID___addressable_mbox_controller_register215, ptr @__UNIQUE_ID___addressable_mbox_controller_unregister216, ptr @__UNIQUE_ID___addressable_devm_mbox_controller_register217, ptr @__UNIQUE_ID___addressable_devm_mbox_controller_unregister218], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mbox_chan_received_data(ptr noundef %chan, ptr noundef %mssg) #0 align 16 !dbg !1930 {
entry:
  %chan.addr = alloca ptr, align 8
  %mssg.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !1934, metadata !DIExpression()), !dbg !1936
  store ptr %mssg, ptr %mssg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mssg.addr, metadata !1935, metadata !DIExpression()), !dbg !1937
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !1938
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 2, !dbg !1940
  %1 = load ptr, ptr %cl, align 8, !dbg !1940
  %rx_callback = getelementptr inbounds %struct.mbox_client, ptr %1, i32 0, i32 4, !dbg !1941
  %2 = load ptr, ptr %rx_callback, align 8, !dbg !1941
  %tobool = icmp ne ptr %2, null, !dbg !1938
  br i1 %tobool, label %if.then, label %if.end, !dbg !1942

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !1943
  %cl1 = getelementptr inbounds %struct.mbox_chan, ptr %3, i32 0, i32 2, !dbg !1944
  %4 = load ptr, ptr %cl1, align 8, !dbg !1944
  %rx_callback2 = getelementptr inbounds %struct.mbox_client, ptr %4, i32 0, i32 4, !dbg !1945
  %5 = load ptr, ptr %rx_callback2, align 8, !dbg !1945
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !1946
  %cl3 = getelementptr inbounds %struct.mbox_chan, ptr %6, i32 0, i32 2, !dbg !1947
  %7 = load ptr, ptr %cl3, align 8, !dbg !1947
  %8 = load ptr, ptr %mssg.addr, align 8, !dbg !1948
  call void %5(ptr noundef %7, ptr noundef %8) #10, !dbg !1943
  br label %if.end, !dbg !1943

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1949
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mbox_chan_txdone(ptr noundef %chan, i32 noundef %r) #0 align 16 !dbg !1950 {
entry:
  %chan.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !1954, metadata !DIExpression()), !dbg !1956
  store i32 %r, ptr %r.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1955, metadata !DIExpression()), !dbg !1957
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !1958
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 1, !dbg !1958
  %1 = load i32, ptr %txdone_method, align 8, !dbg !1958
  %conv = zext i32 %1 to i64, !dbg !1958
  %and = and i64 %conv, 1, !dbg !1958
  %tobool = icmp ne i64 %and, 0, !dbg !1958
  %lnot = xor i1 %tobool, true, !dbg !1958
  %lnot1 = xor i1 %lnot, true, !dbg !1958
  %lnot2 = xor i1 %lnot1, true, !dbg !1958
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1958
  %conv3 = sext i32 %lnot.ext to i64, !dbg !1958
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !1958
  %tobool4 = icmp ne i64 %expval, 0, !dbg !1958
  br i1 %tobool4, label %if.then, label %if.end, !dbg !1960

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1961

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1964

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %chan.addr, align 8, !dbg !1961
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %2, i32 0, i32 0, !dbg !1961
  %3 = load ptr, ptr %mbox, align 8, !dbg !1961
  %dev = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 0, !dbg !1961
  %4 = load ptr, ptr %dev, align 8, !dbg !1961
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef @.str) #11, !dbg !1961
  br label %return, !dbg !1966

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %chan.addr, align 8, !dbg !1967
  %6 = load i32, ptr %r.addr, align 4, !dbg !1968
  call void @tx_tick(ptr noundef %5, i32 noundef %6) #10, !dbg !1969
  br label %return, !dbg !1970

return:                                           ; preds = %if.end, %do.end
  ret void, !dbg !1970
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1971 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tx_tick(ptr noundef %chan, i32 noundef %r) #0 align 16 !dbg !1975 {
entry:
  %chan.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %mssg = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !1977, metadata !DIExpression()), !dbg !1986
  store i32 %r, ptr %r.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1978, metadata !DIExpression()), !dbg !1987
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1979, metadata !DIExpression()), !dbg !1989
  call void @llvm.lifetime.start.p0(i64 8, ptr %mssg) #12, !dbg !1990
  call void @llvm.dbg.declare(metadata ptr %mssg, metadata !1980, metadata !DIExpression()), !dbg !1991
  br label %do.body, !dbg !1992

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1993

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1981, metadata !DIExpression()), !dbg !1994
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1985, metadata !DIExpression()), !dbg !1994
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1994
  %conv = zext i1 %cmp to i32, !dbg !1994
  store i32 1, ptr %tmp, align 4, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !1995
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !1995
  %0 = load i32, ptr %tmp, align 4, !dbg !1994
  %1 = load ptr, ptr %chan.addr, align 8, !dbg !1995
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %1, i32 0, i32 8, !dbg !1995
  %call = call ptr @spinlock_check(ptr noundef %lock) #10, !dbg !1995
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #10, !dbg !1995
  store i64 %call2, ptr %flags, align 8, !dbg !1995
  br label %do.cond, !dbg !1995

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1995

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !1993

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1993

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %chan.addr, align 8, !dbg !1996
  %active_req = getelementptr inbounds %struct.mbox_chan, ptr %2, i32 0, i32 4, !dbg !1997
  %3 = load ptr, ptr %active_req, align 8, !dbg !1997
  store ptr %3, ptr %mssg, align 8, !dbg !1998
  %4 = load ptr, ptr %chan.addr, align 8, !dbg !1999
  %active_req5 = getelementptr inbounds %struct.mbox_chan, ptr %4, i32 0, i32 4, !dbg !2000
  store ptr null, ptr %active_req5, align 8, !dbg !2001
  %5 = load ptr, ptr %chan.addr, align 8, !dbg !2002
  %lock6 = getelementptr inbounds %struct.mbox_chan, ptr %5, i32 0, i32 8, !dbg !2003
  %6 = load i64, ptr %flags, align 8, !dbg !2004
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %6) #10, !dbg !2005
  %7 = load ptr, ptr %chan.addr, align 8, !dbg !2006
  call void @msg_submit(ptr noundef %7) #10, !dbg !2007
  %8 = load ptr, ptr %mssg, align 8, !dbg !2008
  %tobool = icmp ne ptr %8, null, !dbg !2008
  br i1 %tobool, label %if.end, label %if.then, !dbg !2010

if.then:                                          ; preds = %do.end4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2011

if.end:                                           ; preds = %do.end4
  %9 = load ptr, ptr %chan.addr, align 8, !dbg !2012
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %9, i32 0, i32 2, !dbg !2014
  %10 = load ptr, ptr %cl, align 8, !dbg !2014
  %tx_done = getelementptr inbounds %struct.mbox_client, ptr %10, i32 0, i32 6, !dbg !2015
  %11 = load ptr, ptr %tx_done, align 8, !dbg !2015
  %tobool7 = icmp ne ptr %11, null, !dbg !2012
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !2016

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %chan.addr, align 8, !dbg !2017
  %cl9 = getelementptr inbounds %struct.mbox_chan, ptr %12, i32 0, i32 2, !dbg !2018
  %13 = load ptr, ptr %cl9, align 8, !dbg !2018
  %tx_done10 = getelementptr inbounds %struct.mbox_client, ptr %13, i32 0, i32 6, !dbg !2019
  %14 = load ptr, ptr %tx_done10, align 8, !dbg !2019
  %15 = load ptr, ptr %chan.addr, align 8, !dbg !2020
  %cl11 = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 2, !dbg !2021
  %16 = load ptr, ptr %cl11, align 8, !dbg !2021
  %17 = load ptr, ptr %mssg, align 8, !dbg !2022
  %18 = load i32, ptr %r.addr, align 4, !dbg !2023
  call void %14(ptr noundef %16, ptr noundef %17, i32 noundef %18) #10, !dbg !2017
  br label %if.end12, !dbg !2017

if.end12:                                         ; preds = %if.then8, %if.end
  %19 = load i32, ptr %r.addr, align 4, !dbg !2024
  %cmp13 = icmp ne i32 %19, -62, !dbg !2026
  br i1 %cmp13, label %land.lhs.true, label %if.end19, !dbg !2027

land.lhs.true:                                    ; preds = %if.end12
  %20 = load ptr, ptr %chan.addr, align 8, !dbg !2028
  %cl15 = getelementptr inbounds %struct.mbox_chan, ptr %20, i32 0, i32 2, !dbg !2029
  %21 = load ptr, ptr %cl15, align 8, !dbg !2029
  %tx_block = getelementptr inbounds %struct.mbox_client, ptr %21, i32 0, i32 1, !dbg !2030
  %22 = load i8, ptr %tx_block, align 8, !dbg !2030, !range !2031, !noundef !345
  %tobool16 = trunc i8 %22 to i1, !dbg !2030
  br i1 %tobool16, label %if.then18, label %if.end19, !dbg !2032

if.then18:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %chan.addr, align 8, !dbg !2033
  %tx_complete = getelementptr inbounds %struct.mbox_chan, ptr %23, i32 0, i32 3, !dbg !2034
  call void @complete(ptr noundef %tx_complete) #10, !dbg !2035
  br label %if.end19, !dbg !2035

if.end19:                                         ; preds = %if.then18, %land.lhs.true, %if.end12
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2036
  br label %cleanup, !dbg !2036

cleanup:                                          ; preds = %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mssg) #12, !dbg !2036
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !2036
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2036

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mbox_client_txdone(ptr noundef %chan, i32 noundef %r) #0 align 16 !dbg !2037 {
entry:
  %chan.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2039, metadata !DIExpression()), !dbg !2041
  store i32 %r, ptr %r.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2040, metadata !DIExpression()), !dbg !2042
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !2043
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 1, !dbg !2043
  %1 = load i32, ptr %txdone_method, align 8, !dbg !2043
  %conv = zext i32 %1 to i64, !dbg !2043
  %and = and i64 %conv, 4, !dbg !2043
  %tobool = icmp ne i64 %and, 0, !dbg !2043
  %lnot = xor i1 %tobool, true, !dbg !2043
  %lnot1 = xor i1 %lnot, true, !dbg !2043
  %lnot2 = xor i1 %lnot1, true, !dbg !2043
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2043
  %conv3 = sext i32 %lnot.ext to i64, !dbg !2043
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !2043
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2043
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2045

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2046

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2049

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %chan.addr, align 8, !dbg !2046
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %2, i32 0, i32 0, !dbg !2046
  %3 = load ptr, ptr %mbox, align 8, !dbg !2046
  %dev = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 0, !dbg !2046
  %4 = load ptr, ptr %dev, align 8, !dbg !2046
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef @.str.1) #11, !dbg !2046
  br label %return, !dbg !2051

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %chan.addr, align 8, !dbg !2052
  %6 = load i32, ptr %r.addr, align 4, !dbg !2053
  call void @tx_tick(ptr noundef %5, i32 noundef %6) #10, !dbg !2054
  br label %return, !dbg !2055

return:                                           ; preds = %if.end, %do.end
  ret void, !dbg !2055
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @mbox_client_peek_data(ptr noundef %chan) #0 align 16 !dbg !2056 {
entry:
  %retval = alloca i1, align 1
  %chan.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2058, metadata !DIExpression()), !dbg !2059
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !2060
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 0, !dbg !2062
  %1 = load ptr, ptr %mbox, align 8, !dbg !2062
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %1, i32 0, i32 1, !dbg !2063
  %2 = load ptr, ptr %ops, align 8, !dbg !2063
  %peek_data = getelementptr inbounds %struct.mbox_chan_ops, ptr %2, i32 0, i32 5, !dbg !2064
  %3 = load ptr, ptr %peek_data, align 8, !dbg !2064
  %tobool = icmp ne ptr %3, null, !dbg !2060
  br i1 %tobool, label %if.then, label %if.end, !dbg !2065

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %chan.addr, align 8, !dbg !2066
  %mbox1 = getelementptr inbounds %struct.mbox_chan, ptr %4, i32 0, i32 0, !dbg !2067
  %5 = load ptr, ptr %mbox1, align 8, !dbg !2067
  %ops2 = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 1, !dbg !2068
  %6 = load ptr, ptr %ops2, align 8, !dbg !2068
  %peek_data3 = getelementptr inbounds %struct.mbox_chan_ops, ptr %6, i32 0, i32 5, !dbg !2069
  %7 = load ptr, ptr %peek_data3, align 8, !dbg !2069
  %8 = load ptr, ptr %chan.addr, align 8, !dbg !2070
  %call = call zeroext i1 %7(ptr noundef %8) #10, !dbg !2066
  store i1 %call, ptr %retval, align 1, !dbg !2071
  br label %return, !dbg !2071

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2072
  br label %return, !dbg !2072

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, ptr %retval, align 1, !dbg !2073
  ret i1 %9, !dbg !2073
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mbox_send_message(ptr noundef %chan, ptr noundef %mssg) #0 align 16 !dbg !2074 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %mssg.addr = alloca ptr, align 8
  %t = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %wait = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2076, metadata !DIExpression()), !dbg !2083
  store ptr %mssg, ptr %mssg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mssg.addr, metadata !2077, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #12, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %t, metadata !2078, metadata !DIExpression()), !dbg !2086
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !2087
  %tobool = icmp ne ptr %0, null, !dbg !2087
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2089

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %chan.addr, align 8, !dbg !2090
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %1, i32 0, i32 2, !dbg !2091
  %2 = load ptr, ptr %cl, align 8, !dbg !2091
  %tobool1 = icmp ne ptr %2, null, !dbg !2090
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2092

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2093

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !2094
  %4 = load ptr, ptr %mssg.addr, align 8, !dbg !2095
  %call = call i32 @add_to_rbuf(ptr noundef %3, ptr noundef %4) #10, !dbg !2096
  store i32 %call, ptr %t, align 4, !dbg !2097
  %5 = load i32, ptr %t, align 4, !dbg !2098
  %cmp = icmp slt i32 %5, 0, !dbg !2100
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2101

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !2102

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !2105

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2105

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !2102
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %6, i32 0, i32 0, !dbg !2102
  %7 = load ptr, ptr %mbox, align 8, !dbg !2102
  %dev = getelementptr inbounds %struct.mbox_controller, ptr %7, i32 0, i32 0, !dbg !2102
  %8 = load ptr, ptr %dev, align 8, !dbg !2102
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef @.str.2) #11, !dbg !2102
  %9 = load i32, ptr %t, align 4, !dbg !2107
  store i32 %9, ptr %retval, align 4, !dbg !2108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2108

if.end3:                                          ; preds = %if.end
  %10 = load ptr, ptr %chan.addr, align 8, !dbg !2109
  call void @msg_submit(ptr noundef %10) #10, !dbg !2110
  %11 = load ptr, ptr %chan.addr, align 8, !dbg !2111
  %cl4 = getelementptr inbounds %struct.mbox_chan, ptr %11, i32 0, i32 2, !dbg !2112
  %12 = load ptr, ptr %cl4, align 8, !dbg !2112
  %tx_block = getelementptr inbounds %struct.mbox_client, ptr %12, i32 0, i32 1, !dbg !2113
  %13 = load i8, ptr %tx_block, align 8, !dbg !2113, !range !2031, !noundef !345
  %tobool5 = trunc i8 %13 to i1, !dbg !2113
  br i1 %tobool5, label %if.then6, label %if.end21, !dbg !2114

if.then6:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %wait) #12, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !2079, metadata !DIExpression()), !dbg !2116
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2082, metadata !DIExpression()), !dbg !2118
  %14 = load ptr, ptr %chan.addr, align 8, !dbg !2119
  %cl7 = getelementptr inbounds %struct.mbox_chan, ptr %14, i32 0, i32 2, !dbg !2121
  %15 = load ptr, ptr %cl7, align 8, !dbg !2121
  %tx_tout = getelementptr inbounds %struct.mbox_client, ptr %15, i32 0, i32 2, !dbg !2122
  %16 = load i64, ptr %tx_tout, align 8, !dbg !2122
  %tobool8 = icmp ne i64 %16, 0, !dbg !2119
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !2123

if.then9:                                         ; preds = %if.then6
  %call10 = call i64 @msecs_to_jiffies(i32 noundef 3600000) #10, !dbg !2124
  store i64 %call10, ptr %wait, align 8, !dbg !2125
  br label %if.end14, !dbg !2126

if.else:                                          ; preds = %if.then6
  %17 = load ptr, ptr %chan.addr, align 8, !dbg !2127
  %cl11 = getelementptr inbounds %struct.mbox_chan, ptr %17, i32 0, i32 2, !dbg !2128
  %18 = load ptr, ptr %cl11, align 8, !dbg !2128
  %tx_tout12 = getelementptr inbounds %struct.mbox_client, ptr %18, i32 0, i32 2, !dbg !2129
  %19 = load i64, ptr %tx_tout12, align 8, !dbg !2129
  %conv = trunc i64 %19 to i32, !dbg !2127
  %call13 = call i64 @msecs_to_jiffies(i32 noundef %conv) #10, !dbg !2130
  store i64 %call13, ptr %wait, align 8, !dbg !2131
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %20 = load ptr, ptr %chan.addr, align 8, !dbg !2132
  %tx_complete = getelementptr inbounds %struct.mbox_chan, ptr %20, i32 0, i32 3, !dbg !2133
  %21 = load i64, ptr %wait, align 8, !dbg !2134
  %call15 = call i64 @wait_for_completion_timeout(ptr noundef %tx_complete, i64 noundef %21) #10, !dbg !2135
  %conv16 = trunc i64 %call15 to i32, !dbg !2135
  store i32 %conv16, ptr %ret, align 4, !dbg !2136
  %22 = load i32, ptr %ret, align 4, !dbg !2137
  %cmp17 = icmp eq i32 %22, 0, !dbg !2139
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !2140

if.then19:                                        ; preds = %if.end14
  store i32 -62, ptr %t, align 4, !dbg !2141
  %23 = load ptr, ptr %chan.addr, align 8, !dbg !2143
  %24 = load i32, ptr %t, align 4, !dbg !2144
  call void @tx_tick(ptr noundef %23, i32 noundef %24) #10, !dbg !2145
  br label %if.end20, !dbg !2146

if.end20:                                         ; preds = %if.then19, %if.end14
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2147
  call void @llvm.lifetime.end.p0(i64 8, ptr %wait) #12, !dbg !2147
  br label %if.end21, !dbg !2148

if.end21:                                         ; preds = %if.end20, %if.end3
  %25 = load i32, ptr %t, align 4, !dbg !2149
  store i32 %25, ptr %retval, align 4, !dbg !2150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2150

cleanup:                                          ; preds = %if.end21, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #12, !dbg !2151
  %26 = load i32, ptr %retval, align 4, !dbg !2151
  ret i32 %26, !dbg !2151
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_to_rbuf(ptr noundef %chan, ptr noundef %mssg) #0 align 16 !dbg !2152 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %mssg.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2154, metadata !DIExpression()), !dbg !2163
  store ptr %mssg, ptr %mssg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mssg.addr, metadata !2155, metadata !DIExpression()), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #12, !dbg !2165
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !2156, metadata !DIExpression()), !dbg !2166
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !2167
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2157, metadata !DIExpression()), !dbg !2168
  br label %do.body, !dbg !2169

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2170

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2158, metadata !DIExpression()), !dbg !2171
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2162, metadata !DIExpression()), !dbg !2171
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2171
  %conv = zext i1 %cmp to i32, !dbg !2171
  store i32 1, ptr %tmp, align 4, !dbg !2171
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !2172
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !2172
  %0 = load i32, ptr %tmp, align 4, !dbg !2171
  %1 = load ptr, ptr %chan.addr, align 8, !dbg !2172
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %1, i32 0, i32 8, !dbg !2172
  %call = call ptr @spinlock_check(ptr noundef %lock) #10, !dbg !2172
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #10, !dbg !2172
  store i64 %call2, ptr %flags, align 8, !dbg !2172
  br label %do.cond, !dbg !2172

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2172

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !2170

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2170

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %chan.addr, align 8, !dbg !2173
  %msg_count = getelementptr inbounds %struct.mbox_chan, ptr %2, i32 0, i32 5, !dbg !2175
  %3 = load i32, ptr %msg_count, align 8, !dbg !2175
  %cmp5 = icmp eq i32 %3, 20, !dbg !2176
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2177

if.then:                                          ; preds = %do.end4
  %4 = load ptr, ptr %chan.addr, align 8, !dbg !2178
  %lock7 = getelementptr inbounds %struct.mbox_chan, ptr %4, i32 0, i32 8, !dbg !2180
  %5 = load i64, ptr %flags, align 8, !dbg !2181
  call void @spin_unlock_irqrestore(ptr noundef %lock7, i64 noundef %5) #10, !dbg !2182
  store i32 -105, ptr %retval, align 4, !dbg !2183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2183

if.end:                                           ; preds = %do.end4
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !2184
  %msg_free = getelementptr inbounds %struct.mbox_chan, ptr %6, i32 0, i32 6, !dbg !2185
  %7 = load i32, ptr %msg_free, align 4, !dbg !2185
  store i32 %7, ptr %idx, align 4, !dbg !2186
  %8 = load ptr, ptr %mssg.addr, align 8, !dbg !2187
  %9 = load ptr, ptr %chan.addr, align 8, !dbg !2188
  %msg_data = getelementptr inbounds %struct.mbox_chan, ptr %9, i32 0, i32 7, !dbg !2189
  %10 = load i32, ptr %idx, align 4, !dbg !2190
  %idxprom = sext i32 %10 to i64, !dbg !2188
  %arrayidx = getelementptr [20 x ptr], ptr %msg_data, i64 0, i64 %idxprom, !dbg !2188
  store ptr %8, ptr %arrayidx, align 8, !dbg !2191
  %11 = load ptr, ptr %chan.addr, align 8, !dbg !2192
  %msg_count8 = getelementptr inbounds %struct.mbox_chan, ptr %11, i32 0, i32 5, !dbg !2193
  %12 = load i32, ptr %msg_count8, align 8, !dbg !2194
  %inc = add i32 %12, 1, !dbg !2194
  store i32 %inc, ptr %msg_count8, align 8, !dbg !2194
  %13 = load i32, ptr %idx, align 4, !dbg !2195
  %cmp9 = icmp eq i32 %13, 19, !dbg !2197
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !2198

if.then11:                                        ; preds = %if.end
  %14 = load ptr, ptr %chan.addr, align 8, !dbg !2199
  %msg_free12 = getelementptr inbounds %struct.mbox_chan, ptr %14, i32 0, i32 6, !dbg !2200
  store i32 0, ptr %msg_free12, align 4, !dbg !2201
  br label %if.end15, !dbg !2199

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %chan.addr, align 8, !dbg !2202
  %msg_free13 = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 6, !dbg !2203
  %16 = load i32, ptr %msg_free13, align 4, !dbg !2204
  %inc14 = add i32 %16, 1, !dbg !2204
  store i32 %inc14, ptr %msg_free13, align 4, !dbg !2204
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %17 = load ptr, ptr %chan.addr, align 8, !dbg !2205
  %lock16 = getelementptr inbounds %struct.mbox_chan, ptr %17, i32 0, i32 8, !dbg !2206
  %18 = load i64, ptr %flags, align 8, !dbg !2207
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %18) #10, !dbg !2208
  %19 = load i32, ptr %idx, align 4, !dbg !2209
  store i32 %19, ptr %retval, align 4, !dbg !2210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2210

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !2211
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #12, !dbg !2211
  %20 = load i32, ptr %retval, align 4, !dbg !2211
  ret i32 %20, !dbg !2211
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @msg_submit(ptr noundef %chan) #0 align 16 !dbg !2212 {
entry:
  %chan.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %idx = alloca i32, align 4
  %flags = alloca i64, align 8
  %data = alloca ptr, align 8
  %err = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy31 = alloca i64, align 8
  %__dummy232 = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2214, metadata !DIExpression()), !dbg !2233
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !2234
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2215, metadata !DIExpression()), !dbg !2235
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #12, !dbg !2234
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !2216, metadata !DIExpression()), !dbg !2236
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2217, metadata !DIExpression()), !dbg !2238
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #12, !dbg !2239
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2218, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !2241
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2219, metadata !DIExpression()), !dbg !2242
  store i32 -16, ptr %err, align 4, !dbg !2242
  br label %do.body, !dbg !2243

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2244

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2220, metadata !DIExpression()), !dbg !2245
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2224, metadata !DIExpression()), !dbg !2245
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2245
  %conv = zext i1 %cmp to i32, !dbg !2245
  store i32 1, ptr %tmp, align 4, !dbg !2245
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !2246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !2246
  %0 = load i32, ptr %tmp, align 4, !dbg !2245
  %1 = load ptr, ptr %chan.addr, align 8, !dbg !2246
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %1, i32 0, i32 8, !dbg !2246
  %call = call ptr @spinlock_check(ptr noundef %lock) #10, !dbg !2246
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #10, !dbg !2246
  store i64 %call2, ptr %flags, align 8, !dbg !2246
  br label %do.cond, !dbg !2246

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2246

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !2244

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2244

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %chan.addr, align 8, !dbg !2247
  %msg_count = getelementptr inbounds %struct.mbox_chan, ptr %2, i32 0, i32 5, !dbg !2249
  %3 = load i32, ptr %msg_count, align 8, !dbg !2249
  %tobool = icmp ne i32 %3, 0, !dbg !2247
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2250

lor.lhs.false:                                    ; preds = %do.end4
  %4 = load ptr, ptr %chan.addr, align 8, !dbg !2251
  %active_req = getelementptr inbounds %struct.mbox_chan, ptr %4, i32 0, i32 4, !dbg !2252
  %5 = load ptr, ptr %active_req, align 8, !dbg !2252
  %tobool5 = icmp ne ptr %5, null, !dbg !2251
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2253

if.then:                                          ; preds = %lor.lhs.false, %do.end4
  br label %exit, !dbg !2254

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !2255
  %msg_count6 = getelementptr inbounds %struct.mbox_chan, ptr %6, i32 0, i32 5, !dbg !2256
  %7 = load i32, ptr %msg_count6, align 8, !dbg !2256
  store i32 %7, ptr %count, align 4, !dbg !2257
  %8 = load ptr, ptr %chan.addr, align 8, !dbg !2258
  %msg_free = getelementptr inbounds %struct.mbox_chan, ptr %8, i32 0, i32 6, !dbg !2259
  %9 = load i32, ptr %msg_free, align 4, !dbg !2259
  store i32 %9, ptr %idx, align 4, !dbg !2260
  %10 = load i32, ptr %idx, align 4, !dbg !2261
  %11 = load i32, ptr %count, align 4, !dbg !2263
  %cmp7 = icmp uge i32 %10, %11, !dbg !2264
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !2265

if.then9:                                         ; preds = %if.end
  %12 = load i32, ptr %count, align 4, !dbg !2266
  %13 = load i32, ptr %idx, align 4, !dbg !2267
  %sub = sub i32 %13, %12, !dbg !2267
  store i32 %sub, ptr %idx, align 4, !dbg !2267
  br label %if.end11, !dbg !2268

if.else:                                          ; preds = %if.end
  %14 = load i32, ptr %count, align 4, !dbg !2269
  %sub10 = sub i32 20, %14, !dbg !2270
  %15 = load i32, ptr %idx, align 4, !dbg !2271
  %add = add i32 %15, %sub10, !dbg !2271
  store i32 %add, ptr %idx, align 4, !dbg !2271
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %16 = load ptr, ptr %chan.addr, align 8, !dbg !2272
  %msg_data = getelementptr inbounds %struct.mbox_chan, ptr %16, i32 0, i32 7, !dbg !2273
  %17 = load i32, ptr %idx, align 4, !dbg !2274
  %idxprom = zext i32 %17 to i64, !dbg !2272
  %arrayidx = getelementptr [20 x ptr], ptr %msg_data, i64 0, i64 %idxprom, !dbg !2272
  %18 = load ptr, ptr %arrayidx, align 8, !dbg !2272
  store ptr %18, ptr %data, align 8, !dbg !2275
  %19 = load ptr, ptr %chan.addr, align 8, !dbg !2276
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %19, i32 0, i32 2, !dbg !2278
  %20 = load ptr, ptr %cl, align 8, !dbg !2278
  %tx_prepare = getelementptr inbounds %struct.mbox_client, ptr %20, i32 0, i32 5, !dbg !2279
  %21 = load ptr, ptr %tx_prepare, align 8, !dbg !2279
  %tobool12 = icmp ne ptr %21, null, !dbg !2276
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !2280

if.then13:                                        ; preds = %if.end11
  %22 = load ptr, ptr %chan.addr, align 8, !dbg !2281
  %cl14 = getelementptr inbounds %struct.mbox_chan, ptr %22, i32 0, i32 2, !dbg !2282
  %23 = load ptr, ptr %cl14, align 8, !dbg !2282
  %tx_prepare15 = getelementptr inbounds %struct.mbox_client, ptr %23, i32 0, i32 5, !dbg !2283
  %24 = load ptr, ptr %tx_prepare15, align 8, !dbg !2283
  %25 = load ptr, ptr %chan.addr, align 8, !dbg !2284
  %cl16 = getelementptr inbounds %struct.mbox_chan, ptr %25, i32 0, i32 2, !dbg !2285
  %26 = load ptr, ptr %cl16, align 8, !dbg !2285
  %27 = load ptr, ptr %data, align 8, !dbg !2286
  call void %24(ptr noundef %26, ptr noundef %27) #10, !dbg !2281
  br label %if.end17, !dbg !2281

if.end17:                                         ; preds = %if.then13, %if.end11
  %28 = load ptr, ptr %chan.addr, align 8, !dbg !2287
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %28, i32 0, i32 0, !dbg !2288
  %29 = load ptr, ptr %mbox, align 8, !dbg !2288
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %29, i32 0, i32 1, !dbg !2289
  %30 = load ptr, ptr %ops, align 8, !dbg !2289
  %send_data = getelementptr inbounds %struct.mbox_chan_ops, ptr %30, i32 0, i32 0, !dbg !2290
  %31 = load ptr, ptr %send_data, align 8, !dbg !2290
  %32 = load ptr, ptr %chan.addr, align 8, !dbg !2291
  %33 = load ptr, ptr %data, align 8, !dbg !2292
  %call18 = call i32 %31(ptr noundef %32, ptr noundef %33) #10, !dbg !2287
  store i32 %call18, ptr %err, align 4, !dbg !2293
  %34 = load i32, ptr %err, align 4, !dbg !2294
  %tobool19 = icmp ne i32 %34, 0, !dbg !2294
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !2296

if.then20:                                        ; preds = %if.end17
  %35 = load ptr, ptr %data, align 8, !dbg !2297
  %36 = load ptr, ptr %chan.addr, align 8, !dbg !2299
  %active_req21 = getelementptr inbounds %struct.mbox_chan, ptr %36, i32 0, i32 4, !dbg !2300
  store ptr %35, ptr %active_req21, align 8, !dbg !2301
  %37 = load ptr, ptr %chan.addr, align 8, !dbg !2302
  %msg_count22 = getelementptr inbounds %struct.mbox_chan, ptr %37, i32 0, i32 5, !dbg !2303
  %38 = load i32, ptr %msg_count22, align 8, !dbg !2304
  %dec = add i32 %38, -1, !dbg !2304
  store i32 %dec, ptr %msg_count22, align 8, !dbg !2304
  br label %if.end23, !dbg !2305

if.end23:                                         ; preds = %if.then20, %if.end17
  br label %exit, !dbg !2294

exit:                                             ; preds = %if.end23, %if.then
  call void @llvm.dbg.label(metadata !2225), !dbg !2306
  %39 = load ptr, ptr %chan.addr, align 8, !dbg !2307
  %lock24 = getelementptr inbounds %struct.mbox_chan, ptr %39, i32 0, i32 8, !dbg !2308
  %40 = load i64, ptr %flags, align 8, !dbg !2309
  call void @spin_unlock_irqrestore(ptr noundef %lock24, i64 noundef %40) #10, !dbg !2310
  %41 = load i32, ptr %err, align 4, !dbg !2311
  %tobool25 = icmp ne i32 %41, 0, !dbg !2311
  br i1 %tobool25, label %if.end46, label %land.lhs.true, !dbg !2312

land.lhs.true:                                    ; preds = %exit
  %42 = load ptr, ptr %chan.addr, align 8, !dbg !2313
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %42, i32 0, i32 1, !dbg !2314
  %43 = load i32, ptr %txdone_method, align 8, !dbg !2314
  %conv26 = zext i32 %43 to i64, !dbg !2313
  %and = and i64 %conv26, 2, !dbg !2315
  %tobool27 = icmp ne i64 %and, 0, !dbg !2315
  br i1 %tobool27, label %if.then28, label %if.end46, !dbg !2316

if.then28:                                        ; preds = %land.lhs.true
  br label %do.body29, !dbg !2317

do.body29:                                        ; preds = %if.then28
  br label %do.body30, !dbg !2318

do.body30:                                        ; preds = %do.body29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy31) #12, !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %__dummy31, metadata !2226, metadata !DIExpression()), !dbg !2319
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy232) #12, !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %__dummy232, metadata !2232, metadata !DIExpression()), !dbg !2319
  %cmp33 = icmp eq ptr %__dummy31, %__dummy232, !dbg !2319
  %conv34 = zext i1 %cmp33 to i32, !dbg !2319
  store i32 1, ptr %tmp35, align 4, !dbg !2319
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy232) #12, !dbg !2320
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy31) #12, !dbg !2320
  %44 = load i32, ptr %tmp35, align 4, !dbg !2319
  %45 = load ptr, ptr %chan.addr, align 8, !dbg !2320
  %mbox36 = getelementptr inbounds %struct.mbox_chan, ptr %45, i32 0, i32 0, !dbg !2320
  %46 = load ptr, ptr %mbox36, align 8, !dbg !2320
  %poll_hrt_lock = getelementptr inbounds %struct.mbox_controller, ptr %46, i32 0, i32 9, !dbg !2320
  %call37 = call ptr @spinlock_check(ptr noundef %poll_hrt_lock) #10, !dbg !2320
  %call38 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call37) #10, !dbg !2320
  store i64 %call38, ptr %flags, align 8, !dbg !2320
  br label %do.cond39, !dbg !2320

do.cond39:                                        ; preds = %do.body30
  br label %do.end40, !dbg !2320

do.end40:                                         ; preds = %do.cond39
  br label %do.cond41, !dbg !2318

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !2318

do.end42:                                         ; preds = %do.cond41
  %47 = load ptr, ptr %chan.addr, align 8, !dbg !2321
  %mbox43 = getelementptr inbounds %struct.mbox_chan, ptr %47, i32 0, i32 0, !dbg !2322
  %48 = load ptr, ptr %mbox43, align 8, !dbg !2322
  %poll_hrt = getelementptr inbounds %struct.mbox_controller, ptr %48, i32 0, i32 8, !dbg !2323
  call void @hrtimer_start(ptr noundef %poll_hrt, i64 noundef 0, i32 noundef 1) #10, !dbg !2324
  %49 = load ptr, ptr %chan.addr, align 8, !dbg !2325
  %mbox44 = getelementptr inbounds %struct.mbox_chan, ptr %49, i32 0, i32 0, !dbg !2326
  %50 = load ptr, ptr %mbox44, align 8, !dbg !2326
  %poll_hrt_lock45 = getelementptr inbounds %struct.mbox_controller, ptr %50, i32 0, i32 9, !dbg !2327
  %51 = load i64, ptr %flags, align 8, !dbg !2328
  call void @spin_unlock_irqrestore(ptr noundef %poll_hrt_lock45, i64 noundef %51) #10, !dbg !2329
  br label %if.end46, !dbg !2330

if.end46:                                         ; preds = %do.end42, %land.lhs.true, %exit
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !2331
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #12, !dbg !2331
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !2331
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #12, !dbg !2331
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !2331
  ret void, !dbg !2331
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #5 align 16 !dbg !2332 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !2338, metadata !DIExpression()), !dbg !2339
  %0 = load i32, ptr %m.addr, align 4, !dbg !2340
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2342
  br i1 %1, label %if.then, label %if.else, !dbg !2343

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !2344
  %cmp = icmp slt i32 %2, 0, !dbg !2347
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2348

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !2349
  br label %return, !dbg !2349

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !2350
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #10, !dbg !2351
  store i64 %call, ptr %retval, align 8, !dbg !2352
  br label %return, !dbg !2352

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !2353
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #10, !dbg !2355
  store i64 %call2, ptr %retval, align 8, !dbg !2356
  br label %return, !dbg !2356

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !2357
  ret i64 %5, !dbg !2357
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2358 dso_local i64 @wait_for_completion_timeout(ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mbox_flush(ptr noundef %chan, i64 noundef %timeout) #0 align 16 !dbg !2361 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2363, metadata !DIExpression()), !dbg !2366
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !2364, metadata !DIExpression()), !dbg !2367
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2368
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2365, metadata !DIExpression()), !dbg !2369
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !2370
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 0, !dbg !2372
  %1 = load ptr, ptr %mbox, align 8, !dbg !2372
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %1, i32 0, i32 1, !dbg !2373
  %2 = load ptr, ptr %ops, align 8, !dbg !2373
  %flush = getelementptr inbounds %struct.mbox_chan_ops, ptr %2, i32 0, i32 1, !dbg !2374
  %3 = load ptr, ptr %flush, align 8, !dbg !2374
  %tobool = icmp ne ptr %3, null, !dbg !2370
  br i1 %tobool, label %if.end, label %if.then, !dbg !2375

if.then:                                          ; preds = %entry
  store i32 -524, ptr %retval, align 4, !dbg !2376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2376

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %chan.addr, align 8, !dbg !2377
  %mbox1 = getelementptr inbounds %struct.mbox_chan, ptr %4, i32 0, i32 0, !dbg !2378
  %5 = load ptr, ptr %mbox1, align 8, !dbg !2378
  %ops2 = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 1, !dbg !2379
  %6 = load ptr, ptr %ops2, align 8, !dbg !2379
  %flush3 = getelementptr inbounds %struct.mbox_chan_ops, ptr %6, i32 0, i32 1, !dbg !2380
  %7 = load ptr, ptr %flush3, align 8, !dbg !2380
  %8 = load ptr, ptr %chan.addr, align 8, !dbg !2381
  %9 = load i64, ptr %timeout.addr, align 8, !dbg !2382
  %call = call i32 %7(ptr noundef %8, i64 noundef %9) #10, !dbg !2377
  store i32 %call, ptr %ret, align 4, !dbg !2383
  %10 = load i32, ptr %ret, align 4, !dbg !2384
  %cmp = icmp slt i32 %10, 0, !dbg !2386
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !2387

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %chan.addr, align 8, !dbg !2388
  %12 = load i32, ptr %ret, align 4, !dbg !2389
  call void @tx_tick(ptr noundef %11, i32 noundef %12) #10, !dbg !2390
  br label %if.end5, !dbg !2390

if.end5:                                          ; preds = %if.then4, %if.end
  %13 = load i32, ptr %ret, align 4, !dbg !2391
  store i32 %13, ptr %retval, align 4, !dbg !2392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2392

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2393
  %14 = load i32, ptr %retval, align 4, !dbg !2393
  ret i32 %14, !dbg !2393
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mbox_bind_client(ptr noundef %chan, ptr noundef %cl) #0 align 16 !dbg !2394 {
entry:
  %chan.addr = alloca ptr, align 8
  %cl.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2398, metadata !DIExpression()), !dbg !2401
  store ptr %cl, ptr %cl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cl.addr, metadata !2399, metadata !DIExpression()), !dbg !2402
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2403
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @mutex_lock(ptr noundef @con_mutex) #10, !dbg !2405
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !2406
  %1 = load ptr, ptr %cl.addr, align 8, !dbg !2407
  %call = call i32 @__mbox_bind_client(ptr noundef %0, ptr noundef %1) #10, !dbg !2408
  store i32 %call, ptr %ret, align 4, !dbg !2409
  call void @mutex_unlock(ptr noundef @con_mutex) #10, !dbg !2410
  %2 = load i32, ptr %ret, align 4, !dbg !2411
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2412
  ret i32 %2, !dbg !2413
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2414 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__mbox_bind_client(ptr noundef %chan, ptr noundef %cl) #0 align 16 !dbg !2418 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %cl.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2420, metadata !DIExpression()), !dbg !2430
  store ptr %cl, ptr %cl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cl.addr, metadata !2421, metadata !DIExpression()), !dbg !2431
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !2432
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2422, metadata !DIExpression()), !dbg !2433
  %0 = load ptr, ptr %cl.addr, align 8, !dbg !2434
  %dev1 = getelementptr inbounds %struct.mbox_client, ptr %0, i32 0, i32 0, !dbg !2435
  %1 = load ptr, ptr %dev1, align 8, !dbg !2435
  store ptr %1, ptr %dev, align 8, !dbg !2433
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !2436
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2423, metadata !DIExpression()), !dbg !2437
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2438
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2424, metadata !DIExpression()), !dbg !2439
  %2 = load ptr, ptr %chan.addr, align 8, !dbg !2440
  %cl2 = getelementptr inbounds %struct.mbox_chan, ptr %2, i32 0, i32 2, !dbg !2442
  %3 = load ptr, ptr %cl2, align 8, !dbg !2442
  %tobool = icmp ne ptr %3, null, !dbg !2440
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2443

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %chan.addr, align 8, !dbg !2444
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %4, i32 0, i32 0, !dbg !2445
  %5 = load ptr, ptr %mbox, align 8, !dbg !2445
  %dev3 = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 0, !dbg !2446
  %6 = load ptr, ptr %dev3, align 8, !dbg !2446
  %driver = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 6, !dbg !2447
  %7 = load ptr, ptr %driver, align 8, !dbg !2447
  %owner = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 2, !dbg !2448
  %8 = load ptr, ptr %owner, align 8, !dbg !2448
  %call = call zeroext i1 @try_module_get(ptr noundef %8) #10, !dbg !2449
  br i1 %call, label %if.end, label %if.then, !dbg !2450

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -16, ptr %retval, align 4, !dbg !2451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2451

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !2453

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2454

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2425, metadata !DIExpression()), !dbg !2455
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2429, metadata !DIExpression()), !dbg !2455
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2455
  %conv = zext i1 %cmp to i32, !dbg !2455
  store i32 1, ptr %tmp, align 4, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !2456
  %9 = load i32, ptr %tmp, align 4, !dbg !2455
  %10 = load ptr, ptr %chan.addr, align 8, !dbg !2456
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %10, i32 0, i32 8, !dbg !2456
  %call5 = call ptr @spinlock_check(ptr noundef %lock) #10, !dbg !2456
  %call6 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call5) #10, !dbg !2456
  store i64 %call6, ptr %flags, align 8, !dbg !2456
  br label %do.cond, !dbg !2456

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !2456

do.end:                                           ; preds = %do.cond
  br label %do.cond7, !dbg !2454

do.cond7:                                         ; preds = %do.end
  br label %do.end8, !dbg !2454

do.end8:                                          ; preds = %do.cond7
  %11 = load ptr, ptr %chan.addr, align 8, !dbg !2457
  %msg_free = getelementptr inbounds %struct.mbox_chan, ptr %11, i32 0, i32 6, !dbg !2458
  store i32 0, ptr %msg_free, align 4, !dbg !2459
  %12 = load ptr, ptr %chan.addr, align 8, !dbg !2460
  %msg_count = getelementptr inbounds %struct.mbox_chan, ptr %12, i32 0, i32 5, !dbg !2461
  store i32 0, ptr %msg_count, align 8, !dbg !2462
  %13 = load ptr, ptr %chan.addr, align 8, !dbg !2463
  %active_req = getelementptr inbounds %struct.mbox_chan, ptr %13, i32 0, i32 4, !dbg !2464
  store ptr null, ptr %active_req, align 8, !dbg !2465
  %14 = load ptr, ptr %cl.addr, align 8, !dbg !2466
  %15 = load ptr, ptr %chan.addr, align 8, !dbg !2467
  %cl9 = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 2, !dbg !2468
  store ptr %14, ptr %cl9, align 8, !dbg !2469
  %16 = load ptr, ptr %chan.addr, align 8, !dbg !2470
  %tx_complete = getelementptr inbounds %struct.mbox_chan, ptr %16, i32 0, i32 3, !dbg !2471
  call void @init_completion(ptr noundef %tx_complete) #10, !dbg !2472
  %17 = load ptr, ptr %chan.addr, align 8, !dbg !2473
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %17, i32 0, i32 1, !dbg !2475
  %18 = load i32, ptr %txdone_method, align 8, !dbg !2475
  %conv10 = zext i32 %18 to i64, !dbg !2473
  %cmp11 = icmp eq i64 %conv10, 2, !dbg !2476
  br i1 %cmp11, label %land.lhs.true, label %if.end17, !dbg !2477

land.lhs.true:                                    ; preds = %do.end8
  %19 = load ptr, ptr %cl.addr, align 8, !dbg !2478
  %knows_txdone = getelementptr inbounds %struct.mbox_client, ptr %19, i32 0, i32 3, !dbg !2479
  %20 = load i8, ptr %knows_txdone, align 8, !dbg !2479, !range !2031, !noundef !345
  %tobool13 = trunc i8 %20 to i1, !dbg !2479
  br i1 %tobool13, label %if.then15, label %if.end17, !dbg !2480

if.then15:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %chan.addr, align 8, !dbg !2481
  %txdone_method16 = getelementptr inbounds %struct.mbox_chan, ptr %21, i32 0, i32 1, !dbg !2482
  store i32 4, ptr %txdone_method16, align 8, !dbg !2483
  br label %if.end17, !dbg !2481

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %do.end8
  %22 = load ptr, ptr %chan.addr, align 8, !dbg !2484
  %lock18 = getelementptr inbounds %struct.mbox_chan, ptr %22, i32 0, i32 8, !dbg !2485
  %23 = load i64, ptr %flags, align 8, !dbg !2486
  call void @spin_unlock_irqrestore(ptr noundef %lock18, i64 noundef %23) #10, !dbg !2487
  %24 = load ptr, ptr %chan.addr, align 8, !dbg !2488
  %mbox19 = getelementptr inbounds %struct.mbox_chan, ptr %24, i32 0, i32 0, !dbg !2490
  %25 = load ptr, ptr %mbox19, align 8, !dbg !2490
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %25, i32 0, i32 1, !dbg !2491
  %26 = load ptr, ptr %ops, align 8, !dbg !2491
  %startup = getelementptr inbounds %struct.mbox_chan_ops, ptr %26, i32 0, i32 2, !dbg !2492
  %27 = load ptr, ptr %startup, align 8, !dbg !2492
  %tobool20 = icmp ne ptr %27, null, !dbg !2488
  br i1 %tobool20, label %if.then21, label %if.end32, !dbg !2493

if.then21:                                        ; preds = %if.end17
  %28 = load ptr, ptr %chan.addr, align 8, !dbg !2494
  %mbox22 = getelementptr inbounds %struct.mbox_chan, ptr %28, i32 0, i32 0, !dbg !2496
  %29 = load ptr, ptr %mbox22, align 8, !dbg !2496
  %ops23 = getelementptr inbounds %struct.mbox_controller, ptr %29, i32 0, i32 1, !dbg !2497
  %30 = load ptr, ptr %ops23, align 8, !dbg !2497
  %startup24 = getelementptr inbounds %struct.mbox_chan_ops, ptr %30, i32 0, i32 2, !dbg !2498
  %31 = load ptr, ptr %startup24, align 8, !dbg !2498
  %32 = load ptr, ptr %chan.addr, align 8, !dbg !2499
  %call25 = call i32 %31(ptr noundef %32) #10, !dbg !2494
  store i32 %call25, ptr %ret, align 4, !dbg !2500
  %33 = load i32, ptr %ret, align 4, !dbg !2501
  %tobool26 = icmp ne i32 %33, 0, !dbg !2501
  br i1 %tobool26, label %if.then27, label %if.end31, !dbg !2503

if.then27:                                        ; preds = %if.then21
  br label %do.body28, !dbg !2504

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !2507

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !2507

do.end30:                                         ; preds = %do.cond29
  %34 = load ptr, ptr %dev, align 8, !dbg !2504
  %35 = load i32, ptr %ret, align 4, !dbg !2504
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef @.str.12, i32 noundef %35) #11, !dbg !2504
  %36 = load ptr, ptr %chan.addr, align 8, !dbg !2509
  call void @mbox_free_channel(ptr noundef %36) #10, !dbg !2510
  %37 = load i32, ptr %ret, align 4, !dbg !2511
  store i32 %37, ptr %retval, align 4, !dbg !2512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2512

if.end31:                                         ; preds = %if.then21
  br label %if.end32, !dbg !2513

if.end32:                                         ; preds = %if.end31, %if.end17
  store i32 0, ptr %retval, align 4, !dbg !2514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2514

cleanup:                                          ; preds = %if.end32, %do.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !2515
  %38 = load i32, ptr %retval, align 4, !dbg !2515
  ret i32 %38, !dbg !2515
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2516 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mbox_request_channel(ptr noundef %cl, i32 noundef %index) #0 align 16 !dbg !2517 {
entry:
  %retval = alloca ptr, align 8
  %cl.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %mbox = alloca ptr, align 8
  %spec = alloca %struct.of_phandle_args, align 8
  %chan = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__mptr20 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  store ptr %cl, ptr %cl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cl.addr, metadata !2521, metadata !DIExpression()), !dbg !2534
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2522, metadata !DIExpression()), !dbg !2535
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !2536
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2523, metadata !DIExpression()), !dbg !2537
  %0 = load ptr, ptr %cl.addr, align 8, !dbg !2538
  %dev1 = getelementptr inbounds %struct.mbox_client, ptr %0, i32 0, i32 0, !dbg !2539
  %1 = load ptr, ptr %dev1, align 8, !dbg !2539
  store ptr %1, ptr %dev, align 8, !dbg !2537
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbox) #12, !dbg !2540
  call void @llvm.dbg.declare(metadata ptr %mbox, metadata !2524, metadata !DIExpression()), !dbg !2541
  call void @llvm.lifetime.start.p0(i64 80, ptr %spec) #12, !dbg !2542
  call void @llvm.dbg.declare(metadata ptr %spec, metadata !2525, metadata !DIExpression()), !dbg !2543
  call void @llvm.lifetime.start.p0(i64 8, ptr %chan) #12, !dbg !2544
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !2526, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !2546
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2527, metadata !DIExpression()), !dbg !2547
  %2 = load ptr, ptr %dev, align 8, !dbg !2548
  %tobool = icmp ne ptr %2, null, !dbg !2548
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2550

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !2551
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 23, !dbg !2552
  %4 = load ptr, ptr %of_node, align 8, !dbg !2552
  %tobool2 = icmp ne ptr %4, null, !dbg !2551
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2553

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %tmp, align 4, !dbg !2554
  %5 = load i32, ptr %tmp, align 4, !dbg !2558
  %call = call ptr @ERR_PTR(i64 noundef -19) #10, !dbg !2559
  store ptr %call, ptr %retval, align 8, !dbg !2560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2560

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @con_mutex) #10, !dbg !2561
  %6 = load ptr, ptr %dev, align 8, !dbg !2562
  %of_node3 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 23, !dbg !2564
  %7 = load ptr, ptr %of_node3, align 8, !dbg !2564
  %8 = load i32, ptr %index.addr, align 4, !dbg !2565
  %call4 = call i32 @of_parse_phandle_with_args(ptr noundef %7, ptr noundef @.str.3, ptr noundef @.str.4, i32 noundef %8, ptr noundef %spec) #10, !dbg !2566
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2566
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !2567

if.then6:                                         ; preds = %if.end
  call void @mutex_unlock(ptr noundef @con_mutex) #10, !dbg !2568
  %call7 = call ptr @ERR_PTR(i64 noundef -19) #10, !dbg !2570
  store ptr %call7, ptr %retval, align 8, !dbg !2571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2571

if.end8:                                          ; preds = %if.end
  %call9 = call ptr @ERR_PTR(i64 noundef -517) #10, !dbg !2572
  store ptr %call9, ptr %chan, align 8, !dbg !2573
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2528, metadata !DIExpression()), !dbg !2574
  %9 = load ptr, ptr @mbox_cons, align 8, !dbg !2574
  store ptr %9, ptr %__mptr, align 8, !dbg !2574
  %10 = load ptr, ptr %__mptr, align 8, !dbg !2574
  %add.ptr = getelementptr i8, ptr %10, i64 -120, !dbg !2574
  store ptr %add.ptr, ptr %tmp10, align 8, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2575
  %11 = load ptr, ptr %tmp10, align 8, !dbg !2574
  store ptr %11, ptr %mbox, align 8, !dbg !2575
  br label %for.cond, !dbg !2575

for.cond:                                         ; preds = %for.inc, %if.end8
  %12 = load ptr, ptr %mbox, align 8, !dbg !2576
  %node = getelementptr inbounds %struct.mbox_controller, ptr %12, i32 0, i32 10, !dbg !2576
  %cmp = icmp eq ptr %node, @mbox_cons, !dbg !2576
  %lnot = xor i1 %cmp, true, !dbg !2576
  br i1 %lnot, label %for.body, label %for.end, !dbg !2575

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %mbox, align 8, !dbg !2577
  %dev11 = getelementptr inbounds %struct.mbox_controller, ptr %13, i32 0, i32 0, !dbg !2579
  %14 = load ptr, ptr %dev11, align 8, !dbg !2579
  %of_node12 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 23, !dbg !2580
  %15 = load ptr, ptr %of_node12, align 8, !dbg !2580
  %np = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 0, !dbg !2581
  %16 = load ptr, ptr %np, align 8, !dbg !2581
  %cmp13 = icmp eq ptr %15, %16, !dbg !2582
  br i1 %cmp13, label %if.then14, label %if.end19, !dbg !2583

if.then14:                                        ; preds = %for.body
  %17 = load ptr, ptr %mbox, align 8, !dbg !2584
  %of_xlate = getelementptr inbounds %struct.mbox_controller, ptr %17, i32 0, i32 7, !dbg !2586
  %18 = load ptr, ptr %of_xlate, align 8, !dbg !2586
  %19 = load ptr, ptr %mbox, align 8, !dbg !2587
  %call15 = call ptr %18(ptr noundef %19, ptr noundef %spec) #10, !dbg !2584
  store ptr %call15, ptr %chan, align 8, !dbg !2588
  %20 = load ptr, ptr %chan, align 8, !dbg !2589
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %20) #10, !dbg !2591
  br i1 %call16, label %if.end18, label %if.then17, !dbg !2592

if.then17:                                        ; preds = %if.then14
  br label %for.end, !dbg !2593

if.end18:                                         ; preds = %if.then14
  br label %if.end19, !dbg !2594

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !2581

for.inc:                                          ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr20) #12, !dbg !2595
  call void @llvm.dbg.declare(metadata ptr %__mptr20, metadata !2531, metadata !DIExpression()), !dbg !2595
  %21 = load ptr, ptr %mbox, align 8, !dbg !2595
  %node21 = getelementptr inbounds %struct.mbox_controller, ptr %21, i32 0, i32 10, !dbg !2595
  %next = getelementptr inbounds %struct.list_head, ptr %node21, i32 0, i32 0, !dbg !2595
  %22 = load ptr, ptr %next, align 8, !dbg !2595
  store ptr %22, ptr %__mptr20, align 8, !dbg !2595
  %23 = load ptr, ptr %__mptr20, align 8, !dbg !2595
  %add.ptr23 = getelementptr i8, ptr %23, i64 -120, !dbg !2595
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !2595
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr20) #12, !dbg !2576
  %24 = load ptr, ptr %tmp22, align 8, !dbg !2595
  store ptr %24, ptr %mbox, align 8, !dbg !2576
  br label %for.cond, !dbg !2576, !llvm.loop !2596

for.end:                                          ; preds = %if.then17, %for.cond
  %np24 = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 0, !dbg !2600
  %25 = load ptr, ptr %np24, align 8, !dbg !2600
  call void @of_node_put(ptr noundef %25) #10, !dbg !2601
  %26 = load ptr, ptr %chan, align 8, !dbg !2602
  %call25 = call zeroext i1 @IS_ERR(ptr noundef %26) #10, !dbg !2604
  br i1 %call25, label %if.then26, label %if.end27, !dbg !2605

if.then26:                                        ; preds = %for.end
  call void @mutex_unlock(ptr noundef @con_mutex) #10, !dbg !2606
  %27 = load ptr, ptr %chan, align 8, !dbg !2608
  store ptr %27, ptr %retval, align 8, !dbg !2609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2609

if.end27:                                         ; preds = %for.end
  %28 = load ptr, ptr %chan, align 8, !dbg !2610
  %29 = load ptr, ptr %cl.addr, align 8, !dbg !2611
  %call28 = call i32 @__mbox_bind_client(ptr noundef %28, ptr noundef %29) #10, !dbg !2612
  store i32 %call28, ptr %ret, align 4, !dbg !2613
  %30 = load i32, ptr %ret, align 4, !dbg !2614
  %tobool29 = icmp ne i32 %30, 0, !dbg !2614
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !2616

if.then30:                                        ; preds = %if.end27
  %31 = load i32, ptr %ret, align 4, !dbg !2617
  %conv = sext i32 %31 to i64, !dbg !2617
  %call31 = call ptr @ERR_PTR(i64 noundef %conv) #10, !dbg !2618
  store ptr %call31, ptr %chan, align 8, !dbg !2619
  br label %if.end32, !dbg !2620

if.end32:                                         ; preds = %if.then30, %if.end27
  call void @mutex_unlock(ptr noundef @con_mutex) #10, !dbg !2621
  %32 = load ptr, ptr %chan, align 8, !dbg !2622
  store ptr %32, ptr %retval, align 8, !dbg !2623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2623

cleanup:                                          ; preds = %if.end32, %if.then26, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !2624
  call void @llvm.lifetime.end.p0(i64 8, ptr %chan) #12, !dbg !2624
  call void @llvm.lifetime.end.p0(i64 80, ptr %spec) #12, !dbg !2624
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbox) #12, !dbg !2624
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !2624
  %33 = load ptr, ptr %retval, align 8, !dbg !2624
  ret ptr %33, !dbg !2624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #7 align 16 !dbg !2625 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2630, metadata !DIExpression()), !dbg !2631
  %0 = load i64, ptr %error.addr, align 8, !dbg !2632
  %1 = inttoptr i64 %0 to ptr, !dbg !2633
  ret ptr %1, !dbg !2634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @of_parse_phandle_with_args(ptr noundef %np, ptr noundef %list_name, ptr noundef %cells_name, i32 noundef %index, ptr noundef %out_args) #7 align 16 !dbg !2635 {
entry:
  %np.addr = alloca ptr, align 8
  %list_name.addr = alloca ptr, align 8
  %cells_name.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %out_args.addr = alloca ptr, align 8
  %cell_count = alloca i32, align 4
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !2642, metadata !DIExpression()), !dbg !2648
  store ptr %list_name, ptr %list_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list_name.addr, metadata !2643, metadata !DIExpression()), !dbg !2649
  store ptr %cells_name, ptr %cells_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cells_name.addr, metadata !2644, metadata !DIExpression()), !dbg !2650
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2645, metadata !DIExpression()), !dbg !2651
  store ptr %out_args, ptr %out_args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_args.addr, metadata !2646, metadata !DIExpression()), !dbg !2652
  call void @llvm.lifetime.start.p0(i64 4, ptr %cell_count) #12, !dbg !2653
  call void @llvm.dbg.declare(metadata ptr %cell_count, metadata !2647, metadata !DIExpression()), !dbg !2654
  store i32 -1, ptr %cell_count, align 4, !dbg !2654
  %0 = load ptr, ptr %cells_name.addr, align 8, !dbg !2655
  %tobool = icmp ne ptr %0, null, !dbg !2655
  br i1 %tobool, label %if.end, label %if.then, !dbg !2657

if.then:                                          ; preds = %entry
  store i32 0, ptr %cell_count, align 4, !dbg !2658
  br label %if.end, !dbg !2659

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %np.addr, align 8, !dbg !2660
  %2 = load ptr, ptr %list_name.addr, align 8, !dbg !2661
  %3 = load ptr, ptr %cells_name.addr, align 8, !dbg !2662
  %4 = load i32, ptr %cell_count, align 4, !dbg !2663
  %5 = load i32, ptr %index.addr, align 4, !dbg !2664
  %6 = load ptr, ptr %out_args.addr, align 8, !dbg !2665
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #10, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr %cell_count) #12, !dbg !2667
  ret i32 %call, !dbg !2668
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !2669 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2673, metadata !DIExpression()), !dbg !2674
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2675
  %1 = ptrtoint ptr %0 to i64, !dbg !2675
  %2 = inttoptr i64 %1 to ptr, !dbg !2675
  %3 = ptrtoint ptr %2 to i64, !dbg !2675
  %cmp = icmp uge i64 %3, -4095, !dbg !2675
  %lnot = xor i1 %cmp, true, !dbg !2675
  %lnot1 = xor i1 %lnot, true, !dbg !2675
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2675
  %conv = sext i32 %lnot.ext to i64, !dbg !2675
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2675
  %tobool = icmp ne i64 %expval, 0, !dbg !2675
  ret i1 %tobool, !dbg !2676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @of_node_put(ptr noundef %node) #7 align 16 !dbg !2677 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2681, metadata !DIExpression()), !dbg !2682
  ret void, !dbg !2683
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mbox_request_channel_byname(ptr noundef %cl, ptr noundef %name) #0 align 16 !dbg !2684 {
entry:
  %retval = alloca ptr, align 8
  %cl.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %np = alloca ptr, align 8
  %prop = alloca ptr, align 8
  %mbox_name = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cl, ptr %cl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cl.addr, metadata !2688, metadata !DIExpression()), !dbg !2694
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2689, metadata !DIExpression()), !dbg !2695
  call void @llvm.lifetime.start.p0(i64 8, ptr %np) #12, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %np, metadata !2690, metadata !DIExpression()), !dbg !2697
  %0 = load ptr, ptr %cl.addr, align 8, !dbg !2698
  %dev = getelementptr inbounds %struct.mbox_client, ptr %0, i32 0, i32 0, !dbg !2699
  %1 = load ptr, ptr %dev, align 8, !dbg !2699
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 23, !dbg !2700
  %2 = load ptr, ptr %of_node, align 8, !dbg !2700
  store ptr %2, ptr %np, align 8, !dbg !2697
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #12, !dbg !2701
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !2691, metadata !DIExpression()), !dbg !2702
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbox_name) #12, !dbg !2703
  call void @llvm.dbg.declare(metadata ptr %mbox_name, metadata !2692, metadata !DIExpression()), !dbg !2704
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !2705
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2693, metadata !DIExpression()), !dbg !2706
  store i32 0, ptr %index, align 4, !dbg !2706
  %3 = load ptr, ptr %np, align 8, !dbg !2707
  %tobool = icmp ne ptr %3, null, !dbg !2707
  br i1 %tobool, label %if.end, label %if.then, !dbg !2709

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2710

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2713

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2713

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %cl.addr, align 8, !dbg !2710
  %dev1 = getelementptr inbounds %struct.mbox_client, ptr %4, i32 0, i32 0, !dbg !2710
  %5 = load ptr, ptr %dev1, align 8, !dbg !2710
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef @.str.5, ptr noundef @__func__.mbox_request_channel_byname) #11, !dbg !2710
  %call = call ptr @ERR_PTR(i64 noundef -22) #10, !dbg !2715
  store ptr %call, ptr %retval, align 8, !dbg !2716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2716

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %np, align 8, !dbg !2717
  %call2 = call ptr @of_get_property(ptr noundef %6, ptr noundef @.str.6, ptr noundef null) #10, !dbg !2719
  %tobool3 = icmp ne ptr %call2, null, !dbg !2719
  br i1 %tobool3, label %if.end10, label %if.then4, !dbg !2720

if.then4:                                         ; preds = %if.end
  br label %do.body5, !dbg !2721

do.body5:                                         ; preds = %if.then4
  br label %do.cond6, !dbg !2724

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2724

do.end7:                                          ; preds = %do.cond6
  %7 = load ptr, ptr %cl.addr, align 8, !dbg !2721
  %dev8 = getelementptr inbounds %struct.mbox_client, ptr %7, i32 0, i32 0, !dbg !2721
  %8 = load ptr, ptr %dev8, align 8, !dbg !2721
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef @.str.7, ptr noundef @__func__.mbox_request_channel_byname) #11, !dbg !2721
  %call9 = call ptr @ERR_PTR(i64 noundef -22) #10, !dbg !2726
  store ptr %call9, ptr %retval, align 8, !dbg !2727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2727

if.end10:                                         ; preds = %if.end
  %9 = load ptr, ptr %np, align 8, !dbg !2728
  %call11 = call ptr @of_find_property(ptr noundef %9, ptr noundef @.str.6, ptr noundef null) #10, !dbg !2728
  store ptr %call11, ptr %prop, align 8, !dbg !2728
  %10 = load ptr, ptr %prop, align 8, !dbg !2728
  %call12 = call ptr @of_prop_next_string(ptr noundef %10, ptr noundef null) #10, !dbg !2728
  store ptr %call12, ptr %mbox_name, align 8, !dbg !2728
  br label %for.cond, !dbg !2728

for.cond:                                         ; preds = %for.inc, %if.end10
  %11 = load ptr, ptr %mbox_name, align 8, !dbg !2730
  %tobool13 = icmp ne ptr %11, null, !dbg !2728
  br i1 %tobool13, label %for.body, label %for.end, !dbg !2728

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %name.addr, align 8, !dbg !2732
  %13 = load ptr, ptr %mbox_name, align 8, !dbg !2735
  %14 = load ptr, ptr %name.addr, align 8, !dbg !2736
  %call14 = call i64 @strlen(ptr noundef %14) #10, !dbg !2737
  %call15 = call i32 @strncmp(ptr noundef %12, ptr noundef %13, i64 noundef %call14) #10, !dbg !2738
  %tobool16 = icmp ne i32 %call15, 0, !dbg !2738
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !2739

if.then17:                                        ; preds = %for.body
  %15 = load ptr, ptr %cl.addr, align 8, !dbg !2740
  %16 = load i32, ptr %index, align 4, !dbg !2741
  %call18 = call ptr @mbox_request_channel(ptr noundef %15, i32 noundef %16) #10, !dbg !2742
  store ptr %call18, ptr %retval, align 8, !dbg !2743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2743

if.end19:                                         ; preds = %for.body
  %17 = load i32, ptr %index, align 4, !dbg !2744
  %inc = add i32 %17, 1, !dbg !2744
  store i32 %inc, ptr %index, align 4, !dbg !2744
  br label %for.inc, !dbg !2745

for.inc:                                          ; preds = %if.end19
  %18 = load ptr, ptr %prop, align 8, !dbg !2730
  %19 = load ptr, ptr %mbox_name, align 8, !dbg !2730
  %call20 = call ptr @of_prop_next_string(ptr noundef %18, ptr noundef %19) #10, !dbg !2730
  store ptr %call20, ptr %mbox_name, align 8, !dbg !2730
  br label %for.cond, !dbg !2730, !llvm.loop !2746

for.end:                                          ; preds = %for.cond
  br label %do.body21, !dbg !2748

do.body21:                                        ; preds = %for.end
  br label %do.cond22, !dbg !2750

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !2750

do.end23:                                         ; preds = %do.cond22
  %20 = load ptr, ptr %cl.addr, align 8, !dbg !2748
  %dev24 = getelementptr inbounds %struct.mbox_client, ptr %20, i32 0, i32 0, !dbg !2748
  %21 = load ptr, ptr %dev24, align 8, !dbg !2748
  %22 = load ptr, ptr %name.addr, align 8, !dbg !2748
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef @.str.8, ptr noundef @__func__.mbox_request_channel_byname, ptr noundef %22) #11, !dbg !2748
  %call25 = call ptr @ERR_PTR(i64 noundef -22) #10, !dbg !2752
  store ptr %call25, ptr %retval, align 8, !dbg !2753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2753

cleanup:                                          ; preds = %do.end23, %if.then17, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbox_name) #12, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #12, !dbg !2754
  call void @llvm.lifetime.end.p0(i64 8, ptr %np) #12, !dbg !2754
  %23 = load ptr, ptr %retval, align 8, !dbg !2754
  ret ptr %23, !dbg !2754
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_get_property(ptr noundef %node, ptr noundef %name, ptr noundef %lenp) #7 align 16 !dbg !2755 {
entry:
  %node.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2759, metadata !DIExpression()), !dbg !2762
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2760, metadata !DIExpression()), !dbg !2763
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !2761, metadata !DIExpression()), !dbg !2764
  ret ptr null, !dbg !2765
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_find_property(ptr noundef %np, ptr noundef %name, ptr noundef %lenp) #7 align 16 !dbg !2766 {
entry:
  %np.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !2770, metadata !DIExpression()), !dbg !2773
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2771, metadata !DIExpression()), !dbg !2774
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !2772, metadata !DIExpression()), !dbg !2775
  ret ptr null, !dbg !2776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_prop_next_string(ptr noundef %prop, ptr noundef %cur) #7 align 16 !dbg !2777 {
entry:
  %prop.addr = alloca ptr, align 8
  %cur.addr = alloca ptr, align 8
  store ptr %prop, ptr %prop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prop.addr, metadata !2781, metadata !DIExpression()), !dbg !2783
  store ptr %cur, ptr %cur.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cur.addr, metadata !2782, metadata !DIExpression()), !dbg !2784
  ret ptr null, !dbg !2785
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2786 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2790 dso_local i64 @strlen(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mbox_free_channel(ptr noundef %chan) #0 align 16 !dbg !2793 {
entry:
  %chan.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2795, metadata !DIExpression()), !dbg !2802
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !2803
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2796, metadata !DIExpression()), !dbg !2804
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !2805
  %tobool = icmp ne ptr %0, null, !dbg !2805
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2807

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %chan.addr, align 8, !dbg !2808
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %1, i32 0, i32 2, !dbg !2809
  %2 = load ptr, ptr %cl, align 8, !dbg !2809
  %tobool1 = icmp ne ptr %2, null, !dbg !2808
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2810

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2811

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !2812
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %3, i32 0, i32 0, !dbg !2814
  %4 = load ptr, ptr %mbox, align 8, !dbg !2814
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %4, i32 0, i32 1, !dbg !2815
  %5 = load ptr, ptr %ops, align 8, !dbg !2815
  %shutdown = getelementptr inbounds %struct.mbox_chan_ops, ptr %5, i32 0, i32 3, !dbg !2816
  %6 = load ptr, ptr %shutdown, align 8, !dbg !2816
  %tobool2 = icmp ne ptr %6, null, !dbg !2812
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !2817

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %chan.addr, align 8, !dbg !2818
  %mbox4 = getelementptr inbounds %struct.mbox_chan, ptr %7, i32 0, i32 0, !dbg !2819
  %8 = load ptr, ptr %mbox4, align 8, !dbg !2819
  %ops5 = getelementptr inbounds %struct.mbox_controller, ptr %8, i32 0, i32 1, !dbg !2820
  %9 = load ptr, ptr %ops5, align 8, !dbg !2820
  %shutdown6 = getelementptr inbounds %struct.mbox_chan_ops, ptr %9, i32 0, i32 3, !dbg !2821
  %10 = load ptr, ptr %shutdown6, align 8, !dbg !2821
  %11 = load ptr, ptr %chan.addr, align 8, !dbg !2822
  call void %10(ptr noundef %11) #10, !dbg !2818
  br label %if.end7, !dbg !2818

if.end7:                                          ; preds = %if.then3, %if.end
  br label %do.body, !dbg !2823

do.body:                                          ; preds = %if.end7
  br label %do.body8, !dbg !2824

do.body8:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2797, metadata !DIExpression()), !dbg !2825
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2801, metadata !DIExpression()), !dbg !2825
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2825
  %conv = zext i1 %cmp to i32, !dbg !2825
  store i32 1, ptr %tmp, align 4, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !2826
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !2826
  %12 = load i32, ptr %tmp, align 4, !dbg !2825
  %13 = load ptr, ptr %chan.addr, align 8, !dbg !2826
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %13, i32 0, i32 8, !dbg !2826
  %call = call ptr @spinlock_check(ptr noundef %lock) #10, !dbg !2826
  %call9 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #10, !dbg !2826
  store i64 %call9, ptr %flags, align 8, !dbg !2826
  br label %do.cond, !dbg !2826

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !2826

do.end:                                           ; preds = %do.cond
  br label %do.cond10, !dbg !2824

do.cond10:                                        ; preds = %do.end
  br label %do.end11, !dbg !2824

do.end11:                                         ; preds = %do.cond10
  %14 = load ptr, ptr %chan.addr, align 8, !dbg !2827
  %cl12 = getelementptr inbounds %struct.mbox_chan, ptr %14, i32 0, i32 2, !dbg !2828
  store ptr null, ptr %cl12, align 8, !dbg !2829
  %15 = load ptr, ptr %chan.addr, align 8, !dbg !2830
  %active_req = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 4, !dbg !2831
  store ptr null, ptr %active_req, align 8, !dbg !2832
  %16 = load ptr, ptr %chan.addr, align 8, !dbg !2833
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %16, i32 0, i32 1, !dbg !2835
  %17 = load i32, ptr %txdone_method, align 8, !dbg !2835
  %conv13 = zext i32 %17 to i64, !dbg !2833
  %cmp14 = icmp eq i64 %conv13, 4, !dbg !2836
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !2837

if.then16:                                        ; preds = %do.end11
  %18 = load ptr, ptr %chan.addr, align 8, !dbg !2838
  %txdone_method17 = getelementptr inbounds %struct.mbox_chan, ptr %18, i32 0, i32 1, !dbg !2839
  store i32 2, ptr %txdone_method17, align 8, !dbg !2840
  br label %if.end18, !dbg !2838

if.end18:                                         ; preds = %if.then16, %do.end11
  %19 = load ptr, ptr %chan.addr, align 8, !dbg !2841
  %mbox19 = getelementptr inbounds %struct.mbox_chan, ptr %19, i32 0, i32 0, !dbg !2842
  %20 = load ptr, ptr %mbox19, align 8, !dbg !2842
  %dev = getelementptr inbounds %struct.mbox_controller, ptr %20, i32 0, i32 0, !dbg !2843
  %21 = load ptr, ptr %dev, align 8, !dbg !2843
  %driver = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 6, !dbg !2844
  %22 = load ptr, ptr %driver, align 8, !dbg !2844
  %owner = getelementptr inbounds %struct.device_driver, ptr %22, i32 0, i32 2, !dbg !2845
  %23 = load ptr, ptr %owner, align 8, !dbg !2845
  call void @module_put(ptr noundef %23) #10, !dbg !2846
  %24 = load ptr, ptr %chan.addr, align 8, !dbg !2847
  %lock20 = getelementptr inbounds %struct.mbox_chan, ptr %24, i32 0, i32 8, !dbg !2848
  %25 = load i64, ptr %flags, align 8, !dbg !2849
  call void @spin_unlock_irqrestore(ptr noundef %lock20, i64 noundef %25) #10, !dbg !2850
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2851
  br label %cleanup, !dbg !2851

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !2851
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2851

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2852 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !2857 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2863, metadata !DIExpression()), !dbg !2864
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2865
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2866
  ret ptr %1, !dbg !2867
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2868 dso_local void @module_put(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !2869 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2873, metadata !DIExpression()), !dbg !2879
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2874, metadata !DIExpression()), !dbg !2880
  br label %do.body, !dbg !2881

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !2882
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2875, metadata !DIExpression()), !dbg !2882
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !2882
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2878, metadata !DIExpression()), !dbg !2882
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2882
  %conv = zext i1 %cmp to i32, !dbg !2882
  store i32 1, ptr %tmp, align 4, !dbg !2882
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !2883
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !2883
  %0 = load i32, ptr %tmp, align 4, !dbg !2882
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2883
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !2883
  %3 = load i64, ptr %flags.addr, align 8, !dbg !2883
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #10, !dbg !2883
  br label %do.end, !dbg !2883

do.end:                                           ; preds = %do.body
  ret void, !dbg !2884
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mbox_controller_register(ptr noundef %mbox) #0 align 16 !dbg !2885 {
entry:
  %retval = alloca i32, align 4
  %mbox.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %txdone = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %chan = alloca ptr, align 8
  %.compoundliteral33 = alloca %struct.spinlock, align 4
  store ptr %mbox, ptr %mbox.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbox.addr, metadata !2889, metadata !DIExpression()), !dbg !2896
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2897
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2890, metadata !DIExpression()), !dbg !2898
  call void @llvm.lifetime.start.p0(i64 4, ptr %txdone) #12, !dbg !2897
  call void @llvm.dbg.declare(metadata ptr %txdone, metadata !2891, metadata !DIExpression()), !dbg !2899
  %0 = load ptr, ptr %mbox.addr, align 8, !dbg !2900
  %tobool = icmp ne ptr %0, null, !dbg !2900
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2902

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %mbox.addr, align 8, !dbg !2903
  %dev = getelementptr inbounds %struct.mbox_controller, ptr %1, i32 0, i32 0, !dbg !2904
  %2 = load ptr, ptr %dev, align 8, !dbg !2904
  %tobool1 = icmp ne ptr %2, null, !dbg !2903
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2905

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %mbox.addr, align 8, !dbg !2906
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 1, !dbg !2907
  %4 = load ptr, ptr %ops, align 8, !dbg !2907
  %tobool3 = icmp ne ptr %4, null, !dbg !2906
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !2908

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %mbox.addr, align 8, !dbg !2909
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 3, !dbg !2910
  %6 = load i32, ptr %num_chans, align 8, !dbg !2910
  %tobool5 = icmp ne i32 %6, 0, !dbg !2909
  br i1 %tobool5, label %if.end, label %if.then, !dbg !2911

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2912

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %mbox.addr, align 8, !dbg !2913
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %7, i32 0, i32 4, !dbg !2915
  %8 = load i8, ptr %txdone_irq, align 4, !dbg !2915, !range !2031, !noundef !345
  %tobool6 = trunc i8 %8 to i1, !dbg !2915
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !2916

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %txdone, align 4, !dbg !2917
  br label %if.end12, !dbg !2918

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %mbox.addr, align 8, !dbg !2919
  %txdone_poll = getelementptr inbounds %struct.mbox_controller, ptr %9, i32 0, i32 5, !dbg !2921
  %10 = load i8, ptr %txdone_poll, align 1, !dbg !2921, !range !2031, !noundef !345
  %tobool8 = trunc i8 %10 to i1, !dbg !2921
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !2922

if.then9:                                         ; preds = %if.else
  store i32 2, ptr %txdone, align 4, !dbg !2923
  br label %if.end11, !dbg !2924

if.else10:                                        ; preds = %if.else
  store i32 4, ptr %txdone, align 4, !dbg !2925
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then7
  %11 = load i32, ptr %txdone, align 4, !dbg !2926
  %conv = sext i32 %11 to i64, !dbg !2926
  %cmp = icmp eq i64 %conv, 2, !dbg !2928
  br i1 %cmp, label %if.then14, label %if.end25, !dbg !2929

if.then14:                                        ; preds = %if.end12
  %12 = load ptr, ptr %mbox.addr, align 8, !dbg !2930
  %ops15 = getelementptr inbounds %struct.mbox_controller, ptr %12, i32 0, i32 1, !dbg !2933
  %13 = load ptr, ptr %ops15, align 8, !dbg !2933
  %last_tx_done = getelementptr inbounds %struct.mbox_chan_ops, ptr %13, i32 0, i32 4, !dbg !2934
  %14 = load ptr, ptr %last_tx_done, align 8, !dbg !2934
  %tobool16 = icmp ne ptr %14, null, !dbg !2930
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !2935

if.then17:                                        ; preds = %if.then14
  br label %do.body, !dbg !2936

do.body:                                          ; preds = %if.then17
  br label %do.cond, !dbg !2939

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2939

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %mbox.addr, align 8, !dbg !2936
  %dev18 = getelementptr inbounds %struct.mbox_controller, ptr %15, i32 0, i32 0, !dbg !2936
  %16 = load ptr, ptr %dev18, align 8, !dbg !2936
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef @.str.9) #11, !dbg !2936
  store i32 -22, ptr %retval, align 4, !dbg !2941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2941

if.end19:                                         ; preds = %if.then14
  %17 = load ptr, ptr %mbox.addr, align 8, !dbg !2942
  %poll_hrt = getelementptr inbounds %struct.mbox_controller, ptr %17, i32 0, i32 8, !dbg !2943
  call void @hrtimer_init(ptr noundef %poll_hrt, i32 noundef 1, i32 noundef 1) #10, !dbg !2944
  %18 = load ptr, ptr %mbox.addr, align 8, !dbg !2945
  %poll_hrt20 = getelementptr inbounds %struct.mbox_controller, ptr %18, i32 0, i32 8, !dbg !2946
  %function = getelementptr inbounds %struct.hrtimer, ptr %poll_hrt20, i32 0, i32 2, !dbg !2947
  store ptr @txdone_hrtimer, ptr %function, align 8, !dbg !2948
  br label %do.body21, !dbg !2949

do.body21:                                        ; preds = %if.end19
  %19 = load ptr, ptr %mbox.addr, align 8, !dbg !2950
  %poll_hrt_lock = getelementptr inbounds %struct.mbox_controller, ptr %19, i32 0, i32 9, !dbg !2950
  %call = call ptr @spinlock_check(ptr noundef %poll_hrt_lock) #10, !dbg !2950
  %20 = load ptr, ptr %mbox.addr, align 8, !dbg !2950
  %poll_hrt_lock22 = getelementptr inbounds %struct.mbox_controller, ptr %20, i32 0, i32 9, !dbg !2950
  %21 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2950
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %21, i32 0, i32 0, !dbg !2950
  %22 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2950
  %counter = getelementptr inbounds %struct.atomic_t, ptr %22, i32 0, i32 0, !dbg !2950
  store i32 0, ptr %counter, align 4, !dbg !2950
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %poll_hrt_lock22, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2950
  br label %do.cond23, !dbg !2950

do.cond23:                                        ; preds = %do.body21
  br label %do.end24, !dbg !2950

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !2952

if.end25:                                         ; preds = %do.end24, %if.end12
  store i32 0, ptr %i, align 4, !dbg !2953
  br label %for.cond, !dbg !2954

for.cond:                                         ; preds = %for.inc, %if.end25
  %23 = load i32, ptr %i, align 4, !dbg !2955
  %24 = load ptr, ptr %mbox.addr, align 8, !dbg !2956
  %num_chans26 = getelementptr inbounds %struct.mbox_controller, ptr %24, i32 0, i32 3, !dbg !2957
  %25 = load i32, ptr %num_chans26, align 8, !dbg !2957
  %cmp27 = icmp slt i32 %23, %25, !dbg !2958
  br i1 %cmp27, label %for.body, label %for.end, !dbg !2959

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %chan) #12, !dbg !2960
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !2892, metadata !DIExpression()), !dbg !2961
  %26 = load ptr, ptr %mbox.addr, align 8, !dbg !2962
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %26, i32 0, i32 2, !dbg !2963
  %27 = load ptr, ptr %chans, align 8, !dbg !2963
  %28 = load i32, ptr %i, align 4, !dbg !2964
  %idxprom = sext i32 %28 to i64, !dbg !2962
  %arrayidx = getelementptr %struct.mbox_chan, ptr %27, i64 %idxprom, !dbg !2962
  store ptr %arrayidx, ptr %chan, align 8, !dbg !2961
  %29 = load ptr, ptr %chan, align 8, !dbg !2965
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %29, i32 0, i32 2, !dbg !2966
  store ptr null, ptr %cl, align 8, !dbg !2967
  %30 = load ptr, ptr %mbox.addr, align 8, !dbg !2968
  %31 = load ptr, ptr %chan, align 8, !dbg !2969
  %mbox29 = getelementptr inbounds %struct.mbox_chan, ptr %31, i32 0, i32 0, !dbg !2970
  store ptr %30, ptr %mbox29, align 8, !dbg !2971
  %32 = load i32, ptr %txdone, align 4, !dbg !2972
  %33 = load ptr, ptr %chan, align 8, !dbg !2973
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %33, i32 0, i32 1, !dbg !2974
  store i32 %32, ptr %txdone_method, align 8, !dbg !2975
  br label %do.body30, !dbg !2976

do.body30:                                        ; preds = %for.body
  %34 = load ptr, ptr %chan, align 8, !dbg !2977
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %34, i32 0, i32 8, !dbg !2977
  %call31 = call ptr @spinlock_check(ptr noundef %lock) #10, !dbg !2977
  %35 = load ptr, ptr %chan, align 8, !dbg !2977
  %lock32 = getelementptr inbounds %struct.mbox_chan, ptr %35, i32 0, i32 8, !dbg !2977
  %36 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral33, i32 0, i32 0, !dbg !2977
  %raw_lock34 = getelementptr inbounds %struct.raw_spinlock, ptr %36, i32 0, i32 0, !dbg !2977
  %37 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock34, i32 0, i32 0, !dbg !2977
  %counter35 = getelementptr inbounds %struct.atomic_t, ptr %37, i32 0, i32 0, !dbg !2977
  store i32 0, ptr %counter35, align 4, !dbg !2977
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock32, ptr align 4 %.compoundliteral33, i64 4, i1 false), !dbg !2977
  br label %do.cond36, !dbg !2977

do.cond36:                                        ; preds = %do.body30
  br label %do.end37, !dbg !2977

do.end37:                                         ; preds = %do.cond36
  call void @llvm.lifetime.end.p0(i64 8, ptr %chan) #12, !dbg !2979
  br label %for.inc, !dbg !2980

for.inc:                                          ; preds = %do.end37
  %38 = load i32, ptr %i, align 4, !dbg !2981
  %inc = add i32 %38, 1, !dbg !2981
  store i32 %inc, ptr %i, align 4, !dbg !2981
  br label %for.cond, !dbg !2982, !llvm.loop !2983

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %mbox.addr, align 8, !dbg !2985
  %of_xlate = getelementptr inbounds %struct.mbox_controller, ptr %39, i32 0, i32 7, !dbg !2987
  %40 = load ptr, ptr %of_xlate, align 8, !dbg !2987
  %tobool38 = icmp ne ptr %40, null, !dbg !2985
  br i1 %tobool38, label %if.end41, label %if.then39, !dbg !2988

if.then39:                                        ; preds = %for.end
  %41 = load ptr, ptr %mbox.addr, align 8, !dbg !2989
  %of_xlate40 = getelementptr inbounds %struct.mbox_controller, ptr %41, i32 0, i32 7, !dbg !2990
  store ptr @of_mbox_index_xlate, ptr %of_xlate40, align 8, !dbg !2991
  br label %if.end41, !dbg !2989

if.end41:                                         ; preds = %if.then39, %for.end
  call void @mutex_lock(ptr noundef @con_mutex) #10, !dbg !2992
  %42 = load ptr, ptr %mbox.addr, align 8, !dbg !2993
  %node = getelementptr inbounds %struct.mbox_controller, ptr %42, i32 0, i32 10, !dbg !2994
  call void @list_add_tail(ptr noundef %node, ptr noundef @mbox_cons) #10, !dbg !2995
  call void @mutex_unlock(ptr noundef @con_mutex) #10, !dbg !2996
  store i32 0, ptr %retval, align 4, !dbg !2997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2997

cleanup:                                          ; preds = %if.end41, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %txdone) #12, !dbg !2998
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2998
  %43 = load i32, ptr %retval, align 4, !dbg !2998
  ret i32 %43, !dbg !2998
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2999 dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @txdone_hrtimer(ptr noundef %hrtimer) #0 align 16 !dbg !3002 {
entry:
  %retval = alloca i32, align 4
  %hrtimer.addr = alloca ptr, align 8
  %mbox = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %txdone = alloca i8, align 1
  %resched = alloca i8, align 1
  %i = alloca i32, align 4
  %flags = alloca i64, align 8
  %chan = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hrtimer, ptr %hrtimer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hrtimer.addr, metadata !3004, metadata !DIExpression()), !dbg !3023
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbox) #12, !dbg !3024
  call void @llvm.dbg.declare(metadata ptr %mbox, metadata !3005, metadata !DIExpression()), !dbg !3025
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !3026
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3006, metadata !DIExpression()), !dbg !3026
  %0 = load ptr, ptr %hrtimer.addr, align 8, !dbg !3026
  store ptr %0, ptr %__mptr, align 8, !dbg !3026
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3026
  %add.ptr = getelementptr i8, ptr %1, i64 -48, !dbg !3026
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3026
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !3027
  %2 = load ptr, ptr %tmp, align 8, !dbg !3026
  store ptr %2, ptr %mbox, align 8, !dbg !3025
  call void @llvm.lifetime.start.p0(i64 1, ptr %txdone) #12, !dbg !3028
  call void @llvm.dbg.declare(metadata ptr %txdone, metadata !3008, metadata !DIExpression()), !dbg !3029
  call void @llvm.lifetime.start.p0(i64 1, ptr %resched) #12, !dbg !3028
  call void @llvm.dbg.declare(metadata ptr %resched, metadata !3009, metadata !DIExpression()), !dbg !3030
  store i8 0, ptr %resched, align 1, !dbg !3030
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3031
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3010, metadata !DIExpression()), !dbg !3032
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !3033
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3011, metadata !DIExpression()), !dbg !3034
  store i32 0, ptr %i, align 4, !dbg !3035
  br label %for.cond, !dbg !3036

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !3037
  %4 = load ptr, ptr %mbox, align 8, !dbg !3038
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %4, i32 0, i32 3, !dbg !3039
  %5 = load i32, ptr %num_chans, align 8, !dbg !3039
  %cmp = icmp slt i32 %3, %5, !dbg !3040
  br i1 %cmp, label %for.body, label %for.end, !dbg !3041

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %chan) #12, !dbg !3042
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !3012, metadata !DIExpression()), !dbg !3043
  %6 = load ptr, ptr %mbox, align 8, !dbg !3044
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %6, i32 0, i32 2, !dbg !3045
  %7 = load ptr, ptr %chans, align 8, !dbg !3045
  %8 = load i32, ptr %i, align 4, !dbg !3046
  %idxprom = sext i32 %8 to i64, !dbg !3044
  %arrayidx = getelementptr %struct.mbox_chan, ptr %7, i64 %idxprom, !dbg !3044
  store ptr %arrayidx, ptr %chan, align 8, !dbg !3043
  %9 = load ptr, ptr %chan, align 8, !dbg !3047
  %active_req = getelementptr inbounds %struct.mbox_chan, ptr %9, i32 0, i32 4, !dbg !3049
  %10 = load ptr, ptr %active_req, align 8, !dbg !3049
  %tobool = icmp ne ptr %10, null, !dbg !3047
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !3050

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %chan, align 8, !dbg !3051
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %11, i32 0, i32 2, !dbg !3052
  %12 = load ptr, ptr %cl, align 8, !dbg !3052
  %tobool1 = icmp ne ptr %12, null, !dbg !3051
  br i1 %tobool1, label %if.then, label %if.end5, !dbg !3053

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %chan, align 8, !dbg !3054
  %mbox2 = getelementptr inbounds %struct.mbox_chan, ptr %13, i32 0, i32 0, !dbg !3056
  %14 = load ptr, ptr %mbox2, align 8, !dbg !3056
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %14, i32 0, i32 1, !dbg !3057
  %15 = load ptr, ptr %ops, align 8, !dbg !3057
  %last_tx_done = getelementptr inbounds %struct.mbox_chan_ops, ptr %15, i32 0, i32 4, !dbg !3058
  %16 = load ptr, ptr %last_tx_done, align 8, !dbg !3058
  %17 = load ptr, ptr %chan, align 8, !dbg !3059
  %call = call zeroext i1 %16(ptr noundef %17) #10, !dbg !3054
  %frombool = zext i1 %call to i8, !dbg !3060
  store i8 %frombool, ptr %txdone, align 1, !dbg !3060
  %18 = load i8, ptr %txdone, align 1, !dbg !3061, !range !2031, !noundef !345
  %tobool3 = trunc i8 %18 to i1, !dbg !3061
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !3063

if.then4:                                         ; preds = %if.then
  %19 = load ptr, ptr %chan, align 8, !dbg !3064
  call void @tx_tick(ptr noundef %19, i32 noundef 0) #10, !dbg !3065
  br label %if.end, !dbg !3065

if.else:                                          ; preds = %if.then
  store i8 1, ptr %resched, align 1, !dbg !3066
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end5, !dbg !3067

if.end5:                                          ; preds = %if.end, %land.lhs.true, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %chan) #12, !dbg !3068
  br label %for.inc, !dbg !3069

for.inc:                                          ; preds = %if.end5
  %20 = load i32, ptr %i, align 4, !dbg !3070
  %inc = add i32 %20, 1, !dbg !3070
  store i32 %inc, ptr %i, align 4, !dbg !3070
  br label %for.cond, !dbg !3071, !llvm.loop !3072

for.end:                                          ; preds = %for.cond
  %21 = load i8, ptr %resched, align 1, !dbg !3074, !range !2031, !noundef !345
  %tobool6 = trunc i8 %21 to i1, !dbg !3074
  br i1 %tobool6, label %if.then7, label %if.end22, !dbg !3075

if.then7:                                         ; preds = %for.end
  br label %do.body, !dbg !3076

do.body:                                          ; preds = %if.then7
  br label %do.body8, !dbg !3077

do.body8:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !3078
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3016, metadata !DIExpression()), !dbg !3078
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !3078
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3022, metadata !DIExpression()), !dbg !3078
  %cmp9 = icmp eq ptr %__dummy, %__dummy2, !dbg !3078
  %conv = zext i1 %cmp9 to i32, !dbg !3078
  store i32 1, ptr %tmp10, align 4, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !3079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !3079
  %22 = load i32, ptr %tmp10, align 4, !dbg !3078
  %23 = load ptr, ptr %mbox, align 8, !dbg !3079
  %poll_hrt_lock = getelementptr inbounds %struct.mbox_controller, ptr %23, i32 0, i32 9, !dbg !3079
  %call11 = call ptr @spinlock_check(ptr noundef %poll_hrt_lock) #10, !dbg !3079
  %call12 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call11) #10, !dbg !3079
  store i64 %call12, ptr %flags, align 8, !dbg !3079
  br label %do.cond, !dbg !3079

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3079

do.end:                                           ; preds = %do.cond
  br label %do.cond13, !dbg !3077

do.cond13:                                        ; preds = %do.end
  br label %do.end14, !dbg !3077

do.end14:                                         ; preds = %do.cond13
  %24 = load ptr, ptr %hrtimer.addr, align 8, !dbg !3080
  %call15 = call zeroext i1 @hrtimer_is_queued(ptr noundef %24) #10, !dbg !3082
  br i1 %call15, label %if.end20, label %if.then16, !dbg !3083

if.then16:                                        ; preds = %do.end14
  %25 = load ptr, ptr %hrtimer.addr, align 8, !dbg !3084
  %26 = load ptr, ptr %mbox, align 8, !dbg !3085
  %txpoll_period = getelementptr inbounds %struct.mbox_controller, ptr %26, i32 0, i32 6, !dbg !3086
  %27 = load i32, ptr %txpoll_period, align 8, !dbg !3086
  %conv17 = zext i32 %27 to i64, !dbg !3085
  %call18 = call i64 @ms_to_ktime(i64 noundef %conv17) #10, !dbg !3087
  %call19 = call i64 @hrtimer_forward_now(ptr noundef %25, i64 noundef %call18) #10, !dbg !3088
  br label %if.end20, !dbg !3088

if.end20:                                         ; preds = %if.then16, %do.end14
  %28 = load ptr, ptr %mbox, align 8, !dbg !3089
  %poll_hrt_lock21 = getelementptr inbounds %struct.mbox_controller, ptr %28, i32 0, i32 9, !dbg !3090
  %29 = load i64, ptr %flags, align 8, !dbg !3091
  call void @spin_unlock_irqrestore(ptr noundef %poll_hrt_lock21, i64 noundef %29) #10, !dbg !3092
  store i32 1, ptr %retval, align 4, !dbg !3093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3093

if.end22:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !3094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3094

cleanup:                                          ; preds = %if.end22, %if.end20
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !3095
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3095
  call void @llvm.lifetime.end.p0(i64 1, ptr %resched) #12, !dbg !3095
  call void @llvm.lifetime.end.p0(i64 1, ptr %txdone) #12, !dbg !3095
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbox) #12, !dbg !3095
  %30 = load i32, ptr %retval, align 4, !dbg !3095
  ret i32 %30, !dbg !3095
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_mbox_index_xlate(ptr noundef %mbox, ptr noundef %sp) #0 align 16 !dbg !3096 {
entry:
  %retval = alloca ptr, align 8
  %mbox.addr = alloca ptr, align 8
  %sp.addr = alloca ptr, align 8
  %ind = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mbox, ptr %mbox.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbox.addr, metadata !3098, metadata !DIExpression()), !dbg !3101
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !3099, metadata !DIExpression()), !dbg !3102
  call void @llvm.lifetime.start.p0(i64 4, ptr %ind) #12, !dbg !3103
  call void @llvm.dbg.declare(metadata ptr %ind, metadata !3100, metadata !DIExpression()), !dbg !3104
  %0 = load ptr, ptr %sp.addr, align 8, !dbg !3105
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2, !dbg !3106
  %arrayidx = getelementptr [16 x i32], ptr %args, i64 0, i64 0, !dbg !3105
  %1 = load i32, ptr %arrayidx, align 4, !dbg !3105
  store i32 %1, ptr %ind, align 4, !dbg !3104
  %2 = load i32, ptr %ind, align 4, !dbg !3107
  %3 = load ptr, ptr %mbox.addr, align 8, !dbg !3109
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 3, !dbg !3110
  %4 = load i32, ptr %num_chans, align 8, !dbg !3110
  %cmp = icmp sge i32 %2, %4, !dbg !3111
  br i1 %cmp, label %if.then, label %if.end, !dbg !3112

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -22) #10, !dbg !3113
  store ptr %call, ptr %retval, align 8, !dbg !3114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3114

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %mbox.addr, align 8, !dbg !3115
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 2, !dbg !3116
  %6 = load ptr, ptr %chans, align 8, !dbg !3116
  %7 = load i32, ptr %ind, align 4, !dbg !3117
  %idxprom = sext i32 %7 to i64, !dbg !3115
  %arrayidx1 = getelementptr %struct.mbox_chan, ptr %6, i64 %idxprom, !dbg !3115
  store ptr %arrayidx1, ptr %retval, align 8, !dbg !3118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3118

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ind) #12, !dbg !3119
  %8 = load ptr, ptr %retval, align 8, !dbg !3119
  ret ptr %8, !dbg !3119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !3120 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3125, metadata !DIExpression()), !dbg !3127
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3126, metadata !DIExpression()), !dbg !3128
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3129
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3130
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3131
  %2 = load ptr, ptr %prev, align 8, !dbg !3131
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3132
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #10, !dbg !3133
  ret void, !dbg !3134
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mbox_controller_unregister(ptr noundef %mbox) #0 align 16 !dbg !3135 {
entry:
  %mbox.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mbox, ptr %mbox.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbox.addr, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3142
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3140, metadata !DIExpression()), !dbg !3143
  %0 = load ptr, ptr %mbox.addr, align 8, !dbg !3144
  %tobool = icmp ne ptr %0, null, !dbg !3144
  br i1 %tobool, label %if.end, label %if.then, !dbg !3146

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3147

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @con_mutex) #10, !dbg !3148
  %1 = load ptr, ptr %mbox.addr, align 8, !dbg !3149
  %node = getelementptr inbounds %struct.mbox_controller, ptr %1, i32 0, i32 10, !dbg !3150
  call void @list_del(ptr noundef %node) #10, !dbg !3151
  store i32 0, ptr %i, align 4, !dbg !3152
  br label %for.cond, !dbg !3154

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !3155
  %3 = load ptr, ptr %mbox.addr, align 8, !dbg !3157
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 3, !dbg !3158
  %4 = load i32, ptr %num_chans, align 8, !dbg !3158
  %cmp = icmp slt i32 %2, %4, !dbg !3159
  br i1 %cmp, label %for.body, label %for.end, !dbg !3160

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %mbox.addr, align 8, !dbg !3161
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 2, !dbg !3162
  %6 = load ptr, ptr %chans, align 8, !dbg !3162
  %7 = load i32, ptr %i, align 4, !dbg !3163
  %idxprom = sext i32 %7 to i64, !dbg !3161
  %arrayidx = getelementptr %struct.mbox_chan, ptr %6, i64 %idxprom, !dbg !3161
  call void @mbox_free_channel(ptr noundef %arrayidx) #10, !dbg !3164
  br label %for.inc, !dbg !3164

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !3165
  %inc = add i32 %8, 1, !dbg !3165
  store i32 %inc, ptr %i, align 4, !dbg !3165
  br label %for.cond, !dbg !3166, !llvm.loop !3167

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %mbox.addr, align 8, !dbg !3169
  %txdone_poll = getelementptr inbounds %struct.mbox_controller, ptr %9, i32 0, i32 5, !dbg !3171
  %10 = load i8, ptr %txdone_poll, align 1, !dbg !3171, !range !2031, !noundef !345
  %tobool1 = trunc i8 %10 to i1, !dbg !3171
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3172

if.then2:                                         ; preds = %for.end
  %11 = load ptr, ptr %mbox.addr, align 8, !dbg !3173
  %poll_hrt = getelementptr inbounds %struct.mbox_controller, ptr %11, i32 0, i32 8, !dbg !3174
  %call = call i32 @hrtimer_cancel(ptr noundef %poll_hrt) #10, !dbg !3175
  br label %if.end3, !dbg !3175

if.end3:                                          ; preds = %if.then2, %for.end
  call void @mutex_unlock(ptr noundef @con_mutex) #10, !dbg !3176
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3177
  br label %cleanup, !dbg !3177

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3177
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3177

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #7 align 16 !dbg !3178 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3182, metadata !DIExpression()), !dbg !3183
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3184
  call void @__list_del_entry(ptr noundef %0) #10, !dbg !3185
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3186
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3187
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !3188
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !3189
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !3190
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !3191
  ret void, !dbg !3192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3193 dso_local i32 @hrtimer_cancel(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef %mbox) #0 align 16 !dbg !3196 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %mbox.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3200, metadata !DIExpression()), !dbg !3205
  store ptr %mbox, ptr %mbox.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbox.addr, metadata !3201, metadata !DIExpression()), !dbg !3206
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #12, !dbg !3207
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !3202, metadata !DIExpression()), !dbg !3208
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !3209
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3204, metadata !DIExpression()), !dbg !3210
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @__devm_mbox_controller_unregister, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.10) #10, !dbg !3211
  store ptr %call, ptr %ptr, align 8, !dbg !3212
  %0 = load ptr, ptr %ptr, align 8, !dbg !3213
  %tobool = icmp ne ptr %0, null, !dbg !3213
  br i1 %tobool, label %if.end, label %if.then, !dbg !3215

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !3216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3216

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mbox.addr, align 8, !dbg !3217
  %call1 = call i32 @mbox_controller_register(ptr noundef %1) #10, !dbg !3218
  store i32 %call1, ptr %err, align 4, !dbg !3219
  %2 = load i32, ptr %err, align 4, !dbg !3220
  %cmp = icmp slt i32 %2, 0, !dbg !3222
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3223

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %ptr, align 8, !dbg !3224
  call void @devres_free(ptr noundef %3) #10, !dbg !3226
  %4 = load i32, ptr %err, align 4, !dbg !3227
  store i32 %4, ptr %retval, align 4, !dbg !3228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3228

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !3229
  %6 = load ptr, ptr %ptr, align 8, !dbg !3230
  call void @devres_add(ptr noundef %5, ptr noundef %6) #10, !dbg !3231
  %7 = load ptr, ptr %mbox.addr, align 8, !dbg !3232
  %8 = load ptr, ptr %ptr, align 8, !dbg !3233
  store ptr %7, ptr %8, align 8, !dbg !3234
  store i32 0, ptr %retval, align 4, !dbg !3235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3235

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !3236
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #12, !dbg !3236
  %9 = load i32, ptr %retval, align 4, !dbg !3236
  ret i32 %9, !dbg !3236
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3237 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__devm_mbox_controller_unregister(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !3244 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %mbox = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3246, metadata !DIExpression()), !dbg !3249
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3247, metadata !DIExpression()), !dbg !3250
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbox) #12, !dbg !3251
  call void @llvm.dbg.declare(metadata ptr %mbox, metadata !3248, metadata !DIExpression()), !dbg !3252
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3253
  store ptr %0, ptr %mbox, align 8, !dbg !3252
  %1 = load ptr, ptr %mbox, align 8, !dbg !3254
  %2 = load ptr, ptr %1, align 8, !dbg !3255
  call void @mbox_controller_unregister(ptr noundef %2) #10, !dbg !3256
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbox) #12, !dbg !3257
  ret void, !dbg !3257
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3258 dso_local void @devres_free(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3259 dso_local void @devres_add(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devm_mbox_controller_unregister(ptr noundef %dev, ptr noundef %mbox) #0 align 16 !dbg !3260 {
entry:
  %dev.addr = alloca ptr, align 8
  %mbox.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3264, metadata !DIExpression()), !dbg !3271
  store ptr %mbox, ptr %mbox.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mbox.addr, metadata !3265, metadata !DIExpression()), !dbg !3272
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3273
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3266, metadata !DIExpression()), !dbg !3273
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3273
  %1 = load ptr, ptr %mbox.addr, align 8, !dbg !3273
  %call = call i32 @devres_release(ptr noundef %0, ptr noundef @__devm_mbox_controller_unregister, ptr noundef @devm_mbox_controller_match, ptr noundef %1) #10, !dbg !3273
  %tobool = icmp ne i32 %call, 0, !dbg !3273
  %lnot = xor i1 %tobool, true, !dbg !3273
  %lnot1 = xor i1 %lnot, true, !dbg !3273
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3273
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3273
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3274
  %tobool2 = icmp ne i32 %2, 0, !dbg !3274
  %lnot3 = xor i1 %tobool2, true, !dbg !3274
  %lnot5 = xor i1 %lnot3, true, !dbg !3274
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3274
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3274
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3274
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3274
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3273

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3274

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !3275
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3268, metadata !DIExpression()), !dbg !3275
  store i32 2305, ptr %__flags, align 4, !dbg !3275
  br label %do.body8, !dbg !3275

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !3276

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3276

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !3275

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !3278
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 664, i32 %3, i64 12) #12, !dbg !3278, !srcloc !3280
  br label %do.cond10, !dbg !3278

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3278

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3275

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !3281

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3281

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !3274
  br label %do.cond15, !dbg !3275

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3275

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !3275

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3273
  %tobool17 = icmp ne i32 %4, 0, !dbg !3273
  %lnot18 = xor i1 %tobool17, true, !dbg !3273
  %lnot20 = xor i1 %lnot18, true, !dbg !3273
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3273
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3273
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3273
  store i64 %expval23, ptr %tmp, align 8, !dbg !3274
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3283
  %5 = load i64, ptr %tmp, align 8, !dbg !3273
  ret void, !dbg !3284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3285 dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devm_mbox_controller_match(ptr noundef %dev, ptr noundef %res, ptr noundef %data) #0 align 16 !dbg !3292 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %mbox = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3294, metadata !DIExpression()), !dbg !3304
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3295, metadata !DIExpression()), !dbg !3305
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3296, metadata !DIExpression()), !dbg !3306
  call void @llvm.lifetime.start.p0(i64 8, ptr %mbox) #12, !dbg !3307
  call void @llvm.dbg.declare(metadata ptr %mbox, metadata !3297, metadata !DIExpression()), !dbg !3308
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3309
  store ptr %0, ptr %mbox, align 8, !dbg !3308
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3310
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3298, metadata !DIExpression()), !dbg !3310
  %1 = load ptr, ptr %mbox, align 8, !dbg !3310
  %tobool = icmp ne ptr %1, null, !dbg !3310
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3310

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %mbox, align 8, !dbg !3310
  %3 = load ptr, ptr %2, align 8, !dbg !3310
  %tobool1 = icmp ne ptr %3, null, !dbg !3310
  %lnot = xor i1 %tobool1, true, !dbg !3310
  br label %lor.end, !dbg !3310

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %4, true, !dbg !3310
  %lnot3 = xor i1 %lnot2, true, !dbg !3310
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3310
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3310
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3311
  %tobool4 = icmp ne i32 %5, 0, !dbg !3311
  %lnot5 = xor i1 %tobool4, true, !dbg !3311
  %lnot7 = xor i1 %lnot5, true, !dbg !3311
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3311
  %conv = sext i32 %lnot.ext8 to i64, !dbg !3311
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3311
  %tobool9 = icmp ne i64 %expval, 0, !dbg !3311
  br i1 %tobool9, label %if.then, label %if.end, !dbg !3310

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !3311

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !3312
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3301, metadata !DIExpression()), !dbg !3312
  store i32 2305, ptr %__flags, align 4, !dbg !3312
  br label %do.body10, !dbg !3312

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !3313

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !3313

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !3312

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !3315
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 609, i32 %6, i64 12) #12, !dbg !3315, !srcloc !3317
  br label %do.cond12, !dbg !3315

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3315

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !3312

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !3318

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3318

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !3311
  br label %do.cond17, !dbg !3312

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !3312

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !3312

if.end:                                           ; preds = %do.end18, %lor.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !3310
  %tobool19 = icmp ne i32 %7, 0, !dbg !3310
  %lnot20 = xor i1 %tobool19, true, !dbg !3310
  %lnot22 = xor i1 %lnot20, true, !dbg !3310
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !3310
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !3310
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !3310
  store i64 %expval25, ptr %tmp, align 8, !dbg !3311
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3320
  %8 = load i64, ptr %tmp, align 8, !dbg !3310
  %tobool26 = icmp ne i64 %8, 0, !dbg !3320
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !3321

if.then27:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3322

if.end28:                                         ; preds = %if.end
  %9 = load ptr, ptr %mbox, align 8, !dbg !3323
  %10 = load ptr, ptr %9, align 8, !dbg !3324
  %11 = load ptr, ptr %data.addr, align 8, !dbg !3325
  %cmp = icmp eq ptr %10, %11, !dbg !3326
  %conv29 = zext i1 %cmp to i32, !dbg !3326
  store i32 %conv29, ptr %retval, align 4, !dbg !3327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3327

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %mbox) #12, !dbg !3328
  %12 = load i32, ptr %retval, align 4, !dbg !3328
  ret i32 %12, !dbg !3328
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3329 dso_local void @complete(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hrtimer_start(ptr noundef %timer, i64 noundef %tim, i32 noundef %mode) #7 align 16 !dbg !3330 {
entry:
  %timer.addr = alloca ptr, align 8
  %tim.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !3335, metadata !DIExpression()), !dbg !3338
  store i64 %tim, ptr %tim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tim.addr, metadata !3336, metadata !DIExpression()), !dbg !3339
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3337, metadata !DIExpression()), !dbg !3340
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !3341
  %1 = load i64, ptr %tim.addr, align 8, !dbg !3342
  %2 = load i32, ptr %mode.addr, align 4, !dbg !3343
  call void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %1, i64 noundef 0, i32 noundef %2) #10, !dbg !3344
  ret void, !dbg !3345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3346 dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #7 align 16 !dbg !3349 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3351, metadata !DIExpression()), !dbg !3352
  %0 = load i32, ptr %m.addr, align 4, !dbg !3353
  %conv = zext i32 %0 to i64, !dbg !3353
  %add = add i64 %conv, 1, !dbg !3354
  %sub = sub i64 %add, 1, !dbg !3355
  %div = sdiv i64 %sub, 1, !dbg !3356
  ret i64 %div, !dbg !3357
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3358 dso_local i64 @__msecs_to_jiffies(i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3359 dso_local zeroext i1 @try_module_get(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #7 align 16 !dbg !1908 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1912, metadata !DIExpression()), !dbg !3362
  %0 = load ptr, ptr %x.addr, align 8, !dbg !3363
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !3364
  store i32 0, ptr %done, align 8, !dbg !3365
  br label %do.body, !dbg !3366

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !3367
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !3367
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.13, ptr noundef @init_completion.__key) #10, !dbg !3367
  br label %do.end, !dbg !3367

do.end:                                           ; preds = %do.body
  ret void, !dbg !3369
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3370 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef %list_name, ptr noundef %cells_name, i32 noundef %cell_count, i32 noundef %index, ptr noundef %out_args) #7 align 16 !dbg !3375 {
entry:
  %np.addr = alloca ptr, align 8
  %list_name.addr = alloca ptr, align 8
  %cells_name.addr = alloca ptr, align 8
  %cell_count.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %out_args.addr = alloca ptr, align 8
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !3379, metadata !DIExpression()), !dbg !3385
  store ptr %list_name, ptr %list_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list_name.addr, metadata !3380, metadata !DIExpression()), !dbg !3386
  store ptr %cells_name, ptr %cells_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cells_name.addr, metadata !3381, metadata !DIExpression()), !dbg !3387
  store i32 %cell_count, ptr %cell_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cell_count.addr, metadata !3382, metadata !DIExpression()), !dbg !3388
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3383, metadata !DIExpression()), !dbg !3389
  store ptr %out_args, ptr %out_args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_args.addr, metadata !3384, metadata !DIExpression()), !dbg !3390
  ret i32 -38, !dbg !3391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3392 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hrtimer_is_queued(ptr noundef %timer) #7 align 16 !dbg !3395 {
entry:
  %timer.addr = alloca ptr, align 8
  %tmp = alloca i8, align 1
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !3399, metadata !DIExpression()), !dbg !3400
  br label %do.body, !dbg !3401

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3403

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !3401
  %state = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 4, !dbg !3401
  %1 = load volatile i8, ptr %state, align 8, !dbg !3401
  store i8 %1, ptr %tmp, align 1, !dbg !3403
  %2 = load i8, ptr %tmp, align 1, !dbg !3401
  %conv = zext i8 %2 to i32, !dbg !3405
  %and = and i32 %conv, 1, !dbg !3406
  %tobool = icmp ne i32 %and, 0, !dbg !3407
  %lnot = xor i1 %tobool, true, !dbg !3407
  %lnot1 = xor i1 %lnot, true, !dbg !3408
  ret i1 %lnot1, !dbg !3409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hrtimer_forward_now(ptr noundef %timer, i64 noundef %interval) #7 align 16 !dbg !3410 {
entry:
  %timer.addr = alloca ptr, align 8
  %interval.addr = alloca i64, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !3414, metadata !DIExpression()), !dbg !3416
  store i64 %interval, ptr %interval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interval.addr, metadata !3415, metadata !DIExpression()), !dbg !3417
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !3418
  %1 = load ptr, ptr %timer.addr, align 8, !dbg !3419
  %base = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 3, !dbg !3420
  %2 = load ptr, ptr %base, align 8, !dbg !3420
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, ptr %2, i32 0, i32 6, !dbg !3421
  %3 = load ptr, ptr %get_time, align 16, !dbg !3421
  %call = call i64 %3() #10, !dbg !3419
  %4 = load i64, ptr %interval.addr, align 8, !dbg !3422
  %call1 = call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %call, i64 noundef %4) #10, !dbg !3423
  ret i64 %call1, !dbg !3424
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ms_to_ktime(i64 noundef %ms) #7 align 16 !dbg !3425 {
entry:
  %ms.addr = alloca i64, align 8
  store i64 %ms, ptr %ms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ms.addr, metadata !3429, metadata !DIExpression()), !dbg !3430
  %0 = load i64, ptr %ms.addr, align 8, !dbg !3431
  %mul = mul i64 %0, 1000000, !dbg !3432
  ret i64 %mul, !dbg !3433
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3434 dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !3437 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3441, metadata !DIExpression()), !dbg !3444
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3442, metadata !DIExpression()), !dbg !3445
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3443, metadata !DIExpression()), !dbg !3446
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3447
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3449
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3450
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10, !dbg !3451
  br i1 %call, label %if.end, label %if.then, !dbg !3452

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3453

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3454
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3455
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3456
  store ptr %3, ptr %prev1, align 8, !dbg !3457
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3458
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3459
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3460
  store ptr %5, ptr %next2, align 8, !dbg !3461
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3462
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3463
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3464
  store ptr %7, ptr %prev3, align 8, !dbg !3465
  br label %do.body, !dbg !3466

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3467

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3469

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3467

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3471
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3471
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3471
  store volatile ptr %9, ptr %next6, align 8, !dbg !3471
  br label %do.end7, !dbg !3471

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3467

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3473
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !3474 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3478, metadata !DIExpression()), !dbg !3481
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3479, metadata !DIExpression()), !dbg !3482
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3480, metadata !DIExpression()), !dbg !3483
  ret i1 true, !dbg !3484
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #7 align 16 !dbg !3485 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3487, metadata !DIExpression()), !dbg !3488
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3489
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #10, !dbg !3491
  br i1 %call, label %if.end, label %if.then, !dbg !3492

if.then:                                          ; preds = %entry
  br label %return, !dbg !3493

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3494
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3495
  %2 = load ptr, ptr %prev, align 8, !dbg !3495
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3496
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3497
  %4 = load ptr, ptr %next, align 8, !dbg !3497
  call void @__list_del(ptr noundef %2, ptr noundef %4) #10, !dbg !3498
  br label %return, !dbg !3499

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #7 align 16 !dbg !3500 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3504, metadata !DIExpression()), !dbg !3505
  ret i1 true, !dbg !3506
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !3507 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3509, metadata !DIExpression()), !dbg !3511
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3510, metadata !DIExpression()), !dbg !3512
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3513
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3514
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3515
  store ptr %0, ptr %prev1, align 8, !dbg !3516
  br label %do.body, !dbg !3517

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3518

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3520

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3518

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3522
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3522
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3522
  store volatile ptr %2, ptr %next4, align 8, !dbg !3522
  br label %do.end5, !dbg !3522

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3518

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3524
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928}
!llvm.ident = !{!1929}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_chan_received_data205", scope: !2, file: !3, line: 165, type: !107, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/mailbox/.mailbox.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/mailbox/mailbox\22 -D KBUILD_BASENAME=\22mailbox\22 -D KBUILD_MODNAME=\22mailbox\22 -D __KBUILD_MODNAME=kmod_mailbox -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/mailbox/mailbox.ll drivers/mailbox/mailbox.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !106, globals: !1818, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mailbox/mailbox.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c945bd3c5a67ec871a4d08940ef6f996")
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
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_mode", file: !33, line: 39, baseType: !7, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!91 = !DIEnumerator(name: "HRTIMER_MODE_ABS", value: 0)
!92 = !DIEnumerator(name: "HRTIMER_MODE_REL", value: 1)
!93 = !DIEnumerator(name: "HRTIMER_MODE_PINNED", value: 2)
!94 = !DIEnumerator(name: "HRTIMER_MODE_SOFT", value: 4)
!95 = !DIEnumerator(name: "HRTIMER_MODE_HARD", value: 8)
!96 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED", value: 2)
!97 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED", value: 3)
!98 = !DIEnumerator(name: "HRTIMER_MODE_ABS_SOFT", value: 4)
!99 = !DIEnumerator(name: "HRTIMER_MODE_REL_SOFT", value: 5)
!100 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_SOFT", value: 6)
!101 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_SOFT", value: 7)
!102 = !DIEnumerator(name: "HRTIMER_MODE_ABS_HARD", value: 8)
!103 = !DIEnumerator(name: "HRTIMER_MODE_REL_HARD", value: 9)
!104 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_HARD", value: 10)
!105 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_HARD", value: 11)
!106 = !{!107, !108, !1812, !46, !245, !259, !1813, !1816}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_controller", file: !110, line: 74, size: 1088, elements: !111)
!110 = !DIFile(filename: "./include/linux/mailbox_controller.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8463aab1790a791aaed8ad8f379f1af1")
!111 = !{!112, !1732, !1791, !1792, !1793, !1794, !1795, !1796, !1809, !1810, !1811}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !109, file: !110, line: 75, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !115)
!115 = !{!116, !784, !785, !788, !789, !842, !1315, !1316, !1317, !1318, !1319, !1326, !1496, !1509, !1519, !1523, !1525, !1526, !1527, !1531, !1538, !1539, !1542, !1545, !1671, !1672, !1673, !1676, !1677, !1678, !1679, !1709, !1710, !1711, !1714, !1717, !1726, !1727, !1728, !1729, !1730, !1731}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !114, file: !26, line: 706, baseType: !117, size: 512)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !118, line: 64, size: 512, elements: !119)
!118 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!119 = !{!120, !124, !131, !133, !222, !655, !769, !779, !780, !781, !782, !783}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !118, line: 65, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !117, file: !118, line: 66, baseType: !125, size: 128, offset: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !126, line: 190, size: 128, elements: !127)
!126 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!127 = !{!128, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !126, line: 191, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !126, line: 191, baseType: !129, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !117, file: !118, line: 67, baseType: !132, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !117, file: !118, line: 68, baseType: !134, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !118, line: 168, size: 768, elements: !136)
!136 = !{!137, !138, !181, !182}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !135, file: !118, line: 169, baseType: !125, size: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !135, file: !118, line: 170, baseType: !139, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !140, line: 29, baseType: !141)
!140 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !140, line: 17, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !140, line: 18, baseType: !144, size: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !140, line: 18, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !144, file: !140, line: 19, baseType: !147, size: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !148, line: 14, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !147, file: !148, line: 15, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !152, line: 44, baseType: !153)
!152 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !152, line: 14, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !152, line: 15, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !152, line: 15, size: 32, elements: !157)
!157 = !{!158, !163, !173}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !156, file: !152, line: 16, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !126, line: 174, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 172, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !160, file: !126, line: 173, baseType: !46, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !152, line: 24, baseType: !164, size: 16)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !152, line: 24, size: 16, elements: !165)
!165 = !{!166, !172}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !164, file: !152, line: 25, baseType: !167, size: 8)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !168, line: 17, baseType: !169)
!168 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !170, line: 21, baseType: !171)
!170 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!171 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !164, file: !152, line: 26, baseType: !167, size: 8, offset: 8)
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !152, line: 28, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !152, line: 28, size: 32, elements: !175)
!175 = !{!176, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !174, file: !152, line: 29, baseType: !177, size: 16)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !168, line: 19, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !170, line: 24, baseType: !179)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !174, file: !152, line: 30, baseType: !177, size: 16, offset: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !135, file: !118, line: 171, baseType: !117, size: 512, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !135, file: !118, line: 172, baseType: !183, size: 64, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !118, line: 133, size: 192, elements: !186)
!186 = !{!187, !194, !199}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !185, file: !118, line: 134, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!46, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !118, line: 135, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!121, !192}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !185, file: !118, line: 136, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!46, !192, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !118, line: 125, size: 20736, elements: !206)
!206 = !{!207, !212, !216, !217, !221}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !205, file: !118, line: 126, baseType: !208, size: 192)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 192, elements: !210)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!210 = !{!211}
!211 = !DISubrange(count: 3)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !205, file: !118, line: 127, baseType: !213, size: 4096, offset: 192)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 4096, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !205, file: !118, line: 128, baseType: !46, size: 32, offset: 4288)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !205, file: !118, line: 129, baseType: !218, size: 16384, offset: 4320)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16384, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 2048)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !205, file: !118, line: 130, baseType: !46, size: 32, offset: 20704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !117, file: !118, line: 69, baseType: !223, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !118, line: 116, size: 384, elements: !226)
!226 = !{!227, !231, !260, !602, !633, !637}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !225, file: !118, line: 117, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !132}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !225, file: !118, line: 118, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !235, line: 254, size: 128, elements: !236)
!235 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!236 = !{!237, !252}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !234, file: !235, line: 255, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!241, !132, !246, !209}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !126, line: 66, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !243, line: 73, baseType: !244)
!243 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !243, line: 15, baseType: !245)
!245 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !235, line: 30, size: 128, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !235, line: 31, baseType: !121, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !247, file: !235, line: 32, baseType: !251, size: 16, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !126, line: 24, baseType: !179)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !234, file: !235, line: 256, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!241, !132, !246, !121, !256}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 61, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !243, line: 72, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !243, line: 16, baseType: !259)
!259 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !225, file: !118, line: 119, baseType: !261, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !235, line: 84, size: 320, elements: !265)
!265 = !{!266, !267, !271, !598, !600}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !235, line: 85, baseType: !121, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !264, file: !235, line: 86, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!251, !132, !246, !46}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !264, file: !235, line: 88, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!251, !132, !275, !46}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !235, line: 175, size: 512, elements: !277)
!277 = !{!278, !279, !280, !281, !288, !298, !299}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !276, file: !235, line: 176, baseType: !247, size: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !276, file: !235, line: 177, baseType: !256, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !276, file: !235, line: 178, baseType: !107, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !276, file: !235, line: 179, baseType: !282, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !287, line: 32, flags: DIFlagFwdDecl)
!287 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!288 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !276, file: !235, line: 180, baseType: !289, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!241, !292, !132, !275, !209, !295, !256}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !294, line: 537, flags: DIFlagFwdDecl)
!294 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !126, line: 52, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !243, line: 88, baseType: !297)
!297 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !276, file: !235, line: 182, baseType: !289, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !276, file: !235, line: 184, baseType: !300, size: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!46, !292, !132, !275, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !287, line: 625, size: 1344, elements: !305)
!305 = !{!306, !323, !546, !552, !559, !560, !565, !568, !580, !581, !584, !588, !589, !590, !591, !592, !596}
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !287, line: 628, baseType: !307, size: 128)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !287, line: 628, size: 128, elements: !308)
!308 = !{!309, !314}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !287, line: 629, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !287, line: 629, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !310, file: !287, line: 631, baseType: !259, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !310, file: !287, line: 632, baseType: !259, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !307, file: !287, line: 635, baseType: !315, size: 128, align: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !126, line: 232, size: 128, align: 64, elements: !316)
!316 = !{!317, !319}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !126, line: 233, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !315, file: !126, line: 234, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !318}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !304, file: !287, line: 639, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !287, line: 733, size: 10240, elements: !326)
!326 = !{!327, !542}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !287, line: 734, baseType: !328, size: 10240)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !287, line: 734, size: 10240, elements: !329)
!329 = !{!330, !334, !348, !352, !353, !354, !355, !356, !357, !365, !366, !367, !376, !377, !386, !387, !388, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !435, !449, !452, !507, !508, !509, !512, !516, !517, !520, !521, !522, !529, !530}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !287, line: 739, baseType: !331, size: 512, align: 512)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !287, line: 739, size: 512, align: 512, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !331, file: !287, line: 747, baseType: !159, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !328, file: !287, line: 750, baseType: !335, size: 128, offset: 512)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !336, line: 218, size: 128, elements: !337)
!336 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!337 = !{!338, !346, !347}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !336, line: 219, baseType: !339, size: 32)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !336, line: 219, size: 32, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !339, file: !336, line: 220, baseType: !139, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !339, file: !336, line: 221, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !336, line: 197, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 197, elements: !345)
!345 = !{}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !335, file: !336, line: 223, baseType: !7, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !335, file: !336, line: 224, baseType: !107, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !328, file: !287, line: 752, baseType: !349, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!259, !292, !259, !259, !259, !259}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !328, file: !287, line: 756, baseType: !259, size: 64, offset: 704)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !328, file: !287, line: 757, baseType: !259, size: 64, offset: 768)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !328, file: !287, line: 760, baseType: !259, size: 64, offset: 832)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !328, file: !287, line: 761, baseType: !259, size: 64, offset: 896)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !328, file: !287, line: 763, baseType: !259, size: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !328, file: !287, line: 764, baseType: !358, size: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !294, line: 299, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 299, size: 64, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !360, file: !294, line: 299, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !364, line: 18, baseType: !259)
!364 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!365 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !328, file: !287, line: 773, baseType: !159, size: 32, offset: 1088)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !328, file: !287, line: 785, baseType: !159, size: 32, offset: 1120)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !328, file: !287, line: 795, baseType: !368, size: 64, offset: 1152)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !287, line: 726, size: 128, elements: !370)
!370 = !{!371, !375}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !369, file: !287, line: 727, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !168, line: 23, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !170, line: 31, baseType: !374)
!374 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !369, file: !287, line: 728, baseType: !46, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !328, file: !287, line: 801, baseType: !259, size: 64, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !328, file: !287, line: 804, baseType: !378, size: 64, offset: 1280)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !379, line: 13, baseType: !380)
!379 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !126, line: 181, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 179, size: 64, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !381, file: !126, line: 180, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !168, line: 22, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !170, line: 30, baseType: !297)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !328, file: !287, line: 806, baseType: !46, size: 32, offset: 1344)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !328, file: !287, line: 808, baseType: !139, size: 32, offset: 1376)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !328, file: !287, line: 823, baseType: !389, size: 320, offset: 1408)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !390, line: 48, size: 320, elements: !391)
!390 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!391 = !{!392, !393, !394, !399, !401}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !389, file: !390, line: 49, baseType: !378, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !389, file: !390, line: 55, baseType: !378, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !389, file: !390, line: 57, baseType: !395, size: 32, offset: 128)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !396, line: 15, size: 32, elements: !397)
!396 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !395, file: !396, line: 20, baseType: !159, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !389, file: !390, line: 59, baseType: !400, size: 32, offset: 160)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !148, line: 23, baseType: !147)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !389, file: !390, line: 60, baseType: !125, size: 128, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !328, file: !287, line: 825, baseType: !125, size: 128, offset: 1728)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !328, file: !287, line: 845, baseType: !46, size: 32, offset: 1856)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !328, file: !287, line: 849, baseType: !259, size: 64, offset: 1920)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !328, file: !287, line: 850, baseType: !259, size: 64, offset: 1984)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !328, file: !287, line: 852, baseType: !259, size: 64, offset: 2048)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !328, file: !287, line: 853, baseType: !259, size: 64, offset: 2112)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !328, file: !287, line: 854, baseType: !380, size: 64, offset: 2176)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !328, file: !287, line: 855, baseType: !259, size: 64, offset: 2240)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !328, file: !287, line: 856, baseType: !259, size: 64, offset: 2304)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !328, file: !287, line: 857, baseType: !259, size: 64, offset: 2368)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !328, file: !287, line: 858, baseType: !259, size: 64, offset: 2432)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !328, file: !287, line: 865, baseType: !414, size: 32, offset: 2496)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !415, line: 69, baseType: !416)
!415 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !415, line: 64, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !416, file: !415, line: 65, baseType: !7, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !328, file: !287, line: 867, baseType: !139, size: 32, offset: 2528)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !328, file: !287, line: 869, baseType: !259, size: 64, offset: 2560)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !328, file: !287, line: 869, baseType: !259, size: 64, offset: 2624)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !328, file: !287, line: 869, baseType: !259, size: 64, offset: 2688)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !328, file: !287, line: 869, baseType: !259, size: 64, offset: 2752)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !328, file: !287, line: 870, baseType: !259, size: 64, offset: 2816)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !328, file: !287, line: 870, baseType: !259, size: 64, offset: 2880)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !328, file: !287, line: 870, baseType: !259, size: 64, offset: 2944)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !328, file: !287, line: 871, baseType: !259, size: 64, offset: 3008)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !328, file: !287, line: 871, baseType: !259, size: 64, offset: 3072)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !328, file: !287, line: 871, baseType: !259, size: 64, offset: 3136)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !328, file: !287, line: 871, baseType: !259, size: 64, offset: 3200)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !328, file: !287, line: 873, baseType: !432, size: 3328, offset: 3264)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 3328, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 52)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !328, file: !287, line: 875, baseType: !436, size: 1280, offset: 6592)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 1280, elements: !447)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !438, line: 22, size: 320, elements: !439)
!438 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!439 = !{!440, !441, !442, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !437, file: !438, line: 23, baseType: !400, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !437, file: !438, line: 24, baseType: !384, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !437, file: !438, line: 26, baseType: !125, size: 128, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !437, file: !438, line: 28, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !168, line: 20, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !170, line: 26, baseType: !46)
!447 = !{!448}
!448 = !DISubrange(count: 4)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !328, file: !287, line: 877, baseType: !450, size: 64, offset: 7872)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !287, line: 877, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !328, file: !287, line: 880, baseType: !453, size: 1088, offset: 7936)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !454, line: 72, baseType: !455)
!454 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 23, size: 1088, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !464, !465, !473, !474, !501, !502, !503}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !455, file: !454, line: 28, baseType: !372, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !455, file: !454, line: 38, baseType: !380, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !455, file: !454, line: 40, baseType: !259, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !455, file: !454, line: 43, baseType: !389, size: 320, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !455, file: !454, line: 44, baseType: !462, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !454, line: 44, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !454, line: 48, baseType: !259, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !455, file: !454, line: 59, baseType: !466, size: 256, offset: 640)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !467, line: 66, size: 256, elements: !468)
!467 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!468 = !{!469, !470, !471, !472}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !466, file: !467, line: 67, baseType: !378, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !466, file: !467, line: 68, baseType: !400, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !466, file: !467, line: 70, baseType: !395, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !466, file: !467, line: 72, baseType: !125, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !455, file: !454, line: 60, baseType: !107, size: 64, offset: 896)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !455, file: !454, line: 61, baseType: !475, size: 64, offset: 960)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !478, line: 13, size: 1216, elements: !479)
!478 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!479 = !{!480, !481, !482, !483, !484, !485, !486, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !477, file: !478, line: 14, baseType: !107, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !477, file: !478, line: 15, baseType: !259, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !477, file: !478, line: 17, baseType: !259, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !477, file: !478, line: 17, baseType: !259, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !477, file: !478, line: 18, baseType: !259, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !477, file: !478, line: 18, baseType: !259, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !477, file: !478, line: 19, baseType: !487, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !477, file: !478, line: 21, baseType: !245, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !477, file: !478, line: 23, baseType: !245, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !477, file: !478, line: 24, baseType: !245, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !477, file: !478, line: 25, baseType: !245, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !477, file: !478, line: 26, baseType: !245, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !477, file: !478, line: 27, baseType: !245, size: 64, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !477, file: !478, line: 28, baseType: !245, size: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !477, file: !478, line: 29, baseType: !245, size: 64, offset: 896)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !477, file: !478, line: 30, baseType: !245, size: 64, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !477, file: !478, line: 31, baseType: !245, size: 64, offset: 1024)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !477, file: !478, line: 32, baseType: !245, size: 64, offset: 1088)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !477, file: !478, line: 33, baseType: !245, size: 64, offset: 1152)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !455, file: !454, line: 63, baseType: !159, size: 32, offset: 1024)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !455, file: !454, line: 69, baseType: !177, size: 16, offset: 1056)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !455, file: !454, line: 70, baseType: !504, size: 16, offset: 1072)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !168, line: 18, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !170, line: 23, baseType: !506)
!506 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !287, line: 882, baseType: !259, size: 64, offset: 9024)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !328, file: !287, line: 885, baseType: !139, size: 32, offset: 9088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !328, file: !287, line: 886, baseType: !510, size: 64, offset: 9152)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !287, line: 732, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !328, file: !287, line: 901, baseType: !513, size: 64, offset: 9216)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !515, line: 18, flags: DIFlagFwdDecl)
!515 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!516 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !328, file: !287, line: 904, baseType: !292, size: 64, offset: 9280)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !328, file: !287, line: 906, baseType: !518, size: 64, offset: 9344)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !287, line: 906, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !328, file: !287, line: 930, baseType: !159, size: 32, offset: 9408)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !328, file: !287, line: 933, baseType: !159, size: 32, offset: 9440)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !328, file: !287, line: 935, baseType: !523, size: 64, offset: 9472)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !524, line: 103, size: 64, elements: !525)
!524 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !523, file: !524, line: 104, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !524, line: 101, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !328, file: !287, line: 940, baseType: !378, size: 64, offset: 9536)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !328, file: !287, line: 942, baseType: !531, size: 256, offset: 9600)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !532, line: 98, size: 256, elements: !533)
!532 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!533 = !{!534, !535, !536}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !531, file: !532, line: 99, baseType: !378, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !531, file: !532, line: 100, baseType: !125, size: 128, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !531, file: !532, line: 101, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !532, line: 21, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !325, file: !287, line: 986, baseType: !543, offset: 10240)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: -1)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !304, file: !287, line: 640, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !294, line: 297, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !294, line: 297, size: 64, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !548, file: !294, line: 297, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !364, line: 19, baseType: !259)
!552 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !287, line: 646, baseType: !553, size: 64, offset: 256)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !287, line: 646, size: 64, elements: !554)
!554 = !{!555, !558}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !553, file: !287, line: 647, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !287, line: 542, baseType: !259)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !553, file: !287, line: 648, baseType: !557, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !304, file: !287, line: 666, baseType: !46, size: 32, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !304, file: !287, line: 667, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !287, line: 579, size: 320, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !287, line: 580, baseType: !389, size: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !304, file: !287, line: 670, baseType: !566, size: 8, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !126, line: 35, baseType: !567)
!567 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !304, file: !287, line: 681, baseType: !569, size: 256, offset: 512)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !304, file: !287, line: 678, size: 256, elements: !570)
!570 = !{!571, !579}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !569, file: !287, line: 679, baseType: !572, size: 192, align: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !573, line: 5, size: 192, align: 64, elements: !574)
!573 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!574 = !{!575, !576, !578}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !572, file: !573, line: 6, baseType: !259, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !572, file: !573, line: 7, baseType: !577, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !572, file: !573, line: 8, baseType: !577, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !569, file: !287, line: 680, baseType: !259, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !304, file: !287, line: 689, baseType: !125, size: 128, offset: 768)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !304, file: !287, line: 691, baseType: !582, size: 64, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !287, line: 691, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !304, file: !287, line: 694, baseType: !585, size: 64, offset: 960)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !287, line: 694, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !304, file: !287, line: 697, baseType: !259, size: 64, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !304, file: !287, line: 699, baseType: !292, size: 64, offset: 1088)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !304, file: !287, line: 700, baseType: !107, size: 64, offset: 1152)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !304, file: !287, line: 711, baseType: !378, size: 64, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !304, file: !287, line: 717, baseType: !593, size: 64, offset: 1280)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !595, line: 54, flags: DIFlagFwdDecl)
!595 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !304, file: !287, line: 722, baseType: !597, offset: 1344)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !287, line: 570, elements: !345)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !264, file: !235, line: 90, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !264, file: !235, line: 91, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !225, file: !118, line: 120, baseType: !603, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!606, !192}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !609)
!609 = !{!610, !611, !615, !619, !625, !629}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !6, line: 40, baseType: !5, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !608, file: !6, line: 41, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!566}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !608, file: !6, line: 42, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!107}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !608, file: !6, line: 43, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!487, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !608, file: !6, line: 44, baseType: !626, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!487}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !608, file: !6, line: 45, baseType: !630, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !107}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !225, file: !118, line: 121, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!487, !192}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !225, file: !118, line: 122, baseType: !638, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !192, !641, !648}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !515, line: 23, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 21, size: 32, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !643, file: !515, line: 22, baseType: !646, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !126, line: 37, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !243, line: 49, baseType: !7)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !515, line: 28, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 26, size: 32, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !650, file: !515, line: 27, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !126, line: 38, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !243, line: 50, baseType: !7)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !117, file: !118, line: 70, baseType: !656, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !658, line: 190, size: 1152, elements: !659)
!658 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !761, !762, !763, !764, !765, !768}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !657, file: !658, line: 191, baseType: !159, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !657, file: !658, line: 192, baseType: !159, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !657, file: !658, line: 202, baseType: !656, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !657, file: !658, line: 203, baseType: !121, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !657, file: !658, line: 205, baseType: !572, size: 192, align: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !657, file: !658, line: 207, baseType: !487, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !657, file: !658, line: 208, baseType: !7, size: 32, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 209, baseType: !668, size: 256, offset: 512)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 209, size: 256, elements: !669)
!669 = !{!670, !682, !686}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !668, file: !658, line: 210, baseType: !671, size: 256)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !658, line: 153, size: 256, elements: !672)
!672 = !{!673, !674, !678, !681}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !671, file: !658, line: 154, baseType: !259, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !671, file: !658, line: 156, baseType: !675, size: 64, offset: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !573, line: 12, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !675, file: !573, line: 13, baseType: !577, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !671, file: !658, line: 162, baseType: !679, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !658, line: 162, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !671, file: !658, line: 167, baseType: !259, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !668, file: !658, line: 211, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !658, line: 170, size: 64, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !683, file: !658, line: 171, baseType: !656, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !668, file: !658, line: 212, baseType: !687, size: 256)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !658, line: 174, size: 256, elements: !688)
!688 = !{!689, !756, !759, !760}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !687, file: !658, line: 175, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !658, line: 271, size: 768, elements: !693)
!693 = !{!694, !716, !720, !724, !729, !733, !737, !741, !742, !743, !744, !752}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !692, file: !658, line: 276, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!46, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !658, line: 251, size: 1216, elements: !700)
!700 = !{!701, !702, !703, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !699, file: !658, line: 253, baseType: !656, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !699, file: !658, line: 254, baseType: !292, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !699, file: !658, line: 255, baseType: !704, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !595, line: 66, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !699, file: !658, line: 256, baseType: !107, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !699, file: !658, line: 259, baseType: !466, size: 256, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !699, file: !658, line: 260, baseType: !466, size: 256, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !699, file: !658, line: 261, baseType: !46, size: 32, offset: 768)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !699, file: !658, line: 262, baseType: !125, size: 128, offset: 832)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !699, file: !658, line: 263, baseType: !209, size: 64, offset: 960)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !699, file: !658, line: 265, baseType: !256, size: 64, offset: 1024)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !699, file: !658, line: 266, baseType: !566, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !699, file: !658, line: 267, baseType: !566, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !699, file: !658, line: 268, baseType: !585, size: 64, offset: 1152)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !692, file: !658, line: 277, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !698}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !692, file: !658, line: 290, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!46, !704, !107}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !692, file: !658, line: 292, baseType: !725, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!107, !704, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !692, file: !658, line: 293, baseType: !730, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!107, !704, !107, !728}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !692, file: !658, line: 294, baseType: !734, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !704, !107}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !692, file: !658, line: 296, baseType: !738, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!241, !698, !209, !256, !295}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !692, file: !658, line: 306, baseType: !256, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !692, file: !658, line: 313, baseType: !566, size: 8, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !692, file: !658, line: 314, baseType: !738, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !692, file: !658, line: 317, baseType: !745, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!748, !698, !750}
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !749, line: 59, baseType: !7)
!749 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !658, line: 31, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !692, file: !658, line: 320, baseType: !753, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!46, !698, !303}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !687, file: !658, line: 176, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !658, line: 35, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !687, file: !658, line: 177, baseType: !295, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !687, file: !658, line: 178, baseType: !656, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !657, file: !658, line: 215, baseType: !107, size: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !657, file: !658, line: 221, baseType: !372, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !658, line: 223, baseType: !179, size: 16, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !657, file: !658, line: 224, baseType: !251, size: 16, offset: 912)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !657, file: !658, line: 225, baseType: !766, size: 64, offset: 960)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !658, line: 36, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !657, file: !658, line: 227, baseType: !315, size: 128, align: 64, offset: 1024)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !117, file: !118, line: 71, baseType: !770, size: 32, offset: 448)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !771, line: 19, size: 32, elements: !772)
!771 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !770, file: !771, line: 20, baseType: !774, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !775, line: 113, baseType: !776)
!775 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !775, line: 111, size: 32, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !776, file: !775, line: 112, baseType: !159, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !117, file: !118, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !117, file: !118, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !117, file: !118, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !117, file: !118, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !117, file: !118, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !114, file: !26, line: 707, baseType: !113, size: 64, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !114, file: !26, line: 709, baseType: !786, size: 64, offset: 576)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !114, file: !26, line: 711, baseType: !121, size: 64, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !26, line: 712, baseType: !790, size: 64, offset: 704)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !793)
!793 = !{!794, !795, !796, !802, !807, !811}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !792, file: !26, line: 90, baseType: !121, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !792, file: !26, line: 91, baseType: !261, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !792, file: !26, line: 92, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!46, !800, !204}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !792, file: !26, line: 93, baseType: !803, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!209, !800, !806, !641, !648}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !792, file: !26, line: 95, baseType: !808, size: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !113}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !792, file: !26, line: 97, baseType: !812, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !815)
!815 = !{!816, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !814, file: !38, line: 287, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!46, !113}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !814, file: !38, line: 288, baseType: !808, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !814, file: !38, line: 289, baseType: !817, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !814, file: !38, line: 290, baseType: !817, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !814, file: !38, line: 291, baseType: !817, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !814, file: !38, line: 292, baseType: !817, size: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !814, file: !38, line: 293, baseType: !817, size: 64, offset: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !814, file: !38, line: 294, baseType: !817, size: 64, offset: 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !814, file: !38, line: 295, baseType: !817, size: 64, offset: 512)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !814, file: !38, line: 296, baseType: !817, size: 64, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !814, file: !38, line: 297, baseType: !817, size: 64, offset: 640)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !814, file: !38, line: 298, baseType: !817, size: 64, offset: 704)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !814, file: !38, line: 299, baseType: !817, size: 64, offset: 768)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !814, file: !38, line: 300, baseType: !817, size: 64, offset: 832)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !814, file: !38, line: 301, baseType: !817, size: 64, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !814, file: !38, line: 302, baseType: !817, size: 64, offset: 960)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !814, file: !38, line: 303, baseType: !817, size: 64, offset: 1024)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !814, file: !38, line: 304, baseType: !817, size: 64, offset: 1088)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !814, file: !38, line: 305, baseType: !817, size: 64, offset: 1152)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !814, file: !38, line: 306, baseType: !817, size: 64, offset: 1216)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !814, file: !38, line: 307, baseType: !817, size: 64, offset: 1280)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !814, file: !38, line: 308, baseType: !817, size: 64, offset: 1344)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !814, file: !38, line: 309, baseType: !817, size: 64, offset: 1408)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !114, file: !26, line: 714, baseType: !843, size: 64, offset: 768)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !846, line: 80, size: 1344, elements: !847)
!846 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!847 = !{!848, !849, !850, !851, !852, !853, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1314}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !845, file: !846, line: 81, baseType: !121, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !845, file: !846, line: 82, baseType: !121, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !845, file: !846, line: 83, baseType: !261, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !845, file: !846, line: 84, baseType: !261, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !845, file: !846, line: 85, baseType: !261, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !845, file: !846, line: 87, baseType: !854, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!46, !113, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !859)
!859 = !{!860, !861, !862, !1245, !1246, !1247, !1248, !1264, !1277, !1278, !1279, !1280, !1281, !1289, !1290, !1291, !1292, !1293, !1294}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !20, line: 97, baseType: !121, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !858, file: !20, line: 98, baseType: !843, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !858, file: !20, line: 100, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !865)
!865 = !{!866, !867, !868, !872, !893, !919, !920, !921, !922, !926, !929, !930, !931, !984, !985, !986, !987, !988, !989, !990, !991, !999, !1003, !1023, !1041, !1042, !1043, !1044, !1053, !1077, !1078, !1081, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1095, !1096, !1203, !1211, !1212, !1213, !1215, !1219, !1220, !1224, !1225, !1226, !1227, !1229, !1230, !1231, !1238, !1239, !1240, !1244}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !864, file: !13, line: 403, baseType: !12, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !864, file: !13, line: 406, baseType: !125, size: 128, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !864, file: !13, line: 409, baseType: !869, size: 448, offset: 192)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 448, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 56)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !864, file: !13, line: 417, baseType: !873, size: 768, offset: 640)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !874)
!874 = !{!875, !876, !877, !878, !881}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !873, file: !13, line: 46, baseType: !117, size: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !873, file: !13, line: 47, baseType: !863, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !873, file: !13, line: 48, baseType: !132, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !873, file: !13, line: 49, baseType: !879, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !873, file: !13, line: 50, baseType: !882, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !884, line: 26, size: 256, elements: !885)
!884 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !883, file: !884, line: 27, baseType: !7, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !883, file: !884, line: 28, baseType: !888, size: 192, offset: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !889, line: 43, size: 192, elements: !890)
!889 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !888, file: !889, line: 44, baseType: !400, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !888, file: !889, line: 45, baseType: !125, size: 128, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !864, file: !13, line: 418, baseType: !894, size: 64, offset: 1408)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !896)
!896 = !{!897, !898, !903, !907, !911, !915}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !895, file: !13, line: 54, baseType: !247, size: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !895, file: !13, line: 55, baseType: !899, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!241, !894, !902, !209}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !895, file: !13, line: 57, baseType: !904, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!241, !894, !902, !121, !256}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !895, file: !13, line: 59, baseType: !908, size: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !863, !121}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !895, file: !13, line: 60, baseType: !912, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!46, !863}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !895, file: !13, line: 61, baseType: !916, size: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !863}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !864, file: !13, line: 419, baseType: !121, size: 64, offset: 1472)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !864, file: !13, line: 420, baseType: !121, size: 64, offset: 1536)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !864, file: !13, line: 421, baseType: !132, size: 64, offset: 1600)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !864, file: !13, line: 424, baseType: !923, size: 64, offset: 1664)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !864, file: !13, line: 425, baseType: !927, size: 64, offset: 1728)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !864, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !864, file: !13, line: 435, baseType: !466, size: 256, offset: 1856)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !864, file: !13, line: 437, baseType: !932, size: 64, offset: 2112)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !934, line: 69, size: 320, elements: !935)
!934 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!935 = !{!936, !937, !938, !955, !957, !961, !962}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !933, file: !934, line: 70, baseType: !121, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !933, file: !934, line: 71, baseType: !863, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !933, file: !934, line: 72, baseType: !939, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !934, line: 47, size: 256, elements: !942)
!942 = !{!943, !944, !950, !954}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !941, file: !934, line: 49, baseType: !7, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !941, file: !934, line: 51, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!46, !121, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !941, file: !934, line: 53, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!46, !209, !948}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !941, file: !934, line: 55, baseType: !630, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !933, file: !934, line: 73, baseType: !956, size: 16, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !933, file: !934, line: 74, baseType: !958, size: 8, offset: 208)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !168, line: 16, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !170, line: 20, baseType: !960)
!960 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !934, line: 75, baseType: !167, size: 8, offset: 216)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !934, line: 76, baseType: !963, size: 64, offset: 256)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !934, line: 76, size: 64, elements: !964)
!964 = !{!965, !966, !973}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !963, file: !934, line: 77, baseType: !107, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !963, file: !934, line: 78, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !934, line: 86, size: 128, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !969, file: !934, line: 87, baseType: !7, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !969, file: !934, line: 88, baseType: !209, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !963, file: !934, line: 79, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !934, line: 92, size: 256, elements: !977)
!977 = !{!978, !979, !980, !982, !983}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !976, file: !934, line: 94, baseType: !7, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !976, file: !934, line: 95, baseType: !7, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !976, file: !934, line: 96, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !976, file: !934, line: 97, baseType: !939, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !976, file: !934, line: 98, baseType: !107, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !864, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !864, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !864, file: !13, line: 442, baseType: !923, size: 64, offset: 2240)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !864, file: !13, line: 443, baseType: !927, size: 64, offset: 2304)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !864, file: !13, line: 444, baseType: !566, size: 8, offset: 2368)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !864, file: !13, line: 451, baseType: !566, size: 8, offset: 2376)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !864, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !864, file: !13, line: 455, baseType: !992, size: 64, offset: 2432)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !994, line: 23, size: 96, elements: !995)
!994 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !993, file: !994, line: 24, baseType: !46, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !993, file: !994, line: 24, baseType: !46, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !993, file: !994, line: 24, baseType: !46, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !864, file: !13, line: 458, baseType: !1000, size: 64, offset: 2496)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!46}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !864, file: !13, line: 460, baseType: !1004, size: 4032, align: 512, offset: 2560)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, size: 4032, elements: !1021)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1006)
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1005, file: !13, line: 363, baseType: !107, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1005, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1005, file: !13, line: 367, baseType: !1010, size: 448, offset: 128)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1010, file: !13, line: 320, baseType: !863, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1010, file: !13, line: 321, baseType: !1014, size: 384, offset: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1015, line: 40, size: 384, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1014, file: !1015, line: 41, baseType: !1018, size: 384, align: 64)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 384, align: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 2)
!1021 = !{!1022}
!1022 = !DISubrange(count: 7)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !864, file: !13, line: 463, baseType: !1024, size: 192, offset: 6592)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1025, line: 8, size: 192, elements: !1026)
!1025 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1026 = !{!1027, !1028, !1030}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1024, file: !1025, line: 10, baseType: !7, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1024, file: !1025, line: 11, baseType: !1029, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1024, file: !1025, line: 12, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1033, line: 59, size: 48, elements: !1034)
!1033 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1032, file: !1033, line: 60, baseType: !504, size: 16)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1032, file: !1033, line: 61, baseType: !504, size: 16, offset: 16)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1032, file: !1033, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1032, file: !1033, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1032, file: !1033, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1032, file: !1033, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !864, file: !13, line: 465, baseType: !259, size: 64, offset: 6784)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !864, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !864, file: !13, line: 470, baseType: !125, size: 128, offset: 6912)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !864, file: !13, line: 471, baseType: !1045, size: 64, offset: 7040)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1047, line: 33, size: 96, elements: !1048)
!1047 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1048 = !{!1049, !1050, !1051, !1052}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1046, file: !1047, line: 37, baseType: !46, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1046, file: !1047, line: 43, baseType: !46, size: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1046, file: !1047, line: 45, baseType: !179, size: 16, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1046, file: !1047, line: 47, baseType: !179, size: 16, offset: 80)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !864, file: !13, line: 476, baseType: !1054, size: 64, offset: 7104)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1056)
!1056 = !{!1057, !1074, !1075, !1076}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1055, file: !13, line: 379, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1060, line: 204, baseType: !1061)
!1060 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1060, line: 197, size: 192, elements: !1062)
!1062 = !{!1063, !1066, !1067, !1068, !1070, !1072}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1061, file: !1060, line: 198, baseType: !1064, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1060, line: 21, baseType: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !170, line: 27, baseType: !7)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1061, file: !1060, line: 199, baseType: !171, size: 8, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1061, file: !1060, line: 200, baseType: !171, size: 8, offset: 40)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1061, file: !1060, line: 201, baseType: !1069, size: 16, offset: 48)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1060, line: 17, baseType: !178)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1061, file: !1060, line: 202, baseType: !1071, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1060, line: 16, baseType: !373)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1061, file: !1060, line: 203, baseType: !1073, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1060, line: 22, baseType: !373)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1055, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1055, file: !13, line: 381, baseType: !209, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1055, file: !13, line: 382, baseType: !209, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !864, file: !13, line: 477, baseType: !1055, size: 256, offset: 7168)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !864, file: !13, line: 480, baseType: !1079, size: 64, offset: 7424)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !864, file: !13, line: 483, baseType: !1082, size: 64, offset: 7488)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !864, file: !13, line: 488, baseType: !209, size: 64, offset: 7552)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !864, file: !13, line: 492, baseType: !107, size: 64, offset: 7616)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !864, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !864, file: !13, line: 495, baseType: !107, size: 64, offset: 7744)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !864, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !864, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !864, file: !13, line: 500, baseType: !1091, size: 64, offset: 7872)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1093, line: 45, baseType: !1094)
!1093 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !864, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !864, file: !13, line: 504, baseType: !1097, size: 64, offset: 8000)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1100, line: 96, size: 192, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1101 = !{!1102, !1103, !1164, !1167}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1099, file: !1100, line: 97, baseType: !7, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1099, file: !1100, line: 98, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1100, line: 24, size: 3072, elements: !1106)
!1106 = !{!1107, !1109, !1110, !1111, !1112, !1126, !1127, !1128, !1129, !1148, !1149, !1150, !1161, !1162, !1163}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1105, file: !1100, line: 26, baseType: !1108, size: 128)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, elements: !1019)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1105, file: !1100, line: 27, baseType: !1108, size: 128, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1105, file: !1100, line: 28, baseType: !46, size: 32, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1105, file: !1100, line: 31, baseType: !139, size: 32, align: 512, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1105, file: !1100, line: 32, baseType: !1113, size: 960, offset: 576)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1114, line: 206, size: 960, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1115 = !{!1116, !1117, !1120, !1122, !1123, !1125}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1113, file: !1114, line: 207, baseType: !318, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1113, file: !1114, line: 208, baseType: !1118, size: 256, offset: 64)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1119, size: 256, elements: !447)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1113, file: !1114, line: 209, baseType: !1121, size: 256, offset: 320)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !447)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1113, file: !1114, line: 213, baseType: !245, size: 64, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1113, file: !1114, line: 215, baseType: !1124, size: 256, offset: 640)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 256, elements: !447)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1113, file: !1114, line: 216, baseType: !167, size: 8, offset: 896)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1105, file: !1100, line: 33, baseType: !259, size: 64, offset: 1536)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1105, file: !1100, line: 34, baseType: !259, size: 64, offset: 1600)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1105, file: !1100, line: 35, baseType: !566, size: 8, offset: 1664)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1105, file: !1100, line: 36, baseType: !1130, size: 320, offset: 1728)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1131, line: 11, size: 320, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1132 = !{!1133, !1140, !1141, !1146}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1130, file: !1131, line: 16, baseType: !1134, size: 128)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !126, line: 198, size: 128, elements: !1135)
!1135 = !{!1136, !1138}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1134, file: !126, line: 199, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1134, file: !126, line: 199, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1130, file: !1131, line: 17, baseType: !259, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1130, file: !1131, line: 18, baseType: !1142, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !1131, line: 19, baseType: !1147, size: 32, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !168, line: 21, baseType: !1065)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1105, file: !1100, line: 37, baseType: !531, size: 256, offset: 2048)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1105, file: !1100, line: 38, baseType: !315, size: 128, align: 64, offset: 2304)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1105, file: !1100, line: 39, baseType: !1151, size: 64, offset: 2432)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1100, line: 49, size: 768, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1152, file: !1100, line: 50, baseType: !139, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1152, file: !1100, line: 51, baseType: !1121, size: 256, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1152, file: !1100, line: 53, baseType: !1121, size: 256, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1152, file: !1100, line: 54, baseType: !259, size: 64, offset: 576)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1152, file: !1100, line: 55, baseType: !1151, size: 64, offset: 640)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1152, file: !1100, line: 56, baseType: !46, size: 32, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1152, file: !1100, line: 57, baseType: !46, size: 32, offset: 736)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1105, file: !1100, line: 40, baseType: !259, size: 64, offset: 2496)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1105, file: !1100, line: 42, baseType: !46, size: 32, offset: 2560)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1105, file: !1100, line: 43, baseType: !1098, size: 64, offset: 2624)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1099, file: !1100, line: 99, baseType: !1165, offset: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1166, line: 211, elements: !345)
!1166 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1099, file: !1100, line: 100, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1100, line: 63, size: 3008, elements: !1170)
!1170 = !{!1171, !1172, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1202}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1169, file: !1100, line: 64, baseType: !1151, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1169, file: !1100, line: 65, baseType: !1173, size: 192, offset: 64)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1151, size: 192, elements: !210)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1169, file: !1100, line: 67, baseType: !46, size: 32, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1169, file: !1100, line: 68, baseType: !466, size: 256, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1169, file: !1100, line: 69, baseType: !139, size: 32, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1169, file: !1100, line: 70, baseType: !466, size: 256, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1169, file: !1100, line: 71, baseType: !259, size: 64, offset: 896)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1169, file: !1100, line: 72, baseType: !259, size: 64, offset: 960)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1169, file: !1100, line: 73, baseType: !259, size: 64, offset: 1024)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1169, file: !1100, line: 74, baseType: !259, size: 64, offset: 1088)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1169, file: !1100, line: 75, baseType: !259, size: 64, offset: 1152)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1169, file: !1100, line: 76, baseType: !259, size: 64, offset: 1216)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1169, file: !1100, line: 77, baseType: !259, size: 64, offset: 1280)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1169, file: !1100, line: 78, baseType: !259, size: 64, offset: 1344)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1169, file: !1100, line: 79, baseType: !566, size: 8, offset: 1408)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1169, file: !1100, line: 80, baseType: !259, size: 64, offset: 1472)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1169, file: !1100, line: 81, baseType: !466, size: 256, offset: 1536)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1169, file: !1100, line: 82, baseType: !883, size: 256, offset: 1792)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1169, file: !1100, line: 84, baseType: !159, size: 32, offset: 2048)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1169, file: !1100, line: 87, baseType: !259, size: 64, offset: 2112)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1169, file: !1100, line: 88, baseType: !259, size: 64, offset: 2176)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1169, file: !1100, line: 89, baseType: !1194, size: 704, offset: 2240)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !532, line: 111, size: 704, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1201}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1194, file: !532, line: 112, baseType: !531, size: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1194, file: !532, line: 113, baseType: !1130, size: 320, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1194, file: !532, line: 116, baseType: !1199, size: 64, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !532, line: 18, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1194, file: !532, line: 117, baseType: !46, size: 32, offset: 640)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1169, file: !1100, line: 90, baseType: !1098, size: 64, offset: 2944)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !864, file: !13, line: 515, baseType: !1204, size: 64, offset: 8064)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1206, line: 117, size: 128, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1205, file: !1206, line: 118, baseType: !445, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1205, file: !1206, line: 119, baseType: !445, size: 32, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1205, file: !1206, line: 120, baseType: !245, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !864, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !864, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !864, file: !13, line: 520, baseType: !1214, size: 64, offset: 8192)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !864, file: !13, line: 523, baseType: !1216, size: 64, offset: 8256)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !864, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !864, file: !13, line: 525, baseType: !1221, size: 64, offset: 8384)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !864, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !864, file: !13, line: 533, baseType: !107, size: 64, offset: 8512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !864, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !864, file: !13, line: 535, baseType: !1228, size: 64, offset: 8640)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !864, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !864, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !864, file: !13, line: 540, baseType: !1232, size: 64, offset: 8768)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1234, line: 32, size: 64, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1233, file: !1234, line: 33, baseType: !445, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1233, file: !1234, line: 34, baseType: !445, size: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !864, file: !13, line: 563, baseType: !125, size: 128, offset: 8832)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !864, file: !13, line: 565, baseType: !125, size: 128, offset: 8960)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !864, file: !13, line: 568, baseType: !1241, size: 64, offset: 9088)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !864, file: !13, line: 570, baseType: !159, size: 32, offset: 9152)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !858, file: !20, line: 101, baseType: !121, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !858, file: !20, line: 103, baseType: !566, size: 8, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !858, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !858, file: !20, line: 106, baseType: !1249, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1252, line: 282, size: 1600, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1253 = !{!1254, !1258, !1259, !1263}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1251, file: !1252, line: 283, baseType: !1255, size: 256)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1251, file: !1252, line: 284, baseType: !1255, size: 256, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1251, file: !1252, line: 285, baseType: !1260, size: 1024, offset: 512)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1024, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1251, file: !1252, line: 286, baseType: !487, size: 64, offset: 1536)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !858, file: !20, line: 107, baseType: !1265, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1252, line: 217, size: 256, elements: !1268)
!1268 = !{!1269, !1273, !1275, !1276}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1267, file: !1252, line: 218, baseType: !1270, size: 128)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 128, elements: !1271)
!1271 = !{!1272}
!1272 = !DISubrange(count: 16)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1267, file: !1252, line: 219, baseType: !1274, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1252, line: 15, baseType: !259)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1267, file: !1252, line: 220, baseType: !1065, size: 32, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1267, file: !1252, line: 221, baseType: !1065, size: 32, offset: 224)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !858, file: !20, line: 109, baseType: !817, size: 64, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !858, file: !20, line: 110, baseType: !808, size: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !858, file: !20, line: 111, baseType: !817, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !858, file: !20, line: 112, baseType: !808, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !858, file: !20, line: 113, baseType: !1282, size: 64, offset: 704)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!46, !113, !1285}
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1287)
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1286, file: !38, line: 59, baseType: !46, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !858, file: !20, line: 114, baseType: !817, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !858, file: !20, line: 115, baseType: !261, size: 64, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !858, file: !20, line: 116, baseType: !261, size: 64, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !858, file: !20, line: 118, baseType: !812, size: 64, offset: 960)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !858, file: !20, line: 119, baseType: !808, size: 64, offset: 1024)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !858, file: !20, line: 121, baseType: !1295, size: 64, offset: 1088)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !845, file: !846, line: 88, baseType: !797, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !845, file: !846, line: 89, baseType: !817, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !845, file: !846, line: 90, baseType: !808, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !845, file: !846, line: 91, baseType: !808, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !845, file: !846, line: 92, baseType: !808, size: 64, offset: 640)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !845, file: !846, line: 94, baseType: !817, size: 64, offset: 704)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !845, file: !846, line: 95, baseType: !817, size: 64, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !845, file: !846, line: 97, baseType: !1282, size: 64, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !845, file: !846, line: 98, baseType: !817, size: 64, offset: 896)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !845, file: !846, line: 100, baseType: !817, size: 64, offset: 960)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !845, file: !846, line: 102, baseType: !817, size: 64, offset: 1024)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !845, file: !846, line: 103, baseType: !808, size: 64, offset: 1088)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !845, file: !846, line: 105, baseType: !812, size: 64, offset: 1152)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !845, file: !846, line: 107, baseType: !1311, size: 64, offset: 1216)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !846, line: 107, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !845, file: !846, line: 109, baseType: !566, size: 8, offset: 1280)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !114, file: !26, line: 715, baseType: !857, size: 64, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !114, file: !26, line: 717, baseType: !107, size: 64, offset: 896)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !114, file: !26, line: 719, baseType: !107, size: 64, offset: 960)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !114, file: !26, line: 721, baseType: !466, size: 256, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !114, file: !26, line: 725, baseType: !1320, size: 448, offset: 1280)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1320, file: !26, line: 518, baseType: !125, size: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1320, file: !26, line: 519, baseType: !125, size: 128, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1320, file: !26, line: 520, baseType: !125, size: 128, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1320, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !114, file: !26, line: 726, baseType: !1327, size: 2496, offset: 1728)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1373, !1374, !1375, !1376, !1377, !1378, !1449, !1450, !1451, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1489, !1493}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1327, file: !38, line: 664, baseType: !1285, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1327, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1327, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1327, file: !38, line: 667, baseType: !566, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1327, file: !38, line: 668, baseType: !566, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1327, file: !38, line: 669, baseType: !566, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1327, file: !38, line: 670, baseType: !566, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1327, file: !38, line: 671, baseType: !566, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1327, file: !38, line: 672, baseType: !566, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1327, file: !38, line: 673, baseType: !566, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1327, file: !38, line: 674, baseType: !566, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1327, file: !38, line: 675, baseType: !1147, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1327, file: !38, line: 676, baseType: !139, size: 32, offset: 96)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1327, file: !38, line: 678, baseType: !125, size: 128, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1327, file: !38, line: 679, baseType: !883, size: 256, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1327, file: !38, line: 680, baseType: !1345, size: 64, offset: 512)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1347, line: 43, size: 1536, elements: !1348)
!1347 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1356, !1357, !1358, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1346, file: !1347, line: 44, baseType: !121, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1346, file: !1347, line: 45, baseType: !46, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1346, file: !1347, line: 46, baseType: !125, size: 128, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !1347, line: 47, baseType: !139, size: 32, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1346, file: !1347, line: 48, baseType: !1354, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1346, file: !1347, line: 49, baseType: !1130, size: 320, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1346, file: !1347, line: 50, baseType: !259, size: 64, offset: 704)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1346, file: !1347, line: 51, baseType: !1359, size: 64, offset: 768)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1360, line: 29, baseType: !384)
!1360 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1346, file: !1347, line: 52, baseType: !1359, size: 64, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1346, file: !1347, line: 53, baseType: !1359, size: 64, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1346, file: !1347, line: 54, baseType: !1359, size: 64, offset: 960)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1346, file: !1347, line: 55, baseType: !1359, size: 64, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1346, file: !1347, line: 56, baseType: !259, size: 64, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1346, file: !1347, line: 57, baseType: !259, size: 64, offset: 1152)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1346, file: !1347, line: 58, baseType: !259, size: 64, offset: 1216)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1346, file: !1347, line: 59, baseType: !259, size: 64, offset: 1280)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1346, file: !1347, line: 60, baseType: !259, size: 64, offset: 1344)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1346, file: !1347, line: 61, baseType: !113, size: 64, offset: 1408)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1346, file: !1347, line: 62, baseType: !566, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1346, file: !1347, line: 63, baseType: !566, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1327, file: !38, line: 681, baseType: !566, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1327, file: !38, line: 682, baseType: !566, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1327, file: !38, line: 683, baseType: !566, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1327, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1327, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1327, file: !38, line: 690, baseType: !1379, size: 512, offset: 640)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1380)
!1380 = !{!1381, !1387, !1388, !1393, !1445, !1446, !1447, !1448}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1379, file: !33, line: 119, baseType: !1382, size: 256)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1383, line: 9, size: 256, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1382, file: !1383, line: 10, baseType: !572, size: 192, align: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1382, file: !1383, line: 11, baseType: !1359, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1379, file: !33, line: 120, baseType: !1359, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1379, file: !33, line: 121, baseType: !1389, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!32, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1379, file: !33, line: 122, baseType: !1394, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1396)
!1396 = !{!1397, !1422, !1423, !1426, !1431, !1432, !1440, !1444}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1395, file: !33, line: 160, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1399, file: !33, line: 216, baseType: !400, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1399, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1399, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1399, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1399, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1399, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1399, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1399, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1399, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1399, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1399, file: !33, line: 227, baseType: !179, size: 16, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1399, file: !33, line: 228, baseType: !179, size: 16, offset: 208)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1399, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1399, file: !33, line: 235, baseType: !1359, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1399, file: !33, line: 236, baseType: !1392, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1399, file: !33, line: 237, baseType: !1359, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1399, file: !33, line: 238, baseType: !1392, size: 64, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1399, file: !33, line: 239, baseType: !1419, size: 4096, align: 512, offset: 512)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 4096, align: 512, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 8)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1395, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1395, file: !33, line: 162, baseType: !1424, size: 32, offset: 96)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !126, line: 32, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !243, line: 96, baseType: !46)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1395, file: !33, line: 163, baseType: !1427, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !415, line: 274, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !415, line: 274, size: 32, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1428, file: !415, line: 274, baseType: !414, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1395, file: !33, line: 164, baseType: !1392, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1395, file: !33, line: 165, baseType: !1433, size: 128, offset: 256)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1383, line: 14, size: 128, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1433, file: !1383, line: 15, baseType: !1436, size: 128)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !573, line: 26, size: 128, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1436, file: !573, line: 27, baseType: !675, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1436, file: !573, line: 28, baseType: !577, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1395, file: !33, line: 166, baseType: !1441, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1359}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1395, file: !33, line: 167, baseType: !1359, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1379, file: !33, line: 123, baseType: !167, size: 8, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1379, file: !33, line: 124, baseType: !167, size: 8, offset: 456)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1379, file: !33, line: 125, baseType: !167, size: 8, offset: 464)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1379, file: !33, line: 126, baseType: !167, size: 8, offset: 472)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1327, file: !38, line: 691, baseType: !372, size: 64, offset: 1152)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1327, file: !38, line: 692, baseType: !531, size: 256, offset: 1216)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1327, file: !38, line: 693, baseType: !1452, size: 192, offset: 1472)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1453, line: 41, baseType: !1454)
!1453 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1453, line: 37, size: 192, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1454, file: !1453, line: 38, baseType: !139, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1454, file: !1453, line: 39, baseType: !125, size: 128, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1327, file: !38, line: 694, baseType: !1354, size: 64, offset: 1664)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1327, file: !38, line: 695, baseType: !159, size: 32, offset: 1728)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1327, file: !38, line: 696, baseType: !159, size: 32, offset: 1760)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1327, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1327, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1327, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1327, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1327, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1327, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1327, file: !38, line: 703, baseType: !566, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1327, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1327, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1327, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1327, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1327, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1327, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1327, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1327, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1327, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1327, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1327, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1327, file: !38, line: 715, baseType: !372, size: 64, offset: 2048)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1327, file: !38, line: 716, baseType: !372, size: 64, offset: 2112)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1327, file: !38, line: 717, baseType: !372, size: 64, offset: 2176)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1327, file: !38, line: 718, baseType: !372, size: 64, offset: 2240)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1327, file: !38, line: 720, baseType: !1484, size: 64, offset: 2304)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1485, file: !38, line: 633, baseType: !139, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1485, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1327, file: !38, line: 721, baseType: !1490, size: 64, offset: 2368)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !113, !445}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1327, file: !38, line: 722, baseType: !1494, size: 64, offset: 2432)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !114, file: !26, line: 727, baseType: !1497, size: 64, offset: 4224)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1506, !1507, !1508}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1498, file: !38, line: 743, baseType: !814, size: 1472)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1498, file: !38, line: 744, baseType: !817, size: 64, offset: 1472)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1498, file: !38, line: 745, baseType: !1503, size: 64, offset: 1536)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !113, !566}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1498, file: !38, line: 746, baseType: !817, size: 64, offset: 1600)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1498, file: !38, line: 747, baseType: !808, size: 64, offset: 1664)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1498, file: !38, line: 748, baseType: !808, size: 64, offset: 1728)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !114, file: !26, line: 736, baseType: !1510, size: 128, offset: 4288)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1511)
!1511 = !{!1512, !1516}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1510, file: !26, line: 531, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1515, line: 13, flags: DIFlagFwdDecl)
!1515 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1510, file: !26, line: 532, baseType: !1517, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !114, file: !26, line: 738, baseType: !1520, size: 64, offset: 4416)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !114, file: !26, line: 740, baseType: !1524, size: 64, offset: 4480)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !114, file: !26, line: 741, baseType: !372, size: 64, offset: 4544)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !114, file: !26, line: 746, baseType: !372, size: 64, offset: 4608)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !114, file: !26, line: 747, baseType: !1528, size: 64, offset: 4672)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !114, file: !26, line: 749, baseType: !1532, size: 64, offset: 4736)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1534)
!1534 = !{!1535, !1536, !1537}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1533, file: !26, line: 433, baseType: !7, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1533, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1533, file: !26, line: 435, baseType: !259, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !114, file: !26, line: 751, baseType: !125, size: 128, offset: 4800)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !114, file: !26, line: 762, baseType: !1540, size: 64, offset: 4928)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !114, file: !26, line: 770, baseType: !1543, offset: 4992)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1544, line: 5, elements: !345)
!1544 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !114, file: !26, line: 772, baseType: !1546, size: 64, offset: 4992)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1548, line: 48, size: 1152, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1549 = !{!1550, !1551, !1553, !1554, !1657, !1665, !1666, !1667, !1668, !1669, !1670}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1547, file: !1548, line: 49, baseType: !121, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1547, file: !1548, line: 50, baseType: !1552, size: 32, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1548, line: 25, baseType: !1147)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1547, file: !1548, line: 51, baseType: !121, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1547, file: !1548, line: 52, baseType: !1555, size: 512, offset: 192)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1556, line: 41, size: 512, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1557 = !{!1558, !1560, !1653, !1654, !1655, !1656}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1555, file: !1556, line: 42, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1555, file: !1556, line: 43, baseType: !1561, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1556, line: 125, size: 1408, elements: !1564)
!1564 = !{!1565, !1569, !1573, !1579, !1583, !1584, !1588, !1592, !1596, !1600, !1604, !1605, !1609, !1613, !1617, !1628, !1629, !1630, !1631, !1641, !1645, !1649}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1563, file: !1556, line: 126, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!1559, !1559}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1563, file: !1556, line: 127, baseType: !1570, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !1559}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1563, file: !1556, line: 128, baseType: !1574, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!566, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1563, file: !1556, line: 129, baseType: !1580, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!487, !1577, !800}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1563, file: !1556, line: 131, baseType: !1574, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1563, file: !1556, line: 133, baseType: !1585, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!53, !1577}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1563, file: !1556, line: 134, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!566, !1577, !121}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1563, file: !1556, line: 136, baseType: !1593, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!46, !1577, !121, !7, !107, !256}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1563, file: !1556, line: 141, baseType: !1597, size: 64, offset: 512)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!46, !1577, !121, !1214, !256}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1563, file: !1556, line: 144, baseType: !1601, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!121, !1577}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1563, file: !1556, line: 145, baseType: !1601, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1563, file: !1556, line: 146, baseType: !1606, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!1559, !1577}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1563, file: !1556, line: 148, baseType: !1610, size: 64, offset: 768)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1559, !1577, !1559}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1563, file: !1556, line: 151, baseType: !1614, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1559, !1577, !121}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1563, file: !1556, line: 153, baseType: !1618, size: 64, offset: 896)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!46, !1577, !121, !121, !7, !7, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1556, line: 94, size: 640, elements: !1623)
!1623 = !{!1624, !1625, !1626}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1622, file: !1556, line: 95, baseType: !1559, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1622, file: !1556, line: 96, baseType: !7, size: 32, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1622, file: !1556, line: 97, baseType: !1627, size: 512, offset: 128)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 512, elements: !1420)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1563, file: !1556, line: 158, baseType: !1610, size: 64, offset: 960)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1563, file: !1556, line: 161, baseType: !1606, size: 64, offset: 1024)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1563, file: !1556, line: 163, baseType: !1566, size: 64, offset: 1088)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1563, file: !1556, line: 164, baseType: !1632, size: 64, offset: 1152)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!46, !1577, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1556, line: 73, size: 128, elements: !1637)
!1637 = !{!1638, !1639, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1636, file: !1556, line: 74, baseType: !7, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1636, file: !1556, line: 75, baseType: !7, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1636, file: !1556, line: 76, baseType: !1577, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1563, file: !1556, line: 166, baseType: !1642, size: 64, offset: 1216)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!107, !1559, !46}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1563, file: !1556, line: 167, baseType: !1646, size: 64, offset: 1280)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!46, !1577, !7}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1563, file: !1556, line: 168, baseType: !1650, size: 64, offset: 1344)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!46, !1559}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1555, file: !1556, line: 44, baseType: !113, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1555, file: !1556, line: 45, baseType: !125, size: 128, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1555, file: !1556, line: 46, baseType: !125, size: 128, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1555, file: !1556, line: 47, baseType: !167, size: 8, offset: 448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1547, file: !1548, line: 54, baseType: !1658, size: 64, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1548, line: 28, size: 256, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !1548, line: 29, baseType: !209, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1659, file: !1548, line: 30, baseType: !46, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1659, file: !1548, line: 31, baseType: !107, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1659, file: !1548, line: 32, baseType: !1658, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1547, file: !1548, line: 55, baseType: !1658, size: 64, offset: 768)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1547, file: !1548, line: 56, baseType: !1546, size: 64, offset: 832)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1547, file: !1548, line: 57, baseType: !1546, size: 64, offset: 896)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1547, file: !1548, line: 58, baseType: !1546, size: 64, offset: 960)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1547, file: !1548, line: 62, baseType: !259, size: 64, offset: 1024)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1547, file: !1548, line: 63, baseType: !107, size: 64, offset: 1088)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !114, file: !26, line: 773, baseType: !1559, size: 64, offset: 5056)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !114, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !114, file: !26, line: 778, baseType: !1674, size: 32, offset: 5152)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !126, line: 21, baseType: !1675)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !126, line: 18, baseType: !1147)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !114, file: !26, line: 779, baseType: !1147, size: 32, offset: 5184)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !114, file: !26, line: 781, baseType: !139, size: 32, offset: 5216)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !114, file: !26, line: 782, baseType: !125, size: 128, offset: 5248)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !114, file: !26, line: 784, baseType: !1680, size: 64, offset: 5376)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1683, line: 52, size: 768, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1693, !1697, !1698, !1699, !1700, !1704, !1708}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1682, file: !1683, line: 53, baseType: !121, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1682, file: !1683, line: 55, baseType: !261, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1682, file: !1683, line: 56, baseType: !261, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1682, file: !1683, line: 58, baseType: !797, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1682, file: !1683, line: 59, baseType: !1690, size: 64, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!209, !800, !806}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1682, file: !1683, line: 61, baseType: !1694, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1680}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1682, file: !1683, line: 62, baseType: !808, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1682, file: !1683, line: 64, baseType: !817, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1682, file: !1683, line: 66, baseType: !606, size: 64, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1682, file: !1683, line: 67, baseType: !1701, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!487, !800}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1682, file: !1683, line: 69, baseType: !1705, size: 64, offset: 640)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !800, !641, !648}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1682, file: !1683, line: 71, baseType: !812, size: 64, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !114, file: !26, line: 785, baseType: !261, size: 64, offset: 5440)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !114, file: !26, line: 787, baseType: !808, size: 64, offset: 5504)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !114, file: !26, line: 788, baseType: !1712, size: 64, offset: 5568)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !114, file: !26, line: 789, baseType: !1715, size: 64, offset: 5632)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !114, file: !26, line: 791, baseType: !1718, size: 64, offset: 5696)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1719, file: !26, line: 598, baseType: !59, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1719, file: !26, line: 599, baseType: !68, size: 32, offset: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1719, file: !26, line: 600, baseType: !73, size: 32, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1719, file: !26, line: 601, baseType: !566, size: 8, offset: 96)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1719, file: !26, line: 602, baseType: !566, size: 8, offset: 104)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !114, file: !26, line: 793, baseType: !78, size: 32, offset: 5760)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !114, file: !26, line: 795, baseType: !566, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !114, file: !26, line: 796, baseType: !566, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !114, file: !26, line: 797, baseType: !566, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !114, file: !26, line: 798, baseType: !566, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !114, file: !26, line: 799, baseType: !566, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !109, file: !110, line: 76, baseType: !1733, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_chan_ops", file: !110, line: 46, size: 384, elements: !1736)
!1736 = !{!1737, !1774, !1778, !1782, !1786, !1790}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !1735, file: !110, line: 47, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!46, !1741, !107}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_chan", file: !110, line: 118, size: 1984, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1764, !1765, !1766, !1767, !1768, !1772, !1773}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "mbox", scope: !1742, file: !110, line: 119, baseType: !108, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "txdone_method", scope: !1742, file: !110, line: 120, baseType: !7, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1742, file: !110, line: 121, baseType: !1747, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_client", file: !1749, line: 29, size: 448, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/mailbox_client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b0c6a21194f80ebca47695debe622e85")
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1759, !1760}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1748, file: !1749, line: 30, baseType: !113, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "tx_block", scope: !1748, file: !1749, line: 31, baseType: !566, size: 8, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tout", scope: !1748, file: !1749, line: 32, baseType: !259, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "knows_txdone", scope: !1748, file: !1749, line: 33, baseType: !566, size: 8, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rx_callback", scope: !1748, file: !1749, line: 35, baseType: !1756, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !1747, !107}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "tx_prepare", scope: !1748, file: !1749, line: 36, baseType: !1756, size: 64, offset: 320)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "tx_done", scope: !1748, file: !1749, line: 37, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1747, !107, !46}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "tx_complete", scope: !1742, file: !110, line: 122, baseType: !883, size: 256, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "active_req", scope: !1742, file: !110, line: 123, baseType: !107, size: 64, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count", scope: !1742, file: !110, line: 124, baseType: !7, size: 32, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "msg_free", scope: !1742, file: !110, line: 124, baseType: !7, size: 32, offset: 544)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "msg_data", scope: !1742, file: !110, line: 125, baseType: !1769, size: 1280, offset: 576)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 1280, elements: !1770)
!1770 = !{!1771}
!1771 = !DISubrange(count: 20)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1742, file: !110, line: 126, baseType: !139, size: 32, offset: 1856)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "con_priv", scope: !1742, file: !110, line: 127, baseType: !107, size: 64, offset: 1920)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1735, file: !110, line: 48, baseType: !1775, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!46, !1741, !259}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1735, file: !110, line: 49, baseType: !1779, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!46, !1741}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1735, file: !110, line: 50, baseType: !1783, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1741}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "last_tx_done", scope: !1735, file: !110, line: 51, baseType: !1787, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!566, !1741}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "peek_data", scope: !1735, file: !110, line: 52, baseType: !1787, size: 64, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "chans", scope: !109, file: !110, line: 77, baseType: !1741, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "num_chans", scope: !109, file: !110, line: 78, baseType: !46, size: 32, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "txdone_irq", scope: !109, file: !110, line: 79, baseType: !566, size: 8, offset: 224)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "txdone_poll", scope: !109, file: !110, line: 80, baseType: !566, size: 8, offset: 232)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "txpoll_period", scope: !109, file: !110, line: 81, baseType: !7, size: 32, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !109, file: !110, line: 82, baseType: !1797, size: 64, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1741, !108, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !1548, line: 71, size: 640, elements: !1803)
!1803 = !{!1804, !1805, !1806}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !1802, file: !1548, line: 72, baseType: !1546, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !1802, file: !1548, line: 73, baseType: !46, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1802, file: !1548, line: 74, baseType: !1807, size: 512, offset: 96)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1808, size: 512, elements: !1271)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !126, line: 110, baseType: !1147)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "poll_hrt", scope: !109, file: !110, line: 85, baseType: !1379, size: 512, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "poll_hrt_lock", scope: !109, file: !110, line: 86, baseType: !139, size: 32, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !109, file: !110, line: 87, baseType: !125, size: 128, offset: 960)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !126, line: 154, baseType: !7)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !171)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !129)
!1818 = !{!0, !1819, !1824, !1826, !1828, !1830, !1832, !1837, !1839, !1841, !1843, !1846, !1851, !1853, !1858, !1863, !1868, !1873, !1878, !1880, !1882, !1887, !1889, !1891, !1893, !1895, !1900, !1902, !1904, !1906, !1914, !1919}
!1819 = !DIGlobalVariableExpression(var: !1820, expr: !DIExpression())
!1820 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !1821, isLocal: true, isDefinition: true)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 288, elements: !1822)
!1822 = !{!1823}
!1823 = !DISubrange(count: 36)
!1824 = !DIGlobalVariableExpression(var: !1825, expr: !DIExpression())
!1825 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_chan_txdone206", scope: !2, file: !3, line: 187, type: !107, isLocal: true, isDefinition: true)
!1826 = !DIGlobalVariableExpression(var: !1827, expr: !DIExpression())
!1827 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !1255, isLocal: true, isDefinition: true)
!1828 = !DIGlobalVariableExpression(var: !1829, expr: !DIExpression())
!1829 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_client_txdone207", scope: !2, file: !3, line: 207, type: !107, isLocal: true, isDefinition: true)
!1830 = !DIGlobalVariableExpression(var: !1831, expr: !DIExpression())
!1831 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_client_peek_data208", scope: !2, file: !3, line: 231, type: !107, isLocal: true, isDefinition: true)
!1832 = !DIGlobalVariableExpression(var: !1833, expr: !DIExpression())
!1833 = distinct !DIGlobalVariable(scope: null, file: !3, line: 266, type: !1834, isLocal: true, isDefinition: true)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 272, elements: !1835)
!1835 = !{!1836}
!1836 = !DISubrange(count: 34)
!1837 = !DIGlobalVariableExpression(var: !1838, expr: !DIExpression())
!1838 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_send_message209", scope: !2, file: !3, line: 290, type: !107, isLocal: true, isDefinition: true)
!1839 = !DIGlobalVariableExpression(var: !1840, expr: !DIExpression())
!1840 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_flush210", scope: !2, file: !3, line: 319, type: !107, isLocal: true, isDefinition: true)
!1841 = !DIGlobalVariableExpression(var: !1842, expr: !DIExpression())
!1842 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_bind_client211", scope: !2, file: !3, line: 384, type: !107, isLocal: true, isDefinition: true)
!1843 = !DIGlobalVariableExpression(var: !1844, expr: !DIExpression())
!1844 = distinct !DIGlobalVariable(scope: null, file: !3, line: 418, type: !1845, isLocal: true, isDefinition: true)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 56, elements: !1021)
!1846 = !DIGlobalVariableExpression(var: !1847, expr: !DIExpression())
!1847 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !1848, isLocal: true, isDefinition: true)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 96, elements: !1849)
!1849 = !{!1850}
!1850 = !DISubrange(count: 12)
!1851 = !DIGlobalVariableExpression(var: !1852, expr: !DIExpression())
!1852 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_request_channel212", scope: !2, file: !3, line: 447, type: !107, isLocal: true, isDefinition: true)
!1853 = !DIGlobalVariableExpression(var: !1854, expr: !DIExpression())
!1854 = distinct !DIGlobalVariable(scope: null, file: !3, line: 458, type: !1855, isLocal: true, isDefinition: true)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 264, elements: !1856)
!1856 = !{!1857}
!1857 = !DISubrange(count: 33)
!1858 = !DIGlobalVariableExpression(var: !1859, expr: !DIExpression())
!1859 = distinct !DIGlobalVariable(scope: null, file: !3, line: 458, type: !1860, isLocal: true, isDefinition: true)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 224, elements: !1861)
!1861 = !{!1862}
!1862 = !DISubrange(count: 28)
!1863 = !DIGlobalVariableExpression(var: !1864, expr: !DIExpression())
!1864 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !1865, isLocal: true, isDefinition: true)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 88, elements: !1866)
!1866 = !{!1867}
!1867 = !DISubrange(count: 11)
!1868 = !DIGlobalVariableExpression(var: !1869, expr: !DIExpression())
!1869 = distinct !DIGlobalVariable(scope: null, file: !3, line: 463, type: !1870, isLocal: true, isDefinition: true)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 320, elements: !1871)
!1871 = !{!1872}
!1872 = !DISubrange(count: 40)
!1873 = !DIGlobalVariableExpression(var: !1874, expr: !DIExpression())
!1874 = distinct !DIGlobalVariable(scope: null, file: !3, line: 474, type: !1875, isLocal: true, isDefinition: true)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 336, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 42)
!1878 = !DIGlobalVariableExpression(var: !1879, expr: !DIExpression())
!1879 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_request_channel_byname213", scope: !2, file: !3, line: 478, type: !107, isLocal: true, isDefinition: true)
!1880 = !DIGlobalVariableExpression(var: !1881, expr: !DIExpression())
!1881 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_free_channel214", scope: !2, file: !3, line: 505, type: !107, isLocal: true, isDefinition: true)
!1882 = !DIGlobalVariableExpression(var: !1883, expr: !DIExpression())
!1883 = distinct !DIGlobalVariable(scope: null, file: !3, line: 543, type: !1884, isLocal: true, isDefinition: true)
!1884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 248, elements: !1885)
!1885 = !{!1886}
!1886 = !DISubrange(count: 31)
!1887 = !DIGlobalVariableExpression(var: !1888, expr: !DIExpression())
!1888 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_controller_register215", scope: !2, file: !3, line: 571, type: !107, isLocal: true, isDefinition: true)
!1889 = !DIGlobalVariableExpression(var: !1890, expr: !DIExpression())
!1890 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mbox_controller_unregister216", scope: !2, file: !3, line: 596, type: !107, isLocal: true, isDefinition: true)
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(scope: null, file: !3, line: 633, type: !1834, isLocal: true, isDefinition: true)
!1893 = !DIGlobalVariableExpression(var: !1894, expr: !DIExpression())
!1894 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_mbox_controller_register217", scope: !2, file: !3, line: 649, type: !107, isLocal: true, isDefinition: true)
!1895 = !DIGlobalVariableExpression(var: !1896, expr: !DIExpression())
!1896 = distinct !DIGlobalVariable(scope: null, file: !3, line: 663, type: !1897, isLocal: true, isDefinition: true)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 208, elements: !1898)
!1898 = !{!1899}
!1899 = !DISubrange(count: 26)
!1900 = !DIGlobalVariableExpression(var: !1901, expr: !DIExpression())
!1901 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_mbox_controller_unregister218", scope: !2, file: !3, line: 666, type: !107, isLocal: true, isDefinition: true)
!1902 = !DIGlobalVariableExpression(var: !1903, expr: !DIExpression())
!1903 = distinct !DIGlobalVariable(name: "con_mutex", scope: !2, file: !3, line: 25, type: !466, isLocal: true, isDefinition: true)
!1904 = !DIGlobalVariableExpression(var: !1905, expr: !DIExpression())
!1905 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !1855, isLocal: true, isDefinition: true)
!1906 = !DIGlobalVariableExpression(var: !1907, expr: !DIExpression())
!1907 = distinct !DIGlobalVariable(name: "__key", scope: !1908, file: !884, line: 87, type: !1913, isLocal: true, isDefinition: true)
!1908 = distinct !DISubprogram(name: "init_completion", scope: !884, file: !884, line: 84, type: !1909, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !882}
!1911 = !{!1912}
!1912 = !DILocalVariable(name: "x", arg: 1, scope: !1908, file: !884, line: 84, type: !882)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1166, line: 206, elements: !345)
!1914 = !DIGlobalVariableExpression(var: !1915, expr: !DIExpression())
!1915 = distinct !DIGlobalVariable(scope: null, file: !884, line: 87, type: !1916, isLocal: true, isDefinition: true)
!1916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 72, elements: !1917)
!1917 = !{!1918}
!1918 = !DISubrange(count: 9)
!1919 = !DIGlobalVariableExpression(var: !1920, expr: !DIExpression())
!1920 = distinct !DIGlobalVariable(name: "mbox_cons", scope: !2, file: !3, line: 24, type: !125, isLocal: true, isDefinition: true)
!1921 = !{i32 7, !"Dwarf Version", i32 5}
!1922 = !{i32 2, !"Debug Info Version", i32 3}
!1923 = !{i32 1, !"wchar_size", i32 2}
!1924 = !{i32 8, !"cf-protection-branch", i32 1}
!1925 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1926 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1927 = !{i32 1, !"Code Model", i32 2}
!1928 = !{i32 1, !"override-stack-alignment", i32 8}
!1929 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1930 = distinct !DISubprogram(name: "mbox_chan_received_data", scope: !3, file: !3, line: 159, type: !1931, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !1741, !107}
!1933 = !{!1934, !1935}
!1934 = !DILocalVariable(name: "chan", arg: 1, scope: !1930, file: !3, line: 159, type: !1741)
!1935 = !DILocalVariable(name: "mssg", arg: 2, scope: !1930, file: !3, line: 159, type: !107)
!1936 = !DILocation(line: 159, column: 48, scope: !1930)
!1937 = !DILocation(line: 159, column: 60, scope: !1930)
!1938 = !DILocation(line: 162, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 162, column: 6)
!1940 = !DILocation(line: 162, column: 12, scope: !1939)
!1941 = !DILocation(line: 162, column: 16, scope: !1939)
!1942 = !DILocation(line: 162, column: 6, scope: !1930)
!1943 = !DILocation(line: 163, column: 3, scope: !1939)
!1944 = !DILocation(line: 163, column: 9, scope: !1939)
!1945 = !DILocation(line: 163, column: 13, scope: !1939)
!1946 = !DILocation(line: 163, column: 25, scope: !1939)
!1947 = !DILocation(line: 163, column: 31, scope: !1939)
!1948 = !DILocation(line: 163, column: 35, scope: !1939)
!1949 = !DILocation(line: 164, column: 1, scope: !1930)
!1950 = distinct !DISubprogram(name: "mbox_chan_txdone", scope: !3, file: !3, line: 177, type: !1951, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1741, !46}
!1953 = !{!1954, !1955}
!1954 = !DILocalVariable(name: "chan", arg: 1, scope: !1950, file: !3, line: 177, type: !1741)
!1955 = !DILocalVariable(name: "r", arg: 2, scope: !1950, file: !3, line: 177, type: !46)
!1956 = !DILocation(line: 177, column: 41, scope: !1950)
!1957 = !DILocation(line: 177, column: 51, scope: !1950)
!1958 = !DILocation(line: 179, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 179, column: 6)
!1960 = !DILocation(line: 179, column: 6, scope: !1950)
!1961 = !DILocation(line: 180, column: 3, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 180, column: 3)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 179, column: 56)
!1964 = !DILocation(line: 180, column: 3, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 180, column: 3)
!1966 = !DILocation(line: 182, column: 3, scope: !1963)
!1967 = !DILocation(line: 185, column: 10, scope: !1950)
!1968 = !DILocation(line: 185, column: 16, scope: !1950)
!1969 = !DILocation(line: 185, column: 2, scope: !1950)
!1970 = !DILocation(line: 186, column: 1, scope: !1950)
!1971 = !DISubprogram(name: "_dev_err", scope: !1972, file: !1972, line: 50, type: !1973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1972 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !800, !121, null}
!1975 = distinct !DISubprogram(name: "tx_tick", scope: !3, file: !3, line: 94, type: !1951, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1985}
!1977 = !DILocalVariable(name: "chan", arg: 1, scope: !1975, file: !3, line: 94, type: !1741)
!1978 = !DILocalVariable(name: "r", arg: 2, scope: !1975, file: !3, line: 94, type: !46)
!1979 = !DILocalVariable(name: "flags", scope: !1975, file: !3, line: 96, type: !259)
!1980 = !DILocalVariable(name: "mssg", scope: !1975, file: !3, line: 97, type: !107)
!1981 = !DILocalVariable(name: "__dummy", scope: !1982, file: !3, line: 99, type: !259)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 99, column: 2)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 99, column: 2)
!1984 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 99, column: 2)
!1985 = !DILocalVariable(name: "__dummy2", scope: !1982, file: !3, line: 99, type: !259)
!1986 = !DILocation(line: 94, column: 39, scope: !1975)
!1987 = !DILocation(line: 94, column: 49, scope: !1975)
!1988 = !DILocation(line: 96, column: 2, scope: !1975)
!1989 = !DILocation(line: 96, column: 16, scope: !1975)
!1990 = !DILocation(line: 97, column: 2, scope: !1975)
!1991 = !DILocation(line: 97, column: 8, scope: !1975)
!1992 = !DILocation(line: 99, column: 2, scope: !1975)
!1993 = !DILocation(line: 99, column: 2, scope: !1984)
!1994 = !DILocation(line: 99, column: 2, scope: !1982)
!1995 = !DILocation(line: 99, column: 2, scope: !1983)
!1996 = !DILocation(line: 100, column: 9, scope: !1975)
!1997 = !DILocation(line: 100, column: 15, scope: !1975)
!1998 = !DILocation(line: 100, column: 7, scope: !1975)
!1999 = !DILocation(line: 101, column: 2, scope: !1975)
!2000 = !DILocation(line: 101, column: 8, scope: !1975)
!2001 = !DILocation(line: 101, column: 19, scope: !1975)
!2002 = !DILocation(line: 102, column: 26, scope: !1975)
!2003 = !DILocation(line: 102, column: 32, scope: !1975)
!2004 = !DILocation(line: 102, column: 38, scope: !1975)
!2005 = !DILocation(line: 102, column: 2, scope: !1975)
!2006 = !DILocation(line: 105, column: 13, scope: !1975)
!2007 = !DILocation(line: 105, column: 2, scope: !1975)
!2008 = !DILocation(line: 107, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 107, column: 6)
!2010 = !DILocation(line: 107, column: 6, scope: !1975)
!2011 = !DILocation(line: 108, column: 3, scope: !2009)
!2012 = !DILocation(line: 111, column: 6, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 111, column: 6)
!2014 = !DILocation(line: 111, column: 12, scope: !2013)
!2015 = !DILocation(line: 111, column: 16, scope: !2013)
!2016 = !DILocation(line: 111, column: 6, scope: !1975)
!2017 = !DILocation(line: 112, column: 3, scope: !2013)
!2018 = !DILocation(line: 112, column: 9, scope: !2013)
!2019 = !DILocation(line: 112, column: 13, scope: !2013)
!2020 = !DILocation(line: 112, column: 21, scope: !2013)
!2021 = !DILocation(line: 112, column: 27, scope: !2013)
!2022 = !DILocation(line: 112, column: 31, scope: !2013)
!2023 = !DILocation(line: 112, column: 37, scope: !2013)
!2024 = !DILocation(line: 114, column: 6, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 114, column: 6)
!2026 = !DILocation(line: 114, column: 8, scope: !2025)
!2027 = !DILocation(line: 114, column: 18, scope: !2025)
!2028 = !DILocation(line: 114, column: 21, scope: !2025)
!2029 = !DILocation(line: 114, column: 27, scope: !2025)
!2030 = !DILocation(line: 114, column: 31, scope: !2025)
!2031 = !{i8 0, i8 2}
!2032 = !DILocation(line: 114, column: 6, scope: !1975)
!2033 = !DILocation(line: 115, column: 13, scope: !2025)
!2034 = !DILocation(line: 115, column: 19, scope: !2025)
!2035 = !DILocation(line: 115, column: 3, scope: !2025)
!2036 = !DILocation(line: 116, column: 1, scope: !1975)
!2037 = distinct !DISubprogram(name: "mbox_client_txdone", scope: !3, file: !3, line: 198, type: !1951, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2038)
!2038 = !{!2039, !2040}
!2039 = !DILocalVariable(name: "chan", arg: 1, scope: !2037, file: !3, line: 198, type: !1741)
!2040 = !DILocalVariable(name: "r", arg: 2, scope: !2037, file: !3, line: 198, type: !46)
!2041 = !DILocation(line: 198, column: 43, scope: !2037)
!2042 = !DILocation(line: 198, column: 53, scope: !2037)
!2043 = !DILocation(line: 200, column: 6, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 200, column: 6)
!2045 = !DILocation(line: 200, column: 6, scope: !2037)
!2046 = !DILocation(line: 201, column: 3, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 201, column: 3)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 200, column: 56)
!2049 = !DILocation(line: 201, column: 3, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 201, column: 3)
!2051 = !DILocation(line: 202, column: 3, scope: !2048)
!2052 = !DILocation(line: 205, column: 10, scope: !2037)
!2053 = !DILocation(line: 205, column: 16, scope: !2037)
!2054 = !DILocation(line: 205, column: 2, scope: !2037)
!2055 = !DILocation(line: 206, column: 1, scope: !2037)
!2056 = distinct !DISubprogram(name: "mbox_client_peek_data", scope: !3, file: !3, line: 224, type: !1788, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2057)
!2057 = !{!2058}
!2058 = !DILocalVariable(name: "chan", arg: 1, scope: !2056, file: !3, line: 224, type: !1741)
!2059 = !DILocation(line: 224, column: 46, scope: !2056)
!2060 = !DILocation(line: 226, column: 6, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 226, column: 6)
!2062 = !DILocation(line: 226, column: 12, scope: !2061)
!2063 = !DILocation(line: 226, column: 18, scope: !2061)
!2064 = !DILocation(line: 226, column: 23, scope: !2061)
!2065 = !DILocation(line: 226, column: 6, scope: !2056)
!2066 = !DILocation(line: 227, column: 10, scope: !2061)
!2067 = !DILocation(line: 227, column: 16, scope: !2061)
!2068 = !DILocation(line: 227, column: 22, scope: !2061)
!2069 = !DILocation(line: 227, column: 27, scope: !2061)
!2070 = !DILocation(line: 227, column: 37, scope: !2061)
!2071 = !DILocation(line: 227, column: 3, scope: !2061)
!2072 = !DILocation(line: 229, column: 2, scope: !2056)
!2073 = !DILocation(line: 230, column: 1, scope: !2056)
!2074 = distinct !DISubprogram(name: "mbox_send_message", scope: !3, file: !3, line: 257, type: !1739, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2075 = !{!2076, !2077, !2078, !2079, !2082}
!2076 = !DILocalVariable(name: "chan", arg: 1, scope: !2074, file: !3, line: 257, type: !1741)
!2077 = !DILocalVariable(name: "mssg", arg: 2, scope: !2074, file: !3, line: 257, type: !107)
!2078 = !DILocalVariable(name: "t", scope: !2074, file: !3, line: 259, type: !46)
!2079 = !DILocalVariable(name: "wait", scope: !2080, file: !3, line: 273, type: !259)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 272, column: 26)
!2081 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 272, column: 6)
!2082 = !DILocalVariable(name: "ret", scope: !2080, file: !3, line: 274, type: !46)
!2083 = !DILocation(line: 257, column: 41, scope: !2074)
!2084 = !DILocation(line: 257, column: 53, scope: !2074)
!2085 = !DILocation(line: 259, column: 2, scope: !2074)
!2086 = !DILocation(line: 259, column: 6, scope: !2074)
!2087 = !DILocation(line: 261, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 261, column: 6)
!2089 = !DILocation(line: 261, column: 12, scope: !2088)
!2090 = !DILocation(line: 261, column: 16, scope: !2088)
!2091 = !DILocation(line: 261, column: 22, scope: !2088)
!2092 = !DILocation(line: 261, column: 6, scope: !2074)
!2093 = !DILocation(line: 262, column: 3, scope: !2088)
!2094 = !DILocation(line: 264, column: 18, scope: !2074)
!2095 = !DILocation(line: 264, column: 24, scope: !2074)
!2096 = !DILocation(line: 264, column: 6, scope: !2074)
!2097 = !DILocation(line: 264, column: 4, scope: !2074)
!2098 = !DILocation(line: 265, column: 6, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 265, column: 6)
!2100 = !DILocation(line: 265, column: 8, scope: !2099)
!2101 = !DILocation(line: 265, column: 6, scope: !2074)
!2102 = !DILocation(line: 266, column: 3, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 266, column: 3)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 265, column: 13)
!2105 = !DILocation(line: 266, column: 3, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 266, column: 3)
!2107 = !DILocation(line: 267, column: 10, scope: !2104)
!2108 = !DILocation(line: 267, column: 3, scope: !2104)
!2109 = !DILocation(line: 270, column: 13, scope: !2074)
!2110 = !DILocation(line: 270, column: 2, scope: !2074)
!2111 = !DILocation(line: 272, column: 6, scope: !2081)
!2112 = !DILocation(line: 272, column: 12, scope: !2081)
!2113 = !DILocation(line: 272, column: 16, scope: !2081)
!2114 = !DILocation(line: 272, column: 6, scope: !2074)
!2115 = !DILocation(line: 273, column: 3, scope: !2080)
!2116 = !DILocation(line: 273, column: 17, scope: !2080)
!2117 = !DILocation(line: 274, column: 3, scope: !2080)
!2118 = !DILocation(line: 274, column: 7, scope: !2080)
!2119 = !DILocation(line: 276, column: 8, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 276, column: 7)
!2121 = !DILocation(line: 276, column: 14, scope: !2120)
!2122 = !DILocation(line: 276, column: 18, scope: !2120)
!2123 = !DILocation(line: 276, column: 7, scope: !2080)
!2124 = !DILocation(line: 277, column: 11, scope: !2120)
!2125 = !DILocation(line: 277, column: 9, scope: !2120)
!2126 = !DILocation(line: 277, column: 4, scope: !2120)
!2127 = !DILocation(line: 279, column: 28, scope: !2120)
!2128 = !DILocation(line: 279, column: 34, scope: !2120)
!2129 = !DILocation(line: 279, column: 38, scope: !2120)
!2130 = !DILocation(line: 279, column: 11, scope: !2120)
!2131 = !DILocation(line: 279, column: 9, scope: !2120)
!2132 = !DILocation(line: 281, column: 38, scope: !2080)
!2133 = !DILocation(line: 281, column: 44, scope: !2080)
!2134 = !DILocation(line: 281, column: 57, scope: !2080)
!2135 = !DILocation(line: 281, column: 9, scope: !2080)
!2136 = !DILocation(line: 281, column: 7, scope: !2080)
!2137 = !DILocation(line: 282, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 282, column: 7)
!2139 = !DILocation(line: 282, column: 11, scope: !2138)
!2140 = !DILocation(line: 282, column: 7, scope: !2080)
!2141 = !DILocation(line: 283, column: 6, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 282, column: 17)
!2143 = !DILocation(line: 284, column: 12, scope: !2142)
!2144 = !DILocation(line: 284, column: 18, scope: !2142)
!2145 = !DILocation(line: 284, column: 4, scope: !2142)
!2146 = !DILocation(line: 285, column: 3, scope: !2142)
!2147 = !DILocation(line: 286, column: 2, scope: !2081)
!2148 = !DILocation(line: 286, column: 2, scope: !2080)
!2149 = !DILocation(line: 288, column: 9, scope: !2074)
!2150 = !DILocation(line: 288, column: 2, scope: !2074)
!2151 = !DILocation(line: 289, column: 1, scope: !2074)
!2152 = distinct !DISubprogram(name: "add_to_rbuf", scope: !3, file: !3, line: 27, type: !1739, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2162}
!2154 = !DILocalVariable(name: "chan", arg: 1, scope: !2152, file: !3, line: 27, type: !1741)
!2155 = !DILocalVariable(name: "mssg", arg: 2, scope: !2152, file: !3, line: 27, type: !107)
!2156 = !DILocalVariable(name: "idx", scope: !2152, file: !3, line: 29, type: !46)
!2157 = !DILocalVariable(name: "flags", scope: !2152, file: !3, line: 30, type: !259)
!2158 = !DILocalVariable(name: "__dummy", scope: !2159, file: !3, line: 32, type: !259)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 32, column: 2)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 32, column: 2)
!2161 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 32, column: 2)
!2162 = !DILocalVariable(name: "__dummy2", scope: !2159, file: !3, line: 32, type: !259)
!2163 = !DILocation(line: 27, column: 42, scope: !2152)
!2164 = !DILocation(line: 27, column: 54, scope: !2152)
!2165 = !DILocation(line: 29, column: 2, scope: !2152)
!2166 = !DILocation(line: 29, column: 6, scope: !2152)
!2167 = !DILocation(line: 30, column: 2, scope: !2152)
!2168 = !DILocation(line: 30, column: 16, scope: !2152)
!2169 = !DILocation(line: 32, column: 2, scope: !2152)
!2170 = !DILocation(line: 32, column: 2, scope: !2161)
!2171 = !DILocation(line: 32, column: 2, scope: !2159)
!2172 = !DILocation(line: 32, column: 2, scope: !2160)
!2173 = !DILocation(line: 35, column: 6, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 35, column: 6)
!2175 = !DILocation(line: 35, column: 12, scope: !2174)
!2176 = !DILocation(line: 35, column: 22, scope: !2174)
!2177 = !DILocation(line: 35, column: 6, scope: !2152)
!2178 = !DILocation(line: 36, column: 27, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 35, column: 44)
!2180 = !DILocation(line: 36, column: 33, scope: !2179)
!2181 = !DILocation(line: 36, column: 39, scope: !2179)
!2182 = !DILocation(line: 36, column: 3, scope: !2179)
!2183 = !DILocation(line: 37, column: 3, scope: !2179)
!2184 = !DILocation(line: 40, column: 8, scope: !2152)
!2185 = !DILocation(line: 40, column: 14, scope: !2152)
!2186 = !DILocation(line: 40, column: 6, scope: !2152)
!2187 = !DILocation(line: 41, column: 24, scope: !2152)
!2188 = !DILocation(line: 41, column: 2, scope: !2152)
!2189 = !DILocation(line: 41, column: 8, scope: !2152)
!2190 = !DILocation(line: 41, column: 17, scope: !2152)
!2191 = !DILocation(line: 41, column: 22, scope: !2152)
!2192 = !DILocation(line: 42, column: 2, scope: !2152)
!2193 = !DILocation(line: 42, column: 8, scope: !2152)
!2194 = !DILocation(line: 42, column: 17, scope: !2152)
!2195 = !DILocation(line: 44, column: 6, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 44, column: 6)
!2197 = !DILocation(line: 44, column: 10, scope: !2196)
!2198 = !DILocation(line: 44, column: 6, scope: !2152)
!2199 = !DILocation(line: 45, column: 3, scope: !2196)
!2200 = !DILocation(line: 45, column: 9, scope: !2196)
!2201 = !DILocation(line: 45, column: 18, scope: !2196)
!2202 = !DILocation(line: 47, column: 3, scope: !2196)
!2203 = !DILocation(line: 47, column: 9, scope: !2196)
!2204 = !DILocation(line: 47, column: 17, scope: !2196)
!2205 = !DILocation(line: 49, column: 26, scope: !2152)
!2206 = !DILocation(line: 49, column: 32, scope: !2152)
!2207 = !DILocation(line: 49, column: 38, scope: !2152)
!2208 = !DILocation(line: 49, column: 2, scope: !2152)
!2209 = !DILocation(line: 51, column: 9, scope: !2152)
!2210 = !DILocation(line: 51, column: 2, scope: !2152)
!2211 = !DILocation(line: 52, column: 1, scope: !2152)
!2212 = distinct !DISubprogram(name: "msg_submit", scope: !3, file: !3, line: 54, type: !1784, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2220, !2224, !2225, !2226, !2232}
!2214 = !DILocalVariable(name: "chan", arg: 1, scope: !2212, file: !3, line: 54, type: !1741)
!2215 = !DILocalVariable(name: "count", scope: !2212, file: !3, line: 56, type: !7)
!2216 = !DILocalVariable(name: "idx", scope: !2212, file: !3, line: 56, type: !7)
!2217 = !DILocalVariable(name: "flags", scope: !2212, file: !3, line: 57, type: !259)
!2218 = !DILocalVariable(name: "data", scope: !2212, file: !3, line: 58, type: !107)
!2219 = !DILocalVariable(name: "err", scope: !2212, file: !3, line: 59, type: !46)
!2220 = !DILocalVariable(name: "__dummy", scope: !2221, file: !3, line: 61, type: !259)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 61, column: 2)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 61, column: 2)
!2223 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 61, column: 2)
!2224 = !DILocalVariable(name: "__dummy2", scope: !2221, file: !3, line: 61, type: !259)
!2225 = !DILabel(scope: !2212, name: "exit", file: !3, line: 83)
!2226 = !DILocalVariable(name: "__dummy", scope: !2227, file: !3, line: 88, type: !259)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 88, column: 3)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 88, column: 3)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 88, column: 3)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 86, column: 54)
!2231 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 86, column: 6)
!2232 = !DILocalVariable(name: "__dummy2", scope: !2227, file: !3, line: 88, type: !259)
!2233 = !DILocation(line: 54, column: 42, scope: !2212)
!2234 = !DILocation(line: 56, column: 2, scope: !2212)
!2235 = !DILocation(line: 56, column: 11, scope: !2212)
!2236 = !DILocation(line: 56, column: 18, scope: !2212)
!2237 = !DILocation(line: 57, column: 2, scope: !2212)
!2238 = !DILocation(line: 57, column: 16, scope: !2212)
!2239 = !DILocation(line: 58, column: 2, scope: !2212)
!2240 = !DILocation(line: 58, column: 8, scope: !2212)
!2241 = !DILocation(line: 59, column: 2, scope: !2212)
!2242 = !DILocation(line: 59, column: 6, scope: !2212)
!2243 = !DILocation(line: 61, column: 2, scope: !2212)
!2244 = !DILocation(line: 61, column: 2, scope: !2223)
!2245 = !DILocation(line: 61, column: 2, scope: !2221)
!2246 = !DILocation(line: 61, column: 2, scope: !2222)
!2247 = !DILocation(line: 63, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 63, column: 6)
!2249 = !DILocation(line: 63, column: 13, scope: !2248)
!2250 = !DILocation(line: 63, column: 23, scope: !2248)
!2251 = !DILocation(line: 63, column: 26, scope: !2248)
!2252 = !DILocation(line: 63, column: 32, scope: !2248)
!2253 = !DILocation(line: 63, column: 6, scope: !2212)
!2254 = !DILocation(line: 64, column: 3, scope: !2248)
!2255 = !DILocation(line: 66, column: 10, scope: !2212)
!2256 = !DILocation(line: 66, column: 16, scope: !2212)
!2257 = !DILocation(line: 66, column: 8, scope: !2212)
!2258 = !DILocation(line: 67, column: 8, scope: !2212)
!2259 = !DILocation(line: 67, column: 14, scope: !2212)
!2260 = !DILocation(line: 67, column: 6, scope: !2212)
!2261 = !DILocation(line: 68, column: 6, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 68, column: 6)
!2263 = !DILocation(line: 68, column: 13, scope: !2262)
!2264 = !DILocation(line: 68, column: 10, scope: !2262)
!2265 = !DILocation(line: 68, column: 6, scope: !2212)
!2266 = !DILocation(line: 69, column: 10, scope: !2262)
!2267 = !DILocation(line: 69, column: 7, scope: !2262)
!2268 = !DILocation(line: 69, column: 3, scope: !2262)
!2269 = !DILocation(line: 71, column: 30, scope: !2262)
!2270 = !DILocation(line: 71, column: 28, scope: !2262)
!2271 = !DILocation(line: 71, column: 7, scope: !2262)
!2272 = !DILocation(line: 73, column: 9, scope: !2212)
!2273 = !DILocation(line: 73, column: 15, scope: !2212)
!2274 = !DILocation(line: 73, column: 24, scope: !2212)
!2275 = !DILocation(line: 73, column: 7, scope: !2212)
!2276 = !DILocation(line: 75, column: 6, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 75, column: 6)
!2278 = !DILocation(line: 75, column: 12, scope: !2277)
!2279 = !DILocation(line: 75, column: 16, scope: !2277)
!2280 = !DILocation(line: 75, column: 6, scope: !2212)
!2281 = !DILocation(line: 76, column: 3, scope: !2277)
!2282 = !DILocation(line: 76, column: 9, scope: !2277)
!2283 = !DILocation(line: 76, column: 13, scope: !2277)
!2284 = !DILocation(line: 76, column: 24, scope: !2277)
!2285 = !DILocation(line: 76, column: 30, scope: !2277)
!2286 = !DILocation(line: 76, column: 34, scope: !2277)
!2287 = !DILocation(line: 78, column: 8, scope: !2212)
!2288 = !DILocation(line: 78, column: 14, scope: !2212)
!2289 = !DILocation(line: 78, column: 20, scope: !2212)
!2290 = !DILocation(line: 78, column: 25, scope: !2212)
!2291 = !DILocation(line: 78, column: 35, scope: !2212)
!2292 = !DILocation(line: 78, column: 41, scope: !2212)
!2293 = !DILocation(line: 78, column: 6, scope: !2212)
!2294 = !DILocation(line: 79, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 79, column: 6)
!2296 = !DILocation(line: 79, column: 6, scope: !2212)
!2297 = !DILocation(line: 80, column: 22, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 79, column: 12)
!2299 = !DILocation(line: 80, column: 3, scope: !2298)
!2300 = !DILocation(line: 80, column: 9, scope: !2298)
!2301 = !DILocation(line: 80, column: 20, scope: !2298)
!2302 = !DILocation(line: 81, column: 3, scope: !2298)
!2303 = !DILocation(line: 81, column: 9, scope: !2298)
!2304 = !DILocation(line: 81, column: 18, scope: !2298)
!2305 = !DILocation(line: 82, column: 2, scope: !2298)
!2306 = !DILocation(line: 83, column: 1, scope: !2212)
!2307 = !DILocation(line: 84, column: 26, scope: !2212)
!2308 = !DILocation(line: 84, column: 32, scope: !2212)
!2309 = !DILocation(line: 84, column: 38, scope: !2212)
!2310 = !DILocation(line: 84, column: 2, scope: !2212)
!2311 = !DILocation(line: 86, column: 7, scope: !2231)
!2312 = !DILocation(line: 86, column: 11, scope: !2231)
!2313 = !DILocation(line: 86, column: 15, scope: !2231)
!2314 = !DILocation(line: 86, column: 21, scope: !2231)
!2315 = !DILocation(line: 86, column: 35, scope: !2231)
!2316 = !DILocation(line: 86, column: 6, scope: !2212)
!2317 = !DILocation(line: 88, column: 3, scope: !2230)
!2318 = !DILocation(line: 88, column: 3, scope: !2229)
!2319 = !DILocation(line: 88, column: 3, scope: !2227)
!2320 = !DILocation(line: 88, column: 3, scope: !2228)
!2321 = !DILocation(line: 89, column: 18, scope: !2230)
!2322 = !DILocation(line: 89, column: 24, scope: !2230)
!2323 = !DILocation(line: 89, column: 30, scope: !2230)
!2324 = !DILocation(line: 89, column: 3, scope: !2230)
!2325 = !DILocation(line: 90, column: 27, scope: !2230)
!2326 = !DILocation(line: 90, column: 33, scope: !2230)
!2327 = !DILocation(line: 90, column: 39, scope: !2230)
!2328 = !DILocation(line: 90, column: 54, scope: !2230)
!2329 = !DILocation(line: 90, column: 3, scope: !2230)
!2330 = !DILocation(line: 91, column: 2, scope: !2230)
!2331 = !DILocation(line: 92, column: 1, scope: !2212)
!2332 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !2333, file: !2333, line: 515, type: !2334, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2333 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!259, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2337 = !{!2338}
!2338 = !DILocalVariable(name: "m", arg: 1, scope: !2332, file: !2333, line: 515, type: !2336)
!2339 = !DILocation(line: 515, column: 74, scope: !2332)
!2340 = !DILocation(line: 517, column: 27, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2332, file: !2333, line: 517, column: 6)
!2342 = !DILocation(line: 517, column: 6, scope: !2341)
!2343 = !DILocation(line: 517, column: 6, scope: !2332)
!2344 = !DILocation(line: 518, column: 12, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !2333, line: 518, column: 7)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !2333, line: 517, column: 31)
!2347 = !DILocation(line: 518, column: 14, scope: !2345)
!2348 = !DILocation(line: 518, column: 7, scope: !2346)
!2349 = !DILocation(line: 519, column: 4, scope: !2345)
!2350 = !DILocation(line: 520, column: 28, scope: !2346)
!2351 = !DILocation(line: 520, column: 10, scope: !2346)
!2352 = !DILocation(line: 520, column: 3, scope: !2346)
!2353 = !DILocation(line: 522, column: 29, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2341, file: !2333, line: 521, column: 9)
!2355 = !DILocation(line: 522, column: 10, scope: !2354)
!2356 = !DILocation(line: 522, column: 3, scope: !2354)
!2357 = !DILocation(line: 524, column: 1, scope: !2332)
!2358 = !DISubprogram(name: "wait_for_completion_timeout", scope: !884, file: !884, line: 107, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!259, !882, !259}
!2361 = distinct !DISubprogram(name: "mbox_flush", scope: !3, file: !3, line: 306, type: !1776, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2362 = !{!2363, !2364, !2365}
!2363 = !DILocalVariable(name: "chan", arg: 1, scope: !2361, file: !3, line: 306, type: !1741)
!2364 = !DILocalVariable(name: "timeout", arg: 2, scope: !2361, file: !3, line: 306, type: !259)
!2365 = !DILocalVariable(name: "ret", scope: !2361, file: !3, line: 308, type: !46)
!2366 = !DILocation(line: 306, column: 34, scope: !2361)
!2367 = !DILocation(line: 306, column: 54, scope: !2361)
!2368 = !DILocation(line: 308, column: 2, scope: !2361)
!2369 = !DILocation(line: 308, column: 6, scope: !2361)
!2370 = !DILocation(line: 310, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 310, column: 6)
!2372 = !DILocation(line: 310, column: 13, scope: !2371)
!2373 = !DILocation(line: 310, column: 19, scope: !2371)
!2374 = !DILocation(line: 310, column: 24, scope: !2371)
!2375 = !DILocation(line: 310, column: 6, scope: !2361)
!2376 = !DILocation(line: 311, column: 3, scope: !2371)
!2377 = !DILocation(line: 313, column: 8, scope: !2361)
!2378 = !DILocation(line: 313, column: 14, scope: !2361)
!2379 = !DILocation(line: 313, column: 20, scope: !2361)
!2380 = !DILocation(line: 313, column: 25, scope: !2361)
!2381 = !DILocation(line: 313, column: 31, scope: !2361)
!2382 = !DILocation(line: 313, column: 37, scope: !2361)
!2383 = !DILocation(line: 313, column: 6, scope: !2361)
!2384 = !DILocation(line: 314, column: 6, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 314, column: 6)
!2386 = !DILocation(line: 314, column: 10, scope: !2385)
!2387 = !DILocation(line: 314, column: 6, scope: !2361)
!2388 = !DILocation(line: 315, column: 11, scope: !2385)
!2389 = !DILocation(line: 315, column: 17, scope: !2385)
!2390 = !DILocation(line: 315, column: 3, scope: !2385)
!2391 = !DILocation(line: 317, column: 9, scope: !2361)
!2392 = !DILocation(line: 317, column: 2, scope: !2361)
!2393 = !DILocation(line: 318, column: 1, scope: !2361)
!2394 = distinct !DISubprogram(name: "mbox_bind_client", scope: !3, file: !3, line: 374, type: !2395, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!46, !1741, !1747}
!2397 = !{!2398, !2399, !2400}
!2398 = !DILocalVariable(name: "chan", arg: 1, scope: !2394, file: !3, line: 374, type: !1741)
!2399 = !DILocalVariable(name: "cl", arg: 2, scope: !2394, file: !3, line: 374, type: !1747)
!2400 = !DILocalVariable(name: "ret", scope: !2394, file: !3, line: 376, type: !46)
!2401 = !DILocation(line: 374, column: 40, scope: !2394)
!2402 = !DILocation(line: 374, column: 66, scope: !2394)
!2403 = !DILocation(line: 376, column: 2, scope: !2394)
!2404 = !DILocation(line: 376, column: 6, scope: !2394)
!2405 = !DILocation(line: 378, column: 2, scope: !2394)
!2406 = !DILocation(line: 379, column: 27, scope: !2394)
!2407 = !DILocation(line: 379, column: 33, scope: !2394)
!2408 = !DILocation(line: 379, column: 8, scope: !2394)
!2409 = !DILocation(line: 379, column: 6, scope: !2394)
!2410 = !DILocation(line: 380, column: 2, scope: !2394)
!2411 = !DILocation(line: 382, column: 9, scope: !2394)
!2412 = !DILocation(line: 383, column: 1, scope: !2394)
!2413 = !DILocation(line: 382, column: 2, scope: !2394)
!2414 = !DISubprogram(name: "mutex_lock", scope: !467, file: !467, line: 227, type: !2415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!2418 = distinct !DISubprogram(name: "__mbox_bind_client", scope: !3, file: !3, line: 321, type: !2395, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2429}
!2420 = !DILocalVariable(name: "chan", arg: 1, scope: !2418, file: !3, line: 321, type: !1741)
!2421 = !DILocalVariable(name: "cl", arg: 2, scope: !2418, file: !3, line: 321, type: !1747)
!2422 = !DILocalVariable(name: "dev", scope: !2418, file: !3, line: 323, type: !113)
!2423 = !DILocalVariable(name: "flags", scope: !2418, file: !3, line: 324, type: !259)
!2424 = !DILocalVariable(name: "ret", scope: !2418, file: !3, line: 325, type: !46)
!2425 = !DILocalVariable(name: "__dummy", scope: !2426, file: !3, line: 332, type: !259)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 332, column: 2)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 332, column: 2)
!2428 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 332, column: 2)
!2429 = !DILocalVariable(name: "__dummy2", scope: !2426, file: !3, line: 332, type: !259)
!2430 = !DILocation(line: 321, column: 49, scope: !2418)
!2431 = !DILocation(line: 321, column: 75, scope: !2418)
!2432 = !DILocation(line: 323, column: 2, scope: !2418)
!2433 = !DILocation(line: 323, column: 17, scope: !2418)
!2434 = !DILocation(line: 323, column: 23, scope: !2418)
!2435 = !DILocation(line: 323, column: 27, scope: !2418)
!2436 = !DILocation(line: 324, column: 2, scope: !2418)
!2437 = !DILocation(line: 324, column: 16, scope: !2418)
!2438 = !DILocation(line: 325, column: 2, scope: !2418)
!2439 = !DILocation(line: 325, column: 6, scope: !2418)
!2440 = !DILocation(line: 327, column: 6, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 327, column: 6)
!2442 = !DILocation(line: 327, column: 12, scope: !2441)
!2443 = !DILocation(line: 327, column: 15, scope: !2441)
!2444 = !DILocation(line: 327, column: 34, scope: !2441)
!2445 = !DILocation(line: 327, column: 40, scope: !2441)
!2446 = !DILocation(line: 327, column: 46, scope: !2441)
!2447 = !DILocation(line: 327, column: 51, scope: !2441)
!2448 = !DILocation(line: 327, column: 59, scope: !2441)
!2449 = !DILocation(line: 327, column: 19, scope: !2441)
!2450 = !DILocation(line: 327, column: 6, scope: !2418)
!2451 = !DILocation(line: 329, column: 3, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 327, column: 67)
!2453 = !DILocation(line: 332, column: 2, scope: !2418)
!2454 = !DILocation(line: 332, column: 2, scope: !2428)
!2455 = !DILocation(line: 332, column: 2, scope: !2426)
!2456 = !DILocation(line: 332, column: 2, scope: !2427)
!2457 = !DILocation(line: 333, column: 2, scope: !2418)
!2458 = !DILocation(line: 333, column: 8, scope: !2418)
!2459 = !DILocation(line: 333, column: 17, scope: !2418)
!2460 = !DILocation(line: 334, column: 2, scope: !2418)
!2461 = !DILocation(line: 334, column: 8, scope: !2418)
!2462 = !DILocation(line: 334, column: 18, scope: !2418)
!2463 = !DILocation(line: 335, column: 2, scope: !2418)
!2464 = !DILocation(line: 335, column: 8, scope: !2418)
!2465 = !DILocation(line: 335, column: 19, scope: !2418)
!2466 = !DILocation(line: 336, column: 13, scope: !2418)
!2467 = !DILocation(line: 336, column: 2, scope: !2418)
!2468 = !DILocation(line: 336, column: 8, scope: !2418)
!2469 = !DILocation(line: 336, column: 11, scope: !2418)
!2470 = !DILocation(line: 337, column: 19, scope: !2418)
!2471 = !DILocation(line: 337, column: 25, scope: !2418)
!2472 = !DILocation(line: 337, column: 2, scope: !2418)
!2473 = !DILocation(line: 339, column: 6, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 339, column: 6)
!2475 = !DILocation(line: 339, column: 12, scope: !2474)
!2476 = !DILocation(line: 339, column: 26, scope: !2474)
!2477 = !DILocation(line: 339, column: 44, scope: !2474)
!2478 = !DILocation(line: 339, column: 47, scope: !2474)
!2479 = !DILocation(line: 339, column: 51, scope: !2474)
!2480 = !DILocation(line: 339, column: 6, scope: !2418)
!2481 = !DILocation(line: 340, column: 3, scope: !2474)
!2482 = !DILocation(line: 340, column: 9, scope: !2474)
!2483 = !DILocation(line: 340, column: 23, scope: !2474)
!2484 = !DILocation(line: 342, column: 26, scope: !2418)
!2485 = !DILocation(line: 342, column: 32, scope: !2418)
!2486 = !DILocation(line: 342, column: 38, scope: !2418)
!2487 = !DILocation(line: 342, column: 2, scope: !2418)
!2488 = !DILocation(line: 344, column: 6, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 344, column: 6)
!2490 = !DILocation(line: 344, column: 12, scope: !2489)
!2491 = !DILocation(line: 344, column: 18, scope: !2489)
!2492 = !DILocation(line: 344, column: 23, scope: !2489)
!2493 = !DILocation(line: 344, column: 6, scope: !2418)
!2494 = !DILocation(line: 345, column: 9, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 344, column: 32)
!2496 = !DILocation(line: 345, column: 15, scope: !2495)
!2497 = !DILocation(line: 345, column: 21, scope: !2495)
!2498 = !DILocation(line: 345, column: 26, scope: !2495)
!2499 = !DILocation(line: 345, column: 34, scope: !2495)
!2500 = !DILocation(line: 345, column: 7, scope: !2495)
!2501 = !DILocation(line: 347, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 347, column: 7)
!2503 = !DILocation(line: 347, column: 7, scope: !2495)
!2504 = !DILocation(line: 348, column: 4, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 348, column: 4)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 347, column: 12)
!2507 = !DILocation(line: 348, column: 4, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 348, column: 4)
!2509 = !DILocation(line: 349, column: 22, scope: !2506)
!2510 = !DILocation(line: 349, column: 4, scope: !2506)
!2511 = !DILocation(line: 350, column: 11, scope: !2506)
!2512 = !DILocation(line: 350, column: 4, scope: !2506)
!2513 = !DILocation(line: 352, column: 2, scope: !2495)
!2514 = !DILocation(line: 354, column: 2, scope: !2418)
!2515 = !DILocation(line: 355, column: 1, scope: !2418)
!2516 = !DISubprogram(name: "mutex_unlock", scope: !467, file: !467, line: 246, type: !2415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2517 = distinct !DISubprogram(name: "mbox_request_channel", scope: !3, file: !3, line: 403, type: !2518, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!1741, !1747, !46}
!2520 = !{!2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2531}
!2521 = !DILocalVariable(name: "cl", arg: 1, scope: !2517, file: !3, line: 403, type: !1747)
!2522 = !DILocalVariable(name: "index", arg: 2, scope: !2517, file: !3, line: 403, type: !46)
!2523 = !DILocalVariable(name: "dev", scope: !2517, file: !3, line: 405, type: !113)
!2524 = !DILocalVariable(name: "mbox", scope: !2517, file: !3, line: 406, type: !108)
!2525 = !DILocalVariable(name: "spec", scope: !2517, file: !3, line: 407, type: !1802)
!2526 = !DILocalVariable(name: "chan", scope: !2517, file: !3, line: 408, type: !1741)
!2527 = !DILocalVariable(name: "ret", scope: !2517, file: !3, line: 409, type: !46)
!2528 = !DILocalVariable(name: "__mptr", scope: !2529, file: !3, line: 426, type: !107)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 426, column: 2)
!2530 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 426, column: 2)
!2531 = !DILocalVariable(name: "__mptr", scope: !2532, file: !3, line: 426, type: !107)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 426, column: 2)
!2533 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 426, column: 2)
!2534 = !DILocation(line: 403, column: 60, scope: !2517)
!2535 = !DILocation(line: 403, column: 68, scope: !2517)
!2536 = !DILocation(line: 405, column: 2, scope: !2517)
!2537 = !DILocation(line: 405, column: 17, scope: !2517)
!2538 = !DILocation(line: 405, column: 23, scope: !2517)
!2539 = !DILocation(line: 405, column: 27, scope: !2517)
!2540 = !DILocation(line: 406, column: 2, scope: !2517)
!2541 = !DILocation(line: 406, column: 26, scope: !2517)
!2542 = !DILocation(line: 407, column: 2, scope: !2517)
!2543 = !DILocation(line: 407, column: 25, scope: !2517)
!2544 = !DILocation(line: 408, column: 2, scope: !2517)
!2545 = !DILocation(line: 408, column: 20, scope: !2517)
!2546 = !DILocation(line: 409, column: 2, scope: !2517)
!2547 = !DILocation(line: 409, column: 6, scope: !2517)
!2548 = !DILocation(line: 411, column: 7, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 411, column: 6)
!2550 = !DILocation(line: 411, column: 11, scope: !2549)
!2551 = !DILocation(line: 411, column: 15, scope: !2549)
!2552 = !DILocation(line: 411, column: 20, scope: !2549)
!2553 = !DILocation(line: 411, column: 6, scope: !2517)
!2554 = !DILocation(line: 412, column: 3, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 412, column: 3)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 412, column: 3)
!2557 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 411, column: 29)
!2558 = !DILocation(line: 412, column: 3, scope: !2556)
!2559 = !DILocation(line: 413, column: 10, scope: !2557)
!2560 = !DILocation(line: 413, column: 3, scope: !2557)
!2561 = !DILocation(line: 416, column: 2, scope: !2517)
!2562 = !DILocation(line: 418, column: 33, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 418, column: 6)
!2564 = !DILocation(line: 418, column: 38, scope: !2563)
!2565 = !DILocation(line: 419, column: 27, scope: !2563)
!2566 = !DILocation(line: 418, column: 6, scope: !2563)
!2567 = !DILocation(line: 418, column: 6, scope: !2517)
!2568 = !DILocation(line: 421, column: 3, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 419, column: 42)
!2570 = !DILocation(line: 422, column: 10, scope: !2569)
!2571 = !DILocation(line: 422, column: 3, scope: !2569)
!2572 = !DILocation(line: 425, column: 9, scope: !2517)
!2573 = !DILocation(line: 425, column: 7, scope: !2517)
!2574 = !DILocation(line: 426, column: 2, scope: !2529)
!2575 = !DILocation(line: 426, column: 2, scope: !2530)
!2576 = !DILocation(line: 426, column: 2, scope: !2533)
!2577 = !DILocation(line: 427, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 427, column: 7)
!2579 = !DILocation(line: 427, column: 13, scope: !2578)
!2580 = !DILocation(line: 427, column: 18, scope: !2578)
!2581 = !DILocation(line: 427, column: 34, scope: !2578)
!2582 = !DILocation(line: 427, column: 26, scope: !2578)
!2583 = !DILocation(line: 427, column: 7, scope: !2533)
!2584 = !DILocation(line: 428, column: 11, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 427, column: 38)
!2586 = !DILocation(line: 428, column: 17, scope: !2585)
!2587 = !DILocation(line: 428, column: 26, scope: !2585)
!2588 = !DILocation(line: 428, column: 9, scope: !2585)
!2589 = !DILocation(line: 429, column: 16, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 429, column: 8)
!2591 = !DILocation(line: 429, column: 9, scope: !2590)
!2592 = !DILocation(line: 429, column: 8, scope: !2585)
!2593 = !DILocation(line: 430, column: 5, scope: !2590)
!2594 = !DILocation(line: 431, column: 3, scope: !2585)
!2595 = !DILocation(line: 426, column: 2, scope: !2532)
!2596 = distinct !{!2596, !2575, !2597, !2598, !2599}
!2597 = !DILocation(line: 431, column: 3, scope: !2530)
!2598 = !{!"llvm.loop.mustprogress"}
!2599 = !{!"llvm.loop.unroll.disable"}
!2600 = !DILocation(line: 433, column: 19, scope: !2517)
!2601 = !DILocation(line: 433, column: 2, scope: !2517)
!2602 = !DILocation(line: 435, column: 13, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 435, column: 6)
!2604 = !DILocation(line: 435, column: 6, scope: !2603)
!2605 = !DILocation(line: 435, column: 6, scope: !2517)
!2606 = !DILocation(line: 436, column: 3, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 435, column: 20)
!2608 = !DILocation(line: 437, column: 10, scope: !2607)
!2609 = !DILocation(line: 437, column: 3, scope: !2607)
!2610 = !DILocation(line: 440, column: 27, scope: !2517)
!2611 = !DILocation(line: 440, column: 33, scope: !2517)
!2612 = !DILocation(line: 440, column: 8, scope: !2517)
!2613 = !DILocation(line: 440, column: 6, scope: !2517)
!2614 = !DILocation(line: 441, column: 6, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 441, column: 6)
!2616 = !DILocation(line: 441, column: 6, scope: !2517)
!2617 = !DILocation(line: 442, column: 18, scope: !2615)
!2618 = !DILocation(line: 442, column: 10, scope: !2615)
!2619 = !DILocation(line: 442, column: 8, scope: !2615)
!2620 = !DILocation(line: 442, column: 3, scope: !2615)
!2621 = !DILocation(line: 444, column: 2, scope: !2517)
!2622 = !DILocation(line: 445, column: 9, scope: !2517)
!2623 = !DILocation(line: 445, column: 2, scope: !2517)
!2624 = !DILocation(line: 446, column: 1, scope: !2517)
!2625 = distinct !DISubprogram(name: "ERR_PTR", scope: !2626, file: !2626, line: 39, type: !2627, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2629)
!2626 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!107, !245}
!2629 = !{!2630}
!2630 = !DILocalVariable(name: "error", arg: 1, scope: !2625, file: !2626, line: 39, type: !245)
!2631 = !DILocation(line: 39, column: 48, scope: !2625)
!2632 = !DILocation(line: 41, column: 18, scope: !2625)
!2633 = !DILocation(line: 41, column: 9, scope: !2625)
!2634 = !DILocation(line: 41, column: 2, scope: !2625)
!2635 = distinct !DISubprogram(name: "of_parse_phandle_with_args", scope: !1548, file: !1548, line: 987, type: !2636, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2641)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!46, !2638, !121, !121, !46, !2640}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647}
!2642 = !DILocalVariable(name: "np", arg: 1, scope: !2635, file: !1548, line: 987, type: !2638)
!2643 = !DILocalVariable(name: "list_name", arg: 2, scope: !2635, file: !1548, line: 988, type: !121)
!2644 = !DILocalVariable(name: "cells_name", arg: 3, scope: !2635, file: !1548, line: 989, type: !121)
!2645 = !DILocalVariable(name: "index", arg: 4, scope: !2635, file: !1548, line: 990, type: !46)
!2646 = !DILocalVariable(name: "out_args", arg: 5, scope: !2635, file: !1548, line: 991, type: !2640)
!2647 = !DILocalVariable(name: "cell_count", scope: !2635, file: !1548, line: 993, type: !46)
!2648 = !DILocation(line: 987, column: 72, scope: !2635)
!2649 = !DILocation(line: 988, column: 23, scope: !2635)
!2650 = !DILocation(line: 989, column: 23, scope: !2635)
!2651 = !DILocation(line: 990, column: 15, scope: !2635)
!2652 = !DILocation(line: 991, column: 35, scope: !2635)
!2653 = !DILocation(line: 993, column: 2, scope: !2635)
!2654 = !DILocation(line: 993, column: 6, scope: !2635)
!2655 = !DILocation(line: 996, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2635, file: !1548, line: 996, column: 6)
!2657 = !DILocation(line: 996, column: 6, scope: !2635)
!2658 = !DILocation(line: 997, column: 14, scope: !2656)
!2659 = !DILocation(line: 997, column: 3, scope: !2656)
!2660 = !DILocation(line: 999, column: 38, scope: !2635)
!2661 = !DILocation(line: 999, column: 42, scope: !2635)
!2662 = !DILocation(line: 999, column: 53, scope: !2635)
!2663 = !DILocation(line: 1000, column: 10, scope: !2635)
!2664 = !DILocation(line: 1000, column: 22, scope: !2635)
!2665 = !DILocation(line: 1000, column: 29, scope: !2635)
!2666 = !DILocation(line: 999, column: 9, scope: !2635)
!2667 = !DILocation(line: 1001, column: 1, scope: !2635)
!2668 = !DILocation(line: 999, column: 2, scope: !2635)
!2669 = distinct !DISubprogram(name: "IS_ERR", scope: !2626, file: !2626, line: 59, type: !2670, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!566, !487}
!2672 = !{!2673}
!2673 = !DILocalVariable(name: "ptr", arg: 1, scope: !2669, file: !2626, line: 59, type: !487)
!2674 = !DILocation(line: 59, column: 60, scope: !2669)
!2675 = !DILocation(line: 61, column: 9, scope: !2669)
!2676 = !DILocation(line: 61, column: 2, scope: !2669)
!2677 = distinct !DISubprogram(name: "of_node_put", scope: !1548, file: !1548, line: 136, type: !2678, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{null, !1546}
!2680 = !{!2681}
!2681 = !DILocalVariable(name: "node", arg: 1, scope: !2677, file: !1548, line: 136, type: !1546)
!2682 = !DILocation(line: 136, column: 52, scope: !2677)
!2683 = !DILocation(line: 136, column: 60, scope: !2677)
!2684 = distinct !DISubprogram(name: "mbox_request_channel_byname", scope: !3, file: !3, line: 449, type: !2685, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!1741, !1747, !121}
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693}
!2688 = !DILocalVariable(name: "cl", arg: 1, scope: !2684, file: !3, line: 449, type: !1747)
!2689 = !DILocalVariable(name: "name", arg: 2, scope: !2684, file: !3, line: 450, type: !121)
!2690 = !DILocalVariable(name: "np", scope: !2684, file: !3, line: 452, type: !1546)
!2691 = !DILocalVariable(name: "prop", scope: !2684, file: !3, line: 453, type: !1658)
!2692 = !DILocalVariable(name: "mbox_name", scope: !2684, file: !3, line: 454, type: !121)
!2693 = !DILocalVariable(name: "index", scope: !2684, file: !3, line: 455, type: !46)
!2694 = !DILocation(line: 449, column: 67, scope: !2684)
!2695 = !DILocation(line: 450, column: 24, scope: !2684)
!2696 = !DILocation(line: 452, column: 2, scope: !2684)
!2697 = !DILocation(line: 452, column: 22, scope: !2684)
!2698 = !DILocation(line: 452, column: 27, scope: !2684)
!2699 = !DILocation(line: 452, column: 31, scope: !2684)
!2700 = !DILocation(line: 452, column: 36, scope: !2684)
!2701 = !DILocation(line: 453, column: 2, scope: !2684)
!2702 = !DILocation(line: 453, column: 19, scope: !2684)
!2703 = !DILocation(line: 454, column: 2, scope: !2684)
!2704 = !DILocation(line: 454, column: 14, scope: !2684)
!2705 = !DILocation(line: 455, column: 2, scope: !2684)
!2706 = !DILocation(line: 455, column: 6, scope: !2684)
!2707 = !DILocation(line: 457, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 457, column: 6)
!2709 = !DILocation(line: 457, column: 6, scope: !2684)
!2710 = !DILocation(line: 458, column: 3, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 458, column: 3)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 457, column: 11)
!2713 = !DILocation(line: 458, column: 3, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 458, column: 3)
!2715 = !DILocation(line: 459, column: 10, scope: !2712)
!2716 = !DILocation(line: 459, column: 3, scope: !2712)
!2717 = !DILocation(line: 462, column: 23, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 462, column: 6)
!2719 = !DILocation(line: 462, column: 7, scope: !2718)
!2720 = !DILocation(line: 462, column: 6, scope: !2684)
!2721 = !DILocation(line: 463, column: 3, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 463, column: 3)
!2723 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 462, column: 48)
!2724 = !DILocation(line: 463, column: 3, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 463, column: 3)
!2726 = !DILocation(line: 465, column: 10, scope: !2723)
!2727 = !DILocation(line: 465, column: 3, scope: !2723)
!2728 = !DILocation(line: 468, column: 2, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 468, column: 2)
!2730 = !DILocation(line: 468, column: 2, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 468, column: 2)
!2732 = !DILocation(line: 469, column: 16, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 469, column: 7)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 468, column: 65)
!2735 = !DILocation(line: 469, column: 22, scope: !2733)
!2736 = !DILocation(line: 469, column: 40, scope: !2733)
!2737 = !DILocation(line: 469, column: 33, scope: !2733)
!2738 = !DILocation(line: 469, column: 8, scope: !2733)
!2739 = !DILocation(line: 469, column: 7, scope: !2734)
!2740 = !DILocation(line: 470, column: 32, scope: !2733)
!2741 = !DILocation(line: 470, column: 36, scope: !2733)
!2742 = !DILocation(line: 470, column: 11, scope: !2733)
!2743 = !DILocation(line: 470, column: 4, scope: !2733)
!2744 = !DILocation(line: 471, column: 8, scope: !2734)
!2745 = !DILocation(line: 472, column: 2, scope: !2734)
!2746 = distinct !{!2746, !2728, !2747, !2598, !2599}
!2747 = !DILocation(line: 472, column: 2, scope: !2729)
!2748 = !DILocation(line: 474, column: 2, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 474, column: 2)
!2750 = !DILocation(line: 474, column: 2, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 474, column: 2)
!2752 = !DILocation(line: 476, column: 9, scope: !2684)
!2753 = !DILocation(line: 476, column: 2, scope: !2684)
!2754 = !DILocation(line: 477, column: 1, scope: !2684)
!2755 = distinct !DISubprogram(name: "of_get_property", scope: !1548, file: !1548, line: 625, type: !2756, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!487, !2638, !121, !1029}
!2758 = !{!2759, !2760, !2761}
!2759 = !DILocalVariable(name: "node", arg: 1, scope: !2755, file: !1548, line: 625, type: !2638)
!2760 = !DILocalVariable(name: "name", arg: 2, scope: !2755, file: !1548, line: 626, type: !121)
!2761 = !DILocalVariable(name: "lenp", arg: 3, scope: !2755, file: !1548, line: 627, type: !1029)
!2762 = !DILocation(line: 625, column: 69, scope: !2755)
!2763 = !DILocation(line: 626, column: 17, scope: !2755)
!2764 = !DILocation(line: 627, column: 10, scope: !2755)
!2765 = !DILocation(line: 629, column: 2, scope: !2755)
!2766 = distinct !DISubprogram(name: "of_find_property", scope: !1548, file: !1548, line: 592, type: !2767, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!1658, !2638, !121, !1029}
!2769 = !{!2770, !2771, !2772}
!2770 = !DILocalVariable(name: "np", arg: 1, scope: !2766, file: !1548, line: 592, type: !2638)
!2771 = !DILocalVariable(name: "name", arg: 2, scope: !2766, file: !1548, line: 593, type: !121)
!2772 = !DILocalVariable(name: "lenp", arg: 3, scope: !2766, file: !1548, line: 594, type: !1029)
!2773 = !DILocation(line: 592, column: 75, scope: !2766)
!2774 = !DILocation(line: 593, column: 19, scope: !2766)
!2775 = !DILocation(line: 594, column: 12, scope: !2766)
!2776 = !DILocation(line: 596, column: 2, scope: !2766)
!2777 = distinct !DISubprogram(name: "of_prop_next_string", scope: !1548, file: !1548, line: 822, type: !2778, scopeLine: 824, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!121, !1658, !121}
!2780 = !{!2781, !2782}
!2781 = !DILocalVariable(name: "prop", arg: 1, scope: !2777, file: !1548, line: 822, type: !1658)
!2782 = !DILocalVariable(name: "cur", arg: 2, scope: !2777, file: !1548, line: 823, type: !121)
!2783 = !DILocation(line: 822, column: 64, scope: !2777)
!2784 = !DILocation(line: 823, column: 15, scope: !2777)
!2785 = !DILocation(line: 825, column: 2, scope: !2777)
!2786 = !DISubprogram(name: "strncmp", scope: !2787, file: !2787, line: 91, type: !2788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2787 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!46, !121, !121, !257}
!2790 = !DISubprogram(name: "strlen", scope: !2787, file: !2787, line: 128, type: !2791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!259, !121}
!2793 = distinct !DISubprogram(name: "mbox_free_channel", scope: !3, file: !3, line: 485, type: !1784, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2794)
!2794 = !{!2795, !2796, !2797, !2801}
!2795 = !DILocalVariable(name: "chan", arg: 1, scope: !2793, file: !3, line: 485, type: !1741)
!2796 = !DILocalVariable(name: "flags", scope: !2793, file: !3, line: 487, type: !259)
!2797 = !DILocalVariable(name: "__dummy", scope: !2798, file: !3, line: 496, type: !259)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 496, column: 2)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 496, column: 2)
!2800 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 496, column: 2)
!2801 = !DILocalVariable(name: "__dummy2", scope: !2798, file: !3, line: 496, type: !259)
!2802 = !DILocation(line: 485, column: 42, scope: !2793)
!2803 = !DILocation(line: 487, column: 2, scope: !2793)
!2804 = !DILocation(line: 487, column: 16, scope: !2793)
!2805 = !DILocation(line: 489, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 489, column: 6)
!2807 = !DILocation(line: 489, column: 12, scope: !2806)
!2808 = !DILocation(line: 489, column: 16, scope: !2806)
!2809 = !DILocation(line: 489, column: 22, scope: !2806)
!2810 = !DILocation(line: 489, column: 6, scope: !2793)
!2811 = !DILocation(line: 490, column: 3, scope: !2806)
!2812 = !DILocation(line: 492, column: 6, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 492, column: 6)
!2814 = !DILocation(line: 492, column: 12, scope: !2813)
!2815 = !DILocation(line: 492, column: 18, scope: !2813)
!2816 = !DILocation(line: 492, column: 23, scope: !2813)
!2817 = !DILocation(line: 492, column: 6, scope: !2793)
!2818 = !DILocation(line: 493, column: 3, scope: !2813)
!2819 = !DILocation(line: 493, column: 9, scope: !2813)
!2820 = !DILocation(line: 493, column: 15, scope: !2813)
!2821 = !DILocation(line: 493, column: 20, scope: !2813)
!2822 = !DILocation(line: 493, column: 29, scope: !2813)
!2823 = !DILocation(line: 496, column: 2, scope: !2793)
!2824 = !DILocation(line: 496, column: 2, scope: !2800)
!2825 = !DILocation(line: 496, column: 2, scope: !2798)
!2826 = !DILocation(line: 496, column: 2, scope: !2799)
!2827 = !DILocation(line: 497, column: 2, scope: !2793)
!2828 = !DILocation(line: 497, column: 8, scope: !2793)
!2829 = !DILocation(line: 497, column: 11, scope: !2793)
!2830 = !DILocation(line: 498, column: 2, scope: !2793)
!2831 = !DILocation(line: 498, column: 8, scope: !2793)
!2832 = !DILocation(line: 498, column: 19, scope: !2793)
!2833 = !DILocation(line: 499, column: 6, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 499, column: 6)
!2835 = !DILocation(line: 499, column: 12, scope: !2834)
!2836 = !DILocation(line: 499, column: 26, scope: !2834)
!2837 = !DILocation(line: 499, column: 6, scope: !2793)
!2838 = !DILocation(line: 500, column: 3, scope: !2834)
!2839 = !DILocation(line: 500, column: 9, scope: !2834)
!2840 = !DILocation(line: 500, column: 23, scope: !2834)
!2841 = !DILocation(line: 502, column: 13, scope: !2793)
!2842 = !DILocation(line: 502, column: 19, scope: !2793)
!2843 = !DILocation(line: 502, column: 25, scope: !2793)
!2844 = !DILocation(line: 502, column: 30, scope: !2793)
!2845 = !DILocation(line: 502, column: 38, scope: !2793)
!2846 = !DILocation(line: 502, column: 2, scope: !2793)
!2847 = !DILocation(line: 503, column: 26, scope: !2793)
!2848 = !DILocation(line: 503, column: 32, scope: !2793)
!2849 = !DILocation(line: 503, column: 38, scope: !2793)
!2850 = !DILocation(line: 503, column: 2, scope: !2793)
!2851 = !DILocation(line: 504, column: 1, scope: !2793)
!2852 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !2853, file: !2853, line: 32, type: !2854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2853 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!259, !2856}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!2857 = distinct !DISubprogram(name: "spinlock_check", scope: !2858, file: !2858, line: 324, type: !2859, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2862)
!2858 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!2856, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!2862 = !{!2863}
!2863 = !DILocalVariable(name: "lock", arg: 1, scope: !2857, file: !2858, line: 324, type: !2861)
!2864 = !DILocation(line: 324, column: 67, scope: !2857)
!2865 = !DILocation(line: 326, column: 10, scope: !2857)
!2866 = !DILocation(line: 326, column: 16, scope: !2857)
!2867 = !DILocation(line: 326, column: 2, scope: !2857)
!2868 = !DISubprogram(name: "module_put", scope: !13, file: !13, line: 706, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2869 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2858, file: !2858, line: 404, type: !2870, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !2861, !259}
!2872 = !{!2873, !2874, !2875, !2878}
!2873 = !DILocalVariable(name: "lock", arg: 1, scope: !2869, file: !2858, line: 404, type: !2861)
!2874 = !DILocalVariable(name: "flags", arg: 2, scope: !2869, file: !2858, line: 404, type: !259)
!2875 = !DILocalVariable(name: "__dummy", scope: !2876, file: !2858, line: 406, type: !259)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !2858, line: 406, column: 2)
!2877 = distinct !DILexicalBlock(scope: !2869, file: !2858, line: 406, column: 2)
!2878 = !DILocalVariable(name: "__dummy2", scope: !2876, file: !2858, line: 406, type: !259)
!2879 = !DILocation(line: 404, column: 64, scope: !2869)
!2880 = !DILocation(line: 404, column: 84, scope: !2869)
!2881 = !DILocation(line: 406, column: 2, scope: !2869)
!2882 = !DILocation(line: 406, column: 2, scope: !2876)
!2883 = !DILocation(line: 406, column: 2, scope: !2877)
!2884 = !DILocation(line: 407, column: 1, scope: !2869)
!2885 = distinct !DISubprogram(name: "mbox_controller_register", scope: !3, file: !3, line: 525, type: !2886, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!46, !108}
!2888 = !{!2889, !2890, !2891, !2892}
!2889 = !DILocalVariable(name: "mbox", arg: 1, scope: !2885, file: !3, line: 525, type: !108)
!2890 = !DILocalVariable(name: "i", scope: !2885, file: !3, line: 527, type: !46)
!2891 = !DILocalVariable(name: "txdone", scope: !2885, file: !3, line: 527, type: !46)
!2892 = !DILocalVariable(name: "chan", scope: !2893, file: !3, line: 554, type: !1741)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 553, column: 40)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 553, column: 2)
!2895 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 553, column: 2)
!2896 = !DILocation(line: 525, column: 54, scope: !2885)
!2897 = !DILocation(line: 527, column: 2, scope: !2885)
!2898 = !DILocation(line: 527, column: 6, scope: !2885)
!2899 = !DILocation(line: 527, column: 9, scope: !2885)
!2900 = !DILocation(line: 530, column: 7, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 530, column: 6)
!2902 = !DILocation(line: 530, column: 12, scope: !2901)
!2903 = !DILocation(line: 530, column: 16, scope: !2901)
!2904 = !DILocation(line: 530, column: 22, scope: !2901)
!2905 = !DILocation(line: 530, column: 26, scope: !2901)
!2906 = !DILocation(line: 530, column: 30, scope: !2901)
!2907 = !DILocation(line: 530, column: 36, scope: !2901)
!2908 = !DILocation(line: 530, column: 40, scope: !2901)
!2909 = !DILocation(line: 530, column: 44, scope: !2901)
!2910 = !DILocation(line: 530, column: 50, scope: !2901)
!2911 = !DILocation(line: 530, column: 6, scope: !2885)
!2912 = !DILocation(line: 531, column: 3, scope: !2901)
!2913 = !DILocation(line: 533, column: 6, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 533, column: 6)
!2915 = !DILocation(line: 533, column: 12, scope: !2914)
!2916 = !DILocation(line: 533, column: 6, scope: !2885)
!2917 = !DILocation(line: 534, column: 10, scope: !2914)
!2918 = !DILocation(line: 534, column: 3, scope: !2914)
!2919 = !DILocation(line: 535, column: 11, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 535, column: 11)
!2921 = !DILocation(line: 535, column: 17, scope: !2920)
!2922 = !DILocation(line: 535, column: 11, scope: !2914)
!2923 = !DILocation(line: 536, column: 10, scope: !2920)
!2924 = !DILocation(line: 536, column: 3, scope: !2920)
!2925 = !DILocation(line: 538, column: 10, scope: !2920)
!2926 = !DILocation(line: 540, column: 6, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 540, column: 6)
!2928 = !DILocation(line: 540, column: 13, scope: !2927)
!2929 = !DILocation(line: 540, column: 6, scope: !2885)
!2930 = !DILocation(line: 542, column: 8, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 542, column: 7)
!2932 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 540, column: 32)
!2933 = !DILocation(line: 542, column: 14, scope: !2931)
!2934 = !DILocation(line: 542, column: 19, scope: !2931)
!2935 = !DILocation(line: 542, column: 7, scope: !2932)
!2936 = !DILocation(line: 543, column: 4, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 543, column: 4)
!2938 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 542, column: 33)
!2939 = !DILocation(line: 543, column: 4, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 543, column: 4)
!2941 = !DILocation(line: 544, column: 4, scope: !2938)
!2942 = !DILocation(line: 547, column: 17, scope: !2932)
!2943 = !DILocation(line: 547, column: 23, scope: !2932)
!2944 = !DILocation(line: 547, column: 3, scope: !2932)
!2945 = !DILocation(line: 549, column: 3, scope: !2932)
!2946 = !DILocation(line: 549, column: 9, scope: !2932)
!2947 = !DILocation(line: 549, column: 18, scope: !2932)
!2948 = !DILocation(line: 549, column: 27, scope: !2932)
!2949 = !DILocation(line: 550, column: 3, scope: !2932)
!2950 = !DILocation(line: 550, column: 3, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 550, column: 3)
!2952 = !DILocation(line: 551, column: 2, scope: !2932)
!2953 = !DILocation(line: 553, column: 9, scope: !2895)
!2954 = !DILocation(line: 553, column: 7, scope: !2895)
!2955 = !DILocation(line: 553, column: 14, scope: !2894)
!2956 = !DILocation(line: 553, column: 18, scope: !2894)
!2957 = !DILocation(line: 553, column: 24, scope: !2894)
!2958 = !DILocation(line: 553, column: 16, scope: !2894)
!2959 = !DILocation(line: 553, column: 2, scope: !2895)
!2960 = !DILocation(line: 554, column: 3, scope: !2893)
!2961 = !DILocation(line: 554, column: 21, scope: !2893)
!2962 = !DILocation(line: 554, column: 29, scope: !2893)
!2963 = !DILocation(line: 554, column: 35, scope: !2893)
!2964 = !DILocation(line: 554, column: 41, scope: !2893)
!2965 = !DILocation(line: 556, column: 3, scope: !2893)
!2966 = !DILocation(line: 556, column: 9, scope: !2893)
!2967 = !DILocation(line: 556, column: 12, scope: !2893)
!2968 = !DILocation(line: 557, column: 16, scope: !2893)
!2969 = !DILocation(line: 557, column: 3, scope: !2893)
!2970 = !DILocation(line: 557, column: 9, scope: !2893)
!2971 = !DILocation(line: 557, column: 14, scope: !2893)
!2972 = !DILocation(line: 558, column: 25, scope: !2893)
!2973 = !DILocation(line: 558, column: 3, scope: !2893)
!2974 = !DILocation(line: 558, column: 9, scope: !2893)
!2975 = !DILocation(line: 558, column: 23, scope: !2893)
!2976 = !DILocation(line: 559, column: 3, scope: !2893)
!2977 = !DILocation(line: 559, column: 3, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 559, column: 3)
!2979 = !DILocation(line: 560, column: 2, scope: !2894)
!2980 = !DILocation(line: 560, column: 2, scope: !2893)
!2981 = !DILocation(line: 553, column: 36, scope: !2894)
!2982 = !DILocation(line: 553, column: 2, scope: !2894)
!2983 = distinct !{!2983, !2959, !2984, !2598, !2599}
!2984 = !DILocation(line: 560, column: 2, scope: !2895)
!2985 = !DILocation(line: 562, column: 7, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 562, column: 6)
!2987 = !DILocation(line: 562, column: 13, scope: !2986)
!2988 = !DILocation(line: 562, column: 6, scope: !2885)
!2989 = !DILocation(line: 563, column: 3, scope: !2986)
!2990 = !DILocation(line: 563, column: 9, scope: !2986)
!2991 = !DILocation(line: 563, column: 18, scope: !2986)
!2992 = !DILocation(line: 565, column: 2, scope: !2885)
!2993 = !DILocation(line: 566, column: 17, scope: !2885)
!2994 = !DILocation(line: 566, column: 23, scope: !2885)
!2995 = !DILocation(line: 566, column: 2, scope: !2885)
!2996 = !DILocation(line: 567, column: 2, scope: !2885)
!2997 = !DILocation(line: 569, column: 2, scope: !2885)
!2998 = !DILocation(line: 570, column: 1, scope: !2885)
!2999 = !DISubprogram(name: "hrtimer_init", scope: !33, file: !33, line: 374, type: !3000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{null, !1392, !1424, !89}
!3002 = distinct !DISubprogram(name: "txdone_hrtimer", scope: !3, file: !3, line: 118, type: !1390, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3003)
!3003 = !{!3004, !3005, !3006, !3008, !3009, !3010, !3011, !3012, !3016, !3022}
!3004 = !DILocalVariable(name: "hrtimer", arg: 1, scope: !3002, file: !3, line: 118, type: !1392)
!3005 = !DILocalVariable(name: "mbox", scope: !3002, file: !3, line: 120, type: !108)
!3006 = !DILocalVariable(name: "__mptr", scope: !3007, file: !3, line: 121, type: !107)
!3007 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 121, column: 3)
!3008 = !DILocalVariable(name: "txdone", scope: !3002, file: !3, line: 122, type: !566)
!3009 = !DILocalVariable(name: "resched", scope: !3002, file: !3, line: 122, type: !566)
!3010 = !DILocalVariable(name: "i", scope: !3002, file: !3, line: 123, type: !46)
!3011 = !DILocalVariable(name: "flags", scope: !3002, file: !3, line: 124, type: !259)
!3012 = !DILocalVariable(name: "chan", scope: !3013, file: !3, line: 127, type: !1741)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 126, column: 40)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 126, column: 2)
!3015 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 126, column: 2)
!3016 = !DILocalVariable(name: "__dummy", scope: !3017, file: !3, line: 139, type: !259)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 139, column: 3)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 139, column: 3)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 139, column: 3)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 138, column: 15)
!3021 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 138, column: 6)
!3022 = !DILocalVariable(name: "__dummy2", scope: !3017, file: !3, line: 139, type: !259)
!3023 = !DILocation(line: 118, column: 60, scope: !3002)
!3024 = !DILocation(line: 120, column: 2, scope: !3002)
!3025 = !DILocation(line: 120, column: 26, scope: !3002)
!3026 = !DILocation(line: 121, column: 3, scope: !3007)
!3027 = !DILocation(line: 121, column: 3, scope: !3002)
!3028 = !DILocation(line: 122, column: 2, scope: !3002)
!3029 = !DILocation(line: 122, column: 7, scope: !3002)
!3030 = !DILocation(line: 122, column: 15, scope: !3002)
!3031 = !DILocation(line: 123, column: 2, scope: !3002)
!3032 = !DILocation(line: 123, column: 6, scope: !3002)
!3033 = !DILocation(line: 124, column: 2, scope: !3002)
!3034 = !DILocation(line: 124, column: 16, scope: !3002)
!3035 = !DILocation(line: 126, column: 9, scope: !3015)
!3036 = !DILocation(line: 126, column: 7, scope: !3015)
!3037 = !DILocation(line: 126, column: 14, scope: !3014)
!3038 = !DILocation(line: 126, column: 18, scope: !3014)
!3039 = !DILocation(line: 126, column: 24, scope: !3014)
!3040 = !DILocation(line: 126, column: 16, scope: !3014)
!3041 = !DILocation(line: 126, column: 2, scope: !3015)
!3042 = !DILocation(line: 127, column: 3, scope: !3013)
!3043 = !DILocation(line: 127, column: 21, scope: !3013)
!3044 = !DILocation(line: 127, column: 29, scope: !3013)
!3045 = !DILocation(line: 127, column: 35, scope: !3013)
!3046 = !DILocation(line: 127, column: 41, scope: !3013)
!3047 = !DILocation(line: 129, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 129, column: 7)
!3049 = !DILocation(line: 129, column: 13, scope: !3048)
!3050 = !DILocation(line: 129, column: 24, scope: !3048)
!3051 = !DILocation(line: 129, column: 27, scope: !3048)
!3052 = !DILocation(line: 129, column: 33, scope: !3048)
!3053 = !DILocation(line: 129, column: 7, scope: !3013)
!3054 = !DILocation(line: 130, column: 13, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 129, column: 37)
!3056 = !DILocation(line: 130, column: 19, scope: !3055)
!3057 = !DILocation(line: 130, column: 25, scope: !3055)
!3058 = !DILocation(line: 130, column: 30, scope: !3055)
!3059 = !DILocation(line: 130, column: 43, scope: !3055)
!3060 = !DILocation(line: 130, column: 11, scope: !3055)
!3061 = !DILocation(line: 131, column: 8, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 131, column: 8)
!3063 = !DILocation(line: 131, column: 8, scope: !3055)
!3064 = !DILocation(line: 132, column: 13, scope: !3062)
!3065 = !DILocation(line: 132, column: 5, scope: !3062)
!3066 = !DILocation(line: 134, column: 13, scope: !3062)
!3067 = !DILocation(line: 135, column: 3, scope: !3055)
!3068 = !DILocation(line: 136, column: 2, scope: !3014)
!3069 = !DILocation(line: 136, column: 2, scope: !3013)
!3070 = !DILocation(line: 126, column: 36, scope: !3014)
!3071 = !DILocation(line: 126, column: 2, scope: !3014)
!3072 = distinct !{!3072, !3041, !3073, !2598, !2599}
!3073 = !DILocation(line: 136, column: 2, scope: !3015)
!3074 = !DILocation(line: 138, column: 6, scope: !3021)
!3075 = !DILocation(line: 138, column: 6, scope: !3002)
!3076 = !DILocation(line: 139, column: 3, scope: !3020)
!3077 = !DILocation(line: 139, column: 3, scope: !3019)
!3078 = !DILocation(line: 139, column: 3, scope: !3017)
!3079 = !DILocation(line: 139, column: 3, scope: !3018)
!3080 = !DILocation(line: 140, column: 26, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 140, column: 7)
!3082 = !DILocation(line: 140, column: 8, scope: !3081)
!3083 = !DILocation(line: 140, column: 7, scope: !3020)
!3084 = !DILocation(line: 141, column: 24, scope: !3081)
!3085 = !DILocation(line: 141, column: 45, scope: !3081)
!3086 = !DILocation(line: 141, column: 51, scope: !3081)
!3087 = !DILocation(line: 141, column: 33, scope: !3081)
!3088 = !DILocation(line: 141, column: 4, scope: !3081)
!3089 = !DILocation(line: 142, column: 27, scope: !3020)
!3090 = !DILocation(line: 142, column: 33, scope: !3020)
!3091 = !DILocation(line: 142, column: 48, scope: !3020)
!3092 = !DILocation(line: 142, column: 3, scope: !3020)
!3093 = !DILocation(line: 144, column: 3, scope: !3020)
!3094 = !DILocation(line: 146, column: 2, scope: !3002)
!3095 = !DILocation(line: 147, column: 1, scope: !3002)
!3096 = distinct !DISubprogram(name: "of_mbox_index_xlate", scope: !3, file: !3, line: 508, type: !1798, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3097)
!3097 = !{!3098, !3099, !3100}
!3098 = !DILocalVariable(name: "mbox", arg: 1, scope: !3096, file: !3, line: 508, type: !108)
!3099 = !DILocalVariable(name: "sp", arg: 2, scope: !3096, file: !3, line: 509, type: !1800)
!3100 = !DILocalVariable(name: "ind", scope: !3096, file: !3, line: 511, type: !46)
!3101 = !DILocation(line: 508, column: 45, scope: !3096)
!3102 = !DILocation(line: 509, column: 37, scope: !3096)
!3103 = !DILocation(line: 511, column: 2, scope: !3096)
!3104 = !DILocation(line: 511, column: 6, scope: !3096)
!3105 = !DILocation(line: 511, column: 12, scope: !3096)
!3106 = !DILocation(line: 511, column: 16, scope: !3096)
!3107 = !DILocation(line: 513, column: 6, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 513, column: 6)
!3109 = !DILocation(line: 513, column: 13, scope: !3108)
!3110 = !DILocation(line: 513, column: 19, scope: !3108)
!3111 = !DILocation(line: 513, column: 10, scope: !3108)
!3112 = !DILocation(line: 513, column: 6, scope: !3096)
!3113 = !DILocation(line: 514, column: 10, scope: !3108)
!3114 = !DILocation(line: 514, column: 3, scope: !3108)
!3115 = !DILocation(line: 516, column: 10, scope: !3096)
!3116 = !DILocation(line: 516, column: 16, scope: !3096)
!3117 = !DILocation(line: 516, column: 22, scope: !3096)
!3118 = !DILocation(line: 516, column: 2, scope: !3096)
!3119 = !DILocation(line: 517, column: 1, scope: !3096)
!3120 = distinct !DISubprogram(name: "list_add_tail", scope: !3121, file: !3121, line: 181, type: !3122, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3124)
!3121 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !129, !129}
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "new", arg: 1, scope: !3120, file: !3121, line: 181, type: !129)
!3126 = !DILocalVariable(name: "head", arg: 2, scope: !3120, file: !3121, line: 181, type: !129)
!3127 = !DILocation(line: 181, column: 52, scope: !3120)
!3128 = !DILocation(line: 181, column: 75, scope: !3120)
!3129 = !DILocation(line: 183, column: 13, scope: !3120)
!3130 = !DILocation(line: 183, column: 18, scope: !3120)
!3131 = !DILocation(line: 183, column: 24, scope: !3120)
!3132 = !DILocation(line: 183, column: 30, scope: !3120)
!3133 = !DILocation(line: 183, column: 2, scope: !3120)
!3134 = !DILocation(line: 184, column: 1, scope: !3120)
!3135 = distinct !DISubprogram(name: "mbox_controller_unregister", scope: !3, file: !3, line: 577, type: !3136, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !108}
!3138 = !{!3139, !3140}
!3139 = !DILocalVariable(name: "mbox", arg: 1, scope: !3135, file: !3, line: 577, type: !108)
!3140 = !DILocalVariable(name: "i", scope: !3135, file: !3, line: 579, type: !46)
!3141 = !DILocation(line: 577, column: 57, scope: !3135)
!3142 = !DILocation(line: 579, column: 2, scope: !3135)
!3143 = !DILocation(line: 579, column: 6, scope: !3135)
!3144 = !DILocation(line: 581, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 581, column: 6)
!3146 = !DILocation(line: 581, column: 6, scope: !3135)
!3147 = !DILocation(line: 582, column: 3, scope: !3145)
!3148 = !DILocation(line: 584, column: 2, scope: !3135)
!3149 = !DILocation(line: 586, column: 12, scope: !3135)
!3150 = !DILocation(line: 586, column: 18, scope: !3135)
!3151 = !DILocation(line: 586, column: 2, scope: !3135)
!3152 = !DILocation(line: 588, column: 9, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 588, column: 2)
!3154 = !DILocation(line: 588, column: 7, scope: !3153)
!3155 = !DILocation(line: 588, column: 14, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 588, column: 2)
!3157 = !DILocation(line: 588, column: 18, scope: !3156)
!3158 = !DILocation(line: 588, column: 24, scope: !3156)
!3159 = !DILocation(line: 588, column: 16, scope: !3156)
!3160 = !DILocation(line: 588, column: 2, scope: !3153)
!3161 = !DILocation(line: 589, column: 22, scope: !3156)
!3162 = !DILocation(line: 589, column: 28, scope: !3156)
!3163 = !DILocation(line: 589, column: 34, scope: !3156)
!3164 = !DILocation(line: 589, column: 3, scope: !3156)
!3165 = !DILocation(line: 588, column: 36, scope: !3156)
!3166 = !DILocation(line: 588, column: 2, scope: !3156)
!3167 = distinct !{!3167, !3160, !3168, !2598, !2599}
!3168 = !DILocation(line: 589, column: 36, scope: !3153)
!3169 = !DILocation(line: 591, column: 6, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 591, column: 6)
!3171 = !DILocation(line: 591, column: 12, scope: !3170)
!3172 = !DILocation(line: 591, column: 6, scope: !3135)
!3173 = !DILocation(line: 592, column: 19, scope: !3170)
!3174 = !DILocation(line: 592, column: 25, scope: !3170)
!3175 = !DILocation(line: 592, column: 3, scope: !3170)
!3176 = !DILocation(line: 594, column: 2, scope: !3135)
!3177 = !DILocation(line: 595, column: 1, scope: !3135)
!3178 = distinct !DISubprogram(name: "list_del", scope: !3121, file: !3121, line: 227, type: !3179, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3181)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !129}
!3181 = !{!3182}
!3182 = !DILocalVariable(name: "entry", arg: 1, scope: !3178, file: !3121, line: 227, type: !129)
!3183 = !DILocation(line: 227, column: 47, scope: !3178)
!3184 = !DILocation(line: 229, column: 19, scope: !3178)
!3185 = !DILocation(line: 229, column: 2, scope: !3178)
!3186 = !DILocation(line: 230, column: 2, scope: !3178)
!3187 = !DILocation(line: 230, column: 9, scope: !3178)
!3188 = !DILocation(line: 230, column: 14, scope: !3178)
!3189 = !DILocation(line: 231, column: 2, scope: !3178)
!3190 = !DILocation(line: 231, column: 9, scope: !3178)
!3191 = !DILocation(line: 231, column: 14, scope: !3178)
!3192 = !DILocation(line: 232, column: 1, scope: !3178)
!3193 = !DISubprogram(name: "hrtimer_cancel", scope: !33, file: !33, line: 423, type: !3194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!46, !1392}
!3196 = distinct !DISubprogram(name: "devm_mbox_controller_register", scope: !3, file: !3, line: 627, type: !3197, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!46, !113, !108}
!3199 = !{!3200, !3201, !3202, !3204}
!3200 = !DILocalVariable(name: "dev", arg: 1, scope: !3196, file: !3, line: 627, type: !113)
!3201 = !DILocalVariable(name: "mbox", arg: 2, scope: !3196, file: !3, line: 628, type: !108)
!3202 = !DILocalVariable(name: "ptr", scope: !3196, file: !3, line: 630, type: !3203)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!3204 = !DILocalVariable(name: "err", scope: !3196, file: !3, line: 631, type: !46)
!3205 = !DILocation(line: 627, column: 50, scope: !3196)
!3206 = !DILocation(line: 628, column: 31, scope: !3196)
!3207 = !DILocation(line: 630, column: 2, scope: !3196)
!3208 = !DILocation(line: 630, column: 27, scope: !3196)
!3209 = !DILocation(line: 631, column: 2, scope: !3196)
!3210 = !DILocation(line: 631, column: 6, scope: !3196)
!3211 = !DILocation(line: 633, column: 8, scope: !3196)
!3212 = !DILocation(line: 633, column: 6, scope: !3196)
!3213 = !DILocation(line: 635, column: 7, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 635, column: 6)
!3215 = !DILocation(line: 635, column: 6, scope: !3196)
!3216 = !DILocation(line: 636, column: 3, scope: !3214)
!3217 = !DILocation(line: 638, column: 33, scope: !3196)
!3218 = !DILocation(line: 638, column: 8, scope: !3196)
!3219 = !DILocation(line: 638, column: 6, scope: !3196)
!3220 = !DILocation(line: 639, column: 6, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 639, column: 6)
!3222 = !DILocation(line: 639, column: 10, scope: !3221)
!3223 = !DILocation(line: 639, column: 6, scope: !3196)
!3224 = !DILocation(line: 640, column: 15, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 639, column: 15)
!3226 = !DILocation(line: 640, column: 3, scope: !3225)
!3227 = !DILocation(line: 641, column: 10, scope: !3225)
!3228 = !DILocation(line: 641, column: 3, scope: !3225)
!3229 = !DILocation(line: 644, column: 13, scope: !3196)
!3230 = !DILocation(line: 644, column: 18, scope: !3196)
!3231 = !DILocation(line: 644, column: 2, scope: !3196)
!3232 = !DILocation(line: 645, column: 9, scope: !3196)
!3233 = !DILocation(line: 645, column: 3, scope: !3196)
!3234 = !DILocation(line: 645, column: 7, scope: !3196)
!3235 = !DILocation(line: 647, column: 2, scope: !3196)
!3236 = !DILocation(line: 648, column: 1, scope: !3196)
!3237 = !DISubprogram(name: "__devres_alloc_node", scope: !26, file: !26, line: 274, type: !3238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!107, !3240, !256, !1812, !46, !121}
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !26, line: 271, baseType: !3241)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !113, !107}
!3244 = distinct !DISubprogram(name: "__devm_mbox_controller_unregister", scope: !3, file: !3, line: 598, type: !3242, scopeLine: 599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3245)
!3245 = !{!3246, !3247, !3248}
!3246 = !DILocalVariable(name: "dev", arg: 1, scope: !3244, file: !3, line: 598, type: !113)
!3247 = !DILocalVariable(name: "res", arg: 2, scope: !3244, file: !3, line: 598, type: !107)
!3248 = !DILocalVariable(name: "mbox", scope: !3244, file: !3, line: 600, type: !3203)
!3249 = !DILocation(line: 598, column: 62, scope: !3244)
!3250 = !DILocation(line: 598, column: 73, scope: !3244)
!3251 = !DILocation(line: 600, column: 2, scope: !3244)
!3252 = !DILocation(line: 600, column: 27, scope: !3244)
!3253 = !DILocation(line: 600, column: 34, scope: !3244)
!3254 = !DILocation(line: 602, column: 30, scope: !3244)
!3255 = !DILocation(line: 602, column: 29, scope: !3244)
!3256 = !DILocation(line: 602, column: 2, scope: !3244)
!3257 = !DILocation(line: 603, column: 1, scope: !3244)
!3258 = !DISubprogram(name: "devres_free", scope: !26, file: !26, line: 285, type: !631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3259 = !DISubprogram(name: "devres_add", scope: !26, file: !26, line: 286, type: !3242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3260 = distinct !DISubprogram(name: "devm_mbox_controller_unregister", scope: !3, file: !3, line: 661, type: !3261, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3263)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !113, !108}
!3263 = !{!3264, !3265, !3266, !3268}
!3264 = !DILocalVariable(name: "dev", arg: 1, scope: !3260, file: !3, line: 661, type: !113)
!3265 = !DILocalVariable(name: "mbox", arg: 2, scope: !3260, file: !3, line: 661, type: !108)
!3266 = !DILocalVariable(name: "__ret_warn_on", scope: !3267, file: !3, line: 663, type: !46)
!3267 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 663, column: 2)
!3268 = !DILocalVariable(name: "__flags", scope: !3269, file: !3, line: 663, type: !46)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 663, column: 2)
!3270 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 663, column: 2)
!3271 = !DILocation(line: 661, column: 53, scope: !3260)
!3272 = !DILocation(line: 661, column: 82, scope: !3260)
!3273 = !DILocation(line: 663, column: 2, scope: !3267)
!3274 = !DILocation(line: 663, column: 2, scope: !3270)
!3275 = !DILocation(line: 663, column: 2, scope: !3269)
!3276 = !DILocation(line: 663, column: 2, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 663, column: 2)
!3278 = !DILocation(line: 663, column: 2, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 663, column: 2)
!3280 = !{i64 2152960311, i64 2152960340, i64 2152960386, i64 2152960444, i64 2152960498, i64 2152960552, i64 2152960607, i64 2152960638, i64 2152960946, i64 2152960952, i64 2152960999, i64 2152961022, i64 2152961048}
!3281 = !DILocation(line: 663, column: 2, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 663, column: 2)
!3283 = !DILocation(line: 663, column: 2, scope: !3260)
!3284 = !DILocation(line: 665, column: 1, scope: !3260)
!3285 = !DISubprogram(name: "devres_release", scope: !26, file: !26, line: 295, type: !3286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!46, !113, !3240, !3288, !107}
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !26, line: 272, baseType: !3289)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!46, !113, !107, !107}
!3292 = distinct !DISubprogram(name: "devm_mbox_controller_match", scope: !3, file: !3, line: 605, type: !3290, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3301}
!3294 = !DILocalVariable(name: "dev", arg: 1, scope: !3292, file: !3, line: 605, type: !113)
!3295 = !DILocalVariable(name: "res", arg: 2, scope: !3292, file: !3, line: 605, type: !107)
!3296 = !DILocalVariable(name: "data", arg: 3, scope: !3292, file: !3, line: 605, type: !107)
!3297 = !DILocalVariable(name: "mbox", scope: !3292, file: !3, line: 607, type: !3203)
!3298 = !DILocalVariable(name: "__ret_warn_on", scope: !3299, file: !3, line: 609, type: !46)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 609, column: 6)
!3300 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 609, column: 6)
!3301 = !DILocalVariable(name: "__flags", scope: !3302, file: !3, line: 609, type: !46)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 609, column: 6)
!3303 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 609, column: 6)
!3304 = !DILocation(line: 605, column: 54, scope: !3292)
!3305 = !DILocation(line: 605, column: 65, scope: !3292)
!3306 = !DILocation(line: 605, column: 76, scope: !3292)
!3307 = !DILocation(line: 607, column: 2, scope: !3292)
!3308 = !DILocation(line: 607, column: 27, scope: !3292)
!3309 = !DILocation(line: 607, column: 34, scope: !3292)
!3310 = !DILocation(line: 609, column: 6, scope: !3299)
!3311 = !DILocation(line: 609, column: 6, scope: !3303)
!3312 = !DILocation(line: 609, column: 6, scope: !3302)
!3313 = !DILocation(line: 609, column: 6, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 609, column: 6)
!3315 = !DILocation(line: 609, column: 6, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 609, column: 6)
!3317 = !{i64 2152956175, i64 2152956204, i64 2152956250, i64 2152956308, i64 2152956362, i64 2152956416, i64 2152956471, i64 2152956502, i64 2152956810, i64 2152956816, i64 2152956863, i64 2152956886, i64 2152956912}
!3318 = !DILocation(line: 609, column: 6, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 609, column: 6)
!3320 = !DILocation(line: 609, column: 6, scope: !3300)
!3321 = !DILocation(line: 609, column: 6, scope: !3292)
!3322 = !DILocation(line: 610, column: 3, scope: !3300)
!3323 = !DILocation(line: 612, column: 10, scope: !3292)
!3324 = !DILocation(line: 612, column: 9, scope: !3292)
!3325 = !DILocation(line: 612, column: 18, scope: !3292)
!3326 = !DILocation(line: 612, column: 15, scope: !3292)
!3327 = !DILocation(line: 612, column: 2, scope: !3292)
!3328 = !DILocation(line: 613, column: 1, scope: !3292)
!3329 = !DISubprogram(name: "complete", scope: !884, file: !884, line: 118, type: !1909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3330 = distinct !DISubprogram(name: "hrtimer_start", scope: !33, file: !33, line: 417, type: !3331, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3334)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{null, !1392, !1359, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!3334 = !{!3335, !3336, !3337}
!3335 = !DILocalVariable(name: "timer", arg: 1, scope: !3330, file: !33, line: 417, type: !1392)
!3336 = !DILocalVariable(name: "tim", arg: 2, scope: !3330, file: !33, line: 417, type: !1359)
!3337 = !DILocalVariable(name: "mode", arg: 3, scope: !3330, file: !33, line: 418, type: !3333)
!3338 = !DILocation(line: 417, column: 50, scope: !3330)
!3339 = !DILocation(line: 417, column: 65, scope: !3330)
!3340 = !DILocation(line: 418, column: 30, scope: !3330)
!3341 = !DILocation(line: 420, column: 25, scope: !3330)
!3342 = !DILocation(line: 420, column: 32, scope: !3330)
!3343 = !DILocation(line: 420, column: 40, scope: !3330)
!3344 = !DILocation(line: 420, column: 2, scope: !3330)
!3345 = !DILocation(line: 421, column: 1, scope: !3330)
!3346 = !DISubprogram(name: "hrtimer_start_range_ns", scope: !33, file: !33, line: 406, type: !3347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{null, !1392, !1359, !372, !3333}
!3349 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !2333, file: !2333, line: 458, type: !2334, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3350)
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "m", arg: 1, scope: !3349, file: !2333, line: 458, type: !2336)
!3352 = !DILocation(line: 458, column: 66, scope: !3349)
!3353 = !DILocation(line: 460, column: 10, scope: !3349)
!3354 = !DILocation(line: 460, column: 12, scope: !3349)
!3355 = !DILocation(line: 460, column: 34, scope: !3349)
!3356 = !DILocation(line: 460, column: 39, scope: !3349)
!3357 = !DILocation(line: 460, column: 2, scope: !3349)
!3358 = !DISubprogram(name: "__msecs_to_jiffies", scope: !2333, file: !2333, line: 451, type: !2334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3359 = !DISubprogram(name: "try_module_get", scope: !13, file: !13, line: 696, type: !3360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!566, !863}
!3362 = !DILocation(line: 84, column: 55, scope: !1908)
!3363 = !DILocation(line: 86, column: 2, scope: !1908)
!3364 = !DILocation(line: 86, column: 5, scope: !1908)
!3365 = !DILocation(line: 86, column: 10, scope: !1908)
!3366 = !DILocation(line: 87, column: 2, scope: !1908)
!3367 = !DILocation(line: 87, column: 2, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !1908, file: !884, line: 87, column: 2)
!3369 = !DILocation(line: 88, column: 1, scope: !1908)
!3370 = !DISubprogram(name: "__init_swait_queue_head", scope: !889, file: !889, line: 69, type: !3371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !3373, !121, !3374}
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!3375 = distinct !DISubprogram(name: "__of_parse_phandle_with_args", scope: !1548, file: !1548, line: 728, type: !3376, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!46, !2638, !121, !121, !46, !46, !2640}
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384}
!3379 = !DILocalVariable(name: "np", arg: 1, scope: !3375, file: !1548, line: 728, type: !2638)
!3380 = !DILocalVariable(name: "list_name", arg: 2, scope: !3375, file: !1548, line: 729, type: !121)
!3381 = !DILocalVariable(name: "cells_name", arg: 3, scope: !3375, file: !1548, line: 730, type: !121)
!3382 = !DILocalVariable(name: "cell_count", arg: 4, scope: !3375, file: !1548, line: 731, type: !46)
!3383 = !DILocalVariable(name: "index", arg: 5, scope: !3375, file: !1548, line: 732, type: !46)
!3384 = !DILocalVariable(name: "out_args", arg: 6, scope: !3375, file: !1548, line: 733, type: !2640)
!3385 = !DILocation(line: 728, column: 74, scope: !3375)
!3386 = !DILocation(line: 729, column: 25, scope: !3375)
!3387 = !DILocation(line: 730, column: 25, scope: !3375)
!3388 = !DILocation(line: 731, column: 17, scope: !3375)
!3389 = !DILocation(line: 732, column: 17, scope: !3375)
!3390 = !DILocation(line: 733, column: 37, scope: !3375)
!3391 = !DILocation(line: 735, column: 2, scope: !3375)
!3392 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !2853, file: !2853, line: 43, type: !3393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{null, !2856, !259}
!3395 = distinct !DISubprogram(name: "hrtimer_is_queued", scope: !33, file: !33, line: 470, type: !3396, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!566, !1392}
!3398 = !{!3399}
!3399 = !DILocalVariable(name: "timer", arg: 1, scope: !3395, file: !33, line: 470, type: !1392)
!3400 = !DILocation(line: 470, column: 54, scope: !3395)
!3401 = !DILocation(line: 473, column: 12, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3395, file: !33, line: 473, column: 12)
!3403 = !DILocation(line: 473, column: 12, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3402, file: !33, line: 473, column: 12)
!3405 = !DILocation(line: 473, column: 12, scope: !3395)
!3406 = !DILocation(line: 473, column: 36, scope: !3395)
!3407 = !DILocation(line: 473, column: 10, scope: !3395)
!3408 = !DILocation(line: 473, column: 9, scope: !3395)
!3409 = !DILocation(line: 473, column: 2, scope: !3395)
!3410 = distinct !DISubprogram(name: "hrtimer_forward_now", scope: !33, file: !33, line: 505, type: !3411, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!372, !1392, !1359}
!3413 = !{!3414, !3415}
!3414 = !DILocalVariable(name: "timer", arg: 1, scope: !3410, file: !33, line: 505, type: !1392)
!3415 = !DILocalVariable(name: "interval", arg: 2, scope: !3410, file: !33, line: 506, type: !1359)
!3416 = !DILocation(line: 505, column: 55, scope: !3410)
!3417 = !DILocation(line: 506, column: 19, scope: !3410)
!3418 = !DILocation(line: 508, column: 25, scope: !3410)
!3419 = !DILocation(line: 508, column: 32, scope: !3410)
!3420 = !DILocation(line: 508, column: 39, scope: !3410)
!3421 = !DILocation(line: 508, column: 45, scope: !3410)
!3422 = !DILocation(line: 508, column: 57, scope: !3410)
!3423 = !DILocation(line: 508, column: 9, scope: !3410)
!3424 = !DILocation(line: 508, column: 2, scope: !3410)
!3425 = distinct !DISubprogram(name: "ms_to_ktime", scope: !1360, file: !1360, line: 227, type: !3426, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!1359, !372}
!3428 = !{!3429}
!3429 = !DILocalVariable(name: "ms", arg: 1, scope: !3425, file: !1360, line: 227, type: !372)
!3430 = !DILocation(line: 227, column: 39, scope: !3425)
!3431 = !DILocation(line: 229, column: 9, scope: !3425)
!3432 = !DILocation(line: 229, column: 12, scope: !3425)
!3433 = !DILocation(line: 229, column: 2, scope: !3425)
!3434 = !DISubprogram(name: "hrtimer_forward", scope: !33, file: !33, line: 487, type: !3435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!372, !1392, !1359, !1359}
!3437 = distinct !DISubprogram(name: "__list_add", scope: !3121, file: !3121, line: 146, type: !3438, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !129, !129, !129}
!3440 = !{!3441, !3442, !3443}
!3441 = !DILocalVariable(name: "new", arg: 1, scope: !3437, file: !3121, line: 146, type: !129)
!3442 = !DILocalVariable(name: "prev", arg: 2, scope: !3437, file: !3121, line: 147, type: !129)
!3443 = !DILocalVariable(name: "next", arg: 3, scope: !3437, file: !3121, line: 148, type: !129)
!3444 = !DILocation(line: 146, column: 49, scope: !3437)
!3445 = !DILocation(line: 147, column: 28, scope: !3437)
!3446 = !DILocation(line: 148, column: 28, scope: !3437)
!3447 = !DILocation(line: 150, column: 24, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3437, file: !3121, line: 150, column: 6)
!3449 = !DILocation(line: 150, column: 29, scope: !3448)
!3450 = !DILocation(line: 150, column: 35, scope: !3448)
!3451 = !DILocation(line: 150, column: 7, scope: !3448)
!3452 = !DILocation(line: 150, column: 6, scope: !3437)
!3453 = !DILocation(line: 151, column: 3, scope: !3448)
!3454 = !DILocation(line: 153, column: 15, scope: !3437)
!3455 = !DILocation(line: 153, column: 2, scope: !3437)
!3456 = !DILocation(line: 153, column: 8, scope: !3437)
!3457 = !DILocation(line: 153, column: 13, scope: !3437)
!3458 = !DILocation(line: 154, column: 14, scope: !3437)
!3459 = !DILocation(line: 154, column: 2, scope: !3437)
!3460 = !DILocation(line: 154, column: 7, scope: !3437)
!3461 = !DILocation(line: 154, column: 12, scope: !3437)
!3462 = !DILocation(line: 155, column: 14, scope: !3437)
!3463 = !DILocation(line: 155, column: 2, scope: !3437)
!3464 = !DILocation(line: 155, column: 7, scope: !3437)
!3465 = !DILocation(line: 155, column: 12, scope: !3437)
!3466 = !DILocation(line: 156, column: 2, scope: !3437)
!3467 = !DILocation(line: 156, column: 2, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3437, file: !3121, line: 156, column: 2)
!3469 = !DILocation(line: 156, column: 2, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3468, file: !3121, line: 156, column: 2)
!3471 = !DILocation(line: 156, column: 2, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3468, file: !3121, line: 156, column: 2)
!3473 = !DILocation(line: 157, column: 1, scope: !3437)
!3474 = distinct !DISubprogram(name: "__list_add_valid", scope: !3121, file: !3121, line: 128, type: !3475, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!566, !129, !129, !129}
!3477 = !{!3478, !3479, !3480}
!3478 = !DILocalVariable(name: "new", arg: 1, scope: !3474, file: !3121, line: 128, type: !129)
!3479 = !DILocalVariable(name: "prev", arg: 2, scope: !3474, file: !3121, line: 129, type: !129)
!3480 = !DILocalVariable(name: "next", arg: 3, scope: !3474, file: !3121, line: 130, type: !129)
!3481 = !DILocation(line: 128, column: 55, scope: !3474)
!3482 = !DILocation(line: 129, column: 23, scope: !3474)
!3483 = !DILocation(line: 130, column: 23, scope: !3474)
!3484 = !DILocation(line: 132, column: 2, scope: !3474)
!3485 = distinct !DISubprogram(name: "__list_del_entry", scope: !3121, file: !3121, line: 213, type: !3179, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3486)
!3486 = !{!3487}
!3487 = !DILocalVariable(name: "entry", arg: 1, scope: !3485, file: !3121, line: 213, type: !129)
!3488 = !DILocation(line: 213, column: 55, scope: !3485)
!3489 = !DILocation(line: 215, column: 30, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3485, file: !3121, line: 215, column: 6)
!3491 = !DILocation(line: 215, column: 7, scope: !3490)
!3492 = !DILocation(line: 215, column: 6, scope: !3485)
!3493 = !DILocation(line: 216, column: 3, scope: !3490)
!3494 = !DILocation(line: 218, column: 13, scope: !3485)
!3495 = !DILocation(line: 218, column: 20, scope: !3485)
!3496 = !DILocation(line: 218, column: 26, scope: !3485)
!3497 = !DILocation(line: 218, column: 33, scope: !3485)
!3498 = !DILocation(line: 218, column: 2, scope: !3485)
!3499 = !DILocation(line: 219, column: 1, scope: !3485)
!3500 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3121, file: !3121, line: 134, type: !3501, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3503)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!566, !129}
!3503 = !{!3504}
!3504 = !DILocalVariable(name: "entry", arg: 1, scope: !3500, file: !3121, line: 134, type: !129)
!3505 = !DILocation(line: 134, column: 61, scope: !3500)
!3506 = !DILocation(line: 136, column: 2, scope: !3500)
!3507 = distinct !DISubprogram(name: "__list_del", scope: !3121, file: !3121, line: 193, type: !3122, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3508)
!3508 = !{!3509, !3510}
!3509 = !DILocalVariable(name: "prev", arg: 1, scope: !3507, file: !3121, line: 193, type: !129)
!3510 = !DILocalVariable(name: "next", arg: 2, scope: !3507, file: !3121, line: 193, type: !129)
!3511 = !DILocation(line: 193, column: 50, scope: !3507)
!3512 = !DILocation(line: 193, column: 75, scope: !3507)
!3513 = !DILocation(line: 195, column: 15, scope: !3507)
!3514 = !DILocation(line: 195, column: 2, scope: !3507)
!3515 = !DILocation(line: 195, column: 8, scope: !3507)
!3516 = !DILocation(line: 195, column: 13, scope: !3507)
!3517 = !DILocation(line: 196, column: 2, scope: !3507)
!3518 = !DILocation(line: 196, column: 2, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3507, file: !3121, line: 196, column: 2)
!3520 = !DILocation(line: 196, column: 2, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3519, file: !3121, line: 196, column: 2)
!3522 = !DILocation(line: 196, column: 2, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3519, file: !3121, line: 196, column: 2)
!3524 = !DILocation(line: 197, column: 1, scope: !3507)
