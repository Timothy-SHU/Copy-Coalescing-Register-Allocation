; ModuleID = 'drivers/tty/serial/8250/8250_dma.c'
source_filename = "drivers/tty/serial/8250/8250_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serial8250_rx_dma_flush: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad serial8250_rx_dma_flush ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serial8250_request_dma: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad serial8250_request_dma ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serial8250_release_dma: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad serial8250_release_dma ; .previous"

%struct.static_call_key = type { ptr, %union.anon.30 }
%union.anon.30 = type { i64 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i64, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i64, i32, i8, i32, i32, i32, ptr, i32, i32, i32, i64, i64, ptr, ptr, i64, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, %struct.serial_rs485, ptr, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, %union.anon.16 }
%union.anon.16 = type { [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, ptr, %struct.anon.14, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.13, i32, i32, i32, i32, i32, i8, [3 x i8], [0 x i8] }
%union.anon.13 = type { ptr }
%struct.llist_head = type { ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.14 = type { %union.anon.15, [0 x i8] }
%union.anon.15 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i64, i64, i64, i64, i32, i32, ptr, i64, i64, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i8, ptr, i64 }
%struct.dma_async_tx_descriptor = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i64] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tty_struct = type { %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, %struct.ld_semaphore, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, i32, %struct.winsize, %struct.anon.18, %struct.anon.19, i8, i8, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, ptr, %struct.list_head, %struct.work_struct }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.18 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.19 = type { ptr, ptr, %struct.spinlock, i8, i8, [0 x i64] }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.page = type { i64, %union.anon.20, %union.anon.29, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %union.anon.22, ptr, %union.anon.24, i64 }
%union.anon.22 = type { %struct.list_head }
%union.anon.24 = type { i64 }
%union.anon.29 = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}

@__UNIQUE_ID___addressable_serial8250_rx_dma_flush294 = internal global ptr @serial8250_rx_dma_flush, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1, !dbg !5167
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1, !dbg !5170
@__UNIQUE_ID___addressable_serial8250_request_dma295 = internal global ptr @serial8250_request_dma, section ".discard.addressable", align 8, !dbg !5172
@__UNIQUE_ID___addressable_serial8250_release_dma296 = internal global ptr @serial8250_release_dma, section ".discard.addressable", align 8, !dbg !5174
@dma_map_single_attrs.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5176
@.str.2 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1, !dbg !5201
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1, !dbg !5206
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5211
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_serial8250_rx_dma_flush294, ptr @__UNIQUE_ID___addressable_serial8250_request_dma295, ptr @__UNIQUE_ID___addressable_serial8250_release_dma296, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @serial8250_tx_dma(ptr noundef %p) #0 align 16 !dbg !5224 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %xmit = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %up = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %end = alloca i32, align 4
  %n = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5874, metadata !DIExpression()), !dbg !5885
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !5875, metadata !DIExpression()), !dbg !5887
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5888
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19, !dbg !5889
  %1 = load ptr, ptr %dma1, align 8, !dbg !5889
  store ptr %1, ptr %dma, align 8, !dbg !5887
  call void @llvm.lifetime.start.p0(i64 8, ptr %xmit) #9, !dbg !5890
  call void @llvm.dbg.declare(metadata ptr %xmit, metadata !5876, metadata !DIExpression()), !dbg !5891
  %2 = load ptr, ptr %p.addr, align 8, !dbg !5892
  %port = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 0, !dbg !5893
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32, !dbg !5894
  %3 = load ptr, ptr %state, align 8, !dbg !5894
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, !dbg !5895
  store ptr %xmit2, ptr %xmit, align 8, !dbg !5891
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #9, !dbg !5896
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5878, metadata !DIExpression()), !dbg !5897
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #9, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %up, metadata !5879, metadata !DIExpression()), !dbg !5899
  %4 = load ptr, ptr %p.addr, align 8, !dbg !5900
  %port3 = getelementptr inbounds %struct.uart_8250_port, ptr %4, i32 0, i32 0, !dbg !5901
  store ptr %port3, ptr %up, align 8, !dbg !5899
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5880, metadata !DIExpression()), !dbg !5903
  %5 = load ptr, ptr %dma, align 8, !dbg !5904
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 20, !dbg !5906
  %6 = load i8, ptr %tx_running, align 8, !dbg !5906
  %tobool = icmp ne i8 %6, 0, !dbg !5904
  br i1 %tobool, label %if.then, label %if.else, !dbg !5907

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %up, align 8, !dbg !5908
  %x_char = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 26, !dbg !5911
  %8 = load i8, ptr %x_char, align 8, !dbg !5911
  %tobool4 = icmp ne i8 %8, 0, !dbg !5908
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5912

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %dma, align 8, !dbg !5913
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %9, i32 0, i32 10, !dbg !5915
  %10 = load ptr, ptr %txchan, align 8, !dbg !5915
  %call = call i32 @dmaengine_pause(ptr noundef %10) #10, !dbg !5916
  %11 = load ptr, ptr %up, align 8, !dbg !5917
  call void @uart_xchar_out(ptr noundef %11, i32 noundef 0) #10, !dbg !5918
  %12 = load ptr, ptr %dma, align 8, !dbg !5919
  %txchan6 = getelementptr inbounds %struct.uart_8250_dma, ptr %12, i32 0, i32 10, !dbg !5920
  %13 = load ptr, ptr %txchan6, align 8, !dbg !5920
  %call7 = call i32 @dmaengine_resume(ptr noundef %13) #10, !dbg !5921
  br label %if.end, !dbg !5922

if.end:                                           ; preds = %if.then5, %if.then
  store i32 0, ptr %retval, align 4, !dbg !5923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5923

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %up, align 8, !dbg !5924
  %x_char8 = getelementptr inbounds %struct.uart_port, ptr %14, i32 0, i32 26, !dbg !5926
  %15 = load i8, ptr %x_char8, align 8, !dbg !5926
  %tobool9 = icmp ne i8 %15, 0, !dbg !5924
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5927

if.then10:                                        ; preds = %if.else
  %16 = load ptr, ptr %up, align 8, !dbg !5928
  call void @uart_xchar_out(ptr noundef %16, i32 noundef 0) #10, !dbg !5930
  br label %if.end11, !dbg !5931

if.end11:                                         ; preds = %if.then10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %17 = load ptr, ptr %p.addr, align 8, !dbg !5932
  %port13 = getelementptr inbounds %struct.uart_8250_port, ptr %17, i32 0, i32 0, !dbg !5934
  %call14 = call i32 @uart_tx_stopped(ptr noundef %port13) #10, !dbg !5935
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5935
  br i1 %tobool15, label %if.then16, label %lor.lhs.false, !dbg !5936

lor.lhs.false:                                    ; preds = %if.end12
  %18 = load ptr, ptr %xmit, align 8, !dbg !5937
  %head = getelementptr inbounds %struct.circ_buf, ptr %18, i32 0, i32 1, !dbg !5937
  %19 = load i32, ptr %head, align 8, !dbg !5937
  %20 = load ptr, ptr %xmit, align 8, !dbg !5937
  %tail = getelementptr inbounds %struct.circ_buf, ptr %20, i32 0, i32 2, !dbg !5937
  %21 = load i32, ptr %tail, align 4, !dbg !5937
  %cmp = icmp eq i32 %19, %21, !dbg !5937
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !5938

if.then16:                                        ; preds = %lor.lhs.false, %if.end12
  store i32 0, ptr %retval, align 4, !dbg !5939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5939

if.end17:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9, !dbg !5941
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5881, metadata !DIExpression()), !dbg !5941
  %22 = load ptr, ptr %xmit, align 8, !dbg !5941
  %tail18 = getelementptr inbounds %struct.circ_buf, ptr %22, i32 0, i32 2, !dbg !5941
  %23 = load i32, ptr %tail18, align 4, !dbg !5941
  %conv = sext i32 %23 to i64, !dbg !5941
  %sub = sub i64 4096, %conv, !dbg !5941
  %conv19 = trunc i64 %sub to i32, !dbg !5941
  store i32 %conv19, ptr %end, align 4, !dbg !5941
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9, !dbg !5941
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5883, metadata !DIExpression()), !dbg !5941
  %24 = load ptr, ptr %xmit, align 8, !dbg !5941
  %head20 = getelementptr inbounds %struct.circ_buf, ptr %24, i32 0, i32 1, !dbg !5941
  %25 = load i32, ptr %head20, align 8, !dbg !5941
  %26 = load i32, ptr %end, align 4, !dbg !5941
  %add = add i32 %25, %26, !dbg !5941
  %conv21 = sext i32 %add to i64, !dbg !5941
  %and = and i64 %conv21, 4095, !dbg !5941
  %conv22 = trunc i64 %and to i32, !dbg !5941
  store i32 %conv22, ptr %n, align 4, !dbg !5941
  %27 = load i32, ptr %n, align 4, !dbg !5941
  %28 = load i32, ptr %end, align 4, !dbg !5941
  %cmp23 = icmp slt i32 %27, %28, !dbg !5941
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !5941

cond.true:                                        ; preds = %if.end17
  %29 = load i32, ptr %n, align 4, !dbg !5941
  br label %cond.end, !dbg !5941

cond.false:                                       ; preds = %if.end17
  %30 = load i32, ptr %end, align 4, !dbg !5941
  br label %cond.end, !dbg !5941

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !5941
  store i32 %cond, ptr %tmp, align 4, !dbg !5941
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9, !dbg !5942
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9, !dbg !5942
  %31 = load i32, ptr %tmp, align 4, !dbg !5941
  %conv25 = sext i32 %31 to i64, !dbg !5942
  %32 = load ptr, ptr %dma, align 8, !dbg !5943
  %tx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %32, i32 0, i32 19, !dbg !5944
  store i64 %conv25, ptr %tx_size, align 8, !dbg !5945
  %33 = load ptr, ptr %p.addr, align 8, !dbg !5946
  call void @serial8250_do_prepare_tx_dma(ptr noundef %33) #10, !dbg !5947
  %34 = load ptr, ptr %dma, align 8, !dbg !5948
  %txchan26 = getelementptr inbounds %struct.uart_8250_dma, ptr %34, i32 0, i32 10, !dbg !5949
  %35 = load ptr, ptr %txchan26, align 8, !dbg !5949
  %36 = load ptr, ptr %dma, align 8, !dbg !5950
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %36, i32 0, i32 14, !dbg !5951
  %37 = load i64, ptr %tx_addr, align 8, !dbg !5951
  %38 = load ptr, ptr %xmit, align 8, !dbg !5952
  %tail27 = getelementptr inbounds %struct.circ_buf, ptr %38, i32 0, i32 2, !dbg !5953
  %39 = load i32, ptr %tail27, align 4, !dbg !5953
  %conv28 = sext i32 %39 to i64, !dbg !5952
  %add29 = add i64 %37, %conv28, !dbg !5954
  %40 = load ptr, ptr %dma, align 8, !dbg !5955
  %tx_size30 = getelementptr inbounds %struct.uart_8250_dma, ptr %40, i32 0, i32 19, !dbg !5956
  %41 = load i64, ptr %tx_size30, align 8, !dbg !5956
  %call31 = call ptr @dmaengine_prep_slave_single(ptr noundef %35, i64 noundef %add29, i64 noundef %41, i32 noundef 1, i64 noundef 3) #10, !dbg !5957
  store ptr %call31, ptr %desc, align 8, !dbg !5958
  %42 = load ptr, ptr %desc, align 8, !dbg !5959
  %tobool32 = icmp ne ptr %42, null, !dbg !5959
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !5961

if.then33:                                        ; preds = %cond.end
  store i32 -16, ptr %ret, align 4, !dbg !5962
  br label %err, !dbg !5964

if.end34:                                         ; preds = %cond.end
  %43 = load ptr, ptr %dma, align 8, !dbg !5965
  %tx_running35 = getelementptr inbounds %struct.uart_8250_dma, ptr %43, i32 0, i32 20, !dbg !5966
  store i8 1, ptr %tx_running35, align 8, !dbg !5967
  %44 = load ptr, ptr %desc, align 8, !dbg !5968
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %44, i32 0, i32 6, !dbg !5969
  store ptr @__dma_tx_complete, ptr %callback, align 8, !dbg !5970
  %45 = load ptr, ptr %p.addr, align 8, !dbg !5971
  %46 = load ptr, ptr %desc, align 8, !dbg !5972
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %46, i32 0, i32 8, !dbg !5973
  store ptr %45, ptr %callback_param, align 8, !dbg !5974
  %47 = load ptr, ptr %desc, align 8, !dbg !5975
  %call36 = call i32 @dmaengine_submit(ptr noundef %47) #10, !dbg !5976
  %48 = load ptr, ptr %dma, align 8, !dbg !5977
  %tx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %48, i32 0, i32 16, !dbg !5978
  store i32 %call36, ptr %tx_cookie, align 4, !dbg !5979
  %49 = load ptr, ptr %dma, align 8, !dbg !5980
  %txchan37 = getelementptr inbounds %struct.uart_8250_dma, ptr %49, i32 0, i32 10, !dbg !5981
  %50 = load ptr, ptr %txchan37, align 8, !dbg !5981
  %device = getelementptr inbounds %struct.dma_chan, ptr %50, i32 0, i32 0, !dbg !5982
  %51 = load ptr, ptr %device, align 8, !dbg !5982
  %dev = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 15, !dbg !5983
  %52 = load ptr, ptr %dev, align 8, !dbg !5983
  %53 = load ptr, ptr %dma, align 8, !dbg !5984
  %tx_addr38 = getelementptr inbounds %struct.uart_8250_dma, ptr %53, i32 0, i32 14, !dbg !5985
  %54 = load i64, ptr %tx_addr38, align 8, !dbg !5985
  call void @dma_sync_single_for_device(ptr noundef %52, i64 noundef %54, i64 noundef 4096, i32 noundef 1) #10, !dbg !5986
  %55 = load ptr, ptr %dma, align 8, !dbg !5987
  %txchan39 = getelementptr inbounds %struct.uart_8250_dma, ptr %55, i32 0, i32 10, !dbg !5988
  %56 = load ptr, ptr %txchan39, align 8, !dbg !5988
  call void @dma_async_issue_pending(ptr noundef %56) #10, !dbg !5989
  %57 = load ptr, ptr %p.addr, align 8, !dbg !5990
  %call40 = call zeroext i1 @serial8250_clear_THRI(ptr noundef %57) #10, !dbg !5991
  %58 = load ptr, ptr %dma, align 8, !dbg !5992
  %tx_err = getelementptr inbounds %struct.uart_8250_dma, ptr %58, i32 0, i32 21, !dbg !5993
  store i8 0, ptr %tx_err, align 1, !dbg !5994
  store i32 0, ptr %retval, align 4, !dbg !5995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5995

err:                                              ; preds = %if.then33
  call void @llvm.dbg.label(metadata !5884), !dbg !5996
  %59 = load ptr, ptr %dma, align 8, !dbg !5997
  %tx_err41 = getelementptr inbounds %struct.uart_8250_dma, ptr %59, i32 0, i32 21, !dbg !5998
  store i8 1, ptr %tx_err41, align 1, !dbg !5999
  %60 = load i32, ptr %ret, align 4, !dbg !6000
  store i32 %60, ptr %retval, align 4, !dbg !6001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6001

cleanup:                                          ; preds = %err, %if.end34, %if.then16, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6002
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #9, !dbg !6002
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #9, !dbg !6002
  call void @llvm.lifetime.end.p0(i64 8, ptr %xmit) #9, !dbg !6002
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6002
  %61 = load i32, ptr %retval, align 4, !dbg !6002
  ret i32 %61, !dbg !6002
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dmaengine_pause(ptr noundef %chan) #3 align 16 !dbg !6003 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6005, metadata !DIExpression()), !dbg !6006
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6007
  %device = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 0, !dbg !6009
  %1 = load ptr, ptr %device, align 8, !dbg !6009
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 43, !dbg !6010
  %2 = load ptr, ptr %device_pause, align 8, !dbg !6010
  %tobool = icmp ne ptr %2, null, !dbg !6007
  br i1 %tobool, label %if.then, label %if.end, !dbg !6011

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !6012
  %device1 = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 0, !dbg !6013
  %4 = load ptr, ptr %device1, align 8, !dbg !6013
  %device_pause2 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 43, !dbg !6014
  %5 = load ptr, ptr %device_pause2, align 8, !dbg !6014
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !6015
  %call = call i32 %5(ptr noundef %6) #10, !dbg !6012
  store i32 %call, ptr %retval, align 4, !dbg !6016
  br label %return, !dbg !6016

if.end:                                           ; preds = %entry
  store i32 -38, ptr %retval, align 4, !dbg !6017
  br label %return, !dbg !6017

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !6018
  ret i32 %7, !dbg !6018
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6019 dso_local void @uart_xchar_out(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dmaengine_resume(ptr noundef %chan) #3 align 16 !dbg !6020 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6024
  %device = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 0, !dbg !6026
  %1 = load ptr, ptr %device, align 8, !dbg !6026
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 44, !dbg !6027
  %2 = load ptr, ptr %device_resume, align 8, !dbg !6027
  %tobool = icmp ne ptr %2, null, !dbg !6024
  br i1 %tobool, label %if.then, label %if.end, !dbg !6028

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !6029
  %device1 = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 0, !dbg !6030
  %4 = load ptr, ptr %device1, align 8, !dbg !6030
  %device_resume2 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 44, !dbg !6031
  %5 = load ptr, ptr %device_resume2, align 8, !dbg !6031
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !6032
  %call = call i32 %5(ptr noundef %6) #10, !dbg !6029
  store i32 %call, ptr %retval, align 4, !dbg !6033
  br label %return, !dbg !6033

if.end:                                           ; preds = %entry
  store i32 -38, ptr %retval, align 4, !dbg !6034
  br label %return, !dbg !6034

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !6035
  ret i32 %7, !dbg !6035
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @uart_tx_stopped(ptr noundef %port) #3 align 16 !dbg !6036 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca ptr, align 8
  %tty = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6038, metadata !DIExpression()), !dbg !6040
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty) #9, !dbg !6041
  call void @llvm.dbg.declare(metadata ptr %tty, metadata !6039, metadata !DIExpression()), !dbg !6042
  %0 = load ptr, ptr %port.addr, align 8, !dbg !6043
  %state = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32, !dbg !6044
  %1 = load ptr, ptr %state, align 8, !dbg !6044
  %port1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 0, !dbg !6045
  %tty2 = getelementptr inbounds %struct.tty_port, ptr %port1, i32 0, i32 1, !dbg !6046
  %2 = load ptr, ptr %tty2, align 8, !dbg !6046
  store ptr %2, ptr %tty, align 8, !dbg !6042
  %3 = load ptr, ptr %tty, align 8, !dbg !6047
  %tobool = icmp ne ptr %3, null, !dbg !6047
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !6049

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %tty, align 8, !dbg !6050
  %flow = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 20, !dbg !6051
  %stopped = getelementptr inbounds %struct.anon.18, ptr %flow, i32 0, i32 1, !dbg !6052
  %5 = load i8, ptr %stopped, align 4, !dbg !6052, !range !6053, !noundef !1179
  %tobool3 = trunc i8 %5 to i1, !dbg !6052
  br i1 %tobool3, label %if.then, label %lor.lhs.false, !dbg !6054

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %port.addr, align 8, !dbg !6055
  %hw_stopped = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 37, !dbg !6056
  %7 = load i8, ptr %hw_stopped, align 4, !dbg !6056, !range !6053, !noundef !1179
  %tobool4 = trunc i8 %7 to i1, !dbg !6056
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6057

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6058

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !6059
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6059

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty) #9, !dbg !6060
  %8 = load i32, ptr %retval, align 4, !dbg !6060
  ret i32 %8, !dbg !6060
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serial8250_do_prepare_tx_dma(ptr noundef %p) #3 align 16 !dbg !6061 {
entry:
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6063, metadata !DIExpression()), !dbg !6065
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6064, metadata !DIExpression()), !dbg !6067
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6068
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19, !dbg !6069
  %1 = load ptr, ptr %dma1, align 8, !dbg !6069
  store ptr %1, ptr %dma, align 8, !dbg !6067
  %2 = load ptr, ptr %dma, align 8, !dbg !6070
  %prepare_tx_dma = getelementptr inbounds %struct.uart_8250_dma, ptr %2, i32 0, i32 2, !dbg !6072
  %3 = load ptr, ptr %prepare_tx_dma, align 8, !dbg !6072
  %tobool = icmp ne ptr %3, null, !dbg !6070
  br i1 %tobool, label %if.then, label %if.end, !dbg !6073

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dma, align 8, !dbg !6074
  %prepare_tx_dma2 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 2, !dbg !6075
  %5 = load ptr, ptr %prepare_tx_dma2, align 8, !dbg !6075
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6076
  call void %5(ptr noundef %6) #10, !dbg !6074
  br label %if.end, !dbg !6074

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6077
  ret void, !dbg !6077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dmaengine_prep_slave_single(ptr noundef %chan, i64 noundef %buf, i64 noundef %len, i32 noundef %dir, i64 noundef %flags) #3 align 16 !dbg !6078 {
entry:
  %retval = alloca ptr, align 8
  %chan.addr = alloca ptr, align 8
  %buf.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  %sg = alloca %struct.scatterlist, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6082, metadata !DIExpression()), !dbg !6088
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6083, metadata !DIExpression()), !dbg !6089
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6084, metadata !DIExpression()), !dbg !6090
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6085, metadata !DIExpression()), !dbg !6091
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6086, metadata !DIExpression()), !dbg !6092
  call void @llvm.lifetime.start.p0(i64 32, ptr %sg) #9, !dbg !6093
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !6087, metadata !DIExpression()), !dbg !6094
  call void @sg_init_table(ptr noundef %sg, i32 noundef 1) #10, !dbg !6095
  %0 = load i64, ptr %buf.addr, align 8, !dbg !6096
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 3, !dbg !6097
  store i64 %0, ptr %dma_address, align 8, !dbg !6098
  %1 = load i64, ptr %len.addr, align 8, !dbg !6099
  %conv = trunc i64 %1 to i32, !dbg !6099
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 4, !dbg !6100
  store i32 %conv, ptr %dma_length, align 8, !dbg !6101
  %2 = load ptr, ptr %chan.addr, align 8, !dbg !6102
  %tobool = icmp ne ptr %2, null, !dbg !6102
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6104

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !6105
  %device = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 0, !dbg !6106
  %4 = load ptr, ptr %device, align 8, !dbg !6106
  %tobool1 = icmp ne ptr %4, null, !dbg !6105
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !6107

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %chan.addr, align 8, !dbg !6108
  %device3 = getelementptr inbounds %struct.dma_chan, ptr %5, i32 0, i32 0, !dbg !6109
  %6 = load ptr, ptr %device3, align 8, !dbg !6109
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 37, !dbg !6110
  %7 = load ptr, ptr %device_prep_slave_sg, align 8, !dbg !6110
  %tobool4 = icmp ne ptr %7, null, !dbg !6108
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6111

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !6112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6112

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load ptr, ptr %chan.addr, align 8, !dbg !6113
  %device5 = getelementptr inbounds %struct.dma_chan, ptr %8, i32 0, i32 0, !dbg !6114
  %9 = load ptr, ptr %device5, align 8, !dbg !6114
  %device_prep_slave_sg6 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 37, !dbg !6115
  %10 = load ptr, ptr %device_prep_slave_sg6, align 8, !dbg !6115
  %11 = load ptr, ptr %chan.addr, align 8, !dbg !6116
  %12 = load i32, ptr %dir.addr, align 4, !dbg !6117
  %13 = load i64, ptr %flags.addr, align 8, !dbg !6118
  %call = call ptr %10(ptr noundef %11, ptr noundef %sg, i32 noundef 1, i32 noundef %12, i64 noundef %13, ptr noundef null) #10, !dbg !6113
  store ptr %call, ptr %retval, align 8, !dbg !6119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6119

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %sg) #9, !dbg !6120
  %14 = load ptr, ptr %retval, align 8, !dbg !6120
  ret ptr %14, !dbg !6120
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__dma_tx_complete(ptr noundef %param) #0 align 16 !dbg !6121 {
entry:
  %param.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %xmit = alloca ptr, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !6123, metadata !DIExpression()), !dbg !6134
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6124, metadata !DIExpression()), !dbg !6136
  %0 = load ptr, ptr %param.addr, align 8, !dbg !6137
  store ptr %0, ptr %p, align 8, !dbg !6136
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6125, metadata !DIExpression()), !dbg !6139
  %1 = load ptr, ptr %p, align 8, !dbg !6140
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 19, !dbg !6141
  %2 = load ptr, ptr %dma1, align 8, !dbg !6141
  store ptr %2, ptr %dma, align 8, !dbg !6139
  call void @llvm.lifetime.start.p0(i64 8, ptr %xmit) #9, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %xmit, metadata !6126, metadata !DIExpression()), !dbg !6143
  %3 = load ptr, ptr %p, align 8, !dbg !6144
  %port = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 0, !dbg !6145
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32, !dbg !6146
  %4 = load ptr, ptr %state, align 8, !dbg !6146
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, !dbg !6147
  store ptr %xmit2, ptr %xmit, align 8, !dbg !6143
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6127, metadata !DIExpression()), !dbg !6149
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6128, metadata !DIExpression()), !dbg !6151
  %5 = load ptr, ptr %dma, align 8, !dbg !6152
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 10, !dbg !6153
  %6 = load ptr, ptr %txchan, align 8, !dbg !6153
  %device = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 0, !dbg !6154
  %7 = load ptr, ptr %device, align 8, !dbg !6154
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15, !dbg !6155
  %8 = load ptr, ptr %dev, align 8, !dbg !6155
  %9 = load ptr, ptr %dma, align 8, !dbg !6156
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %9, i32 0, i32 14, !dbg !6157
  %10 = load i64, ptr %tx_addr, align 8, !dbg !6157
  call void @dma_sync_single_for_cpu(ptr noundef %8, i64 noundef %10, i64 noundef 4096, i32 noundef 1) #10, !dbg !6158
  br label %do.body, !dbg !6159

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !6160

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !6161
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6129, metadata !DIExpression()), !dbg !6161
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !6161
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6133, metadata !DIExpression()), !dbg !6161
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6161
  %conv = zext i1 %cmp to i32, !dbg !6161
  store i32 1, ptr %tmp, align 4, !dbg !6161
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !6162
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !6162
  %11 = load i32, ptr %tmp, align 4, !dbg !6161
  %12 = load ptr, ptr %p, align 8, !dbg !6162
  %port4 = getelementptr inbounds %struct.uart_8250_port, ptr %12, i32 0, i32 0, !dbg !6162
  %lock = getelementptr inbounds %struct.uart_port, ptr %port4, i32 0, i32 0, !dbg !6162
  %call = call ptr @spinlock_check(ptr noundef %lock) #10, !dbg !6162
  %call5 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #10, !dbg !6162
  store i64 %call5, ptr %flags, align 8, !dbg !6162
  br label %do.cond, !dbg !6162

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6162

do.end:                                           ; preds = %do.cond
  br label %do.cond6, !dbg !6160

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !6160

do.end7:                                          ; preds = %do.cond6
  %13 = load ptr, ptr %dma, align 8, !dbg !6163
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %13, i32 0, i32 20, !dbg !6164
  store i8 0, ptr %tx_running, align 8, !dbg !6165
  %14 = load ptr, ptr %p, align 8, !dbg !6166
  %port8 = getelementptr inbounds %struct.uart_8250_port, ptr %14, i32 0, i32 0, !dbg !6167
  %15 = load ptr, ptr %dma, align 8, !dbg !6168
  %tx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %15, i32 0, i32 19, !dbg !6169
  %16 = load i64, ptr %tx_size, align 8, !dbg !6169
  %conv9 = trunc i64 %16 to i32, !dbg !6168
  call void @uart_xmit_advance(ptr noundef %port8, i32 noundef %conv9) #10, !dbg !6170
  %17 = load ptr, ptr %xmit, align 8, !dbg !6171
  %head = getelementptr inbounds %struct.circ_buf, ptr %17, i32 0, i32 1, !dbg !6171
  %18 = load i32, ptr %head, align 8, !dbg !6171
  %19 = load ptr, ptr %xmit, align 8, !dbg !6171
  %tail = getelementptr inbounds %struct.circ_buf, ptr %19, i32 0, i32 2, !dbg !6171
  %20 = load i32, ptr %tail, align 4, !dbg !6171
  %sub = sub i32 %18, %20, !dbg !6171
  %conv10 = sext i32 %sub to i64, !dbg !6171
  %and = and i64 %conv10, 4095, !dbg !6171
  %cmp11 = icmp ult i64 %and, 256, !dbg !6173
  br i1 %cmp11, label %if.then, label %if.end, !dbg !6174

if.then:                                          ; preds = %do.end7
  %21 = load ptr, ptr %p, align 8, !dbg !6175
  %port13 = getelementptr inbounds %struct.uart_8250_port, ptr %21, i32 0, i32 0, !dbg !6176
  call void @uart_write_wakeup(ptr noundef %port13) #10, !dbg !6177
  br label %if.end, !dbg !6177

if.end:                                           ; preds = %if.then, %do.end7
  %22 = load ptr, ptr %p, align 8, !dbg !6178
  %call14 = call i32 @serial8250_tx_dma(ptr noundef %22) #10, !dbg !6179
  store i32 %call14, ptr %ret, align 4, !dbg !6180
  %23 = load i32, ptr %ret, align 4, !dbg !6181
  %tobool = icmp ne i32 %23, 0, !dbg !6181
  br i1 %tobool, label %if.then17, label %lor.lhs.false, !dbg !6183

lor.lhs.false:                                    ; preds = %if.end
  %24 = load ptr, ptr %dma, align 8, !dbg !6184
  %tx_running15 = getelementptr inbounds %struct.uart_8250_dma, ptr %24, i32 0, i32 20, !dbg !6185
  %25 = load i8, ptr %tx_running15, align 8, !dbg !6185
  %tobool16 = icmp ne i8 %25, 0, !dbg !6184
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !6186

if.then17:                                        ; preds = %lor.lhs.false, %if.end
  %26 = load ptr, ptr %p, align 8, !dbg !6187
  %call18 = call zeroext i1 @serial8250_set_THRI(ptr noundef %26) #10, !dbg !6188
  br label %if.end19, !dbg !6188

if.end19:                                         ; preds = %if.then17, %lor.lhs.false
  %27 = load ptr, ptr %p, align 8, !dbg !6189
  %port20 = getelementptr inbounds %struct.uart_8250_port, ptr %27, i32 0, i32 0, !dbg !6190
  %lock21 = getelementptr inbounds %struct.uart_port, ptr %port20, i32 0, i32 0, !dbg !6191
  %28 = load i64, ptr %flags, align 8, !dbg !6192
  call void @spin_unlock_irqrestore(ptr noundef %lock21, i64 noundef %28) #10, !dbg !6193
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6194
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !6194
  call void @llvm.lifetime.end.p0(i64 8, ptr %xmit) #9, !dbg !6194
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6194
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !6194
  ret void, !dbg !6194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dmaengine_submit(ptr noundef %desc) #3 align 16 !dbg !6195 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6197, metadata !DIExpression()), !dbg !6198
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6199
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 4, !dbg !6200
  %1 = load ptr, ptr %tx_submit, align 8, !dbg !6200
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !6201
  %call = call i32 %1(ptr noundef %2) #10, !dbg !6199
  ret i32 %call, !dbg !6202
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6203 dso_local void @dma_sync_single_for_device(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_async_issue_pending(ptr noundef %chan) #3 align 16 !dbg !6206 {
entry:
  %chan.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6208, metadata !DIExpression()), !dbg !6209
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6210
  %device = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 0, !dbg !6211
  %1 = load ptr, ptr %device, align 8, !dbg !6211
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 48, !dbg !6212
  %2 = load ptr, ptr %device_issue_pending, align 8, !dbg !6212
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !6213
  call void %2(ptr noundef %3) #10, !dbg !6210
  ret void, !dbg !6214
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @serial8250_clear_THRI(ptr noundef %up) #3 align 16 !dbg !6215 {
entry:
  %retval = alloca i1, align 1
  %up.addr = alloca ptr, align 8
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !6219, metadata !DIExpression()), !dbg !6220
  br label %do.body, !dbg !6221

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %up.addr, align 8, !dbg !6222
  %port = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 0, !dbg !6222
  %lock = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 0, !dbg !6222
  br label %do.end, !dbg !6222

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %up.addr, align 8, !dbg !6224
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 8, !dbg !6226
  %2 = load i8, ptr %ier, align 2, !dbg !6226
  %conv = zext i8 %2 to i32, !dbg !6224
  %and = and i32 %conv, 2, !dbg !6227
  %tobool = icmp ne i32 %and, 0, !dbg !6227
  br i1 %tobool, label %if.end, label %if.then, !dbg !6228

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !6229
  br label %return, !dbg !6229

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %up.addr, align 8, !dbg !6230
  %ier1 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 8, !dbg !6231
  %4 = load i8, ptr %ier1, align 2, !dbg !6232
  %conv2 = zext i8 %4 to i32, !dbg !6232
  %and3 = and i32 %conv2, -3, !dbg !6232
  %conv4 = trunc i32 %and3 to i8, !dbg !6232
  store i8 %conv4, ptr %ier1, align 2, !dbg !6232
  %5 = load ptr, ptr %up.addr, align 8, !dbg !6233
  %6 = load ptr, ptr %up.addr, align 8, !dbg !6234
  %ier5 = getelementptr inbounds %struct.uart_8250_port, ptr %6, i32 0, i32 8, !dbg !6235
  %7 = load i8, ptr %ier5, align 2, !dbg !6235
  %conv6 = zext i8 %7 to i32, !dbg !6234
  call void @serial_out(ptr noundef %5, i32 noundef 1, i32 noundef %conv6) #10, !dbg !6236
  store i1 true, ptr %retval, align 1, !dbg !6237
  br label %return, !dbg !6237

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !6238
  ret i1 %8, !dbg !6238
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serial8250_tx_dma_flush(ptr noundef %p) #0 align 16 !dbg !6239 {
entry:
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6241, metadata !DIExpression()), !dbg !6243
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6244
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6242, metadata !DIExpression()), !dbg !6245
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6246
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19, !dbg !6247
  %1 = load ptr, ptr %dma1, align 8, !dbg !6247
  store ptr %1, ptr %dma, align 8, !dbg !6245
  %2 = load ptr, ptr %dma, align 8, !dbg !6248
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %2, i32 0, i32 20, !dbg !6250
  %3 = load i8, ptr %tx_running, align 8, !dbg !6250
  %tobool = icmp ne i8 %3, 0, !dbg !6248
  br i1 %tobool, label %if.end, label %if.then, !dbg !6251

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6252

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dma, align 8, !dbg !6253
  %tx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 19, !dbg !6254
  store i64 0, ptr %tx_size, align 8, !dbg !6255
  %5 = load ptr, ptr %dma, align 8, !dbg !6256
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 9, !dbg !6257
  %6 = load ptr, ptr %rxchan, align 8, !dbg !6257
  %call = call i32 @dmaengine_terminate_async(ptr noundef %6) #10, !dbg !6258
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6259
  br label %cleanup, !dbg !6259

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6259
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6259

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dmaengine_terminate_async(ptr noundef %chan) #3 align 16 !dbg !6260 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6262, metadata !DIExpression()), !dbg !6263
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6264
  %device = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 0, !dbg !6266
  %1 = load ptr, ptr %device, align 8, !dbg !6266
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 45, !dbg !6267
  %2 = load ptr, ptr %device_terminate_all, align 8, !dbg !6267
  %tobool = icmp ne ptr %2, null, !dbg !6264
  br i1 %tobool, label %if.then, label %if.end, !dbg !6268

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !6269
  %device1 = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 0, !dbg !6270
  %4 = load ptr, ptr %device1, align 8, !dbg !6270
  %device_terminate_all2 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 45, !dbg !6271
  %5 = load ptr, ptr %device_terminate_all2, align 8, !dbg !6271
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !6272
  %call = call i32 %5(ptr noundef %6) #10, !dbg !6269
  store i32 %call, ptr %retval, align 4, !dbg !6273
  br label %return, !dbg !6273

if.end:                                           ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6274
  br label %return, !dbg !6274

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !6275
  ret i32 %7, !dbg !6275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @serial8250_rx_dma(ptr noundef %p) #0 align 16 !dbg !6276 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6278, metadata !DIExpression()), !dbg !6281
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6282
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6279, metadata !DIExpression()), !dbg !6283
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6284
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19, !dbg !6285
  %1 = load ptr, ptr %dma1, align 8, !dbg !6285
  store ptr %1, ptr %dma, align 8, !dbg !6283
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #9, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6280, metadata !DIExpression()), !dbg !6287
  %2 = load ptr, ptr %dma, align 8, !dbg !6288
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %2, i32 0, i32 22, !dbg !6290
  %3 = load i8, ptr %rx_running, align 2, !dbg !6290
  %tobool = icmp ne i8 %3, 0, !dbg !6288
  br i1 %tobool, label %if.then, label %if.end, !dbg !6291

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6292

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6293
  call void @serial8250_do_prepare_rx_dma(ptr noundef %4) #10, !dbg !6294
  %5 = load ptr, ptr %dma, align 8, !dbg !6295
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 9, !dbg !6296
  %6 = load ptr, ptr %rxchan, align 8, !dbg !6296
  %7 = load ptr, ptr %dma, align 8, !dbg !6297
  %rx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 13, !dbg !6298
  %8 = load i64, ptr %rx_addr, align 8, !dbg !6298
  %9 = load ptr, ptr %dma, align 8, !dbg !6299
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %9, i32 0, i32 18, !dbg !6300
  %10 = load i64, ptr %rx_size, align 8, !dbg !6300
  %call = call ptr @dmaengine_prep_slave_single(ptr noundef %6, i64 noundef %8, i64 noundef %10, i32 noundef 2, i64 noundef 3) #10, !dbg !6301
  store ptr %call, ptr %desc, align 8, !dbg !6302
  %11 = load ptr, ptr %desc, align 8, !dbg !6303
  %tobool2 = icmp ne ptr %11, null, !dbg !6303
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6305

if.then3:                                         ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !6306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6306

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr %dma, align 8, !dbg !6307
  %rx_running5 = getelementptr inbounds %struct.uart_8250_dma, ptr %12, i32 0, i32 22, !dbg !6308
  store i8 1, ptr %rx_running5, align 2, !dbg !6309
  %13 = load ptr, ptr %desc, align 8, !dbg !6310
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 6, !dbg !6311
  store ptr @dma_rx_complete, ptr %callback, align 8, !dbg !6312
  %14 = load ptr, ptr %p.addr, align 8, !dbg !6313
  %15 = load ptr, ptr %desc, align 8, !dbg !6314
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %15, i32 0, i32 8, !dbg !6315
  store ptr %14, ptr %callback_param, align 8, !dbg !6316
  %16 = load ptr, ptr %desc, align 8, !dbg !6317
  %call6 = call i32 @dmaengine_submit(ptr noundef %16) #10, !dbg !6318
  %17 = load ptr, ptr %dma, align 8, !dbg !6319
  %rx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %17, i32 0, i32 15, !dbg !6320
  store i32 %call6, ptr %rx_cookie, align 8, !dbg !6321
  %18 = load ptr, ptr %dma, align 8, !dbg !6322
  %rxchan7 = getelementptr inbounds %struct.uart_8250_dma, ptr %18, i32 0, i32 9, !dbg !6323
  %19 = load ptr, ptr %rxchan7, align 8, !dbg !6323
  call void @dma_async_issue_pending(ptr noundef %19) #10, !dbg !6324
  store i32 0, ptr %retval, align 4, !dbg !6325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6325

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #9, !dbg !6326
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6326
  %20 = load i32, ptr %retval, align 4, !dbg !6326
  ret i32 %20, !dbg !6326
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serial8250_do_prepare_rx_dma(ptr noundef %p) #3 align 16 !dbg !6327 {
entry:
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6329, metadata !DIExpression()), !dbg !6331
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6332
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6330, metadata !DIExpression()), !dbg !6333
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6334
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19, !dbg !6335
  %1 = load ptr, ptr %dma1, align 8, !dbg !6335
  store ptr %1, ptr %dma, align 8, !dbg !6333
  %2 = load ptr, ptr %dma, align 8, !dbg !6336
  %prepare_rx_dma = getelementptr inbounds %struct.uart_8250_dma, ptr %2, i32 0, i32 3, !dbg !6338
  %3 = load ptr, ptr %prepare_rx_dma, align 8, !dbg !6338
  %tobool = icmp ne ptr %3, null, !dbg !6336
  br i1 %tobool, label %if.then, label %if.end, !dbg !6339

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dma, align 8, !dbg !6340
  %prepare_rx_dma2 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 3, !dbg !6341
  %5 = load ptr, ptr %prepare_rx_dma2, align 8, !dbg !6341
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6342
  call void %5(ptr noundef %6) #10, !dbg !6340
  br label %if.end, !dbg !6340

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6343
  ret void, !dbg !6343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_rx_complete(ptr noundef %param) #0 align 16 !dbg !6344 {
entry:
  %param.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !6346, metadata !DIExpression()), !dbg !6355
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6347, metadata !DIExpression()), !dbg !6357
  %0 = load ptr, ptr %param.addr, align 8, !dbg !6358
  store ptr %0, ptr %p, align 8, !dbg !6357
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6348, metadata !DIExpression()), !dbg !6360
  %1 = load ptr, ptr %p, align 8, !dbg !6361
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 19, !dbg !6362
  %2 = load ptr, ptr %dma1, align 8, !dbg !6362
  store ptr %2, ptr %dma, align 8, !dbg !6360
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !6363
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6349, metadata !DIExpression()), !dbg !6364
  br label %do.body, !dbg !6365

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6366

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6350, metadata !DIExpression()), !dbg !6367
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6354, metadata !DIExpression()), !dbg !6367
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6367
  %conv = zext i1 %cmp to i32, !dbg !6367
  store i32 1, ptr %tmp, align 4, !dbg !6367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !6368
  %3 = load i32, ptr %tmp, align 4, !dbg !6367
  %4 = load ptr, ptr %p, align 8, !dbg !6368
  %port = getelementptr inbounds %struct.uart_8250_port, ptr %4, i32 0, i32 0, !dbg !6368
  %lock = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 0, !dbg !6368
  %call = call ptr @spinlock_check(ptr noundef %lock) #10, !dbg !6368
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #10, !dbg !6368
  store i64 %call3, ptr %flags, align 8, !dbg !6368
  br label %do.cond, !dbg !6368

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6368

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !6366

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !6366

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %dma, align 8, !dbg !6369
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 22, !dbg !6371
  %6 = load i8, ptr %rx_running, align 2, !dbg !6371
  %tobool = icmp ne i8 %6, 0, !dbg !6369
  br i1 %tobool, label %if.then, label %if.end, !dbg !6372

if.then:                                          ; preds = %do.end5
  %7 = load ptr, ptr %p, align 8, !dbg !6373
  call void @__dma_rx_complete(ptr noundef %7) #10, !dbg !6374
  br label %if.end, !dbg !6374

if.end:                                           ; preds = %if.then, %do.end5
  %8 = load ptr, ptr %dma, align 8, !dbg !6375
  %rx_running6 = getelementptr inbounds %struct.uart_8250_dma, ptr %8, i32 0, i32 22, !dbg !6377
  %9 = load i8, ptr %rx_running6, align 2, !dbg !6377
  %tobool7 = icmp ne i8 %9, 0, !dbg !6375
  br i1 %tobool7, label %if.end14, label %land.lhs.true, !dbg !6378

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %p, align 8, !dbg !6379
  %call8 = call zeroext i16 @serial_lsr_in(ptr noundef %10) #10, !dbg !6380
  %conv9 = zext i16 %call8 to i32, !dbg !6380
  %and = and i32 %conv9, 1, !dbg !6381
  %tobool10 = icmp ne i32 %and, 0, !dbg !6381
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !6382

if.then11:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %p, align 8, !dbg !6383
  %dma12 = getelementptr inbounds %struct.uart_8250_port, ptr %11, i32 0, i32 19, !dbg !6384
  %12 = load ptr, ptr %dma12, align 8, !dbg !6384
  %rx_dma = getelementptr inbounds %struct.uart_8250_dma, ptr %12, i32 0, i32 1, !dbg !6385
  %13 = load ptr, ptr %rx_dma, align 8, !dbg !6385
  %14 = load ptr, ptr %p, align 8, !dbg !6386
  %call13 = call i32 %13(ptr noundef %14) #10, !dbg !6383
  br label %if.end14, !dbg !6383

if.end14:                                         ; preds = %if.then11, %land.lhs.true, %if.end
  %15 = load ptr, ptr %p, align 8, !dbg !6387
  %port15 = getelementptr inbounds %struct.uart_8250_port, ptr %15, i32 0, i32 0, !dbg !6388
  %lock16 = getelementptr inbounds %struct.uart_port, ptr %port15, i32 0, i32 0, !dbg !6389
  %16 = load i64, ptr %flags, align 8, !dbg !6390
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %16) #10, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !6392
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6392
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !6392
  ret void, !dbg !6392
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serial8250_rx_dma_flush(ptr noundef %p) #0 align 16 !dbg !6393 {
entry:
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6395, metadata !DIExpression()), !dbg !6397
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6398
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6396, metadata !DIExpression()), !dbg !6399
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6400
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19, !dbg !6401
  %1 = load ptr, ptr %dma1, align 8, !dbg !6401
  store ptr %1, ptr %dma, align 8, !dbg !6399
  %2 = load ptr, ptr %dma, align 8, !dbg !6402
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %2, i32 0, i32 22, !dbg !6404
  %3 = load i8, ptr %rx_running, align 2, !dbg !6404
  %tobool = icmp ne i8 %3, 0, !dbg !6402
  br i1 %tobool, label %if.then, label %if.end, !dbg !6405

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dma, align 8, !dbg !6406
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 9, !dbg !6408
  %5 = load ptr, ptr %rxchan, align 8, !dbg !6408
  %call = call i32 @dmaengine_pause(ptr noundef %5) #10, !dbg !6409
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6410
  call void @__dma_rx_complete(ptr noundef %6) #10, !dbg !6411
  %7 = load ptr, ptr %dma, align 8, !dbg !6412
  %rxchan2 = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 9, !dbg !6413
  %8 = load ptr, ptr %rxchan2, align 8, !dbg !6413
  %call3 = call i32 @dmaengine_terminate_async(ptr noundef %8) #10, !dbg !6414
  br label %if.end, !dbg !6415

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6416
  ret void, !dbg !6416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__dma_rx_complete(ptr noundef %p) #0 align 16 !dbg !6417 {
entry:
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %tty_port = alloca ptr, align 8
  %state3 = alloca %struct.dma_tx_state, align 4
  %dma_status = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6419, metadata !DIExpression()), !dbg !6425
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6420, metadata !DIExpression()), !dbg !6427
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6428
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19, !dbg !6429
  %1 = load ptr, ptr %dma1, align 8, !dbg !6429
  store ptr %1, ptr %dma, align 8, !dbg !6427
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty_port) #9, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %tty_port, metadata !6421, metadata !DIExpression()), !dbg !6431
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6432
  %port = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 0, !dbg !6433
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32, !dbg !6434
  %3 = load ptr, ptr %state, align 8, !dbg !6434
  %port2 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 0, !dbg !6435
  store ptr %port2, ptr %tty_port, align 8, !dbg !6431
  call void @llvm.lifetime.start.p0(i64 16, ptr %state3) #9, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %state3, metadata !6422, metadata !DIExpression()), !dbg !6437
  call void @llvm.lifetime.start.p0(i64 4, ptr %dma_status) #9, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %dma_status, metadata !6423, metadata !DIExpression()), !dbg !6439
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !6440
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6424, metadata !DIExpression()), !dbg !6441
  %4 = load ptr, ptr %dma, align 8, !dbg !6442
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 9, !dbg !6443
  %5 = load ptr, ptr %rxchan, align 8, !dbg !6443
  %6 = load ptr, ptr %dma, align 8, !dbg !6444
  %rx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 15, !dbg !6445
  %7 = load i32, ptr %rx_cookie, align 8, !dbg !6445
  %call = call i32 @dmaengine_tx_status(ptr noundef %5, i32 noundef %7, ptr noundef %state3) #10, !dbg !6446
  store i32 %call, ptr %dma_status, align 4, !dbg !6447
  %8 = load i32, ptr %dma_status, align 4, !dbg !6448
  %cmp = icmp eq i32 %8, 1, !dbg !6450
  br i1 %cmp, label %if.then, label %if.end, !dbg !6451

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6452

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %dma, align 8, !dbg !6453
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %9, i32 0, i32 18, !dbg !6454
  %10 = load i64, ptr %rx_size, align 8, !dbg !6454
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %state3, i32 0, i32 2, !dbg !6455
  %11 = load i32, ptr %residue, align 4, !dbg !6455
  %conv = zext i32 %11 to i64, !dbg !6456
  %sub = sub i64 %10, %conv, !dbg !6457
  %conv4 = trunc i64 %sub to i32, !dbg !6453
  store i32 %conv4, ptr %count, align 4, !dbg !6458
  %12 = load ptr, ptr %tty_port, align 8, !dbg !6459
  %13 = load ptr, ptr %dma, align 8, !dbg !6460
  %rx_buf = getelementptr inbounds %struct.uart_8250_dma, ptr %13, i32 0, i32 17, !dbg !6461
  %14 = load ptr, ptr %rx_buf, align 8, !dbg !6461
  %15 = load i32, ptr %count, align 4, !dbg !6462
  %conv5 = sext i32 %15 to i64, !dbg !6462
  %call6 = call i64 @tty_insert_flip_string(ptr noundef %12, ptr noundef %14, i64 noundef %conv5) #10, !dbg !6463
  %16 = load i32, ptr %count, align 4, !dbg !6464
  %17 = load ptr, ptr %p.addr, align 8, !dbg !6465
  %port7 = getelementptr inbounds %struct.uart_8250_port, ptr %17, i32 0, i32 0, !dbg !6466
  %icount = getelementptr inbounds %struct.uart_port, ptr %port7, i32 0, i32 33, !dbg !6467
  %rx = getelementptr inbounds %struct.uart_icount, ptr %icount, i32 0, i32 4, !dbg !6468
  %18 = load i32, ptr %rx, align 8, !dbg !6469
  %add = add i32 %18, %16, !dbg !6469
  store i32 %add, ptr %rx, align 8, !dbg !6469
  %19 = load ptr, ptr %dma, align 8, !dbg !6470
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %19, i32 0, i32 22, !dbg !6471
  store i8 0, ptr %rx_running, align 2, !dbg !6472
  %20 = load ptr, ptr %tty_port, align 8, !dbg !6473
  call void @tty_flip_buffer_push(ptr noundef %20) #10, !dbg !6474
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6475
  br label %cleanup, !dbg !6475

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !6475
  call void @llvm.lifetime.end.p0(i64 4, ptr %dma_status) #9, !dbg !6475
  call void @llvm.lifetime.end.p0(i64 16, ptr %state3) #9, !dbg !6475
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty_port) #9, !dbg !6475
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6475
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6475

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @serial8250_request_dma(ptr noundef %p) #0 align 16 !dbg !6476 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %rx_dma_addr = alloca i64, align 8
  %tx_dma_addr = alloca i64, align 8
  %mask = alloca %struct.dma_cap_mask_t, align 8
  %caps = alloca %struct.dma_slave_caps, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6478, metadata !DIExpression()), !dbg !6487
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6488
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6479, metadata !DIExpression()), !dbg !6489
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6490
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19, !dbg !6491
  %1 = load ptr, ptr %dma1, align 8, !dbg !6491
  store ptr %1, ptr %dma, align 8, !dbg !6489
  call void @llvm.lifetime.start.p0(i64 8, ptr %rx_dma_addr) #9, !dbg !6492
  call void @llvm.dbg.declare(metadata ptr %rx_dma_addr, metadata !6480, metadata !DIExpression()), !dbg !6493
  %2 = load ptr, ptr %dma, align 8, !dbg !6494
  %rx_dma_addr2 = getelementptr inbounds %struct.uart_8250_dma, ptr %2, i32 0, i32 11, !dbg !6495
  %3 = load i64, ptr %rx_dma_addr2, align 8, !dbg !6495
  %tobool = icmp ne i64 %3, 0, !dbg !6494
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6494

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %dma, align 8, !dbg !6496
  %rx_dma_addr3 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 11, !dbg !6497
  %5 = load i64, ptr %rx_dma_addr3, align 8, !dbg !6497
  br label %cond.end, !dbg !6494

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6498
  %port = getelementptr inbounds %struct.uart_8250_port, ptr %6, i32 0, i32 0, !dbg !6499
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45, !dbg !6500
  %7 = load i64, ptr %mapbase, align 8, !dbg !6500
  br label %cond.end, !dbg !6494

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %7, %cond.false ], !dbg !6494
  store i64 %cond, ptr %rx_dma_addr, align 8, !dbg !6493
  call void @llvm.lifetime.start.p0(i64 8, ptr %tx_dma_addr) #9, !dbg !6501
  call void @llvm.dbg.declare(metadata ptr %tx_dma_addr, metadata !6481, metadata !DIExpression()), !dbg !6502
  %8 = load ptr, ptr %dma, align 8, !dbg !6503
  %tx_dma_addr4 = getelementptr inbounds %struct.uart_8250_dma, ptr %8, i32 0, i32 12, !dbg !6504
  %9 = load i64, ptr %tx_dma_addr4, align 8, !dbg !6504
  %tobool5 = icmp ne i64 %9, 0, !dbg !6503
  br i1 %tobool5, label %cond.true6, label %cond.false8, !dbg !6503

cond.true6:                                       ; preds = %cond.end
  %10 = load ptr, ptr %dma, align 8, !dbg !6505
  %tx_dma_addr7 = getelementptr inbounds %struct.uart_8250_dma, ptr %10, i32 0, i32 12, !dbg !6506
  %11 = load i64, ptr %tx_dma_addr7, align 8, !dbg !6506
  br label %cond.end11, !dbg !6503

cond.false8:                                      ; preds = %cond.end
  %12 = load ptr, ptr %p.addr, align 8, !dbg !6507
  %port9 = getelementptr inbounds %struct.uart_8250_port, ptr %12, i32 0, i32 0, !dbg !6508
  %mapbase10 = getelementptr inbounds %struct.uart_port, ptr %port9, i32 0, i32 45, !dbg !6509
  %13 = load i64, ptr %mapbase10, align 8, !dbg !6509
  br label %cond.end11, !dbg !6503

cond.end11:                                       ; preds = %cond.false8, %cond.true6
  %cond12 = phi i64 [ %11, %cond.true6 ], [ %13, %cond.false8 ], !dbg !6503
  store i64 %cond12, ptr %tx_dma_addr, align 8, !dbg !6502
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !6510
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6482, metadata !DIExpression()), !dbg !6511
  call void @llvm.lifetime.start.p0(i64 36, ptr %caps) #9, !dbg !6512
  call void @llvm.dbg.declare(metadata ptr %caps, metadata !6483, metadata !DIExpression()), !dbg !6513
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6514
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6484, metadata !DIExpression()), !dbg !6515
  %14 = load ptr, ptr %dma, align 8, !dbg !6516
  %rxconf = getelementptr inbounds %struct.uart_8250_dma, ptr %14, i32 0, i32 7, !dbg !6517
  %direction = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf, i32 0, i32 0, !dbg !6518
  store i32 2, ptr %direction, align 8, !dbg !6519
  %15 = load ptr, ptr %dma, align 8, !dbg !6520
  %rxconf13 = getelementptr inbounds %struct.uart_8250_dma, ptr %15, i32 0, i32 7, !dbg !6521
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf13, i32 0, i32 3, !dbg !6522
  store i32 1, ptr %src_addr_width, align 8, !dbg !6523
  %16 = load i64, ptr %rx_dma_addr, align 8, !dbg !6524
  %add = add i64 %16, 0, !dbg !6525
  %17 = load ptr, ptr %dma, align 8, !dbg !6526
  %rxconf14 = getelementptr inbounds %struct.uart_8250_dma, ptr %17, i32 0, i32 7, !dbg !6527
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf14, i32 0, i32 1, !dbg !6528
  store i64 %add, ptr %src_addr, align 8, !dbg !6529
  %18 = load ptr, ptr %dma, align 8, !dbg !6530
  %txconf = getelementptr inbounds %struct.uart_8250_dma, ptr %18, i32 0, i32 8, !dbg !6531
  %direction15 = getelementptr inbounds %struct.dma_slave_config, ptr %txconf, i32 0, i32 0, !dbg !6532
  store i32 1, ptr %direction15, align 8, !dbg !6533
  %19 = load ptr, ptr %dma, align 8, !dbg !6534
  %txconf16 = getelementptr inbounds %struct.uart_8250_dma, ptr %19, i32 0, i32 8, !dbg !6535
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %txconf16, i32 0, i32 4, !dbg !6536
  store i32 1, ptr %dst_addr_width, align 4, !dbg !6537
  %20 = load i64, ptr %tx_dma_addr, align 8, !dbg !6538
  %add17 = add i64 %20, 0, !dbg !6539
  %21 = load ptr, ptr %dma, align 8, !dbg !6540
  %txconf18 = getelementptr inbounds %struct.uart_8250_dma, ptr %21, i32 0, i32 8, !dbg !6541
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %txconf18, i32 0, i32 2, !dbg !6542
  store i64 %add17, ptr %dst_addr, align 8, !dbg !6543
  call void @__dma_cap_zero(ptr noundef %mask) #10, !dbg !6544
  call void @__dma_cap_set(i32 noundef 10, ptr noundef %mask) #10, !dbg !6545
  %22 = load ptr, ptr %dma, align 8, !dbg !6546
  %fn = getelementptr inbounds %struct.uart_8250_dma, ptr %22, i32 0, i32 4, !dbg !6547
  %23 = load ptr, ptr %fn, align 8, !dbg !6547
  %24 = load ptr, ptr %dma, align 8, !dbg !6548
  %rx_param = getelementptr inbounds %struct.uart_8250_dma, ptr %24, i32 0, i32 5, !dbg !6549
  %25 = load ptr, ptr %rx_param, align 8, !dbg !6549
  %26 = load ptr, ptr %p.addr, align 8, !dbg !6550
  %port19 = getelementptr inbounds %struct.uart_8250_port, ptr %26, i32 0, i32 0, !dbg !6551
  %dev = getelementptr inbounds %struct.uart_port, ptr %port19, i32 0, i32 47, !dbg !6552
  %27 = load ptr, ptr %dev, align 8, !dbg !6552
  %coerce.dive = getelementptr inbounds %struct.dma_cap_mask_t, ptr %mask, i32 0, i32 0, !dbg !6553
  %28 = load i64, ptr %coerce.dive, align 8, !dbg !6553
  %call = call ptr @dma_request_slave_channel_compat(i64 %28, ptr noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef @.str) #10, !dbg !6553
  %29 = load ptr, ptr %dma, align 8, !dbg !6554
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %29, i32 0, i32 9, !dbg !6555
  store ptr %call, ptr %rxchan, align 8, !dbg !6556
  %30 = load ptr, ptr %dma, align 8, !dbg !6557
  %rxchan20 = getelementptr inbounds %struct.uart_8250_dma, ptr %30, i32 0, i32 9, !dbg !6559
  %31 = load ptr, ptr %rxchan20, align 8, !dbg !6559
  %tobool21 = icmp ne ptr %31, null, !dbg !6557
  br i1 %tobool21, label %if.end, label %if.then, !dbg !6560

if.then:                                          ; preds = %cond.end11
  store i32 -19, ptr %retval, align 4, !dbg !6561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6561

if.end:                                           ; preds = %cond.end11
  %32 = load ptr, ptr %dma, align 8, !dbg !6562
  %rxchan22 = getelementptr inbounds %struct.uart_8250_dma, ptr %32, i32 0, i32 9, !dbg !6563
  %33 = load ptr, ptr %rxchan22, align 8, !dbg !6563
  %call23 = call i32 @dma_get_slave_caps(ptr noundef %33, ptr noundef %caps) #10, !dbg !6564
  store i32 %call23, ptr %ret, align 4, !dbg !6565
  %34 = load i32, ptr %ret, align 4, !dbg !6566
  %tobool24 = icmp ne i32 %34, 0, !dbg !6566
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !6568

if.then25:                                        ; preds = %if.end
  br label %release_rx, !dbg !6569

if.end26:                                         ; preds = %if.end
  %cmd_pause = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 6, !dbg !6570
  %35 = load i8, ptr %cmd_pause, align 4, !dbg !6570, !range !6053, !noundef !1179
  %tobool27 = trunc i8 %35 to i1, !dbg !6570
  br i1 %tobool27, label %lor.lhs.false, label %if.then30, !dbg !6572

lor.lhs.false:                                    ; preds = %if.end26
  %cmd_terminate = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 8, !dbg !6573
  %36 = load i8, ptr %cmd_terminate, align 2, !dbg !6573, !range !6053, !noundef !1179
  %tobool28 = trunc i8 %36 to i1, !dbg !6573
  br i1 %tobool28, label %lor.lhs.false29, label %if.then30, !dbg !6574

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %residue_granularity = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 9, !dbg !6575
  %37 = load i32, ptr %residue_granularity, align 4, !dbg !6575
  %cmp = icmp eq i32 %37, 0, !dbg !6576
  br i1 %cmp, label %if.then30, label %if.end31, !dbg !6577

if.then30:                                        ; preds = %lor.lhs.false29, %lor.lhs.false, %if.end26
  store i32 -22, ptr %ret, align 4, !dbg !6578
  br label %release_rx, !dbg !6580

if.end31:                                         ; preds = %lor.lhs.false29
  %38 = load ptr, ptr %dma, align 8, !dbg !6581
  %rxchan32 = getelementptr inbounds %struct.uart_8250_dma, ptr %38, i32 0, i32 9, !dbg !6582
  %39 = load ptr, ptr %rxchan32, align 8, !dbg !6582
  %40 = load ptr, ptr %dma, align 8, !dbg !6583
  %rxconf33 = getelementptr inbounds %struct.uart_8250_dma, ptr %40, i32 0, i32 7, !dbg !6584
  %call34 = call i32 @dmaengine_slave_config(ptr noundef %39, ptr noundef %rxconf33) #10, !dbg !6585
  %41 = load ptr, ptr %dma, align 8, !dbg !6586
  %fn35 = getelementptr inbounds %struct.uart_8250_dma, ptr %41, i32 0, i32 4, !dbg !6587
  %42 = load ptr, ptr %fn35, align 8, !dbg !6587
  %43 = load ptr, ptr %dma, align 8, !dbg !6588
  %tx_param = getelementptr inbounds %struct.uart_8250_dma, ptr %43, i32 0, i32 6, !dbg !6589
  %44 = load ptr, ptr %tx_param, align 8, !dbg !6589
  %45 = load ptr, ptr %p.addr, align 8, !dbg !6590
  %port36 = getelementptr inbounds %struct.uart_8250_port, ptr %45, i32 0, i32 0, !dbg !6591
  %dev37 = getelementptr inbounds %struct.uart_port, ptr %port36, i32 0, i32 47, !dbg !6592
  %46 = load ptr, ptr %dev37, align 8, !dbg !6592
  %coerce.dive38 = getelementptr inbounds %struct.dma_cap_mask_t, ptr %mask, i32 0, i32 0, !dbg !6593
  %47 = load i64, ptr %coerce.dive38, align 8, !dbg !6593
  %call39 = call ptr @dma_request_slave_channel_compat(i64 %47, ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef @.str.1) #10, !dbg !6593
  %48 = load ptr, ptr %dma, align 8, !dbg !6594
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %48, i32 0, i32 10, !dbg !6595
  store ptr %call39, ptr %txchan, align 8, !dbg !6596
  %49 = load ptr, ptr %dma, align 8, !dbg !6597
  %txchan40 = getelementptr inbounds %struct.uart_8250_dma, ptr %49, i32 0, i32 10, !dbg !6599
  %50 = load ptr, ptr %txchan40, align 8, !dbg !6599
  %tobool41 = icmp ne ptr %50, null, !dbg !6597
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !6600

if.then42:                                        ; preds = %if.end31
  store i32 -19, ptr %ret, align 4, !dbg !6601
  br label %release_rx, !dbg !6603

if.end43:                                         ; preds = %if.end31
  %51 = load ptr, ptr %dma, align 8, !dbg !6604
  %txchan44 = getelementptr inbounds %struct.uart_8250_dma, ptr %51, i32 0, i32 10, !dbg !6605
  %52 = load ptr, ptr %txchan44, align 8, !dbg !6605
  %call45 = call i32 @dma_get_slave_caps(ptr noundef %52, ptr noundef %caps) #10, !dbg !6606
  store i32 %call45, ptr %ret, align 4, !dbg !6607
  %53 = load i32, ptr %ret, align 4, !dbg !6608
  %tobool46 = icmp ne i32 %53, 0, !dbg !6608
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !6610

if.then47:                                        ; preds = %if.end43
  br label %err, !dbg !6611

if.end48:                                         ; preds = %if.end43
  %cmd_terminate49 = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 8, !dbg !6612
  %54 = load i8, ptr %cmd_terminate49, align 2, !dbg !6612, !range !6053, !noundef !1179
  %tobool50 = trunc i8 %54 to i1, !dbg !6612
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !6614

if.then51:                                        ; preds = %if.end48
  store i32 -22, ptr %ret, align 4, !dbg !6615
  br label %err, !dbg !6617

if.end52:                                         ; preds = %if.end48
  %55 = load ptr, ptr %dma, align 8, !dbg !6618
  %txchan53 = getelementptr inbounds %struct.uart_8250_dma, ptr %55, i32 0, i32 10, !dbg !6619
  %56 = load ptr, ptr %txchan53, align 8, !dbg !6619
  %57 = load ptr, ptr %dma, align 8, !dbg !6620
  %txconf54 = getelementptr inbounds %struct.uart_8250_dma, ptr %57, i32 0, i32 8, !dbg !6621
  %call55 = call i32 @dmaengine_slave_config(ptr noundef %56, ptr noundef %txconf54) #10, !dbg !6622
  %58 = load ptr, ptr %dma, align 8, !dbg !6623
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %58, i32 0, i32 18, !dbg !6625
  %59 = load i64, ptr %rx_size, align 8, !dbg !6625
  %tobool56 = icmp ne i64 %59, 0, !dbg !6623
  br i1 %tobool56, label %if.end59, label %if.then57, !dbg !6626

if.then57:                                        ; preds = %if.end52
  %60 = load ptr, ptr %dma, align 8, !dbg !6627
  %rx_size58 = getelementptr inbounds %struct.uart_8250_dma, ptr %60, i32 0, i32 18, !dbg !6628
  store i64 4096, ptr %rx_size58, align 8, !dbg !6629
  br label %if.end59, !dbg !6627

if.end59:                                         ; preds = %if.then57, %if.end52
  %61 = load ptr, ptr %dma, align 8, !dbg !6630
  %rxchan60 = getelementptr inbounds %struct.uart_8250_dma, ptr %61, i32 0, i32 9, !dbg !6631
  %62 = load ptr, ptr %rxchan60, align 8, !dbg !6631
  %device = getelementptr inbounds %struct.dma_chan, ptr %62, i32 0, i32 0, !dbg !6632
  %63 = load ptr, ptr %device, align 8, !dbg !6632
  %dev61 = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 15, !dbg !6633
  %64 = load ptr, ptr %dev61, align 8, !dbg !6633
  %65 = load ptr, ptr %dma, align 8, !dbg !6634
  %rx_size62 = getelementptr inbounds %struct.uart_8250_dma, ptr %65, i32 0, i32 18, !dbg !6635
  %66 = load i64, ptr %rx_size62, align 8, !dbg !6635
  %67 = load ptr, ptr %dma, align 8, !dbg !6636
  %rx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %67, i32 0, i32 13, !dbg !6637
  %call63 = call ptr @dma_alloc_coherent(ptr noundef %64, i64 noundef %66, ptr noundef %rx_addr, i32 noundef 3264) #10, !dbg !6638
  %68 = load ptr, ptr %dma, align 8, !dbg !6639
  %rx_buf = getelementptr inbounds %struct.uart_8250_dma, ptr %68, i32 0, i32 17, !dbg !6640
  store ptr %call63, ptr %rx_buf, align 8, !dbg !6641
  %69 = load ptr, ptr %dma, align 8, !dbg !6642
  %rx_buf64 = getelementptr inbounds %struct.uart_8250_dma, ptr %69, i32 0, i32 17, !dbg !6644
  %70 = load ptr, ptr %rx_buf64, align 8, !dbg !6644
  %tobool65 = icmp ne ptr %70, null, !dbg !6642
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !6645

if.then66:                                        ; preds = %if.end59
  store i32 -12, ptr %ret, align 4, !dbg !6646
  br label %err, !dbg !6648

if.end67:                                         ; preds = %if.end59
  %71 = load ptr, ptr %dma, align 8, !dbg !6649
  %txchan68 = getelementptr inbounds %struct.uart_8250_dma, ptr %71, i32 0, i32 10, !dbg !6649
  %72 = load ptr, ptr %txchan68, align 8, !dbg !6649
  %device69 = getelementptr inbounds %struct.dma_chan, ptr %72, i32 0, i32 0, !dbg !6649
  %73 = load ptr, ptr %device69, align 8, !dbg !6649
  %dev70 = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 15, !dbg !6649
  %74 = load ptr, ptr %dev70, align 8, !dbg !6649
  %75 = load ptr, ptr %p.addr, align 8, !dbg !6649
  %port71 = getelementptr inbounds %struct.uart_8250_port, ptr %75, i32 0, i32 0, !dbg !6649
  %state = getelementptr inbounds %struct.uart_port, ptr %port71, i32 0, i32 32, !dbg !6649
  %76 = load ptr, ptr %state, align 8, !dbg !6649
  %xmit = getelementptr inbounds %struct.uart_state, ptr %76, i32 0, i32 2, !dbg !6649
  %buf = getelementptr inbounds %struct.circ_buf, ptr %xmit, i32 0, i32 0, !dbg !6649
  %77 = load ptr, ptr %buf, align 8, !dbg !6649
  %call72 = call i64 @dma_map_single_attrs(ptr noundef %74, ptr noundef %77, i64 noundef 4096, i32 noundef 1, i64 noundef 0) #10, !dbg !6649
  %78 = load ptr, ptr %dma, align 8, !dbg !6650
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %78, i32 0, i32 14, !dbg !6651
  store i64 %call72, ptr %tx_addr, align 8, !dbg !6652
  %79 = load ptr, ptr %dma, align 8, !dbg !6653
  %txchan73 = getelementptr inbounds %struct.uart_8250_dma, ptr %79, i32 0, i32 10, !dbg !6655
  %80 = load ptr, ptr %txchan73, align 8, !dbg !6655
  %device74 = getelementptr inbounds %struct.dma_chan, ptr %80, i32 0, i32 0, !dbg !6656
  %81 = load ptr, ptr %device74, align 8, !dbg !6656
  %dev75 = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 15, !dbg !6657
  %82 = load ptr, ptr %dev75, align 8, !dbg !6657
  %83 = load ptr, ptr %dma, align 8, !dbg !6658
  %tx_addr76 = getelementptr inbounds %struct.uart_8250_dma, ptr %83, i32 0, i32 14, !dbg !6659
  %84 = load i64, ptr %tx_addr76, align 8, !dbg !6659
  %call77 = call i32 @dma_mapping_error(ptr noundef %82, i64 noundef %84) #10, !dbg !6660
  %tobool78 = icmp ne i32 %call77, 0, !dbg !6660
  br i1 %tobool78, label %if.then79, label %if.end86, !dbg !6661

if.then79:                                        ; preds = %if.end67
  %85 = load ptr, ptr %dma, align 8, !dbg !6662
  %rxchan80 = getelementptr inbounds %struct.uart_8250_dma, ptr %85, i32 0, i32 9, !dbg !6664
  %86 = load ptr, ptr %rxchan80, align 8, !dbg !6664
  %device81 = getelementptr inbounds %struct.dma_chan, ptr %86, i32 0, i32 0, !dbg !6665
  %87 = load ptr, ptr %device81, align 8, !dbg !6665
  %dev82 = getelementptr inbounds %struct.dma_device, ptr %87, i32 0, i32 15, !dbg !6666
  %88 = load ptr, ptr %dev82, align 8, !dbg !6666
  %89 = load ptr, ptr %dma, align 8, !dbg !6667
  %rx_size83 = getelementptr inbounds %struct.uart_8250_dma, ptr %89, i32 0, i32 18, !dbg !6668
  %90 = load i64, ptr %rx_size83, align 8, !dbg !6668
  %91 = load ptr, ptr %dma, align 8, !dbg !6669
  %rx_buf84 = getelementptr inbounds %struct.uart_8250_dma, ptr %91, i32 0, i32 17, !dbg !6670
  %92 = load ptr, ptr %rx_buf84, align 8, !dbg !6670
  %93 = load ptr, ptr %dma, align 8, !dbg !6671
  %rx_addr85 = getelementptr inbounds %struct.uart_8250_dma, ptr %93, i32 0, i32 13, !dbg !6672
  %94 = load i64, ptr %rx_addr85, align 8, !dbg !6672
  call void @dma_free_coherent(ptr noundef %88, i64 noundef %90, ptr noundef %92, i64 noundef %94) #10, !dbg !6673
  store i32 -12, ptr %ret, align 4, !dbg !6674
  br label %err, !dbg !6675

if.end86:                                         ; preds = %if.end67
  store i32 0, ptr %retval, align 4, !dbg !6676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6676

err:                                              ; preds = %if.then79, %if.then66, %if.then51, %if.then47
  call void @llvm.dbg.label(metadata !6485), !dbg !6677
  %95 = load ptr, ptr %dma, align 8, !dbg !6678
  %txchan87 = getelementptr inbounds %struct.uart_8250_dma, ptr %95, i32 0, i32 10, !dbg !6679
  %96 = load ptr, ptr %txchan87, align 8, !dbg !6679
  call void @dma_release_channel(ptr noundef %96) #10, !dbg !6680
  br label %release_rx, !dbg !6680

release_rx:                                       ; preds = %err, %if.then42, %if.then30, %if.then25
  call void @llvm.dbg.label(metadata !6486), !dbg !6681
  %97 = load ptr, ptr %dma, align 8, !dbg !6682
  %rxchan88 = getelementptr inbounds %struct.uart_8250_dma, ptr %97, i32 0, i32 9, !dbg !6683
  %98 = load ptr, ptr %rxchan88, align 8, !dbg !6683
  call void @dma_release_channel(ptr noundef %98) #10, !dbg !6684
  %99 = load i32, ptr %ret, align 4, !dbg !6685
  store i32 %99, ptr %retval, align 4, !dbg !6686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6686

cleanup:                                          ; preds = %release_rx, %if.end86, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 36, ptr %caps) #9, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 8, ptr %tx_dma_addr) #9, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 8, ptr %rx_dma_addr) #9, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6687
  %100 = load i32, ptr %retval, align 4, !dbg !6687
  ret i32 %100, !dbg !6687
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__dma_cap_zero(ptr noundef %dstp) #3 align 16 !dbg !6688 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !6693, metadata !DIExpression()), !dbg !6694
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !6695
  %bits = getelementptr inbounds %struct.dma_cap_mask_t, ptr %0, i32 0, i32 0, !dbg !6696
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6695
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 16) #10, !dbg !6697
  ret void, !dbg !6698
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__dma_cap_set(i32 noundef %tx_type, ptr noundef %dstp) #3 align 16 !dbg !6699 {
entry:
  %tx_type.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %tx_type, ptr %tx_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tx_type.addr, metadata !6703, metadata !DIExpression()), !dbg !6705
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !6704, metadata !DIExpression()), !dbg !6706
  %0 = load i32, ptr %tx_type.addr, align 4, !dbg !6707
  %conv = zext i32 %0 to i64, !dbg !6707
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !6708
  %bits = getelementptr inbounds %struct.dma_cap_mask_t, ptr %1, i32 0, i32 0, !dbg !6709
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6708
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #10, !dbg !6710
  ret void, !dbg !6711
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_request_slave_channel_compat(i64 %mask.coerce, ptr noundef %fn, ptr noundef %fn_param, ptr noundef %dev, ptr noundef %name) #3 align 16 !dbg !6712 {
entry:
  %retval = alloca ptr, align 8
  %mask = alloca %struct.dma_cap_mask_t, align 8
  %fn.addr = alloca ptr, align 8
  %fn_param.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %chan = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.dma_cap_mask_t, ptr %mask, i32 0, i32 0
  store i64 %mask.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6717, metadata !DIExpression()), !dbg !6723
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !6718, metadata !DIExpression()), !dbg !6724
  store ptr %fn_param, ptr %fn_param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn_param.addr, metadata !6719, metadata !DIExpression()), !dbg !6725
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6720, metadata !DIExpression()), !dbg !6726
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6721, metadata !DIExpression()), !dbg !6727
  call void @llvm.lifetime.start.p0(i64 8, ptr %chan) #9, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !6722, metadata !DIExpression()), !dbg !6729
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6730
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6731
  %call = call ptr @dma_request_slave_channel(ptr noundef %0, ptr noundef %1) #10, !dbg !6732
  store ptr %call, ptr %chan, align 8, !dbg !6733
  %2 = load ptr, ptr %chan, align 8, !dbg !6734
  %tobool = icmp ne ptr %2, null, !dbg !6734
  br i1 %tobool, label %if.then, label %if.end, !dbg !6736

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %chan, align 8, !dbg !6737
  store ptr %3, ptr %retval, align 8, !dbg !6738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6738

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fn.addr, align 8, !dbg !6739
  %tobool1 = icmp ne ptr %4, null, !dbg !6739
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !6741

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %fn_param.addr, align 8, !dbg !6742
  %tobool2 = icmp ne ptr %5, null, !dbg !6742
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6743

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store ptr null, ptr %retval, align 8, !dbg !6744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6744

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %fn.addr, align 8, !dbg !6745
  %7 = load ptr, ptr %fn_param.addr, align 8, !dbg !6746
  %call5 = call ptr @__dma_request_channel(ptr noundef %mask, ptr noundef %6, ptr noundef %7, ptr noundef null) #10, !dbg !6747
  store ptr %call5, ptr %retval, align 8, !dbg !6748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6748

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %chan) #9, !dbg !6749
  %8 = load ptr, ptr %retval, align 8, !dbg !6749
  ret ptr %8, !dbg !6749
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6750 dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dmaengine_slave_config(ptr noundef %chan, ptr noundef %config) #3 align 16 !dbg !6753 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6755, metadata !DIExpression()), !dbg !6757
  store ptr %config, ptr %config.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !6756, metadata !DIExpression()), !dbg !6758
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6759
  %device = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 0, !dbg !6761
  %1 = load ptr, ptr %device, align 8, !dbg !6761
  %device_config = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 42, !dbg !6762
  %2 = load ptr, ptr %device_config, align 8, !dbg !6762
  %tobool = icmp ne ptr %2, null, !dbg !6759
  br i1 %tobool, label %if.then, label %if.end, !dbg !6763

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !6764
  %device1 = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 0, !dbg !6765
  %4 = load ptr, ptr %device1, align 8, !dbg !6765
  %device_config2 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 42, !dbg !6766
  %5 = load ptr, ptr %device_config2, align 8, !dbg !6766
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !6767
  %7 = load ptr, ptr %config.addr, align 8, !dbg !6768
  %call = call i32 %5(ptr noundef %6, ptr noundef %7) #10, !dbg !6764
  store i32 %call, ptr %retval, align 4, !dbg !6769
  br label %return, !dbg !6769

if.end:                                           ; preds = %entry
  store i32 -38, ptr %retval, align 4, !dbg !6770
  br label %return, !dbg !6770

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !6771
  ret i32 %8, !dbg !6771
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_alloc_coherent(ptr noundef %dev, i64 noundef %size, ptr noundef %dma_handle, i32 noundef %gfp) #3 align 16 !dbg !6772 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6776, metadata !DIExpression()), !dbg !6780
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6777, metadata !DIExpression()), !dbg !6781
  store ptr %dma_handle, ptr %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_handle.addr, metadata !6778, metadata !DIExpression()), !dbg !6782
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !6779, metadata !DIExpression()), !dbg !6783
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6784
  %1 = load i64, ptr %size.addr, align 8, !dbg !6785
  %2 = load ptr, ptr %dma_handle.addr, align 8, !dbg !6786
  %3 = load i32, ptr %gfp.addr, align 4, !dbg !6787
  %4 = load i32, ptr %gfp.addr, align 4, !dbg !6788
  %and = and i32 %4, 8192, !dbg !6789
  %tobool = icmp ne i32 %and, 0, !dbg !6790
  %5 = zext i1 %tobool to i64, !dbg !6790
  %cond = select i1 %tobool, i64 256, i64 0, !dbg !6790
  %call = call ptr @dma_alloc_attrs(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %cond) #10, !dbg !6791
  ret ptr %call, !dbg !6792
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #3 align 16 !dbg !5178 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp50 = alloca i64, align 8
  %tmp59 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5183, metadata !DIExpression()), !dbg !6793
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5184, metadata !DIExpression()), !dbg !6794
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5185, metadata !DIExpression()), !dbg !6795
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5186, metadata !DIExpression()), !dbg !6796
  store i64 %attrs, ptr %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attrs.addr, metadata !5187, metadata !DIExpression()), !dbg !6797
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #9, !dbg !6798
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5188, metadata !DIExpression()), !dbg !6798
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6798
  %call = call zeroext i1 @is_vmalloc_addr(ptr noundef %0) #10, !dbg !6798
  %lnot = xor i1 %call, true, !dbg !6798
  %lnot1 = xor i1 %lnot, true, !dbg !6798
  %frombool = zext i1 %lnot1 to i8, !dbg !6798
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !6798
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #9, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5191, metadata !DIExpression()), !dbg !6799
  %1 = load i8, ptr %__ret_do_once, align 1, !dbg !6799, !range !6053, !noundef !1179
  %tobool = trunc i8 %1 to i1, !dbg !6799
  %lnot2 = xor i1 %tobool, true, !dbg !6799
  %lnot3 = xor i1 %lnot2, true, !dbg !6799
  %frombool4 = zext i1 %lnot3 to i8, !dbg !6799
  store i8 %frombool4, ptr %__ret_cond, align 1, !dbg !6799
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #9, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5194, metadata !DIExpression()), !dbg !6799
  store i8 0, ptr %__ret_once, align 1, !dbg !6799
  %2 = load i8, ptr %__ret_cond, align 1, !dbg !6800, !range !6053, !noundef !1179
  %tobool5 = trunc i8 %2 to i1, !dbg !6800
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !6800

land.rhs:                                         ; preds = %entry
  %3 = load i8, ptr @dma_map_single_attrs.__already_done, align 1, !dbg !6800, !range !6053, !noundef !1179
  %tobool6 = trunc i8 %3 to i1, !dbg !6800
  %lnot7 = xor i1 %tobool6, true, !dbg !6800
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot7, %land.rhs ], !dbg !6802
  %lnot8 = xor i1 %4, true, !dbg !6800
  %lnot9 = xor i1 %lnot8, true, !dbg !6800
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !6800
  %conv = sext i32 %lnot.ext to i64, !dbg !6800
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6800
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6800
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6799

if.then:                                          ; preds = %land.end
  store i8 1, ptr @dma_map_single_attrs.__already_done, align 1, !dbg !6803
  store i8 1, ptr %__ret_once, align 1, !dbg !6803
  br label %if.end, !dbg !6803

if.end:                                           ; preds = %if.then, %land.end
  %5 = load i8, ptr %__ret_once, align 1, !dbg !6799, !range !6053, !noundef !1179
  %tobool11 = trunc i8 %5 to i1, !dbg !6799
  %lnot12 = xor i1 %tobool11, true, !dbg !6799
  %lnot14 = xor i1 %lnot12, true, !dbg !6799
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !6799
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !6799
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !6799
  store i64 %expval17, ptr %tmp, align 8, !dbg !6800
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #9, !dbg !6805
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #9, !dbg !6805
  %6 = load i64, ptr %tmp, align 8, !dbg !6799
  %tobool18 = icmp ne i64 %6, 0, !dbg !6805
  br i1 %tobool18, label %if.then19, label %if.end58, !dbg !6798

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6806
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5195, metadata !DIExpression()), !dbg !6806
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6806
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !6807
  %tobool20 = icmp ne i32 %7, 0, !dbg !6807
  %lnot21 = xor i1 %tobool20, true, !dbg !6807
  %lnot23 = xor i1 %lnot21, true, !dbg !6807
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6807
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6807
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6807
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !6807
  br i1 %tobool27, label %if.then28, label %if.end49, !dbg !6806

if.then28:                                        ; preds = %if.then19
  br label %do.body, !dbg !6807

do.body:                                          ; preds = %if.then28
  br label %do.body29, !dbg !6808

do.body29:                                        ; preds = %do.body
  br label %do.cond, !dbg !6809

do.cond:                                          ; preds = %do.body29
  br label %do.end, !dbg !6809

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6808
  %call30 = call ptr @dev_driver_string(ptr noundef %8) #10, !dbg !6808
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6808
  %call31 = call ptr @dev_name(ptr noundef %9) #10, !dbg !6808
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2, ptr noundef %call30, ptr noundef %call31) #10, !dbg !6808
  br label %do.body32, !dbg !6808

do.body32:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !6811
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5197, metadata !DIExpression()), !dbg !6811
  store i32 2313, ptr %__flags, align 4, !dbg !6811
  br label %do.body33, !dbg !6811

do.body33:                                        ; preds = %do.body32
  br label %do.cond34, !dbg !6812

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !6812

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !6811

do.body36:                                        ; preds = %do.end35
  %10 = load i32, ptr %__flags, align 4, !dbg !6814
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 333, i32 %10, i64 12) #9, !dbg !6814, !srcloc !6816
  br label %do.cond37, !dbg !6814

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !6814

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !6811

do.body39:                                        ; preds = %do.end38
  br label %do.cond40, !dbg !6817

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !6817

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !6808
  br label %do.cond42, !dbg !6811

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !6811

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !6808

do.body44:                                        ; preds = %do.end43
  br label %do.cond45, !dbg !6819

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !6819

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47, !dbg !6808

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !6808

do.end48:                                         ; preds = %do.cond47
  br label %if.end49, !dbg !6808

if.end49:                                         ; preds = %do.end48, %if.then19
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !6806
  %tobool51 = icmp ne i32 %11, 0, !dbg !6806
  %lnot52 = xor i1 %tobool51, true, !dbg !6806
  %lnot54 = xor i1 %lnot52, true, !dbg !6806
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6806
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6806
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6806
  store i64 %expval57, ptr %tmp50, align 8, !dbg !6807
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !6805
  %12 = load i64, ptr %tmp50, align 8, !dbg !6806
  br label %if.end58, !dbg !6805

if.end58:                                         ; preds = %if.end49, %if.end
  %13 = load i8, ptr %__ret_do_once, align 1, !dbg !6798, !range !6053, !noundef !1179
  %tobool60 = trunc i8 %13 to i1, !dbg !6798
  %lnot61 = xor i1 %tobool60, true, !dbg !6798
  %lnot63 = xor i1 %lnot61, true, !dbg !6798
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !6798
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !6798
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !6798
  store i64 %expval66, ptr %tmp59, align 8, !dbg !6805
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #9, !dbg !6821
  %14 = load i64, ptr %tmp59, align 8, !dbg !6798
  %tobool67 = icmp ne i64 %14, 0, !dbg !6821
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !6822

if.then68:                                        ; preds = %if.end58
  store i64 -1, ptr %retval, align 8, !dbg !6823
  br label %return, !dbg !6823

if.end69:                                         ; preds = %if.end58
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6824
  %16 = load ptr, ptr %ptr.addr, align 8, !dbg !6825
  %17 = load i64, ptr %size.addr, align 8, !dbg !6826
  call void @debug_dma_map_single(ptr noundef %15, ptr noundef %16, i64 noundef %17) #10, !dbg !6827
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !6828
  %19 = load i64, ptr @vmemmap_base, align 8, !dbg !6829
  %20 = inttoptr i64 %19 to ptr, !dbg !6829
  %21 = load ptr, ptr %ptr.addr, align 8, !dbg !6829
  %22 = ptrtoint ptr %21 to i64, !dbg !6829
  %call70 = call i64 @__phys_addr_nodebug(i64 noundef %22) #10, !dbg !6829
  %shr = lshr i64 %call70, 12, !dbg !6829
  %add.ptr = getelementptr %struct.page, ptr %20, i64 %shr, !dbg !6829
  %23 = load ptr, ptr %ptr.addr, align 8, !dbg !6830
  %24 = ptrtoint ptr %23 to i64, !dbg !6830
  %and = and i64 %24, 4095, !dbg !6830
  %25 = load i64, ptr %size.addr, align 8, !dbg !6831
  %26 = load i32, ptr %dir.addr, align 4, !dbg !6832
  %27 = load i64, ptr %attrs.addr, align 8, !dbg !6833
  %call71 = call i64 @dma_map_page_attrs(ptr noundef %18, ptr noundef %add.ptr, i64 noundef %and, i64 noundef %25, i32 noundef %26, i64 noundef %27) #10, !dbg !6834
  store i64 %call71, ptr %retval, align 8, !dbg !6835
  br label %return, !dbg !6835

return:                                           ; preds = %if.end69, %if.then68
  %28 = load i64, ptr %retval, align 8, !dbg !6836
  ret i64 %28, !dbg !6836
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_mapping_error(ptr noundef %dev, i64 noundef %dma_addr) #3 align 16 !dbg !6837 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %dma_addr.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6841, metadata !DIExpression()), !dbg !6843
  store i64 %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !6842, metadata !DIExpression()), !dbg !6844
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6845
  %1 = load i64, ptr %dma_addr.addr, align 8, !dbg !6846
  call void @debug_dma_mapping_error(ptr noundef %0, i64 noundef %1) #10, !dbg !6847
  %2 = load i64, ptr %dma_addr.addr, align 8, !dbg !6848
  %cmp = icmp eq i64 %2, -1, !dbg !6848
  %lnot = xor i1 %cmp, true, !dbg !6848
  %lnot1 = xor i1 %lnot, true, !dbg !6848
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6848
  %conv = sext i32 %lnot.ext to i64, !dbg !6848
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6848
  %tobool = icmp ne i64 %expval, 0, !dbg !6848
  br i1 %tobool, label %if.then, label %if.end, !dbg !6850

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6851
  br label %return, !dbg !6851

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6852
  br label %return, !dbg !6852

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6853
  ret i32 %3, !dbg !6853
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_free_coherent(ptr noundef %dev, i64 noundef %size, ptr noundef %cpu_addr, i64 noundef %dma_handle) #3 align 16 !dbg !6854 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %cpu_addr.addr = alloca ptr, align 8
  %dma_handle.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6858, metadata !DIExpression()), !dbg !6862
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6859, metadata !DIExpression()), !dbg !6863
  store ptr %cpu_addr, ptr %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_addr.addr, metadata !6860, metadata !DIExpression()), !dbg !6864
  store i64 %dma_handle, ptr %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_handle.addr, metadata !6861, metadata !DIExpression()), !dbg !6865
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6866
  %1 = load i64, ptr %size.addr, align 8, !dbg !6867
  %2 = load ptr, ptr %cpu_addr.addr, align 8, !dbg !6868
  %3 = load i64, ptr %dma_handle.addr, align 8, !dbg !6869
  call void @dma_free_attrs(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef 0) #10, !dbg !6870
  ret void, !dbg !6871
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6872 dso_local void @dma_release_channel(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serial8250_release_dma(ptr noundef %p) #0 align 16 !dbg !6873 {
entry:
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6875, metadata !DIExpression()), !dbg !6877
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #9, !dbg !6878
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6876, metadata !DIExpression()), !dbg !6879
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6880
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19, !dbg !6881
  %1 = load ptr, ptr %dma1, align 8, !dbg !6881
  store ptr %1, ptr %dma, align 8, !dbg !6879
  %2 = load ptr, ptr %dma, align 8, !dbg !6882
  %tobool = icmp ne ptr %2, null, !dbg !6882
  br i1 %tobool, label %if.end, label %if.then, !dbg !6884

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6885

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dma, align 8, !dbg !6886
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 9, !dbg !6887
  %4 = load ptr, ptr %rxchan, align 8, !dbg !6887
  %call = call i32 @dmaengine_terminate_sync(ptr noundef %4) #10, !dbg !6888
  %5 = load ptr, ptr %dma, align 8, !dbg !6889
  %rxchan2 = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 9, !dbg !6890
  %6 = load ptr, ptr %rxchan2, align 8, !dbg !6890
  %device = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 0, !dbg !6891
  %7 = load ptr, ptr %device, align 8, !dbg !6891
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15, !dbg !6892
  %8 = load ptr, ptr %dev, align 8, !dbg !6892
  %9 = load ptr, ptr %dma, align 8, !dbg !6893
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %9, i32 0, i32 18, !dbg !6894
  %10 = load i64, ptr %rx_size, align 8, !dbg !6894
  %11 = load ptr, ptr %dma, align 8, !dbg !6895
  %rx_buf = getelementptr inbounds %struct.uart_8250_dma, ptr %11, i32 0, i32 17, !dbg !6896
  %12 = load ptr, ptr %rx_buf, align 8, !dbg !6896
  %13 = load ptr, ptr %dma, align 8, !dbg !6897
  %rx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %13, i32 0, i32 13, !dbg !6898
  %14 = load i64, ptr %rx_addr, align 8, !dbg !6898
  call void @dma_free_coherent(ptr noundef %8, i64 noundef %10, ptr noundef %12, i64 noundef %14) #10, !dbg !6899
  %15 = load ptr, ptr %dma, align 8, !dbg !6900
  %rxchan3 = getelementptr inbounds %struct.uart_8250_dma, ptr %15, i32 0, i32 9, !dbg !6901
  %16 = load ptr, ptr %rxchan3, align 8, !dbg !6901
  call void @dma_release_channel(ptr noundef %16) #10, !dbg !6902
  %17 = load ptr, ptr %dma, align 8, !dbg !6903
  %rxchan4 = getelementptr inbounds %struct.uart_8250_dma, ptr %17, i32 0, i32 9, !dbg !6904
  store ptr null, ptr %rxchan4, align 8, !dbg !6905
  %18 = load ptr, ptr %dma, align 8, !dbg !6906
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %18, i32 0, i32 10, !dbg !6907
  %19 = load ptr, ptr %txchan, align 8, !dbg !6907
  %call5 = call i32 @dmaengine_terminate_sync(ptr noundef %19) #10, !dbg !6908
  %20 = load ptr, ptr %dma, align 8, !dbg !6909
  %txchan6 = getelementptr inbounds %struct.uart_8250_dma, ptr %20, i32 0, i32 10, !dbg !6909
  %21 = load ptr, ptr %txchan6, align 8, !dbg !6909
  %device7 = getelementptr inbounds %struct.dma_chan, ptr %21, i32 0, i32 0, !dbg !6909
  %22 = load ptr, ptr %device7, align 8, !dbg !6909
  %dev8 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15, !dbg !6909
  %23 = load ptr, ptr %dev8, align 8, !dbg !6909
  %24 = load ptr, ptr %dma, align 8, !dbg !6909
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %24, i32 0, i32 14, !dbg !6909
  %25 = load i64, ptr %tx_addr, align 8, !dbg !6909
  call void @dma_unmap_single_attrs(ptr noundef %23, i64 noundef %25, i64 noundef 4096, i32 noundef 1, i64 noundef 0) #10, !dbg !6909
  %26 = load ptr, ptr %dma, align 8, !dbg !6910
  %txchan9 = getelementptr inbounds %struct.uart_8250_dma, ptr %26, i32 0, i32 10, !dbg !6911
  %27 = load ptr, ptr %txchan9, align 8, !dbg !6911
  call void @dma_release_channel(ptr noundef %27) #10, !dbg !6912
  %28 = load ptr, ptr %dma, align 8, !dbg !6913
  %txchan10 = getelementptr inbounds %struct.uart_8250_dma, ptr %28, i32 0, i32 10, !dbg !6914
  store ptr null, ptr %txchan10, align 8, !dbg !6915
  %29 = load ptr, ptr %dma, align 8, !dbg !6916
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %29, i32 0, i32 20, !dbg !6917
  store i8 0, ptr %tx_running, align 8, !dbg !6918
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6919
  br label %cleanup, !dbg !6919

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #9, !dbg !6919
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6919

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dmaengine_terminate_sync(ptr noundef %chan) #3 align 16 !dbg !6920 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6922, metadata !DIExpression()), !dbg !6924
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6925
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6923, metadata !DIExpression()), !dbg !6926
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6927
  %call = call i32 @dmaengine_terminate_async(ptr noundef %0) #10, !dbg !6928
  store i32 %call, ptr %ret, align 4, !dbg !6929
  %1 = load i32, ptr %ret, align 4, !dbg !6930
  %tobool = icmp ne i32 %1, 0, !dbg !6930
  br i1 %tobool, label %if.then, label %if.end, !dbg !6932

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !6933
  store i32 %2, ptr %retval, align 4, !dbg !6934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6934

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !6935
  call void @dmaengine_synchronize(ptr noundef %3) #10, !dbg !6936
  store i32 0, ptr %retval, align 4, !dbg !6937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6937

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6938
  %4 = load i32, ptr %retval, align 4, !dbg !6938
  ret i32 %4, !dbg !6938
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_unmap_single_attrs(ptr noundef %dev, i64 noundef %addr, i64 noundef %size, i32 noundef %dir, i64 noundef %attrs) #3 align 16 !dbg !6939 {
entry:
  %dev.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6943, metadata !DIExpression()), !dbg !6948
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6944, metadata !DIExpression()), !dbg !6949
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6945, metadata !DIExpression()), !dbg !6950
  store i32 %dir, ptr %dir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6946, metadata !DIExpression()), !dbg !6951
  store i64 %attrs, ptr %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attrs.addr, metadata !6947, metadata !DIExpression()), !dbg !6952
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6953
  %1 = load i64, ptr %addr.addr, align 8, !dbg !6954
  %2 = load i64, ptr %size.addr, align 8, !dbg !6955
  %3 = load i32, ptr %dir.addr, align 4, !dbg !6956
  %4 = load i64, ptr %attrs.addr, align 8, !dbg !6957
  call void @dma_unmap_page_attrs(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) #10, !dbg !6958
  ret void, !dbg !6959
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6960 dso_local void @sg_init_table(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6963 dso_local void @dma_sync_single_for_cpu(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6964 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !6969 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6974, metadata !DIExpression()), !dbg !6975
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6976
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6977
  ret ptr %1, !dbg !6978
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @uart_xmit_advance(ptr noundef %up, i32 noundef %chars) #3 align 16 !dbg !6979 {
entry:
  %up.addr = alloca ptr, align 8
  %chars.addr = alloca i32, align 4
  %xmit = alloca ptr, align 8
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !6981, metadata !DIExpression()), !dbg !6984
  store i32 %chars, ptr %chars.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !6982, metadata !DIExpression()), !dbg !6985
  call void @llvm.lifetime.start.p0(i64 8, ptr %xmit) #9, !dbg !6986
  call void @llvm.dbg.declare(metadata ptr %xmit, metadata !6983, metadata !DIExpression()), !dbg !6987
  %0 = load ptr, ptr %up.addr, align 8, !dbg !6988
  %state = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32, !dbg !6989
  %1 = load ptr, ptr %state, align 8, !dbg !6989
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, !dbg !6990
  store ptr %xmit1, ptr %xmit, align 8, !dbg !6987
  %2 = load ptr, ptr %xmit, align 8, !dbg !6991
  %tail = getelementptr inbounds %struct.circ_buf, ptr %2, i32 0, i32 2, !dbg !6992
  %3 = load i32, ptr %tail, align 4, !dbg !6992
  %4 = load i32, ptr %chars.addr, align 4, !dbg !6993
  %add = add i32 %3, %4, !dbg !6994
  %conv = zext i32 %add to i64, !dbg !6995
  %and = and i64 %conv, 4095, !dbg !6996
  %conv2 = trunc i64 %and to i32, !dbg !6995
  %5 = load ptr, ptr %xmit, align 8, !dbg !6997
  %tail3 = getelementptr inbounds %struct.circ_buf, ptr %5, i32 0, i32 2, !dbg !6998
  store i32 %conv2, ptr %tail3, align 4, !dbg !6999
  %6 = load i32, ptr %chars.addr, align 4, !dbg !7000
  %7 = load ptr, ptr %up.addr, align 8, !dbg !7001
  %icount = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 33, !dbg !7002
  %tx = getelementptr inbounds %struct.uart_icount, ptr %icount, i32 0, i32 5, !dbg !7003
  %8 = load i32, ptr %tx, align 4, !dbg !7004
  %add4 = add i32 %8, %6, !dbg !7004
  store i32 %add4, ptr %tx, align 4, !dbg !7004
  call void @llvm.lifetime.end.p0(i64 8, ptr %xmit) #9, !dbg !7005
  ret void, !dbg !7005
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7006 dso_local void @uart_write_wakeup(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @serial8250_set_THRI(ptr noundef %up) #3 align 16 !dbg !7007 {
entry:
  %retval = alloca i1, align 1
  %up.addr = alloca ptr, align 8
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !7009, metadata !DIExpression()), !dbg !7010
  br label %do.body, !dbg !7011

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %up.addr, align 8, !dbg !7012
  %port = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 0, !dbg !7012
  %lock = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 0, !dbg !7012
  br label %do.end, !dbg !7012

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %up.addr, align 8, !dbg !7014
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 8, !dbg !7016
  %2 = load i8, ptr %ier, align 2, !dbg !7016
  %conv = zext i8 %2 to i32, !dbg !7014
  %and = and i32 %conv, 2, !dbg !7017
  %tobool = icmp ne i32 %and, 0, !dbg !7017
  br i1 %tobool, label %if.then, label %if.end, !dbg !7018

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !7019
  br label %return, !dbg !7019

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %up.addr, align 8, !dbg !7020
  %ier1 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 8, !dbg !7021
  %4 = load i8, ptr %ier1, align 2, !dbg !7022
  %conv2 = zext i8 %4 to i32, !dbg !7022
  %or = or i32 %conv2, 2, !dbg !7022
  %conv3 = trunc i32 %or to i8, !dbg !7022
  store i8 %conv3, ptr %ier1, align 2, !dbg !7022
  %5 = load ptr, ptr %up.addr, align 8, !dbg !7023
  %6 = load ptr, ptr %up.addr, align 8, !dbg !7024
  %ier4 = getelementptr inbounds %struct.uart_8250_port, ptr %6, i32 0, i32 8, !dbg !7025
  %7 = load i8, ptr %ier4, align 2, !dbg !7025
  %conv5 = zext i8 %7 to i32, !dbg !7024
  call void @serial_out(ptr noundef %5, i32 noundef 1, i32 noundef %conv5) #10, !dbg !7026
  store i1 true, ptr %retval, align 1, !dbg !7027
  br label %return, !dbg !7027

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !7028
  ret i1 %8, !dbg !7028
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !7029 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7033, metadata !DIExpression()), !dbg !7039
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7034, metadata !DIExpression()), !dbg !7040
  br label %do.body, !dbg !7041

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !7042
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !7035, metadata !DIExpression()), !dbg !7042
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !7042
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !7038, metadata !DIExpression()), !dbg !7042
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !7042
  %conv = zext i1 %cmp to i32, !dbg !7042
  store i32 1, ptr %tmp, align 4, !dbg !7042
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !7043
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !7043
  %0 = load i32, ptr %tmp, align 4, !dbg !7042
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !7043
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !7043
  %3 = load i64, ptr %flags.addr, align 8, !dbg !7043
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #10, !dbg !7043
  br label %do.end, !dbg !7043

do.end:                                           ; preds = %do.body
  ret void, !dbg !7044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serial_out(ptr noundef %up, i32 noundef %offset, i32 noundef %value) #3 align 16 !dbg !7045 {
entry:
  %up.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !7049, metadata !DIExpression()), !dbg !7052
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7050, metadata !DIExpression()), !dbg !7053
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !7051, metadata !DIExpression()), !dbg !7054
  %0 = load ptr, ptr %up.addr, align 8, !dbg !7055
  %port = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 0, !dbg !7056
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4, !dbg !7057
  %1 = load ptr, ptr %serial_out, align 8, !dbg !7057
  %2 = load ptr, ptr %up.addr, align 8, !dbg !7058
  %port1 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 0, !dbg !7059
  %3 = load i32, ptr %offset.addr, align 4, !dbg !7060
  %4 = load i32, ptr %value.addr, align 4, !dbg !7061
  call void %1(ptr noundef %port1, i32 noundef %3, i32 noundef %4) #10, !dbg !7055
  ret void, !dbg !7062
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7063 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @serial_lsr_in(ptr noundef %up) #3 align 16 !dbg !7066 {
entry:
  %up.addr = alloca ptr, align 8
  %lsr = alloca i16, align 2
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !7070, metadata !DIExpression()), !dbg !7072
  call void @llvm.lifetime.start.p0(i64 2, ptr %lsr) #9, !dbg !7073
  call void @llvm.dbg.declare(metadata ptr %lsr, metadata !7071, metadata !DIExpression()), !dbg !7074
  %0 = load ptr, ptr %up.addr, align 8, !dbg !7075
  %lsr_saved_flags = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16, !dbg !7076
  %1 = load i16, ptr %lsr_saved_flags, align 8, !dbg !7076
  store i16 %1, ptr %lsr, align 2, !dbg !7074
  %2 = load ptr, ptr %up.addr, align 8, !dbg !7077
  %call = call i32 @serial_in(ptr noundef %2, i32 noundef 5) #10, !dbg !7078
  %3 = load i16, ptr %lsr, align 2, !dbg !7079
  %conv = zext i16 %3 to i32, !dbg !7079
  %or = or i32 %conv, %call, !dbg !7079
  %conv1 = trunc i32 %or to i16, !dbg !7079
  store i16 %conv1, ptr %lsr, align 2, !dbg !7079
  %4 = load i16, ptr %lsr, align 2, !dbg !7080
  %conv2 = zext i16 %4 to i32, !dbg !7080
  %5 = load ptr, ptr %up.addr, align 8, !dbg !7081
  %lsr_save_mask = getelementptr inbounds %struct.uart_8250_port, ptr %5, i32 0, i32 17, !dbg !7082
  %6 = load i16, ptr %lsr_save_mask, align 2, !dbg !7082
  %conv3 = zext i16 %6 to i32, !dbg !7081
  %and = and i32 %conv2, %conv3, !dbg !7083
  %conv4 = trunc i32 %and to i16, !dbg !7080
  %7 = load ptr, ptr %up.addr, align 8, !dbg !7084
  %lsr_saved_flags5 = getelementptr inbounds %struct.uart_8250_port, ptr %7, i32 0, i32 16, !dbg !7085
  store i16 %conv4, ptr %lsr_saved_flags5, align 8, !dbg !7086
  %8 = load i16, ptr %lsr, align 2, !dbg !7087
  call void @llvm.lifetime.end.p0(i64 2, ptr %lsr) #9, !dbg !7088
  ret i16 %8, !dbg !7089
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serial_in(ptr noundef %up, i32 noundef %offset) #3 align 16 !dbg !7090 {
entry:
  %up.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !7094, metadata !DIExpression()), !dbg !7096
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7095, metadata !DIExpression()), !dbg !7097
  %0 = load ptr, ptr %up.addr, align 8, !dbg !7098
  %port = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 0, !dbg !7099
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3, !dbg !7100
  %1 = load ptr, ptr %serial_in, align 8, !dbg !7100
  %2 = load ptr, ptr %up.addr, align 8, !dbg !7101
  %port1 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 0, !dbg !7102
  %3 = load i32, ptr %offset.addr, align 4, !dbg !7103
  %call = call i32 %1(ptr noundef %port1, i32 noundef %3) #10, !dbg !7098
  ret i32 %call, !dbg !7104
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dmaengine_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef %state) #3 align 16 !dbg !7105 {
entry:
  %chan.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !7107, metadata !DIExpression()), !dbg !7110
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !7108, metadata !DIExpression()), !dbg !7111
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !7109, metadata !DIExpression()), !dbg !7112
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !7113
  %device = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 0, !dbg !7114
  %1 = load ptr, ptr %device, align 8, !dbg !7114
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 47, !dbg !7115
  %2 = load ptr, ptr %device_tx_status, align 8, !dbg !7115
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !7116
  %4 = load i32, ptr %cookie.addr, align 4, !dbg !7117
  %5 = load ptr, ptr %state.addr, align 8, !dbg !7118
  %call = call i32 %2(ptr noundef %3, i32 noundef %4, ptr noundef %5) #10, !dbg !7113
  ret i32 %call, !dbg !7119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @tty_insert_flip_string(ptr noundef %port, ptr noundef %chars, i64 noundef %size) #3 align 16 !dbg !7120 {
entry:
  %port.addr = alloca ptr, align 8
  %chars.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !7125, metadata !DIExpression()), !dbg !7128
  store ptr %chars, ptr %chars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !7126, metadata !DIExpression()), !dbg !7129
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7127, metadata !DIExpression()), !dbg !7130
  %0 = load ptr, ptr %port.addr, align 8, !dbg !7131
  %1 = load ptr, ptr %chars.addr, align 8, !dbg !7132
  %2 = load i64, ptr %size.addr, align 8, !dbg !7133
  %call = call i64 @tty_insert_flip_string_fixed_flag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i64 noundef %2) #10, !dbg !7134
  ret i64 %call, !dbg !7135
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7136 dso_local void @tty_flip_buffer_push(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @tty_insert_flip_string_fixed_flag(ptr noundef %port, ptr noundef %chars, i8 noundef zeroext %flag, i64 noundef %size) #3 align 16 !dbg !7137 {
entry:
  %port.addr = alloca ptr, align 8
  %chars.addr = alloca ptr, align 8
  %flag.addr = alloca i8, align 1
  %size.addr = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !7141, metadata !DIExpression()), !dbg !7145
  store ptr %chars, ptr %chars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !7142, metadata !DIExpression()), !dbg !7146
  store i8 %flag, ptr %flag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !7143, metadata !DIExpression()), !dbg !7147
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7144, metadata !DIExpression()), !dbg !7148
  %0 = load ptr, ptr %port.addr, align 8, !dbg !7149
  %1 = load ptr, ptr %chars.addr, align 8, !dbg !7150
  %2 = load i64, ptr %size.addr, align 8, !dbg !7151
  %call = call i64 @__tty_insert_flip_string_flags(ptr noundef %0, ptr noundef %1, ptr noundef %flag.addr, i1 noundef zeroext false, i64 noundef %2) #10, !dbg !7152
  ret i64 %call, !dbg !7153
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7154 dso_local i64 @__tty_insert_flip_string_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #3 align 16 !dbg !7157 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !7162, metadata !DIExpression()), !dbg !7165
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !7163, metadata !DIExpression()), !dbg !7166
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !7167
  call void @llvm.dbg.declare(metadata ptr %len, metadata !7164, metadata !DIExpression()), !dbg !7168
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !7169
  %add = add i32 %0, 63, !dbg !7169
  %and = and i32 %add, -64, !dbg !7169
  %div = udiv i32 %and, 8, !dbg !7169
  store i32 %div, ptr %len, align 4, !dbg !7168
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !7170
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !7170
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !7170

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !7170
  %cmp = icmp ule i32 %3, 64, !dbg !7170
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !7170

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !7170
  %cmp2 = icmp ugt i32 %4, 0, !dbg !7170
  br i1 %cmp2, label %if.then, label %if.else, !dbg !7172

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !7173
  store i64 0, ptr %5, align 8, !dbg !7174
  br label %if.end, !dbg !7175

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !7176
  %7 = load i32, ptr %len, align 4, !dbg !7177
  %conv = zext i32 %7 to i64, !dbg !7177
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !7178
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !7179
  ret void, !dbg !7179
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7180 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7187, metadata !DIExpression()), !dbg !7189
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7188, metadata !DIExpression()), !dbg !7190
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7191
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7192
  %div = sdiv i64 %1, 64, !dbg !7192
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7193
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !7194
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7195
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7196
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !7197
  ret void, !dbg !7198
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7199 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7207, metadata !DIExpression()), !dbg !7209
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7208, metadata !DIExpression()), !dbg !7210
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7211
  %1 = load i64, ptr %size.addr, align 8, !dbg !7212
  %conv = trunc i64 %1 to i32, !dbg !7212
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !7213
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7214
  %3 = load i64, ptr %size.addr, align 8, !dbg !7214
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #10, !dbg !7214
  ret void, !dbg !7215
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7216 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7219, metadata !DIExpression()), !dbg !7221
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7220, metadata !DIExpression()), !dbg !7222
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7223
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7225
  br i1 %1, label %if.then, label %if.else, !dbg !7226

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7227
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7227
  %shr = ashr i64 %3, 3, !dbg !7227
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7227
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7229
  %and = and i64 %4, 7, !dbg !7229
  %sh_prom = trunc i64 %and to i32, !dbg !7229
  %shl = shl i32 1, %sh_prom, !dbg !7229
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #9, !dbg !7230, !srcloc !7231
  br label %if.end, !dbg !7232

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7233
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7235
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !7236, !srcloc !7237
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7238
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7239 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7244, metadata !DIExpression()), !dbg !7246
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7245, metadata !DIExpression()), !dbg !7247
  ret i1 true, !dbg !7248
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7249 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7254, metadata !DIExpression()), !dbg !7257
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7255, metadata !DIExpression()), !dbg !7258
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7256, metadata !DIExpression()), !dbg !7259
  ret void, !dbg !7260
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_request_slave_channel(ptr noundef %dev, ptr noundef %name) #3 align 16 !dbg !7261 {
entry:
  %dev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ch = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7265, metadata !DIExpression()), !dbg !7268
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !7266, metadata !DIExpression()), !dbg !7269
  call void @llvm.lifetime.start.p0(i64 8, ptr %ch) #9, !dbg !7270
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !7267, metadata !DIExpression()), !dbg !7271
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7272
  %1 = load ptr, ptr %name.addr, align 8, !dbg !7273
  %call = call ptr @dma_request_chan(ptr noundef %0, ptr noundef %1) #10, !dbg !7274
  store ptr %call, ptr %ch, align 8, !dbg !7271
  %2 = load ptr, ptr %ch, align 8, !dbg !7275
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #10, !dbg !7276
  br i1 %call1, label %cond.true, label %cond.false, !dbg !7276

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !7276

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %ch, align 8, !dbg !7277
  br label %cond.end, !dbg !7276

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %3, %cond.false ], !dbg !7276
  call void @llvm.lifetime.end.p0(i64 8, ptr %ch) #9, !dbg !7278
  ret ptr %cond, !dbg !7279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7280 dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7284 dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !7285 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7290, metadata !DIExpression()), !dbg !7291
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7292
  %1 = ptrtoint ptr %0 to i64, !dbg !7292
  %2 = inttoptr i64 %1 to ptr, !dbg !7292
  %3 = ptrtoint ptr %2 to i64, !dbg !7292
  %cmp = icmp uge i64 %3, -4095, !dbg !7292
  %lnot = xor i1 %cmp, true, !dbg !7292
  %lnot1 = xor i1 %lnot, true, !dbg !7292
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7292
  %conv = sext i32 %lnot.ext to i64, !dbg !7292
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7292
  %tobool = icmp ne i64 %expval, 0, !dbg !7292
  ret i1 %tobool, !dbg !7293
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7294 dso_local ptr @dma_alloc_attrs(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7297 dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7298 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7301 dso_local ptr @dev_driver_string(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #3 align 16 !dbg !7304 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7306, metadata !DIExpression()), !dbg !7307
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7308
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !7310
  %1 = load ptr, ptr %init_name, align 8, !dbg !7310
  %tobool = icmp ne ptr %1, null, !dbg !7308
  br i1 %tobool, label %if.then, label %if.end, !dbg !7311

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7312
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !7313
  %3 = load ptr, ptr %init_name1, align 8, !dbg !7313
  store ptr %3, ptr %retval, align 8, !dbg !7314
  br label %return, !dbg !7314

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !7315
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !7316
  %call = call ptr @kobject_name(ptr noundef %kobj) #10, !dbg !7317
  store ptr %call, ptr %retval, align 8, !dbg !7318
  br label %return, !dbg !7318

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !7319
  ret ptr %5, !dbg !7319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_dma_map_single(ptr noundef %dev, ptr noundef %addr, i64 noundef %len) #3 align 16 !dbg !7320 {
entry:
  %dev.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7324, metadata !DIExpression()), !dbg !7327
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7325, metadata !DIExpression()), !dbg !7328
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !7326, metadata !DIExpression()), !dbg !7329
  ret void, !dbg !7330
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7331 dso_local i64 @dma_map_page_attrs(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #5 align 16 !dbg !7334 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !7339, metadata !DIExpression()), !dbg !7341
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #9, !dbg !7342
  call void @llvm.dbg.declare(metadata ptr %y, metadata !7340, metadata !DIExpression()), !dbg !7343
  %0 = load i64, ptr %x.addr, align 8, !dbg !7344
  %sub = sub i64 %0, -2147483648, !dbg !7345
  store i64 %sub, ptr %y, align 8, !dbg !7343
  %1 = load i64, ptr %y, align 8, !dbg !7346
  %2 = load i64, ptr %x.addr, align 8, !dbg !7347
  %3 = load i64, ptr %y, align 8, !dbg !7348
  %cmp = icmp ugt i64 %2, %3, !dbg !7349
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7350

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !7351
  br label %cond.end, !dbg !7350

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !7352
  %sub1 = sub i64 -2147483648, %5, !dbg !7353
  br label %cond.end, !dbg !7350

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !7350
  %add = add i64 %1, %cond, !dbg !7354
  store i64 %add, ptr %x.addr, align 8, !dbg !7355
  %6 = load i64, ptr %x.addr, align 8, !dbg !7356
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #9, !dbg !7357
  ret i64 %6, !dbg !7358
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !7359 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !7361, metadata !DIExpression()), !dbg !7362
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !7363
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !7364
  %1 = load ptr, ptr %name, align 8, !dbg !7364
  ret ptr %1, !dbg !7365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_dma_mapping_error(ptr noundef %dev, i64 noundef %dma_addr) #3 align 16 !dbg !7366 {
entry:
  %dev.addr = alloca ptr, align 8
  %dma_addr.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7370, metadata !DIExpression()), !dbg !7372
  store i64 %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !7371, metadata !DIExpression()), !dbg !7373
  ret void, !dbg !7374
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7375 dso_local void @dma_free_attrs(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dmaengine_synchronize(ptr noundef %chan) #3 align 16 !dbg !7378 {
entry:
  %chan.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !7380, metadata !DIExpression()), !dbg !7381
  br label %do.body, !dbg !7382

do.body:                                          ; preds = %entry
  call void @might_resched() #10, !dbg !7383
  br label %do.end, !dbg !7383

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !7385
  %device = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 0, !dbg !7387
  %1 = load ptr, ptr %device, align 8, !dbg !7387
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 46, !dbg !7388
  %2 = load ptr, ptr %device_synchronize, align 8, !dbg !7388
  %tobool = icmp ne ptr %2, null, !dbg !7385
  br i1 %tobool, label %if.then, label %if.end, !dbg !7389

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !7390
  %device1 = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 0, !dbg !7391
  %4 = load ptr, ptr %device1, align 8, !dbg !7391
  %device_synchronize2 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 46, !dbg !7392
  %5 = load ptr, ptr %device_synchronize2, align 8, !dbg !7392
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !7393
  call void %5(ptr noundef %6) #10, !dbg !7390
  br label %if.end, !dbg !7390

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !7394
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !5213 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !7395
  %0 = load ptr, ptr %tmp, align 8, !dbg !7395
  %call = call i32 %0() #10, !dbg !7397
  ret void, !dbg !7398
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7399 dso_local void @dma_unmap_page_attrs(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222}
!llvm.ident = !{!5223}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serial8250_rx_dma_flush294", scope: !2, file: !3, line: 195, type: !249, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/serial/8250/.8250_dma.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/serial/8250/8250_base\22 -D KBUILD_BASENAME=\228250_dma\22 -D KBUILD_MODNAME=\228250_base\22 -D __KBUILD_MODNAME=kmod_8250_base -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/serial/8250/8250_dma.ll drivers/tty/serial/8250/8250_dma.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !248, globals: !5166, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/serial/8250/8250_dma.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d522d8e071a71d2855cd62a22e45ca0c")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !147, !153, !164, !169, !181, !187, !191, !198, !210, !217, !224, !243}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uart_pm_state", file: !142, line: 687, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/serial_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7055ea58a7a181cb3963c528b528c8b1")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "UART_PM_STATE_ON", value: 0)
!145 = !DIEnumerator(name: "UART_PM_STATE_OFF", value: 3)
!146 = !DIEnumerator(name: "UART_PM_STATE_UNDEFINED", value: 4)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_desc_metadata_mode", file: !148, line: 282, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/dmaengine.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0cbc91064c120734c9b4d09ca2ee7349")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "DESC_METADATA_NONE", value: 0)
!151 = !DIEnumerator(name: "DESC_METADATA_CLIENT", value: 1)
!152 = !DIEnumerator(name: "DESC_METADATA_ENGINE", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_alignment", file: !148, line: 736, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163}
!155 = !DIEnumerator(name: "DMAENGINE_ALIGN_1_BYTE", value: 0)
!156 = !DIEnumerator(name: "DMAENGINE_ALIGN_2_BYTES", value: 1)
!157 = !DIEnumerator(name: "DMAENGINE_ALIGN_4_BYTES", value: 2)
!158 = !DIEnumerator(name: "DMAENGINE_ALIGN_8_BYTES", value: 3)
!159 = !DIEnumerator(name: "DMAENGINE_ALIGN_16_BYTES", value: 4)
!160 = !DIEnumerator(name: "DMAENGINE_ALIGN_32_BYTES", value: 5)
!161 = !DIEnumerator(name: "DMAENGINE_ALIGN_64_BYTES", value: 6)
!162 = !DIEnumerator(name: "DMAENGINE_ALIGN_128_BYTES", value: 7)
!163 = !DIEnumerator(name: "DMAENGINE_ALIGN_256_BYTES", value: 8)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_residue_granularity", file: !148, line: 472, baseType: !7, size: 32, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_DESCRIPTOR", value: 0)
!167 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_SEGMENT", value: 1)
!168 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_BURST", value: 2)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_ctrl_flags", file: !148, line: 194, baseType: !7, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!171 = !DIEnumerator(name: "DMA_PREP_INTERRUPT", value: 1)
!172 = !DIEnumerator(name: "DMA_CTRL_ACK", value: 2)
!173 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_P", value: 4)
!174 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_Q", value: 8)
!175 = !DIEnumerator(name: "DMA_PREP_CONTINUE", value: 16)
!176 = !DIEnumerator(name: "DMA_PREP_FENCE", value: 32)
!177 = !DIEnumerator(name: "DMA_CTRL_REUSE", value: 64)
!178 = !DIEnumerator(name: "DMA_PREP_CMD", value: 128)
!179 = !DIEnumerator(name: "DMA_PREP_REPEAT", value: 256)
!180 = !DIEnumerator(name: "DMA_PREP_LOAD_EOT", value: 512)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_tx_result", file: !148, line: 537, baseType: !7, size: 32, elements: !182)
!182 = !{!183, !184, !185, !186}
!183 = !DIEnumerator(name: "DMA_TRANS_NOERROR", value: 0)
!184 = !DIEnumerator(name: "DMA_TRANS_READ_FAILED", value: 1)
!185 = !DIEnumerator(name: "DMA_TRANS_WRITE_FAILED", value: 2)
!186 = !DIEnumerator(name: "DMA_TRANS_ABORTED", value: 3)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sum_check_flags", file: !148, line: 220, baseType: !7, size: 32, elements: !188)
!188 = !{!189, !190}
!189 = !DIEnumerator(name: "SUM_CHECK_P_RESULT", value: 1)
!190 = !DIEnumerator(name: "SUM_CHECK_Q_RESULT", value: 2)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_transfer_direction", file: !148, line: 79, baseType: !7, size: 32, elements: !192)
!192 = !{!193, !194, !195, !196, !197}
!193 = !DIEnumerator(name: "DMA_MEM_TO_MEM", value: 0)
!194 = !DIEnumerator(name: "DMA_MEM_TO_DEV", value: 1)
!195 = !DIEnumerator(name: "DMA_DEV_TO_MEM", value: 2)
!196 = !DIEnumerator(name: "DMA_DEV_TO_DEV", value: 3)
!197 = !DIEnumerator(name: "DMA_TRANS_NONE", value: 4)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_slave_buswidth", file: !148, line: 373, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!200 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_UNDEFINED", value: 0)
!201 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_1_BYTE", value: 1)
!202 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_2_BYTES", value: 2)
!203 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_3_BYTES", value: 3)
!204 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_4_BYTES", value: 4)
!205 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_8_BYTES", value: 8)
!206 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_16_BYTES", value: 16)
!207 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_32_BYTES", value: 32)
!208 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_64_BYTES", value: 64)
!209 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_128_BYTES", value: 128)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_status", file: !148, line: 37, baseType: !7, size: 32, elements: !211)
!211 = !{!212, !213, !214, !215, !216}
!212 = !DIEnumerator(name: "DMA_COMPLETE", value: 0)
!213 = !DIEnumerator(name: "DMA_IN_PROGRESS", value: 1)
!214 = !DIEnumerator(name: "DMA_PAUSED", value: 2)
!215 = !DIEnumerator(name: "DMA_ERROR", value: 3)
!216 = !DIEnumerator(name: "DMA_OUT_OF_ORDER", value: 4)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !218, line: 5, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!219 = !{!220, !221, !222, !223}
!220 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!221 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!222 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!223 = !DIEnumerator(name: "DMA_NONE", value: 3)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_transaction_type", file: !148, line: 51, baseType: !7, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!226 = !DIEnumerator(name: "DMA_MEMCPY", value: 0)
!227 = !DIEnumerator(name: "DMA_XOR", value: 1)
!228 = !DIEnumerator(name: "DMA_PQ", value: 2)
!229 = !DIEnumerator(name: "DMA_XOR_VAL", value: 3)
!230 = !DIEnumerator(name: "DMA_PQ_VAL", value: 4)
!231 = !DIEnumerator(name: "DMA_MEMSET", value: 5)
!232 = !DIEnumerator(name: "DMA_MEMSET_SG", value: 6)
!233 = !DIEnumerator(name: "DMA_INTERRUPT", value: 7)
!234 = !DIEnumerator(name: "DMA_PRIVATE", value: 8)
!235 = !DIEnumerator(name: "DMA_ASYNC_TX", value: 9)
!236 = !DIEnumerator(name: "DMA_SLAVE", value: 10)
!237 = !DIEnumerator(name: "DMA_CYCLIC", value: 11)
!238 = !DIEnumerator(name: "DMA_INTERLEAVE", value: 12)
!239 = !DIEnumerator(name: "DMA_COMPLETION_NO_ORDER", value: 13)
!240 = !DIEnumerator(name: "DMA_REPEAT", value: 14)
!241 = !DIEnumerator(name: "DMA_LOAD_EOT", value: 15)
!242 = !DIEnumerator(name: "DMA_TX_TYPE_END", value: 16)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !244, line: 10, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!245 = !{!246, !247}
!246 = !DIEnumerator(name: "false", value: 0)
!247 = !DIEnumerator(name: "true", value: 1)
!248 = !{!249, !250, !7, !252, !255, !258, !259, !265}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !251, line: 154, baseType: !7)
!251 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !254)
!254 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !257)
!257 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!258 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !251, line: 149, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !261, line: 23, baseType: !262)
!261 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !263, line: 31, baseType: !264)
!263 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!264 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !267)
!267 = !{!268, !269, !5160, !5165}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !27, line: 75, baseType: !258, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !27, line: 83, baseType: !270, size: 320, offset: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !27, line: 83, size: 320, elements: !271)
!271 = !{!272, !5066, !5080, !5084, !5159}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !27, line: 84, baseType: !273, size: 320)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !27, line: 84, size: 320, elements: !274)
!274 = !{!275, !291, !5060, !5065}
!275 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !27, line: 90, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !27, line: 90, size: 128, elements: !277)
!277 = !{!278, !284, !289, !290}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !276, file: !27, line: 91, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !251, line: 190, size: 128, elements: !280)
!280 = !{!281, !283}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !251, line: 191, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !279, file: !251, line: 191, baseType: !282, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !27, line: 94, baseType: !285, size: 128)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !276, file: !27, line: 94, size: 128, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !285, file: !27, line: 96, baseType: !249, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !285, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !276, file: !27, line: 102, baseType: !279, size: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !276, file: !27, line: 103, baseType: !279, size: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !273, file: !27, line: 106, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !294)
!294 = !{!295, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !5054, !5055, !5056, !5057, !5058, !5059}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !293, file: !14, line: 473, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !298)
!298 = !{!299, !302, !303, !312, !313, !320, !321, !324, !325, !4835, !4836, !4837, !4838, !4839, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4879, !4882, !4883, !4884, !4891, !4892, !4893, !4894}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !297, file: !14, line: 642, baseType: !300, size: 16)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !251, line: 24, baseType: !301)
!301 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !297, file: !14, line: 643, baseType: !301, size: 16, offset: 16)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !297, file: !14, line: 644, baseType: !304, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !305, line: 23, baseType: !306)
!305 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 21, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !306, file: !305, line: 22, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !251, line: 37, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !311, line: 49, baseType: !7)
!311 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !297, file: !14, line: 645, baseType: !279, size: 128, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !297, file: !14, line: 646, baseType: !314, size: 32, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !305, line: 28, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 26, size: 32, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !315, file: !305, line: 27, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !251, line: 38, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !311, line: 50, baseType: !7)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !297, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !297, file: !14, line: 650, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !297, file: !14, line: 651, baseType: !322, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !297, file: !14, line: 654, baseType: !326, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !329)
!329 = !{!330, !4669, !4679, !4683, !4687, !4691, !4695, !4699, !4703, !4707, !4711, !4712, !4716, !4720, !4757, !4786, !4790, !4796, !4800, !4804, !4808, !4812, !4816, !4822, !4826}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !328, file: !14, line: 1967, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !296, !334, !7}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !336, line: 82, size: 1536, elements: !337)
!336 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!337 = !{!338, !339, !349, !357, !358, !376, !377, !381, !432, !4652, !4653, !4654, !4655, !4661, !4662, !4663}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !335, file: !336, line: 84, baseType: !7, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !335, file: !336, line: 85, baseType: !340, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !341, line: 275, baseType: !342)
!341 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !341, line: 275, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !342, file: !341, line: 275, baseType: !345, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !341, line: 69, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !341, line: 64, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !346, file: !341, line: 65, baseType: !7, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !335, file: !336, line: 86, baseType: !350, size: 128, offset: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !351, line: 38, size: 128, elements: !352)
!351 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!352 = !{!353, !355}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !351, line: 39, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !350, file: !351, line: 39, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !335, file: !336, line: 87, baseType: !334, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !335, file: !336, line: 88, baseType: !359, size: 128, offset: 256)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !336, line: 49, size: 128, elements: !360)
!360 = !{!361, !372}
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !336, line: 50, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !336, line: 50, size: 64, elements: !363)
!363 = !{!364, !371}
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !336, line: 51, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !362, file: !336, line: 51, size: 64, elements: !366)
!366 = !{!367, !370}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !365, file: !336, line: 52, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !261, line: 21, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !263, line: 27, baseType: !7)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !365, file: !336, line: 52, baseType: !368, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !362, file: !336, line: 54, baseType: !260, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !359, file: !336, line: 56, baseType: !373, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !335, file: !336, line: 89, baseType: !296, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !335, file: !336, line: 91, baseType: !378, size: 256, offset: 448)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 256, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !335, file: !336, line: 94, baseType: !382, size: 64, offset: 704)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !383, line: 25, size: 64, elements: !384)
!383 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !383, line: 26, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !383, line: 26, size: 64, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !386, file: !383, line: 28, baseType: !262, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !383, line: 30, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !383, line: 30, size: 64, elements: !391)
!391 = !{!392, !431}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !390, file: !383, line: 31, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !394, line: 29, baseType: !395)
!394 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !394, line: 17, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !394, line: 18, baseType: !398, size: 32)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !394, line: 18, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !398, file: !394, line: 19, baseType: !401, size: 32)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !402, line: 14, size: 32, elements: !403)
!402 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !401, file: !402, line: 15, baseType: !405, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !406, line: 44, baseType: !407)
!406 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !406, line: 14, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !406, line: 15, baseType: !410, size: 32)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !406, line: 15, size: 32, elements: !411)
!411 = !{!412, !417, !424}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !410, file: !406, line: 16, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !251, line: 174, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 172, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !414, file: !251, line: 173, baseType: !109, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !406, line: 24, baseType: !418, size: 16)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !406, line: 24, size: 16, elements: !419)
!419 = !{!420, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !418, file: !406, line: 25, baseType: !421, size: 8)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !261, line: 17, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !263, line: 21, baseType: !375)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !418, file: !406, line: 26, baseType: !421, size: 8, offset: 8)
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !406, line: 28, baseType: !425, size: 32)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !406, line: 28, size: 32, elements: !426)
!426 = !{!427, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !425, file: !406, line: 29, baseType: !428, size: 16)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !261, line: 19, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !263, line: 24, baseType: !301)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !425, file: !406, line: 30, baseType: !428, size: 16, offset: 16)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !390, file: !383, line: 32, baseType: !109, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !335, file: !336, line: 95, baseType: !433, size: 64, offset: 768)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !336, line: 128, size: 1024, align: 512, elements: !436)
!436 = !{!437, !441, !442, !449, !457, !461, !465, !469, !470, !474, !479, !4642, !4646}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !435, file: !336, line: 129, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!109, !334, !7}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !435, file: !336, line: 130, baseType: !438, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !435, file: !336, line: 131, baseType: !443, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!109, !446, !448}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !435, file: !336, line: 132, baseType: !450, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!109, !446, !7, !453, !455}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !435, file: !336, line: 134, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!109, !446}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !435, file: !336, line: 135, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!109, !334}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !435, file: !336, line: 136, baseType: !466, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !334}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !435, file: !336, line: 137, baseType: !466, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !435, file: !336, line: 138, baseType: !471, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !334, !296}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !435, file: !336, line: 139, baseType: !475, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !334, !478, !109}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !435, file: !336, line: 140, baseType: !480, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !4641}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !485, line: 70, size: 256, elements: !486)
!485 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!486 = !{!487, !488, !4637, !4638}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !484, file: !485, line: 71, baseType: !334, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !484, file: !485, line: 72, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !491)
!491 = !{!492, !493, !496, !497, !498, !502, !2125, !2259, !2299, !2384, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2401, !2405, !2406, !2409, !2412, !2415, !2418, !2419, !2420, !2461, !4570, !4571, !4572, !4573, !4574, !4575, !4578, !4580, !4587, !4588, !4589, !4590, !4591, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !490, file: !14, line: 1191, baseType: !279, size: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !490, file: !14, line: 1192, baseType: !494, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !251, line: 21, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !251, line: 18, baseType: !368)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !490, file: !14, line: 1193, baseType: !375, size: 8, offset: 160)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !490, file: !14, line: 1194, baseType: !258, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !490, file: !14, line: 1195, baseType: !499, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !251, line: 52, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !311, line: 88, baseType: !501)
!501 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !490, file: !14, line: 1196, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !505)
!505 = !{!506, !507, !508, !514, !518, !522, !526, !2113, !2114, !2115, !2117, !2118, !2119, !2121, !2122, !2123, !2124}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !504, file: !14, line: 2367, baseType: !453, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !504, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !504, file: !14, line: 2376, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!109, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !485, line: 21, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !504, file: !14, line: 2377, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !504, file: !14, line: 2378, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!334, !503, !109, !453, !249}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !504, file: !14, line: 2380, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !489}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !504, file: !14, line: 2381, baseType: !527, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !529)
!529 = !{!530, !531, !532, !536, !1769, !1795, !1796, !1797, !1798, !1802, !1805, !1806, !1807, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1875, !1879, !1899, !1917, !1918, !1919, !1920, !1929, !1952, !1953, !1956, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1970, !1971, !2071, !2079, !2080, !2081, !2083, !2087, !2088, !2092, !2093, !2094, !2095, !2097, !2098, !2099, !2106, !2107, !2108, !2112}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !528, file: !6, line: 403, baseType: !5, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !528, file: !6, line: 406, baseType: !279, size: 128, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !6, line: 409, baseType: !533, size: 448, offset: 192)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 448, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 56)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !528, file: !6, line: 417, baseType: !537, size: 768, offset: 640)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !538)
!538 = !{!539, !1752, !1753, !1754, !1757}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !537, file: !6, line: 46, baseType: !540, size: 512)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !541, line: 64, size: 512, elements: !542)
!541 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!542 = !{!543, !544, !545, !547, !593, !1647, !1742, !1747, !1748, !1749, !1750, !1751}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !541, line: 65, baseType: !453, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !540, file: !541, line: 66, baseType: !279, size: 128, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !540, file: !541, line: 67, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !540, file: !541, line: 68, baseType: !548, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !541, line: 168, size: 768, elements: !550)
!550 = !{!551, !552, !553, !554}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !549, file: !541, line: 169, baseType: !279, size: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !549, file: !541, line: 170, baseType: !393, size: 32, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !549, file: !541, line: 171, baseType: !540, size: 512, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !549, file: !541, line: 172, baseType: !555, size: 64, offset: 704)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !541, line: 133, size: 192, elements: !558)
!558 = !{!559, !566, !571}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !557, file: !541, line: 134, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!109, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !557, file: !541, line: 135, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!453, !564}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !557, file: !541, line: 136, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!109, !564, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !541, line: 125, size: 20736, elements: !578)
!578 = !{!579, !583, !587, !588, !592}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !577, file: !541, line: 126, baseType: !580, size: 192)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 192, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 3)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !577, file: !541, line: 127, baseType: !584, size: 4096, offset: 192)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 4096, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !577, file: !541, line: 128, baseType: !109, size: 32, offset: 4288)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !577, file: !541, line: 129, baseType: !589, size: 16384, offset: 4320)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 16384, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 2048)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !577, file: !541, line: 130, baseType: !109, size: 32, offset: 20704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !540, file: !541, line: 69, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !541, line: 116, size: 384, elements: !597)
!597 = !{!598, !602, !627, !1606, !1637, !1641}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !596, file: !541, line: 117, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !546}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !596, file: !541, line: 118, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !606, line: 254, size: 128, elements: !607)
!606 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!607 = !{!608, !620}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !605, file: !606, line: 255, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!612, !546, !615, !478}
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !251, line: 66, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !311, line: 73, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !311, line: 15, baseType: !257)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !606, line: 30, size: 128, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !616, file: !606, line: 31, baseType: !453, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !616, file: !606, line: 32, baseType: !300, size: 16, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !605, file: !606, line: 256, baseType: !621, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!612, !546, !615, !453, !624}
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !251, line: 61, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !311, line: 72, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !311, line: 16, baseType: !258)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !596, file: !541, line: 119, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !606, line: 84, size: 320, elements: !632)
!632 = !{!633, !634, !638, !1602, !1604}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !606, line: 85, baseType: !453, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !631, file: !606, line: 86, baseType: !635, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!300, !546, !615, !109}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !631, file: !606, line: 88, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!300, !546, !642, !109}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !606, line: 175, size: 512, elements: !644)
!644 = !{!645, !646, !647, !648, !652, !1597, !1598}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !643, file: !606, line: 176, baseType: !616, size: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !643, file: !606, line: 177, baseType: !624, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !643, file: !606, line: 178, baseType: !249, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !643, file: !606, line: 179, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!292}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !643, file: !606, line: 180, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!612, !656, !546, !642, !478, !499, !624}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !658)
!658 = !{!659, !678, !679, !681, !690, !703, !704, !705, !777, !989, !998, !1004, !1005, !1587, !1588, !1589, !1590, !1592, !1593, !1596}
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !14, line: 995, baseType: !660, size: 128)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !14, line: 995, size: 128, elements: !661)
!661 = !{!662, !668, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !660, file: !14, line: 996, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !664, line: 60, size: 64, elements: !665)
!664 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !664, line: 61, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !660, file: !14, line: 997, baseType: !669, size: 128, align: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !251, line: 232, size: 128, align: 64, elements: !670)
!670 = !{!671, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !251, line: 233, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !669, file: !251, line: 234, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !672}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !660, file: !14, line: 998, baseType: !7, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !657, file: !14, line: 1005, baseType: !393, size: 32, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !657, file: !14, line: 1006, baseType: !680, size: 32, offset: 160)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !251, line: 156, baseType: !7)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !657, file: !14, line: 1007, baseType: !682, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !683, line: 13, baseType: !684)
!683 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !251, line: 181, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 179, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !685, file: !251, line: 180, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !261, line: 22, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !263, line: 30, baseType: !501)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !657, file: !14, line: 1008, baseType: !691, size: 256, offset: 256)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !692, line: 66, size: 256, elements: !693)
!692 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!693 = !{!694, !695, !697, !702}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !691, file: !692, line: 67, baseType: !682, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !691, file: !692, line: 68, baseType: !696, size: 32, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !402, line: 23, baseType: !401)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !691, file: !692, line: 70, baseType: !698, size: 32, offset: 96)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !699, line: 15, size: 32, elements: !700)
!699 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !698, file: !699, line: 20, baseType: !413, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !691, file: !692, line: 72, baseType: !279, size: 128, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !657, file: !14, line: 1009, baseType: !499, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !657, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !657, file: !14, line: 1011, baseType: !706, size: 256, offset: 640)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !707)
!707 = !{!708, !729, !773, !774, !775, !776}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !706, file: !14, line: 949, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !710, line: 34, baseType: !711)
!710 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 25, size: 64, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !711, file: !710, line: 26, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !715, line: 27, baseType: !716)
!715 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !715, line: 13, size: 64, elements: !717)
!717 = !{!718, !728}
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !715, line: 14, baseType: !719, size: 32)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !715, line: 14, size: 32, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !719, file: !715, line: 15, baseType: !413, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !715, line: 16, baseType: !723, size: 32)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !719, file: !715, line: 16, size: 32, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !723, file: !715, line: 18, baseType: !421, size: 8)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !723, file: !715, line: 19, baseType: !727, size: 24, offset: 8)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 24, elements: !581)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !716, file: !715, line: 26, baseType: !405, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !706, file: !14, line: 950, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !732)
!732 = !{!733, !739, !740, !741, !754, !755, !762, !763}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !19, line: 61, baseType: !734, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !735, line: 113, baseType: !736)
!735 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !735, line: 111, size: 32, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !736, file: !735, line: 112, baseType: !413, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !731, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !19, line: 63, baseType: !393, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !731, file: !19, line: 65, baseType: !742, size: 256, offset: 128)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 256, elements: !752)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !251, line: 194, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !743, file: !251, line: 195, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !251, line: 198, size: 128, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !251, line: 199, baseType: !746, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !747, file: !251, line: 199, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!752 = !{!753}
!753 = !DISubrange(count: 4)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !731, file: !19, line: 66, baseType: !743, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !731, file: !19, line: 68, baseType: !756, size: 192, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !757, line: 41, baseType: !758)
!757 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !757, line: 37, size: 192, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !758, file: !757, line: 38, baseType: !393, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !758, file: !757, line: 39, baseType: !279, size: 128, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !731, file: !19, line: 69, baseType: !669, size: 128, align: 64, offset: 640)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !731, file: !19, line: 70, baseType: !764, offset: 768)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, elements: !771)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !765, file: !19, line: 55, baseType: !109, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !765, file: !19, line: 56, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!771 = !{!772}
!772 = !DISubrange(count: -1)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !706, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !706, file: !14, line: 952, baseType: !304, size: 32, offset: 160)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !706, file: !14, line: 952, baseType: !304, size: 32, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !706, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !657, file: !14, line: 1012, baseType: !778, size: 64, offset: 896)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !781, line: 110, size: 1472, elements: !782)
!781 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !799, !800, !801, !802, !803, !804, !934, !935, !936, !937, !938, !969, !972, !976, !984}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !780, file: !781, line: 111, baseType: !682, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !780, file: !781, line: 112, baseType: !304, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !780, file: !781, line: 113, baseType: !314, size: 32, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !780, file: !781, line: 114, baseType: !304, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !780, file: !781, line: 115, baseType: !314, size: 32, offset: 160)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !780, file: !781, line: 116, baseType: !304, size: 32, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !780, file: !781, line: 117, baseType: !314, size: 32, offset: 224)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !780, file: !781, line: 118, baseType: !304, size: 32, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !780, file: !781, line: 119, baseType: !314, size: 32, offset: 288)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !780, file: !781, line: 120, baseType: !7, size: 32, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !780, file: !781, line: 121, baseType: !794, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !795, line: 24, baseType: !796)
!795 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !795, line: 24, size: 64, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !796, file: !795, line: 24, baseType: !260, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !780, file: !781, line: 122, baseType: !794, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !780, file: !781, line: 123, baseType: !794, size: 64, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !780, file: !781, line: 124, baseType: !794, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !780, file: !781, line: 125, baseType: !794, size: 64, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !780, file: !781, line: 127, baseType: !375, size: 8, offset: 704)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !780, file: !781, line: 129, baseType: !805, size: 64, offset: 768)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !807, line: 195, size: 1728, elements: !808)
!807 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!808 = !{!809, !810, !815, !827, !836, !839, !840, !847, !848, !849, !850, !853, !854, !855, !857, !858, !898, !919}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !806, file: !807, line: 196, baseType: !734, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !806, file: !807, line: 197, baseType: !811, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !807, line: 28, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !251, line: 104, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !261, line: 20, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !263, line: 26, baseType: !109)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !807, line: 198, baseType: !816, size: 192, offset: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !806, file: !807, line: 198, size: 192, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !816, file: !807, line: 199, baseType: !279, size: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !816, file: !807, line: 200, baseType: !820, size: 192, align: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !821, line: 5, size: 192, align: 64, elements: !822)
!821 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!822 = !{!823, !824, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !820, file: !821, line: 6, baseType: !258, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !820, file: !821, line: 7, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !820, file: !821, line: 8, baseType: !825, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !806, file: !807, line: 205, baseType: !828, size: 320, offset: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !829, line: 48, size: 320, elements: !830)
!829 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!830 = !{!831, !832, !833, !834, !835}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !828, file: !829, line: 49, baseType: !682, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !828, file: !829, line: 55, baseType: !682, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !828, file: !829, line: 57, baseType: !698, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !828, file: !829, line: 59, baseType: !696, size: 32, offset: 160)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !828, file: !829, line: 60, baseType: !279, size: 128, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !806, file: !807, line: 206, baseType: !837, size: 64, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !807, line: 206, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !806, file: !807, line: 207, baseType: !249, size: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !807, line: 208, baseType: !841, size: 64, offset: 704)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !806, file: !807, line: 208, size: 64, elements: !842)
!842 = !{!843, !846}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !841, file: !807, line: 209, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !845, line: 8, baseType: !689)
!845 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!846 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !841, file: !807, line: 210, baseType: !844, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !806, file: !807, line: 212, baseType: !844, size: 64, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !806, file: !807, line: 213, baseType: !304, size: 32, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !806, file: !807, line: 214, baseType: !314, size: 32, offset: 864)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !806, file: !807, line: 215, baseType: !851, size: 32, offset: 896)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !807, line: 31, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !251, line: 110, baseType: !368)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !806, file: !807, line: 216, baseType: !301, size: 16, offset: 928)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !806, file: !807, line: 217, baseType: !301, size: 16, offset: 944)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !806, file: !807, line: 221, baseType: !856, size: 16, offset: 960)
!856 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !806, file: !807, line: 228, baseType: !258, size: 64, offset: 1024)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !807, line: 245, baseType: !859, size: 320, offset: 1088)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !806, file: !807, line: 245, size: 320, elements: !860)
!860 = !{!861, !890}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !859, file: !807, line: 246, baseType: !862, size: 320)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !807, line: 114, size: 320, elements: !863)
!863 = !{!864, !865, !877, !880, !889}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !862, file: !807, line: 116, baseType: !258, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !807, line: 117, baseType: !866, size: 64, offset: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !807, line: 117, size: 64, elements: !867)
!867 = !{!868, !876}
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !807, line: 118, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !807, line: 118, size: 64, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !869, file: !807, line: 120, baseType: !428, size: 16)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !869, file: !807, line: 121, baseType: !873, size: 48, offset: 16)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 48, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 6)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !866, file: !807, line: 127, baseType: !258, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !862, file: !807, line: 129, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !807, line: 102, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !862, file: !807, line: 130, baseType: !881, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !807, line: 108, size: 192, elements: !883)
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !882, file: !807, line: 109, baseType: !669, size: 128, align: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !882, file: !807, line: 110, baseType: !734, size: 32, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !882, file: !807, line: 111, baseType: !887, size: 8, offset: 160)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !251, line: 35, baseType: !888)
!888 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !862, file: !807, line: 131, baseType: !453, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !807, line: 247, baseType: !891, size: 320)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !807, line: 247, size: 320, elements: !892)
!892 = !{!893, !894, !895, !896, !897}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !891, file: !807, line: 248, baseType: !258, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !891, file: !807, line: 249, baseType: !258, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !891, file: !807, line: 250, baseType: !878, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !891, file: !807, line: 251, baseType: !881, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !891, file: !807, line: 252, baseType: !478, size: 64, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !807, line: 260, baseType: !899, size: 256, offset: 1408)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !806, file: !807, line: 260, size: 256, elements: !900)
!900 = !{!901, !907}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !899, file: !807, line: 261, baseType: !902, size: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !807, line: 134, size: 256, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !902, file: !807, line: 135, baseType: !249, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !902, file: !807, line: 136, baseType: !906, size: 256)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !752)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !899, file: !807, line: 262, baseType: !908, size: 256)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !899, file: !807, line: 262, size: 256, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !908, file: !807, line: 264, baseType: !279, size: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !908, file: !807, line: 265, baseType: !912, size: 128, offset: 128)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !913, line: 22, size: 128, elements: !914)
!913 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!914 = !{!915, !918}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !912, file: !913, line: 23, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !913, line: 23, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !912, file: !913, line: 24, baseType: !258, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !806, file: !807, line: 280, baseType: !920, size: 64, offset: 1664)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !807, line: 176, size: 192, elements: !922)
!922 = !{!923, !932, !933}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !921, file: !807, line: 177, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !807, line: 171, baseType: !925)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!109, !805, !928, !930, !805}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !921, file: !807, line: 178, baseType: !805, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !921, file: !807, line: 179, baseType: !878, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !780, file: !781, line: 130, baseType: !805, size: 64, offset: 832)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !780, file: !781, line: 131, baseType: !805, size: 64, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !780, file: !781, line: 132, baseType: !805, size: 64, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !780, file: !781, line: 135, baseType: !249, size: 64, offset: 1024)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !780, file: !781, line: 137, baseType: !939, size: 64, offset: 1088)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !941, line: 14, size: 1088, elements: !942)
!941 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!942 = !{!943, !944, !953, !954, !955, !956, !957, !958}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !940, file: !941, line: 15, baseType: !734, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !940, file: !941, line: 17, baseType: !945, size: 320, offset: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !946, line: 22, size: 320, elements: !947)
!946 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!947 = !{!948, !949, !950, !951}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !945, file: !946, line: 23, baseType: !696, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !945, file: !946, line: 24, baseType: !688, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !945, file: !946, line: 26, baseType: !279, size: 128, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !945, file: !946, line: 28, baseType: !952, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !940, file: !941, line: 19, baseType: !258, size: 64, offset: 384)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !940, file: !941, line: 20, baseType: !682, size: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !940, file: !941, line: 23, baseType: !747, size: 128, offset: 512)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !940, file: !941, line: 24, baseType: !304, size: 32, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !940, file: !941, line: 29, baseType: !682, size: 64, offset: 704)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !940, file: !941, line: 36, baseType: !959, size: 320, offset: 768)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !960, line: 15, size: 320, elements: !961)
!960 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!961 = !{!962, !963, !964, !965, !966, !967, !968}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !959, file: !960, line: 16, baseType: !696, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !959, file: !960, line: 18, baseType: !109, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !959, file: !960, line: 19, baseType: !109, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !959, file: !960, line: 20, baseType: !109, size: 32, offset: 96)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !959, file: !960, line: 21, baseType: !109, size: 32, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !959, file: !960, line: 22, baseType: !258, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !960, line: 23, baseType: !258, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !780, file: !781, line: 138, baseType: !970, size: 64, offset: 1152)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !305, line: 18, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !780, file: !781, line: 139, baseType: !973, size: 64, offset: 1216)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !975, line: 16, flags: DIFlagFwdDecl)
!975 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!976 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !780, file: !781, line: 140, baseType: !977, size: 64, offset: 1280)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !781, line: 25, size: 64, elements: !979)
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !978, file: !781, line: 26, baseType: !413, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !978, file: !781, line: 27, baseType: !109, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !978, file: !781, line: 28, baseType: !983, offset: 64)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, elements: !771)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !781, line: 142, baseType: !985, size: 128, offset: 1344)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !781, line: 142, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !985, file: !781, line: 143, baseType: !109, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !985, file: !781, line: 144, baseType: !669, size: 128, align: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !657, file: !14, line: 1013, baseType: !990, size: 256, offset: 960)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !991)
!991 = !{!992, !993, !994, !995, !996, !997}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !990, file: !14, line: 971, baseType: !258, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !990, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !990, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !990, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !990, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !990, file: !14, line: 976, baseType: !499, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !657, file: !14, line: 1014, baseType: !999, size: 128, offset: 1216)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1000, line: 8, size: 128, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !999, file: !1000, line: 9, baseType: !483, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !999, file: !1000, line: 10, baseType: !334, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !657, file: !14, line: 1015, baseType: !296, size: 64, offset: 1344)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !657, file: !14, line: 1016, baseType: !1006, size: 64, offset: 1408)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1009)
!1009 = !{!1010, !1011, !1015, !1020, !1024, !1108, !1109, !1115, !1128, !1136, !1140, !1141, !1470, !1471, !1475, !1480, !1481, !1485, !1489, !1495, !1496, !1500, !1501, !1508, !1512, !1516, !1522, !1526, !1568, !1572, !1576, !1577, !1583}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1008, file: !14, line: 1915, baseType: !527, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1008, file: !14, line: 1916, baseType: !1012, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!499, !656, !499, !109}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1008, file: !14, line: 1917, baseType: !1016, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!612, !656, !478, !624, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1008, file: !14, line: 1918, baseType: !1021, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!612, !656, !453, !624, !1019}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1008, file: !14, line: 1919, baseType: !1025, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!612, !1028, !1050}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1037, !1038, !1039, !1040}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1029, file: !14, line: 374, baseType: !656, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1029, file: !14, line: 375, baseType: !499, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1029, file: !14, line: 376, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1028, !257}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1029, file: !14, line: 377, baseType: !249, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1029, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1029, file: !14, line: 379, baseType: !428, size: 16, offset: 288)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !14, line: 380, baseType: !1041, size: 64, offset: 320)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !14, line: 380, size: 64, elements: !1042)
!1042 = !{!1043, !1046}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1041, file: !14, line: 386, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1041, file: !14, line: 395, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!612, !249}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1052, line: 41, size: 320, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1064, !1103}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1051, file: !1052, line: 42, baseType: !421, size: 8)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1051, file: !1052, line: 43, baseType: !887, size: 8, offset: 8)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1051, file: !1052, line: 44, baseType: !887, size: 8, offset: 16)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1051, file: !1052, line: 45, baseType: !887, size: 8, offset: 24)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1051, file: !1052, line: 46, baseType: !887, size: 8, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1052, line: 47, baseType: !1060, size: 64, offset: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !1052, line: 47, size: 64, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1060, file: !1052, line: 48, baseType: !624, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1060, file: !1052, line: 49, baseType: !109, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1052, line: 61, baseType: !1065, size: 128, offset: 128)
!1065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !1052, line: 61, size: 128, elements: !1066)
!1066 = !{!1067, !1073}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1065, file: !1052, line: 67, baseType: !1068, size: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1069, line: 17, size: 128, elements: !1070)
!1069 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1068, file: !1069, line: 19, baseType: !249, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1068, file: !1069, line: 20, baseType: !625, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !1052, line: 68, baseType: !1074, size: 128)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1065, file: !1052, line: 68, size: 128, elements: !1075)
!1075 = !{!1076, !1102}
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !1052, line: 69, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !1052, line: 69, size: 64, elements: !1078)
!1078 = !{!1079, !1082, !1089, !1093, !1101}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1077, file: !1052, line: 71, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1068)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1077, file: !1052, line: 72, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1052, line: 17, size: 128, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1085, file: !1052, line: 18, baseType: !249, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1085, file: !1052, line: 19, baseType: !624, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1077, file: !1052, line: 73, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1052, line: 73, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1077, file: !1052, line: 74, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1096, line: 296, size: 128, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1095, file: !1096, line: 297, baseType: !393, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1095, file: !1096, line: 299, baseType: !250, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1095, file: !1096, line: 300, baseType: !249, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1077, file: !1052, line: 75, baseType: !249, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1074, file: !1052, line: 77, baseType: !624, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1052, line: 80, baseType: !1104, size: 64, offset: 256)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !1052, line: 80, size: 64, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1104, file: !1052, line: 81, baseType: !258, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1104, file: !1052, line: 82, baseType: !499, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1008, file: !14, line: 1920, baseType: !1025, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1008, file: !14, line: 1921, baseType: !1110, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!109, !1028, !1113, !7}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1008, file: !14, line: 1923, baseType: !1116, size: 64, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!109, !656, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1121)
!1121 = !{!1122, !1127}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1120, file: !14, line: 1859, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!887, !1119, !453, !109, !499, !260, !7}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1120, file: !14, line: 1860, baseType: !499, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1008, file: !14, line: 1924, baseType: !1129, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!1132, !656, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1133, line: 59, baseType: !7)
!1133 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1008, file: !14, line: 1925, baseType: !1137, size: 64, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!257, !656, !7, !258}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1008, file: !14, line: 1926, baseType: !1137, size: 64, offset: 640)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1008, file: !14, line: 1927, baseType: !1142, size: 64, offset: 704)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!109, !656, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1147)
!1147 = !{!1148, !1157, !1326, !1332, !1339, !1340, !1345, !1346, !1351, !1352, !1355, !1463, !1464, !1465, !1466, !1467, !1468}
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !27, line: 628, baseType: !1149, size: 128)
!1149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !27, line: 628, size: 128, elements: !1150)
!1150 = !{!1151, !1156}
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !27, line: 629, baseType: !1152, size: 128)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1149, file: !27, line: 629, size: 128, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1152, file: !27, line: 631, baseType: !258, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1152, file: !27, line: 632, baseType: !258, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1149, file: !27, line: 635, baseType: !669, size: 128, align: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1146, file: !27, line: 639, baseType: !1158, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1160)
!1160 = !{!1161, !1324}
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1159, file: !27, line: 734, baseType: !1162, size: 10240)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1159, file: !27, line: 734, size: 10240, elements: !1163)
!1163 = !{!1164, !1168, !1182, !1186, !1187, !1188, !1189, !1190, !1191, !1200, !1201, !1202, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1241, !1243, !1246, !1293, !1294, !1295, !1298, !1299, !1300, !1303, !1304, !1305, !1311, !1312}
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !27, line: 739, baseType: !1165, size: 512, align: 512)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1162, file: !27, line: 739, size: 512, align: 512, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1165, file: !27, line: 747, baseType: !413, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1162, file: !27, line: 750, baseType: !1169, size: 128, offset: 512)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1170, line: 218, size: 128, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1171 = !{!1172, !1180, !1181}
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !1170, line: 219, baseType: !1173, size: 32)
!1173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !1170, line: 219, size: 32, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1173, file: !1170, line: 220, baseType: !393, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1173, file: !1170, line: 221, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1170, line: 197, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1170, line: 197, elements: !1179)
!1179 = !{}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1169, file: !1170, line: 223, baseType: !7, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1169, file: !1170, line: 224, baseType: !249, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1162, file: !27, line: 752, baseType: !1183, size: 64, offset: 640)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!258, !656, !258, !258, !258, !258}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1162, file: !27, line: 756, baseType: !258, size: 64, offset: 704)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1162, file: !27, line: 757, baseType: !258, size: 64, offset: 768)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1162, file: !27, line: 760, baseType: !258, size: 64, offset: 832)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1162, file: !27, line: 761, baseType: !258, size: 64, offset: 896)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1162, file: !27, line: 763, baseType: !258, size: 64, offset: 960)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1162, file: !27, line: 764, baseType: !1192, size: 64, offset: 1024)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1194, line: 299, baseType: !1195)
!1194 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1194, line: 299, size: 64, elements: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1195, file: !1194, line: 299, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1199, line: 18, baseType: !258)
!1199 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1162, file: !27, line: 773, baseType: !413, size: 32, offset: 1088)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1162, file: !27, line: 785, baseType: !413, size: 32, offset: 1120)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1162, file: !27, line: 795, baseType: !1203, size: 64, offset: 1152)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1204, file: !27, line: 727, baseType: !260, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1204, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1162, file: !27, line: 801, baseType: !258, size: 64, offset: 1216)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1162, file: !27, line: 804, baseType: !682, size: 64, offset: 1280)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1162, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1162, file: !27, line: 808, baseType: !393, size: 32, offset: 1376)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1162, file: !27, line: 823, baseType: !828, size: 320, offset: 1408)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1162, file: !27, line: 825, baseType: !279, size: 128, offset: 1728)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1162, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1162, file: !27, line: 849, baseType: !258, size: 64, offset: 1920)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1162, file: !27, line: 850, baseType: !258, size: 64, offset: 1984)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1162, file: !27, line: 852, baseType: !258, size: 64, offset: 2048)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1162, file: !27, line: 853, baseType: !258, size: 64, offset: 2112)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1162, file: !27, line: 854, baseType: !684, size: 64, offset: 2176)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1162, file: !27, line: 855, baseType: !258, size: 64, offset: 2240)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1162, file: !27, line: 856, baseType: !258, size: 64, offset: 2304)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1162, file: !27, line: 857, baseType: !258, size: 64, offset: 2368)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1162, file: !27, line: 858, baseType: !258, size: 64, offset: 2432)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1162, file: !27, line: 865, baseType: !345, size: 32, offset: 2496)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1162, file: !27, line: 867, baseType: !393, size: 32, offset: 2528)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1162, file: !27, line: 869, baseType: !258, size: 64, offset: 2560)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1162, file: !27, line: 869, baseType: !258, size: 64, offset: 2624)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1162, file: !27, line: 869, baseType: !258, size: 64, offset: 2688)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1162, file: !27, line: 869, baseType: !258, size: 64, offset: 2752)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1162, file: !27, line: 870, baseType: !258, size: 64, offset: 2816)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1162, file: !27, line: 870, baseType: !258, size: 64, offset: 2880)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1162, file: !27, line: 870, baseType: !258, size: 64, offset: 2944)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1162, file: !27, line: 871, baseType: !258, size: 64, offset: 3008)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1162, file: !27, line: 871, baseType: !258, size: 64, offset: 3072)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1162, file: !27, line: 871, baseType: !258, size: 64, offset: 3136)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1162, file: !27, line: 871, baseType: !258, size: 64, offset: 3200)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1162, file: !27, line: 873, baseType: !1238, size: 3328, offset: 3264)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 3328, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 52)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1162, file: !27, line: 875, baseType: !1242, size: 1280, offset: 6592)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 1280, elements: !752)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1162, file: !27, line: 877, baseType: !1244, size: 64, offset: 7872)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1162, file: !27, line: 880, baseType: !1247, size: 1088, offset: 7936)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1248, line: 72, baseType: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1248, line: 23, size: 1088, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1258, !1259, !1260, !1261, !1288, !1289, !1290}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1249, file: !1248, line: 28, baseType: !260, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1249, file: !1248, line: 38, baseType: !684, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1249, file: !1248, line: 40, baseType: !258, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1249, file: !1248, line: 43, baseType: !828, size: 320, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1249, file: !1248, line: 44, baseType: !1256, size: 64, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1248, line: 44, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1249, file: !1248, line: 48, baseType: !258, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1249, file: !1248, line: 59, baseType: !691, size: 256, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1249, file: !1248, line: 60, baseType: !249, size: 64, offset: 896)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1249, file: !1248, line: 61, baseType: !1262, size: 64, offset: 960)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1265, line: 13, size: 1216, elements: !1266)
!1265 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1264, file: !1265, line: 14, baseType: !249, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1264, file: !1265, line: 15, baseType: !258, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1264, file: !1265, line: 17, baseType: !258, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1264, file: !1265, line: 17, baseType: !258, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1264, file: !1265, line: 18, baseType: !258, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1264, file: !1265, line: 18, baseType: !258, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1264, file: !1265, line: 19, baseType: !1274, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1264, file: !1265, line: 21, baseType: !257, size: 64, offset: 448)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1264, file: !1265, line: 23, baseType: !257, size: 64, offset: 512)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1264, file: !1265, line: 24, baseType: !257, size: 64, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1264, file: !1265, line: 25, baseType: !257, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1264, file: !1265, line: 26, baseType: !257, size: 64, offset: 704)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1264, file: !1265, line: 27, baseType: !257, size: 64, offset: 768)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1264, file: !1265, line: 28, baseType: !257, size: 64, offset: 832)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1264, file: !1265, line: 29, baseType: !257, size: 64, offset: 896)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1264, file: !1265, line: 30, baseType: !257, size: 64, offset: 960)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1264, file: !1265, line: 31, baseType: !257, size: 64, offset: 1024)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1264, file: !1265, line: 32, baseType: !257, size: 64, offset: 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1264, file: !1265, line: 33, baseType: !257, size: 64, offset: 1152)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1249, file: !1248, line: 63, baseType: !413, size: 32, offset: 1024)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1249, file: !1248, line: 69, baseType: !428, size: 16, offset: 1056)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1249, file: !1248, line: 70, baseType: !1291, size: 16, offset: 1072)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !261, line: 18, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !263, line: 23, baseType: !856)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1162, file: !27, line: 882, baseType: !258, size: 64, offset: 9024)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1162, file: !27, line: 885, baseType: !393, size: 32, offset: 9088)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1162, file: !27, line: 886, baseType: !1296, size: 64, offset: 9152)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1162, file: !27, line: 901, baseType: !970, size: 64, offset: 9216)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1162, file: !27, line: 904, baseType: !656, size: 64, offset: 9280)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1162, file: !27, line: 906, baseType: !1301, size: 64, offset: 9344)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1162, file: !27, line: 930, baseType: !413, size: 32, offset: 9408)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1162, file: !27, line: 933, baseType: !413, size: 32, offset: 9440)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1162, file: !27, line: 935, baseType: !1306, size: 64, offset: 9472)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1306, file: !68, line: 104, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1162, file: !27, line: 940, baseType: !682, size: 64, offset: 9536)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1162, file: !27, line: 942, baseType: !1313, size: 256, offset: 9600)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1314, line: 98, size: 256, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1313, file: !1314, line: 99, baseType: !682, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1313, file: !1314, line: 100, baseType: !279, size: 128, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1313, file: !1314, line: 101, baseType: !1319, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1314, line: 21, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1159, file: !27, line: 986, baseType: !1325, offset: 10240)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, elements: !771)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1146, file: !27, line: 640, baseType: !1327, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1194, line: 297, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1194, line: 297, size: 64, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1328, file: !1194, line: 297, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1199, line: 19, baseType: !258)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !27, line: 646, baseType: !1333, size: 64, offset: 256)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !27, line: 646, size: 64, elements: !1334)
!1334 = !{!1335, !1338}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1333, file: !27, line: 647, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !258)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1333, file: !27, line: 648, baseType: !1337, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1146, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1146, file: !27, line: 667, baseType: !1341, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1342, file: !27, line: 580, baseType: !828, size: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1146, file: !27, line: 670, baseType: !887, size: 8, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1146, file: !27, line: 681, baseType: !1347, size: 256, offset: 512)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !27, line: 678, size: 256, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1347, file: !27, line: 679, baseType: !820, size: 192, align: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1347, file: !27, line: 680, baseType: !258, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1146, file: !27, line: 689, baseType: !279, size: 128, offset: 768)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1146, file: !27, line: 691, baseType: !1353, size: 64, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1146, file: !27, line: 694, baseType: !1356, size: 64, offset: 960)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1359, line: 563, size: 1024, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1360 = !{!1361, !1365, !1366, !1370, !1374, !1378, !1427, !1431, !1435, !1439, !1440, !1441, !1445, !1449, !1455, !1459}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1358, file: !1359, line: 564, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1145}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1358, file: !1359, line: 569, baseType: !1362, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1358, file: !1359, line: 571, baseType: !1367, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!109, !1145, !258}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1358, file: !1359, line: 572, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!109, !1145}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1358, file: !1359, line: 578, baseType: !1375, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!109, !1145, !258, !258, !258}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1358, file: !1359, line: 580, baseType: !1379, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1359, line: 512, size: 896, elements: !1385)
!1385 = !{!1386, !1394, !1395, !1402, !1409, !1419, !1420, !1421, !1423, !1425}
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !1359, line: 513, baseType: !1387, size: 320)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1384, file: !1359, line: 513, size: 320, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1387, file: !1359, line: 514, baseType: !1145, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1387, file: !1359, line: 515, baseType: !250, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1387, file: !1359, line: 516, baseType: !258, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1387, file: !1359, line: 517, baseType: !258, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1387, file: !1359, line: 518, baseType: !258, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !1359, line: 520, baseType: !26, size: 32, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1384, file: !1359, line: 522, baseType: !1396, size: 64, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1199, line: 22, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1199, line: 22, size: 64, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1398, file: !1199, line: 22, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1199, line: 15, baseType: !258)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1384, file: !1359, line: 524, baseType: !1403, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1194, line: 372, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1194, line: 372, size: 64, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1405, file: !1194, line: 372, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1199, line: 16, baseType: !258)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !1359, line: 527, baseType: !1410, size: 64, offset: 512)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !1359, line: 527, size: 64, elements: !1411)
!1411 = !{!1412, !1418}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1410, file: !1359, line: 528, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1199, line: 21, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1199, line: 21, size: 64, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1414, file: !1199, line: 21, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1199, line: 14, baseType: !258)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1410, file: !1359, line: 529, baseType: !1397, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1384, file: !1359, line: 534, baseType: !265, size: 64, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1384, file: !1359, line: 535, baseType: !265, size: 64, offset: 640)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1384, file: !1359, line: 541, baseType: !1422, size: 64, offset: 704)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1384, file: !1359, line: 545, baseType: !1424, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1384, file: !1359, line: 549, baseType: !1426, size: 64, offset: 832)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1194, line: 520, baseType: !265)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1358, file: !1359, line: 581, baseType: !1428, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1382, !1383, !7}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1358, file: !1359, line: 582, baseType: !1432, size: 64, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!1382, !1383, !258, !258}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1358, file: !1359, line: 584, baseType: !1436, size: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!258, !1145}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1358, file: !1359, line: 588, baseType: !1379, size: 64, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1358, file: !1359, line: 591, baseType: !1379, size: 64, offset: 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1358, file: !1359, line: 597, baseType: !1442, size: 64, offset: 704)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!109, !1145, !258, !249, !109, !109}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1358, file: !1359, line: 603, baseType: !1446, size: 64, offset: 768)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!453, !1145}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1358, file: !1359, line: 613, baseType: !1450, size: 64, offset: 832)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!109, !1145, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1358, file: !1359, line: 625, baseType: !1456, size: 64, offset: 896)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1453, !1145, !258}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1358, file: !1359, line: 633, baseType: !1460, size: 64, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!265, !1145, !258}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1146, file: !27, line: 697, baseType: !258, size: 64, offset: 1024)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1146, file: !27, line: 699, baseType: !656, size: 64, offset: 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1146, file: !27, line: 700, baseType: !249, size: 64, offset: 1152)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1146, file: !27, line: 711, baseType: !682, size: 64, offset: 1216)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1146, file: !27, line: 717, baseType: !1453, size: 64, offset: 1280)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1146, file: !27, line: 722, baseType: !1469, offset: 1344)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !1179)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1008, file: !14, line: 1928, baseType: !258, size: 64, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1008, file: !14, line: 1929, baseType: !1472, size: 64, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!109, !296, !656}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1008, file: !14, line: 1930, baseType: !1476, size: 64, offset: 896)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!109, !656, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !249)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1008, file: !14, line: 1931, baseType: !1472, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1008, file: !14, line: 1932, baseType: !1482, size: 64, offset: 1024)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!109, !656, !499, !499, !109}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1008, file: !14, line: 1933, baseType: !1486, size: 64, offset: 1088)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!109, !109, !656, !109}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1008, file: !14, line: 1934, baseType: !1490, size: 64, offset: 1152)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!109, !656, !109, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1008, file: !14, line: 1935, baseType: !1183, size: 64, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1008, file: !14, line: 1936, baseType: !1497, size: 64, offset: 1280)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!109, !109}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1008, file: !14, line: 1937, baseType: !1490, size: 64, offset: 1344)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1008, file: !14, line: 1938, baseType: !1502, size: 64, offset: 1408)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!612, !1505, !656, !1019, !624, !7}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1507, line: 59, flags: DIFlagFwdDecl)
!1507 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1008, file: !14, line: 1939, baseType: !1509, size: 64, offset: 1472)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!612, !656, !1019, !1505, !624, !7}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1008, file: !14, line: 1940, baseType: !1513, size: 64, offset: 1536)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !656}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1008, file: !14, line: 1941, baseType: !1517, size: 64, offset: 1600)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!109, !656, !109, !1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1008, file: !14, line: 1942, baseType: !1523, size: 64, offset: 1664)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!257, !656, !109, !499, !499}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1008, file: !14, line: 1944, baseType: !1527, size: 64, offset: 1728)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1530, !656}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1532, line: 17, size: 960, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1563, !1564, !1567}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1531, file: !1532, line: 18, baseType: !478, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1531, file: !1532, line: 19, baseType: !624, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1531, file: !1532, line: 20, baseType: !624, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1531, file: !1532, line: 21, baseType: !624, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1531, file: !1532, line: 22, baseType: !624, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1531, file: !1532, line: 23, baseType: !499, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1531, file: !1532, line: 24, baseType: !499, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1531, file: !1532, line: 25, baseType: !691, size: 256, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1531, file: !1532, line: 26, baseType: !1543, size: 64, offset: 704)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1532, line: 32, size: 256, elements: !1546)
!1546 = !{!1547, !1551, !1555, !1559}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1545, file: !1532, line: 33, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!249, !1530, !1019}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1545, file: !1532, line: 34, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !1530, !249}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1545, file: !1532, line: 35, baseType: !1556, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!249, !1530, !249, !1019}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1545, file: !1532, line: 36, baseType: !1560, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!109, !1530, !249}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1531, file: !1532, line: 27, baseType: !109, size: 32, offset: 768)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1531, file: !1532, line: 28, baseType: !1565, size: 64, offset: 832)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1531, file: !1532, line: 29, baseType: !249, size: 64, offset: 896)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1008, file: !14, line: 1948, baseType: !1569, size: 64, offset: 1792)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!612, !656, !499, !656, !499, !624, !7}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1008, file: !14, line: 1950, baseType: !1573, size: 64, offset: 1856)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!499, !656, !499, !656, !499, !499, !7}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1008, file: !14, line: 1953, baseType: !1482, size: 64, offset: 1920)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1008, file: !14, line: 1954, baseType: !1578, size: 64, offset: 1984)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!109, !1581, !7}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1008, file: !14, line: 1955, baseType: !1584, size: 64, offset: 2048)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!109, !1581, !1113, !7}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !657, file: !14, line: 1018, baseType: !260, size: 64, offset: 1472)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !657, file: !14, line: 1020, baseType: !249, size: 64, offset: 1536)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !657, file: !14, line: 1023, baseType: !249, size: 64, offset: 1600)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !657, file: !14, line: 1027, baseType: !1591, size: 64, offset: 1664)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !657, file: !14, line: 1029, baseType: !292, size: 64, offset: 1728)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !657, file: !14, line: 1030, baseType: !1594, size: 32, offset: 1792)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1595, line: 8, baseType: !368)
!1595 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !657, file: !14, line: 1031, baseType: !1594, size: 32, offset: 1824)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !643, file: !606, line: 182, baseType: !653, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !643, file: !606, line: 184, baseType: !1599, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!109, !656, !546, !642, !1145}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !631, file: !606, line: 90, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !631, file: !606, line: 91, baseType: !1605, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !596, file: !541, line: 120, baseType: !1607, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1610, !564}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1613)
!1613 = !{!1614, !1615, !1619, !1623, !1629, !1633}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1612, file: !82, line: 40, baseType: !81, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1612, file: !82, line: 41, baseType: !1616, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!887}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1612, file: !82, line: 42, baseType: !1620, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!249}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1612, file: !82, line: 43, baseType: !1624, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!1274, !1627}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1612, file: !82, line: 44, baseType: !1630, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1274}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1612, file: !82, line: 45, baseType: !1634, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !249}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !596, file: !541, line: 121, baseType: !1638, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1274, !564}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !596, file: !541, line: 122, baseType: !1642, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !564, !1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !540, file: !541, line: 70, baseType: !1648, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1650, line: 190, size: 1152, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1734, !1735, !1736, !1737, !1738, !1741}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1649, file: !1650, line: 191, baseType: !413, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1649, file: !1650, line: 192, baseType: !413, size: 32, offset: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1649, file: !1650, line: 202, baseType: !1648, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1649, file: !1650, line: 203, baseType: !453, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1649, file: !1650, line: 205, baseType: !820, size: 192, align: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1649, file: !1650, line: 207, baseType: !1274, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1649, file: !1650, line: 208, baseType: !7, size: 32, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1649, file: !1650, line: 209, baseType: !1660, size: 256, offset: 512)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1649, file: !1650, line: 209, size: 256, elements: !1661)
!1661 = !{!1662, !1674, !1678}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1660, file: !1650, line: 210, baseType: !1663, size: 256)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1650, line: 153, size: 256, elements: !1664)
!1664 = !{!1665, !1666, !1670, !1673}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1663, file: !1650, line: 154, baseType: !258, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1663, file: !1650, line: 156, baseType: !1667, size: 64, offset: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !821, line: 12, size: 64, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1667, file: !821, line: 13, baseType: !825, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1663, file: !1650, line: 162, baseType: !1671, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1650, line: 162, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1663, file: !1650, line: 167, baseType: !258, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1660, file: !1650, line: 211, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1650, line: 170, size: 64, elements: !1676)
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1675, file: !1650, line: 171, baseType: !1648, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1660, file: !1650, line: 212, baseType: !1679, size: 256)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1650, line: 174, size: 256, elements: !1680)
!1680 = !{!1681, !1729, !1732, !1733}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1679, file: !1650, line: 175, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1650, line: 271, size: 768, elements: !1685)
!1685 = !{!1686, !1706, !1710, !1711, !1712, !1713, !1714, !1718, !1719, !1720, !1721, !1725}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1684, file: !1650, line: 276, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!109, !1690}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1650, line: 251, size: 1216, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1691, file: !1650, line: 253, baseType: !1648, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1691, file: !1650, line: 254, baseType: !656, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1691, file: !1650, line: 255, baseType: !1530, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1691, file: !1650, line: 256, baseType: !249, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1691, file: !1650, line: 259, baseType: !691, size: 256, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1691, file: !1650, line: 260, baseType: !691, size: 256, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1691, file: !1650, line: 261, baseType: !109, size: 32, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1691, file: !1650, line: 262, baseType: !279, size: 128, offset: 832)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1691, file: !1650, line: 263, baseType: !478, size: 64, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1691, file: !1650, line: 265, baseType: !624, size: 64, offset: 1024)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1691, file: !1650, line: 266, baseType: !887, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1691, file: !1650, line: 267, baseType: !887, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1691, file: !1650, line: 268, baseType: !1356, size: 64, offset: 1152)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1684, file: !1650, line: 277, baseType: !1707, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !1690}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1684, file: !1650, line: 290, baseType: !1560, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1684, file: !1650, line: 292, baseType: !1548, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1684, file: !1650, line: 293, baseType: !1556, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1684, file: !1650, line: 294, baseType: !1552, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1684, file: !1650, line: 296, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!612, !1690, !478, !624, !499}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1684, file: !1650, line: 306, baseType: !624, size: 64, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1684, file: !1650, line: 313, baseType: !887, size: 8, offset: 512)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1684, file: !1650, line: 314, baseType: !1715, size: 64, offset: 576)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1684, file: !1650, line: 317, baseType: !1722, size: 64, offset: 640)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1132, !1690, !1134}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1684, file: !1650, line: 320, baseType: !1726, size: 64, offset: 704)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!109, !1690, !1145}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1679, file: !1650, line: 176, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1650, line: 35, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1679, file: !1650, line: 177, baseType: !499, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1679, file: !1650, line: 178, baseType: !1648, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1649, file: !1650, line: 215, baseType: !249, size: 64, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1649, file: !1650, line: 221, baseType: !260, size: 64, offset: 832)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1649, file: !1650, line: 223, baseType: !301, size: 16, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1649, file: !1650, line: 224, baseType: !300, size: 16, offset: 912)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1649, file: !1650, line: 225, baseType: !1739, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1650, line: 36, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1649, file: !1650, line: 227, baseType: !669, size: 128, align: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !540, file: !541, line: 71, baseType: !1743, size: 32, offset: 448)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1744, line: 19, size: 32, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1743, file: !1744, line: 20, baseType: !734, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !540, file: !541, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !540, file: !541, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !540, file: !541, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !540, file: !541, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !540, file: !541, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !537, file: !6, line: 47, baseType: !527, size: 64, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !537, file: !6, line: 48, baseType: !546, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !537, file: !6, line: 49, baseType: !1755, size: 64, offset: 640)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !537, file: !6, line: 50, baseType: !1758, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1760, line: 26, size: 256, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1759, file: !1760, line: 27, baseType: !7, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1759, file: !1760, line: 28, baseType: !1764, size: 192, offset: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1765, line: 43, size: 192, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1764, file: !1765, line: 44, baseType: !696, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1764, file: !1765, line: 45, baseType: !279, size: 128, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !528, file: !6, line: 418, baseType: !1770, size: 64, offset: 1408)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1772)
!1772 = !{!1773, !1774, !1779, !1783, !1787, !1791}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1771, file: !6, line: 54, baseType: !616, size: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1771, file: !6, line: 55, baseType: !1775, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!612, !1770, !1778, !478}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1771, file: !6, line: 57, baseType: !1780, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!612, !1770, !1778, !453, !624}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1771, file: !6, line: 59, baseType: !1784, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !527, !453}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1771, file: !6, line: 60, baseType: !1788, size: 64, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!109, !527}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1771, file: !6, line: 61, baseType: !1792, size: 64, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !527}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !528, file: !6, line: 419, baseType: !453, size: 64, offset: 1472)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !528, file: !6, line: 420, baseType: !453, size: 64, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !528, file: !6, line: 421, baseType: !546, size: 64, offset: 1600)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !528, file: !6, line: 424, baseType: !1799, size: 64, offset: 1664)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1801)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !528, file: !6, line: 425, baseType: !1803, size: 64, offset: 1728)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !528, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !528, file: !6, line: 435, baseType: !691, size: 256, offset: 1856)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !528, file: !6, line: 437, baseType: !1808, size: 64, offset: 2112)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1810, line: 69, size: 320, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1811 = !{!1812, !1813, !1814, !1831, !1833, !1837, !1838}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1809, file: !1810, line: 70, baseType: !453, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1809, file: !1810, line: 71, baseType: !527, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1809, file: !1810, line: 72, baseType: !1815, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1817)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1810, line: 47, size: 256, elements: !1818)
!1818 = !{!1819, !1820, !1826, !1830}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1817, file: !1810, line: 49, baseType: !7, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1817, file: !1810, line: 51, baseType: !1821, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!109, !453, !1824}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1809)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1817, file: !1810, line: 53, baseType: !1827, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!109, !478, !1824}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1817, file: !1810, line: 55, baseType: !1634, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1809, file: !1810, line: 73, baseType: !1832, size: 16, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1809, file: !1810, line: 74, baseType: !1834, size: 8, offset: 208)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !261, line: 16, baseType: !1835)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !263, line: 20, baseType: !1836)
!1836 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1810, line: 75, baseType: !421, size: 8, offset: 216)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1810, line: 76, baseType: !1839, size: 64, offset: 256)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1810, line: 76, size: 64, elements: !1840)
!1840 = !{!1841, !1842, !1849}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1839, file: !1810, line: 77, baseType: !249, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1839, file: !1810, line: 78, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1810, line: 86, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1845, file: !1810, line: 87, baseType: !7, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1845, file: !1810, line: 88, baseType: !478, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1839, file: !1810, line: 79, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1810, line: 92, size: 256, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1858, !1859}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1852, file: !1810, line: 94, baseType: !7, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1852, file: !1810, line: 95, baseType: !7, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1852, file: !1810, line: 96, baseType: !1857, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1852, file: !1810, line: 97, baseType: !1815, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1852, file: !1810, line: 98, baseType: !249, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !528, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !528, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !528, file: !6, line: 442, baseType: !1799, size: 64, offset: 2240)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !528, file: !6, line: 443, baseType: !1803, size: 64, offset: 2304)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !528, file: !6, line: 444, baseType: !887, size: 8, offset: 2368)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !528, file: !6, line: 451, baseType: !887, size: 8, offset: 2376)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !528, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !528, file: !6, line: 455, baseType: !1868, size: 64, offset: 2432)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1870, line: 23, size: 96, elements: !1871)
!1870 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1869, file: !1870, line: 24, baseType: !109, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1869, file: !1870, line: 24, baseType: !109, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1869, file: !1870, line: 24, baseType: !109, size: 32, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !528, file: !6, line: 458, baseType: !1876, size: 64, offset: 2496)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!109}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !528, file: !6, line: 460, baseType: !1880, size: 4032, align: 512, offset: 2560)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1881, size: 4032, elements: !1897)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1881, file: !6, line: 363, baseType: !249, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1881, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1881, file: !6, line: 367, baseType: !1886, size: 448, offset: 128)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1886, file: !6, line: 320, baseType: !527, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1886, file: !6, line: 321, baseType: !1890, size: 384, offset: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1891, line: 40, size: 384, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1890, file: !1891, line: 41, baseType: !1894, size: 384, align: 64)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 384, align: 64, elements: !1895)
!1895 = !{!1896}
!1896 = !DISubrange(count: 2)
!1897 = !{!1898}
!1898 = !DISubrange(count: 7)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !528, file: !6, line: 463, baseType: !1900, size: 192, offset: 6592)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1901, line: 8, size: 192, elements: !1902)
!1901 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1902 = !{!1903, !1904, !1906}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1900, file: !1901, line: 10, baseType: !7, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1900, file: !1901, line: 11, baseType: !1905, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1900, file: !1901, line: 12, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1909, line: 59, size: 48, elements: !1910)
!1909 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1908, file: !1909, line: 60, baseType: !1291, size: 16)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1908, file: !1909, line: 61, baseType: !1291, size: 16, offset: 16)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1908, file: !1909, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1908, file: !1909, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1908, file: !1909, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1908, file: !1909, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !528, file: !6, line: 465, baseType: !258, size: 64, offset: 6784)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !528, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !528, file: !6, line: 470, baseType: !279, size: 128, offset: 6912)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !528, file: !6, line: 471, baseType: !1921, size: 64, offset: 7040)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1923, line: 33, size: 96, elements: !1924)
!1923 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1924 = !{!1925, !1926, !1927, !1928}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1922, file: !1923, line: 37, baseType: !109, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1922, file: !1923, line: 43, baseType: !109, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1922, file: !1923, line: 45, baseType: !301, size: 16, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1922, file: !1923, line: 47, baseType: !301, size: 16, offset: 80)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !528, file: !6, line: 476, baseType: !1930, size: 64, offset: 7104)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1932)
!1932 = !{!1933, !1949, !1950, !1951}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1931, file: !6, line: 379, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1936, line: 204, baseType: !1937)
!1936 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1936, line: 197, size: 192, elements: !1938)
!1938 = !{!1939, !1941, !1942, !1943, !1945, !1947}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1937, file: !1936, line: 198, baseType: !1940, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1936, line: 21, baseType: !369)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1937, file: !1936, line: 199, baseType: !375, size: 8, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1937, file: !1936, line: 200, baseType: !375, size: 8, offset: 40)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1937, file: !1936, line: 201, baseType: !1944, size: 16, offset: 48)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1936, line: 17, baseType: !429)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1937, file: !1936, line: 202, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1936, line: 16, baseType: !262)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1937, file: !1936, line: 203, baseType: !1948, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1936, line: 22, baseType: !262)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1931, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1931, file: !6, line: 381, baseType: !478, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1931, file: !6, line: 382, baseType: !478, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !528, file: !6, line: 477, baseType: !1931, size: 256, offset: 7168)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !528, file: !6, line: 480, baseType: !1954, size: 64, offset: 7424)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !528, file: !6, line: 483, baseType: !1957, size: 64, offset: 7488)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !528, file: !6, line: 488, baseType: !478, size: 64, offset: 7552)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !528, file: !6, line: 492, baseType: !249, size: 64, offset: 7616)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !528, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !528, file: !6, line: 495, baseType: !249, size: 64, offset: 7744)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !528, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !528, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !528, file: !6, line: 500, baseType: !1966, size: 64, offset: 7872)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1968, line: 45, baseType: !1969)
!1968 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !528, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !528, file: !6, line: 504, baseType: !1972, size: 64, offset: 8000)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1975, line: 96, size: 192, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1976 = !{!1977, !1978, !2032, !2035}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1974, file: !1975, line: 97, baseType: !7, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1974, file: !1975, line: 98, baseType: !1979, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1975, line: 24, size: 3072, elements: !1981)
!1981 = !{!1982, !1984, !1985, !1986, !1987, !2001, !2002, !2003, !2004, !2016, !2017, !2018, !2029, !2030, !2031}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1980, file: !1975, line: 26, baseType: !1983, size: 128)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 128, elements: !1895)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1980, file: !1975, line: 27, baseType: !1983, size: 128, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1980, file: !1975, line: 28, baseType: !109, size: 32, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1980, file: !1975, line: 31, baseType: !393, size: 32, align: 512, offset: 512)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1980, file: !1975, line: 32, baseType: !1988, size: 960, offset: 576)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1989, line: 206, size: 960, elements: !1990)
!1989 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1990 = !{!1991, !1992, !1995, !1997, !1998, !2000}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1988, file: !1989, line: 207, baseType: !672, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1988, file: !1989, line: 208, baseType: !1993, size: 256, offset: 64)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1994, size: 256, elements: !752)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1988, file: !1989, line: 209, baseType: !1996, size: 256, offset: 320)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 256, elements: !752)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1988, file: !1989, line: 213, baseType: !257, size: 64, offset: 576)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1988, file: !1989, line: 215, baseType: !1999, size: 256, offset: 640)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !752)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1988, file: !1989, line: 216, baseType: !421, size: 8, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1980, file: !1975, line: 33, baseType: !258, size: 64, offset: 1536)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1980, file: !1975, line: 34, baseType: !258, size: 64, offset: 1600)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1980, file: !1975, line: 35, baseType: !887, size: 8, offset: 1664)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1980, file: !1975, line: 36, baseType: !2005, size: 320, offset: 1728)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2006, line: 11, size: 320, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2007 = !{!2008, !2009, !2010, !2015}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2005, file: !2006, line: 16, baseType: !747, size: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2005, file: !2006, line: 17, baseType: !258, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2005, file: !2006, line: 18, baseType: !2011, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2005, file: !2006, line: 19, baseType: !368, size: 32, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1980, file: !1975, line: 37, baseType: !1313, size: 256, offset: 2048)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1980, file: !1975, line: 38, baseType: !669, size: 128, align: 64, offset: 2304)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1980, file: !1975, line: 39, baseType: !2019, size: 64, offset: 2432)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1975, line: 49, size: 768, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2020, file: !1975, line: 50, baseType: !393, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2020, file: !1975, line: 51, baseType: !1996, size: 256, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2020, file: !1975, line: 53, baseType: !1996, size: 256, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2020, file: !1975, line: 54, baseType: !258, size: 64, offset: 576)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2020, file: !1975, line: 55, baseType: !2019, size: 64, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2020, file: !1975, line: 56, baseType: !109, size: 32, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2020, file: !1975, line: 57, baseType: !109, size: 32, offset: 736)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1980, file: !1975, line: 40, baseType: !258, size: 64, offset: 2496)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1980, file: !1975, line: 42, baseType: !109, size: 32, offset: 2560)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1980, file: !1975, line: 43, baseType: !1973, size: 64, offset: 2624)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1974, file: !1975, line: 99, baseType: !2033, offset: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2034, line: 211, elements: !1179)
!2034 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1974, file: !1975, line: 100, baseType: !2036, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1975, line: 63, size: 3008, elements: !2038)
!2038 = !{!2039, !2040, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2070}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2037, file: !1975, line: 64, baseType: !2019, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2037, file: !1975, line: 65, baseType: !2041, size: 192, offset: 64)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2019, size: 192, elements: !581)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2037, file: !1975, line: 67, baseType: !109, size: 32, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2037, file: !1975, line: 68, baseType: !691, size: 256, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2037, file: !1975, line: 69, baseType: !393, size: 32, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2037, file: !1975, line: 70, baseType: !691, size: 256, offset: 640)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2037, file: !1975, line: 71, baseType: !258, size: 64, offset: 896)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2037, file: !1975, line: 72, baseType: !258, size: 64, offset: 960)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2037, file: !1975, line: 73, baseType: !258, size: 64, offset: 1024)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2037, file: !1975, line: 74, baseType: !258, size: 64, offset: 1088)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2037, file: !1975, line: 75, baseType: !258, size: 64, offset: 1152)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2037, file: !1975, line: 76, baseType: !258, size: 64, offset: 1216)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2037, file: !1975, line: 77, baseType: !258, size: 64, offset: 1280)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2037, file: !1975, line: 78, baseType: !258, size: 64, offset: 1344)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2037, file: !1975, line: 79, baseType: !887, size: 8, offset: 1408)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2037, file: !1975, line: 80, baseType: !258, size: 64, offset: 1472)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2037, file: !1975, line: 81, baseType: !691, size: 256, offset: 1536)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2037, file: !1975, line: 82, baseType: !1759, size: 256, offset: 1792)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2037, file: !1975, line: 84, baseType: !413, size: 32, offset: 2048)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2037, file: !1975, line: 87, baseType: !258, size: 64, offset: 2112)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2037, file: !1975, line: 88, baseType: !258, size: 64, offset: 2176)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2037, file: !1975, line: 89, baseType: !2062, size: 704, offset: 2240)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1314, line: 111, size: 704, elements: !2063)
!2063 = !{!2064, !2065, !2066, !2069}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2062, file: !1314, line: 112, baseType: !1313, size: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2062, file: !1314, line: 113, baseType: !2005, size: 320, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2062, file: !1314, line: 116, baseType: !2067, size: 64, offset: 576)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1314, line: 18, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2062, file: !1314, line: 117, baseType: !109, size: 32, offset: 640)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2037, file: !1975, line: 90, baseType: !1973, size: 64, offset: 2944)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !528, file: !6, line: 515, baseType: !2072, size: 64, offset: 8064)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2074, line: 117, size: 128, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2075 = !{!2076, !2077, !2078}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2073, file: !2074, line: 118, baseType: !813, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2073, file: !2074, line: 119, baseType: !813, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2073, file: !2074, line: 120, baseType: !257, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !528, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !528, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !528, file: !6, line: 520, baseType: !2082, size: 64, offset: 8192)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !528, file: !6, line: 523, baseType: !2084, size: 64, offset: 8256)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !528, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !528, file: !6, line: 525, baseType: !2089, size: 64, offset: 8384)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !528, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !528, file: !6, line: 533, baseType: !249, size: 64, offset: 8512)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !528, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !528, file: !6, line: 535, baseType: !2096, size: 64, offset: 8640)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !528, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !528, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !528, file: !6, line: 540, baseType: !2100, size: 64, offset: 8768)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2102, line: 32, size: 64, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2101, file: !2102, line: 33, baseType: !813, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2101, file: !2102, line: 34, baseType: !813, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !528, file: !6, line: 563, baseType: !279, size: 128, offset: 8832)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !528, file: !6, line: 565, baseType: !279, size: 128, offset: 8960)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !528, file: !6, line: 568, baseType: !2109, size: 64, offset: 9088)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !528, file: !6, line: 570, baseType: !413, size: 32, offset: 9152)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !14, line: 2382, baseType: !503, size: 64, offset: 448)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !504, file: !14, line: 2383, baseType: !743, size: 64, offset: 512)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !504, file: !14, line: 2385, baseType: !2116, offset: 576)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2034, line: 206, elements: !1179)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !504, file: !14, line: 2386, baseType: !2116, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !504, file: !14, line: 2387, baseType: !2116, offset: 576)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !504, file: !14, line: 2388, baseType: !2120, offset: 576)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2116, elements: !581)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !504, file: !14, line: 2390, baseType: !2116, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !504, file: !14, line: 2391, baseType: !2116, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !504, file: !14, line: 2392, baseType: !2116, offset: 576)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !504, file: !14, line: 2393, baseType: !2116, offset: 576)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !490, file: !14, line: 1197, baseType: !2126, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2129)
!2129 = !{!2130, !2134, !2138, !2139, !2143, !2149, !2153, !2154, !2155, !2159, !2163, !2167, !2168, !2169, !2175, !2179, !2180, !2184, !2185, !2186, !2187, !2191, !2195, !2242, !2257, !2258}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2128, file: !14, line: 2058, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!296, !489}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2128, file: !14, line: 2059, baseType: !2135, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !296}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2128, file: !14, line: 2060, baseType: !2135, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2128, file: !14, line: 2062, baseType: !2140, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !296, !109}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2128, file: !14, line: 2063, baseType: !2144, size: 64, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!109, !296, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2128, file: !14, line: 2064, baseType: !2150, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!109, !296}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2128, file: !14, line: 2065, baseType: !2135, size: 64, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2128, file: !14, line: 2066, baseType: !523, size: 64, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2128, file: !14, line: 2067, baseType: !2156, size: 64, offset: 512)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!109, !489, !109}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2128, file: !14, line: 2068, baseType: !2160, size: 64, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!109, !489, !13}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2128, file: !14, line: 2069, baseType: !2164, size: 64, offset: 640)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!109, !489}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2128, file: !14, line: 2070, baseType: !2160, size: 64, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2128, file: !14, line: 2071, baseType: !2164, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2128, file: !14, line: 2072, baseType: !2170, size: 64, offset: 832)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!109, !334, !2173}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2128, file: !14, line: 2073, baseType: !2176, size: 64, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!109, !489, !1905, !478}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2128, file: !14, line: 2074, baseType: !523, size: 64, offset: 960)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2128, file: !14, line: 2076, baseType: !2181, size: 64, offset: 1024)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!109, !1530, !334}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2128, file: !14, line: 2077, baseType: !2181, size: 64, offset: 1088)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2128, file: !14, line: 2078, baseType: !2181, size: 64, offset: 1152)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2128, file: !14, line: 2079, baseType: !2181, size: 64, offset: 1216)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2128, file: !14, line: 2081, baseType: !2188, size: 64, offset: 1280)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!612, !489, !109, !478, !624, !499}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2128, file: !14, line: 2082, baseType: !2192, size: 64, offset: 1344)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!612, !489, !109, !453, !624, !499}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2128, file: !14, line: 2083, baseType: !2196, size: 64, offset: 1408)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2199, !296}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2227, !2228, !2229}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2201, file: !51, line: 297, baseType: !747, size: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2201, file: !51, line: 298, baseType: !279, size: 128, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2201, file: !51, line: 299, baseType: !279, size: 128, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2201, file: !51, line: 300, baseType: !279, size: 128, offset: 384)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2201, file: !51, line: 301, baseType: !691, size: 256, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2201, file: !51, line: 302, baseType: !393, size: 32, offset: 768)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2201, file: !51, line: 303, baseType: !413, size: 32, offset: 800)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2201, file: !51, line: 304, baseType: !489, size: 64, offset: 832)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2201, file: !51, line: 305, baseType: !2212, size: 64, offset: 896)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2213)
!2213 = !{!2214, !2226}
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !51, line: 69, baseType: !2215, size: 32)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !51, line: 69, size: 32, elements: !2216)
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2215, file: !51, line: 70, baseType: !304, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2215, file: !51, line: 71, baseType: !314, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2215, file: !51, line: 72, baseType: !2220, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2221, line: 24, baseType: !2222)
!2221 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2221, line: 22, size: 32, elements: !2223)
!2223 = !{!2224}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2222, file: !2221, line: 23, baseType: !2225, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2221, line: 20, baseType: !310)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2212, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2201, file: !51, line: 306, baseType: !499, size: 64, offset: 960)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2201, file: !51, line: 307, baseType: !258, size: 64, offset: 1024)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2201, file: !51, line: 308, baseType: !2230, size: 576, offset: 1088)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2231)
!2231 = !{!2232, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2230, file: !51, line: 206, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !501)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2230, file: !51, line: 207, baseType: !2233, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2230, file: !51, line: 208, baseType: !2233, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2230, file: !51, line: 209, baseType: !2233, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2230, file: !51, line: 210, baseType: !2233, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2230, file: !51, line: 211, baseType: !2233, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2230, file: !51, line: 212, baseType: !2233, size: 64, offset: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2230, file: !51, line: 213, baseType: !844, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2230, file: !51, line: 214, baseType: !844, size: 64, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2128, file: !14, line: 2085, baseType: !2243, size: 64, offset: 1472)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!257, !489, !2246}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2248, line: 15, size: 256, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2249 = !{!2250, !2251, !2252, !2253, !2254}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2247, file: !2248, line: 16, baseType: !250, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2247, file: !2248, line: 19, baseType: !109, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2247, file: !2248, line: 26, baseType: !258, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2247, file: !2248, line: 33, baseType: !258, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2247, file: !2248, line: 36, baseType: !2255, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2248, line: 36, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2128, file: !14, line: 2087, baseType: !2243, size: 64, offset: 1536)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2128, file: !14, line: 2089, baseType: !523, size: 64, offset: 1600)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !490, file: !14, line: 1198, baseType: !2260, size: 64, offset: 448)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2263)
!2263 = !{!2264, !2268, !2272, !2276, !2277, !2278, !2279, !2280, !2285, !2290, !2294}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2262, file: !51, line: 325, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!109, !2200}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2262, file: !51, line: 326, baseType: !2269, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!2200, !489, !109}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2262, file: !51, line: 327, baseType: !2273, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !2200}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2262, file: !51, line: 328, baseType: !2265, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2262, file: !51, line: 329, baseType: !2265, size: 64, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2262, file: !51, line: 330, baseType: !2265, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2262, file: !51, line: 331, baseType: !2156, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2262, file: !51, line: 334, baseType: !2281, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2284, !296}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2262, file: !51, line: 335, baseType: !2286, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!109, !296, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2262, file: !51, line: 337, baseType: !2291, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!109, !296, !2284}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2262, file: !51, line: 339, baseType: !2295, size: 64, offset: 640)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!109, !489, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !490, file: !14, line: 1199, baseType: !2300, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2303)
!2303 = !{!2304, !2310, !2311, !2315, !2316, !2317, !2332, !2355, !2359, !2360, !2383}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2302, file: !51, line: 431, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!109, !489, !109, !109, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2302, file: !51, line: 432, baseType: !2156, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2302, file: !51, line: 433, baseType: !2312, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!109, !489, !7}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2302, file: !51, line: 434, baseType: !2312, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2302, file: !51, line: 435, baseType: !2156, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2302, file: !51, line: 436, baseType: !2318, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!109, !489, !109, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2323)
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2322, file: !51, line: 418, baseType: !109, size: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2322, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2322, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2322, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2322, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2322, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2322, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2322, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2302, file: !51, line: 437, baseType: !2333, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!109, !489, !2212, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2337, file: !51, line: 346, baseType: !109, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2337, file: !51, line: 347, baseType: !260, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2337, file: !51, line: 348, baseType: !260, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2337, file: !51, line: 349, baseType: !260, size: 64, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2337, file: !51, line: 350, baseType: !260, size: 64, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2337, file: !51, line: 351, baseType: !260, size: 64, offset: 320)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2337, file: !51, line: 352, baseType: !260, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2337, file: !51, line: 353, baseType: !688, size: 64, offset: 448)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2337, file: !51, line: 355, baseType: !688, size: 64, offset: 512)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2337, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2337, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2337, file: !51, line: 358, baseType: !260, size: 64, offset: 640)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2337, file: !51, line: 359, baseType: !260, size: 64, offset: 704)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2337, file: !51, line: 360, baseType: !260, size: 64, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2337, file: !51, line: 361, baseType: !688, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2337, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2302, file: !51, line: 438, baseType: !2356, size: 64, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!109, !489, !2298, !2336}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2302, file: !51, line: 440, baseType: !2333, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2302, file: !51, line: 441, baseType: !2361, size: 64, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!109, !489, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2365, file: !51, line: 412, baseType: !7, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2365, file: !51, line: 413, baseType: !2369, size: 1344, offset: 64)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2370, size: 1344, elements: !581)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2382}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2370, file: !51, line: 398, baseType: !7, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2370, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2370, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2370, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2370, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2370, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2370, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2370, file: !51, line: 406, baseType: !264, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2370, file: !51, line: 407, baseType: !2381, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !251, line: 132, baseType: !260)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2370, file: !51, line: 408, baseType: !2381, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2302, file: !51, line: 442, baseType: !2312, size: 64, offset: 640)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !490, file: !14, line: 1200, baseType: !2385, size: 64, offset: 576)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2387)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !490, file: !14, line: 1201, baseType: !258, size: 64, offset: 640)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !490, file: !14, line: 1202, baseType: !258, size: 64, offset: 704)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !490, file: !14, line: 1203, baseType: !258, size: 64, offset: 768)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !490, file: !14, line: 1204, baseType: !334, size: 64, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !490, file: !14, line: 1205, baseType: !828, size: 320, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !490, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !490, file: !14, line: 1207, baseType: !413, size: 32, offset: 1248)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !490, file: !14, line: 1209, baseType: !249, size: 64, offset: 1280)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !490, file: !14, line: 1211, baseType: !2397, size: 64, offset: 1344)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2400)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !490, file: !14, line: 1223, baseType: !2402, size: 64, offset: 1408)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !351, line: 34, size: 64, elements: !2403)
!2403 = !{!2404}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2402, file: !351, line: 35, baseType: !354, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !490, file: !14, line: 1224, baseType: !279, size: 128, offset: 1472)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !490, file: !14, line: 1225, baseType: !2407, size: 64, offset: 1600)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !490, file: !14, line: 1226, baseType: !2410, size: 64, offset: 1664)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !490, file: !14, line: 1227, baseType: !2413, size: 64, offset: 1728)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !490, file: !14, line: 1228, baseType: !2416, size: 64, offset: 1792)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !490, file: !14, line: 1229, baseType: !747, size: 128, offset: 1856)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !490, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !490, file: !14, line: 1231, baseType: !2421, size: 2496, offset: 2048)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2427, !2459}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2421, file: !51, line: 522, baseType: !7, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2421, file: !51, line: 523, baseType: !828, size: 320, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2421, file: !51, line: 524, baseType: !2426, size: 192, offset: 384)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 192, elements: !581)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2421, file: !51, line: 525, baseType: !2428, size: 1728, offset: 576)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2429, size: 1728, elements: !581)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2430)
!2430 = !{!2431, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2429, file: !51, line: 223, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2434)
!2434 = !{!2435, !2436, !2449, !2450}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2433, file: !51, line: 446, baseType: !109, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2433, file: !51, line: 447, baseType: !2437, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2439)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2440)
!2440 = !{!2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2439, file: !51, line: 313, baseType: !2156, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2439, file: !51, line: 314, baseType: !2156, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2439, file: !51, line: 315, baseType: !2156, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2439, file: !51, line: 316, baseType: !2156, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2439, file: !51, line: 317, baseType: !2265, size: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2439, file: !51, line: 318, baseType: !2265, size: 64, offset: 320)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2439, file: !51, line: 319, baseType: !2265, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2439, file: !51, line: 320, baseType: !2295, size: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2433, file: !51, line: 448, baseType: !527, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2433, file: !51, line: 449, baseType: !2432, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2429, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2429, file: !51, line: 226, baseType: !279, size: 128, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2429, file: !51, line: 227, baseType: !258, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2429, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2429, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2429, file: !51, line: 230, baseType: !2233, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2429, file: !51, line: 231, baseType: !2233, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2429, file: !51, line: 232, baseType: !249, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2421, file: !51, line: 526, baseType: !2460, size: 192, offset: 2304)
!2460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2437, size: 192, elements: !581)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !490, file: !14, line: 1233, baseType: !2462, size: 2368, offset: 4544)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2463)
!2463 = !{!2464, !2465, !2466}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2462, file: !14, line: 1185, baseType: !301, size: 16)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2462, file: !14, line: 1186, baseType: !301, size: 16, offset: 16)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2462, file: !14, line: 1187, baseType: !2467, size: 2304, offset: 64)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2468, size: 2304, elements: !581)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2469, line: 12, size: 768, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2470 = !{!2471, !2479, !2480, !4568, !4569}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2468, file: !2469, line: 13, baseType: !2472, size: 384)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2473, line: 17, size: 384, elements: !2474)
!2473 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2474 = !{!2475, !2476, !2477, !2478}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2472, file: !2473, line: 18, baseType: !109, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2472, file: !2473, line: 19, baseType: !109, size: 32, offset: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2472, file: !2473, line: 20, baseType: !756, size: 192, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2472, file: !2473, line: 22, baseType: !669, size: 128, align: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2468, file: !2469, line: 14, baseType: !1857, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2468, file: !2469, line: 15, baseType: !2481, size: 64, offset: 448)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2482, line: 16, size: 64, elements: !2483)
!2482 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2483 = !{!2484}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2481, file: !2482, line: 17, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1507, line: 746, size: 58368, elements: !2487)
!2487 = !{!2488, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2568, !2579, !2671, !2675, !2678, !2709, !2710, !2711, !2712, !2723, !2725, !2726, !2727, !2728, !2729, !2730, !2741, !2742, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2759, !2760, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2848, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2896, !2902, !2903, !2904, !2905, !2906, !2910, !2913, !2920, !2925, !2928, !2931, !2934, !2937, !3973, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4011, !4012, !4013, !4022, !4030, !4031, !4032, !4033, !4034, !4039, !4040, !4041, !4044, !4045, !4048, !4051, !4054, !4062, !4065, !4066, !4152, !4153, !4154, !4155, !4156, !4162, !4163, !4164, !4165, !4168, !4169, !4172, !4175, !4176, !4179, !4180, !4181, !4184, !4185, !4186, !4187, !4188, !4189, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4221, !4222, !4228, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4240, !4312, !4314, !4315, !4316, !4317, !4318, !4319, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2486, file: !1507, line: 752, baseType: !2489, size: 192)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2490, line: 56, size: 192, elements: !2491)
!2490 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2491 = !{!2492, !2493, !2494, !2495}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2489, file: !2490, line: 57, baseType: !258, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2489, file: !2490, line: 58, baseType: !258, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2489, file: !2490, line: 59, baseType: !368, size: 32, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2489, file: !2490, line: 61, baseType: !368, size: 32, offset: 160)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2486, file: !1507, line: 754, baseType: !7, size: 32, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2486, file: !1507, line: 767, baseType: !249, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2486, file: !1507, line: 768, baseType: !734, size: 32, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2486, file: !1507, line: 770, baseType: !7, size: 32, offset: 352)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2486, file: !1507, line: 771, baseType: !7, size: 32, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2486, file: !1507, line: 774, baseType: !109, size: 32, offset: 416)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2486, file: !1507, line: 775, baseType: !2503, size: 128, offset: 448)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2504, line: 58, size: 128, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2505 = !{!2506, !2507, !2512, !2513}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2503, file: !2504, line: 59, baseType: !663, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2503, file: !2504, line: 60, baseType: !2508, size: 32, offset: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2503, file: !2504, line: 60, size: 32, elements: !2509)
!2509 = !{!2510, !2511}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2508, file: !2504, line: 61, baseType: !7, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2508, file: !2504, line: 62, baseType: !413, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2503, file: !2504, line: 65, baseType: !428, size: 16, offset: 96)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2503, file: !2504, line: 65, baseType: !428, size: 16, offset: 112)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2486, file: !1507, line: 776, baseType: !7, size: 32, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2486, file: !1507, line: 777, baseType: !258, size: 64, offset: 640)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2486, file: !1507, line: 778, baseType: !2485, size: 64, offset: 704)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2486, file: !1507, line: 787, baseType: !109, size: 32, offset: 768)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2486, file: !1507, line: 788, baseType: !109, size: 32, offset: 800)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2486, file: !1507, line: 790, baseType: !109, size: 32, offset: 832)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2486, file: !1507, line: 792, baseType: !109, size: 32, offset: 864)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2486, file: !1507, line: 793, baseType: !109, size: 32, offset: 896)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2486, file: !1507, line: 794, baseType: !109, size: 32, offset: 928)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2486, file: !1507, line: 795, baseType: !7, size: 32, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2486, file: !1507, line: 797, baseType: !2525, size: 2048, offset: 1024)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1507, line: 551, size: 2048, elements: !2526)
!2526 = !{!2527, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2547, !2550, !2551, !2552}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2525, file: !1507, line: 553, baseType: !2528, size: 128)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1507, line: 411, size: 128, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2528, file: !1507, line: 412, baseType: !258, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2528, file: !1507, line: 413, baseType: !368, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2525, file: !1507, line: 554, baseType: !820, size: 192, align: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2525, file: !1507, line: 555, baseType: !260, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2525, file: !1507, line: 556, baseType: !260, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2525, file: !1507, line: 558, baseType: !279, size: 128, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2525, file: !1507, line: 559, baseType: !7, size: 32, offset: 576)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2525, file: !1507, line: 561, baseType: !260, size: 64, offset: 640)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2525, file: !1507, line: 562, baseType: !260, size: 64, offset: 704)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2525, file: !1507, line: 563, baseType: !260, size: 64, offset: 768)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2525, file: !1507, line: 564, baseType: !260, size: 64, offset: 832)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2525, file: !1507, line: 565, baseType: !688, size: 64, offset: 896)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2525, file: !1507, line: 566, baseType: !260, size: 64, offset: 960)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2525, file: !1507, line: 568, baseType: !260, size: 64, offset: 1024)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2525, file: !1507, line: 571, baseType: !109, size: 32, offset: 1088)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2525, file: !1507, line: 572, baseType: !2546, size: 64, offset: 1152)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2525, file: !1507, line: 574, baseType: !2548, size: 64, offset: 1216)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1507, line: 49, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2525, file: !1507, line: 576, baseType: !2548, size: 64, offset: 1280)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2525, file: !1507, line: 578, baseType: !258, size: 64, offset: 1344)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2525, file: !1507, line: 588, baseType: !2553, size: 512, align: 512, offset: 1536)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1507, line: 497, size: 512, align: 512, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2553, file: !1507, line: 498, baseType: !260, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2553, file: !1507, line: 499, baseType: !260, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2553, file: !1507, line: 500, baseType: !260, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2553, file: !1507, line: 501, baseType: !368, size: 32, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2553, file: !1507, line: 502, baseType: !368, size: 32, offset: 224)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2553, file: !1507, line: 503, baseType: !258, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2553, file: !1507, line: 504, baseType: !258, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2553, file: !1507, line: 505, baseType: !258, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2553, file: !1507, line: 506, baseType: !2564, size: 64, align: 64, offset: 448)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1507, line: 445, size: 64, align: 64, elements: !2565)
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2564, file: !1507, line: 446, baseType: !7, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2564, file: !1507, line: 447, baseType: !7, size: 32, offset: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2486, file: !1507, line: 798, baseType: !2569, size: 384, offset: 3072)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1507, line: 592, size: 384, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2569, file: !1507, line: 593, baseType: !279, size: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2569, file: !1507, line: 594, baseType: !258, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2569, file: !1507, line: 595, baseType: !258, size: 64, offset: 192)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2569, file: !1507, line: 596, baseType: !7, size: 32, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2569, file: !1507, line: 597, baseType: !301, size: 16, offset: 288)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2569, file: !1507, line: 598, baseType: !301, size: 16, offset: 304)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2569, file: !1507, line: 600, baseType: !2578, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2486, file: !1507, line: 799, baseType: !2580, size: 1792, offset: 3456)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1507, line: 610, size: 1792, elements: !2581)
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2668, !2669}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2580, file: !1507, line: 611, baseType: !820, size: 192, align: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2580, file: !1507, line: 618, baseType: !260, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2580, file: !1507, line: 619, baseType: !260, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2580, file: !1507, line: 620, baseType: !260, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2580, file: !1507, line: 621, baseType: !260, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2580, file: !1507, line: 622, baseType: !260, size: 64, offset: 448)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2580, file: !1507, line: 629, baseType: !688, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2580, file: !1507, line: 630, baseType: !260, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2580, file: !1507, line: 631, baseType: !7, size: 32, offset: 640)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2580, file: !1507, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2580, file: !1507, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2580, file: !1507, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2580, file: !1507, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2580, file: !1507, line: 662, baseType: !2596, size: 512, offset: 704)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2597)
!2597 = !{!2598, !2606, !2607, !2612, !2664, !2665, !2666, !2667}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2596, file: !57, line: 119, baseType: !2599, size: 256)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2600, line: 9, size: 256, elements: !2601)
!2600 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2599, file: !2600, line: 10, baseType: !820, size: 192, align: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2599, file: !2600, line: 11, baseType: !2604, size: 64, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2605, line: 29, baseType: !688)
!2605 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2596, file: !57, line: 120, baseType: !2604, size: 64, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2596, file: !57, line: 121, baseType: !2608, size: 64, offset: 320)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!56, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2596, file: !57, line: 122, baseType: !2613, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2615)
!2615 = !{!2616, !2641, !2642, !2645, !2650, !2651, !2659, !2663}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2614, file: !57, line: 160, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2618, file: !57, line: 216, baseType: !696, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2618, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2618, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2618, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2618, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2618, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2618, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2618, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2618, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2618, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2618, file: !57, line: 227, baseType: !301, size: 16, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2618, file: !57, line: 228, baseType: !301, size: 16, offset: 208)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2618, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2618, file: !57, line: 235, baseType: !2604, size: 64, offset: 256)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2618, file: !57, line: 236, baseType: !2611, size: 64, offset: 320)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2618, file: !57, line: 237, baseType: !2604, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2618, file: !57, line: 238, baseType: !2611, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2618, file: !57, line: 239, baseType: !2638, size: 4096, align: 512, offset: 512)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2614, size: 4096, align: 512, elements: !2639)
!2639 = !{!2640}
!2640 = !DISubrange(count: 8)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2614, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2614, file: !57, line: 162, baseType: !2643, size: 32, offset: 96)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !251, line: 32, baseType: !2644)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !311, line: 96, baseType: !109)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2614, file: !57, line: 163, baseType: !2646, size: 32, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !341, line: 274, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !341, line: 274, size: 32, elements: !2648)
!2648 = !{!2649}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2647, file: !341, line: 274, baseType: !345, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2614, file: !57, line: 164, baseType: !2611, size: 64, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2614, file: !57, line: 165, baseType: !2652, size: 128, offset: 256)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2600, line: 14, size: 128, elements: !2653)
!2653 = !{!2654}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2652, file: !2600, line: 15, baseType: !2655, size: 128)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !821, line: 26, size: 128, elements: !2656)
!2656 = !{!2657, !2658}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2655, file: !821, line: 27, baseType: !1667, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2655, file: !821, line: 28, baseType: !825, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2614, file: !57, line: 166, baseType: !2660, size: 64, offset: 384)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!2604}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2614, file: !57, line: 167, baseType: !2604, size: 64, offset: 448)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2596, file: !57, line: 123, baseType: !421, size: 8, offset: 448)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2596, file: !57, line: 124, baseType: !421, size: 8, offset: 456)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2596, file: !57, line: 125, baseType: !421, size: 8, offset: 464)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2596, file: !57, line: 126, baseType: !421, size: 8, offset: 472)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2580, file: !1507, line: 671, baseType: !2596, size: 512, offset: 1216)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2580, file: !1507, line: 679, baseType: !2670, size: 64, offset: 1728)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2486, file: !1507, line: 800, baseType: !2672, size: 64, offset: 5248)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2674)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1507, line: 800, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2486, file: !1507, line: 809, baseType: !2676, size: 64, offset: 5312)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1507, line: 70, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2486, file: !1507, line: 825, baseType: !2679, size: 2048, align: 512, offset: 5632)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1507, line: 509, size: 2048, align: 512, elements: !2680)
!2680 = !{!2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2679, file: !1507, line: 511, baseType: !260, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2679, file: !1507, line: 512, baseType: !260, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2679, file: !1507, line: 513, baseType: !260, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2679, file: !1507, line: 514, baseType: !260, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2679, file: !1507, line: 515, baseType: !260, size: 64, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2679, file: !1507, line: 516, baseType: !260, size: 64, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2679, file: !1507, line: 518, baseType: !260, size: 64, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2679, file: !1507, line: 519, baseType: !260, size: 64, offset: 448)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2679, file: !1507, line: 520, baseType: !688, size: 64, offset: 512)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2679, file: !1507, line: 522, baseType: !260, size: 64, offset: 576)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2679, file: !1507, line: 523, baseType: !260, size: 64, offset: 640)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2679, file: !1507, line: 524, baseType: !688, size: 64, offset: 704)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2679, file: !1507, line: 526, baseType: !688, size: 64, offset: 768)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2679, file: !1507, line: 527, baseType: !260, size: 64, offset: 832)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2679, file: !1507, line: 529, baseType: !260, size: 64, offset: 896)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2679, file: !1507, line: 530, baseType: !260, size: 64, offset: 960)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2679, file: !1507, line: 531, baseType: !260, size: 64, offset: 1024)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2679, file: !1507, line: 532, baseType: !260, size: 64, offset: 1088)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2679, file: !1507, line: 533, baseType: !260, size: 64, offset: 1152)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2679, file: !1507, line: 535, baseType: !260, size: 64, offset: 1216)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2679, file: !1507, line: 536, baseType: !260, size: 64, offset: 1280)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2679, file: !1507, line: 537, baseType: !260, size: 64, offset: 1344)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2679, file: !1507, line: 538, baseType: !260, size: 64, offset: 1408)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2679, file: !1507, line: 539, baseType: !260, size: 64, offset: 1472)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2679, file: !1507, line: 540, baseType: !260, size: 64, offset: 1536)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2679, file: !1507, line: 541, baseType: !260, size: 64, offset: 1600)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2679, file: !1507, line: 542, baseType: !260, size: 64, offset: 1664)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2679, file: !1507, line: 543, baseType: !260, size: 64, offset: 1728)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2486, file: !1507, line: 833, baseType: !7, size: 32, offset: 7680)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2486, file: !1507, line: 836, baseType: !7, size: 32, offset: 7712)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2486, file: !1507, line: 837, baseType: !109, size: 32, offset: 7744)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2486, file: !1507, line: 838, baseType: !2713, size: 64, offset: 7808)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2715)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2716, line: 19, baseType: !2717)
!2716 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2716, line: 19, size: 64, elements: !2718)
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2717, file: !2716, line: 19, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 64, elements: !2721)
!2721 = !{!2722}
!2722 = !DISubrange(count: 1)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2486, file: !1507, line: 839, baseType: !2724, size: 64, offset: 7872)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2486, file: !1507, line: 840, baseType: !2715, size: 64, offset: 7936)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2486, file: !1507, line: 841, baseType: !249, size: 64, offset: 8000)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2486, file: !1507, line: 843, baseType: !301, size: 16, offset: 8064)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2486, file: !1507, line: 845, baseType: !301, size: 16, offset: 8080)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2486, file: !1507, line: 848, baseType: !109, size: 32, offset: 8096)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2486, file: !1507, line: 849, baseType: !2731, size: 32, offset: 8128)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1507, line: 718, size: 32, elements: !2732)
!2732 = !{!2733, !2740}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2731, file: !1507, line: 724, baseType: !2734, size: 32)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2731, file: !1507, line: 719, size: 32, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2734, file: !1507, line: 720, baseType: !421, size: 8)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2734, file: !1507, line: 721, baseType: !421, size: 8, offset: 8)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2734, file: !1507, line: 722, baseType: !421, size: 8, offset: 16)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2734, file: !1507, line: 723, baseType: !421, size: 8, offset: 24)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2731, file: !1507, line: 725, baseType: !368, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2486, file: !1507, line: 850, baseType: !279, size: 128, offset: 8192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2486, file: !1507, line: 851, baseType: !2743, size: 64, offset: 8320)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1507, line: 60, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2486, file: !1507, line: 855, baseType: !258, size: 64, offset: 8384)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2486, file: !1507, line: 856, baseType: !421, size: 8, offset: 8448)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2486, file: !1507, line: 857, baseType: !421, size: 8, offset: 8456)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2486, file: !1507, line: 858, baseType: !109, size: 32, offset: 8480)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2486, file: !1507, line: 859, baseType: !279, size: 128, offset: 8512)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2486, file: !1507, line: 860, baseType: !109, size: 32, offset: 8640)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2486, file: !1507, line: 861, baseType: !279, size: 128, offset: 8704)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2486, file: !1507, line: 873, baseType: !2753, size: 256, offset: 8832)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1507, line: 376, size: 256, elements: !2754)
!2754 = !{!2755, !2756, !2757, !2758}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2753, file: !1507, line: 381, baseType: !258, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2753, file: !1507, line: 384, baseType: !264, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2753, file: !1507, line: 389, baseType: !264, size: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2753, file: !1507, line: 392, baseType: !264, size: 64, offset: 192)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2486, file: !1507, line: 875, baseType: !279, size: 128, offset: 9088)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2486, file: !1507, line: 877, baseType: !2761, size: 320, offset: 9216)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2762, line: 86, size: 320, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2763 = !{!2764, !2765, !2766}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2761, file: !2762, line: 87, baseType: !109, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2761, file: !2762, line: 88, baseType: !279, size: 128, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2761, file: !2762, line: 89, baseType: !279, size: 128, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2486, file: !1507, line: 878, baseType: !820, size: 192, align: 64, offset: 9536)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2486, file: !1507, line: 881, baseType: !1158, size: 64, offset: 9728)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2486, file: !1507, line: 882, baseType: !1158, size: 64, offset: 9792)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2486, file: !1507, line: 884, baseType: !109, size: 32, offset: 9856)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2486, file: !1507, line: 885, baseType: !109, size: 32, offset: 9888)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2486, file: !1507, line: 886, baseType: !109, size: 32, offset: 9920)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2486, file: !1507, line: 888, baseType: !109, size: 32, offset: 9952)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2486, file: !1507, line: 890, baseType: !258, size: 64, offset: 9984)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2486, file: !1507, line: 893, baseType: !7, size: 32, offset: 10048)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2486, file: !1507, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2486, file: !1507, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2486, file: !1507, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2486, file: !1507, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2486, file: !1507, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2486, file: !1507, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2486, file: !1507, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2486, file: !1507, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2486, file: !1507, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2486, file: !1507, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2486, file: !1507, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2486, file: !1507, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2486, file: !1507, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2486, file: !1507, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2486, file: !1507, line: 969, baseType: !258, size: 64, offset: 10176)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2486, file: !1507, line: 971, baseType: !2792, size: 448, offset: 10240)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2793)
!2793 = !{!2794, !2795, !2800}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2792, file: !62, line: 26, baseType: !258, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2792, file: !62, line: 27, baseType: !2796, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!257, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, scope: !2792, file: !62, line: 28, baseType: !2801, size: 320, offset: 128)
!2801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2792, file: !62, line: 28, size: 320, elements: !2802)
!2802 = !{!2803, !2813, !2838}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2801, file: !62, line: 37, baseType: !2804, size: 320)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2801, file: !62, line: 30, size: 320, elements: !2805)
!2805 = !{!2806, !2808, !2809, !2810, !2811, !2812}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2804, file: !62, line: 31, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2804, file: !62, line: 32, baseType: !368, size: 32, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2804, file: !62, line: 33, baseType: !368, size: 32, offset: 96)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2804, file: !62, line: 34, baseType: !368, size: 32, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2804, file: !62, line: 35, baseType: !260, size: 64, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2804, file: !62, line: 36, baseType: !2807, size: 64, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2801, file: !62, line: 47, baseType: !2814, size: 192)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2801, file: !62, line: 39, size: 192, elements: !2815)
!2815 = !{!2816, !2817, !2818, !2837}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2814, file: !62, line: 40, baseType: !2643, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2814, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !62, line: 42, baseType: !2819, size: 64, offset: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2814, file: !62, line: 42, size: 64, elements: !2820)
!2820 = !{!2821, !2829}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2819, file: !62, line: 43, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2824, line: 7, size: 128, elements: !2825)
!2824 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2825 = !{!2826, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2823, file: !2824, line: 8, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !311, line: 93, baseType: !501)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2823, file: !2824, line: 9, baseType: !501, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2819, file: !62, line: 44, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2832, line: 7, size: 64, elements: !2833)
!2832 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2833 = !{!2834, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2831, file: !2832, line: 8, baseType: !2835, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2832, line: 5, baseType: !813)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2831, file: !2832, line: 9, baseType: !813, size: 32, offset: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2814, file: !62, line: 46, baseType: !260, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2801, file: !62, line: 55, baseType: !2839, size: 256)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2801, file: !62, line: 49, size: 256, elements: !2840)
!2840 = !{!2841, !2844, !2845, !2846, !2847}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2839, file: !62, line: 50, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2839, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2839, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2839, file: !62, line: 53, baseType: !258, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2839, file: !62, line: 54, baseType: !258, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2486, file: !1507, line: 973, baseType: !2849, size: 32, offset: 10688)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !251, line: 27, baseType: !2850)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !311, line: 28, baseType: !109)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2486, file: !1507, line: 974, baseType: !2849, size: 32, offset: 10720)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2486, file: !1507, line: 978, baseType: !258, size: 64, offset: 10752)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2486, file: !1507, line: 987, baseType: !2485, size: 64, offset: 10816)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2486, file: !1507, line: 990, baseType: !2485, size: 64, offset: 10880)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2486, file: !1507, line: 995, baseType: !279, size: 128, offset: 10944)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2486, file: !1507, line: 996, baseType: !279, size: 128, offset: 11072)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2486, file: !1507, line: 997, baseType: !2485, size: 64, offset: 11200)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2486, file: !1507, line: 1005, baseType: !279, size: 128, offset: 11264)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2486, file: !1507, line: 1006, baseType: !279, size: 128, offset: 11392)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2486, file: !1507, line: 1009, baseType: !730, size: 64, offset: 11520)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2486, file: !1507, line: 1010, baseType: !2862, size: 512, offset: 11584)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 512, elements: !752)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2486, file: !1507, line: 1011, baseType: !279, size: 128, offset: 12096)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2486, file: !1507, line: 1012, baseType: !279, size: 128, offset: 12224)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2486, file: !1507, line: 1014, baseType: !1758, size: 64, offset: 12352)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2486, file: !1507, line: 1017, baseType: !1905, size: 64, offset: 12416)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2486, file: !1507, line: 1020, baseType: !1905, size: 64, offset: 12480)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2486, file: !1507, line: 1023, baseType: !249, size: 64, offset: 12544)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2486, file: !1507, line: 1025, baseType: !260, size: 64, offset: 12608)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2486, file: !1507, line: 1026, baseType: !260, size: 64, offset: 12672)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2486, file: !1507, line: 1031, baseType: !260, size: 64, offset: 12736)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2486, file: !1507, line: 1032, baseType: !2873, size: 192, offset: 12800)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1507, line: 324, size: 192, elements: !2874)
!2874 = !{!2875, !2876, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2873, file: !1507, line: 326, baseType: !260, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2873, file: !1507, line: 327, baseType: !260, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2873, file: !1507, line: 328, baseType: !696, size: 32, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2486, file: !1507, line: 1041, baseType: !258, size: 64, offset: 12992)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2486, file: !1507, line: 1042, baseType: !258, size: 64, offset: 13056)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2486, file: !1507, line: 1045, baseType: !260, size: 64, offset: 13120)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2486, file: !1507, line: 1048, baseType: !260, size: 64, offset: 13184)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2486, file: !1507, line: 1051, baseType: !258, size: 64, offset: 13248)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2486, file: !1507, line: 1052, baseType: !258, size: 64, offset: 13312)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2486, file: !1507, line: 1055, baseType: !2885, size: 640, offset: 13376)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2886, line: 132, size: 640, elements: !2887)
!2886 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2887 = !{!2888, !2894, !2895}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2885, file: !2886, line: 133, baseType: !2889, size: 576)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2890, size: 576, elements: !581)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2886, line: 117, size: 192, elements: !2891)
!2891 = !{!2892, !2893}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2890, file: !2886, line: 118, baseType: !260, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2890, file: !2886, line: 119, baseType: !2652, size: 128, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2885, file: !2886, line: 134, baseType: !7, size: 32, offset: 576)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2885, file: !2886, line: 135, baseType: !7, size: 32, offset: 608)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2486, file: !1507, line: 1058, baseType: !2897, size: 448, offset: 14016)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2886, line: 144, size: 448, elements: !2898)
!2898 = !{!2899, !2900, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2897, file: !2886, line: 145, baseType: !669, size: 128, align: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2897, file: !2886, line: 146, baseType: !691, size: 256, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2897, file: !2886, line: 147, baseType: !7, size: 32, offset: 384)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2486, file: !1507, line: 1064, baseType: !778, size: 64, offset: 14464)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2486, file: !1507, line: 1067, baseType: !778, size: 64, offset: 14528)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2486, file: !1507, line: 1070, baseType: !778, size: 64, offset: 14592)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2486, file: !1507, line: 1074, baseType: !805, size: 64, offset: 14656)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2486, file: !1507, line: 1084, baseType: !2907, size: 128, offset: 14720)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, elements: !2908)
!2908 = !{!2909}
!2909 = !DISubrange(count: 16)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2486, file: !1507, line: 1086, baseType: !2911, size: 64, offset: 14848)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1507, line: 55, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2486, file: !1507, line: 1089, baseType: !2914, size: 64, offset: 14912)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2915, line: 12, size: 64, elements: !2916)
!2915 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2916 = !{!2917}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2914, file: !2915, line: 13, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2915, line: 8, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2486, file: !1507, line: 1090, baseType: !2921, size: 128, offset: 14976)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2922, line: 13, size: 128, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2921, file: !2922, line: 14, baseType: !279, size: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2486, file: !1507, line: 1097, baseType: !2926, size: 64, offset: 15104)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1507, line: 50, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2486, file: !1507, line: 1100, baseType: !2929, size: 64, offset: 15168)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1507, line: 1100, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2486, file: !1507, line: 1103, baseType: !2932, size: 64, offset: 15232)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1507, line: 53, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2486, file: !1507, line: 1107, baseType: !2935, size: 64, offset: 15296)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1507, line: 56, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2486, file: !1507, line: 1110, baseType: !2938, size: 64, offset: 15360)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2940, line: 93, size: 8768, elements: !2941)
!2940 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2989, !2998, !2999, !3001, !3002, !3003, !3904, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3942, !3943, !3950, !3960, !3963, !3964, !3967, !3968, !3969, !3970, !3971, !3972}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2939, file: !2940, line: 94, baseType: !734, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2939, file: !2940, line: 95, baseType: !413, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2939, file: !2940, line: 96, baseType: !109, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2939, file: !2940, line: 97, baseType: !109, size: 32, offset: 96)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2939, file: !2940, line: 98, baseType: !279, size: 128, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2939, file: !2940, line: 100, baseType: !756, size: 192, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2939, file: !2940, line: 103, baseType: !2485, size: 64, offset: 448)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2939, file: !2940, line: 106, baseType: !2950, size: 192, offset: 512)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !975, line: 32, size: 192, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2950, file: !975, line: 33, baseType: !279, size: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2950, file: !975, line: 34, baseType: !2954, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2955, line: 25, baseType: !2956)
!2955 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2955, line: 23, size: 64, elements: !2957)
!2957 = !{!2958}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2956, file: !2955, line: 24, baseType: !2720, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2939, file: !2940, line: 109, baseType: !743, size: 64, offset: 704)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2939, file: !2940, line: 112, baseType: !109, size: 32, offset: 768)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2939, file: !2940, line: 114, baseType: !109, size: 32, offset: 800)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2939, file: !2940, line: 115, baseType: !2485, size: 64, offset: 832)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2939, file: !2940, line: 118, baseType: !109, size: 32, offset: 896)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2939, file: !2940, line: 119, baseType: !7, size: 32, offset: 928)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2939, file: !2940, line: 121, baseType: !2966, size: 64, offset: 960)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2940, line: 80, size: 448, elements: !2968)
!2968 = !{!2969, !2970, !2976}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2967, file: !2940, line: 81, baseType: !413, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2967, file: !2940, line: 82, baseType: !2971, size: 128, offset: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2940, line: 75, size: 128, elements: !2972)
!2972 = !{!2973, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2971, file: !2940, line: 76, baseType: !2485, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2971, file: !2940, line: 77, baseType: !2975, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2967, file: !2940, line: 83, baseType: !1759, size: 256, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2939, file: !2940, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2939, file: !2940, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2939, file: !2940, line: 138, baseType: !7, size: 32, offset: 1056)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2939, file: !2940, line: 139, baseType: !279, size: 128, offset: 1088)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2939, file: !2940, line: 142, baseType: !2596, size: 512, offset: 1216)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2939, file: !2940, line: 143, baseType: !2604, size: 64, offset: 1728)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2939, file: !2940, line: 150, baseType: !2984, size: 256, offset: 1792)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2985, size: 256, elements: !1895)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2940, line: 38, size: 128, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2985, file: !2940, line: 39, baseType: !260, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2985, file: !2940, line: 40, baseType: !260, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2939, file: !2940, line: 156, baseType: !2990, size: 192, offset: 2048)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2940, line: 66, size: 192, elements: !2991)
!2991 = !{!2992}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2990, file: !2940, line: 67, baseType: !2993, size: 192)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2940, line: 47, size: 192, elements: !2994)
!2994 = !{!2995, !2996, !2997}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2993, file: !2940, line: 48, baseType: !684, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2993, file: !2940, line: 49, baseType: !684, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2993, file: !2940, line: 50, baseType: !684, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2939, file: !2940, line: 160, baseType: !2885, size: 640, offset: 2240)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2939, file: !2940, line: 163, baseType: !3000, size: 256, offset: 2880)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !752)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2939, file: !2940, line: 169, baseType: !730, size: 64, offset: 3136)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2939, file: !2940, line: 172, baseType: !109, size: 32, offset: 3200)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2939, file: !2940, line: 174, baseType: !3004, size: 64, offset: 3264)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3006, line: 193, size: 5248, elements: !3007)
!3006 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3007 = !{!3008, !3009, !3010, !3461, !3793, !3794, !3795, !3842, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3859, !3860, !3861, !3862, !3863, !3871, !3880, !3881, !3882, !3883, !3884, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3005, file: !3006, line: 194, baseType: !1743, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3005, file: !3006, line: 195, baseType: !109, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3005, file: !3006, line: 196, baseType: !3011, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3019, !3020, !3073, !3143, !3144, !3145, !3146, !3147, !3154, !3246, !3259, !3269, !3273, !3275, !3276, !3277, !3281, !3288, !3289, !3292, !3295, !3299, !3403, !3404, !3405, !3406, !3407, !3408, !3438, !3439, !3440, !3443, !3446, !3455, !3456, !3457, !3458, !3459, !3460}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3012, file: !94, line: 706, baseType: !540, size: 512)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3012, file: !94, line: 707, baseType: !3011, size: 64, offset: 512)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3012, file: !94, line: 709, baseType: !3017, size: 64, offset: 576)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3012, file: !94, line: 711, baseType: !453, size: 64, offset: 640)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3012, file: !94, line: 712, baseType: !3021, size: 64, offset: 704)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3023)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3033, !3038, !3042}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3023, file: !94, line: 90, baseType: !453, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3023, file: !94, line: 91, baseType: !628, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3023, file: !94, line: 92, baseType: !3028, size: 64, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!109, !3031, !576}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3012)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3023, file: !94, line: 93, baseType: !3034, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!478, !3031, !3037, !1645, !1646}
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3023, file: !94, line: 95, baseType: !3039, size: 64, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !3011}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3023, file: !94, line: 97, baseType: !3043, size: 64, offset: 320)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3045)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !3046)
!3046 = !{!3047, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3045, file: !101, line: 287, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!109, !3011}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3045, file: !101, line: 288, baseType: !3039, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3045, file: !101, line: 289, baseType: !3048, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3045, file: !101, line: 290, baseType: !3048, size: 64, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3045, file: !101, line: 291, baseType: !3048, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3045, file: !101, line: 292, baseType: !3048, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3045, file: !101, line: 293, baseType: !3048, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3045, file: !101, line: 294, baseType: !3048, size: 64, offset: 448)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3045, file: !101, line: 295, baseType: !3048, size: 64, offset: 512)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3045, file: !101, line: 296, baseType: !3048, size: 64, offset: 576)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3045, file: !101, line: 297, baseType: !3048, size: 64, offset: 640)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3045, file: !101, line: 298, baseType: !3048, size: 64, offset: 704)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3045, file: !101, line: 299, baseType: !3048, size: 64, offset: 768)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3045, file: !101, line: 300, baseType: !3048, size: 64, offset: 832)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3045, file: !101, line: 301, baseType: !3048, size: 64, offset: 896)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3045, file: !101, line: 302, baseType: !3048, size: 64, offset: 960)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3045, file: !101, line: 303, baseType: !3048, size: 64, offset: 1024)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3045, file: !101, line: 304, baseType: !3048, size: 64, offset: 1088)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3045, file: !101, line: 305, baseType: !3048, size: 64, offset: 1152)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3045, file: !101, line: 306, baseType: !3048, size: 64, offset: 1216)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3045, file: !101, line: 307, baseType: !3048, size: 64, offset: 1280)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3045, file: !101, line: 308, baseType: !3048, size: 64, offset: 1344)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3045, file: !101, line: 309, baseType: !3048, size: 64, offset: 1408)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3012, file: !94, line: 714, baseType: !3074, size: 64, offset: 768)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3076)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3077, line: 80, size: 1344, elements: !3078)
!3077 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3142}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3076, file: !3077, line: 81, baseType: !453, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3076, file: !3077, line: 82, baseType: !453, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3076, file: !3077, line: 83, baseType: !628, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3076, file: !3077, line: 84, baseType: !628, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3076, file: !3077, line: 85, baseType: !628, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3076, file: !3077, line: 87, baseType: !3085, size: 64, offset: 320)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!109, !3011, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3096, !3097, !3101, !3105, !3106, !3107, !3108, !3109, !3117, !3118, !3119, !3120, !3121, !3122}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3089, file: !88, line: 97, baseType: !453, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3089, file: !88, line: 98, baseType: !3074, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3089, file: !88, line: 100, baseType: !527, size: 64, offset: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3089, file: !88, line: 101, baseType: !453, size: 64, offset: 192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3089, file: !88, line: 103, baseType: !887, size: 8, offset: 256)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3089, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3089, file: !88, line: 106, baseType: !3098, size: 64, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3100)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3089, file: !88, line: 107, baseType: !3102, size: 64, offset: 384)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3104)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3089, file: !88, line: 109, baseType: !3048, size: 64, offset: 448)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3089, file: !88, line: 110, baseType: !3039, size: 64, offset: 512)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3089, file: !88, line: 111, baseType: !3048, size: 64, offset: 576)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3089, file: !88, line: 112, baseType: !3039, size: 64, offset: 640)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3089, file: !88, line: 113, baseType: !3110, size: 64, offset: 704)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!109, !3011, !3113}
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !3114)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !3115)
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3114, file: !101, line: 59, baseType: !109, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3089, file: !88, line: 114, baseType: !3048, size: 64, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3089, file: !88, line: 115, baseType: !628, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3089, file: !88, line: 116, baseType: !628, size: 64, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3089, file: !88, line: 118, baseType: !3043, size: 64, offset: 960)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3089, file: !88, line: 119, baseType: !3039, size: 64, offset: 1024)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3089, file: !88, line: 121, baseType: !3123, size: 64, offset: 1088)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3076, file: !3077, line: 88, baseType: !3028, size: 64, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3076, file: !3077, line: 89, baseType: !3048, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3076, file: !3077, line: 90, baseType: !3039, size: 64, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3076, file: !3077, line: 91, baseType: !3039, size: 64, offset: 576)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3076, file: !3077, line: 92, baseType: !3039, size: 64, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3076, file: !3077, line: 94, baseType: !3048, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3076, file: !3077, line: 95, baseType: !3048, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3076, file: !3077, line: 97, baseType: !3110, size: 64, offset: 832)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3076, file: !3077, line: 98, baseType: !3048, size: 64, offset: 896)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3076, file: !3077, line: 100, baseType: !3048, size: 64, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3076, file: !3077, line: 102, baseType: !3048, size: 64, offset: 1024)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3076, file: !3077, line: 103, baseType: !3039, size: 64, offset: 1088)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3076, file: !3077, line: 105, baseType: !3043, size: 64, offset: 1152)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3076, file: !3077, line: 107, baseType: !3139, size: 64, offset: 1216)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3141)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3077, line: 107, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3076, file: !3077, line: 109, baseType: !887, size: 8, offset: 1280)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3012, file: !94, line: 715, baseType: !3088, size: 64, offset: 832)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3012, file: !94, line: 717, baseType: !249, size: 64, offset: 896)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3012, file: !94, line: 719, baseType: !249, size: 64, offset: 960)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3012, file: !94, line: 721, baseType: !691, size: 256, offset: 1024)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3012, file: !94, line: 725, baseType: !3148, size: 448, offset: 1280)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3148, file: !94, line: 518, baseType: !279, size: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3148, file: !94, line: 519, baseType: !279, size: 128, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3148, file: !94, line: 520, baseType: !279, size: 128, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3148, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3012, file: !94, line: 726, baseType: !3155, size: 2496, offset: 1728)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3239, !3243}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3155, file: !101, line: 664, baseType: !3113, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3155, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3155, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3155, file: !101, line: 667, baseType: !887, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3155, file: !101, line: 668, baseType: !887, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3155, file: !101, line: 669, baseType: !887, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3155, file: !101, line: 670, baseType: !887, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3155, file: !101, line: 671, baseType: !887, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3155, file: !101, line: 672, baseType: !887, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3155, file: !101, line: 673, baseType: !887, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3155, file: !101, line: 674, baseType: !887, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3155, file: !101, line: 675, baseType: !368, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3155, file: !101, line: 676, baseType: !393, size: 32, offset: 96)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3155, file: !101, line: 678, baseType: !279, size: 128, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3155, file: !101, line: 679, baseType: !1759, size: 256, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3155, file: !101, line: 680, baseType: !3173, size: 64, offset: 512)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3175, line: 43, size: 1536, elements: !3176)
!3175 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3176 = !{!3177, !3178, !3179, !3180, !3181, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3174, file: !3175, line: 44, baseType: !453, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3174, file: !3175, line: 45, baseType: !109, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3174, file: !3175, line: 46, baseType: !279, size: 128, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3174, file: !3175, line: 47, baseType: !393, size: 32, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3174, file: !3175, line: 48, baseType: !3182, size: 64, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3174, file: !3175, line: 49, baseType: !2005, size: 320, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3174, file: !3175, line: 50, baseType: !258, size: 64, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3174, file: !3175, line: 51, baseType: !2604, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3174, file: !3175, line: 52, baseType: !2604, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3174, file: !3175, line: 53, baseType: !2604, size: 64, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3174, file: !3175, line: 54, baseType: !2604, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3174, file: !3175, line: 55, baseType: !2604, size: 64, offset: 1024)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3174, file: !3175, line: 56, baseType: !258, size: 64, offset: 1088)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3174, file: !3175, line: 57, baseType: !258, size: 64, offset: 1152)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3174, file: !3175, line: 58, baseType: !258, size: 64, offset: 1216)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3174, file: !3175, line: 59, baseType: !258, size: 64, offset: 1280)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3174, file: !3175, line: 60, baseType: !258, size: 64, offset: 1344)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3174, file: !3175, line: 61, baseType: !3011, size: 64, offset: 1408)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3174, file: !3175, line: 62, baseType: !887, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3174, file: !3175, line: 63, baseType: !887, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3155, file: !101, line: 681, baseType: !887, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3155, file: !101, line: 682, baseType: !887, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3155, file: !101, line: 683, baseType: !887, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3155, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3155, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3155, file: !101, line: 690, baseType: !2596, size: 512, offset: 640)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3155, file: !101, line: 691, baseType: !260, size: 64, offset: 1152)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3155, file: !101, line: 692, baseType: !1313, size: 256, offset: 1216)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3155, file: !101, line: 693, baseType: !756, size: 192, offset: 1472)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3155, file: !101, line: 694, baseType: !3182, size: 64, offset: 1664)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3155, file: !101, line: 695, baseType: !413, size: 32, offset: 1728)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3155, file: !101, line: 696, baseType: !413, size: 32, offset: 1760)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3155, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3155, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3155, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3155, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3155, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3155, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3155, file: !101, line: 703, baseType: !887, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3155, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3155, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3155, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3155, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3155, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3155, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3155, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3155, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3155, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3155, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3155, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3155, file: !101, line: 715, baseType: !260, size: 64, offset: 2048)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3155, file: !101, line: 716, baseType: !260, size: 64, offset: 2112)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3155, file: !101, line: 717, baseType: !260, size: 64, offset: 2176)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3155, file: !101, line: 718, baseType: !260, size: 64, offset: 2240)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3155, file: !101, line: 720, baseType: !3234, size: 64, offset: 2304)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3235, file: !101, line: 633, baseType: !393, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3235, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3155, file: !101, line: 721, baseType: !3240, size: 64, offset: 2368)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{null, !3011, !813}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3155, file: !101, line: 722, baseType: !3244, size: 64, offset: 2432)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3012, file: !94, line: 727, baseType: !3247, size: 64, offset: 4224)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3256, !3257, !3258}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3248, file: !101, line: 743, baseType: !3045, size: 1472)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3248, file: !101, line: 744, baseType: !3048, size: 64, offset: 1472)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3248, file: !101, line: 745, baseType: !3253, size: 64, offset: 1536)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !3011, !887}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3248, file: !101, line: 746, baseType: !3048, size: 64, offset: 1600)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3248, file: !101, line: 747, baseType: !3039, size: 64, offset: 1664)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3248, file: !101, line: 748, baseType: !3039, size: 64, offset: 1728)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3012, file: !94, line: 736, baseType: !3260, size: 128, offset: 4288)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !3261)
!3261 = !{!3262, !3266}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3260, file: !94, line: 531, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3265, line: 13, flags: DIFlagFwdDecl)
!3265 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3260, file: !94, line: 532, baseType: !3267, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3012, file: !94, line: 738, baseType: !3270, size: 64, offset: 4416)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3272)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3012, file: !94, line: 740, baseType: !3274, size: 64, offset: 4480)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3012, file: !94, line: 741, baseType: !260, size: 64, offset: 4544)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3012, file: !94, line: 746, baseType: !260, size: 64, offset: 4608)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3012, file: !94, line: 747, baseType: !3278, size: 64, offset: 4672)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3012, file: !94, line: 749, baseType: !3282, size: 64, offset: 4736)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !3284)
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3283, file: !94, line: 433, baseType: !7, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3283, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3283, file: !94, line: 435, baseType: !258, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3012, file: !94, line: 751, baseType: !279, size: 128, offset: 4800)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3012, file: !94, line: 762, baseType: !3290, size: 64, offset: 4928)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3012, file: !94, line: 770, baseType: !3293, offset: 4992)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3294, line: 5, elements: !1179)
!3294 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3012, file: !94, line: 772, baseType: !3296, size: 64, offset: 4992)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3298, line: 18, flags: DIFlagFwdDecl)
!3298 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3012, file: !94, line: 773, baseType: !3300, size: 64, offset: 5056)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3302, line: 41, size: 512, elements: !3303)
!3302 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3303 = !{!3304, !3305, !3399, !3400, !3401, !3402}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3301, file: !3302, line: 42, baseType: !3300, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3301, file: !3302, line: 43, baseType: !3306, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3308)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3302, line: 125, size: 1408, elements: !3309)
!3309 = !{!3310, !3314, !3318, !3324, !3328, !3329, !3334, !3338, !3342, !3346, !3350, !3351, !3355, !3359, !3363, !3374, !3375, !3376, !3377, !3387, !3391, !3395}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3308, file: !3302, line: 126, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!3300, !3300}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3308, file: !3302, line: 127, baseType: !3315, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !3300}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3308, file: !3302, line: 128, baseType: !3319, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!887, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3301)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3308, file: !3302, line: 129, baseType: !3325, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!1274, !3322, !3031}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3308, file: !3302, line: 131, baseType: !3319, size: 64, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3308, file: !3302, line: 133, baseType: !3330, size: 64, offset: 320)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!3333, !3322}
!3333 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3302, line: 132, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3308, file: !3302, line: 134, baseType: !3335, size: 64, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!887, !3322, !453}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3308, file: !3302, line: 136, baseType: !3339, size: 64, offset: 448)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!109, !3322, !453, !7, !249, !624}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3308, file: !3302, line: 141, baseType: !3343, size: 64, offset: 512)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!109, !3322, !453, !2082, !624}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3308, file: !3302, line: 144, baseType: !3347, size: 64, offset: 576)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!453, !3322}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3308, file: !3302, line: 145, baseType: !3347, size: 64, offset: 640)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3308, file: !3302, line: 146, baseType: !3352, size: 64, offset: 704)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!3300, !3322}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3308, file: !3302, line: 148, baseType: !3356, size: 64, offset: 768)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!3300, !3322, !3300}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3308, file: !3302, line: 151, baseType: !3360, size: 64, offset: 832)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!3300, !3322, !453}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3308, file: !3302, line: 153, baseType: !3364, size: 64, offset: 896)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!109, !3322, !453, !453, !7, !7, !3367}
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3302, line: 94, size: 640, elements: !3369)
!3369 = !{!3370, !3371, !3372}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3368, file: !3302, line: 95, baseType: !3300, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3368, file: !3302, line: 96, baseType: !7, size: 32, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3368, file: !3302, line: 97, baseType: !3373, size: 512, offset: 128)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 512, elements: !2639)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3308, file: !3302, line: 158, baseType: !3356, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3308, file: !3302, line: 161, baseType: !3352, size: 64, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3308, file: !3302, line: 163, baseType: !3311, size: 64, offset: 1088)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3308, file: !3302, line: 164, baseType: !3378, size: 64, offset: 1152)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!109, !3322, !3381}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3302, line: 73, size: 128, elements: !3383)
!3383 = !{!3384, !3385, !3386}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3382, file: !3302, line: 74, baseType: !7, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3382, file: !3302, line: 75, baseType: !7, size: 32, offset: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3382, file: !3302, line: 76, baseType: !3322, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3308, file: !3302, line: 166, baseType: !3388, size: 64, offset: 1216)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!249, !3300, !109}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3308, file: !3302, line: 167, baseType: !3392, size: 64, offset: 1280)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!109, !3322, !7}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3308, file: !3302, line: 168, baseType: !3396, size: 64, offset: 1344)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!109, !3300}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3301, file: !3302, line: 44, baseType: !3011, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3301, file: !3302, line: 45, baseType: !279, size: 128, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3301, file: !3302, line: 46, baseType: !279, size: 128, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3301, file: !3302, line: 47, baseType: !421, size: 8, offset: 448)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3012, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3012, file: !94, line: 778, baseType: !494, size: 32, offset: 5152)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3012, file: !94, line: 779, baseType: !368, size: 32, offset: 5184)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3012, file: !94, line: 781, baseType: !393, size: 32, offset: 5216)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3012, file: !94, line: 782, baseType: !279, size: 128, offset: 5248)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3012, file: !94, line: 784, baseType: !3409, size: 64, offset: 5376)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3411)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3412, line: 52, size: 768, elements: !3413)
!3412 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3422, !3426, !3427, !3428, !3429, !3433, !3437}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3411, file: !3412, line: 53, baseType: !453, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3411, file: !3412, line: 55, baseType: !628, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3411, file: !3412, line: 56, baseType: !628, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3411, file: !3412, line: 58, baseType: !3028, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3411, file: !3412, line: 59, baseType: !3419, size: 64, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!478, !3031, !3037}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3411, file: !3412, line: 61, baseType: !3423, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !3409}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3411, file: !3412, line: 62, baseType: !3039, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3411, file: !3412, line: 64, baseType: !3048, size: 64, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3411, file: !3412, line: 66, baseType: !1610, size: 64, offset: 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3411, file: !3412, line: 67, baseType: !3430, size: 64, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!1274, !3031}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3411, file: !3412, line: 69, baseType: !3434, size: 64, offset: 640)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !3031, !1645, !1646}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3411, file: !3412, line: 71, baseType: !3043, size: 64, offset: 704)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3012, file: !94, line: 785, baseType: !628, size: 64, offset: 5440)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3012, file: !94, line: 787, baseType: !3039, size: 64, offset: 5504)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3012, file: !94, line: 788, baseType: !3441, size: 64, offset: 5568)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3012, file: !94, line: 789, baseType: !3444, size: 64, offset: 5632)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3012, file: !94, line: 791, baseType: !3447, size: 64, offset: 5696)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3454}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3448, file: !94, line: 598, baseType: !116, size: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3448, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3448, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3448, file: !94, line: 601, baseType: !887, size: 8, offset: 96)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3448, file: !94, line: 602, baseType: !887, size: 8, offset: 104)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3012, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3012, file: !94, line: 795, baseType: !887, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3012, file: !94, line: 796, baseType: !887, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3012, file: !94, line: 797, baseType: !887, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3012, file: !94, line: 798, baseType: !887, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3012, file: !94, line: 799, baseType: !887, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3005, file: !3006, line: 197, baseType: !3462, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3464, line: 441, size: 1472, elements: !3465)
!3464 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!3465 = !{!3466, !3467, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3507, !3508, !3511, !3512, !3514, !3635, !3638, !3639, !3792}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3463, file: !3464, line: 442, baseType: !1743, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3463, file: !3464, line: 443, baseType: !3468, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3471, line: 14, size: 832, elements: !3472)
!3471 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3470, file: !3471, line: 15, baseType: !540, size: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3470, file: !3471, line: 16, baseType: !527, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3470, file: !3471, line: 17, baseType: !1006, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3470, file: !3471, line: 18, baseType: !279, size: 128, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3470, file: !3471, line: 19, baseType: !494, size: 32, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3470, file: !3471, line: 20, baseType: !7, size: 32, offset: 800)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3463, file: !3464, line: 444, baseType: !527, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3463, file: !3464, line: 445, baseType: !453, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3463, file: !3464, line: 446, baseType: !453, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3463, file: !3464, line: 447, baseType: !109, size: 32, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3463, file: !3464, line: 448, baseType: !109, size: 32, offset: 352)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3463, file: !3464, line: 449, baseType: !109, size: 32, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3463, file: !3464, line: 450, baseType: !7, size: 32, offset: 416)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3463, file: !3464, line: 451, baseType: !856, size: 16, offset: 448)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3463, file: !3464, line: 452, baseType: !856, size: 16, offset: 464)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3463, file: !3464, line: 453, baseType: !3489, size: 352, offset: 480)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3490, line: 30, size: 352, elements: !3491)
!3490 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!3491 = !{!3492, !3494, !3495, !3496, !3497, !3500, !3504, !3506}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3489, file: !3490, line: 31, baseType: !3493, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3490, line: 7, baseType: !7)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3489, file: !3490, line: 32, baseType: !3493, size: 32, offset: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3489, file: !3490, line: 33, baseType: !3493, size: 32, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3489, file: !3490, line: 34, baseType: !3493, size: 32, offset: 96)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3489, file: !3490, line: 35, baseType: !3498, size: 8, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3499, line: 5, baseType: !375)
!3499 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3489, file: !3490, line: 36, baseType: !3501, size: 152, offset: 136)
!3501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3498, size: 152, elements: !3502)
!3502 = !{!3503}
!3503 = !DISubrange(count: 19)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3489, file: !3490, line: 37, baseType: !3505, size: 32, offset: 288)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3499, line: 6, baseType: !7)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3489, file: !3490, line: 38, baseType: !3505, size: 32, offset: 320)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3463, file: !3464, line: 454, baseType: !258, size: 64, offset: 832)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3463, file: !3464, line: 455, baseType: !3509, size: 64, offset: 896)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3464, line: 455, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3463, file: !3464, line: 456, baseType: !3462, size: 64, offset: 960)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3463, file: !3464, line: 461, baseType: !3513, size: 64, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3463, file: !3464, line: 462, baseType: !3515, size: 64, offset: 1088)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !3518, line: 101, size: 3008, elements: !3519)
!3518 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!3519 = !{!3520, !3552, !3553, !3554, !3576, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3604, !3630, !3631, !3632, !3633, !3634}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3517, file: !3518, line: 102, baseType: !3521, size: 1088)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !3522, line: 35, size: 1088, elements: !3523)
!3522 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!3523 = !{!3524, !3541, !3542, !3543, !3544, !3545, !3549, !3550, !3551}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3521, file: !3522, line: 36, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !3522, line: 10, size: 256, elements: !3527)
!3527 = !{!3528, !3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3528 = !DIDerivedType(tag: DW_TAG_member, scope: !3526, file: !3522, line: 11, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3526, file: !3522, line: 11, size: 64, elements: !3530)
!3530 = !{!3531, !3532}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3529, file: !3522, line: 12, baseType: !3525, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3529, file: !3522, line: 13, baseType: !663, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3526, file: !3522, line: 15, baseType: !7, size: 32, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3526, file: !3522, line: 16, baseType: !7, size: 32, offset: 96)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3526, file: !3522, line: 17, baseType: !7, size: 32, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3526, file: !3522, line: 18, baseType: !7, size: 32, offset: 160)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3526, file: !3522, line: 19, baseType: !7, size: 32, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3526, file: !3522, line: 20, baseType: !887, size: 8, offset: 224)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3526, file: !3522, line: 22, baseType: !3540, align: 64, offset: 256)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, elements: !771)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3521, file: !3522, line: 37, baseType: !1313, size: 256, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3521, file: !3522, line: 38, baseType: !691, size: 256, offset: 320)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3521, file: !3522, line: 39, baseType: !413, size: 32, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3521, file: !3522, line: 40, baseType: !3526, size: 256, offset: 640)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3521, file: !3522, line: 41, baseType: !3546, size: 64, offset: 896)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !664, line: 56, size: 64, elements: !3547)
!3547 = !{!3548}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3546, file: !664, line: 57, baseType: !667, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3521, file: !3522, line: 42, baseType: !413, size: 32, offset: 960)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3521, file: !3522, line: 43, baseType: !109, size: 32, offset: 992)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3521, file: !3522, line: 44, baseType: !3525, size: 64, offset: 1024)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3517, file: !3518, line: 103, baseType: !3004, size: 64, offset: 1088)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3517, file: !3518, line: 104, baseType: !3004, size: 64, offset: 1152)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3517, file: !3518, line: 105, baseType: !3555, size: 64, offset: 1216)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !3518, line: 33, size: 320, elements: !3558)
!3558 = !{!3559, !3563, !3567, !3571, !3575}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !3557, file: !3518, line: 34, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!887, !3516}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !3557, file: !3518, line: 35, baseType: !3564, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3516, !887}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3557, file: !3518, line: 36, baseType: !3568, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !3516}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3557, file: !3518, line: 37, baseType: !3572, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!109, !3516, !3004}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !3557, file: !3518, line: 38, baseType: !3568, size: 64, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3517, file: !3518, line: 106, baseType: !3577, size: 64, offset: 1280)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3579)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !3518, line: 41, size: 192, elements: !3580)
!3580 = !{!3581, !3587, !3591}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3579, file: !3518, line: 42, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!624, !3516, !3585, !3585, !624}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !3579, file: !3518, line: 44, baseType: !3588, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !3516, !3585, !3585, !624}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3579, file: !3518, line: 46, baseType: !3568, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3517, file: !3518, line: 107, baseType: !393, size: 32, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3517, file: !3518, line: 108, baseType: !109, size: 32, offset: 1376)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3517, file: !3518, line: 109, baseType: !109, size: 32, offset: 1408)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3517, file: !3518, line: 110, baseType: !756, size: 192, offset: 1472)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3517, file: !3518, line: 111, baseType: !756, size: 192, offset: 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3517, file: !3518, line: 112, baseType: !258, size: 64, offset: 1856)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3517, file: !3518, line: 113, baseType: !258, size: 64, offset: 1920)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3517, file: !3518, line: 114, baseType: !375, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3517, file: !3518, line: 115, baseType: !691, size: 256, offset: 2048)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3517, file: !3518, line: 116, baseType: !691, size: 256, offset: 2304)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3517, file: !3518, line: 117, baseType: !3603, size: 64, offset: 2560)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !3517, file: !3518, line: 118, baseType: !3605, size: 192, offset: 2624)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3517, file: !3518, line: 118, size: 192, elements: !3606)
!3606 = !{!3607, !3628}
!3607 = !DIDerivedType(tag: DW_TAG_member, scope: !3605, file: !3518, line: 118, baseType: !3608, size: 192)
!3608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3605, file: !3518, line: 118, size: 192, elements: !3609)
!3609 = !{!3610, !3619, !3620, !3621, !3626, !3627}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !3608, file: !3518, line: 118, baseType: !3611, size: 192)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !3612, line: 44, size: 192, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!3613 = !{!3614, !3615, !3616, !3617, !3618}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !3611, file: !3612, line: 45, baseType: !7, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !3611, file: !3612, line: 46, baseType: !7, size: 32, offset: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3611, file: !3612, line: 47, baseType: !7, size: 32, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !3611, file: !3612, line: 48, baseType: !7, size: 32, offset: 96)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3611, file: !3612, line: 49, baseType: !249, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3608, file: !3518, line: 118, baseType: !3603, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !3608, file: !3518, line: 118, baseType: !373, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !3608, file: !3518, line: 118, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !3624)
!3624 = !{!3625}
!3625 = !DISubrange(count: 0)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3608, file: !3518, line: 118, baseType: !3603, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !3608, file: !3518, line: 118, baseType: !373, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3605, file: !3518, line: 118, baseType: !3629, offset: 192)
!3629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, elements: !3624)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3517, file: !3518, line: 119, baseType: !7, size: 32, offset: 2816)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3517, file: !3518, line: 120, baseType: !7, size: 32, offset: 2848)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3517, file: !3518, line: 121, baseType: !109, size: 32, offset: 2880)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3517, file: !3518, line: 122, baseType: !1743, size: 32, offset: 2912)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3517, file: !3518, line: 123, baseType: !249, size: 64, offset: 2944)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3463, file: !3464, line: 463, baseType: !3636, size: 64, offset: 1152)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3463, file: !3464, line: 464, baseType: !249, size: 64, offset: 1216)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3463, file: !3464, line: 470, baseType: !3640, size: 64, offset: 1280)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3642)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3464, line: 357, size: 2176, elements: !3643)
!3643 = !{!3644, !3648, !3652, !3656, !3660, !3664, !3668, !3669, !3673, !3677, !3678, !3682, !3683, !3687, !3691, !3697, !3698, !3699, !3700, !3701, !3702, !3706, !3707, !3708, !3709, !3713, !3717, !3721, !3725, !3737, !3760, !3786, !3787, !3791}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3642, file: !3464, line: 358, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!3004, !3462, !656, !109}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3642, file: !3464, line: 360, baseType: !3649, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!109, !3462, !3004}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3642, file: !3464, line: 361, baseType: !3653, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !3462, !3004}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3642, file: !3464, line: 362, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!109, !3004, !656}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3642, file: !3464, line: 363, baseType: !3661, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{null, !3004, !656}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3642, file: !3464, line: 364, baseType: !3665, size: 64, offset: 320)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{null, !3004}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3642, file: !3464, line: 365, baseType: !3665, size: 64, offset: 384)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3642, file: !3464, line: 366, baseType: !3670, size: 64, offset: 448)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!612, !3004, !3585, !624}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3642, file: !3464, line: 367, baseType: !3674, size: 64, offset: 512)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!109, !3004, !421}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3642, file: !3464, line: 368, baseType: !3665, size: 64, offset: 576)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3642, file: !3464, line: 369, baseType: !3679, size: 64, offset: 640)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!7, !3004}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3642, file: !3464, line: 370, baseType: !3679, size: 64, offset: 704)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3642, file: !3464, line: 371, baseType: !3684, size: 64, offset: 768)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!109, !3004, !7, !258}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3642, file: !3464, line: 373, baseType: !3688, size: 64, offset: 832)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!257, !3004, !7, !258}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3642, file: !3464, line: 375, baseType: !3692, size: 64, offset: 896)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{null, !3004, !3695}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3489)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3642, file: !3464, line: 376, baseType: !3665, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3642, file: !3464, line: 377, baseType: !3665, size: 64, offset: 1024)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3642, file: !3464, line: 378, baseType: !3665, size: 64, offset: 1088)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3642, file: !3464, line: 379, baseType: !3665, size: 64, offset: 1152)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3642, file: !3464, line: 380, baseType: !3665, size: 64, offset: 1216)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3642, file: !3464, line: 381, baseType: !3703, size: 64, offset: 1280)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!109, !3004, !109}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3642, file: !3464, line: 382, baseType: !3665, size: 64, offset: 1344)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !3642, file: !3464, line: 383, baseType: !3703, size: 64, offset: 1408)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3642, file: !3464, line: 384, baseType: !3665, size: 64, offset: 1472)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3642, file: !3464, line: 385, baseType: !3710, size: 64, offset: 1536)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !3004, !109}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3642, file: !3464, line: 386, baseType: !3714, size: 64, offset: 1600)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !3004, !254}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3642, file: !3464, line: 387, baseType: !3718, size: 64, offset: 1664)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!109, !3004}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3642, file: !3464, line: 388, baseType: !3722, size: 64, offset: 1728)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!109, !3004, !7, !7}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3642, file: !3464, line: 390, baseType: !3726, size: 64, offset: 1792)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!109, !3004, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3731, line: 15, size: 64, elements: !3732)
!3731 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!3732 = !{!3733, !3734, !3735, !3736}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3730, file: !3731, line: 16, baseType: !301, size: 16)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3730, file: !3731, line: 17, baseType: !301, size: 16, offset: 16)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3730, file: !3731, line: 18, baseType: !301, size: 16, offset: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3730, file: !3731, line: 19, baseType: !301, size: 16, offset: 48)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3642, file: !3464, line: 391, baseType: !3738, size: 64, offset: 1856)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!109, !3004, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3743, line: 102, size: 640, elements: !3744)
!3743 = !DIFile(filename: "./include/uapi/linux/serial.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a92ffabcada0669ea97b2d286627d08d")
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "cts", scope: !3742, file: !3743, line: 103, baseType: !109, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !3742, file: !3743, line: 103, baseType: !109, size: 32, offset: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !3742, file: !3743, line: 103, baseType: !109, size: 32, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dcd", scope: !3742, file: !3743, line: 103, baseType: !109, size: 32, offset: 96)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !3742, file: !3743, line: 104, baseType: !109, size: 32, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !3742, file: !3743, line: 104, baseType: !109, size: 32, offset: 160)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !3742, file: !3743, line: 105, baseType: !109, size: 32, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "overrun", scope: !3742, file: !3743, line: 105, baseType: !109, size: 32, offset: 224)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !3742, file: !3743, line: 105, baseType: !109, size: 32, offset: 256)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !3742, file: !3743, line: 105, baseType: !109, size: 32, offset: 288)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "buf_overrun", scope: !3742, file: !3743, line: 106, baseType: !109, size: 32, offset: 320)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3742, file: !3743, line: 107, baseType: !3757, size: 288, offset: 352)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 288, elements: !3758)
!3758 = !{!3759}
!3759 = !DISubrange(count: 9)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3642, file: !3464, line: 393, baseType: !3761, size: 64, offset: 1920)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!109, !3004, !3764}
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3743, line: 19, size: 576, elements: !3766)
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3765, file: !3743, line: 20, baseType: !109, size: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3765, file: !3743, line: 21, baseType: !109, size: 32, offset: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3765, file: !3743, line: 22, baseType: !7, size: 32, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3765, file: !3743, line: 23, baseType: !109, size: 32, offset: 96)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3765, file: !3743, line: 24, baseType: !109, size: 32, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo_size", scope: !3765, file: !3743, line: 25, baseType: !109, size: 32, offset: 160)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "custom_divisor", scope: !3765, file: !3743, line: 26, baseType: !109, size: 32, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "baud_base", scope: !3765, file: !3743, line: 27, baseType: !109, size: 32, offset: 224)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3765, file: !3743, line: 28, baseType: !301, size: 16, offset: 256)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "io_type", scope: !3765, file: !3743, line: 29, baseType: !254, size: 8, offset: 272)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_char", scope: !3765, file: !3743, line: 30, baseType: !3778, size: 8, offset: 280)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 8, elements: !2721)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "hub6", scope: !3765, file: !3743, line: 31, baseType: !109, size: 32, offset: 288)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3765, file: !3743, line: 32, baseType: !301, size: 16, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait2", scope: !3765, file: !3743, line: 33, baseType: !301, size: 16, offset: 336)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_base", scope: !3765, file: !3743, line: 34, baseType: !3603, size: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_reg_shift", scope: !3765, file: !3743, line: 35, baseType: !301, size: 16, offset: 448)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "port_high", scope: !3765, file: !3743, line: 36, baseType: !7, size: 32, offset: 480)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "iomap_base", scope: !3765, file: !3743, line: 37, baseType: !258, size: 64, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3642, file: !3464, line: 394, baseType: !3761, size: 64, offset: 1984)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3642, file: !3464, line: 395, baseType: !3788, size: 64, offset: 2048)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{null, !3004, !1530}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3642, file: !3464, line: 401, baseType: !1560, size: 64, offset: 2112)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3463, file: !3464, line: 471, baseType: !279, size: 128, offset: 1344)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3005, file: !3006, line: 198, baseType: !3516, size: 64, offset: 192)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3005, file: !3006, line: 199, baseType: !3640, size: 64, offset: 256)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3005, file: !3006, line: 201, baseType: !3796, size: 64, offset: 320)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3798, line: 269, size: 128, elements: !3799)
!3798 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!3799 = !{!3800, !3841}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3797, file: !3798, line: 270, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3798, line: 231, size: 1152, elements: !3803)
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3814, !3818, !3819, !3820, !3821, !3825, !3826, !3830, !3831, !3835, !3839, !3840}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3802, file: !3798, line: 232, baseType: !478, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3802, file: !3798, line: 233, baseType: !109, size: 32, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3802, file: !3798, line: 238, baseType: !3718, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3802, file: !3798, line: 239, baseType: !3665, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3802, file: !3798, line: 240, baseType: !3665, size: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3802, file: !3798, line: 241, baseType: !3810, size: 64, offset: 320)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!612, !3004, !656, !3813, !624, !1521, !258}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3802, file: !3798, line: 243, baseType: !3815, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!612, !3004, !656, !3585, !624}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3802, file: !3798, line: 245, baseType: !3684, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3802, file: !3798, line: 247, baseType: !3684, size: 64, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3802, file: !3798, line: 249, baseType: !3692, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3802, file: !3798, line: 250, baseType: !3822, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!1132, !3004, !656, !1134}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3802, file: !3798, line: 252, baseType: !3665, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3802, file: !3798, line: 257, baseType: !3827, size: 64, offset: 768)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !3004, !3585, !3585, !624}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3802, file: !3798, line: 259, baseType: !3665, size: 64, offset: 832)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3802, file: !3798, line: 260, baseType: !3832, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !3004, !887}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3802, file: !3798, line: 261, baseType: !3836, size: 64, offset: 960)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!624, !3004, !3585, !3585, !624}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !3802, file: !3798, line: 263, baseType: !3827, size: 64, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3802, file: !3798, line: 266, baseType: !527, size: 64, offset: 1088)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3797, file: !3798, line: 271, baseType: !3004, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3005, file: !3006, line: 202, baseType: !3843, size: 384, offset: 384)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3798, line: 17, size: 384, elements: !3844)
!3844 = !{!3845, !3846, !3847, !3848, !3849}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3843, file: !3798, line: 18, baseType: !682, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3843, file: !3798, line: 19, baseType: !696, size: 32, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3843, file: !3798, line: 20, baseType: !7, size: 32, offset: 96)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3843, file: !3798, line: 21, baseType: !279, size: 128, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3843, file: !3798, line: 22, baseType: !279, size: 128, offset: 256)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3005, file: !3006, line: 204, baseType: !691, size: 256, offset: 768)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3005, file: !3006, line: 205, baseType: !691, size: 256, offset: 1024)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3005, file: !3006, line: 206, baseType: !691, size: 256, offset: 1280)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3005, file: !3006, line: 207, baseType: !828, size: 320, offset: 1536)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3005, file: !3006, line: 208, baseType: !691, size: 256, offset: 1856)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3005, file: !3006, line: 209, baseType: !3489, size: 352, offset: 2112)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3005, file: !3006, line: 209, baseType: !3489, size: 352, offset: 2464)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3005, file: !3006, line: 210, baseType: !3858, size: 512, offset: 2816)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 512, elements: !585)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3005, file: !3006, line: 211, baseType: !258, size: 64, offset: 3328)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3005, file: !3006, line: 212, baseType: !109, size: 32, offset: 3392)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3005, file: !3006, line: 213, baseType: !7, size: 32, offset: 3424)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3005, file: !3006, line: 214, baseType: !3730, size: 64, offset: 3456)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3005, file: !3006, line: 221, baseType: !3864, size: 64, align: 64, offset: 3520)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !3006, line: 216, size: 64, align: 64, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3864, file: !3006, line: 217, baseType: !393, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !3864, file: !3006, line: 218, baseType: !887, size: 8, offset: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !3864, file: !3006, line: 219, baseType: !887, size: 8, offset: 40)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3864, file: !3006, line: 220, baseType: !3870, offset: 64)
!3870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, elements: !3624)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3005, file: !3006, line: 230, baseType: !3872, size: 192, align: 64, offset: 3584)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !3006, line: 223, size: 192, align: 64, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3879}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !3872, file: !3006, line: 224, baseType: !730, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !3872, file: !3006, line: 225, baseType: !730, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3872, file: !3006, line: 226, baseType: !393, size: 32, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !3872, file: !3006, line: 227, baseType: !375, size: 8, offset: 160)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !3872, file: !3006, line: 228, baseType: !887, size: 8, offset: 168)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3872, file: !3006, line: 229, baseType: !3870, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3005, file: !3006, line: 232, baseType: !887, size: 8, offset: 3776)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3005, file: !3006, line: 233, baseType: !887, size: 8, offset: 3784)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3005, file: !3006, line: 234, baseType: !109, size: 32, offset: 3808)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3005, file: !3006, line: 236, baseType: !3004, size: 64, offset: 3840)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3005, file: !3006, line: 237, baseType: !3885, size: 64, offset: 3904)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3886, file: !14, line: 1084, baseType: !709, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3886, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3886, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3886, file: !14, line: 1087, baseType: !3885, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3886, file: !14, line: 1088, baseType: !656, size: 64, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3886, file: !14, line: 1089, baseType: !669, size: 128, align: 64, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3005, file: !3006, line: 238, baseType: !756, size: 192, offset: 3968)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3005, file: !3006, line: 239, baseType: !756, size: 192, offset: 4160)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3005, file: !3006, line: 240, baseType: !1313, size: 256, offset: 4352)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3005, file: !3006, line: 241, baseType: !249, size: 64, offset: 4608)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3005, file: !3006, line: 242, baseType: !249, size: 64, offset: 4672)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3005, file: !3006, line: 243, baseType: !393, size: 32, offset: 4736)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3005, file: !3006, line: 244, baseType: !109, size: 32, offset: 4768)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3005, file: !3006, line: 245, baseType: !3603, size: 64, offset: 4800)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3005, file: !3006, line: 247, baseType: !279, size: 128, offset: 4864)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3005, file: !3006, line: 250, baseType: !1313, size: 256, offset: 4992)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2939, file: !2940, line: 185, baseType: !3905, size: 64, offset: 3328)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !341, line: 860, baseType: !3906)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 853, size: 64, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3906, file: !341, line: 858, baseType: !340, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3906, file: !341, line: 859, baseType: !393, size: 32, offset: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2939, file: !2940, line: 186, baseType: !260, size: 64, offset: 3392)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2939, file: !2940, line: 186, baseType: !260, size: 64, offset: 3456)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2939, file: !2940, line: 186, baseType: !260, size: 64, offset: 3520)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2939, file: !2940, line: 186, baseType: !260, size: 64, offset: 3584)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2939, file: !2940, line: 187, baseType: !260, size: 64, offset: 3648)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2939, file: !2940, line: 188, baseType: !260, size: 64, offset: 3712)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2939, file: !2940, line: 189, baseType: !2873, size: 192, offset: 3776)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2939, file: !2940, line: 190, baseType: !258, size: 64, offset: 3968)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2939, file: !2940, line: 190, baseType: !258, size: 64, offset: 4032)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2939, file: !2940, line: 190, baseType: !258, size: 64, offset: 4096)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2939, file: !2940, line: 190, baseType: !258, size: 64, offset: 4160)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2939, file: !2940, line: 191, baseType: !258, size: 64, offset: 4224)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2939, file: !2940, line: 191, baseType: !258, size: 64, offset: 4288)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2939, file: !2940, line: 191, baseType: !258, size: 64, offset: 4352)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2939, file: !2940, line: 191, baseType: !258, size: 64, offset: 4416)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2939, file: !2940, line: 192, baseType: !258, size: 64, offset: 4480)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2939, file: !2940, line: 192, baseType: !258, size: 64, offset: 4544)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2939, file: !2940, line: 192, baseType: !258, size: 64, offset: 4608)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2939, file: !2940, line: 192, baseType: !258, size: 64, offset: 4672)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2939, file: !2940, line: 193, baseType: !258, size: 64, offset: 4736)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2939, file: !2940, line: 193, baseType: !258, size: 64, offset: 4800)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2939, file: !2940, line: 194, baseType: !3932, size: 448, offset: 4864)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3933, line: 12, size: 448, elements: !3934)
!3933 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940, !3941}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3932, file: !3933, line: 15, baseType: !260, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3932, file: !3933, line: 17, baseType: !260, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3932, file: !3933, line: 19, baseType: !260, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3932, file: !3933, line: 21, baseType: !260, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3932, file: !3933, line: 29, baseType: !260, size: 64, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3932, file: !3933, line: 35, baseType: !260, size: 64, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3932, file: !3933, line: 44, baseType: !260, size: 64, offset: 384)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2939, file: !2940, line: 202, baseType: !264, size: 64, offset: 5312)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2939, file: !2940, line: 213, baseType: !3944, size: 2048, offset: 5376)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3945, size: 2048, elements: !2908)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3946, line: 43, size: 128, elements: !3947)
!3946 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3947 = !{!3948, !3949}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3945, file: !3946, line: 44, baseType: !626, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3945, file: !3946, line: 45, baseType: !626, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2939, file: !2940, line: 216, baseType: !3951, size: 448, offset: 7424)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2940, line: 30, size: 448, elements: !3952)
!3952 = !{!3953, !3954, !3955, !3956, !3957, !3958, !3959}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3951, file: !2940, line: 31, baseType: !109, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3951, file: !2940, line: 32, baseType: !257, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3951, file: !2940, line: 33, baseType: !258, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3951, file: !2940, line: 34, baseType: !260, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3951, file: !2940, line: 34, baseType: !260, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3951, file: !2940, line: 35, baseType: !258, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3951, file: !2940, line: 35, baseType: !258, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2939, file: !2940, line: 219, baseType: !3961, size: 64, offset: 7872)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2940, line: 219, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2939, file: !2940, line: 222, baseType: !7, size: 32, offset: 7936)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2939, file: !2940, line: 223, baseType: !3965, size: 64, offset: 8000)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2940, line: 223, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2939, file: !2940, line: 230, baseType: !887, size: 8, offset: 8064)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2939, file: !2940, line: 231, baseType: !856, size: 16, offset: 8080)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2939, file: !2940, line: 232, baseType: !856, size: 16, offset: 8096)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2939, file: !2940, line: 234, baseType: !1158, size: 64, offset: 8128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2939, file: !2940, line: 237, baseType: !691, size: 256, offset: 8192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2939, file: !2940, line: 243, baseType: !828, size: 320, offset: 8448)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2486, file: !1507, line: 1111, baseType: !3974, size: 64, offset: 15424)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2940, line: 20, size: 16640, elements: !3976)
!3976 = !{!3977, !3978, !3979, !3980}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3975, file: !2940, line: 21, baseType: !393, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3975, file: !2940, line: 22, baseType: !734, size: 32, offset: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3975, file: !2940, line: 23, baseType: !756, size: 192, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3975, file: !2940, line: 24, baseType: !3981, size: 16384, offset: 256)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3982, size: 16384, elements: !585)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !975, line: 51, size: 256, elements: !3983)
!3983 = !{!3984}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3982, file: !975, line: 52, baseType: !3985, size: 256)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !975, line: 37, size: 256, elements: !3986)
!3986 = !{!3987, !3994, !3995, !3999}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3985, file: !975, line: 39, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3989, line: 83, baseType: !3990)
!3989 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3989, line: 82, baseType: !3992)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{null, !109}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3985, file: !975, line: 40, baseType: !258, size: 64, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3985, file: !975, line: 46, baseType: !3996, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3989, line: 86, baseType: !3997)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3989, line: 85, baseType: !2110)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3985, file: !975, line: 48, baseType: !2954, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2486, file: !1507, line: 1112, baseType: !2954, size: 64, offset: 15488)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2486, file: !1507, line: 1113, baseType: !2954, size: 64, offset: 15552)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2486, file: !1507, line: 1115, baseType: !2954, size: 64, offset: 15616)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2486, file: !1507, line: 1116, baseType: !2950, size: 192, offset: 15680)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2486, file: !1507, line: 1117, baseType: !258, size: 64, offset: 15872)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2486, file: !1507, line: 1118, baseType: !624, size: 64, offset: 15936)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2486, file: !1507, line: 1119, baseType: !7, size: 32, offset: 16000)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2486, file: !1507, line: 1121, baseType: !672, size: 64, offset: 16064)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2486, file: !1507, line: 1125, baseType: !4009, size: 64, offset: 16128)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1507, line: 43, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2486, file: !1507, line: 1127, baseType: !304, size: 32, offset: 16192)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2486, file: !1507, line: 1128, baseType: !7, size: 32, offset: 16224)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2486, file: !1507, line: 1130, baseType: !4014, size: 128, offset: 16256)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4015, line: 37, size: 128, elements: !4016)
!4015 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4016 = !{!4017, !4018, !4019}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4014, file: !4015, line: 38, baseType: !109, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4014, file: !4015, line: 39, baseType: !413, size: 32, offset: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4014, file: !4015, line: 40, baseType: !4020, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4015, line: 24, flags: DIFlagFwdDecl)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2486, file: !1507, line: 1131, baseType: !4023, size: 256, offset: 16384)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4024, line: 12, size: 256, elements: !4025)
!4024 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4025 = !{!4026, !4027, !4028, !4029}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4023, file: !4024, line: 13, baseType: !478, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4023, file: !4024, line: 14, baseType: !258, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4023, file: !4024, line: 15, baseType: !258, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4023, file: !4024, line: 16, baseType: !887, size: 8, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2486, file: !1507, line: 1134, baseType: !260, size: 64, offset: 16640)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2486, file: !1507, line: 1135, baseType: !260, size: 64, offset: 16704)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2486, file: !1507, line: 1138, baseType: !393, size: 32, offset: 16768)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2486, file: !1507, line: 1141, baseType: !696, size: 32, offset: 16800)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2486, file: !1507, line: 1143, baseType: !4035, size: 64, offset: 16832)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1507, line: 735, size: 64, elements: !4036)
!4036 = !{!4037}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4035, file: !1507, line: 736, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2486, file: !1507, line: 1147, baseType: !2655, size: 128, offset: 16896)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2486, file: !1507, line: 1149, baseType: !2485, size: 64, offset: 17024)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2486, file: !1507, line: 1151, baseType: !4042, size: 64, offset: 17088)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1507, line: 1151, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2486, file: !1507, line: 1188, baseType: !249, size: 64, offset: 17152)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2486, file: !1507, line: 1191, baseType: !4046, size: 64, offset: 17216)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1507, line: 44, flags: DIFlagFwdDecl)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2486, file: !1507, line: 1194, baseType: !4049, size: 64, offset: 17280)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1507, line: 45, flags: DIFlagFwdDecl)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2486, file: !1507, line: 1197, baseType: !4052, size: 64, offset: 17344)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1507, line: 61, flags: DIFlagFwdDecl)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2486, file: !1507, line: 1199, baseType: !4055, size: 64, offset: 17408)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4057, line: 99, size: 128, elements: !4058)
!4057 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4058 = !{!4059, !4060, !4061}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4056, file: !4057, line: 100, baseType: !682, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4056, file: !4057, line: 101, baseType: !413, size: 32, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4056, file: !4057, line: 103, baseType: !301, size: 16, offset: 96)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2486, file: !1507, line: 1202, baseType: !4063, size: 64, offset: 17472)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1507, line: 48, flags: DIFlagFwdDecl)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2486, file: !1507, line: 1205, baseType: !258, size: 64, offset: 17536)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2486, file: !1507, line: 1206, baseType: !4067, size: 64, offset: 17600)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !975, line: 14, baseType: !4069)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !975, line: 12, size: 384, elements: !4070)
!4070 = !{!4071}
!4071 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !975, line: 13, baseType: !4072, size: 384)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !975, line: 13, size: 384, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4072, file: !975, line: 13, baseType: !109, size: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4072, file: !975, line: 13, baseType: !109, size: 32, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4072, file: !975, line: 13, baseType: !109, size: 32, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4072, file: !975, line: 13, baseType: !4078, size: 256, offset: 128)
!4078 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4079, line: 37, size: 256, elements: !4080)
!4079 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4080 = !{!4081, !4086, !4099, !4105, !4114, !4141, !4146}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4078, file: !4079, line: 42, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 39, size: 64, elements: !4083)
!4083 = !{!4084, !4085}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4082, file: !4079, line: 40, baseType: !2850, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4082, file: !4079, line: 41, baseType: !310, size: 32, offset: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4078, file: !4079, line: 50, baseType: !4087, size: 192)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 45, size: 192, elements: !4088)
!4088 = !{!4089, !4091, !4092, !4098}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4087, file: !4079, line: 46, baseType: !4090, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !311, line: 95, baseType: !109)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4087, file: !4079, line: 47, baseType: !109, size: 32, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4087, file: !4079, line: 48, baseType: !4093, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4079, line: 11, baseType: !4094)
!4094 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4079, line: 8, size: 64, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4094, file: !4079, line: 9, baseType: !109, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4094, file: !4079, line: 10, baseType: !249, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4087, file: !4079, line: 49, baseType: !109, size: 32, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4078, file: !4079, line: 57, baseType: !4100, size: 128)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 53, size: 128, elements: !4101)
!4101 = !{!4102, !4103, !4104}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4100, file: !4079, line: 54, baseType: !2850, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4100, file: !4079, line: 55, baseType: !310, size: 32, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4100, file: !4079, line: 56, baseType: !4093, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4078, file: !4079, line: 66, baseType: !4106, size: 256)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 60, size: 256, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4111, !4113}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4106, file: !4079, line: 61, baseType: !2850, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4106, file: !4079, line: 62, baseType: !310, size: 32, offset: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4106, file: !4079, line: 63, baseType: !109, size: 32, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4106, file: !4079, line: 64, baseType: !4112, size: 64, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !311, line: 94, baseType: !614)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4106, file: !4079, line: 65, baseType: !4112, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4078, file: !4079, line: 105, baseType: !4115, size: 256)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 69, size: 256, elements: !4116)
!4116 = !{!4117, !4118}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4115, file: !4079, line: 70, baseType: !249, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, scope: !4115, file: !4079, line: 79, baseType: !4119, size: 192, offset: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4115, file: !4079, line: 79, size: 192, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4130, !4135}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4119, file: !4079, line: 81, baseType: !109, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4119, file: !4079, line: 86, baseType: !856, size: 16)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4119, file: !4079, line: 92, baseType: !4124, size: 192)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4119, file: !4079, line: 88, size: 192, elements: !4125)
!4125 = !{!4126, !4128, !4129}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4124, file: !4079, line: 89, baseType: !4127, size: 64)
!4127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !2639)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4124, file: !4079, line: 90, baseType: !249, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4124, file: !4079, line: 91, baseType: !249, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4119, file: !4079, line: 97, baseType: !4131, size: 96)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4119, file: !4079, line: 94, size: 96, elements: !4132)
!4132 = !{!4133, !4134}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4131, file: !4079, line: 95, baseType: !4127, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4131, file: !4079, line: 96, baseType: !369, size: 32, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4119, file: !4079, line: 103, baseType: !4136, size: 128)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4119, file: !4079, line: 99, size: 128, elements: !4137)
!4137 = !{!4138, !4139, !4140}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4136, file: !4079, line: 100, baseType: !258, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4136, file: !4079, line: 101, baseType: !369, size: 32, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4136, file: !4079, line: 102, baseType: !369, size: 32, offset: 96)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4078, file: !4079, line: 111, baseType: !4142, size: 128)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 108, size: 128, elements: !4143)
!4143 = !{!4144, !4145}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4142, file: !4079, line: 109, baseType: !257, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4142, file: !4079, line: 110, baseType: !109, size: 32, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4078, file: !4079, line: 118, baseType: !4147, size: 128)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4079, line: 114, size: 128, elements: !4148)
!4148 = !{!4149, !4150, !4151}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4147, file: !4079, line: 115, baseType: !249, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4147, file: !4079, line: 116, baseType: !109, size: 32, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4147, file: !4079, line: 117, baseType: !7, size: 32, offset: 96)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2486, file: !1507, line: 1208, baseType: !3932, size: 448, offset: 17664)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2486, file: !1507, line: 1215, baseType: !260, size: 64, offset: 18112)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2486, file: !1507, line: 1217, baseType: !260, size: 64, offset: 18176)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2486, file: !1507, line: 1219, baseType: !260, size: 64, offset: 18240)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2486, file: !1507, line: 1223, baseType: !4157, size: 64, offset: 18304)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4158, line: 99, baseType: !4159)
!4158 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4158, line: 99, size: 64, elements: !4160)
!4160 = !{!4161}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4159, file: !4158, line: 99, baseType: !2720, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2486, file: !1507, line: 1225, baseType: !340, size: 32, offset: 18368)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2486, file: !1507, line: 1226, baseType: !109, size: 32, offset: 18400)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2486, file: !1507, line: 1227, baseType: !109, size: 32, offset: 18432)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2486, file: !1507, line: 1231, baseType: !4166, size: 64, offset: 18496)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1507, line: 1231, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2486, file: !1507, line: 1233, baseType: !279, size: 128, offset: 18560)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2486, file: !1507, line: 1240, baseType: !4170, size: 64, offset: 18688)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1507, line: 62, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2486, file: !1507, line: 1242, baseType: !4173, size: 64, offset: 18752)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1507, line: 1242, flags: DIFlagFwdDecl)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2486, file: !1507, line: 1244, baseType: !279, size: 128, offset: 18816)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2486, file: !1507, line: 1245, baseType: !4177, size: 64, offset: 18944)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1507, line: 51, flags: DIFlagFwdDecl)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2486, file: !1507, line: 1246, baseType: !691, size: 256, offset: 19008)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2486, file: !1507, line: 1247, baseType: !7, size: 32, offset: 19264)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2486, file: !1507, line: 1250, baseType: !4182, size: 64, offset: 19328)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1507, line: 57, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2486, file: !1507, line: 1251, baseType: !691, size: 256, offset: 19392)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2486, file: !1507, line: 1252, baseType: !279, size: 128, offset: 19648)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2486, file: !1507, line: 1259, baseType: !1453, size: 64, offset: 19776)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2486, file: !1507, line: 1260, baseType: !856, size: 16, offset: 19840)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2486, file: !1507, line: 1261, baseType: !856, size: 16, offset: 19856)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2486, file: !1507, line: 1314, baseType: !4190, size: 64, offset: 19904)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4192, line: 62, size: 256, align: 256, elements: !4193)
!4192 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4193 = !{!4194, !4195, !4196, !4197, !4198, !4199, !4200}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4191, file: !4192, line: 75, baseType: !369, size: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4191, file: !4192, line: 90, baseType: !369, size: 32, offset: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4191, file: !4192, line: 112, baseType: !262, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4191, file: !4192, line: 132, baseType: !369, size: 32, offset: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4191, file: !4192, line: 140, baseType: !369, size: 32, offset: 160)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4191, file: !4192, line: 149, baseType: !369, size: 32, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4191, file: !4192, line: 154, baseType: !4201, offset: 224)
!4201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !771)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2486, file: !1507, line: 1315, baseType: !368, size: 32, offset: 19968)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2486, file: !1507, line: 1316, baseType: !368, size: 32, offset: 20000)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2486, file: !1507, line: 1321, baseType: !258, size: 64, offset: 20032)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2486, file: !1507, line: 1325, baseType: !109, size: 32, offset: 20096)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2486, file: !1507, line: 1326, baseType: !109, size: 32, offset: 20128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2486, file: !1507, line: 1327, baseType: !109, size: 32, offset: 20160)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2486, file: !1507, line: 1328, baseType: !109, size: 32, offset: 20192)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2486, file: !1507, line: 1329, baseType: !669, size: 128, align: 64, offset: 20224)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2486, file: !1507, line: 1332, baseType: !4211, size: 128, offset: 20352)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4212, line: 51, size: 128, elements: !4213)
!4212 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4213 = !{!4214, !4219, !4220}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4211, file: !4212, line: 60, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4216, line: 7, size: 64, elements: !4217)
!4216 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4217 = !{!4218}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4215, file: !4216, line: 12, baseType: !2717, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4211, file: !4212, line: 63, baseType: !887, size: 8, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4211, file: !4212, line: 70, baseType: !887, size: 8, offset: 72)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2486, file: !1507, line: 1335, baseType: !1505, size: 64, offset: 20480)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2486, file: !1507, line: 1337, baseType: !4223, size: 128, offset: 20544)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4212, line: 39, size: 128, elements: !4224)
!4224 = !{!4225, !4226, !4227}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4223, file: !4212, line: 40, baseType: !265, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4223, file: !4212, line: 42, baseType: !369, size: 32, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4223, file: !4212, line: 43, baseType: !369, size: 32, offset: 96)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2486, file: !1507, line: 1340, baseType: !4229, size: 64, offset: 20672)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1507, line: 69, flags: DIFlagFwdDecl)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2486, file: !1507, line: 1351, baseType: !109, size: 32, offset: 20736)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2486, file: !1507, line: 1352, baseType: !109, size: 32, offset: 20768)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2486, file: !1507, line: 1354, baseType: !258, size: 64, offset: 20800)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2486, file: !1507, line: 1364, baseType: !260, size: 64, offset: 20864)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2486, file: !1507, line: 1365, baseType: !260, size: 64, offset: 20928)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2486, file: !1507, line: 1412, baseType: !258, size: 64, offset: 20992)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2486, file: !1507, line: 1453, baseType: !4238, size: 64, offset: 21056)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1507, line: 1453, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2486, file: !1507, line: 1457, baseType: !4241, size: 64, offset: 21120)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !4243)
!4243 = !{!4244, !4245, !4264, !4267, !4268, !4301, !4311}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4242, file: !68, line: 62, baseType: !67, size: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, scope: !4242, file: !68, line: 64, baseType: !4246, size: 192, offset: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4242, file: !68, line: 64, size: 192, elements: !4247)
!4247 = !{!4248, !4259}
!4248 = !DIDerivedType(tag: DW_TAG_member, scope: !4246, file: !68, line: 65, baseType: !4249, size: 192)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4246, file: !68, line: 65, size: 192, elements: !4250)
!4250 = !{!4251, !4258}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4249, file: !68, line: 66, baseType: !4252, size: 128)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4253, line: 50, size: 128, elements: !4254)
!4253 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4254 = !{!4255, !4256, !4257}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4252, file: !4253, line: 52, baseType: !258, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4252, file: !4253, line: 54, baseType: !7, size: 32, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4252, file: !4253, line: 55, baseType: !7, size: 32, offset: 96)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4249, file: !68, line: 67, baseType: !258, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, scope: !4246, file: !68, line: 70, baseType: !4260, size: 192)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4246, file: !68, line: 70, size: 192, elements: !4261)
!4261 = !{!4262, !4263}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4260, file: !68, line: 71, baseType: !669, size: 128, align: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4260, file: !68, line: 72, baseType: !258, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4242, file: !68, line: 76, baseType: !4265, size: 64, offset: 256)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4242, file: !68, line: 77, baseType: !258, size: 64, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4242, file: !68, line: 79, baseType: !4269, size: 64, offset: 384)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4253, line: 25, size: 256, elements: !4271)
!4271 = !{!4272, !4278, !4282}
!4272 = !DIDerivedType(tag: DW_TAG_member, scope: !4270, file: !4253, line: 26, baseType: !4273, size: 128)
!4273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4270, file: !4253, line: 26, size: 128, elements: !4274)
!4274 = !{!4275, !4277}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4273, file: !4253, line: 27, baseType: !4276, size: 128)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 128, elements: !2908)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4273, file: !4253, line: 28, baseType: !4276, size: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4270, file: !4253, line: 31, baseType: !4279, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4281)
!4281 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4253, line: 23, flags: DIFlagFwdDecl)
!4282 = !DIDerivedType(tag: DW_TAG_member, scope: !4270, file: !4253, line: 33, baseType: !4283, size: 64, offset: 192)
!4283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4270, file: !4253, line: 33, size: 64, elements: !4284)
!4284 = !{!4285, !4291, !4296}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4283, file: !4253, line: 38, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4283, file: !4253, line: 34, size: 64, elements: !4287)
!4287 = !{!4288, !4289, !4290}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4286, file: !4253, line: 35, baseType: !813, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4286, file: !4253, line: 36, baseType: !421, size: 8, offset: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4286, file: !4253, line: 37, baseType: !421, size: 8, offset: 40)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4283, file: !4253, line: 42, baseType: !4292, size: 16)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4283, file: !4253, line: 39, size: 16, elements: !4293)
!4293 = !{!4294, !4295}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4292, file: !4253, line: 40, baseType: !421, size: 8)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4292, file: !4253, line: 41, baseType: !421, size: 8, offset: 8)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4283, file: !4253, line: 46, baseType: !4297, size: 16)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4283, file: !4253, line: 43, size: 16, elements: !4298)
!4298 = !{!4299, !4300}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4297, file: !4253, line: 44, baseType: !421, size: 8)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4297, file: !4253, line: 45, baseType: !421, size: 8, offset: 8)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4242, file: !68, line: 81, baseType: !4302, size: 64, offset: 448)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !4304)
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4303, file: !68, line: 86, baseType: !4265, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4303, file: !68, line: 87, baseType: !258, size: 64, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4303, file: !68, line: 88, baseType: !258, size: 64, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4303, file: !68, line: 89, baseType: !258, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4303, file: !68, line: 90, baseType: !887, size: 8, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4303, file: !68, line: 92, baseType: !4302, size: 64, offset: 320)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4242, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2486, file: !1507, line: 1463, baseType: !4313, offset: 21184)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1507, line: 739, elements: !1179)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2486, file: !1507, line: 1470, baseType: !669, size: 128, align: 64, offset: 21184)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2486, file: !1507, line: 1471, baseType: !734, size: 32, offset: 21312)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2486, file: !1507, line: 1472, baseType: !109, size: 32, offset: 21344)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2486, file: !1507, line: 1474, baseType: !2485, size: 64, offset: 21376)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2486, file: !1507, line: 1475, baseType: !2005, size: 320, offset: 21440)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2486, file: !1507, line: 1478, baseType: !4320, size: 64, offset: 21760)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4322, line: 49, size: 512, elements: !4323)
!4322 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4330, !4331, !4332, !4334}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4321, file: !4322, line: 50, baseType: !4320, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4321, file: !4322, line: 51, baseType: !249, size: 64, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4321, file: !4322, line: 52, baseType: !258, size: 64, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4321, file: !4322, line: 53, baseType: !258, size: 64, offset: 192)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4321, file: !4322, line: 54, baseType: !4329, size: 64, offset: 256)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4321, file: !4322, line: 56, baseType: !7, size: 32, offset: 320)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4321, file: !4322, line: 58, baseType: !7, size: 32, offset: 352)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4321, file: !4322, line: 59, baseType: !4333, size: 64, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !251, line: 159, baseType: !260)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4321, file: !4322, line: 60, baseType: !1274, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2486, file: !1507, line: 1482, baseType: !734, size: 32, offset: 21824)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2486, file: !1507, line: 1489, baseType: !249, size: 64, offset: 21888)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2486, file: !1507, line: 1504, baseType: !249, size: 64, offset: 21952)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2486, file: !1507, line: 1505, baseType: !262, size: 64, offset: 22016)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2486, file: !1507, line: 1506, baseType: !260, size: 64, offset: 22080)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2486, file: !1507, line: 1507, baseType: !262, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2486, file: !1507, line: 1508, baseType: !262, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2486, file: !1507, line: 1509, baseType: !262, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2486, file: !1507, line: 1510, baseType: !669, size: 128, align: 64, offset: 22208)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2486, file: !1507, line: 1511, baseType: !109, size: 32, offset: 22336)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2486, file: !1507, line: 1515, baseType: !3546, size: 64, offset: 22400)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2486, file: !1507, line: 1518, baseType: !3546, size: 64, offset: 22464)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2486, file: !1507, line: 1528, baseType: !669, size: 128, align: 64, offset: 22528)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2486, file: !1507, line: 1552, baseType: !4349, size: 35328, offset: 23040)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4350, line: 430, size: 35328, elements: !4351)
!4350 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4351 = !{!4352, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4381, !4382, !4383, !4384, !4385, !4386, !4389, !4390, !4391, !4392}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4349, file: !4350, line: 432, baseType: !4353, size: 192)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4354, size: 192, elements: !581)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4355, line: 16, size: 64, elements: !4356)
!4355 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4354, file: !4355, line: 17, baseType: !428, size: 16)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4354, file: !4355, line: 18, baseType: !428, size: 16, offset: 16)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4354, file: !4355, line: 19, baseType: !428, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4354, file: !4355, line: 19, baseType: !428, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4354, file: !4355, line: 19, baseType: !428, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4354, file: !4355, line: 19, baseType: !428, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4354, file: !4355, line: 19, baseType: !428, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4354, file: !4355, line: 20, baseType: !428, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4354, file: !4355, line: 20, baseType: !428, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4354, file: !4355, line: 20, baseType: !428, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4354, file: !4355, line: 20, baseType: !428, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4354, file: !4355, line: 20, baseType: !428, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4354, file: !4355, line: 20, baseType: !428, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4349, file: !4350, line: 436, baseType: !258, size: 64, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4349, file: !4350, line: 440, baseType: !301, size: 16, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4349, file: !4350, line: 441, baseType: !301, size: 16, offset: 272)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4349, file: !4350, line: 442, baseType: !301, size: 16, offset: 288)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4349, file: !4350, line: 443, baseType: !301, size: 16, offset: 304)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4349, file: !4350, line: 447, baseType: !258, size: 64, offset: 320)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4349, file: !4350, line: 448, baseType: !258, size: 64, offset: 384)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4349, file: !4350, line: 459, baseType: !4378, size: 256, offset: 448)
!4378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4379, size: 256, elements: !752)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4350, line: 428, flags: DIFlagFwdDecl)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4349, file: !4350, line: 461, baseType: !258, size: 64, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4349, file: !4350, line: 463, baseType: !258, size: 64, offset: 768)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4349, file: !4350, line: 465, baseType: !258, size: 64, offset: 832)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4349, file: !4350, line: 466, baseType: !258, size: 64, offset: 896)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4349, file: !4350, line: 467, baseType: !258, size: 64, offset: 960)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4349, file: !4350, line: 473, baseType: !4387, size: 64, offset: 1024)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4350, line: 10, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4349, file: !4350, line: 480, baseType: !258, size: 64, offset: 1088)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4349, file: !4350, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4349, file: !4350, line: 491, baseType: !368, size: 32, offset: 1184)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4349, file: !4350, line: 501, baseType: !4393, size: 33792, offset: 1536)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4394, line: 448, size: 33792, elements: !4395)
!4394 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4395 = !{!4396, !4397, !4398, !4559, !4560, !4566, !4567}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4393, file: !4394, line: 461, baseType: !7, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4393, file: !4394, line: 468, baseType: !258, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4393, file: !4394, line: 476, baseType: !4399, size: 64, offset: 128)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4394, line: 356, size: 33280, align: 512, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4400, file: !4394, line: 358, baseType: !7, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4400, file: !4394, line: 361, baseType: !7, size: 32, offset: 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4400, file: !4394, line: 364, baseType: !260, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4400, file: !4394, line: 367, baseType: !260, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4400, file: !4394, line: 370, baseType: !260, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4400, file: !4394, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4400, file: !4394, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4400, file: !4394, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4400, file: !4394, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4400, file: !4394, line: 397, baseType: !4412, size: 32768, offset: 512)
!4412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4394, line: 348, size: 32768, elements: !4413)
!4413 = !{!4414, !4429, !4466, !4543, !4555}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4412, file: !4394, line: 349, baseType: !4415, size: 896)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4394, line: 12, size: 896, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4428}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4415, file: !4394, line: 13, baseType: !368, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4415, file: !4394, line: 14, baseType: !368, size: 32, offset: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4415, file: !4394, line: 15, baseType: !368, size: 32, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4415, file: !4394, line: 16, baseType: !368, size: 32, offset: 96)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4415, file: !4394, line: 17, baseType: !368, size: 32, offset: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4415, file: !4394, line: 18, baseType: !368, size: 32, offset: 160)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4415, file: !4394, line: 19, baseType: !368, size: 32, offset: 192)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4415, file: !4394, line: 22, baseType: !4425, size: 640, offset: 224)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 640, elements: !4426)
!4426 = !{!4427}
!4427 = !DISubrange(count: 20)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4415, file: !4394, line: 25, baseType: !368, size: 32, offset: 864)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4412, file: !4394, line: 350, baseType: !4430, size: 4096, align: 128)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4394, line: 34, size: 4096, align: 128, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4451, !4452, !4453, !4455, !4457, !4461}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4430, file: !4394, line: 35, baseType: !428, size: 16)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4430, file: !4394, line: 36, baseType: !428, size: 16, offset: 16)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4430, file: !4394, line: 37, baseType: !428, size: 16, offset: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4430, file: !4394, line: 38, baseType: !428, size: 16, offset: 48)
!4436 = !DIDerivedType(tag: DW_TAG_member, scope: !4430, file: !4394, line: 39, baseType: !4437, size: 128, offset: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4430, file: !4394, line: 39, size: 128, elements: !4438)
!4438 = !{!4439, !4444}
!4439 = !DIDerivedType(tag: DW_TAG_member, scope: !4437, file: !4394, line: 40, baseType: !4440, size: 128)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4437, file: !4394, line: 40, size: 128, elements: !4441)
!4441 = !{!4442, !4443}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4440, file: !4394, line: 41, baseType: !260, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4440, file: !4394, line: 42, baseType: !260, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, scope: !4437, file: !4394, line: 44, baseType: !4445, size: 128)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4437, file: !4394, line: 44, size: 128, elements: !4446)
!4446 = !{!4447, !4448, !4449, !4450}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4445, file: !4394, line: 45, baseType: !368, size: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4445, file: !4394, line: 46, baseType: !368, size: 32, offset: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4445, file: !4394, line: 47, baseType: !368, size: 32, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4445, file: !4394, line: 48, baseType: !368, size: 32, offset: 96)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4430, file: !4394, line: 51, baseType: !368, size: 32, offset: 192)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4430, file: !4394, line: 52, baseType: !368, size: 32, offset: 224)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4430, file: !4394, line: 55, baseType: !4454, size: 1024, offset: 256)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 1024, elements: !379)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4430, file: !4394, line: 58, baseType: !4456, size: 2048, offset: 1280)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 2048, elements: !585)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4430, file: !4394, line: 60, baseType: !4458, size: 384, offset: 3328)
!4458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 384, elements: !4459)
!4459 = !{!4460}
!4460 = !DISubrange(count: 12)
!4461 = !DIDerivedType(tag: DW_TAG_member, scope: !4430, file: !4394, line: 62, baseType: !4462, size: 384, offset: 3712)
!4462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4430, file: !4394, line: 62, size: 384, elements: !4463)
!4463 = !{!4464, !4465}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4462, file: !4394, line: 63, baseType: !4458, size: 384)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4462, file: !4394, line: 64, baseType: !4458, size: 384)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4412, file: !4394, line: 351, baseType: !4467, size: 1088)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4394, line: 79, size: 1088, elements: !4468)
!4468 = !{!4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4542}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4467, file: !4394, line: 80, baseType: !368, size: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4467, file: !4394, line: 81, baseType: !368, size: 32, offset: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4467, file: !4394, line: 82, baseType: !368, size: 32, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4467, file: !4394, line: 83, baseType: !368, size: 32, offset: 96)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4467, file: !4394, line: 84, baseType: !368, size: 32, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4467, file: !4394, line: 85, baseType: !368, size: 32, offset: 160)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4467, file: !4394, line: 86, baseType: !368, size: 32, offset: 192)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4467, file: !4394, line: 88, baseType: !4425, size: 640, offset: 224)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4467, file: !4394, line: 89, baseType: !421, size: 8, offset: 864)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4467, file: !4394, line: 90, baseType: !421, size: 8, offset: 872)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4467, file: !4394, line: 91, baseType: !421, size: 8, offset: 880)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4467, file: !4394, line: 92, baseType: !421, size: 8, offset: 888)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4467, file: !4394, line: 93, baseType: !421, size: 8, offset: 896)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4467, file: !4394, line: 94, baseType: !421, size: 8, offset: 904)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4467, file: !4394, line: 95, baseType: !4484, size: 64, offset: 960)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4486, line: 11, size: 128, elements: !4487)
!4486 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4487 = !{!4488, !4489}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4485, file: !4486, line: 12, baseType: !257, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4485, file: !4486, line: 13, baseType: !4490, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4492, line: 103, size: 1344, elements: !4493)
!4492 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4493 = !{!4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4522, !4523, !4524}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4491, file: !4492, line: 109, baseType: !258, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4491, file: !4492, line: 110, baseType: !258, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4491, file: !4492, line: 111, baseType: !258, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4491, file: !4492, line: 112, baseType: !258, size: 64, offset: 192)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4491, file: !4492, line: 113, baseType: !258, size: 64, offset: 256)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4491, file: !4492, line: 114, baseType: !258, size: 64, offset: 320)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4491, file: !4492, line: 117, baseType: !258, size: 64, offset: 384)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4491, file: !4492, line: 118, baseType: !258, size: 64, offset: 448)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4491, file: !4492, line: 119, baseType: !258, size: 64, offset: 512)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4491, file: !4492, line: 120, baseType: !258, size: 64, offset: 576)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4491, file: !4492, line: 121, baseType: !258, size: 64, offset: 640)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4491, file: !4492, line: 122, baseType: !258, size: 64, offset: 704)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4491, file: !4492, line: 123, baseType: !258, size: 64, offset: 768)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4491, file: !4492, line: 124, baseType: !258, size: 64, offset: 832)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4491, file: !4492, line: 125, baseType: !258, size: 64, offset: 896)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4491, file: !4492, line: 139, baseType: !258, size: 64, offset: 960)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4491, file: !4492, line: 142, baseType: !258, size: 64, offset: 1024)
!4511 = !DIDerivedType(tag: DW_TAG_member, scope: !4491, file: !4492, line: 144, baseType: !4512, size: 64, offset: 1088)
!4512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4491, file: !4492, line: 144, size: 64, elements: !4513)
!4513 = !{!4514, !4515, !4516}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4512, file: !4492, line: 146, baseType: !428, size: 16)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4512, file: !4492, line: 148, baseType: !260, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4512, file: !4492, line: 150, baseType: !4517, size: 64)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4492, line: 59, size: 64, elements: !4518)
!4518 = !{!4519, !4520, !4521}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4517, file: !4492, line: 61, baseType: !260, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4517, file: !4492, line: 63, baseType: !260, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4517, file: !4492, line: 65, baseType: !260, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4491, file: !4492, line: 153, baseType: !258, size: 64, offset: 1152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4491, file: !4492, line: 154, baseType: !258, size: 64, offset: 1216)
!4524 = !DIDerivedType(tag: DW_TAG_member, scope: !4491, file: !4492, line: 156, baseType: !4525, size: 64, offset: 1280)
!4525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4491, file: !4492, line: 156, size: 64, elements: !4526)
!4526 = !{!4527, !4528, !4529}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4525, file: !4492, line: 158, baseType: !428, size: 16)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4525, file: !4492, line: 160, baseType: !260, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4525, file: !4492, line: 162, baseType: !4530, size: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4492, line: 69, size: 64, elements: !4531)
!4531 = !{!4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4530, file: !4492, line: 71, baseType: !260, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4530, file: !4492, line: 73, baseType: !260, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4530, file: !4492, line: 75, baseType: !260, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4530, file: !4492, line: 77, baseType: !260, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4530, file: !4492, line: 80, baseType: !260, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4530, file: !4492, line: 83, baseType: !260, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4530, file: !4492, line: 86, baseType: !260, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4530, file: !4492, line: 88, baseType: !260, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4530, file: !4492, line: 93, baseType: !260, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4530, file: !4492, line: 100, baseType: !260, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4467, file: !4394, line: 96, baseType: !368, size: 32, offset: 1024)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4412, file: !4394, line: 352, baseType: !4544, size: 4608, align: 512)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4394, line: 333, size: 4608, align: 512, elements: !4545)
!4545 = !{!4546, !4547, !4554}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4544, file: !4394, line: 334, baseType: !4430, size: 4096, align: 128)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4544, file: !4394, line: 335, baseType: !4548, size: 512, offset: 4096)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4394, line: 312, size: 512, elements: !4549)
!4549 = !{!4550, !4551, !4552}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4548, file: !4394, line: 313, baseType: !260, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4548, file: !4394, line: 314, baseType: !260, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4548, file: !4394, line: 315, baseType: !4553, size: 384, offset: 128)
!4553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, elements: !874)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4544, file: !4394, line: 336, baseType: !3540, offset: 4608)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4412, file: !4394, line: 353, baseType: !4556, size: 32768)
!4556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 32768, elements: !4557)
!4557 = !{!4558}
!4558 = !DISubrange(count: 4096)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4393, file: !4394, line: 484, baseType: !4399, size: 64, offset: 192)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4393, file: !4394, line: 491, baseType: !4561, size: 128, offset: 256)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4394, line: 404, size: 128, elements: !4562)
!4562 = !{!4563, !4564, !4565}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4561, file: !4394, line: 424, baseType: !260, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4561, file: !4394, line: 432, baseType: !7, size: 32, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4561, file: !4394, line: 440, baseType: !7, size: 32, offset: 96)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4393, file: !4394, line: 498, baseType: !4561, size: 128, offset: 384)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4393, file: !4394, line: 508, baseType: !4400, size: 33280, align: 512, offset: 512)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2468, file: !2469, line: 16, baseType: !756, size: 192, offset: 512)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2468, file: !2469, line: 17, baseType: !413, size: 32, offset: 704)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !490, file: !14, line: 1240, baseType: !249, size: 64, offset: 6912)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !490, file: !14, line: 1243, baseType: !368, size: 32, offset: 6976)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !490, file: !14, line: 1245, baseType: !844, size: 64, offset: 7040)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !490, file: !14, line: 1246, baseType: !844, size: 64, offset: 7104)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !490, file: !14, line: 1248, baseType: !369, size: 32, offset: 7168)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !490, file: !14, line: 1249, baseType: !4576, size: 64, offset: 7232)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !490, file: !14, line: 1252, baseType: !4579, size: 256, offset: 7296)
!4579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 256, elements: !379)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !490, file: !14, line: 1253, baseType: !4581, size: 128, offset: 7552)
!4581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4582, line: 21, baseType: !4583)
!4582 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4582, line: 19, size: 128, elements: !4584)
!4584 = !{!4585}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4583, file: !4582, line: 20, baseType: !4586, size: 128)
!4586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 128, elements: !2908)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !490, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !490, file: !14, line: 1261, baseType: !691, size: 256, offset: 7744)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !490, file: !14, line: 1267, baseType: !453, size: 64, offset: 8000)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !490, file: !14, line: 1269, baseType: !433, size: 64, offset: 8064)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !490, file: !14, line: 1271, baseType: !4592, size: 448, offset: 8128)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2248, line: 63, size: 448, elements: !4593)
!4593 = !{!4594, !4599, !4600, !4601, !4602, !4603, !4604}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4592, file: !2248, line: 64, baseType: !4595, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!258, !4598, !2246}
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4592, file: !2248, line: 66, baseType: !4595, size: 64, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4592, file: !2248, line: 69, baseType: !257, size: 64, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4592, file: !2248, line: 70, baseType: !109, size: 32, offset: 192)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4592, file: !2248, line: 71, baseType: !7, size: 32, offset: 224)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4592, file: !2248, line: 74, baseType: !279, size: 128, offset: 256)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4592, file: !2248, line: 85, baseType: !4605, size: 64, offset: 384)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !490, file: !14, line: 1274, baseType: !682, size: 64, offset: 8576)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !490, file: !14, line: 1280, baseType: !682, size: 64, offset: 8640)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !490, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !490, file: !14, line: 1286, baseType: !1594, size: 32, offset: 8736)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !490, file: !14, line: 1289, baseType: !2067, size: 64, offset: 8768)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !490, file: !14, line: 1290, baseType: !743, size: 64, offset: 8832)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !490, file: !14, line: 1297, baseType: !970, size: 64, offset: 8896)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !490, file: !14, line: 1304, baseType: !4614, size: 64, offset: 8960)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4615, line: 49, size: 64, elements: !4616)
!4615 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4616 = !{!4617}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4614, file: !4615, line: 50, baseType: !4618, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4615, line: 41, size: 512, align: 512, elements: !4620)
!4620 = !{!4621, !4622, !4627}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4619, file: !4615, line: 43, baseType: !393, size: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4619, file: !4615, line: 45, baseType: !4623, size: 192, offset: 64)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4615, line: 29, size: 192, elements: !4624)
!4624 = !{!4625, !4626}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4623, file: !4615, line: 30, baseType: !279, size: 128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4623, file: !4615, line: 32, baseType: !257, size: 64, offset: 128)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4619, file: !4615, line: 46, baseType: !257, size: 64, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !490, file: !14, line: 1305, baseType: !4614, size: 64, offset: 9024)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !490, file: !14, line: 1306, baseType: !669, size: 128, align: 64, offset: 9088)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !490, file: !14, line: 1307, baseType: !1313, size: 256, offset: 9216)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !490, file: !14, line: 1309, baseType: !691, size: 256, offset: 9472)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !490, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !490, file: !14, line: 1317, baseType: !393, size: 32, align: 512, offset: 10240)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !490, file: !14, line: 1318, baseType: !279, size: 128, offset: 10304)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !490, file: !14, line: 1320, baseType: !393, size: 32, offset: 10432)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !490, file: !14, line: 1321, baseType: !279, size: 128, offset: 10496)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !484, file: !485, line: 73, baseType: !109, size: 32, offset: 128)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !484, file: !485, line: 74, baseType: !4639, size: 64, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !795, line: 42, flags: DIFlagFwdDecl)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !435, file: !336, line: 141, baseType: !4643, size: 64, offset: 704)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!109, !2308, !887}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !435, file: !336, line: 142, baseType: !4647, size: 64, offset: 768)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!334, !334, !4650}
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !335, file: !336, line: 96, baseType: !489, size: 64, offset: 832)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !335, file: !336, line: 97, baseType: !258, size: 64, offset: 896)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !335, file: !336, line: 98, baseType: !249, size: 64, offset: 960)
!4655 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !336, line: 100, baseType: !4656, size: 128, offset: 1024)
!4656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !336, line: 100, size: 128, elements: !4657)
!4657 = !{!4658, !4659}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4656, file: !336, line: 101, baseType: !279, size: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4656, file: !336, line: 102, baseType: !4660, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !335, file: !336, line: 104, baseType: !279, size: 128, offset: 1152)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !335, file: !336, line: 105, baseType: !279, size: 128, offset: 1280)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !335, file: !336, line: 113, baseType: !4664, size: 128, offset: 1408)
!4664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !336, line: 109, size: 128, elements: !4665)
!4665 = !{!4666, !4667, !4668}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4664, file: !336, line: 110, baseType: !747, size: 128)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4664, file: !336, line: 111, baseType: !350, size: 128)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4664, file: !336, line: 112, baseType: !669, size: 128, align: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !328, file: !14, line: 1968, baseType: !4670, size: 64, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!453, !334, !296, !4673}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4675, line: 10, size: 128, elements: !4676)
!4675 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4676 = !{!4677, !4678}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4674, file: !4675, line: 11, baseType: !1634, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4674, file: !4675, line: 12, baseType: !249, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !328, file: !14, line: 1969, baseType: !4680, size: 64, offset: 128)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!109, !4639, !296, !109}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !328, file: !14, line: 1970, baseType: !4684, size: 64, offset: 192)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!322, !296, !109, !887}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !328, file: !14, line: 1972, baseType: !4688, size: 64, offset: 256)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!109, !334, !478, !109}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !328, file: !14, line: 1974, baseType: !4692, size: 64, offset: 320)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!109, !4639, !296, !334, !300, !887}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !328, file: !14, line: 1976, baseType: !4696, size: 64, offset: 384)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!109, !334, !296, !334}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !328, file: !14, line: 1977, baseType: !4700, size: 64, offset: 448)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!109, !296, !334}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !328, file: !14, line: 1978, baseType: !4704, size: 64, offset: 512)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!109, !4639, !296, !334, !453}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !328, file: !14, line: 1980, baseType: !4708, size: 64, offset: 576)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!109, !4639, !296, !334, !300}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !328, file: !14, line: 1982, baseType: !4700, size: 64, offset: 640)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !328, file: !14, line: 1983, baseType: !4713, size: 64, offset: 704)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!109, !4639, !296, !334, !300, !494}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !328, file: !14, line: 1985, baseType: !4717, size: 64, offset: 768)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!109, !4639, !296, !334, !296, !334, !7}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !328, file: !14, line: 1987, baseType: !4721, size: 64, offset: 832)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!109, !4639, !334, !4724}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4726)
!4726 = !{!4727, !4728, !4729, !4739, !4748, !4749, !4754, !4755, !4756}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4725, file: !14, line: 227, baseType: !7, size: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4725, file: !14, line: 228, baseType: !300, size: 16, offset: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, scope: !4725, file: !14, line: 241, baseType: !4730, size: 32, offset: 64)
!4730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4725, file: !14, line: 241, size: 32, elements: !4731)
!4731 = !{!4732, !4733}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4730, file: !14, line: 242, baseType: !304, size: 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4730, file: !14, line: 243, baseType: !4734, size: 32)
!4734 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4735, line: 16, baseType: !4736)
!4735 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4735, line: 14, size: 32, elements: !4737)
!4737 = !{!4738}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4736, file: !4735, line: 15, baseType: !309, size: 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, scope: !4725, file: !14, line: 245, baseType: !4740, size: 32, offset: 96)
!4740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4725, file: !14, line: 245, size: 32, elements: !4741)
!4741 = !{!4742, !4743}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4740, file: !14, line: 246, baseType: !314, size: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4740, file: !14, line: 247, baseType: !4744, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4735, line: 20, baseType: !4745)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4735, line: 18, size: 32, elements: !4746)
!4746 = !{!4747}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4745, file: !4735, line: 19, baseType: !318, size: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4725, file: !14, line: 249, baseType: !499, size: 64, offset: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4725, file: !14, line: 250, baseType: !4750, size: 128, offset: 192)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !845, line: 13, size: 128, elements: !4751)
!4751 = !{!4752, !4753}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4750, file: !845, line: 14, baseType: !844, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4750, file: !845, line: 15, baseType: !257, size: 64, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4725, file: !14, line: 251, baseType: !4750, size: 128, offset: 320)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4725, file: !14, line: 252, baseType: !4750, size: 128, offset: 448)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4725, file: !14, line: 259, baseType: !656, size: 64, offset: 576)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !328, file: !14, line: 1988, baseType: !4758, size: 64, offset: 896)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!109, !4639, !2308, !4761, !368, !7}
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4763, line: 22, size: 1280, elements: !4764)
!4763 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4764 = !{!4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4762, file: !4763, line: 23, baseType: !368, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4762, file: !4763, line: 24, baseType: !300, size: 16, offset: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4762, file: !4763, line: 25, baseType: !7, size: 32, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4762, file: !4763, line: 26, baseType: !852, size: 32, offset: 96)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4762, file: !4763, line: 27, baseType: !260, size: 64, offset: 128)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4762, file: !4763, line: 28, baseType: !260, size: 64, offset: 192)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4762, file: !4763, line: 41, baseType: !260, size: 64, offset: 256)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4762, file: !4763, line: 42, baseType: !494, size: 32, offset: 320)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4762, file: !4763, line: 43, baseType: !494, size: 32, offset: 352)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4762, file: !4763, line: 44, baseType: !304, size: 32, offset: 384)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4762, file: !4763, line: 45, baseType: !314, size: 32, offset: 416)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4762, file: !4763, line: 46, baseType: !499, size: 64, offset: 448)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4762, file: !4763, line: 47, baseType: !4750, size: 128, offset: 512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4762, file: !4763, line: 48, baseType: !4750, size: 128, offset: 640)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4762, file: !4763, line: 49, baseType: !4750, size: 128, offset: 768)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4762, file: !4763, line: 50, baseType: !4750, size: 128, offset: 896)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4762, file: !4763, line: 51, baseType: !260, size: 64, offset: 1024)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4762, file: !4763, line: 52, baseType: !260, size: 64, offset: 1088)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4762, file: !4763, line: 53, baseType: !368, size: 32, offset: 1152)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4762, file: !4763, line: 54, baseType: !368, size: 32, offset: 1184)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4762, file: !4763, line: 55, baseType: !260, size: 64, offset: 1216)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !328, file: !14, line: 1990, baseType: !4787, size: 64, offset: 960)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!612, !334, !478, !624}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !328, file: !14, line: 1991, baseType: !4791, size: 64, offset: 1024)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!109, !296, !4794, !260, !260}
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !328, file: !14, line: 1993, baseType: !4797, size: 64, offset: 1088)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!109, !296, !109}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !328, file: !14, line: 1994, baseType: !4801, size: 64, offset: 1152)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!109, !296, !334, !656, !7, !300}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !328, file: !14, line: 1997, baseType: !4805, size: 64, offset: 1216)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!109, !4639, !296, !656, !300}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !328, file: !14, line: 1999, baseType: !4809, size: 64, offset: 1280)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!322, !4639, !334, !109}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !328, file: !14, line: 2001, baseType: !4813, size: 64, offset: 1344)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!109, !4639, !334, !322, !109}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !328, file: !14, line: 2003, baseType: !4817, size: 64, offset: 1408)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!109, !4639, !334, !4820}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !328, file: !14, line: 2005, baseType: !4823, size: 64, offset: 1472)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!109, !334, !4820}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !328, file: !14, line: 2006, baseType: !4827, size: 64, offset: 1536)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!4830, !296}
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4832)
!4832 = !{!4833, !4834}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4831, file: !14, line: 3193, baseType: !1095, size: 128)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4831, file: !14, line: 3194, baseType: !368, size: 32, offset: 128)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !297, file: !14, line: 655, baseType: !489, size: 64, offset: 448)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !297, file: !14, line: 656, baseType: !292, size: 64, offset: 512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !297, file: !14, line: 659, baseType: !249, size: 64, offset: 576)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !297, file: !14, line: 663, baseType: !258, size: 64, offset: 640)
!4839 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !14, line: 671, baseType: !4840, size: 32, offset: 704)
!4840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !14, line: 671, size: 32, elements: !4841)
!4841 = !{!4842, !4844}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4840, file: !14, line: 672, baseType: !4843, size: 32)
!4843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4840, file: !14, line: 673, baseType: !7, size: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !297, file: !14, line: 675, baseType: !494, size: 32, offset: 736)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !297, file: !14, line: 676, baseType: !499, size: 64, offset: 768)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !297, file: !14, line: 677, baseType: !4750, size: 128, offset: 832)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !297, file: !14, line: 678, baseType: !4750, size: 128, offset: 960)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !297, file: !14, line: 679, baseType: !4750, size: 128, offset: 1088)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !297, file: !14, line: 680, baseType: !393, size: 32, offset: 1216)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !297, file: !14, line: 681, baseType: !301, size: 16, offset: 1248)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !297, file: !14, line: 682, baseType: !421, size: 8, offset: 1264)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !297, file: !14, line: 683, baseType: !421, size: 8, offset: 1272)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !297, file: !14, line: 684, baseType: !2381, size: 64, offset: 1280)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !297, file: !14, line: 691, baseType: !258, size: 64, offset: 1344)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !297, file: !14, line: 692, baseType: !828, size: 320, offset: 1408)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !297, file: !14, line: 694, baseType: !258, size: 64, offset: 1728)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !297, file: !14, line: 695, baseType: !258, size: 64, offset: 1792)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !297, file: !14, line: 697, baseType: !747, size: 128, offset: 1856)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !297, file: !14, line: 698, baseType: !279, size: 128, offset: 1984)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !297, file: !14, line: 707, baseType: !279, size: 128, offset: 2112)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !297, file: !14, line: 708, baseType: !279, size: 128, offset: 2240)
!4863 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !14, line: 709, baseType: !4864, size: 128, offset: 2368)
!4864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !14, line: 709, size: 128, elements: !4865)
!4865 = !{!4866, !4867}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4864, file: !14, line: 710, baseType: !743, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4864, file: !14, line: 711, baseType: !669, size: 128, align: 64)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !297, file: !14, line: 713, baseType: !684, size: 64, offset: 2496)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !297, file: !14, line: 714, baseType: !684, size: 64, offset: 2560)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !297, file: !14, line: 715, baseType: !413, size: 32, offset: 2624)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !297, file: !14, line: 716, baseType: !413, size: 32, offset: 2656)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !297, file: !14, line: 717, baseType: !413, size: 32, offset: 2688)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !297, file: !14, line: 719, baseType: !413, size: 32, offset: 2720)
!4874 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !14, line: 721, baseType: !4875, size: 64, offset: 2752)
!4875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !14, line: 721, size: 64, elements: !4876)
!4876 = !{!4877, !4878}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4875, file: !14, line: 722, baseType: !1006, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4875, file: !14, line: 723, baseType: !2135, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !297, file: !14, line: 725, baseType: !4880, size: 64, offset: 2816)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !297, file: !14, line: 726, baseType: !293, size: 1536, align: 64, offset: 2880)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !297, file: !14, line: 727, baseType: !279, size: 128, offset: 4416)
!4884 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !14, line: 728, baseType: !4885, size: 64, offset: 4544)
!4885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !14, line: 728, size: 64, elements: !4886)
!4886 = !{!4887, !4888, !4889, !4890}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4885, file: !14, line: 729, baseType: !1505, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4885, file: !14, line: 730, baseType: !3469, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4885, file: !14, line: 731, baseType: !478, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4885, file: !14, line: 732, baseType: !7, size: 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !297, file: !14, line: 735, baseType: !369, size: 32, offset: 4608)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !297, file: !14, line: 738, baseType: !369, size: 32, offset: 4640)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !297, file: !14, line: 739, baseType: !4576, size: 64, offset: 4672)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !297, file: !14, line: 750, baseType: !249, size: 64, offset: 4736)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !293, file: !14, line: 474, baseType: !1095, size: 128, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !293, file: !14, line: 475, baseType: !828, size: 320, offset: 192)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !293, file: !14, line: 476, baseType: !250, size: 32, offset: 512)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !293, file: !14, line: 477, baseType: !413, size: 32, offset: 544)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !293, file: !14, line: 482, baseType: !2655, size: 128, offset: 576)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !293, file: !14, line: 483, baseType: !258, size: 64, offset: 704)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !293, file: !14, line: 484, baseType: !258, size: 64, offset: 768)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !293, file: !14, line: 485, baseType: !4903, size: 64, offset: 832)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4905)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4906)
!4906 = !{!4907, !4911, !4981, !4985, !4989, !4995, !4999, !5003, !5008, !5012, !5016, !5020, !5021, !5025, !5029, !5033, !5038, !5042, !5049, !5050}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4905, file: !14, line: 405, baseType: !4908, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!109, !265, !2147}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4905, file: !14, line: 406, baseType: !4912, size: 64, offset: 64)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!109, !656, !4915}
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !4917)
!4917 = !{!4918, !4948, !4962}
!4918 = !DIDerivedType(tag: DW_TAG_member, scope: !4916, file: !27, line: 295, baseType: !4919, size: 512)
!4919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4916, file: !27, line: 295, size: 512, elements: !4920)
!4920 = !{!4921, !4947}
!4921 = !DIDerivedType(tag: DW_TAG_member, scope: !4919, file: !27, line: 296, baseType: !4922, size: 448)
!4922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4919, file: !27, line: 296, size: 448, elements: !4923)
!4923 = !{!4924, !4925, !4934, !4935, !4936, !4945, !4946}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4922, file: !27, line: 298, baseType: !258, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, scope: !4922, file: !27, line: 299, baseType: !4926, size: 128, offset: 64)
!4926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4922, file: !27, line: 299, size: 128, elements: !4927)
!4927 = !{!4928, !4929}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4926, file: !27, line: 300, baseType: !279, size: 128)
!4929 = !DIDerivedType(tag: DW_TAG_member, scope: !4926, file: !27, line: 302, baseType: !4930, size: 128)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4926, file: !27, line: 302, size: 128, elements: !4931)
!4931 = !{!4932, !4933}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4930, file: !27, line: 303, baseType: !249, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4930, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4922, file: !27, line: 310, baseType: !292, size: 64, offset: 192)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4922, file: !27, line: 311, baseType: !258, size: 64, offset: 256)
!4936 = !DIDerivedType(tag: DW_TAG_member, scope: !4922, file: !27, line: 312, baseType: !4937, size: 64, offset: 320)
!4937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4922, file: !27, line: 312, size: 64, elements: !4938)
!4938 = !{!4939, !4940}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4937, file: !27, line: 313, baseType: !249, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4937, file: !27, line: 314, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !4942)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !4943)
!4943 = !{!4944}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4942, file: !27, line: 256, baseType: !258, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4922, file: !27, line: 316, baseType: !413, size: 32, offset: 384)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4922, file: !27, line: 317, baseType: !413, size: 32, offset: 416)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4919, file: !27, line: 323, baseType: !266, size: 512, align: 128)
!4948 = !DIDerivedType(tag: DW_TAG_member, scope: !4916, file: !27, line: 325, baseType: !4949, size: 512, offset: 512)
!4949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4916, file: !27, line: 325, size: 512, elements: !4950)
!4950 = !{!4951, !4961}
!4951 = !DIDerivedType(tag: DW_TAG_member, scope: !4949, file: !27, line: 326, baseType: !4952, size: 320)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4949, file: !27, line: 326, size: 320, elements: !4953)
!4953 = !{!4954, !4955, !4956, !4957, !4958, !4959, !4960}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4952, file: !27, line: 327, baseType: !258, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4952, file: !27, line: 328, baseType: !258, size: 64, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4952, file: !27, line: 329, baseType: !258, size: 64, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4952, file: !27, line: 331, baseType: !413, size: 32, offset: 192)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4952, file: !27, line: 332, baseType: !413, size: 32, offset: 224)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4952, file: !27, line: 333, baseType: !413, size: 32, offset: 256)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4952, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4949, file: !27, line: 339, baseType: !266, size: 512, align: 128)
!4962 = !DIDerivedType(tag: DW_TAG_member, scope: !4916, file: !27, line: 341, baseType: !4963, size: 512, offset: 1024)
!4963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4916, file: !27, line: 341, size: 512, elements: !4964)
!4964 = !{!4965, !4974, !4980}
!4965 = !DIDerivedType(tag: DW_TAG_member, scope: !4963, file: !27, line: 342, baseType: !4966, size: 384)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4963, file: !27, line: 342, size: 384, elements: !4967)
!4967 = !{!4968, !4969, !4970, !4971, !4972, !4973}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4966, file: !27, line: 343, baseType: !258, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4966, file: !27, line: 344, baseType: !258, size: 64, offset: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4966, file: !27, line: 346, baseType: !249, size: 64, offset: 128)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4966, file: !27, line: 347, baseType: !249, size: 64, offset: 192)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4966, file: !27, line: 348, baseType: !249, size: 64, offset: 256)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4966, file: !27, line: 349, baseType: !249, size: 64, offset: 320)
!4974 = !DIDerivedType(tag: DW_TAG_member, scope: !4963, file: !27, line: 352, baseType: !4975, size: 256)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4963, file: !27, line: 352, size: 256, elements: !4976)
!4976 = !{!4977, !4978, !4979}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4975, file: !27, line: 353, baseType: !258, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4975, file: !27, line: 354, baseType: !258, size: 64, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4975, file: !27, line: 356, baseType: !279, size: 128, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4963, file: !27, line: 359, baseType: !266, size: 512, align: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4905, file: !14, line: 409, baseType: !4982, size: 64, offset: 128)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!109, !292, !2147}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4905, file: !14, line: 412, baseType: !4986, size: 64, offset: 192)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!887, !292, !4915}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4905, file: !14, line: 414, baseType: !4990, size: 64, offset: 256)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !4993}
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4905, file: !14, line: 416, baseType: !4996, size: 64, offset: 320)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!109, !656, !292, !499, !7, !4329, !1521}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4905, file: !14, line: 419, baseType: !5000, size: 64, offset: 384)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!109, !656, !292, !499, !7, !7, !265, !249}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4905, file: !14, line: 424, baseType: !5004, size: 64, offset: 448)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!5007, !292, !5007}
!5007 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !251, line: 131, baseType: !260)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4905, file: !14, line: 425, baseType: !5009, size: 64, offset: 512)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{null, !4915, !624, !624}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4905, file: !14, line: 426, baseType: !5013, size: 64, offset: 576)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!887, !4915, !250}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4905, file: !14, line: 427, baseType: !5017, size: 64, offset: 640)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{null, !4915}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4905, file: !14, line: 428, baseType: !1025, size: 64, offset: 704)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4905, file: !14, line: 433, baseType: !5022, size: 64, offset: 768)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!109, !292, !4915, !4915, !74}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4905, file: !14, line: 435, baseType: !5026, size: 64, offset: 832)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!109, !4915}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4905, file: !14, line: 436, baseType: !5030, size: 64, offset: 896)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!887, !4915, !624, !624}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4905, file: !14, line: 438, baseType: !5034, size: 64, offset: 960)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{null, !4915, !5037, !5037}
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4905, file: !14, line: 439, baseType: !5039, size: 64, offset: 1024)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!109, !292, !265}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4905, file: !14, line: 442, baseType: !5043, size: 64, offset: 1088)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!109, !5046, !656, !5048}
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4905, file: !14, line: 444, baseType: !1513, size: 64, offset: 1152)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4905, file: !14, line: 445, baseType: !5051, size: 64, offset: 1216)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!109, !1028, !1050}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !14, line: 486, baseType: !258, size: 64, offset: 896)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !293, file: !14, line: 487, baseType: !828, size: 320, offset: 960)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !293, file: !14, line: 488, baseType: !1594, size: 32, offset: 1280)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !293, file: !14, line: 489, baseType: !393, size: 32, offset: 1312)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !293, file: !14, line: 490, baseType: !279, size: 128, offset: 1344)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !293, file: !14, line: 491, baseType: !249, size: 64, offset: 1472)
!5060 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !27, line: 107, baseType: !5061, size: 64, offset: 192)
!5061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !27, line: 107, size: 64, elements: !5062)
!5062 = !{!5063, !5064}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5061, file: !27, line: 108, baseType: !258, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5061, file: !27, line: 109, baseType: !258, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !273, file: !27, line: 117, baseType: !258, size: 64, offset: 256)
!5066 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !27, line: 119, baseType: !5067, size: 320)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !27, line: 119, size: 320, elements: !5068)
!5068 = !{!5069, !5070, !5073, !5074, !5075}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5067, file: !27, line: 124, baseType: !258, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5067, file: !27, line: 125, baseType: !5071, size: 64, offset: 64)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5067, file: !27, line: 126, baseType: !258, size: 64, offset: 128)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5067, file: !27, line: 127, baseType: !258, size: 64, offset: 192)
!5075 = !DIDerivedType(tag: DW_TAG_member, scope: !5067, file: !27, line: 128, baseType: !5076, size: 64, offset: 256)
!5076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5067, file: !27, line: 128, size: 64, elements: !5077)
!5077 = !{!5078, !5079}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5076, file: !27, line: 133, baseType: !258, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5076, file: !27, line: 138, baseType: !682, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !27, line: 141, baseType: !5081, size: 64)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !27, line: 141, size: 64, elements: !5082)
!5082 = !{!5083}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5081, file: !27, line: 142, baseType: !258, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !27, line: 144, baseType: !5085, size: 128)
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !27, line: 144, size: 128, elements: !5086)
!5086 = !{!5087, !5158}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5085, file: !27, line: 146, baseType: !5088, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !5090)
!5090 = !{!5091, !5101, !5122, !5123, !5124, !5125, !5126, !5140, !5141, !5142}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5089, file: !43, line: 127, baseType: !5092, size: 384)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !5093)
!5093 = !{!5094, !5095, !5097, !5098, !5099, !5100}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5092, file: !43, line: 22, baseType: !258, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5092, file: !43, line: 23, baseType: !5096, size: 64, offset: 64)
!5096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5092, file: !43, line: 24, baseType: !5096, size: 64, offset: 128)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5092, file: !43, line: 25, baseType: !258, size: 64, offset: 192)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5092, file: !43, line: 26, baseType: !258, size: 64, offset: 256)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5092, file: !43, line: 27, baseType: !258, size: 64, offset: 320)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5089, file: !43, line: 128, baseType: !5102, size: 128, offset: 384)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !5103, line: 105, size: 128, elements: !5104)
!5103 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!5104 = !{!5105, !5106}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !5102, file: !5103, line: 110, baseType: !258, size: 64)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5102, file: !5103, line: 118, baseType: !5107, size: 64, offset: 64)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !5103, line: 95, size: 448, elements: !5109)
!5109 = !{!5110, !5111, !5117, !5118, !5119, !5120, !5121}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5108, file: !5103, line: 96, baseType: !682, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5108, file: !5103, line: 97, baseType: !5112, size: 64, offset: 64)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !5103, line: 60, baseType: !5114)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{null, !5116}
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !5108, file: !5103, line: 98, baseType: !5112, size: 64, offset: 128)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !5108, file: !5103, line: 99, baseType: !887, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !5108, file: !5103, line: 100, baseType: !887, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5108, file: !5103, line: 101, baseType: !669, size: 128, align: 64, offset: 256)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5108, file: !5103, line: 102, baseType: !5116, size: 64, offset: 384)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5089, file: !43, line: 129, baseType: !1759, size: 256, offset: 512)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5089, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5089, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5089, file: !43, line: 132, baseType: !258, size: 64, offset: 832)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5089, file: !43, line: 133, baseType: !5127, size: 64, offset: 896)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5129)
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !5130)
!5130 = !{!5131, !5135, !5136}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5129, file: !43, line: 83, baseType: !5132, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{null, !265}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5129, file: !43, line: 89, baseType: !1379, size: 64, offset: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5129, file: !43, line: 100, baseType: !5137, size: 64, offset: 128)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!109, !5088, !258, !258, !109}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5089, file: !43, line: 134, baseType: !249, size: 64, offset: 960)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5089, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!5142 = !DIDerivedType(tag: DW_TAG_member, scope: !5089, file: !43, line: 136, baseType: !5143, size: 128, offset: 1088)
!5143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5089, file: !43, line: 136, size: 128, elements: !5144)
!5144 = !{!5145, !5151}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5143, file: !43, line: 137, baseType: !5146, size: 128)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5147, line: 6, size: 128, elements: !5148)
!5147 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5146, file: !5147, line: 7, baseType: !260, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5146, file: !5147, line: 8, baseType: !260, size: 64, offset: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, scope: !5143, file: !43, line: 138, baseType: !5152)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5143, file: !43, line: 138, elements: !5153)
!5153 = !{!5154, !5156}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5152, file: !43, line: 138, baseType: !5155)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5152, file: !43, line: 138, elements: !1179)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5152, file: !43, line: 138, baseType: !5157)
!5157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5146, elements: !771)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5085, file: !27, line: 147, baseType: !249, size: 64, offset: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !270, file: !27, line: 161, baseType: !669, size: 128, align: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !27, line: 164, baseType: !5161, size: 32, offset: 384)
!5161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !27, line: 164, size: 32, elements: !5162)
!5162 = !{!5163, !5164}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5161, file: !27, line: 169, baseType: !413, size: 32)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5161, file: !27, line: 177, baseType: !7, size: 32)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !266, file: !27, line: 181, baseType: !413, size: 32, offset: 416)
!5166 = !{!0, !5167, !5170, !5172, !5174, !5176, !5201, !5206, !5211}
!5167 = !DIGlobalVariableExpression(var: !5168, expr: !DIExpression())
!5168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !5169, isLocal: true, isDefinition: true)
!5169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 24, elements: !581)
!5170 = !DIGlobalVariableExpression(var: !5171, expr: !DIExpression())
!5171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 242, type: !5169, isLocal: true, isDefinition: true)
!5172 = !DIGlobalVariableExpression(var: !5173, expr: !DIExpression())
!5173 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serial8250_request_dma295", scope: !2, file: !3, line: 291, type: !249, isLocal: true, isDefinition: true)
!5174 = !DIGlobalVariableExpression(var: !5175, expr: !DIExpression())
!5175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serial8250_release_dma296", scope: !2, file: !3, line: 317, type: !249, isLocal: true, isDefinition: true)
!5176 = !DIGlobalVariableExpression(var: !5177, expr: !DIExpression())
!5177 = distinct !DIGlobalVariable(name: "__already_done", scope: !5178, file: !5179, line: 332, type: !887, isLocal: true, isDefinition: true)
!5178 = distinct !DISubprogram(name: "dma_map_single_attrs", scope: !5179, file: !5179, line: 328, type: !5180, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5182)
!5179 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d71421f89fccf9a1ad0866e8178cd1")
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!259, !3011, !249, !624, !217, !258}
!5182 = !{!5183, !5184, !5185, !5186, !5187, !5188, !5191, !5194, !5195, !5197}
!5183 = !DILocalVariable(name: "dev", arg: 1, scope: !5178, file: !5179, line: 328, type: !3011)
!5184 = !DILocalVariable(name: "ptr", arg: 2, scope: !5178, file: !5179, line: 328, type: !249)
!5185 = !DILocalVariable(name: "size", arg: 3, scope: !5178, file: !5179, line: 329, type: !624)
!5186 = !DILocalVariable(name: "dir", arg: 4, scope: !5178, file: !5179, line: 329, type: !217)
!5187 = !DILocalVariable(name: "attrs", arg: 5, scope: !5178, file: !5179, line: 329, type: !258)
!5188 = !DILocalVariable(name: "__ret_do_once", scope: !5189, file: !5179, line: 332, type: !887)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !5179, line: 332, column: 6)
!5190 = distinct !DILexicalBlock(scope: !5178, file: !5179, line: 332, column: 6)
!5191 = !DILocalVariable(name: "__ret_cond", scope: !5192, file: !5179, line: 332, type: !887)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !5179, line: 332, column: 6)
!5193 = distinct !DILexicalBlock(scope: !5189, file: !5179, line: 332, column: 6)
!5194 = !DILocalVariable(name: "__ret_once", scope: !5192, file: !5179, line: 332, type: !887)
!5195 = !DILocalVariable(name: "__ret_warn_on", scope: !5196, file: !5179, line: 332, type: !109)
!5196 = distinct !DILexicalBlock(scope: !5193, file: !5179, line: 332, column: 6)
!5197 = !DILocalVariable(name: "__flags", scope: !5198, file: !5179, line: 332, type: !109)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !5179, line: 332, column: 6)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !5179, line: 332, column: 6)
!5200 = distinct !DILexicalBlock(scope: !5196, file: !5179, line: 332, column: 6)
!5201 = !DIGlobalVariableExpression(var: !5202, expr: !DIExpression())
!5202 = distinct !DIGlobalVariable(scope: null, file: !5179, line: 332, type: !5203, isLocal: true, isDefinition: true)
!5203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 352, elements: !5204)
!5204 = !{!5205}
!5205 = !DISubrange(count: 44)
!5206 = !DIGlobalVariableExpression(var: !5207, expr: !DIExpression())
!5207 = distinct !DIGlobalVariable(scope: null, file: !5179, line: 332, type: !5208, isLocal: true, isDefinition: true)
!5208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 224, elements: !5209)
!5209 = !{!5210}
!5210 = !DISubrange(count: 28)
!5211 = !DIGlobalVariableExpression(var: !5212, expr: !DIExpression())
!5212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !5213, file: !5214, line: 112, type: !249, isLocal: true, isDefinition: true)
!5213 = distinct !DISubprogram(name: "might_resched", scope: !5214, file: !5214, line: 110, type: !2110, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5214 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5215 = !{i32 7, !"Dwarf Version", i32 5}
!5216 = !{i32 2, !"Debug Info Version", i32 3}
!5217 = !{i32 1, !"wchar_size", i32 2}
!5218 = !{i32 8, !"cf-protection-branch", i32 1}
!5219 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5220 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5221 = !{i32 1, !"Code Model", i32 2}
!5222 = !{i32 1, !"override-stack-alignment", i32 8}
!5223 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5224 = distinct !DISubprogram(name: "serial8250_tx_dma", scope: !3, file: !3, line: 86, type: !5225, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5873)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!109, !5227}
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_8250_port", file: !5229, line: 124, size: 6272, elements: !5230)
!5229 = !DIFile(filename: "./include/linux/serial_8250.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "289a4166072e282ae0a85c7a253c5df3")
!5230 = !{!5231, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5506, !5507, !5508, !5509, !5844, !5852, !5856, !5860, !5869, !5870, !5871, !5872}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5228, file: !5229, line: 125, baseType: !5232, size: 4224)
!5232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_port", file: !142, line: 429, size: 4224, elements: !5233)
!5233 = !{!5234, !5235, !5236, !5237, !5242, !5246, !5250, !5254, !5258, !5262, !5266, !5270, !5274, !5278, !5279, !5280, !5281, !5285, !5286, !5312, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5353, !5367, !5408, !5410, !5412, !5413, !5414, !5415, !5416, !5460, !5461, !5462, !5463, !5465, !5466, !5467, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5480, !5481, !5482, !5483, !5486, !5487, !5488}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5232, file: !142, line: 430, baseType: !393, size: 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !5232, file: !142, line: 431, baseType: !258, size: 64, offset: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !5232, file: !142, line: 432, baseType: !3603, size: 64, offset: 128)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "serial_in", scope: !5232, file: !142, line: 433, baseType: !5238, size: 64, offset: 192)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!7, !5241, !109}
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "serial_out", scope: !5232, file: !142, line: 434, baseType: !5243, size: 64, offset: 256)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{null, !5241, !109, !109}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !5232, file: !142, line: 435, baseType: !5247, size: 64, offset: 320)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{null, !5241, !3637, !3695}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !5232, file: !142, line: 438, baseType: !5251, size: 64, offset: 384)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !5241, !3637}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "get_mctrl", scope: !5232, file: !142, line: 440, baseType: !5255, size: 64, offset: 448)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!7, !5241}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "set_mctrl", scope: !5232, file: !142, line: 441, baseType: !5259, size: 64, offset: 512)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{null, !5241, !7}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "get_divisor", scope: !5232, file: !142, line: 442, baseType: !5263, size: 64, offset: 576)
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!7, !5241, !7, !1857}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "set_divisor", scope: !5232, file: !142, line: 445, baseType: !5267, size: 64, offset: 640)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{null, !5241, !7, !7, !7}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5232, file: !142, line: 449, baseType: !5271, size: 64, offset: 704)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!109, !5241}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5232, file: !142, line: 450, baseType: !5275, size: 64, offset: 768)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{null, !5241}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !5232, file: !142, line: 451, baseType: !5275, size: 64, offset: 832)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !5232, file: !142, line: 452, baseType: !5275, size: 64, offset: 896)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !5232, file: !142, line: 453, baseType: !5271, size: 64, offset: 960)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5232, file: !142, line: 454, baseType: !5282, size: 64, offset: 1024)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{null, !5241, !7, !7}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "handle_break", scope: !5232, file: !142, line: 456, baseType: !5275, size: 64, offset: 1088)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_config", scope: !5232, file: !142, line: 457, baseType: !5287, size: 64, offset: 1152)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!109, !5241, !3637, !5290}
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_rs485", file: !3743, line: 141, size: 256, elements: !5292)
!5292 = !{!5293, !5294, !5295, !5296}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5291, file: !3743, line: 142, baseType: !369, size: 32)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "delay_rts_before_send", scope: !5291, file: !3743, line: 152, baseType: !369, size: 32, offset: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "delay_rts_after_send", scope: !5291, file: !3743, line: 153, baseType: !369, size: 32, offset: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, scope: !5291, file: !3743, line: 156, baseType: !5297, size: 160, offset: 96)
!5297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5291, file: !3743, line: 156, size: 160, elements: !5298)
!5298 = !{!5299, !5303}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5297, file: !3743, line: 157, baseType: !5300, size: 160)
!5300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 160, elements: !5301)
!5301 = !{!5302}
!5302 = !DISubrange(count: 5)
!5303 = !DIDerivedType(tag: DW_TAG_member, scope: !5297, file: !3743, line: 159, baseType: !5304, size: 160)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5297, file: !3743, line: 159, size: 160, elements: !5305)
!5305 = !{!5306, !5307, !5308, !5310}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "addr_recv", scope: !5304, file: !3743, line: 160, baseType: !422, size: 8)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "addr_dest", scope: !5304, file: !3743, line: 161, baseType: !422, size: 8, offset: 8)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "padding0", scope: !5304, file: !3743, line: 162, baseType: !5309, size: 16, offset: 16)
!5309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 16, elements: !1895)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5304, file: !3743, line: 163, baseType: !5311, size: 128, offset: 32)
!5311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 128, elements: !752)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "iso7816_config", scope: !5232, file: !142, line: 460, baseType: !5313, size: 64, offset: 1216)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!109, !5241, !5316}
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_iso7816", file: !3743, line: 173, size: 320, elements: !5318)
!5318 = !{!5319, !5320, !5321, !5322, !5323, !5324}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5317, file: !3743, line: 174, baseType: !369, size: 32)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "tg", scope: !5317, file: !3743, line: 178, baseType: !369, size: 32, offset: 32)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "sc_fi", scope: !5317, file: !3743, line: 179, baseType: !369, size: 32, offset: 64)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "sc_di", scope: !5317, file: !3743, line: 180, baseType: !369, size: 32, offset: 96)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !5317, file: !3743, line: 181, baseType: !369, size: 32, offset: 128)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5317, file: !3743, line: 182, baseType: !5300, size: 160, offset: 160)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_id", scope: !5232, file: !142, line: 462, baseType: !7, size: 32, offset: 1280)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "port_id", scope: !5232, file: !142, line: 463, baseType: !7, size: 32, offset: 1312)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5232, file: !142, line: 464, baseType: !7, size: 32, offset: 1344)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "irqflags", scope: !5232, file: !142, line: 465, baseType: !258, size: 64, offset: 1408)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "uartclk", scope: !5232, file: !142, line: 466, baseType: !7, size: 32, offset: 1472)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "fifosize", scope: !5232, file: !142, line: 467, baseType: !7, size: 32, offset: 1504)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "x_char", scope: !5232, file: !142, line: 468, baseType: !375, size: 8, offset: 1536)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "regshift", scope: !5232, file: !142, line: 469, baseType: !375, size: 8, offset: 1544)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "iotype", scope: !5232, file: !142, line: 470, baseType: !375, size: 8, offset: 1552)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5232, file: !142, line: 471, baseType: !375, size: 8, offset: 1560)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "read_status_mask", scope: !5232, file: !142, line: 486, baseType: !7, size: 32, offset: 1568)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_status_mask", scope: !5232, file: !142, line: 487, baseType: !7, size: 32, offset: 1600)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5232, file: !142, line: 488, baseType: !5338, size: 64, offset: 1664)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_state", file: !142, line: 696, size: 3520, elements: !5340)
!5340 = !{!5341, !5342, !5343, !5350, !5351, !5352}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5339, file: !142, line: 697, baseType: !3517, size: 3008)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !5339, file: !142, line: 699, baseType: !141, size: 32, offset: 3008)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !5339, file: !142, line: 700, baseType: !5344, size: 128, offset: 3072)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "circ_buf", file: !5345, line: 9, size: 128, elements: !5346)
!5345 = !DIFile(filename: "./include/linux/circ_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea81da8e7df25fef7fa0e14fc05af1cc")
!5346 = !{!5347, !5348, !5349}
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5344, file: !5345, line: 10, baseType: !478, size: 64)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5344, file: !5345, line: 11, baseType: !109, size: 32, offset: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5344, file: !5345, line: 12, baseType: !109, size: 32, offset: 96)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5339, file: !142, line: 702, baseType: !413, size: 32, offset: 3200)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "remove_wait", scope: !5339, file: !142, line: 703, baseType: !756, size: 192, offset: 3264)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "uart_port", scope: !5339, file: !142, line: 704, baseType: !5241, size: 64, offset: 3456)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "icount", scope: !5232, file: !142, line: 489, baseType: !5354, size: 352, offset: 1728)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_icount", file: !142, line: 412, size: 352, elements: !5355)
!5355 = !{!5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "cts", scope: !5354, file: !142, line: 413, baseType: !369, size: 32)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !5354, file: !142, line: 414, baseType: !369, size: 32, offset: 32)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !5354, file: !142, line: 415, baseType: !369, size: 32, offset: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "dcd", scope: !5354, file: !142, line: 416, baseType: !369, size: 32, offset: 96)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !5354, file: !142, line: 417, baseType: !369, size: 32, offset: 128)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !5354, file: !142, line: 418, baseType: !369, size: 32, offset: 160)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5354, file: !142, line: 419, baseType: !369, size: 32, offset: 192)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "overrun", scope: !5354, file: !142, line: 420, baseType: !369, size: 32, offset: 224)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5354, file: !142, line: 421, baseType: !369, size: 32, offset: 256)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !5354, file: !142, line: 422, baseType: !369, size: 32, offset: 288)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "buf_overrun", scope: !5354, file: !142, line: 423, baseType: !369, size: 32, offset: 320)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "cons", scope: !5232, file: !142, line: 491, baseType: !5368, size: 64, offset: 2112)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console", file: !5370, line: 191, size: 1024, elements: !5371)
!5370 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!5371 = !{!5372, !5373, !5377, !5381, !5385, !5386, !5390, !5394, !5398, !5399, !5400, !5401, !5403, !5404, !5405, !5406, !5407}
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5369, file: !5370, line: 192, baseType: !2907, size: 128)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5369, file: !5370, line: 193, baseType: !5374, size: 64, offset: 128)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DISubroutineType(types: !5376)
!5376 = !{null, !5368, !453, !7}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5369, file: !5370, line: 194, baseType: !5378, size: 64, offset: 192)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!109, !5368, !478, !7}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5369, file: !5370, line: 195, baseType: !5382, size: 64, offset: 256)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!3462, !5368, !1905}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "unblank", scope: !5369, file: !5370, line: 196, baseType: !2109, size: 64, offset: 320)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5369, file: !5370, line: 197, baseType: !5387, size: 64, offset: 384)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!109, !5368, !478}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5369, file: !5370, line: 198, baseType: !5391, size: 64, offset: 448)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!109, !5368}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5369, file: !5370, line: 199, baseType: !5395, size: 64, offset: 512)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!109, !5368, !478, !109, !478}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5369, file: !5370, line: 200, baseType: !856, size: 16, offset: 576)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5369, file: !5370, line: 201, baseType: !856, size: 16, offset: 592)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "cflag", scope: !5369, file: !5370, line: 202, baseType: !109, size: 32, offset: 608)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "ispeed", scope: !5369, file: !5370, line: 203, baseType: !5402, size: 32, offset: 640)
!5402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !251, line: 93, baseType: !7)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "ospeed", scope: !5369, file: !5370, line: 204, baseType: !5402, size: 32, offset: 672)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5369, file: !5370, line: 205, baseType: !260, size: 64, offset: 704)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !5369, file: !5370, line: 206, baseType: !258, size: 64, offset: 768)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5369, file: !5370, line: 207, baseType: !249, size: 64, offset: 832)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5369, file: !5370, line: 208, baseType: !747, size: 128, offset: 896)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5232, file: !142, line: 493, baseType: !5409, size: 64, offset: 2176)
!5409 = !DIDerivedType(tag: DW_TAG_typedef, name: "upf_t", file: !142, line: 426, baseType: !260)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5232, file: !142, line: 551, baseType: !5411, size: 32, offset: 2240)
!5411 = !DIDerivedType(tag: DW_TAG_typedef, name: "upstat_t", file: !142, line: 427, baseType: !7)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !5232, file: !142, line: 560, baseType: !887, size: 8, offset: 2272)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "mctrl", scope: !5232, file: !142, line: 561, baseType: !7, size: 32, offset: 2304)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "frame_time", scope: !5232, file: !142, line: 562, baseType: !7, size: 32, offset: 2336)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5232, file: !142, line: 563, baseType: !7, size: 32, offset: 2368)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5232, file: !142, line: 564, baseType: !5417, size: 64, offset: 2432)
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5419)
!5419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_ops", file: !142, line: 374, size: 1536, elements: !5420)
!5420 = !{!5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5432, !5433, !5434, !5435, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5449, !5450, !5451, !5452, !5456}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "tx_empty", scope: !5419, file: !142, line: 375, baseType: !5255, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "set_mctrl", scope: !5419, file: !142, line: 376, baseType: !5259, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "get_mctrl", scope: !5419, file: !142, line: 377, baseType: !5255, size: 64, offset: 128)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "stop_tx", scope: !5419, file: !142, line: 378, baseType: !5275, size: 64, offset: 192)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "start_tx", scope: !5419, file: !142, line: 379, baseType: !5275, size: 64, offset: 256)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !5419, file: !142, line: 380, baseType: !5275, size: 64, offset: 320)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !5419, file: !142, line: 381, baseType: !5275, size: 64, offset: 384)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !5419, file: !142, line: 382, baseType: !5429, size: 64, offset: 448)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{null, !5241, !254}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "stop_rx", scope: !5419, file: !142, line: 383, baseType: !5275, size: 64, offset: 512)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "start_rx", scope: !5419, file: !142, line: 384, baseType: !5275, size: 64, offset: 576)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "enable_ms", scope: !5419, file: !142, line: 385, baseType: !5275, size: 64, offset: 640)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !5419, file: !142, line: 386, baseType: !5436, size: 64, offset: 704)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DISubroutineType(types: !5438)
!5438 = !{null, !5241, !109}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5419, file: !142, line: 387, baseType: !5271, size: 64, offset: 768)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5419, file: !142, line: 388, baseType: !5275, size: 64, offset: 832)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !5419, file: !142, line: 389, baseType: !5275, size: 64, offset: 896)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !5419, file: !142, line: 390, baseType: !5247, size: 64, offset: 960)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !5419, file: !142, line: 392, baseType: !5251, size: 64, offset: 1024)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5419, file: !142, line: 393, baseType: !5282, size: 64, offset: 1088)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5419, file: !142, line: 395, baseType: !5446, size: 64, offset: 1152)
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!453, !5241}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "release_port", scope: !5419, file: !142, line: 396, baseType: !5275, size: 64, offset: 1216)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "request_port", scope: !5419, file: !142, line: 397, baseType: !5271, size: 64, offset: 1280)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "config_port", scope: !5419, file: !142, line: 398, baseType: !5436, size: 64, offset: 1344)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "verify_port", scope: !5419, file: !142, line: 399, baseType: !5453, size: 64, offset: 1408)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!109, !5241, !3764}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5419, file: !142, line: 400, baseType: !5457, size: 64, offset: 1472)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!109, !5241, !7, !258}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "custom_divisor", scope: !5232, file: !142, line: 565, baseType: !7, size: 32, offset: 2496)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5232, file: !142, line: 566, baseType: !7, size: 32, offset: 2528)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5232, file: !142, line: 567, baseType: !7, size: 32, offset: 2560)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "mapbase", scope: !5232, file: !142, line: 568, baseType: !5464, size: 64, offset: 2624)
!5464 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !251, line: 164, baseType: !4333)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "mapsize", scope: !5232, file: !142, line: 569, baseType: !5464, size: 64, offset: 2688)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5232, file: !142, line: 570, baseType: !3011, size: 64, offset: 2752)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "port_dev", scope: !5232, file: !142, line: 571, baseType: !5468, size: 64, offset: 2816)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_port_device", file: !142, line: 31, flags: DIFlagFwdDecl)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "sysrq", scope: !5232, file: !142, line: 573, baseType: !258, size: 64, offset: 2880)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "sysrq_ch", scope: !5232, file: !142, line: 574, baseType: !421, size: 8, offset: 2944)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "has_sysrq", scope: !5232, file: !142, line: 575, baseType: !375, size: 8, offset: 2952)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "sysrq_seq", scope: !5232, file: !142, line: 576, baseType: !375, size: 8, offset: 2960)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "hub6", scope: !5232, file: !142, line: 578, baseType: !375, size: 8, offset: 2968)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !5232, file: !142, line: 579, baseType: !375, size: 8, offset: 2976)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "console_reinit", scope: !5232, file: !142, line: 580, baseType: !375, size: 8, offset: 2984)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5232, file: !142, line: 581, baseType: !453, size: 64, offset: 3008)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "attr_group", scope: !5232, file: !142, line: 582, baseType: !5479, size: 64, offset: 3072)
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "tty_groups", scope: !5232, file: !142, line: 583, baseType: !628, size: 64, offset: 3136)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "rs485", scope: !5232, file: !142, line: 584, baseType: !5291, size: 256, offset: 3200)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_supported", scope: !5232, file: !142, line: 585, baseType: !5291, size: 256, offset: 3456)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_term_gpio", scope: !5232, file: !142, line: 586, baseType: !5484, size: 64, offset: 3712)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !142, line: 33, flags: DIFlagFwdDecl)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_rx_during_tx_gpio", scope: !5232, file: !142, line: 587, baseType: !5484, size: 64, offset: 3776)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "iso7816", scope: !5232, file: !142, line: 588, baseType: !5317, size: 320, offset: 3840)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !5232, file: !142, line: 589, baseType: !249, size: 64, offset: 4160)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5228, file: !5229, line: 126, baseType: !2005, size: 320, offset: 4224)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5228, file: !5229, line: 127, baseType: !279, size: 128, offset: 4544)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5228, file: !5229, line: 128, baseType: !368, size: 32, offset: 4672)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !5228, file: !5229, line: 129, baseType: !428, size: 16, offset: 4704)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "tx_loadsz", scope: !5228, file: !5229, line: 130, baseType: !7, size: 32, offset: 4736)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "acr", scope: !5228, file: !5229, line: 131, baseType: !375, size: 8, offset: 4768)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "fcr", scope: !5228, file: !5229, line: 132, baseType: !375, size: 8, offset: 4776)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "ier", scope: !5228, file: !5229, line: 133, baseType: !375, size: 8, offset: 4784)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "lcr", scope: !5228, file: !5229, line: 134, baseType: !375, size: 8, offset: 4792)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mcr", scope: !5228, file: !5229, line: 135, baseType: !375, size: 8, offset: 4800)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "cur_iotype", scope: !5228, file: !5229, line: 136, baseType: !375, size: 8, offset: 4808)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_tx_active", scope: !5228, file: !5229, line: 137, baseType: !7, size: 32, offset: 4832)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "canary", scope: !5228, file: !5229, line: 138, baseType: !375, size: 8, offset: 4864)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5228, file: !5229, line: 141, baseType: !375, size: 8, offset: 4872)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "gpios", scope: !5228, file: !5229, line: 142, baseType: !5504, size: 64, offset: 4928)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DICompositeType(tag: DW_TAG_structure_type, name: "mctrl_gpios", file: !5229, line: 142, flags: DIFlagFwdDecl)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "lsr_saved_flags", scope: !5228, file: !5229, line: 151, baseType: !428, size: 16, offset: 4992)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "lsr_save_mask", scope: !5228, file: !5229, line: 152, baseType: !428, size: 16, offset: 5008)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "msr_saved_flags", scope: !5228, file: !5229, line: 154, baseType: !375, size: 8, offset: 5024)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5228, file: !5229, line: 156, baseType: !5510, size: 64, offset: 5056)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_8250_dma", file: !5512, line: 17, size: 2304, elements: !5513)
!5512 = !DIFile(filename: "drivers/tty/serial/8250/8250.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80065a1c362075fd06a01d9fc13f1a68")
!5513 = !{!5514, !5516, !5517, !5521, !5522, !5826, !5827, !5828, !5829, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dma", scope: !5511, file: !5512, line: 18, baseType: !5515, size: 64)
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dma", scope: !5511, file: !5512, line: 19, baseType: !5515, size: 64, offset: 64)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_tx_dma", scope: !5511, file: !5512, line: 20, baseType: !5518, size: 64, offset: 128)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{null, !5227}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_rx_dma", scope: !5511, file: !5512, line: 21, baseType: !5518, size: 64, offset: 192)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5511, file: !5512, line: 24, baseType: !5523, size: 64, offset: 256)
!5523 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_filter_fn", file: !148, line: 533, baseType: !5524)
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = !DISubroutineType(types: !5526)
!5526 = !{!887, !5527, !249}
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan", file: !148, line: 328, size: 896, elements: !5529)
!5529 = !{!5530, !5792, !5793, !5794, !5795, !5796, !5804, !5805, !5806, !5807, !5813, !5814, !5815, !5824, !5825}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5528, file: !148, line: 329, baseType: !5531, size: 64)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_device", file: !148, line: 854, size: 3072, elements: !5533)
!5533 = !{!5534, !5535, !5536, !5537, !5538, !5539, !5552, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5584, !5585, !5589, !5654, !5659, !5664, !5668, !5672, !5676, !5690, !5694, !5698, !5702, !5726, !5730, !5748, !5767, !5768, !5769, !5770, !5771, !5782, !5783, !5787, !5791}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5532, file: !148, line: 855, baseType: !1743, size: 32)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "chancnt", scope: !5532, file: !148, line: 856, baseType: !7, size: 32, offset: 32)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "privatecnt", scope: !5532, file: !148, line: 857, baseType: !7, size: 32, offset: 64)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5532, file: !148, line: 858, baseType: !279, size: 128, offset: 128)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "global_node", scope: !5532, file: !148, line: 859, baseType: !279, size: 128, offset: 256)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5532, file: !148, line: 860, baseType: !5540, size: 192, offset: 384)
!5540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_filter", file: !148, line: 768, size: 192, elements: !5541)
!5541 = !{!5542, !5543, !5544}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5540, file: !148, line: 769, baseType: !5523, size: 64)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "mapcnt", scope: !5540, file: !148, line: 770, baseType: !109, size: 32, offset: 64)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5540, file: !148, line: 771, baseType: !5545, size: 64, offset: 128)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5547)
!5547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_map", file: !148, line: 755, size: 192, elements: !5548)
!5548 = !{!5549, !5550, !5551}
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !5547, file: !148, line: 756, baseType: !453, size: 64)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !5547, file: !148, line: 757, baseType: !453, size: 64, offset: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !5547, file: !148, line: 758, baseType: !249, size: 64, offset: 128)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "cap_mask", scope: !5532, file: !148, line: 861, baseType: !5553, size: 64, offset: 576)
!5553 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cap_mask_t", file: !148, line: 230, baseType: !5554)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 230, size: 64, elements: !5555)
!5555 = !{!5556}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5554, file: !148, line: 230, baseType: !2720, size: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_modes", scope: !5532, file: !148, line: 862, baseType: !147, size: 32, offset: 640)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "max_xor", scope: !5532, file: !148, line: 863, baseType: !301, size: 16, offset: 672)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "max_pq", scope: !5532, file: !148, line: 864, baseType: !301, size: 16, offset: 688)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "copy_align", scope: !5532, file: !148, line: 865, baseType: !153, size: 32, offset: 704)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "xor_align", scope: !5532, file: !148, line: 866, baseType: !153, size: 32, offset: 736)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "pq_align", scope: !5532, file: !148, line: 867, baseType: !153, size: 32, offset: 768)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "fill_align", scope: !5532, file: !148, line: 868, baseType: !153, size: 32, offset: 800)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !5532, file: !148, line: 871, baseType: !109, size: 32, offset: 832)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5532, file: !148, line: 872, baseType: !3011, size: 64, offset: 896)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5532, file: !148, line: 873, baseType: !527, size: 64, offset: 960)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "chan_ida", scope: !5532, file: !148, line: 874, baseType: !5568, size: 128, offset: 1024)
!5568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !5569, line: 246, size: 128, elements: !5570)
!5569 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!5570 = !{!5571}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5568, file: !5569, line: 247, baseType: !1095, size: 128)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !5532, file: !148, line: 876, baseType: !368, size: 32, offset: 1152)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !5532, file: !148, line: 877, baseType: !368, size: 32, offset: 1184)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !5532, file: !148, line: 878, baseType: !368, size: 32, offset: 1216)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !5532, file: !148, line: 879, baseType: !368, size: 32, offset: 1248)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !5532, file: !148, line: 880, baseType: !368, size: 32, offset: 1280)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !5532, file: !148, line: 881, baseType: !368, size: 32, offset: 1312)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !5532, file: !148, line: 882, baseType: !887, size: 8, offset: 1344)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !5532, file: !148, line: 883, baseType: !164, size: 32, offset: 1376)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "device_alloc_chan_resources", scope: !5532, file: !148, line: 885, baseType: !5581, size: 64, offset: 1408)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!109, !5527}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "device_router_config", scope: !5532, file: !148, line: 886, baseType: !5581, size: 64, offset: 1472)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "device_free_chan_resources", scope: !5532, file: !148, line: 887, baseType: !5586, size: 64, offset: 1536)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{null, !5527}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memcpy", scope: !5532, file: !148, line: 889, baseType: !5590, size: 64, offset: 1600)
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{!5593, !5527, !259, !259, !624, !258}
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_async_tx_descriptor", file: !148, line: 602, size: 704, elements: !5595)
!5595 = !{!5596, !5598, !5599, !5600, !5601, !5605, !5609, !5611, !5622, !5623, !5636, !5637}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !5594, file: !148, line: 603, baseType: !5597, size: 32)
!5597 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cookie_t", file: !148, line: 22, baseType: !813)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5594, file: !148, line: 604, baseType: !169, size: 32, offset: 32)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5594, file: !148, line: 605, baseType: !259, size: 64, offset: 64)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !5594, file: !148, line: 606, baseType: !5527, size: 64, offset: 128)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "tx_submit", scope: !5594, file: !148, line: 607, baseType: !5602, size: 64, offset: 192)
!5602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5603, size: 64)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!5597, !5593}
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "desc_free", scope: !5594, file: !148, line: 608, baseType: !5606, size: 64, offset: 256)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DISubroutineType(types: !5608)
!5608 = !{!109, !5593}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5594, file: !148, line: 609, baseType: !5610, size: 64, offset: 320)
!5610 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback", file: !148, line: 535, baseType: !1634)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !5594, file: !148, line: 610, baseType: !5612, size: 64, offset: 384)
!5612 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback_result", file: !148, line: 549, baseType: !5613)
!5613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5614, size: 64)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{null, !249, !5616}
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5617, size: 64)
!5617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5618)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_result", file: !148, line: 544, size: 64, elements: !5619)
!5619 = !{!5620, !5621}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5618, file: !148, line: 545, baseType: !181, size: 32)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !5618, file: !148, line: 546, baseType: !368, size: 32, offset: 32)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "callback_param", scope: !5594, file: !148, line: 611, baseType: !249, size: 64, offset: 448)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !5594, file: !148, line: 612, baseType: !5624, size: 64, offset: 512)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_unmap_data", file: !148, line: 552, size: 256, elements: !5626)
!5626 = !{!5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "map_cnt", scope: !5625, file: !148, line: 556, baseType: !421, size: 8)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "to_cnt", scope: !5625, file: !148, line: 558, baseType: !421, size: 8, offset: 8)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "from_cnt", scope: !5625, file: !148, line: 559, baseType: !421, size: 8, offset: 16)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "bidi_cnt", scope: !5625, file: !148, line: 560, baseType: !421, size: 8, offset: 24)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5625, file: !148, line: 561, baseType: !3011, size: 64, offset: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5625, file: !148, line: 562, baseType: !1743, size: 32, offset: 128)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5625, file: !148, line: 563, baseType: !624, size: 64, offset: 192)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5625, file: !148, line: 564, baseType: !5635, offset: 256)
!5635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, elements: !771)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_mode", scope: !5594, file: !148, line: 613, baseType: !147, size: 32, offset: 576)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_ops", scope: !5594, file: !148, line: 614, baseType: !5638, size: 64, offset: 640)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_descriptor_metadata_ops", file: !148, line: 569, size: 192, elements: !5640)
!5640 = !{!5641, !5645, !5650}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5639, file: !148, line: 570, baseType: !5642, size: 64)
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5643, size: 64)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!109, !5593, !249, !624}
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "get_ptr", scope: !5639, file: !148, line: 573, baseType: !5646, size: 64, offset: 64)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!249, !5593, !5649, !5649}
!5649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "set_len", scope: !5639, file: !148, line: 575, baseType: !5651, size: 64, offset: 128)
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5652, size: 64)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!109, !5593, !624}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor", scope: !5532, file: !148, line: 892, baseType: !5655, size: 64, offset: 1664)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!5593, !5527, !259, !5658, !7, !624, !258}
!5658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor_val", scope: !5532, file: !148, line: 895, baseType: !5660, size: 64, offset: 1728)
!5660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5661, size: 64)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!5593, !5527, !5658, !7, !624, !5663, !258}
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq", scope: !5532, file: !148, line: 898, baseType: !5665, size: 64, offset: 1792)
!5665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{!5593, !5527, !5658, !5658, !7, !373, !624, !258}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq_val", scope: !5532, file: !148, line: 902, baseType: !5669, size: 64, offset: 1856)
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!5593, !5527, !5658, !5658, !7, !373, !624, !5663, !258}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset", scope: !5532, file: !148, line: 906, baseType: !5673, size: 64, offset: 1920)
!5673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5674, size: 64)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!5593, !5527, !259, !109, !624, !258}
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset_sg", scope: !5532, file: !148, line: 909, baseType: !5677, size: 64, offset: 1984)
!5677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5678, size: 64)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{!5593, !5527, !5680, !7, !109, !258}
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5682, line: 11, size: 256, elements: !5683)
!5682 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5683 = !{!5684, !5685, !5686, !5687, !5688, !5689}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5681, file: !5682, line: 12, baseType: !258, size: 64)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5681, file: !5682, line: 13, baseType: !7, size: 32, offset: 64)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5681, file: !5682, line: 14, baseType: !7, size: 32, offset: 96)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5681, file: !5682, line: 15, baseType: !259, size: 64, offset: 128)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5681, file: !5682, line: 17, baseType: !7, size: 32, offset: 192)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5681, file: !5682, line: 20, baseType: !7, size: 32, offset: 224)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_interrupt", scope: !5532, file: !148, line: 912, baseType: !5691, size: 64, offset: 2048)
!5691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5692, size: 64)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!5593, !5527, !258}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_slave_sg", scope: !5532, file: !148, line: 915, baseType: !5695, size: 64, offset: 2112)
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!5593, !5527, !5680, !7, !191, !258, !249}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_cyclic", scope: !5532, file: !148, line: 919, baseType: !5699, size: 64, offset: 2176)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{!5593, !5527, !259, !624, !624, !191, !258}
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_interleaved_dma", scope: !5532, file: !148, line: 923, baseType: !5703, size: 64, offset: 2240)
!5703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5704, size: 64)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!5593, !5527, !5706, !258}
!5706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5707, size: 64)
!5707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_interleaved_template", file: !148, line: 150, size: 320, elements: !5708)
!5708 = !{!5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "src_start", scope: !5707, file: !148, line: 151, baseType: !259, size: 64)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "dst_start", scope: !5707, file: !148, line: 152, baseType: !259, size: 64, offset: 64)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5707, file: !148, line: 153, baseType: !191, size: 32, offset: 128)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "src_inc", scope: !5707, file: !148, line: 154, baseType: !887, size: 8, offset: 160)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "dst_inc", scope: !5707, file: !148, line: 155, baseType: !887, size: 8, offset: 168)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "src_sgl", scope: !5707, file: !148, line: 156, baseType: !887, size: 8, offset: 176)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "dst_sgl", scope: !5707, file: !148, line: 157, baseType: !887, size: 8, offset: 184)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "numf", scope: !5707, file: !148, line: 158, baseType: !624, size: 64, offset: 192)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !5707, file: !148, line: 159, baseType: !624, size: 64, offset: 256)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5707, file: !148, line: 160, baseType: !5719, offset: 320)
!5719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5720, elements: !771)
!5720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_chunk", file: !148, line: 125, size: 256, elements: !5721)
!5721 = !{!5722, !5723, !5724, !5725}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5720, file: !148, line: 126, baseType: !624, size: 64)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "icg", scope: !5720, file: !148, line: 127, baseType: !624, size: 64, offset: 64)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "dst_icg", scope: !5720, file: !148, line: 128, baseType: !624, size: 64, offset: 128)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "src_icg", scope: !5720, file: !148, line: 129, baseType: !624, size: 64, offset: 192)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_imm_data", scope: !5532, file: !148, line: 926, baseType: !5727, size: 64, offset: 2304)
!5727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5728, size: 64)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{!5593, !5527, !259, !260, !258}
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !5532, file: !148, line: 930, baseType: !5731, size: 64, offset: 2368)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{null, !5527, !5734}
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_caps", file: !148, line: 501, size: 288, elements: !5736)
!5736 = !{!5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !5735, file: !148, line: 502, baseType: !368, size: 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !5735, file: !148, line: 503, baseType: !368, size: 32, offset: 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !5735, file: !148, line: 504, baseType: !368, size: 32, offset: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !5735, file: !148, line: 505, baseType: !368, size: 32, offset: 96)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !5735, file: !148, line: 506, baseType: !368, size: 32, offset: 128)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !5735, file: !148, line: 507, baseType: !368, size: 32, offset: 160)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_pause", scope: !5735, file: !148, line: 508, baseType: !887, size: 8, offset: 192)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_resume", scope: !5735, file: !148, line: 509, baseType: !887, size: 8, offset: 200)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_terminate", scope: !5735, file: !148, line: 510, baseType: !887, size: 8, offset: 208)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !5735, file: !148, line: 511, baseType: !164, size: 32, offset: 224)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !5735, file: !148, line: 512, baseType: !887, size: 8, offset: 256)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "device_config", scope: !5532, file: !148, line: 931, baseType: !5749, size: 64, offset: 2432)
!5749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5750, size: 64)
!5750 = !DISubroutineType(types: !5751)
!5751 = !{!109, !5527, !5752}
!5752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5753, size: 64)
!5753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_config", file: !148, line: 437, size: 576, elements: !5754)
!5754 = !{!5755, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766}
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !5753, file: !148, line: 438, baseType: !191, size: 32)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !5753, file: !148, line: 439, baseType: !4333, size: 64, offset: 64)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !5753, file: !148, line: 440, baseType: !4333, size: 64, offset: 128)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_width", scope: !5753, file: !148, line: 441, baseType: !198, size: 32, offset: 192)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_width", scope: !5753, file: !148, line: 442, baseType: !198, size: 32, offset: 224)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "src_maxburst", scope: !5753, file: !148, line: 443, baseType: !368, size: 32, offset: 256)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "dst_maxburst", scope: !5753, file: !148, line: 444, baseType: !368, size: 32, offset: 288)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "src_port_window_size", scope: !5753, file: !148, line: 445, baseType: !368, size: 32, offset: 320)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port_window_size", scope: !5753, file: !148, line: 446, baseType: !368, size: 32, offset: 352)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "device_fc", scope: !5753, file: !148, line: 447, baseType: !887, size: 8, offset: 384)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "peripheral_config", scope: !5753, file: !148, line: 448, baseType: !249, size: 64, offset: 448)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "peripheral_size", scope: !5753, file: !148, line: 449, baseType: !624, size: 64, offset: 512)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "device_pause", scope: !5532, file: !148, line: 932, baseType: !5581, size: 64, offset: 2496)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "device_resume", scope: !5532, file: !148, line: 933, baseType: !5581, size: 64, offset: 2560)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "device_terminate_all", scope: !5532, file: !148, line: 934, baseType: !5581, size: 64, offset: 2624)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "device_synchronize", scope: !5532, file: !148, line: 935, baseType: !5586, size: 64, offset: 2688)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "device_tx_status", scope: !5532, file: !148, line: 937, baseType: !5772, size: 64, offset: 2752)
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!210, !5527, !5597, !5775}
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_tx_state", file: !148, line: 725, size: 128, elements: !5777)
!5777 = !{!5778, !5779, !5780, !5781}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5776, file: !148, line: 726, baseType: !5597, size: 32)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !5776, file: !148, line: 727, baseType: !5597, size: 32, offset: 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !5776, file: !148, line: 728, baseType: !368, size: 32, offset: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "in_flight_bytes", scope: !5776, file: !148, line: 729, baseType: !368, size: 32, offset: 96)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "device_issue_pending", scope: !5532, file: !148, line: 940, baseType: !5586, size: 64, offset: 2816)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !5532, file: !148, line: 941, baseType: !5784, size: 64, offset: 2880)
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{null, !5531}
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_summary_show", scope: !5532, file: !148, line: 943, baseType: !5788, size: 64, offset: 2944)
!5788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5789 = !DISubroutineType(types: !5790)
!5790 = !{null, !1530, !5531}
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_dev_root", scope: !5532, file: !148, line: 944, baseType: !334, size: 64, offset: 3008)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !5528, file: !148, line: 330, baseType: !3011, size: 64, offset: 64)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !5528, file: !148, line: 331, baseType: !5597, size: 32, offset: 128)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "completed_cookie", scope: !5528, file: !148, line: 332, baseType: !5597, size: 32, offset: 160)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "chan_id", scope: !5528, file: !148, line: 335, baseType: !109, size: 32, offset: 192)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5528, file: !148, line: 336, baseType: !5797, size: 64, offset: 256)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_dev", file: !148, line: 362, size: 5952, elements: !5799)
!5799 = !{!5800, !5801, !5802, !5803}
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !5798, file: !148, line: 363, baseType: !5527, size: 64)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5798, file: !148, line: 364, baseType: !3012, size: 5824, offset: 64)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !5798, file: !148, line: 365, baseType: !109, size: 32, offset: 5888)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "chan_dma_dev", scope: !5798, file: !148, line: 366, baseType: !887, size: 8, offset: 5920)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5528, file: !148, line: 337, baseType: !453, size: 64, offset: 320)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_client_name", scope: !5528, file: !148, line: 339, baseType: !478, size: 64, offset: 384)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !5528, file: !148, line: 342, baseType: !279, size: 128, offset: 448)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !5528, file: !148, line: 343, baseType: !5808, size: 64, offset: 576)
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_percpu", file: !148, line: 293, size: 128, elements: !5810)
!5810 = !{!5811, !5812}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_count", scope: !5809, file: !148, line: 295, baseType: !258, size: 64)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_transferred", scope: !5809, file: !148, line: 296, baseType: !258, size: 64, offset: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "client_count", scope: !5528, file: !148, line: 344, baseType: !109, size: 32, offset: 640)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "table_count", scope: !5528, file: !148, line: 345, baseType: !109, size: 32, offset: 672)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !5528, file: !148, line: 348, baseType: !5816, size: 64, offset: 704)
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5817, size: 64)
!5817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_router", file: !148, line: 304, size: 128, elements: !5818)
!5818 = !{!5819, !5820}
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5817, file: !148, line: 305, baseType: !3011, size: 64)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "route_free", scope: !5817, file: !148, line: 306, baseType: !5821, size: 64, offset: 64)
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5822, size: 64)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{null, !3011, !249}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "route_data", scope: !5528, file: !148, line: 349, baseType: !249, size: 64, offset: 768)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5528, file: !148, line: 351, baseType: !249, size: 64, offset: 832)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "rx_param", scope: !5511, file: !5512, line: 26, baseType: !249, size: 64, offset: 320)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "tx_param", scope: !5511, file: !5512, line: 27, baseType: !249, size: 64, offset: 384)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "rxconf", scope: !5511, file: !5512, line: 29, baseType: !5753, size: 576, offset: 448)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "txconf", scope: !5511, file: !5512, line: 30, baseType: !5753, size: 576, offset: 1024)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "rxchan", scope: !5511, file: !5512, line: 32, baseType: !5527, size: 64, offset: 1600)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "txchan", scope: !5511, file: !5512, line: 33, baseType: !5527, size: 64, offset: 1664)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dma_addr", scope: !5511, file: !5512, line: 36, baseType: !4333, size: 64, offset: 1728)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dma_addr", scope: !5511, file: !5512, line: 37, baseType: !4333, size: 64, offset: 1792)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "rx_addr", scope: !5511, file: !5512, line: 40, baseType: !259, size: 64, offset: 1856)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "tx_addr", scope: !5511, file: !5512, line: 41, baseType: !259, size: 64, offset: 1920)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "rx_cookie", scope: !5511, file: !5512, line: 43, baseType: !5597, size: 32, offset: 1984)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "tx_cookie", scope: !5511, file: !5512, line: 44, baseType: !5597, size: 32, offset: 2016)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf", scope: !5511, file: !5512, line: 46, baseType: !249, size: 64, offset: 2048)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "rx_size", scope: !5511, file: !5512, line: 48, baseType: !624, size: 64, offset: 2112)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "tx_size", scope: !5511, file: !5512, line: 49, baseType: !624, size: 64, offset: 2176)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "tx_running", scope: !5511, file: !5512, line: 51, baseType: !375, size: 8, offset: 2240)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "tx_err", scope: !5511, file: !5512, line: 52, baseType: !375, size: 8, offset: 2248)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "rx_running", scope: !5511, file: !5512, line: 53, baseType: !375, size: 8, offset: 2256)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5228, file: !5229, line: 157, baseType: !5845, size: 64, offset: 5120)
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5846, size: 64)
!5846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5847)
!5847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_8250_ops", file: !5229, line: 94, size: 192, elements: !5848)
!5848 = !{!5849, !5850, !5851}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "setup_irq", scope: !5847, file: !5229, line: 95, baseType: !5515, size: 64)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "release_irq", scope: !5847, file: !5229, line: 96, baseType: !5518, size: 64, offset: 64)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "setup_timer", scope: !5847, file: !5229, line: 97, baseType: !5518, size: 64, offset: 128)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "dl_read", scope: !5228, file: !5229, line: 160, baseType: !5853, size: 64, offset: 5184)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!368, !5227}
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "dl_write", scope: !5228, file: !5229, line: 161, baseType: !5857, size: 64, offset: 5248)
!5857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5858, size: 64)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{null, !5227, !368}
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "em485", scope: !5228, file: !5229, line: 163, baseType: !5861, size: 64, offset: 5312)
!5861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5862, size: 64)
!5862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_8250_em485", file: !5229, line: 100, size: 1216, elements: !5863)
!5863 = !{!5864, !5865, !5866, !5867, !5868}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "start_tx_timer", scope: !5862, file: !5229, line: 101, baseType: !2596, size: 512)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "stop_tx_timer", scope: !5862, file: !5229, line: 102, baseType: !2596, size: 512, offset: 512)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "active_timer", scope: !5862, file: !5229, line: 103, baseType: !2611, size: 64, offset: 1024)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5862, file: !5229, line: 104, baseType: !5227, size: 64, offset: 1088)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "tx_stopped", scope: !5862, file: !5229, line: 105, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_start_tx", scope: !5228, file: !5229, line: 164, baseType: !5518, size: 64, offset: 5376)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_stop_tx", scope: !5228, file: !5229, line: 165, baseType: !5518, size: 64, offset: 5440)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "overrun_backoff", scope: !5228, file: !5229, line: 168, baseType: !2062, size: 704, offset: 5504)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "overrun_backoff_time_ms", scope: !5228, file: !5229, line: 169, baseType: !368, size: 32, offset: 6208)
!5873 = !{!5874, !5875, !5876, !5878, !5879, !5880, !5881, !5883, !5884}
!5874 = !DILocalVariable(name: "p", arg: 1, scope: !5224, file: !3, line: 86, type: !5227)
!5875 = !DILocalVariable(name: "dma", scope: !5224, file: !3, line: 88, type: !5510)
!5876 = !DILocalVariable(name: "xmit", scope: !5224, file: !3, line: 89, type: !5877)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5878 = !DILocalVariable(name: "desc", scope: !5224, file: !3, line: 90, type: !5593)
!5879 = !DILocalVariable(name: "up", scope: !5224, file: !3, line: 91, type: !5241)
!5880 = !DILocalVariable(name: "ret", scope: !5224, file: !3, line: 92, type: !109)
!5881 = !DILocalVariable(name: "end", scope: !5882, file: !3, line: 110, type: !109)
!5882 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 110, column: 17)
!5883 = !DILocalVariable(name: "n", scope: !5882, file: !3, line: 110, type: !109)
!5884 = !DILabel(scope: !5224, name: "err", file: !3, line: 137)
!5885 = !DILocation(line: 86, column: 46, scope: !5224)
!5886 = !DILocation(line: 88, column: 2, scope: !5224)
!5887 = !DILocation(line: 88, column: 25, scope: !5224)
!5888 = !DILocation(line: 88, column: 31, scope: !5224)
!5889 = !DILocation(line: 88, column: 34, scope: !5224)
!5890 = !DILocation(line: 89, column: 2, scope: !5224)
!5891 = !DILocation(line: 89, column: 21, scope: !5224)
!5892 = !DILocation(line: 89, column: 29, scope: !5224)
!5893 = !DILocation(line: 89, column: 32, scope: !5224)
!5894 = !DILocation(line: 89, column: 37, scope: !5224)
!5895 = !DILocation(line: 89, column: 44, scope: !5224)
!5896 = !DILocation(line: 90, column: 2, scope: !5224)
!5897 = !DILocation(line: 90, column: 34, scope: !5224)
!5898 = !DILocation(line: 91, column: 2, scope: !5224)
!5899 = !DILocation(line: 91, column: 21, scope: !5224)
!5900 = !DILocation(line: 91, column: 27, scope: !5224)
!5901 = !DILocation(line: 91, column: 30, scope: !5224)
!5902 = !DILocation(line: 92, column: 2, scope: !5224)
!5903 = !DILocation(line: 92, column: 6, scope: !5224)
!5904 = !DILocation(line: 94, column: 6, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 94, column: 6)
!5906 = !DILocation(line: 94, column: 11, scope: !5905)
!5907 = !DILocation(line: 94, column: 6, scope: !5224)
!5908 = !DILocation(line: 95, column: 7, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 95, column: 7)
!5910 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 94, column: 23)
!5911 = !DILocation(line: 95, column: 11, scope: !5909)
!5912 = !DILocation(line: 95, column: 7, scope: !5910)
!5913 = !DILocation(line: 96, column: 20, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 95, column: 19)
!5915 = !DILocation(line: 96, column: 25, scope: !5914)
!5916 = !DILocation(line: 96, column: 4, scope: !5914)
!5917 = !DILocation(line: 97, column: 19, scope: !5914)
!5918 = !DILocation(line: 97, column: 4, scope: !5914)
!5919 = !DILocation(line: 98, column: 21, scope: !5914)
!5920 = !DILocation(line: 98, column: 26, scope: !5914)
!5921 = !DILocation(line: 98, column: 4, scope: !5914)
!5922 = !DILocation(line: 99, column: 3, scope: !5914)
!5923 = !DILocation(line: 100, column: 3, scope: !5910)
!5924 = !DILocation(line: 101, column: 13, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 101, column: 13)
!5926 = !DILocation(line: 101, column: 17, scope: !5925)
!5927 = !DILocation(line: 101, column: 13, scope: !5905)
!5928 = !DILocation(line: 102, column: 18, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 101, column: 25)
!5930 = !DILocation(line: 102, column: 3, scope: !5929)
!5931 = !DILocation(line: 103, column: 2, scope: !5929)
!5932 = !DILocation(line: 105, column: 23, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 105, column: 6)
!5934 = !DILocation(line: 105, column: 26, scope: !5933)
!5935 = !DILocation(line: 105, column: 6, scope: !5933)
!5936 = !DILocation(line: 105, column: 32, scope: !5933)
!5937 = !DILocation(line: 105, column: 35, scope: !5933)
!5938 = !DILocation(line: 105, column: 6, scope: !5224)
!5939 = !DILocation(line: 107, column: 3, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5933, file: !3, line: 105, column: 58)
!5941 = !DILocation(line: 110, column: 17, scope: !5882)
!5942 = !DILocation(line: 110, column: 17, scope: !5224)
!5943 = !DILocation(line: 110, column: 2, scope: !5224)
!5944 = !DILocation(line: 110, column: 7, scope: !5224)
!5945 = !DILocation(line: 110, column: 15, scope: !5224)
!5946 = !DILocation(line: 112, column: 31, scope: !5224)
!5947 = !DILocation(line: 112, column: 2, scope: !5224)
!5948 = !DILocation(line: 114, column: 37, scope: !5224)
!5949 = !DILocation(line: 114, column: 42, scope: !5224)
!5950 = !DILocation(line: 115, column: 9, scope: !5224)
!5951 = !DILocation(line: 115, column: 14, scope: !5224)
!5952 = !DILocation(line: 115, column: 24, scope: !5224)
!5953 = !DILocation(line: 115, column: 30, scope: !5224)
!5954 = !DILocation(line: 115, column: 22, scope: !5224)
!5955 = !DILocation(line: 116, column: 9, scope: !5224)
!5956 = !DILocation(line: 116, column: 14, scope: !5224)
!5957 = !DILocation(line: 114, column: 9, scope: !5224)
!5958 = !DILocation(line: 114, column: 7, scope: !5224)
!5959 = !DILocation(line: 118, column: 7, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 118, column: 6)
!5961 = !DILocation(line: 118, column: 6, scope: !5224)
!5962 = !DILocation(line: 119, column: 7, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 118, column: 13)
!5964 = !DILocation(line: 120, column: 3, scope: !5963)
!5965 = !DILocation(line: 123, column: 2, scope: !5224)
!5966 = !DILocation(line: 123, column: 7, scope: !5224)
!5967 = !DILocation(line: 123, column: 18, scope: !5224)
!5968 = !DILocation(line: 124, column: 2, scope: !5224)
!5969 = !DILocation(line: 124, column: 8, scope: !5224)
!5970 = !DILocation(line: 124, column: 17, scope: !5224)
!5971 = !DILocation(line: 125, column: 25, scope: !5224)
!5972 = !DILocation(line: 125, column: 2, scope: !5224)
!5973 = !DILocation(line: 125, column: 8, scope: !5224)
!5974 = !DILocation(line: 125, column: 23, scope: !5224)
!5975 = !DILocation(line: 127, column: 36, scope: !5224)
!5976 = !DILocation(line: 127, column: 19, scope: !5224)
!5977 = !DILocation(line: 127, column: 2, scope: !5224)
!5978 = !DILocation(line: 127, column: 7, scope: !5224)
!5979 = !DILocation(line: 127, column: 17, scope: !5224)
!5980 = !DILocation(line: 129, column: 29, scope: !5224)
!5981 = !DILocation(line: 129, column: 34, scope: !5224)
!5982 = !DILocation(line: 129, column: 42, scope: !5224)
!5983 = !DILocation(line: 129, column: 50, scope: !5224)
!5984 = !DILocation(line: 129, column: 55, scope: !5224)
!5985 = !DILocation(line: 129, column: 60, scope: !5224)
!5986 = !DILocation(line: 129, column: 2, scope: !5224)
!5987 = !DILocation(line: 132, column: 26, scope: !5224)
!5988 = !DILocation(line: 132, column: 31, scope: !5224)
!5989 = !DILocation(line: 132, column: 2, scope: !5224)
!5990 = !DILocation(line: 133, column: 24, scope: !5224)
!5991 = !DILocation(line: 133, column: 2, scope: !5224)
!5992 = !DILocation(line: 134, column: 2, scope: !5224)
!5993 = !DILocation(line: 134, column: 7, scope: !5224)
!5994 = !DILocation(line: 134, column: 14, scope: !5224)
!5995 = !DILocation(line: 136, column: 2, scope: !5224)
!5996 = !DILocation(line: 137, column: 1, scope: !5224)
!5997 = !DILocation(line: 138, column: 2, scope: !5224)
!5998 = !DILocation(line: 138, column: 7, scope: !5224)
!5999 = !DILocation(line: 138, column: 14, scope: !5224)
!6000 = !DILocation(line: 139, column: 9, scope: !5224)
!6001 = !DILocation(line: 139, column: 2, scope: !5224)
!6002 = !DILocation(line: 140, column: 1, scope: !5224)
!6003 = distinct !DISubprogram(name: "dmaengine_pause", scope: !148, file: !148, line: 1191, type: !5582, scopeLine: 1192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6004)
!6004 = !{!6005}
!6005 = !DILocalVariable(name: "chan", arg: 1, scope: !6003, file: !148, line: 1191, type: !5527)
!6006 = !DILocation(line: 1191, column: 52, scope: !6003)
!6007 = !DILocation(line: 1193, column: 6, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6003, file: !148, line: 1193, column: 6)
!6009 = !DILocation(line: 1193, column: 12, scope: !6008)
!6010 = !DILocation(line: 1193, column: 20, scope: !6008)
!6011 = !DILocation(line: 1193, column: 6, scope: !6003)
!6012 = !DILocation(line: 1194, column: 10, scope: !6008)
!6013 = !DILocation(line: 1194, column: 16, scope: !6008)
!6014 = !DILocation(line: 1194, column: 24, scope: !6008)
!6015 = !DILocation(line: 1194, column: 37, scope: !6008)
!6016 = !DILocation(line: 1194, column: 3, scope: !6008)
!6017 = !DILocation(line: 1196, column: 2, scope: !6003)
!6018 = !DILocation(line: 1197, column: 1, scope: !6003)
!6019 = !DISubprogram(name: "uart_xchar_out", scope: !142, file: !142, line: 1031, type: !5437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6020 = distinct !DISubprogram(name: "dmaengine_resume", scope: !148, file: !148, line: 1199, type: !5582, scopeLine: 1200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6021)
!6021 = !{!6022}
!6022 = !DILocalVariable(name: "chan", arg: 1, scope: !6020, file: !148, line: 1199, type: !5527)
!6023 = !DILocation(line: 1199, column: 53, scope: !6020)
!6024 = !DILocation(line: 1201, column: 6, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6020, file: !148, line: 1201, column: 6)
!6026 = !DILocation(line: 1201, column: 12, scope: !6025)
!6027 = !DILocation(line: 1201, column: 20, scope: !6025)
!6028 = !DILocation(line: 1201, column: 6, scope: !6020)
!6029 = !DILocation(line: 1202, column: 10, scope: !6025)
!6030 = !DILocation(line: 1202, column: 16, scope: !6025)
!6031 = !DILocation(line: 1202, column: 24, scope: !6025)
!6032 = !DILocation(line: 1202, column: 38, scope: !6025)
!6033 = !DILocation(line: 1202, column: 3, scope: !6025)
!6034 = !DILocation(line: 1204, column: 2, scope: !6020)
!6035 = !DILocation(line: 1205, column: 1, scope: !6020)
!6036 = distinct !DISubprogram(name: "uart_tx_stopped", scope: !142, file: !142, line: 1001, type: !5272, scopeLine: 1002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6037)
!6037 = !{!6038, !6039}
!6038 = !DILocalVariable(name: "port", arg: 1, scope: !6036, file: !142, line: 1001, type: !5241)
!6039 = !DILocalVariable(name: "tty", scope: !6036, file: !142, line: 1003, type: !3004)
!6040 = !DILocation(line: 1001, column: 53, scope: !6036)
!6041 = !DILocation(line: 1003, column: 2, scope: !6036)
!6042 = !DILocation(line: 1003, column: 21, scope: !6036)
!6043 = !DILocation(line: 1003, column: 27, scope: !6036)
!6044 = !DILocation(line: 1003, column: 33, scope: !6036)
!6045 = !DILocation(line: 1003, column: 40, scope: !6036)
!6046 = !DILocation(line: 1003, column: 45, scope: !6036)
!6047 = !DILocation(line: 1004, column: 7, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6036, file: !142, line: 1004, column: 6)
!6049 = !DILocation(line: 1004, column: 11, scope: !6048)
!6050 = !DILocation(line: 1004, column: 14, scope: !6048)
!6051 = !DILocation(line: 1004, column: 19, scope: !6048)
!6052 = !DILocation(line: 1004, column: 24, scope: !6048)
!6053 = !{i8 0, i8 2}
!6054 = !DILocation(line: 1004, column: 33, scope: !6048)
!6055 = !DILocation(line: 1004, column: 36, scope: !6048)
!6056 = !DILocation(line: 1004, column: 42, scope: !6048)
!6057 = !DILocation(line: 1004, column: 6, scope: !6036)
!6058 = !DILocation(line: 1005, column: 3, scope: !6048)
!6059 = !DILocation(line: 1006, column: 2, scope: !6036)
!6060 = !DILocation(line: 1007, column: 1, scope: !6036)
!6061 = distinct !DISubprogram(name: "serial8250_do_prepare_tx_dma", scope: !5512, file: !5512, line: 359, type: !5519, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6062)
!6062 = !{!6063, !6064}
!6063 = !DILocalVariable(name: "p", arg: 1, scope: !6061, file: !5512, line: 359, type: !5227)
!6064 = !DILocalVariable(name: "dma", scope: !6061, file: !5512, line: 361, type: !5510)
!6065 = !DILocation(line: 359, column: 72, scope: !6061)
!6066 = !DILocation(line: 361, column: 2, scope: !6061)
!6067 = !DILocation(line: 361, column: 24, scope: !6061)
!6068 = !DILocation(line: 361, column: 30, scope: !6061)
!6069 = !DILocation(line: 361, column: 33, scope: !6061)
!6070 = !DILocation(line: 363, column: 6, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6061, file: !5512, line: 363, column: 6)
!6072 = !DILocation(line: 363, column: 11, scope: !6071)
!6073 = !DILocation(line: 363, column: 6, scope: !6061)
!6074 = !DILocation(line: 364, column: 3, scope: !6071)
!6075 = !DILocation(line: 364, column: 8, scope: !6071)
!6076 = !DILocation(line: 364, column: 23, scope: !6071)
!6077 = !DILocation(line: 365, column: 1, scope: !6061)
!6078 = distinct !DISubprogram(name: "dmaengine_prep_slave_single", scope: !148, file: !148, line: 962, type: !6079, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6081)
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!5593, !5527, !259, !624, !191, !258}
!6081 = !{!6082, !6083, !6084, !6085, !6086, !6087}
!6082 = !DILocalVariable(name: "chan", arg: 1, scope: !6078, file: !148, line: 963, type: !5527)
!6083 = !DILocalVariable(name: "buf", arg: 2, scope: !6078, file: !148, line: 963, type: !259)
!6084 = !DILocalVariable(name: "len", arg: 3, scope: !6078, file: !148, line: 963, type: !624)
!6085 = !DILocalVariable(name: "dir", arg: 4, scope: !6078, file: !148, line: 964, type: !191)
!6086 = !DILocalVariable(name: "flags", arg: 5, scope: !6078, file: !148, line: 964, type: !258)
!6087 = !DILocalVariable(name: "sg", scope: !6078, file: !148, line: 966, type: !5681)
!6088 = !DILocation(line: 963, column: 19, scope: !6078)
!6089 = !DILocation(line: 963, column: 36, scope: !6078)
!6090 = !DILocation(line: 963, column: 48, scope: !6078)
!6091 = !DILocation(line: 964, column: 30, scope: !6078)
!6092 = !DILocation(line: 964, column: 49, scope: !6078)
!6093 = !DILocation(line: 966, column: 2, scope: !6078)
!6094 = !DILocation(line: 966, column: 21, scope: !6078)
!6095 = !DILocation(line: 967, column: 2, scope: !6078)
!6096 = !DILocation(line: 968, column: 24, scope: !6078)
!6097 = !DILocation(line: 968, column: 2, scope: !6078)
!6098 = !DILocation(line: 968, column: 22, scope: !6078)
!6099 = !DILocation(line: 969, column: 20, scope: !6078)
!6100 = !DILocation(line: 969, column: 2, scope: !6078)
!6101 = !DILocation(line: 969, column: 18, scope: !6078)
!6102 = !DILocation(line: 971, column: 7, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6078, file: !148, line: 971, column: 6)
!6104 = !DILocation(line: 971, column: 12, scope: !6103)
!6105 = !DILocation(line: 971, column: 16, scope: !6103)
!6106 = !DILocation(line: 971, column: 22, scope: !6103)
!6107 = !DILocation(line: 971, column: 29, scope: !6103)
!6108 = !DILocation(line: 971, column: 33, scope: !6103)
!6109 = !DILocation(line: 971, column: 39, scope: !6103)
!6110 = !DILocation(line: 971, column: 47, scope: !6103)
!6111 = !DILocation(line: 971, column: 6, scope: !6078)
!6112 = !DILocation(line: 972, column: 3, scope: !6103)
!6113 = !DILocation(line: 974, column: 9, scope: !6078)
!6114 = !DILocation(line: 974, column: 15, scope: !6078)
!6115 = !DILocation(line: 974, column: 23, scope: !6078)
!6116 = !DILocation(line: 974, column: 44, scope: !6078)
!6117 = !DILocation(line: 975, column: 9, scope: !6078)
!6118 = !DILocation(line: 975, column: 14, scope: !6078)
!6119 = !DILocation(line: 974, column: 2, scope: !6078)
!6120 = !DILocation(line: 976, column: 1, scope: !6078)
!6121 = distinct !DISubprogram(name: "__dma_tx_complete", scope: !3, file: !3, line: 14, type: !1635, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6122)
!6122 = !{!6123, !6124, !6125, !6126, !6127, !6128, !6129, !6133}
!6123 = !DILocalVariable(name: "param", arg: 1, scope: !6121, file: !3, line: 14, type: !249)
!6124 = !DILocalVariable(name: "p", scope: !6121, file: !3, line: 16, type: !5227)
!6125 = !DILocalVariable(name: "dma", scope: !6121, file: !3, line: 17, type: !5510)
!6126 = !DILocalVariable(name: "xmit", scope: !6121, file: !3, line: 18, type: !5877)
!6127 = !DILocalVariable(name: "flags", scope: !6121, file: !3, line: 19, type: !258)
!6128 = !DILocalVariable(name: "ret", scope: !6121, file: !3, line: 20, type: !109)
!6129 = !DILocalVariable(name: "__dummy", scope: !6130, file: !3, line: 25, type: !258)
!6130 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 25, column: 2)
!6131 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 25, column: 2)
!6132 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 25, column: 2)
!6133 = !DILocalVariable(name: "__dummy2", scope: !6130, file: !3, line: 25, type: !258)
!6134 = !DILocation(line: 14, column: 37, scope: !6121)
!6135 = !DILocation(line: 16, column: 2, scope: !6121)
!6136 = !DILocation(line: 16, column: 25, scope: !6121)
!6137 = !DILocation(line: 16, column: 29, scope: !6121)
!6138 = !DILocation(line: 17, column: 2, scope: !6121)
!6139 = !DILocation(line: 17, column: 24, scope: !6121)
!6140 = !DILocation(line: 17, column: 30, scope: !6121)
!6141 = !DILocation(line: 17, column: 33, scope: !6121)
!6142 = !DILocation(line: 18, column: 2, scope: !6121)
!6143 = !DILocation(line: 18, column: 20, scope: !6121)
!6144 = !DILocation(line: 18, column: 28, scope: !6121)
!6145 = !DILocation(line: 18, column: 31, scope: !6121)
!6146 = !DILocation(line: 18, column: 36, scope: !6121)
!6147 = !DILocation(line: 18, column: 43, scope: !6121)
!6148 = !DILocation(line: 19, column: 2, scope: !6121)
!6149 = !DILocation(line: 19, column: 16, scope: !6121)
!6150 = !DILocation(line: 20, column: 2, scope: !6121)
!6151 = !DILocation(line: 20, column: 7, scope: !6121)
!6152 = !DILocation(line: 22, column: 26, scope: !6121)
!6153 = !DILocation(line: 22, column: 31, scope: !6121)
!6154 = !DILocation(line: 22, column: 39, scope: !6121)
!6155 = !DILocation(line: 22, column: 47, scope: !6121)
!6156 = !DILocation(line: 22, column: 52, scope: !6121)
!6157 = !DILocation(line: 22, column: 57, scope: !6121)
!6158 = !DILocation(line: 22, column: 2, scope: !6121)
!6159 = !DILocation(line: 25, column: 2, scope: !6121)
!6160 = !DILocation(line: 25, column: 2, scope: !6132)
!6161 = !DILocation(line: 25, column: 2, scope: !6130)
!6162 = !DILocation(line: 25, column: 2, scope: !6131)
!6163 = !DILocation(line: 27, column: 2, scope: !6121)
!6164 = !DILocation(line: 27, column: 7, scope: !6121)
!6165 = !DILocation(line: 27, column: 18, scope: !6121)
!6166 = !DILocation(line: 29, column: 21, scope: !6121)
!6167 = !DILocation(line: 29, column: 24, scope: !6121)
!6168 = !DILocation(line: 29, column: 30, scope: !6121)
!6169 = !DILocation(line: 29, column: 35, scope: !6121)
!6170 = !DILocation(line: 29, column: 2, scope: !6121)
!6171 = !DILocation(line: 31, column: 6, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 31, column: 6)
!6173 = !DILocation(line: 31, column: 36, scope: !6172)
!6174 = !DILocation(line: 31, column: 6, scope: !6121)
!6175 = !DILocation(line: 32, column: 22, scope: !6172)
!6176 = !DILocation(line: 32, column: 25, scope: !6172)
!6177 = !DILocation(line: 32, column: 3, scope: !6172)
!6178 = !DILocation(line: 34, column: 26, scope: !6121)
!6179 = !DILocation(line: 34, column: 8, scope: !6121)
!6180 = !DILocation(line: 34, column: 6, scope: !6121)
!6181 = !DILocation(line: 35, column: 6, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 35, column: 6)
!6183 = !DILocation(line: 35, column: 10, scope: !6182)
!6184 = !DILocation(line: 35, column: 14, scope: !6182)
!6185 = !DILocation(line: 35, column: 19, scope: !6182)
!6186 = !DILocation(line: 35, column: 6, scope: !6121)
!6187 = !DILocation(line: 36, column: 23, scope: !6182)
!6188 = !DILocation(line: 36, column: 3, scope: !6182)
!6189 = !DILocation(line: 38, column: 26, scope: !6121)
!6190 = !DILocation(line: 38, column: 29, scope: !6121)
!6191 = !DILocation(line: 38, column: 34, scope: !6121)
!6192 = !DILocation(line: 38, column: 40, scope: !6121)
!6193 = !DILocation(line: 38, column: 2, scope: !6121)
!6194 = !DILocation(line: 39, column: 1, scope: !6121)
!6195 = distinct !DISubprogram(name: "dmaengine_submit", scope: !148, file: !148, line: 1213, type: !5603, scopeLine: 1214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6196)
!6196 = !{!6197}
!6197 = !DILocalVariable(name: "desc", arg: 1, scope: !6195, file: !148, line: 1213, type: !5593)
!6198 = !DILocation(line: 1213, column: 77, scope: !6195)
!6199 = !DILocation(line: 1215, column: 9, scope: !6195)
!6200 = !DILocation(line: 1215, column: 15, scope: !6195)
!6201 = !DILocation(line: 1215, column: 25, scope: !6195)
!6202 = !DILocation(line: 1215, column: 2, scope: !6195)
!6203 = !DISubprogram(name: "dma_sync_single_for_device", scope: !5179, file: !5179, line: 122, type: !6204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6204 = !DISubroutineType(types: !6205)
!6205 = !{null, !3011, !259, !624, !217}
!6206 = distinct !DISubprogram(name: "dma_async_issue_pending", scope: !148, file: !148, line: 1419, type: !5587, scopeLine: 1420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6207)
!6207 = !{!6208}
!6208 = !DILocalVariable(name: "chan", arg: 1, scope: !6206, file: !148, line: 1419, type: !5527)
!6209 = !DILocation(line: 1419, column: 61, scope: !6206)
!6210 = !DILocation(line: 1421, column: 2, scope: !6206)
!6211 = !DILocation(line: 1421, column: 8, scope: !6206)
!6212 = !DILocation(line: 1421, column: 16, scope: !6206)
!6213 = !DILocation(line: 1421, column: 37, scope: !6206)
!6214 = !DILocation(line: 1422, column: 1, scope: !6206)
!6215 = distinct !DISubprogram(name: "serial8250_clear_THRI", scope: !5512, file: !5512, line: 191, type: !6216, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6218)
!6216 = !DISubroutineType(types: !6217)
!6217 = !{!887, !5227}
!6218 = !{!6219}
!6219 = !DILocalVariable(name: "up", arg: 1, scope: !6215, file: !5512, line: 191, type: !5227)
!6220 = !DILocation(line: 191, column: 65, scope: !6215)
!6221 = !DILocation(line: 194, column: 2, scope: !6215)
!6222 = !DILocation(line: 194, column: 2, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6215, file: !5512, line: 194, column: 2)
!6224 = !DILocation(line: 196, column: 8, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6215, file: !5512, line: 196, column: 6)
!6226 = !DILocation(line: 196, column: 12, scope: !6225)
!6227 = !DILocation(line: 196, column: 16, scope: !6225)
!6228 = !DILocation(line: 196, column: 6, scope: !6215)
!6229 = !DILocation(line: 197, column: 3, scope: !6225)
!6230 = !DILocation(line: 198, column: 2, scope: !6215)
!6231 = !DILocation(line: 198, column: 6, scope: !6215)
!6232 = !DILocation(line: 198, column: 10, scope: !6215)
!6233 = !DILocation(line: 199, column: 13, scope: !6215)
!6234 = !DILocation(line: 199, column: 27, scope: !6215)
!6235 = !DILocation(line: 199, column: 31, scope: !6215)
!6236 = !DILocation(line: 199, column: 2, scope: !6215)
!6237 = !DILocation(line: 200, column: 2, scope: !6215)
!6238 = !DILocation(line: 201, column: 1, scope: !6215)
!6239 = distinct !DISubprogram(name: "serial8250_tx_dma_flush", scope: !3, file: !3, line: 142, type: !5519, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6240)
!6240 = !{!6241, !6242}
!6241 = !DILocalVariable(name: "p", arg: 1, scope: !6239, file: !3, line: 142, type: !5227)
!6242 = !DILocalVariable(name: "dma", scope: !6239, file: !3, line: 144, type: !5510)
!6243 = !DILocation(line: 142, column: 53, scope: !6239)
!6244 = !DILocation(line: 144, column: 2, scope: !6239)
!6245 = !DILocation(line: 144, column: 24, scope: !6239)
!6246 = !DILocation(line: 144, column: 30, scope: !6239)
!6247 = !DILocation(line: 144, column: 33, scope: !6239)
!6248 = !DILocation(line: 146, column: 7, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 146, column: 6)
!6250 = !DILocation(line: 146, column: 12, scope: !6249)
!6251 = !DILocation(line: 146, column: 6, scope: !6239)
!6252 = !DILocation(line: 147, column: 3, scope: !6249)
!6253 = !DILocation(line: 153, column: 2, scope: !6239)
!6254 = !DILocation(line: 153, column: 7, scope: !6239)
!6255 = !DILocation(line: 153, column: 15, scope: !6239)
!6256 = !DILocation(line: 155, column: 28, scope: !6239)
!6257 = !DILocation(line: 155, column: 33, scope: !6239)
!6258 = !DILocation(line: 155, column: 2, scope: !6239)
!6259 = !DILocation(line: 156, column: 1, scope: !6239)
!6260 = distinct !DISubprogram(name: "dmaengine_terminate_async", scope: !148, file: !148, line: 1130, type: !5582, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6261)
!6261 = !{!6262}
!6262 = !DILocalVariable(name: "chan", arg: 1, scope: !6260, file: !148, line: 1130, type: !5527)
!6263 = !DILocation(line: 1130, column: 62, scope: !6260)
!6264 = !DILocation(line: 1132, column: 6, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6260, file: !148, line: 1132, column: 6)
!6266 = !DILocation(line: 1132, column: 12, scope: !6265)
!6267 = !DILocation(line: 1132, column: 20, scope: !6265)
!6268 = !DILocation(line: 1132, column: 6, scope: !6260)
!6269 = !DILocation(line: 1133, column: 10, scope: !6265)
!6270 = !DILocation(line: 1133, column: 16, scope: !6265)
!6271 = !DILocation(line: 1133, column: 24, scope: !6265)
!6272 = !DILocation(line: 1133, column: 45, scope: !6265)
!6273 = !DILocation(line: 1133, column: 3, scope: !6265)
!6274 = !DILocation(line: 1135, column: 2, scope: !6260)
!6275 = !DILocation(line: 1136, column: 1, scope: !6260)
!6276 = distinct !DISubprogram(name: "serial8250_rx_dma", scope: !3, file: !3, line: 158, type: !5225, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6277 = !{!6278, !6279, !6280}
!6278 = !DILocalVariable(name: "p", arg: 1, scope: !6276, file: !3, line: 158, type: !5227)
!6279 = !DILocalVariable(name: "dma", scope: !6276, file: !3, line: 160, type: !5510)
!6280 = !DILocalVariable(name: "desc", scope: !6276, file: !3, line: 161, type: !5593)
!6281 = !DILocation(line: 158, column: 46, scope: !6276)
!6282 = !DILocation(line: 160, column: 2, scope: !6276)
!6283 = !DILocation(line: 160, column: 25, scope: !6276)
!6284 = !DILocation(line: 160, column: 31, scope: !6276)
!6285 = !DILocation(line: 160, column: 34, scope: !6276)
!6286 = !DILocation(line: 161, column: 2, scope: !6276)
!6287 = !DILocation(line: 161, column: 34, scope: !6276)
!6288 = !DILocation(line: 163, column: 6, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 163, column: 6)
!6290 = !DILocation(line: 163, column: 11, scope: !6289)
!6291 = !DILocation(line: 163, column: 6, scope: !6276)
!6292 = !DILocation(line: 164, column: 3, scope: !6289)
!6293 = !DILocation(line: 166, column: 31, scope: !6276)
!6294 = !DILocation(line: 166, column: 2, scope: !6276)
!6295 = !DILocation(line: 168, column: 37, scope: !6276)
!6296 = !DILocation(line: 168, column: 42, scope: !6276)
!6297 = !DILocation(line: 168, column: 50, scope: !6276)
!6298 = !DILocation(line: 168, column: 55, scope: !6276)
!6299 = !DILocation(line: 169, column: 9, scope: !6276)
!6300 = !DILocation(line: 169, column: 14, scope: !6276)
!6301 = !DILocation(line: 168, column: 9, scope: !6276)
!6302 = !DILocation(line: 168, column: 7, scope: !6276)
!6303 = !DILocation(line: 171, column: 7, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 171, column: 6)
!6305 = !DILocation(line: 171, column: 6, scope: !6276)
!6306 = !DILocation(line: 172, column: 3, scope: !6304)
!6307 = !DILocation(line: 174, column: 2, scope: !6276)
!6308 = !DILocation(line: 174, column: 7, scope: !6276)
!6309 = !DILocation(line: 174, column: 18, scope: !6276)
!6310 = !DILocation(line: 175, column: 2, scope: !6276)
!6311 = !DILocation(line: 175, column: 8, scope: !6276)
!6312 = !DILocation(line: 175, column: 17, scope: !6276)
!6313 = !DILocation(line: 176, column: 25, scope: !6276)
!6314 = !DILocation(line: 176, column: 2, scope: !6276)
!6315 = !DILocation(line: 176, column: 8, scope: !6276)
!6316 = !DILocation(line: 176, column: 23, scope: !6276)
!6317 = !DILocation(line: 178, column: 36, scope: !6276)
!6318 = !DILocation(line: 178, column: 19, scope: !6276)
!6319 = !DILocation(line: 178, column: 2, scope: !6276)
!6320 = !DILocation(line: 178, column: 7, scope: !6276)
!6321 = !DILocation(line: 178, column: 17, scope: !6276)
!6322 = !DILocation(line: 180, column: 26, scope: !6276)
!6323 = !DILocation(line: 180, column: 31, scope: !6276)
!6324 = !DILocation(line: 180, column: 2, scope: !6276)
!6325 = !DILocation(line: 182, column: 2, scope: !6276)
!6326 = !DILocation(line: 183, column: 1, scope: !6276)
!6327 = distinct !DISubprogram(name: "serial8250_do_prepare_rx_dma", scope: !5512, file: !5512, line: 367, type: !5519, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6328)
!6328 = !{!6329, !6330}
!6329 = !DILocalVariable(name: "p", arg: 1, scope: !6327, file: !5512, line: 367, type: !5227)
!6330 = !DILocalVariable(name: "dma", scope: !6327, file: !5512, line: 369, type: !5510)
!6331 = !DILocation(line: 367, column: 72, scope: !6327)
!6332 = !DILocation(line: 369, column: 2, scope: !6327)
!6333 = !DILocation(line: 369, column: 24, scope: !6327)
!6334 = !DILocation(line: 369, column: 30, scope: !6327)
!6335 = !DILocation(line: 369, column: 33, scope: !6327)
!6336 = !DILocation(line: 371, column: 6, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6327, file: !5512, line: 371, column: 6)
!6338 = !DILocation(line: 371, column: 11, scope: !6337)
!6339 = !DILocation(line: 371, column: 6, scope: !6327)
!6340 = !DILocation(line: 372, column: 3, scope: !6337)
!6341 = !DILocation(line: 372, column: 8, scope: !6337)
!6342 = !DILocation(line: 372, column: 23, scope: !6337)
!6343 = !DILocation(line: 373, column: 1, scope: !6327)
!6344 = distinct !DISubprogram(name: "dma_rx_complete", scope: !3, file: !3, line: 67, type: !1635, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6345)
!6345 = !{!6346, !6347, !6348, !6349, !6350, !6354}
!6346 = !DILocalVariable(name: "param", arg: 1, scope: !6344, file: !3, line: 67, type: !249)
!6347 = !DILocalVariable(name: "p", scope: !6344, file: !3, line: 69, type: !5227)
!6348 = !DILocalVariable(name: "dma", scope: !6344, file: !3, line: 70, type: !5510)
!6349 = !DILocalVariable(name: "flags", scope: !6344, file: !3, line: 71, type: !258)
!6350 = !DILocalVariable(name: "__dummy", scope: !6351, file: !3, line: 73, type: !258)
!6351 = distinct !DILexicalBlock(scope: !6352, file: !3, line: 73, column: 2)
!6352 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 73, column: 2)
!6353 = distinct !DILexicalBlock(scope: !6344, file: !3, line: 73, column: 2)
!6354 = !DILocalVariable(name: "__dummy2", scope: !6351, file: !3, line: 73, type: !258)
!6355 = !DILocation(line: 67, column: 35, scope: !6344)
!6356 = !DILocation(line: 69, column: 2, scope: !6344)
!6357 = !DILocation(line: 69, column: 25, scope: !6344)
!6358 = !DILocation(line: 69, column: 29, scope: !6344)
!6359 = !DILocation(line: 70, column: 2, scope: !6344)
!6360 = !DILocation(line: 70, column: 24, scope: !6344)
!6361 = !DILocation(line: 70, column: 30, scope: !6344)
!6362 = !DILocation(line: 70, column: 33, scope: !6344)
!6363 = !DILocation(line: 71, column: 2, scope: !6344)
!6364 = !DILocation(line: 71, column: 16, scope: !6344)
!6365 = !DILocation(line: 73, column: 2, scope: !6344)
!6366 = !DILocation(line: 73, column: 2, scope: !6353)
!6367 = !DILocation(line: 73, column: 2, scope: !6351)
!6368 = !DILocation(line: 73, column: 2, scope: !6352)
!6369 = !DILocation(line: 74, column: 6, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6344, file: !3, line: 74, column: 6)
!6371 = !DILocation(line: 74, column: 11, scope: !6370)
!6372 = !DILocation(line: 74, column: 6, scope: !6344)
!6373 = !DILocation(line: 75, column: 21, scope: !6370)
!6374 = !DILocation(line: 75, column: 3, scope: !6370)
!6375 = !DILocation(line: 81, column: 7, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6344, file: !3, line: 81, column: 6)
!6377 = !DILocation(line: 81, column: 12, scope: !6376)
!6378 = !DILocation(line: 81, column: 23, scope: !6376)
!6379 = !DILocation(line: 81, column: 41, scope: !6376)
!6380 = !DILocation(line: 81, column: 27, scope: !6376)
!6381 = !DILocation(line: 81, column: 44, scope: !6376)
!6382 = !DILocation(line: 81, column: 6, scope: !6344)
!6383 = !DILocation(line: 82, column: 3, scope: !6376)
!6384 = !DILocation(line: 82, column: 6, scope: !6376)
!6385 = !DILocation(line: 82, column: 11, scope: !6376)
!6386 = !DILocation(line: 82, column: 18, scope: !6376)
!6387 = !DILocation(line: 83, column: 26, scope: !6344)
!6388 = !DILocation(line: 83, column: 29, scope: !6344)
!6389 = !DILocation(line: 83, column: 34, scope: !6344)
!6390 = !DILocation(line: 83, column: 40, scope: !6344)
!6391 = !DILocation(line: 83, column: 2, scope: !6344)
!6392 = !DILocation(line: 84, column: 1, scope: !6344)
!6393 = distinct !DISubprogram(name: "serial8250_rx_dma_flush", scope: !3, file: !3, line: 185, type: !5519, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6394)
!6394 = !{!6395, !6396}
!6395 = !DILocalVariable(name: "p", arg: 1, scope: !6393, file: !3, line: 185, type: !5227)
!6396 = !DILocalVariable(name: "dma", scope: !6393, file: !3, line: 187, type: !5510)
!6397 = !DILocation(line: 185, column: 53, scope: !6393)
!6398 = !DILocation(line: 187, column: 2, scope: !6393)
!6399 = !DILocation(line: 187, column: 24, scope: !6393)
!6400 = !DILocation(line: 187, column: 30, scope: !6393)
!6401 = !DILocation(line: 187, column: 33, scope: !6393)
!6402 = !DILocation(line: 189, column: 6, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 189, column: 6)
!6404 = !DILocation(line: 189, column: 11, scope: !6403)
!6405 = !DILocation(line: 189, column: 6, scope: !6393)
!6406 = !DILocation(line: 190, column: 19, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 189, column: 23)
!6408 = !DILocation(line: 190, column: 24, scope: !6407)
!6409 = !DILocation(line: 190, column: 3, scope: !6407)
!6410 = !DILocation(line: 191, column: 21, scope: !6407)
!6411 = !DILocation(line: 191, column: 3, scope: !6407)
!6412 = !DILocation(line: 192, column: 29, scope: !6407)
!6413 = !DILocation(line: 192, column: 34, scope: !6407)
!6414 = !DILocation(line: 192, column: 3, scope: !6407)
!6415 = !DILocation(line: 193, column: 2, scope: !6407)
!6416 = !DILocation(line: 194, column: 1, scope: !6393)
!6417 = distinct !DISubprogram(name: "__dma_rx_complete", scope: !3, file: !3, line: 41, type: !5519, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6418)
!6418 = !{!6419, !6420, !6421, !6422, !6423, !6424}
!6419 = !DILocalVariable(name: "p", arg: 1, scope: !6417, file: !3, line: 41, type: !5227)
!6420 = !DILocalVariable(name: "dma", scope: !6417, file: !3, line: 43, type: !5510)
!6421 = !DILocalVariable(name: "tty_port", scope: !6417, file: !3, line: 44, type: !3516)
!6422 = !DILocalVariable(name: "state", scope: !6417, file: !3, line: 45, type: !5776)
!6423 = !DILocalVariable(name: "dma_status", scope: !6417, file: !3, line: 46, type: !210)
!6424 = !DILocalVariable(name: "count", scope: !6417, file: !3, line: 47, type: !109)
!6425 = !DILocation(line: 41, column: 54, scope: !6417)
!6426 = !DILocation(line: 43, column: 2, scope: !6417)
!6427 = !DILocation(line: 43, column: 24, scope: !6417)
!6428 = !DILocation(line: 43, column: 30, scope: !6417)
!6429 = !DILocation(line: 43, column: 33, scope: !6417)
!6430 = !DILocation(line: 44, column: 2, scope: !6417)
!6431 = !DILocation(line: 44, column: 20, scope: !6417)
!6432 = !DILocation(line: 44, column: 32, scope: !6417)
!6433 = !DILocation(line: 44, column: 35, scope: !6417)
!6434 = !DILocation(line: 44, column: 40, scope: !6417)
!6435 = !DILocation(line: 44, column: 47, scope: !6417)
!6436 = !DILocation(line: 45, column: 2, scope: !6417)
!6437 = !DILocation(line: 45, column: 22, scope: !6417)
!6438 = !DILocation(line: 46, column: 2, scope: !6417)
!6439 = !DILocation(line: 46, column: 19, scope: !6417)
!6440 = !DILocation(line: 47, column: 2, scope: !6417)
!6441 = !DILocation(line: 47, column: 8, scope: !6417)
!6442 = !DILocation(line: 54, column: 35, scope: !6417)
!6443 = !DILocation(line: 54, column: 40, scope: !6417)
!6444 = !DILocation(line: 54, column: 48, scope: !6417)
!6445 = !DILocation(line: 54, column: 53, scope: !6417)
!6446 = !DILocation(line: 54, column: 15, scope: !6417)
!6447 = !DILocation(line: 54, column: 13, scope: !6417)
!6448 = !DILocation(line: 55, column: 6, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 55, column: 6)
!6450 = !DILocation(line: 55, column: 17, scope: !6449)
!6451 = !DILocation(line: 55, column: 6, scope: !6417)
!6452 = !DILocation(line: 56, column: 3, scope: !6449)
!6453 = !DILocation(line: 58, column: 10, scope: !6417)
!6454 = !DILocation(line: 58, column: 15, scope: !6417)
!6455 = !DILocation(line: 58, column: 31, scope: !6417)
!6456 = !DILocation(line: 58, column: 25, scope: !6417)
!6457 = !DILocation(line: 58, column: 23, scope: !6417)
!6458 = !DILocation(line: 58, column: 8, scope: !6417)
!6459 = !DILocation(line: 60, column: 25, scope: !6417)
!6460 = !DILocation(line: 60, column: 35, scope: !6417)
!6461 = !DILocation(line: 60, column: 40, scope: !6417)
!6462 = !DILocation(line: 60, column: 48, scope: !6417)
!6463 = !DILocation(line: 60, column: 2, scope: !6417)
!6464 = !DILocation(line: 61, column: 23, scope: !6417)
!6465 = !DILocation(line: 61, column: 2, scope: !6417)
!6466 = !DILocation(line: 61, column: 5, scope: !6417)
!6467 = !DILocation(line: 61, column: 10, scope: !6417)
!6468 = !DILocation(line: 61, column: 17, scope: !6417)
!6469 = !DILocation(line: 61, column: 20, scope: !6417)
!6470 = !DILocation(line: 62, column: 2, scope: !6417)
!6471 = !DILocation(line: 62, column: 7, scope: !6417)
!6472 = !DILocation(line: 62, column: 18, scope: !6417)
!6473 = !DILocation(line: 64, column: 23, scope: !6417)
!6474 = !DILocation(line: 64, column: 2, scope: !6417)
!6475 = !DILocation(line: 65, column: 1, scope: !6417)
!6476 = distinct !DISubprogram(name: "serial8250_request_dma", scope: !3, file: !3, line: 197, type: !5225, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6477)
!6477 = !{!6478, !6479, !6480, !6481, !6482, !6483, !6484, !6485, !6486}
!6478 = !DILocalVariable(name: "p", arg: 1, scope: !6476, file: !3, line: 197, type: !5227)
!6479 = !DILocalVariable(name: "dma", scope: !6476, file: !3, line: 199, type: !5510)
!6480 = !DILocalVariable(name: "rx_dma_addr", scope: !6476, file: !3, line: 200, type: !4333)
!6481 = !DILocalVariable(name: "tx_dma_addr", scope: !6476, file: !3, line: 202, type: !4333)
!6482 = !DILocalVariable(name: "mask", scope: !6476, file: !3, line: 204, type: !5553)
!6483 = !DILocalVariable(name: "caps", scope: !6476, file: !3, line: 205, type: !5735)
!6484 = !DILocalVariable(name: "ret", scope: !6476, file: !3, line: 206, type: !109)
!6485 = !DILabel(scope: !6476, name: "err", file: !3, line: 285)
!6486 = !DILabel(scope: !6476, name: "release_rx", file: !3, line: 287)
!6487 = !DILocation(line: 197, column: 51, scope: !6476)
!6488 = !DILocation(line: 199, column: 2, scope: !6476)
!6489 = !DILocation(line: 199, column: 24, scope: !6476)
!6490 = !DILocation(line: 199, column: 30, scope: !6476)
!6491 = !DILocation(line: 199, column: 33, scope: !6476)
!6492 = !DILocation(line: 200, column: 2, scope: !6476)
!6493 = !DILocation(line: 200, column: 14, scope: !6476)
!6494 = !DILocation(line: 200, column: 28, scope: !6476)
!6495 = !DILocation(line: 200, column: 33, scope: !6476)
!6496 = !DILocation(line: 201, column: 7, scope: !6476)
!6497 = !DILocation(line: 201, column: 12, scope: !6476)
!6498 = !DILocation(line: 201, column: 26, scope: !6476)
!6499 = !DILocation(line: 201, column: 29, scope: !6476)
!6500 = !DILocation(line: 201, column: 34, scope: !6476)
!6501 = !DILocation(line: 202, column: 2, scope: !6476)
!6502 = !DILocation(line: 202, column: 14, scope: !6476)
!6503 = !DILocation(line: 202, column: 28, scope: !6476)
!6504 = !DILocation(line: 202, column: 33, scope: !6476)
!6505 = !DILocation(line: 203, column: 7, scope: !6476)
!6506 = !DILocation(line: 203, column: 12, scope: !6476)
!6507 = !DILocation(line: 203, column: 26, scope: !6476)
!6508 = !DILocation(line: 203, column: 29, scope: !6476)
!6509 = !DILocation(line: 203, column: 34, scope: !6476)
!6510 = !DILocation(line: 204, column: 2, scope: !6476)
!6511 = !DILocation(line: 204, column: 18, scope: !6476)
!6512 = !DILocation(line: 205, column: 2, scope: !6476)
!6513 = !DILocation(line: 205, column: 24, scope: !6476)
!6514 = !DILocation(line: 206, column: 2, scope: !6476)
!6515 = !DILocation(line: 206, column: 8, scope: !6476)
!6516 = !DILocation(line: 209, column: 2, scope: !6476)
!6517 = !DILocation(line: 209, column: 7, scope: !6476)
!6518 = !DILocation(line: 209, column: 14, scope: !6476)
!6519 = !DILocation(line: 209, column: 25, scope: !6476)
!6520 = !DILocation(line: 210, column: 2, scope: !6476)
!6521 = !DILocation(line: 210, column: 7, scope: !6476)
!6522 = !DILocation(line: 210, column: 14, scope: !6476)
!6523 = !DILocation(line: 210, column: 29, scope: !6476)
!6524 = !DILocation(line: 211, column: 26, scope: !6476)
!6525 = !DILocation(line: 211, column: 38, scope: !6476)
!6526 = !DILocation(line: 211, column: 2, scope: !6476)
!6527 = !DILocation(line: 211, column: 7, scope: !6476)
!6528 = !DILocation(line: 211, column: 14, scope: !6476)
!6529 = !DILocation(line: 211, column: 24, scope: !6476)
!6530 = !DILocation(line: 213, column: 2, scope: !6476)
!6531 = !DILocation(line: 213, column: 7, scope: !6476)
!6532 = !DILocation(line: 213, column: 14, scope: !6476)
!6533 = !DILocation(line: 213, column: 25, scope: !6476)
!6534 = !DILocation(line: 214, column: 2, scope: !6476)
!6535 = !DILocation(line: 214, column: 7, scope: !6476)
!6536 = !DILocation(line: 214, column: 14, scope: !6476)
!6537 = !DILocation(line: 214, column: 29, scope: !6476)
!6538 = !DILocation(line: 215, column: 26, scope: !6476)
!6539 = !DILocation(line: 215, column: 38, scope: !6476)
!6540 = !DILocation(line: 215, column: 2, scope: !6476)
!6541 = !DILocation(line: 215, column: 7, scope: !6476)
!6542 = !DILocation(line: 215, column: 14, scope: !6476)
!6543 = !DILocation(line: 215, column: 24, scope: !6476)
!6544 = !DILocation(line: 217, column: 2, scope: !6476)
!6545 = !DILocation(line: 218, column: 2, scope: !6476)
!6546 = !DILocation(line: 222, column: 14, scope: !6476)
!6547 = !DILocation(line: 222, column: 19, scope: !6476)
!6548 = !DILocation(line: 222, column: 23, scope: !6476)
!6549 = !DILocation(line: 222, column: 28, scope: !6476)
!6550 = !DILocation(line: 223, column: 14, scope: !6476)
!6551 = !DILocation(line: 223, column: 17, scope: !6476)
!6552 = !DILocation(line: 223, column: 22, scope: !6476)
!6553 = !DILocation(line: 221, column: 16, scope: !6476)
!6554 = !DILocation(line: 221, column: 2, scope: !6476)
!6555 = !DILocation(line: 221, column: 7, scope: !6476)
!6556 = !DILocation(line: 221, column: 14, scope: !6476)
!6557 = !DILocation(line: 224, column: 7, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 224, column: 6)
!6559 = !DILocation(line: 224, column: 12, scope: !6558)
!6560 = !DILocation(line: 224, column: 6, scope: !6476)
!6561 = !DILocation(line: 225, column: 3, scope: !6558)
!6562 = !DILocation(line: 228, column: 27, scope: !6476)
!6563 = !DILocation(line: 228, column: 32, scope: !6476)
!6564 = !DILocation(line: 228, column: 8, scope: !6476)
!6565 = !DILocation(line: 228, column: 6, scope: !6476)
!6566 = !DILocation(line: 229, column: 6, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 229, column: 6)
!6568 = !DILocation(line: 229, column: 6, scope: !6476)
!6569 = !DILocation(line: 230, column: 3, scope: !6567)
!6570 = !DILocation(line: 231, column: 12, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 231, column: 6)
!6572 = !DILocation(line: 231, column: 22, scope: !6571)
!6573 = !DILocation(line: 231, column: 31, scope: !6571)
!6574 = !DILocation(line: 231, column: 45, scope: !6571)
!6575 = !DILocation(line: 232, column: 11, scope: !6571)
!6576 = !DILocation(line: 232, column: 31, scope: !6571)
!6577 = !DILocation(line: 231, column: 6, scope: !6476)
!6578 = !DILocation(line: 233, column: 7, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 232, column: 70)
!6580 = !DILocation(line: 234, column: 3, scope: !6579)
!6581 = !DILocation(line: 237, column: 25, scope: !6476)
!6582 = !DILocation(line: 237, column: 30, scope: !6476)
!6583 = !DILocation(line: 237, column: 39, scope: !6476)
!6584 = !DILocation(line: 237, column: 44, scope: !6476)
!6585 = !DILocation(line: 237, column: 2, scope: !6476)
!6586 = !DILocation(line: 241, column: 14, scope: !6476)
!6587 = !DILocation(line: 241, column: 19, scope: !6476)
!6588 = !DILocation(line: 241, column: 23, scope: !6476)
!6589 = !DILocation(line: 241, column: 28, scope: !6476)
!6590 = !DILocation(line: 242, column: 14, scope: !6476)
!6591 = !DILocation(line: 242, column: 17, scope: !6476)
!6592 = !DILocation(line: 242, column: 22, scope: !6476)
!6593 = !DILocation(line: 240, column: 16, scope: !6476)
!6594 = !DILocation(line: 240, column: 2, scope: !6476)
!6595 = !DILocation(line: 240, column: 7, scope: !6476)
!6596 = !DILocation(line: 240, column: 14, scope: !6476)
!6597 = !DILocation(line: 243, column: 7, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 243, column: 6)
!6599 = !DILocation(line: 243, column: 12, scope: !6598)
!6600 = !DILocation(line: 243, column: 6, scope: !6476)
!6601 = !DILocation(line: 244, column: 7, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 243, column: 20)
!6603 = !DILocation(line: 245, column: 3, scope: !6602)
!6604 = !DILocation(line: 249, column: 27, scope: !6476)
!6605 = !DILocation(line: 249, column: 32, scope: !6476)
!6606 = !DILocation(line: 249, column: 8, scope: !6476)
!6607 = !DILocation(line: 249, column: 6, scope: !6476)
!6608 = !DILocation(line: 250, column: 6, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 250, column: 6)
!6610 = !DILocation(line: 250, column: 6, scope: !6476)
!6611 = !DILocation(line: 251, column: 3, scope: !6609)
!6612 = !DILocation(line: 252, column: 12, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 252, column: 6)
!6614 = !DILocation(line: 252, column: 6, scope: !6476)
!6615 = !DILocation(line: 253, column: 7, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 252, column: 27)
!6617 = !DILocation(line: 254, column: 3, scope: !6616)
!6618 = !DILocation(line: 257, column: 25, scope: !6476)
!6619 = !DILocation(line: 257, column: 30, scope: !6476)
!6620 = !DILocation(line: 257, column: 39, scope: !6476)
!6621 = !DILocation(line: 257, column: 44, scope: !6476)
!6622 = !DILocation(line: 257, column: 2, scope: !6476)
!6623 = !DILocation(line: 260, column: 7, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 260, column: 6)
!6625 = !DILocation(line: 260, column: 12, scope: !6624)
!6626 = !DILocation(line: 260, column: 6, scope: !6476)
!6627 = !DILocation(line: 261, column: 3, scope: !6624)
!6628 = !DILocation(line: 261, column: 8, scope: !6624)
!6629 = !DILocation(line: 261, column: 16, scope: !6624)
!6630 = !DILocation(line: 263, column: 35, scope: !6476)
!6631 = !DILocation(line: 263, column: 40, scope: !6476)
!6632 = !DILocation(line: 263, column: 48, scope: !6476)
!6633 = !DILocation(line: 263, column: 56, scope: !6476)
!6634 = !DILocation(line: 263, column: 61, scope: !6476)
!6635 = !DILocation(line: 263, column: 66, scope: !6476)
!6636 = !DILocation(line: 264, column: 7, scope: !6476)
!6637 = !DILocation(line: 264, column: 12, scope: !6476)
!6638 = !DILocation(line: 263, column: 16, scope: !6476)
!6639 = !DILocation(line: 263, column: 2, scope: !6476)
!6640 = !DILocation(line: 263, column: 7, scope: !6476)
!6641 = !DILocation(line: 263, column: 14, scope: !6476)
!6642 = !DILocation(line: 265, column: 7, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 265, column: 6)
!6644 = !DILocation(line: 265, column: 12, scope: !6643)
!6645 = !DILocation(line: 265, column: 6, scope: !6476)
!6646 = !DILocation(line: 266, column: 7, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6643, file: !3, line: 265, column: 20)
!6648 = !DILocation(line: 267, column: 3, scope: !6647)
!6649 = !DILocation(line: 271, column: 17, scope: !6476)
!6650 = !DILocation(line: 271, column: 2, scope: !6476)
!6651 = !DILocation(line: 271, column: 7, scope: !6476)
!6652 = !DILocation(line: 271, column: 15, scope: !6476)
!6653 = !DILocation(line: 275, column: 24, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 275, column: 6)
!6655 = !DILocation(line: 275, column: 29, scope: !6654)
!6656 = !DILocation(line: 275, column: 37, scope: !6654)
!6657 = !DILocation(line: 275, column: 45, scope: !6654)
!6658 = !DILocation(line: 275, column: 50, scope: !6654)
!6659 = !DILocation(line: 275, column: 55, scope: !6654)
!6660 = !DILocation(line: 275, column: 6, scope: !6654)
!6661 = !DILocation(line: 275, column: 6, scope: !6476)
!6662 = !DILocation(line: 276, column: 21, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6654, file: !3, line: 275, column: 65)
!6664 = !DILocation(line: 276, column: 26, scope: !6663)
!6665 = !DILocation(line: 276, column: 34, scope: !6663)
!6666 = !DILocation(line: 276, column: 42, scope: !6663)
!6667 = !DILocation(line: 276, column: 47, scope: !6663)
!6668 = !DILocation(line: 276, column: 52, scope: !6663)
!6669 = !DILocation(line: 277, column: 7, scope: !6663)
!6670 = !DILocation(line: 277, column: 12, scope: !6663)
!6671 = !DILocation(line: 277, column: 20, scope: !6663)
!6672 = !DILocation(line: 277, column: 25, scope: !6663)
!6673 = !DILocation(line: 276, column: 3, scope: !6663)
!6674 = !DILocation(line: 278, column: 7, scope: !6663)
!6675 = !DILocation(line: 279, column: 3, scope: !6663)
!6676 = !DILocation(line: 284, column: 2, scope: !6476)
!6677 = !DILocation(line: 285, column: 1, scope: !6476)
!6678 = !DILocation(line: 286, column: 22, scope: !6476)
!6679 = !DILocation(line: 286, column: 27, scope: !6476)
!6680 = !DILocation(line: 286, column: 2, scope: !6476)
!6681 = !DILocation(line: 287, column: 1, scope: !6476)
!6682 = !DILocation(line: 288, column: 22, scope: !6476)
!6683 = !DILocation(line: 288, column: 27, scope: !6476)
!6684 = !DILocation(line: 288, column: 2, scope: !6476)
!6685 = !DILocation(line: 289, column: 9, scope: !6476)
!6686 = !DILocation(line: 289, column: 2, scope: !6476)
!6687 = !DILocation(line: 290, column: 1, scope: !6476)
!6688 = distinct !DISubprogram(name: "__dma_cap_zero", scope: !148, file: !148, line: 1397, type: !6689, scopeLine: 1398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6692)
!6689 = !DISubroutineType(types: !6690)
!6690 = !{null, !6691}
!6691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!6692 = !{!6693}
!6693 = !DILocalVariable(name: "dstp", arg: 1, scope: !6688, file: !148, line: 1397, type: !6691)
!6694 = !DILocation(line: 1397, column: 51, scope: !6688)
!6695 = !DILocation(line: 1399, column: 14, scope: !6688)
!6696 = !DILocation(line: 1399, column: 20, scope: !6688)
!6697 = !DILocation(line: 1399, column: 2, scope: !6688)
!6698 = !DILocation(line: 1400, column: 1, scope: !6688)
!6699 = distinct !DISubprogram(name: "__dma_cap_set", scope: !148, file: !148, line: 1384, type: !6700, scopeLine: 1385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6702)
!6700 = !DISubroutineType(types: !6701)
!6701 = !{null, !224, !6691}
!6702 = !{!6703, !6704}
!6703 = !DILocalVariable(name: "tx_type", arg: 1, scope: !6699, file: !148, line: 1384, type: !224)
!6704 = !DILocalVariable(name: "dstp", arg: 2, scope: !6699, file: !148, line: 1384, type: !6691)
!6705 = !DILocation(line: 1384, column: 41, scope: !6699)
!6706 = !DILocation(line: 1384, column: 66, scope: !6699)
!6707 = !DILocation(line: 1386, column: 10, scope: !6699)
!6708 = !DILocation(line: 1386, column: 19, scope: !6699)
!6709 = !DILocation(line: 1386, column: 25, scope: !6699)
!6710 = !DILocation(line: 1386, column: 2, scope: !6699)
!6711 = !DILocation(line: 1387, column: 1, scope: !6699)
!6712 = distinct !DISubprogram(name: "dma_request_slave_channel_compat", scope: !148, file: !148, line: 1597, type: !6713, scopeLine: 1600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6716)
!6713 = !DISubroutineType(types: !6714)
!6714 = !{!5527, !6715, !5523, !249, !3011, !453}
!6715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5553)
!6716 = !{!6717, !6718, !6719, !6720, !6721, !6722}
!6717 = !DILocalVariable(name: "mask", arg: 1, scope: !6712, file: !148, line: 1597, type: !6715)
!6718 = !DILocalVariable(name: "fn", arg: 2, scope: !6712, file: !148, line: 1598, type: !5523)
!6719 = !DILocalVariable(name: "fn_param", arg: 3, scope: !6712, file: !148, line: 1598, type: !249)
!6720 = !DILocalVariable(name: "dev", arg: 4, scope: !6712, file: !148, line: 1599, type: !3011)
!6721 = !DILocalVariable(name: "name", arg: 5, scope: !6712, file: !148, line: 1599, type: !453)
!6722 = !DILocalVariable(name: "chan", scope: !6712, file: !148, line: 1601, type: !5527)
!6723 = !DILocation(line: 1597, column: 56, scope: !6712)
!6724 = !DILocation(line: 1598, column: 21, scope: !6712)
!6725 = !DILocation(line: 1598, column: 31, scope: !6712)
!6726 = !DILocation(line: 1599, column: 22, scope: !6712)
!6727 = !DILocation(line: 1599, column: 39, scope: !6712)
!6728 = !DILocation(line: 1601, column: 2, scope: !6712)
!6729 = !DILocation(line: 1601, column: 19, scope: !6712)
!6730 = !DILocation(line: 1603, column: 35, scope: !6712)
!6731 = !DILocation(line: 1603, column: 40, scope: !6712)
!6732 = !DILocation(line: 1603, column: 9, scope: !6712)
!6733 = !DILocation(line: 1603, column: 7, scope: !6712)
!6734 = !DILocation(line: 1604, column: 6, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6712, file: !148, line: 1604, column: 6)
!6736 = !DILocation(line: 1604, column: 6, scope: !6712)
!6737 = !DILocation(line: 1605, column: 10, scope: !6735)
!6738 = !DILocation(line: 1605, column: 3, scope: !6735)
!6739 = !DILocation(line: 1607, column: 7, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6712, file: !148, line: 1607, column: 6)
!6741 = !DILocation(line: 1607, column: 10, scope: !6740)
!6742 = !DILocation(line: 1607, column: 14, scope: !6740)
!6743 = !DILocation(line: 1607, column: 6, scope: !6712)
!6744 = !DILocation(line: 1608, column: 3, scope: !6740)
!6745 = !DILocation(line: 1610, column: 38, scope: !6712)
!6746 = !DILocation(line: 1610, column: 42, scope: !6712)
!6747 = !DILocation(line: 1610, column: 9, scope: !6712)
!6748 = !DILocation(line: 1610, column: 2, scope: !6712)
!6749 = !DILocation(line: 1611, column: 1, scope: !6712)
!6750 = !DISubprogram(name: "dma_get_slave_caps", scope: !148, file: !148, line: 1495, type: !6751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6751 = !DISubroutineType(types: !6752)
!6752 = !{!109, !5527, !5734}
!6753 = distinct !DISubprogram(name: "dmaengine_slave_config", scope: !148, file: !148, line: 947, type: !5750, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6754)
!6754 = !{!6755, !6756}
!6755 = !DILocalVariable(name: "chan", arg: 1, scope: !6753, file: !148, line: 947, type: !5527)
!6756 = !DILocalVariable(name: "config", arg: 2, scope: !6753, file: !148, line: 948, type: !5752)
!6757 = !DILocation(line: 947, column: 59, scope: !6753)
!6758 = !DILocation(line: 948, column: 33, scope: !6753)
!6759 = !DILocation(line: 950, column: 6, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6753, file: !148, line: 950, column: 6)
!6761 = !DILocation(line: 950, column: 12, scope: !6760)
!6762 = !DILocation(line: 950, column: 20, scope: !6760)
!6763 = !DILocation(line: 950, column: 6, scope: !6753)
!6764 = !DILocation(line: 951, column: 10, scope: !6760)
!6765 = !DILocation(line: 951, column: 16, scope: !6760)
!6766 = !DILocation(line: 951, column: 24, scope: !6760)
!6767 = !DILocation(line: 951, column: 38, scope: !6760)
!6768 = !DILocation(line: 951, column: 44, scope: !6760)
!6769 = !DILocation(line: 951, column: 3, scope: !6760)
!6770 = !DILocation(line: 953, column: 2, scope: !6753)
!6771 = !DILocation(line: 954, column: 1, scope: !6753)
!6772 = distinct !DISubprogram(name: "dma_alloc_coherent", scope: !5179, file: !5179, line: 423, type: !6773, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6775)
!6773 = !DISubroutineType(types: !6774)
!6774 = !{!249, !3011, !624, !5658, !250}
!6775 = !{!6776, !6777, !6778, !6779}
!6776 = !DILocalVariable(name: "dev", arg: 1, scope: !6772, file: !5179, line: 423, type: !3011)
!6777 = !DILocalVariable(name: "size", arg: 2, scope: !6772, file: !5179, line: 423, type: !624)
!6778 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !6772, file: !5179, line: 424, type: !5658)
!6779 = !DILocalVariable(name: "gfp", arg: 4, scope: !6772, file: !5179, line: 424, type: !250)
!6780 = !DILocation(line: 423, column: 55, scope: !6772)
!6781 = !DILocation(line: 423, column: 67, scope: !6772)
!6782 = !DILocation(line: 424, column: 15, scope: !6772)
!6783 = !DILocation(line: 424, column: 33, scope: !6772)
!6784 = !DILocation(line: 426, column: 25, scope: !6772)
!6785 = !DILocation(line: 426, column: 30, scope: !6772)
!6786 = !DILocation(line: 426, column: 36, scope: !6772)
!6787 = !DILocation(line: 426, column: 48, scope: !6772)
!6788 = !DILocation(line: 427, column: 5, scope: !6772)
!6789 = !DILocation(line: 427, column: 9, scope: !6772)
!6790 = !DILocation(line: 427, column: 4, scope: !6772)
!6791 = !DILocation(line: 426, column: 9, scope: !6772)
!6792 = !DILocation(line: 426, column: 2, scope: !6772)
!6793 = !DILocation(line: 328, column: 62, scope: !5178)
!6794 = !DILocation(line: 328, column: 73, scope: !5178)
!6795 = !DILocation(line: 329, column: 10, scope: !5178)
!6796 = !DILocation(line: 329, column: 40, scope: !5178)
!6797 = !DILocation(line: 329, column: 59, scope: !5178)
!6798 = !DILocation(line: 332, column: 6, scope: !5189)
!6799 = !DILocation(line: 332, column: 6, scope: !5192)
!6800 = !DILocation(line: 332, column: 6, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !5192, file: !5179, line: 332, column: 6)
!6802 = !DILocation(line: 0, scope: !6801)
!6803 = !DILocation(line: 332, column: 6, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6801, file: !5179, line: 332, column: 6)
!6805 = !DILocation(line: 332, column: 6, scope: !5193)
!6806 = !DILocation(line: 332, column: 6, scope: !5196)
!6807 = !DILocation(line: 332, column: 6, scope: !5200)
!6808 = !DILocation(line: 332, column: 6, scope: !5199)
!6809 = !DILocation(line: 332, column: 6, scope: !6810)
!6810 = distinct !DILexicalBlock(scope: !5199, file: !5179, line: 332, column: 6)
!6811 = !DILocation(line: 332, column: 6, scope: !5198)
!6812 = !DILocation(line: 332, column: 6, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !5198, file: !5179, line: 332, column: 6)
!6814 = !DILocation(line: 332, column: 6, scope: !6815)
!6815 = distinct !DILexicalBlock(scope: !5198, file: !5179, line: 332, column: 6)
!6816 = !{i64 2154679995, i64 2154680024, i64 2154680070, i64 2154680128, i64 2154680182, i64 2154680236, i64 2154680291, i64 2154680322, i64 2154680630, i64 2154680636, i64 2154680683, i64 2154680706, i64 2154680732}
!6817 = !DILocation(line: 332, column: 6, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !5198, file: !5179, line: 332, column: 6)
!6819 = !DILocation(line: 332, column: 6, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !5199, file: !5179, line: 332, column: 6)
!6821 = !DILocation(line: 332, column: 6, scope: !5190)
!6822 = !DILocation(line: 332, column: 6, scope: !5178)
!6823 = !DILocation(line: 334, column: 3, scope: !5190)
!6824 = !DILocation(line: 335, column: 23, scope: !5178)
!6825 = !DILocation(line: 335, column: 28, scope: !5178)
!6826 = !DILocation(line: 335, column: 33, scope: !5178)
!6827 = !DILocation(line: 335, column: 2, scope: !5178)
!6828 = !DILocation(line: 336, column: 28, scope: !5178)
!6829 = !DILocation(line: 336, column: 33, scope: !5178)
!6830 = !DILocation(line: 336, column: 52, scope: !5178)
!6831 = !DILocation(line: 337, column: 4, scope: !5178)
!6832 = !DILocation(line: 337, column: 10, scope: !5178)
!6833 = !DILocation(line: 337, column: 15, scope: !5178)
!6834 = !DILocation(line: 336, column: 9, scope: !5178)
!6835 = !DILocation(line: 336, column: 2, scope: !5178)
!6836 = !DILocation(line: 338, column: 1, scope: !5178)
!6837 = distinct !DISubprogram(name: "dma_mapping_error", scope: !5179, file: !5179, line: 95, type: !6838, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6840)
!6838 = !DISubroutineType(types: !6839)
!6839 = !{!109, !3011, !259}
!6840 = !{!6841, !6842}
!6841 = !DILocalVariable(name: "dev", arg: 1, scope: !6837, file: !5179, line: 95, type: !3011)
!6842 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !6837, file: !5179, line: 95, type: !259)
!6843 = !DILocation(line: 95, column: 52, scope: !6837)
!6844 = !DILocation(line: 95, column: 68, scope: !6837)
!6845 = !DILocation(line: 97, column: 26, scope: !6837)
!6846 = !DILocation(line: 97, column: 31, scope: !6837)
!6847 = !DILocation(line: 97, column: 2, scope: !6837)
!6848 = !DILocation(line: 99, column: 6, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6837, file: !5179, line: 99, column: 6)
!6850 = !DILocation(line: 99, column: 6, scope: !6837)
!6851 = !DILocation(line: 100, column: 3, scope: !6849)
!6852 = !DILocation(line: 101, column: 2, scope: !6837)
!6853 = !DILocation(line: 102, column: 1, scope: !6837)
!6854 = distinct !DISubprogram(name: "dma_free_coherent", scope: !5179, file: !5179, line: 430, type: !6855, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6857)
!6855 = !DISubroutineType(types: !6856)
!6856 = !{null, !3011, !624, !249, !259}
!6857 = !{!6858, !6859, !6860, !6861}
!6858 = !DILocalVariable(name: "dev", arg: 1, scope: !6854, file: !5179, line: 430, type: !3011)
!6859 = !DILocalVariable(name: "size", arg: 2, scope: !6854, file: !5179, line: 430, type: !624)
!6860 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !6854, file: !5179, line: 431, type: !249)
!6861 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !6854, file: !5179, line: 431, type: !259)
!6862 = !DILocation(line: 430, column: 53, scope: !6854)
!6863 = !DILocation(line: 430, column: 65, scope: !6854)
!6864 = !DILocation(line: 431, column: 9, scope: !6854)
!6865 = !DILocation(line: 431, column: 30, scope: !6854)
!6866 = !DILocation(line: 433, column: 24, scope: !6854)
!6867 = !DILocation(line: 433, column: 29, scope: !6854)
!6868 = !DILocation(line: 433, column: 35, scope: !6854)
!6869 = !DILocation(line: 433, column: 45, scope: !6854)
!6870 = !DILocation(line: 433, column: 9, scope: !6854)
!6871 = !DILocation(line: 433, column: 2, scope: !6854)
!6872 = !DISubprogram(name: "dma_release_channel", scope: !148, file: !148, line: 1494, type: !5587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6873 = distinct !DISubprogram(name: "serial8250_release_dma", scope: !3, file: !3, line: 293, type: !5519, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6874)
!6874 = !{!6875, !6876}
!6875 = !DILocalVariable(name: "p", arg: 1, scope: !6873, file: !3, line: 293, type: !5227)
!6876 = !DILocalVariable(name: "dma", scope: !6873, file: !3, line: 295, type: !5510)
!6877 = !DILocation(line: 293, column: 52, scope: !6873)
!6878 = !DILocation(line: 295, column: 2, scope: !6873)
!6879 = !DILocation(line: 295, column: 24, scope: !6873)
!6880 = !DILocation(line: 295, column: 30, scope: !6873)
!6881 = !DILocation(line: 295, column: 33, scope: !6873)
!6882 = !DILocation(line: 297, column: 7, scope: !6883)
!6883 = distinct !DILexicalBlock(scope: !6873, file: !3, line: 297, column: 6)
!6884 = !DILocation(line: 297, column: 6, scope: !6873)
!6885 = !DILocation(line: 298, column: 3, scope: !6883)
!6886 = !DILocation(line: 301, column: 27, scope: !6873)
!6887 = !DILocation(line: 301, column: 32, scope: !6873)
!6888 = !DILocation(line: 301, column: 2, scope: !6873)
!6889 = !DILocation(line: 302, column: 20, scope: !6873)
!6890 = !DILocation(line: 302, column: 25, scope: !6873)
!6891 = !DILocation(line: 302, column: 33, scope: !6873)
!6892 = !DILocation(line: 302, column: 41, scope: !6873)
!6893 = !DILocation(line: 302, column: 46, scope: !6873)
!6894 = !DILocation(line: 302, column: 51, scope: !6873)
!6895 = !DILocation(line: 302, column: 60, scope: !6873)
!6896 = !DILocation(line: 302, column: 65, scope: !6873)
!6897 = !DILocation(line: 303, column: 6, scope: !6873)
!6898 = !DILocation(line: 303, column: 11, scope: !6873)
!6899 = !DILocation(line: 302, column: 2, scope: !6873)
!6900 = !DILocation(line: 304, column: 22, scope: !6873)
!6901 = !DILocation(line: 304, column: 27, scope: !6873)
!6902 = !DILocation(line: 304, column: 2, scope: !6873)
!6903 = !DILocation(line: 305, column: 2, scope: !6873)
!6904 = !DILocation(line: 305, column: 7, scope: !6873)
!6905 = !DILocation(line: 305, column: 14, scope: !6873)
!6906 = !DILocation(line: 308, column: 27, scope: !6873)
!6907 = !DILocation(line: 308, column: 32, scope: !6873)
!6908 = !DILocation(line: 308, column: 2, scope: !6873)
!6909 = !DILocation(line: 309, column: 2, scope: !6873)
!6910 = !DILocation(line: 311, column: 22, scope: !6873)
!6911 = !DILocation(line: 311, column: 27, scope: !6873)
!6912 = !DILocation(line: 311, column: 2, scope: !6873)
!6913 = !DILocation(line: 312, column: 2, scope: !6873)
!6914 = !DILocation(line: 312, column: 7, scope: !6873)
!6915 = !DILocation(line: 312, column: 14, scope: !6873)
!6916 = !DILocation(line: 313, column: 2, scope: !6873)
!6917 = !DILocation(line: 313, column: 7, scope: !6873)
!6918 = !DILocation(line: 313, column: 18, scope: !6873)
!6919 = !DILocation(line: 316, column: 1, scope: !6873)
!6920 = distinct !DISubprogram(name: "dmaengine_terminate_sync", scope: !148, file: !148, line: 1178, type: !5582, scopeLine: 1179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6921)
!6921 = !{!6922, !6923}
!6922 = !DILocalVariable(name: "chan", arg: 1, scope: !6920, file: !148, line: 1178, type: !5527)
!6923 = !DILocalVariable(name: "ret", scope: !6920, file: !148, line: 1180, type: !109)
!6924 = !DILocation(line: 1178, column: 61, scope: !6920)
!6925 = !DILocation(line: 1180, column: 2, scope: !6920)
!6926 = !DILocation(line: 1180, column: 6, scope: !6920)
!6927 = !DILocation(line: 1182, column: 34, scope: !6920)
!6928 = !DILocation(line: 1182, column: 8, scope: !6920)
!6929 = !DILocation(line: 1182, column: 6, scope: !6920)
!6930 = !DILocation(line: 1183, column: 6, scope: !6931)
!6931 = distinct !DILexicalBlock(scope: !6920, file: !148, line: 1183, column: 6)
!6932 = !DILocation(line: 1183, column: 6, scope: !6920)
!6933 = !DILocation(line: 1184, column: 10, scope: !6931)
!6934 = !DILocation(line: 1184, column: 3, scope: !6931)
!6935 = !DILocation(line: 1186, column: 24, scope: !6920)
!6936 = !DILocation(line: 1186, column: 2, scope: !6920)
!6937 = !DILocation(line: 1188, column: 2, scope: !6920)
!6938 = !DILocation(line: 1189, column: 1, scope: !6920)
!6939 = distinct !DISubprogram(name: "dma_unmap_single_attrs", scope: !5179, file: !5179, line: 340, type: !6940, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6942)
!6940 = !DISubroutineType(types: !6941)
!6941 = !{null, !3011, !259, !624, !217, !258}
!6942 = !{!6943, !6944, !6945, !6946, !6947}
!6943 = !DILocalVariable(name: "dev", arg: 1, scope: !6939, file: !5179, line: 340, type: !3011)
!6944 = !DILocalVariable(name: "addr", arg: 2, scope: !6939, file: !5179, line: 340, type: !259)
!6945 = !DILocalVariable(name: "size", arg: 3, scope: !6939, file: !5179, line: 341, type: !624)
!6946 = !DILocalVariable(name: "dir", arg: 4, scope: !6939, file: !5179, line: 341, type: !217)
!6947 = !DILocalVariable(name: "attrs", arg: 5, scope: !6939, file: !5179, line: 341, type: !258)
!6948 = !DILocation(line: 340, column: 58, scope: !6939)
!6949 = !DILocation(line: 340, column: 74, scope: !6939)
!6950 = !DILocation(line: 341, column: 10, scope: !6939)
!6951 = !DILocation(line: 341, column: 40, scope: !6939)
!6952 = !DILocation(line: 341, column: 59, scope: !6939)
!6953 = !DILocation(line: 343, column: 30, scope: !6939)
!6954 = !DILocation(line: 343, column: 35, scope: !6939)
!6955 = !DILocation(line: 343, column: 41, scope: !6939)
!6956 = !DILocation(line: 343, column: 47, scope: !6939)
!6957 = !DILocation(line: 343, column: 52, scope: !6939)
!6958 = !DILocation(line: 343, column: 9, scope: !6939)
!6959 = !DILocation(line: 343, column: 2, scope: !6939)
!6960 = !DISubprogram(name: "sg_init_table", scope: !5682, file: !5682, line: 423, type: !6961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6961 = !DISubroutineType(types: !6962)
!6962 = !{null, !5680, !7}
!6963 = !DISubprogram(name: "dma_sync_single_for_cpu", scope: !5179, file: !5179, line: 120, type: !6204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6964 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6965, file: !6965, line: 32, type: !6966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6965 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6966 = !DISubroutineType(types: !6967)
!6967 = !{!258, !6968}
!6968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!6969 = distinct !DISubprogram(name: "spinlock_check", scope: !6970, file: !6970, line: 324, type: !6971, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6973)
!6970 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6971 = !DISubroutineType(types: !6972)
!6972 = !{!6968, !1424}
!6973 = !{!6974}
!6974 = !DILocalVariable(name: "lock", arg: 1, scope: !6969, file: !6970, line: 324, type: !1424)
!6975 = !DILocation(line: 324, column: 67, scope: !6969)
!6976 = !DILocation(line: 326, column: 10, scope: !6969)
!6977 = !DILocation(line: 326, column: 16, scope: !6969)
!6978 = !DILocation(line: 326, column: 2, scope: !6969)
!6979 = distinct !DISubprogram(name: "uart_xmit_advance", scope: !142, file: !142, line: 722, type: !5260, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6980)
!6980 = !{!6981, !6982, !6983}
!6981 = !DILocalVariable(name: "up", arg: 1, scope: !6979, file: !142, line: 722, type: !5241)
!6982 = !DILocalVariable(name: "chars", arg: 2, scope: !6979, file: !142, line: 722, type: !7)
!6983 = !DILocalVariable(name: "xmit", scope: !6979, file: !142, line: 724, type: !5877)
!6984 = !DILocation(line: 722, column: 56, scope: !6979)
!6985 = !DILocation(line: 722, column: 73, scope: !6979)
!6986 = !DILocation(line: 724, column: 2, scope: !6979)
!6987 = !DILocation(line: 724, column: 19, scope: !6979)
!6988 = !DILocation(line: 724, column: 27, scope: !6979)
!6989 = !DILocation(line: 724, column: 31, scope: !6979)
!6990 = !DILocation(line: 724, column: 38, scope: !6979)
!6991 = !DILocation(line: 726, column: 16, scope: !6979)
!6992 = !DILocation(line: 726, column: 22, scope: !6979)
!6993 = !DILocation(line: 726, column: 29, scope: !6979)
!6994 = !DILocation(line: 726, column: 27, scope: !6979)
!6995 = !DILocation(line: 726, column: 15, scope: !6979)
!6996 = !DILocation(line: 726, column: 36, scope: !6979)
!6997 = !DILocation(line: 726, column: 2, scope: !6979)
!6998 = !DILocation(line: 726, column: 8, scope: !6979)
!6999 = !DILocation(line: 726, column: 13, scope: !6979)
!7000 = !DILocation(line: 727, column: 19, scope: !6979)
!7001 = !DILocation(line: 727, column: 2, scope: !6979)
!7002 = !DILocation(line: 727, column: 6, scope: !6979)
!7003 = !DILocation(line: 727, column: 13, scope: !6979)
!7004 = !DILocation(line: 727, column: 16, scope: !6979)
!7005 = !DILocation(line: 728, column: 1, scope: !6979)
!7006 = !DISubprogram(name: "uart_write_wakeup", scope: !142, file: !142, line: 750, type: !5276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7007 = distinct !DISubprogram(name: "serial8250_set_THRI", scope: !5512, file: !5512, line: 179, type: !6216, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7008)
!7008 = !{!7009}
!7009 = !DILocalVariable(name: "up", arg: 1, scope: !7007, file: !5512, line: 179, type: !5227)
!7010 = !DILocation(line: 179, column: 63, scope: !7007)
!7011 = !DILocation(line: 182, column: 2, scope: !7007)
!7012 = !DILocation(line: 182, column: 2, scope: !7013)
!7013 = distinct !DILexicalBlock(scope: !7007, file: !5512, line: 182, column: 2)
!7014 = !DILocation(line: 184, column: 6, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !7007, file: !5512, line: 184, column: 6)
!7016 = !DILocation(line: 184, column: 10, scope: !7015)
!7017 = !DILocation(line: 184, column: 14, scope: !7015)
!7018 = !DILocation(line: 184, column: 6, scope: !7007)
!7019 = !DILocation(line: 185, column: 3, scope: !7015)
!7020 = !DILocation(line: 186, column: 2, scope: !7007)
!7021 = !DILocation(line: 186, column: 6, scope: !7007)
!7022 = !DILocation(line: 186, column: 10, scope: !7007)
!7023 = !DILocation(line: 187, column: 13, scope: !7007)
!7024 = !DILocation(line: 187, column: 27, scope: !7007)
!7025 = !DILocation(line: 187, column: 31, scope: !7007)
!7026 = !DILocation(line: 187, column: 2, scope: !7007)
!7027 = !DILocation(line: 188, column: 2, scope: !7007)
!7028 = !DILocation(line: 189, column: 1, scope: !7007)
!7029 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6970, file: !6970, line: 404, type: !7030, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7032)
!7030 = !DISubroutineType(types: !7031)
!7031 = !{null, !1424, !258}
!7032 = !{!7033, !7034, !7035, !7038}
!7033 = !DILocalVariable(name: "lock", arg: 1, scope: !7029, file: !6970, line: 404, type: !1424)
!7034 = !DILocalVariable(name: "flags", arg: 2, scope: !7029, file: !6970, line: 404, type: !258)
!7035 = !DILocalVariable(name: "__dummy", scope: !7036, file: !6970, line: 406, type: !258)
!7036 = distinct !DILexicalBlock(scope: !7037, file: !6970, line: 406, column: 2)
!7037 = distinct !DILexicalBlock(scope: !7029, file: !6970, line: 406, column: 2)
!7038 = !DILocalVariable(name: "__dummy2", scope: !7036, file: !6970, line: 406, type: !258)
!7039 = !DILocation(line: 404, column: 64, scope: !7029)
!7040 = !DILocation(line: 404, column: 84, scope: !7029)
!7041 = !DILocation(line: 406, column: 2, scope: !7029)
!7042 = !DILocation(line: 406, column: 2, scope: !7036)
!7043 = !DILocation(line: 406, column: 2, scope: !7037)
!7044 = !DILocation(line: 407, column: 1, scope: !7029)
!7045 = distinct !DISubprogram(name: "serial_out", scope: !5512, file: !5512, line: 120, type: !7046, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7048)
!7046 = !DISubroutineType(types: !7047)
!7047 = !{null, !5227, !109, !109}
!7048 = !{!7049, !7050, !7051}
!7049 = !DILocalVariable(name: "up", arg: 1, scope: !7045, file: !5512, line: 120, type: !5227)
!7050 = !DILocalVariable(name: "offset", arg: 2, scope: !7045, file: !5512, line: 120, type: !109)
!7051 = !DILocalVariable(name: "value", arg: 3, scope: !7045, file: !5512, line: 120, type: !109)
!7052 = !DILocation(line: 120, column: 54, scope: !7045)
!7053 = !DILocation(line: 120, column: 62, scope: !7045)
!7054 = !DILocation(line: 120, column: 74, scope: !7045)
!7055 = !DILocation(line: 122, column: 2, scope: !7045)
!7056 = !DILocation(line: 122, column: 6, scope: !7045)
!7057 = !DILocation(line: 122, column: 11, scope: !7045)
!7058 = !DILocation(line: 122, column: 23, scope: !7045)
!7059 = !DILocation(line: 122, column: 27, scope: !7045)
!7060 = !DILocation(line: 122, column: 33, scope: !7045)
!7061 = !DILocation(line: 122, column: 41, scope: !7045)
!7062 = !DILocation(line: 123, column: 1, scope: !7045)
!7063 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6965, file: !6965, line: 43, type: !7064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7064 = !DISubroutineType(types: !7065)
!7065 = !{null, !6968, !258}
!7066 = distinct !DISubprogram(name: "serial_lsr_in", scope: !5512, file: !5512, line: 135, type: !7067, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7069)
!7067 = !DISubroutineType(types: !7068)
!7068 = !{!428, !5227}
!7069 = !{!7070, !7071}
!7070 = !DILocalVariable(name: "up", arg: 1, scope: !7066, file: !5512, line: 135, type: !5227)
!7071 = !DILocalVariable(name: "lsr", scope: !7066, file: !5512, line: 137, type: !428)
!7072 = !DILocation(line: 135, column: 56, scope: !7066)
!7073 = !DILocation(line: 137, column: 2, scope: !7066)
!7074 = !DILocation(line: 137, column: 6, scope: !7066)
!7075 = !DILocation(line: 137, column: 12, scope: !7066)
!7076 = !DILocation(line: 137, column: 16, scope: !7066)
!7077 = !DILocation(line: 139, column: 19, scope: !7066)
!7078 = !DILocation(line: 139, column: 9, scope: !7066)
!7079 = !DILocation(line: 139, column: 6, scope: !7066)
!7080 = !DILocation(line: 140, column: 24, scope: !7066)
!7081 = !DILocation(line: 140, column: 30, scope: !7066)
!7082 = !DILocation(line: 140, column: 34, scope: !7066)
!7083 = !DILocation(line: 140, column: 28, scope: !7066)
!7084 = !DILocation(line: 140, column: 2, scope: !7066)
!7085 = !DILocation(line: 140, column: 6, scope: !7066)
!7086 = !DILocation(line: 140, column: 22, scope: !7066)
!7087 = !DILocation(line: 142, column: 9, scope: !7066)
!7088 = !DILocation(line: 143, column: 1, scope: !7066)
!7089 = !DILocation(line: 142, column: 2, scope: !7066)
!7090 = distinct !DISubprogram(name: "serial_in", scope: !5512, file: !5512, line: 115, type: !7091, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7093)
!7091 = !DISubroutineType(types: !7092)
!7092 = !{!109, !5227, !109}
!7093 = !{!7094, !7095}
!7094 = !DILocalVariable(name: "up", arg: 1, scope: !7090, file: !5512, line: 115, type: !5227)
!7095 = !DILocalVariable(name: "offset", arg: 2, scope: !7090, file: !5512, line: 115, type: !109)
!7096 = !DILocation(line: 115, column: 52, scope: !7090)
!7097 = !DILocation(line: 115, column: 60, scope: !7090)
!7098 = !DILocation(line: 117, column: 9, scope: !7090)
!7099 = !DILocation(line: 117, column: 13, scope: !7090)
!7100 = !DILocation(line: 117, column: 18, scope: !7090)
!7101 = !DILocation(line: 117, column: 29, scope: !7090)
!7102 = !DILocation(line: 117, column: 33, scope: !7090)
!7103 = !DILocation(line: 117, column: 39, scope: !7090)
!7104 = !DILocation(line: 117, column: 2, scope: !7090)
!7105 = distinct !DISubprogram(name: "dmaengine_tx_status", scope: !148, file: !148, line: 1207, type: !5773, scopeLine: 1209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7106)
!7106 = !{!7107, !7108, !7109}
!7107 = !DILocalVariable(name: "chan", arg: 1, scope: !7105, file: !148, line: 1207, type: !5527)
!7108 = !DILocalVariable(name: "cookie", arg: 2, scope: !7105, file: !148, line: 1208, type: !5597)
!7109 = !DILocalVariable(name: "state", arg: 3, scope: !7105, file: !148, line: 1208, type: !5775)
!7110 = !DILocation(line: 1207, column: 68, scope: !7105)
!7111 = !DILocation(line: 1208, column: 15, scope: !7105)
!7112 = !DILocation(line: 1208, column: 44, scope: !7105)
!7113 = !DILocation(line: 1210, column: 9, scope: !7105)
!7114 = !DILocation(line: 1210, column: 15, scope: !7105)
!7115 = !DILocation(line: 1210, column: 23, scope: !7105)
!7116 = !DILocation(line: 1210, column: 40, scope: !7105)
!7117 = !DILocation(line: 1210, column: 46, scope: !7105)
!7118 = !DILocation(line: 1210, column: 54, scope: !7105)
!7119 = !DILocation(line: 1210, column: 2, scope: !7105)
!7120 = distinct !DISubprogram(name: "tty_insert_flip_string", scope: !7121, file: !7121, line: 80, type: !7122, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7124)
!7121 = !DIFile(filename: "./include/linux/tty_flip.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04380b3f455bbeb1733f22cd11e51be3")
!7122 = !DISubroutineType(types: !7123)
!7123 = !{!624, !3516, !3585, !624}
!7124 = !{!7125, !7126, !7127}
!7125 = !DILocalVariable(name: "port", arg: 1, scope: !7120, file: !7121, line: 80, type: !3516)
!7126 = !DILocalVariable(name: "chars", arg: 2, scope: !7120, file: !7121, line: 81, type: !3585)
!7127 = !DILocalVariable(name: "size", arg: 3, scope: !7120, file: !7121, line: 81, type: !624)
!7128 = !DILocation(line: 80, column: 62, scope: !7120)
!7129 = !DILocation(line: 81, column: 20, scope: !7120)
!7130 = !DILocation(line: 81, column: 34, scope: !7120)
!7131 = !DILocation(line: 83, column: 43, scope: !7120)
!7132 = !DILocation(line: 83, column: 49, scope: !7120)
!7133 = !DILocation(line: 83, column: 68, scope: !7120)
!7134 = !DILocation(line: 83, column: 9, scope: !7120)
!7135 = !DILocation(line: 83, column: 2, scope: !7120)
!7136 = !DISubprogram(name: "tty_flip_buffer_push", scope: !7121, file: !7121, line: 17, type: !3569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7137 = distinct !DISubprogram(name: "tty_insert_flip_string_fixed_flag", scope: !7121, file: !7121, line: 31, type: !7138, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7140)
!7138 = !DISubroutineType(types: !7139)
!7139 = !{!624, !3516, !3585, !421, !624}
!7140 = !{!7141, !7142, !7143, !7144}
!7141 = !DILocalVariable(name: "port", arg: 1, scope: !7137, file: !7121, line: 31, type: !3516)
!7142 = !DILocalVariable(name: "chars", arg: 2, scope: !7137, file: !7121, line: 32, type: !3585)
!7143 = !DILocalVariable(name: "flag", arg: 3, scope: !7137, file: !7121, line: 32, type: !421)
!7144 = !DILocalVariable(name: "size", arg: 4, scope: !7137, file: !7121, line: 33, type: !624)
!7145 = !DILocation(line: 31, column: 73, scope: !7137)
!7146 = !DILocation(line: 32, column: 24, scope: !7137)
!7147 = !DILocation(line: 32, column: 34, scope: !7137)
!7148 = !DILocation(line: 33, column: 21, scope: !7137)
!7149 = !DILocation(line: 35, column: 40, scope: !7137)
!7150 = !DILocation(line: 35, column: 46, scope: !7137)
!7151 = !DILocation(line: 35, column: 67, scope: !7137)
!7152 = !DILocation(line: 35, column: 9, scope: !7137)
!7153 = !DILocation(line: 35, column: 2, scope: !7137)
!7154 = !DISubprogram(name: "__tty_insert_flip_string_flags", scope: !7121, file: !7121, line: 13, type: !7155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7155 = !DISubroutineType(types: !7156)
!7156 = !{!624, !3516, !3585, !3585, !887, !624}
!7157 = distinct !DISubprogram(name: "bitmap_zero", scope: !7158, file: !7158, line: 246, type: !7159, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7161)
!7158 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!7159 = !DISubroutineType(types: !7160)
!7160 = !{null, !2096, !7}
!7161 = !{!7162, !7163, !7164}
!7162 = !DILocalVariable(name: "dst", arg: 1, scope: !7157, file: !7158, line: 246, type: !2096)
!7163 = !DILocalVariable(name: "nbits", arg: 2, scope: !7157, file: !7158, line: 246, type: !7)
!7164 = !DILocalVariable(name: "len", scope: !7157, file: !7158, line: 248, type: !7)
!7165 = !DILocation(line: 246, column: 47, scope: !7157)
!7166 = !DILocation(line: 246, column: 65, scope: !7157)
!7167 = !DILocation(line: 248, column: 2, scope: !7157)
!7168 = !DILocation(line: 248, column: 15, scope: !7157)
!7169 = !DILocation(line: 248, column: 21, scope: !7157)
!7170 = !DILocation(line: 250, column: 6, scope: !7171)
!7171 = distinct !DILexicalBlock(scope: !7157, file: !7158, line: 250, column: 6)
!7172 = !DILocation(line: 250, column: 6, scope: !7157)
!7173 = !DILocation(line: 251, column: 4, scope: !7171)
!7174 = !DILocation(line: 251, column: 8, scope: !7171)
!7175 = !DILocation(line: 251, column: 3, scope: !7171)
!7176 = !DILocation(line: 253, column: 10, scope: !7171)
!7177 = !DILocation(line: 253, column: 18, scope: !7171)
!7178 = !DILocation(line: 253, column: 3, scope: !7171)
!7179 = !DILocation(line: 254, column: 1, scope: !7157)
!7180 = distinct !DISubprogram(name: "set_bit", scope: !7181, file: !7181, line: 26, type: !7182, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7186)
!7181 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!7182 = !DISubroutineType(types: !7183)
!7183 = !{null, !257, !7184}
!7184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7185, size: 64)
!7185 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !258)
!7186 = !{!7187, !7188}
!7187 = !DILocalVariable(name: "nr", arg: 1, scope: !7180, file: !7181, line: 26, type: !257)
!7188 = !DILocalVariable(name: "addr", arg: 2, scope: !7180, file: !7181, line: 26, type: !7184)
!7189 = !DILocation(line: 26, column: 42, scope: !7180)
!7190 = !DILocation(line: 26, column: 70, scope: !7180)
!7191 = !DILocation(line: 28, column: 26, scope: !7180)
!7192 = !DILocation(line: 28, column: 33, scope: !7180)
!7193 = !DILocation(line: 28, column: 31, scope: !7180)
!7194 = !DILocation(line: 28, column: 2, scope: !7180)
!7195 = !DILocation(line: 29, column: 15, scope: !7180)
!7196 = !DILocation(line: 29, column: 19, scope: !7180)
!7197 = !DILocation(line: 29, column: 2, scope: !7180)
!7198 = !DILocation(line: 30, column: 1, scope: !7180)
!7199 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !7200, file: !7200, line: 80, type: !7201, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7206)
!7200 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7201 = !DISubroutineType(types: !7202)
!7202 = !{null, !7203, !624}
!7203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7204, size: 64)
!7204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7205)
!7205 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7206 = !{!7207, !7208}
!7207 = !DILocalVariable(name: "v", arg: 1, scope: !7199, file: !7200, line: 80, type: !7203)
!7208 = !DILocalVariable(name: "size", arg: 2, scope: !7199, file: !7200, line: 80, type: !624)
!7209 = !DILocation(line: 80, column: 74, scope: !7199)
!7210 = !DILocation(line: 80, column: 84, scope: !7199)
!7211 = !DILocation(line: 82, column: 20, scope: !7199)
!7212 = !DILocation(line: 82, column: 23, scope: !7199)
!7213 = !DILocation(line: 82, column: 2, scope: !7199)
!7214 = !DILocation(line: 83, column: 2, scope: !7199)
!7215 = !DILocation(line: 84, column: 1, scope: !7199)
!7216 = distinct !DISubprogram(name: "arch_set_bit", scope: !7217, file: !7217, line: 52, type: !7182, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7218)
!7217 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7218 = !{!7219, !7220}
!7219 = !DILocalVariable(name: "nr", arg: 1, scope: !7216, file: !7217, line: 52, type: !257)
!7220 = !DILocalVariable(name: "addr", arg: 2, scope: !7216, file: !7217, line: 52, type: !7184)
!7221 = !DILocation(line: 52, column: 19, scope: !7216)
!7222 = !DILocation(line: 52, column: 47, scope: !7216)
!7223 = !DILocation(line: 54, column: 27, scope: !7224)
!7224 = distinct !DILexicalBlock(scope: !7216, file: !7217, line: 54, column: 6)
!7225 = !DILocation(line: 54, column: 6, scope: !7224)
!7226 = !DILocation(line: 54, column: 6, scope: !7216)
!7227 = !DILocation(line: 56, column: 6, scope: !7228)
!7228 = distinct !DILexicalBlock(scope: !7224, file: !7217, line: 54, column: 32)
!7229 = !DILocation(line: 57, column: 12, scope: !7228)
!7230 = !DILocation(line: 55, column: 3, scope: !7228)
!7231 = !{i64 2148148567, i64 2148148606, i64 2148148627, i64 2148148664, i64 2148148687, i64 2148148557}
!7232 = !DILocation(line: 59, column: 2, scope: !7228)
!7233 = !DILocation(line: 61, column: 8, scope: !7234)
!7234 = distinct !DILexicalBlock(scope: !7224, file: !7217, line: 59, column: 9)
!7235 = !DILocation(line: 61, column: 32, scope: !7234)
!7236 = !DILocation(line: 60, column: 3, scope: !7234)
!7237 = !{i64 2148148852, i64 2148148891, i64 2148148912, i64 2148148949, i64 2148148972, i64 2148148842}
!7238 = !DILocation(line: 63, column: 1, scope: !7216)
!7239 = distinct !DISubprogram(name: "kasan_check_write", scope: !7240, file: !7240, line: 44, type: !7241, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7243)
!7240 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7241 = !DISubroutineType(types: !7242)
!7242 = !{!887, !7203, !7}
!7243 = !{!7244, !7245}
!7244 = !DILocalVariable(name: "p", arg: 1, scope: !7239, file: !7240, line: 44, type: !7203)
!7245 = !DILocalVariable(name: "size", arg: 2, scope: !7239, file: !7240, line: 44, type: !7)
!7246 = !DILocation(line: 44, column: 59, scope: !7239)
!7247 = !DILocation(line: 44, column: 75, scope: !7239)
!7248 = !DILocation(line: 46, column: 2, scope: !7239)
!7249 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7250, file: !7250, line: 229, type: !7251, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7253)
!7250 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7251 = !DISubroutineType(types: !7252)
!7252 = !{null, !7203, !624, !109}
!7253 = !{!7254, !7255, !7256}
!7254 = !DILocalVariable(name: "ptr", arg: 1, scope: !7249, file: !7250, line: 229, type: !7203)
!7255 = !DILocalVariable(name: "size", arg: 2, scope: !7249, file: !7250, line: 229, type: !624)
!7256 = !DILocalVariable(name: "type", arg: 3, scope: !7249, file: !7250, line: 230, type: !109)
!7257 = !DILocation(line: 229, column: 60, scope: !7249)
!7258 = !DILocation(line: 229, column: 72, scope: !7249)
!7259 = !DILocation(line: 230, column: 15, scope: !7249)
!7260 = !DILocation(line: 230, column: 23, scope: !7249)
!7261 = distinct !DISubprogram(name: "dma_request_slave_channel", scope: !148, file: !148, line: 1589, type: !7262, scopeLine: 1590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7264)
!7262 = !DISubroutineType(types: !7263)
!7263 = !{!5527, !3011, !453}
!7264 = !{!7265, !7266, !7267}
!7265 = !DILocalVariable(name: "dev", arg: 1, scope: !7261, file: !148, line: 1589, type: !3011)
!7266 = !DILocalVariable(name: "name", arg: 2, scope: !7261, file: !148, line: 1589, type: !453)
!7267 = !DILocalVariable(name: "ch", scope: !7261, file: !148, line: 1591, type: !5527)
!7268 = !DILocation(line: 1589, column: 42, scope: !7261)
!7269 = !DILocation(line: 1589, column: 59, scope: !7261)
!7270 = !DILocation(line: 1591, column: 2, scope: !7261)
!7271 = !DILocation(line: 1591, column: 19, scope: !7261)
!7272 = !DILocation(line: 1591, column: 41, scope: !7261)
!7273 = !DILocation(line: 1591, column: 46, scope: !7261)
!7274 = !DILocation(line: 1591, column: 24, scope: !7261)
!7275 = !DILocation(line: 1593, column: 16, scope: !7261)
!7276 = !DILocation(line: 1593, column: 9, scope: !7261)
!7277 = !DILocation(line: 1593, column: 29, scope: !7261)
!7278 = !DILocation(line: 1594, column: 1, scope: !7261)
!7279 = !DILocation(line: 1593, column: 2, scope: !7261)
!7280 = !DISubprogram(name: "__dma_request_channel", scope: !148, file: !148, line: 1487, type: !7281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7281 = !DISubroutineType(types: !7282)
!7282 = !{!5527, !7283, !5523, !249, !3296}
!7283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6715, size: 64)
!7284 = !DISubprogram(name: "dma_request_chan", scope: !148, file: !148, line: 1491, type: !7262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7285 = distinct !DISubprogram(name: "IS_ERR", scope: !7286, file: !7286, line: 59, type: !7287, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7289)
!7286 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!7287 = !DISubroutineType(types: !7288)
!7288 = !{!887, !1274}
!7289 = !{!7290}
!7290 = !DILocalVariable(name: "ptr", arg: 1, scope: !7285, file: !7286, line: 59, type: !1274)
!7291 = !DILocation(line: 59, column: 60, scope: !7285)
!7292 = !DILocation(line: 61, column: 9, scope: !7285)
!7293 = !DILocation(line: 61, column: 2, scope: !7285)
!7294 = !DISubprogram(name: "dma_alloc_attrs", scope: !5179, file: !5179, line: 128, type: !7295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7295 = !DISubroutineType(types: !7296)
!7296 = !{!249, !3011, !624, !5658, !250, !258}
!7297 = !DISubprogram(name: "is_vmalloc_addr", scope: !1359, file: !1359, line: 1148, type: !7287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7298 = !DISubprogram(name: "__warn_printk", scope: !1923, file: !1923, line: 93, type: !7299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7299 = !DISubroutineType(types: !7300)
!7300 = !{null, !453, null}
!7301 = !DISubprogram(name: "dev_driver_string", scope: !94, file: !94, line: 1247, type: !7302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7302 = !DISubroutineType(types: !7303)
!7303 = !{!453, !3031}
!7304 = distinct !DISubprogram(name: "dev_name", scope: !94, file: !94, line: 858, type: !7302, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7305)
!7305 = !{!7306}
!7306 = !DILocalVariable(name: "dev", arg: 1, scope: !7304, file: !94, line: 858, type: !3031)
!7307 = !DILocation(line: 858, column: 57, scope: !7304)
!7308 = !DILocation(line: 861, column: 6, scope: !7309)
!7309 = distinct !DILexicalBlock(scope: !7304, file: !94, line: 861, column: 6)
!7310 = !DILocation(line: 861, column: 11, scope: !7309)
!7311 = !DILocation(line: 861, column: 6, scope: !7304)
!7312 = !DILocation(line: 862, column: 10, scope: !7309)
!7313 = !DILocation(line: 862, column: 15, scope: !7309)
!7314 = !DILocation(line: 862, column: 3, scope: !7309)
!7315 = !DILocation(line: 864, column: 23, scope: !7304)
!7316 = !DILocation(line: 864, column: 28, scope: !7304)
!7317 = !DILocation(line: 864, column: 9, scope: !7304)
!7318 = !DILocation(line: 864, column: 2, scope: !7304)
!7319 = !DILocation(line: 865, column: 1, scope: !7304)
!7320 = distinct !DISubprogram(name: "debug_dma_map_single", scope: !5179, file: !5179, line: 88, type: !7321, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7323)
!7321 = !DISubroutineType(types: !7322)
!7322 = !{null, !3011, !1274, !258}
!7323 = !{!7324, !7325, !7326}
!7324 = !DILocalVariable(name: "dev", arg: 1, scope: !7320, file: !5179, line: 88, type: !3011)
!7325 = !DILocalVariable(name: "addr", arg: 2, scope: !7320, file: !5179, line: 88, type: !1274)
!7326 = !DILocalVariable(name: "len", arg: 3, scope: !7320, file: !5179, line: 89, type: !258)
!7327 = !DILocation(line: 88, column: 56, scope: !7320)
!7328 = !DILocation(line: 88, column: 73, scope: !7320)
!7329 = !DILocation(line: 89, column: 17, scope: !7320)
!7330 = !DILocation(line: 91, column: 1, scope: !7320)
!7331 = !DISubprogram(name: "dma_map_page_attrs", scope: !5179, file: !5179, line: 104, type: !7332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7332 = !DISubroutineType(types: !7333)
!7333 = !{!259, !3011, !265, !624, !624, !217, !258}
!7334 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !7335, file: !7335, line: 22, type: !7336, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7338)
!7335 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!7336 = !DISubroutineType(types: !7337)
!7337 = !{!258, !258}
!7338 = !{!7339, !7340}
!7339 = !DILocalVariable(name: "x", arg: 1, scope: !7334, file: !7335, line: 22, type: !258)
!7340 = !DILocalVariable(name: "y", scope: !7334, file: !7335, line: 24, type: !258)
!7341 = !DILocation(line: 22, column: 72, scope: !7334)
!7342 = !DILocation(line: 24, column: 2, scope: !7334)
!7343 = !DILocation(line: 24, column: 16, scope: !7334)
!7344 = !DILocation(line: 24, column: 20, scope: !7334)
!7345 = !DILocation(line: 24, column: 22, scope: !7334)
!7346 = !DILocation(line: 27, column: 6, scope: !7334)
!7347 = !DILocation(line: 27, column: 12, scope: !7334)
!7348 = !DILocation(line: 27, column: 16, scope: !7334)
!7349 = !DILocation(line: 27, column: 14, scope: !7334)
!7350 = !DILocation(line: 27, column: 11, scope: !7334)
!7351 = !DILocation(line: 27, column: 21, scope: !7334)
!7352 = !DILocation(line: 27, column: 55, scope: !7334)
!7353 = !DILocation(line: 27, column: 53, scope: !7334)
!7354 = !DILocation(line: 27, column: 8, scope: !7334)
!7355 = !DILocation(line: 27, column: 4, scope: !7334)
!7356 = !DILocation(line: 29, column: 9, scope: !7334)
!7357 = !DILocation(line: 30, column: 1, scope: !7334)
!7358 = !DILocation(line: 29, column: 2, scope: !7334)
!7359 = distinct !DISubprogram(name: "kobject_name", scope: !541, file: !541, line: 87, type: !569, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7360)
!7360 = !{!7361}
!7361 = !DILocalVariable(name: "kobj", arg: 1, scope: !7359, file: !541, line: 87, type: !564)
!7362 = !DILocation(line: 87, column: 62, scope: !7359)
!7363 = !DILocation(line: 89, column: 9, scope: !7359)
!7364 = !DILocation(line: 89, column: 15, scope: !7359)
!7365 = !DILocation(line: 89, column: 2, scope: !7359)
!7366 = distinct !DISubprogram(name: "debug_dma_mapping_error", scope: !5179, file: !5179, line: 84, type: !7367, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7369)
!7367 = !DISubroutineType(types: !7368)
!7368 = !{null, !3011, !259}
!7369 = !{!7370, !7371}
!7370 = !DILocalVariable(name: "dev", arg: 1, scope: !7366, file: !5179, line: 84, type: !3011)
!7371 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !7366, file: !5179, line: 85, type: !259)
!7372 = !DILocation(line: 84, column: 59, scope: !7366)
!7373 = !DILocation(line: 85, column: 14, scope: !7366)
!7374 = !DILocation(line: 87, column: 1, scope: !7366)
!7375 = !DISubprogram(name: "dma_free_attrs", scope: !5179, file: !5179, line: 130, type: !7376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7376 = !DISubroutineType(types: !7377)
!7377 = !{null, !3011, !624, !249, !259, !258}
!7378 = distinct !DISubprogram(name: "dmaengine_synchronize", scope: !148, file: !148, line: 1156, type: !5587, scopeLine: 1157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7379)
!7379 = !{!7380}
!7380 = !DILocalVariable(name: "chan", arg: 1, scope: !7378, file: !148, line: 1156, type: !5527)
!7381 = !DILocation(line: 1156, column: 59, scope: !7378)
!7382 = !DILocation(line: 1158, column: 2, scope: !7378)
!7383 = !DILocation(line: 1158, column: 2, scope: !7384)
!7384 = distinct !DILexicalBlock(scope: !7378, file: !148, line: 1158, column: 2)
!7385 = !DILocation(line: 1160, column: 6, scope: !7386)
!7386 = distinct !DILexicalBlock(scope: !7378, file: !148, line: 1160, column: 6)
!7387 = !DILocation(line: 1160, column: 12, scope: !7386)
!7388 = !DILocation(line: 1160, column: 20, scope: !7386)
!7389 = !DILocation(line: 1160, column: 6, scope: !7378)
!7390 = !DILocation(line: 1161, column: 3, scope: !7386)
!7391 = !DILocation(line: 1161, column: 9, scope: !7386)
!7392 = !DILocation(line: 1161, column: 17, scope: !7386)
!7393 = !DILocation(line: 1161, column: 36, scope: !7386)
!7394 = !DILocation(line: 1162, column: 1, scope: !7378)
!7395 = !DILocation(line: 112, column: 2, scope: !7396)
!7396 = distinct !DILexicalBlock(scope: !5213, file: !5214, line: 112, column: 2)
!7397 = !DILocation(line: 112, column: 2, scope: !5213)
!7398 = !DILocation(line: 113, column: 1, scope: !5213)
!7399 = !DISubprogram(name: "dma_unmap_page_attrs", scope: !5179, file: !5179, line: 107, type: !6940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
