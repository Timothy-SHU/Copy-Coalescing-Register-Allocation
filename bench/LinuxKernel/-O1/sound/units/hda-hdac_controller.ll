; ModuleID = 'sound/hda/hdac_controller.c'
source_filename = "sound/hda/hdac_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_init_cmd_io: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_init_cmd_io ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_stop_cmd_io: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_stop_cmd_io ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_send_cmd: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_send_cmd ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_update_rirb: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_update_rirb ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_get_response: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_get_response ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_parse_capabilities: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_parse_capabilities ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_enter_link_reset: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_enter_link_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_exit_link_reset: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_exit_link_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_reset_link: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_reset_link ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_init_chip: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_init_chip ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_stop_chip: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_stop_chip ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_handle_stream_irq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_handle_stream_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_alloc_stream_pages: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_alloc_stream_pages ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_free_stream_pages: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_free_stream_pages ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_bus_link_power: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_bus_link_power ; .previous"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.hdac_bus = type { ptr, ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i64, i64, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i64, i64, i32, i32, %struct.list_head, i8, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.hdac_rb = type { ptr, i64, i16, i16, [8 x i32], [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i64, i64, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i64, i64, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.snd_array = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [28 x i8] c"sound/hda/hdac_controller.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_snd_hdac_bus_init_cmd_io295 = internal global ptr @snd_hdac_bus_init_cmd_io, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_snd_hdac_bus_stop_cmd_io296 = internal global ptr @snd_hdac_bus_stop_cmd_io, section ".discard.addressable", align 8, !dbg !5395
@__UNIQUE_ID___addressable_snd_hdac_bus_send_cmd297 = internal global ptr @snd_hdac_bus_send_cmd, section ".discard.addressable", align 8, !dbg !5397
@.str.1 = private unnamed_addr constant [44 x i8] c"spurious response %#x:%#x, rp = %d, wp = %d\00", align 1, !dbg !5399
@snd_hdac_bus_update_rirb._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !5404
@__func__.snd_hdac_bus_update_rirb = private unnamed_addr constant [25 x i8] c"snd_hdac_bus_update_rirb\00", align 1, !dbg !5416
@.str.2 = private unnamed_addr constant [43 x i8] c"spurious response %#x:%#x, last cmd=%#08x\0A\00", align 1, !dbg !5421
@__UNIQUE_ID___addressable_snd_hdac_bus_update_rirb298 = internal global ptr @snd_hdac_bus_update_rirb, section ".discard.addressable", align 8, !dbg !5426
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__UNIQUE_ID___addressable_snd_hdac_bus_get_response299 = internal global ptr @snd_hdac_bus_get_response, section ".discard.addressable", align 8, !dbg !5428
@.str.3 = private unnamed_addr constant [23 x i8] c"Unknown capability %d\0A\00", align 1, !dbg !5430
@.str.4 = private unnamed_addr constant [34 x i8] c"We exceeded HDAC capabilities!!!\0A\00", align 1, !dbg !5435
@__UNIQUE_ID___addressable_snd_hdac_bus_parse_capabilities300 = internal global ptr @snd_hdac_bus_parse_capabilities, section ".discard.addressable", align 8, !dbg !5440
@__UNIQUE_ID___addressable_snd_hdac_bus_enter_link_reset301 = internal global ptr @snd_hdac_bus_enter_link_reset, section ".discard.addressable", align 8, !dbg !5442
@__UNIQUE_ID___addressable_snd_hdac_bus_exit_link_reset302 = internal global ptr @snd_hdac_bus_exit_link_reset, section ".discard.addressable", align 8, !dbg !5444
@__UNIQUE_ID___addressable_snd_hdac_bus_reset_link303 = internal global ptr @snd_hdac_bus_reset_link, section ".discard.addressable", align 8, !dbg !5446
@__UNIQUE_ID___addressable_snd_hdac_bus_init_chip304 = internal global ptr @snd_hdac_bus_init_chip, section ".discard.addressable", align 8, !dbg !5448
@__UNIQUE_ID___addressable_snd_hdac_bus_stop_chip305 = internal global ptr @snd_hdac_bus_stop_chip, section ".discard.addressable", align 8, !dbg !5450
@__UNIQUE_ID___addressable_snd_hdac_bus_handle_stream_irq306 = internal global ptr @snd_hdac_bus_handle_stream_irq, section ".discard.addressable", align 8, !dbg !5452
@__UNIQUE_ID___addressable_snd_hdac_bus_alloc_stream_pages307 = internal global ptr @snd_hdac_bus_alloc_stream_pages, section ".discard.addressable", align 8, !dbg !5454
@__UNIQUE_ID___addressable_snd_hdac_bus_free_stream_pages308 = internal global ptr @snd_hdac_bus_free_stream_pages, section ".discard.addressable", align 8, !dbg !5456
@__UNIQUE_ID___addressable_snd_hdac_bus_link_power309 = internal global ptr @snd_hdac_bus_link_power, section ".discard.addressable", align 8, !dbg !5458
@.str.5 = private unnamed_addr constant [35 x i8] c"CORB reset timeout#1, CORBRP = %d\0A\00", align 1, !dbg !5460
@.str.6 = private unnamed_addr constant [35 x i8] c"CORB reset timeout#2, CORBRP = %d\0A\00", align 1, !dbg !5465
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !5467
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID___addressable_snd_hdac_bus_init_cmd_io295, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_stop_cmd_io296, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_send_cmd297, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_update_rirb298, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_get_response299, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_parse_capabilities300, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_enter_link_reset301, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_exit_link_reset302, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_reset_link303, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_init_chip304, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_stop_chip305, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_handle_stream_irq306, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_alloc_stream_pages307, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_free_stream_pages308, ptr @__UNIQUE_ID___addressable_snd_hdac_bus_link_power309, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_init_cmd_io(ptr noundef %bus) #0 align 16 !dbg !5479 {
entry:
  %bus.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5481, metadata !DIExpression()), !dbg !5487
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5488
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5482, metadata !DIExpression()), !dbg !5488
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5488
  %rb = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 24, !dbg !5488
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %rb, i32 0, i32 1, !dbg !5488
  %1 = load ptr, ptr %area, align 8, !dbg !5488
  %tobool = icmp ne ptr %1, null, !dbg !5488
  %lnot = xor i1 %tobool, true, !dbg !5488
  %lnot1 = xor i1 %lnot, true, !dbg !5488
  %lnot2 = xor i1 %lnot1, true, !dbg !5488
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5488
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5488
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5489
  %tobool3 = icmp ne i32 %2, 0, !dbg !5489
  %lnot4 = xor i1 %tobool3, true, !dbg !5489
  %lnot6 = xor i1 %lnot4, true, !dbg !5489
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5489
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5489
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5489
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5489
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5488

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5489

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5490
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5484, metadata !DIExpression()), !dbg !5490
  store i32 2307, ptr %__flags, align 4, !dbg !5490
  br label %do.body9, !dbg !5490

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5491

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5491

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5490

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5493
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 45, i32 %3, i64 12) #10, !dbg !5493, !srcloc !5495
  br label %do.cond11, !dbg !5493

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5493

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5490

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5496

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5496

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5489
  br label %do.cond16, !dbg !5490

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5490

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5490

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5488
  %tobool18 = icmp ne i32 %4, 0, !dbg !5488
  %lnot19 = xor i1 %tobool18, true, !dbg !5488
  %lnot21 = xor i1 %lnot19, true, !dbg !5488
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5488
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5488
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5488
  store i64 %expval24, ptr %tmp, align 8, !dbg !5489
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5498
  %5 = load i64, ptr %tmp, align 8, !dbg !5488
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !5499
  %reg_lock = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 32, !dbg !5500
  call void @spin_lock_irq(ptr noundef %reg_lock) #11, !dbg !5501
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !5502
  %rb25 = getelementptr inbounds %struct.hdac_bus, ptr %7, i32 0, i32 24, !dbg !5503
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %rb25, i32 0, i32 2, !dbg !5504
  %8 = load i64, ptr %addr, align 8, !dbg !5504
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5505
  %corb = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 20, !dbg !5506
  %addr26 = getelementptr inbounds %struct.hdac_rb, ptr %corb, i32 0, i32 1, !dbg !5507
  store i64 %8, ptr %addr26, align 8, !dbg !5508
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !5509
  %rb27 = getelementptr inbounds %struct.hdac_bus, ptr %10, i32 0, i32 24, !dbg !5510
  %area28 = getelementptr inbounds %struct.snd_dma_buffer, ptr %rb27, i32 0, i32 1, !dbg !5511
  %11 = load ptr, ptr %area28, align 8, !dbg !5511
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !5512
  %corb29 = getelementptr inbounds %struct.hdac_bus, ptr %12, i32 0, i32 20, !dbg !5513
  %buf = getelementptr inbounds %struct.hdac_rb, ptr %corb29, i32 0, i32 0, !dbg !5514
  store ptr %11, ptr %buf, align 8, !dbg !5515
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !5516
  %corb30 = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 20, !dbg !5516
  %addr31 = getelementptr inbounds %struct.hdac_rb, ptr %corb30, i32 0, i32 1, !dbg !5516
  %14 = load i64, ptr %addr31, align 8, !dbg !5516
  %conv32 = trunc i64 %14 to i32, !dbg !5516
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !5516
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 4, !dbg !5516
  %16 = load ptr, ptr %remap_addr, align 8, !dbg !5516
  %add.ptr = getelementptr i8, ptr %16, i64 64, !dbg !5516
  call void @writel(i32 noundef %conv32, ptr noundef %add.ptr) #11, !dbg !5516
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !5517
  %corb33 = getelementptr inbounds %struct.hdac_bus, ptr %17, i32 0, i32 20, !dbg !5517
  %addr34 = getelementptr inbounds %struct.hdac_rb, ptr %corb33, i32 0, i32 1, !dbg !5517
  %18 = load i64, ptr %addr34, align 8, !dbg !5517
  %shr = lshr i64 %18, 16, !dbg !5517
  %shr35 = lshr i64 %shr, 16, !dbg !5517
  %conv36 = trunc i64 %shr35 to i32, !dbg !5517
  %19 = load ptr, ptr %bus.addr, align 8, !dbg !5517
  %remap_addr37 = getelementptr inbounds %struct.hdac_bus, ptr %19, i32 0, i32 4, !dbg !5517
  %20 = load ptr, ptr %remap_addr37, align 8, !dbg !5517
  %add.ptr38 = getelementptr i8, ptr %20, i64 68, !dbg !5517
  call void @writel(i32 noundef %conv36, ptr noundef %add.ptr38) #11, !dbg !5517
  %21 = load ptr, ptr %bus.addr, align 8, !dbg !5518
  %22 = load ptr, ptr %bus.addr, align 8, !dbg !5518
  %remap_addr39 = getelementptr inbounds %struct.hdac_bus, ptr %22, i32 0, i32 4, !dbg !5518
  %23 = load ptr, ptr %remap_addr39, align 8, !dbg !5518
  %add.ptr40 = getelementptr i8, ptr %23, i64 78, !dbg !5518
  call void @snd_hdac_reg_writeb(ptr noundef %21, ptr noundef %add.ptr40, i8 noundef zeroext 2) #11, !dbg !5518
  %24 = load ptr, ptr %bus.addr, align 8, !dbg !5519
  %25 = load ptr, ptr %bus.addr, align 8, !dbg !5519
  %remap_addr41 = getelementptr inbounds %struct.hdac_bus, ptr %25, i32 0, i32 4, !dbg !5519
  %26 = load ptr, ptr %remap_addr41, align 8, !dbg !5519
  %add.ptr42 = getelementptr i8, ptr %26, i64 72, !dbg !5519
  call void @snd_hdac_reg_writew(ptr noundef %24, ptr noundef %add.ptr42, i16 noundef zeroext 0) #11, !dbg !5519
  %27 = load ptr, ptr %bus.addr, align 8, !dbg !5520
  %28 = load ptr, ptr %bus.addr, align 8, !dbg !5520
  %remap_addr43 = getelementptr inbounds %struct.hdac_bus, ptr %28, i32 0, i32 4, !dbg !5520
  %29 = load ptr, ptr %remap_addr43, align 8, !dbg !5520
  %add.ptr44 = getelementptr i8, ptr %29, i64 74, !dbg !5520
  call void @snd_hdac_reg_writew(ptr noundef %27, ptr noundef %add.ptr44, i16 noundef zeroext -32768) #11, !dbg !5520
  %30 = load ptr, ptr %bus.addr, align 8, !dbg !5521
  %corbrp_self_clear = getelementptr inbounds %struct.hdac_bus, ptr %30, i32 0, i32 28, !dbg !5523
  %bf.load = load i16, ptr %corbrp_self_clear, align 8, !dbg !5523
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !5523
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5523
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !5523
  br i1 %bf.cast, label %if.end46, label %if.then45, !dbg !5524

if.then45:                                        ; preds = %if.end
  %31 = load ptr, ptr %bus.addr, align 8, !dbg !5525
  call void @azx_clear_corbrp(ptr noundef %31) #11, !dbg !5526
  br label %if.end46, !dbg !5526

if.end46:                                         ; preds = %if.then45, %if.end
  %32 = load ptr, ptr %bus.addr, align 8, !dbg !5527
  %33 = load ptr, ptr %bus.addr, align 8, !dbg !5527
  %remap_addr47 = getelementptr inbounds %struct.hdac_bus, ptr %33, i32 0, i32 4, !dbg !5527
  %34 = load ptr, ptr %remap_addr47, align 8, !dbg !5527
  %add.ptr48 = getelementptr i8, ptr %34, i64 76, !dbg !5527
  call void @snd_hdac_reg_writeb(ptr noundef %32, ptr noundef %add.ptr48, i8 noundef zeroext 2) #11, !dbg !5527
  %35 = load ptr, ptr %bus.addr, align 8, !dbg !5528
  %rb49 = getelementptr inbounds %struct.hdac_bus, ptr %35, i32 0, i32 24, !dbg !5529
  %addr50 = getelementptr inbounds %struct.snd_dma_buffer, ptr %rb49, i32 0, i32 2, !dbg !5530
  %36 = load i64, ptr %addr50, align 8, !dbg !5530
  %add = add i64 %36, 2048, !dbg !5531
  %37 = load ptr, ptr %bus.addr, align 8, !dbg !5532
  %rirb = getelementptr inbounds %struct.hdac_bus, ptr %37, i32 0, i32 21, !dbg !5533
  %addr51 = getelementptr inbounds %struct.hdac_rb, ptr %rirb, i32 0, i32 1, !dbg !5534
  store i64 %add, ptr %addr51, align 8, !dbg !5535
  %38 = load ptr, ptr %bus.addr, align 8, !dbg !5536
  %rb52 = getelementptr inbounds %struct.hdac_bus, ptr %38, i32 0, i32 24, !dbg !5537
  %area53 = getelementptr inbounds %struct.snd_dma_buffer, ptr %rb52, i32 0, i32 1, !dbg !5538
  %39 = load ptr, ptr %area53, align 8, !dbg !5538
  %add.ptr54 = getelementptr i8, ptr %39, i64 2048, !dbg !5539
  %40 = load ptr, ptr %bus.addr, align 8, !dbg !5540
  %rirb55 = getelementptr inbounds %struct.hdac_bus, ptr %40, i32 0, i32 21, !dbg !5541
  %buf56 = getelementptr inbounds %struct.hdac_rb, ptr %rirb55, i32 0, i32 0, !dbg !5542
  store ptr %add.ptr54, ptr %buf56, align 8, !dbg !5543
  %41 = load ptr, ptr %bus.addr, align 8, !dbg !5544
  %rirb57 = getelementptr inbounds %struct.hdac_bus, ptr %41, i32 0, i32 21, !dbg !5545
  %rp = getelementptr inbounds %struct.hdac_rb, ptr %rirb57, i32 0, i32 2, !dbg !5546
  store i16 0, ptr %rp, align 8, !dbg !5547
  %42 = load ptr, ptr %bus.addr, align 8, !dbg !5548
  %rirb58 = getelementptr inbounds %struct.hdac_bus, ptr %42, i32 0, i32 21, !dbg !5549
  %wp = getelementptr inbounds %struct.hdac_rb, ptr %rirb58, i32 0, i32 3, !dbg !5550
  store i16 0, ptr %wp, align 2, !dbg !5551
  %43 = load ptr, ptr %bus.addr, align 8, !dbg !5552
  %rirb59 = getelementptr inbounds %struct.hdac_bus, ptr %43, i32 0, i32 21, !dbg !5553
  %cmds = getelementptr inbounds %struct.hdac_rb, ptr %rirb59, i32 0, i32 4, !dbg !5554
  %arraydecay = getelementptr inbounds [8 x i32], ptr %cmds, i64 0, i64 0, !dbg !5555
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay, i8 0, i64 32, i1 false), !dbg !5555
  %44 = load ptr, ptr %bus.addr, align 8, !dbg !5556
  %rirb60 = getelementptr inbounds %struct.hdac_bus, ptr %44, i32 0, i32 21, !dbg !5556
  %addr61 = getelementptr inbounds %struct.hdac_rb, ptr %rirb60, i32 0, i32 1, !dbg !5556
  %45 = load i64, ptr %addr61, align 8, !dbg !5556
  %conv62 = trunc i64 %45 to i32, !dbg !5556
  %46 = load ptr, ptr %bus.addr, align 8, !dbg !5556
  %remap_addr63 = getelementptr inbounds %struct.hdac_bus, ptr %46, i32 0, i32 4, !dbg !5556
  %47 = load ptr, ptr %remap_addr63, align 8, !dbg !5556
  %add.ptr64 = getelementptr i8, ptr %47, i64 80, !dbg !5556
  call void @writel(i32 noundef %conv62, ptr noundef %add.ptr64) #11, !dbg !5556
  %48 = load ptr, ptr %bus.addr, align 8, !dbg !5557
  %rirb65 = getelementptr inbounds %struct.hdac_bus, ptr %48, i32 0, i32 21, !dbg !5557
  %addr66 = getelementptr inbounds %struct.hdac_rb, ptr %rirb65, i32 0, i32 1, !dbg !5557
  %49 = load i64, ptr %addr66, align 8, !dbg !5557
  %shr67 = lshr i64 %49, 16, !dbg !5557
  %shr68 = lshr i64 %shr67, 16, !dbg !5557
  %conv69 = trunc i64 %shr68 to i32, !dbg !5557
  %50 = load ptr, ptr %bus.addr, align 8, !dbg !5557
  %remap_addr70 = getelementptr inbounds %struct.hdac_bus, ptr %50, i32 0, i32 4, !dbg !5557
  %51 = load ptr, ptr %remap_addr70, align 8, !dbg !5557
  %add.ptr71 = getelementptr i8, ptr %51, i64 84, !dbg !5557
  call void @writel(i32 noundef %conv69, ptr noundef %add.ptr71) #11, !dbg !5557
  %52 = load ptr, ptr %bus.addr, align 8, !dbg !5558
  %53 = load ptr, ptr %bus.addr, align 8, !dbg !5558
  %remap_addr72 = getelementptr inbounds %struct.hdac_bus, ptr %53, i32 0, i32 4, !dbg !5558
  %54 = load ptr, ptr %remap_addr72, align 8, !dbg !5558
  %add.ptr73 = getelementptr i8, ptr %54, i64 94, !dbg !5558
  call void @snd_hdac_reg_writeb(ptr noundef %52, ptr noundef %add.ptr73, i8 noundef zeroext 2) #11, !dbg !5558
  %55 = load ptr, ptr %bus.addr, align 8, !dbg !5559
  %56 = load ptr, ptr %bus.addr, align 8, !dbg !5559
  %remap_addr74 = getelementptr inbounds %struct.hdac_bus, ptr %56, i32 0, i32 4, !dbg !5559
  %57 = load ptr, ptr %remap_addr74, align 8, !dbg !5559
  %add.ptr75 = getelementptr i8, ptr %57, i64 88, !dbg !5559
  call void @snd_hdac_reg_writew(ptr noundef %55, ptr noundef %add.ptr75, i16 noundef zeroext -32768) #11, !dbg !5559
  %58 = load ptr, ptr %bus.addr, align 8, !dbg !5560
  %59 = load ptr, ptr %bus.addr, align 8, !dbg !5560
  %remap_addr76 = getelementptr inbounds %struct.hdac_bus, ptr %59, i32 0, i32 4, !dbg !5560
  %60 = load ptr, ptr %remap_addr76, align 8, !dbg !5560
  %add.ptr77 = getelementptr i8, ptr %60, i64 90, !dbg !5560
  call void @snd_hdac_reg_writew(ptr noundef %58, ptr noundef %add.ptr77, i16 noundef zeroext 1) #11, !dbg !5560
  %61 = load ptr, ptr %bus.addr, align 8, !dbg !5561
  %not_use_interrupts = getelementptr inbounds %struct.hdac_bus, ptr %61, i32 0, i32 28, !dbg !5563
  %bf.load78 = load i16, ptr %not_use_interrupts, align 8, !dbg !5563
  %bf.lshr79 = lshr i16 %bf.load78, 10, !dbg !5563
  %bf.clear80 = and i16 %bf.lshr79, 1, !dbg !5563
  %bf.cast81 = trunc i16 %bf.clear80 to i1, !dbg !5563
  br i1 %bf.cast81, label %if.then82, label %if.else, !dbg !5564

if.then82:                                        ; preds = %if.end46
  %62 = load ptr, ptr %bus.addr, align 8, !dbg !5565
  %63 = load ptr, ptr %bus.addr, align 8, !dbg !5565
  %remap_addr83 = getelementptr inbounds %struct.hdac_bus, ptr %63, i32 0, i32 4, !dbg !5565
  %64 = load ptr, ptr %remap_addr83, align 8, !dbg !5565
  %add.ptr84 = getelementptr i8, ptr %64, i64 92, !dbg !5565
  call void @snd_hdac_reg_writeb(ptr noundef %62, ptr noundef %add.ptr84, i8 noundef zeroext 2) #11, !dbg !5565
  br label %if.end87, !dbg !5565

if.else:                                          ; preds = %if.end46
  %65 = load ptr, ptr %bus.addr, align 8, !dbg !5566
  %66 = load ptr, ptr %bus.addr, align 8, !dbg !5566
  %remap_addr85 = getelementptr inbounds %struct.hdac_bus, ptr %66, i32 0, i32 4, !dbg !5566
  %67 = load ptr, ptr %remap_addr85, align 8, !dbg !5566
  %add.ptr86 = getelementptr i8, ptr %67, i64 92, !dbg !5566
  call void @snd_hdac_reg_writeb(ptr noundef %65, ptr noundef %add.ptr86, i8 noundef zeroext 3) #11, !dbg !5566
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then82
  %68 = load ptr, ptr %bus.addr, align 8, !dbg !5567
  %remap_addr88 = getelementptr inbounds %struct.hdac_bus, ptr %68, i32 0, i32 4, !dbg !5567
  %69 = load ptr, ptr %remap_addr88, align 8, !dbg !5567
  %add.ptr89 = getelementptr i8, ptr %69, i64 8, !dbg !5567
  %call = call i32 @readl(ptr noundef %add.ptr89) #11, !dbg !5567
  %and = and i32 %call, -257, !dbg !5567
  %or = or i32 %and, 256, !dbg !5567
  %70 = load ptr, ptr %bus.addr, align 8, !dbg !5567
  %remap_addr90 = getelementptr inbounds %struct.hdac_bus, ptr %70, i32 0, i32 4, !dbg !5567
  %71 = load ptr, ptr %remap_addr90, align 8, !dbg !5567
  %add.ptr91 = getelementptr i8, ptr %71, i64 8, !dbg !5567
  call void @writel(i32 noundef %or, ptr noundef %add.ptr91) #11, !dbg !5567
  %72 = load ptr, ptr %bus.addr, align 8, !dbg !5568
  %reg_lock92 = getelementptr inbounds %struct.hdac_bus, ptr %72, i32 0, i32 32, !dbg !5569
  call void @spin_unlock_irq(ptr noundef %reg_lock92) #11, !dbg !5570
  ret void, !dbg !5571
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !5572 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5579
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5579
  call void @_raw_spin_lock_irq(ptr noundef %1) #11, !dbg !5579
  ret void, !dbg !5580
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #5 align 16 !dbg !5581 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5588, metadata !DIExpression()), !dbg !5590
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  %0 = load i32, ptr %val.addr, align 4, !dbg !5590
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5590
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #10, !dbg !5590, !srcloc !5591
  ret void, !dbg !5590
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_hdac_reg_writeb(ptr noundef %bus, ptr noundef %addr, i8 noundef zeroext %val) #5 align 16 !dbg !5592 {
entry:
  %bus.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5596, metadata !DIExpression()), !dbg !5599
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5597, metadata !DIExpression()), !dbg !5600
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5598, metadata !DIExpression()), !dbg !5601
  %0 = load i8, ptr %val.addr, align 1, !dbg !5602
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5604
  call void @writeb(i8 noundef zeroext %0, ptr noundef %1) #11, !dbg !5605
  ret void, !dbg !5606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_hdac_reg_writew(ptr noundef %bus, ptr noundef %addr, i16 noundef zeroext %val) #5 align 16 !dbg !5607 {
entry:
  %bus.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %val.addr = alloca i16, align 2
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5611, metadata !DIExpression()), !dbg !5614
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5612, metadata !DIExpression()), !dbg !5615
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5613, metadata !DIExpression()), !dbg !5616
  %0 = load i16, ptr %val.addr, align 2, !dbg !5617
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5619
  call void @writew(i16 noundef zeroext %0, ptr noundef %1) #11, !dbg !5620
  ret void, !dbg !5621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @azx_clear_corbrp(ptr noundef %bus) #0 align 16 !dbg !5622 {
entry:
  %bus.addr = alloca ptr, align 8
  %timeout = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5624, metadata !DIExpression()), !dbg !5626
  call void @llvm.lifetime.start.p0(i64 4, ptr %timeout) #10, !dbg !5627
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !5625, metadata !DIExpression()), !dbg !5628
  store i32 1000, ptr %timeout, align 4, !dbg !5629
  br label %for.cond, !dbg !5631

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %timeout, align 4, !dbg !5632
  %cmp = icmp sgt i32 %0, 0, !dbg !5634
  br i1 %cmp, label %for.body, label %for.end, !dbg !5635

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5636
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5636
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 4, !dbg !5636
  %3 = load ptr, ptr %remap_addr, align 8, !dbg !5636
  %add.ptr = getelementptr i8, ptr %3, i64 74, !dbg !5636
  %call = call zeroext i16 @snd_hdac_reg_readw(ptr noundef %1, ptr noundef %add.ptr) #11, !dbg !5636
  %conv = zext i16 %call to i32, !dbg !5636
  %and = and i32 %conv, 32768, !dbg !5639
  %tobool = icmp ne i32 %and, 0, !dbg !5639
  br i1 %tobool, label %if.then, label %if.end, !dbg !5640

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5641

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 noundef 4295) #11, !dbg !5642
  br label %for.inc, !dbg !5647

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %timeout, align 4, !dbg !5648
  %dec = add i32 %4, -1, !dbg !5648
  store i32 %dec, ptr %timeout, align 4, !dbg !5648
  br label %for.cond, !dbg !5649, !llvm.loop !5650

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i32, ptr %timeout, align 4, !dbg !5654
  %cmp1 = icmp sle i32 %5, 0, !dbg !5656
  br i1 %cmp1, label %if.then3, label %if.end8, !dbg !5657

if.then3:                                         ; preds = %for.end
  br label %do.body, !dbg !5658

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !5660

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5660

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !5658
  %dev = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 0, !dbg !5658
  %7 = load ptr, ptr %dev, align 8, !dbg !5658
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !5658
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5658
  %remap_addr4 = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 4, !dbg !5658
  %10 = load ptr, ptr %remap_addr4, align 8, !dbg !5658
  %add.ptr5 = getelementptr i8, ptr %10, i64 74, !dbg !5658
  %call6 = call zeroext i16 @snd_hdac_reg_readw(ptr noundef %8, ptr noundef %add.ptr5) #11, !dbg !5658
  %conv7 = zext i16 %call6 to i32, !dbg !5658
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef @.str.5, i32 noundef %conv7) #12, !dbg !5658
  br label %if.end8, !dbg !5662

if.end8:                                          ; preds = %do.end, %for.end
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !5663
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !5663
  %remap_addr9 = getelementptr inbounds %struct.hdac_bus, ptr %12, i32 0, i32 4, !dbg !5663
  %13 = load ptr, ptr %remap_addr9, align 8, !dbg !5663
  %add.ptr10 = getelementptr i8, ptr %13, i64 74, !dbg !5663
  call void @snd_hdac_reg_writew(ptr noundef %11, ptr noundef %add.ptr10, i16 noundef zeroext 0) #11, !dbg !5663
  store i32 1000, ptr %timeout, align 4, !dbg !5664
  br label %for.cond11, !dbg !5666

for.cond11:                                       ; preds = %for.inc23, %if.end8
  %14 = load i32, ptr %timeout, align 4, !dbg !5667
  %cmp12 = icmp sgt i32 %14, 0, !dbg !5669
  br i1 %cmp12, label %for.body14, label %for.end25, !dbg !5670

for.body14:                                       ; preds = %for.cond11
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !5671
  %16 = load ptr, ptr %bus.addr, align 8, !dbg !5671
  %remap_addr15 = getelementptr inbounds %struct.hdac_bus, ptr %16, i32 0, i32 4, !dbg !5671
  %17 = load ptr, ptr %remap_addr15, align 8, !dbg !5671
  %add.ptr16 = getelementptr i8, ptr %17, i64 74, !dbg !5671
  %call17 = call zeroext i16 @snd_hdac_reg_readw(ptr noundef %15, ptr noundef %add.ptr16) #11, !dbg !5671
  %conv18 = zext i16 %call17 to i32, !dbg !5671
  %cmp19 = icmp eq i32 %conv18, 0, !dbg !5674
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !5675

if.then21:                                        ; preds = %for.body14
  br label %for.end25, !dbg !5676

if.end22:                                         ; preds = %for.body14
  call void @__const_udelay(i64 noundef 4295) #11, !dbg !5677
  br label %for.inc23, !dbg !5682

for.inc23:                                        ; preds = %if.end22
  %18 = load i32, ptr %timeout, align 4, !dbg !5683
  %dec24 = add i32 %18, -1, !dbg !5683
  store i32 %dec24, ptr %timeout, align 4, !dbg !5683
  br label %for.cond11, !dbg !5684, !llvm.loop !5685

for.end25:                                        ; preds = %if.then21, %for.cond11
  %19 = load i32, ptr %timeout, align 4, !dbg !5687
  %cmp26 = icmp sle i32 %19, 0, !dbg !5689
  br i1 %cmp26, label %if.then28, label %if.end37, !dbg !5690

if.then28:                                        ; preds = %for.end25
  br label %do.body29, !dbg !5691

do.body29:                                        ; preds = %if.then28
  br label %do.cond30, !dbg !5693

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5693

do.end31:                                         ; preds = %do.cond30
  %20 = load ptr, ptr %bus.addr, align 8, !dbg !5691
  %dev32 = getelementptr inbounds %struct.hdac_bus, ptr %20, i32 0, i32 0, !dbg !5691
  %21 = load ptr, ptr %dev32, align 8, !dbg !5691
  %22 = load ptr, ptr %bus.addr, align 8, !dbg !5691
  %23 = load ptr, ptr %bus.addr, align 8, !dbg !5691
  %remap_addr33 = getelementptr inbounds %struct.hdac_bus, ptr %23, i32 0, i32 4, !dbg !5691
  %24 = load ptr, ptr %remap_addr33, align 8, !dbg !5691
  %add.ptr34 = getelementptr i8, ptr %24, i64 74, !dbg !5691
  %call35 = call zeroext i16 @snd_hdac_reg_readw(ptr noundef %22, ptr noundef %add.ptr34) #11, !dbg !5691
  %conv36 = zext i16 %call35 to i32, !dbg !5691
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef @.str.6, i32 noundef %conv36) #12, !dbg !5691
  br label %if.end37, !dbg !5695

if.end37:                                         ; preds = %do.end31, %for.end25
  call void @llvm.lifetime.end.p0(i64 4, ptr %timeout) #10, !dbg !5696
  ret void, !dbg !5696
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #5 align 16 !dbg !5697 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5703, metadata !DIExpression()), !dbg !5705
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5704, metadata !DIExpression()), !dbg !5705
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5705
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #10, !dbg !5705, !srcloc !5706
  store i32 %1, ptr %ret, align 4, !dbg !5705
  %2 = load i32, ptr %ret, align 4, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5705
  ret i32 %2, !dbg !5705
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !5707 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5711
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5711
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11, !dbg !5711
  ret void, !dbg !5712
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_stop_cmd_io(ptr noundef %bus) #0 align 16 !dbg !5713 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5715, metadata !DIExpression()), !dbg !5716
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5717
  %reg_lock = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 32, !dbg !5718
  call void @spin_lock_irq(ptr noundef %reg_lock) #11, !dbg !5719
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5720
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5720
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 4, !dbg !5720
  %3 = load ptr, ptr %remap_addr, align 8, !dbg !5720
  %add.ptr = getelementptr i8, ptr %3, i64 92, !dbg !5720
  call void @snd_hdac_reg_writeb(ptr noundef %1, ptr noundef %add.ptr, i8 noundef zeroext 0) #11, !dbg !5720
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5721
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5721
  %remap_addr1 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 4, !dbg !5721
  %6 = load ptr, ptr %remap_addr1, align 8, !dbg !5721
  %add.ptr2 = getelementptr i8, ptr %6, i64 76, !dbg !5721
  call void @snd_hdac_reg_writeb(ptr noundef %4, ptr noundef %add.ptr2, i8 noundef zeroext 0) #11, !dbg !5721
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !5722
  %reg_lock3 = getelementptr inbounds %struct.hdac_bus, ptr %7, i32 0, i32 32, !dbg !5723
  call void @spin_unlock_irq(ptr noundef %reg_lock3) #11, !dbg !5724
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !5725
  call void @hdac_wait_for_cmd_dmas(ptr noundef %8) #11, !dbg !5726
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5727
  %reg_lock4 = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 32, !dbg !5728
  call void @spin_lock_irq(ptr noundef %reg_lock4) #11, !dbg !5729
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !5730
  %remap_addr5 = getelementptr inbounds %struct.hdac_bus, ptr %10, i32 0, i32 4, !dbg !5730
  %11 = load ptr, ptr %remap_addr5, align 8, !dbg !5730
  %add.ptr6 = getelementptr i8, ptr %11, i64 8, !dbg !5730
  %call = call i32 @readl(ptr noundef %add.ptr6) #11, !dbg !5730
  %and = and i32 %call, -257, !dbg !5730
  %or = or i32 %and, 0, !dbg !5730
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !5730
  %remap_addr7 = getelementptr inbounds %struct.hdac_bus, ptr %12, i32 0, i32 4, !dbg !5730
  %13 = load ptr, ptr %remap_addr7, align 8, !dbg !5730
  %add.ptr8 = getelementptr i8, ptr %13, i64 8, !dbg !5730
  call void @writel(i32 noundef %or, ptr noundef %add.ptr8) #11, !dbg !5730
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !5731
  %reg_lock9 = getelementptr inbounds %struct.hdac_bus, ptr %14, i32 0, i32 32, !dbg !5732
  call void @spin_unlock_irq(ptr noundef %reg_lock9) #11, !dbg !5733
  ret void, !dbg !5734
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hdac_wait_for_cmd_dmas(ptr noundef %bus) #0 align 16 !dbg !5735 {
entry:
  %bus.addr = alloca ptr, align 8
  %timeout = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5737, metadata !DIExpression()), !dbg !5739
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #10, !dbg !5740
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !5738, metadata !DIExpression()), !dbg !5741
  %0 = load volatile i64, ptr @jiffies, align 64, !dbg !5742
  %call = call i64 @msecs_to_jiffies(i32 noundef 100) #11, !dbg !5743
  %add = add i64 %0, %call, !dbg !5744
  store i64 %add, ptr %timeout, align 8, !dbg !5745
  br label %while.cond, !dbg !5746

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5747
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5747
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 4, !dbg !5747
  %3 = load ptr, ptr %remap_addr, align 8, !dbg !5747
  %add.ptr = getelementptr i8, ptr %3, i64 92, !dbg !5747
  %call1 = call zeroext i8 @snd_hdac_reg_readb(ptr noundef %1, ptr noundef %add.ptr) #11, !dbg !5747
  %conv = zext i8 %call1 to i32, !dbg !5747
  %and = and i32 %conv, 2, !dbg !5748
  %tobool = icmp ne i32 %and, 0, !dbg !5748
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5749

land.rhs:                                         ; preds = %while.cond
  %4 = load volatile i64, ptr @jiffies, align 64, !dbg !5750
  %5 = load i64, ptr %timeout, align 8, !dbg !5750
  %sub = sub i64 %4, %5, !dbg !5750
  %cmp = icmp slt i64 %sub, 0, !dbg !5750
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !5751
  br i1 %6, label %while.body, label %while.end, !dbg !5746

while.body:                                       ; preds = %land.end
  call void @__const_udelay(i64 noundef 42950) #11, !dbg !5752
  br label %while.cond, !dbg !5746, !llvm.loop !5757

while.end:                                        ; preds = %land.end
  %7 = load volatile i64, ptr @jiffies, align 64, !dbg !5759
  %call3 = call i64 @msecs_to_jiffies(i32 noundef 100) #11, !dbg !5760
  %add4 = add i64 %7, %call3, !dbg !5761
  store i64 %add4, ptr %timeout, align 8, !dbg !5762
  br label %while.cond5, !dbg !5763

while.cond5:                                      ; preds = %while.body17, %while.end
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !5764
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5764
  %remap_addr6 = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 4, !dbg !5764
  %10 = load ptr, ptr %remap_addr6, align 8, !dbg !5764
  %add.ptr7 = getelementptr i8, ptr %10, i64 76, !dbg !5764
  %call8 = call zeroext i8 @snd_hdac_reg_readb(ptr noundef %8, ptr noundef %add.ptr7) #11, !dbg !5764
  %conv9 = zext i8 %call8 to i32, !dbg !5764
  %and10 = and i32 %conv9, 2, !dbg !5765
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5765
  br i1 %tobool11, label %land.rhs12, label %land.end16, !dbg !5766

land.rhs12:                                       ; preds = %while.cond5
  %11 = load volatile i64, ptr @jiffies, align 64, !dbg !5767
  %12 = load i64, ptr %timeout, align 8, !dbg !5767
  %sub13 = sub i64 %11, %12, !dbg !5767
  %cmp14 = icmp slt i64 %sub13, 0, !dbg !5767
  br label %land.end16

land.end16:                                       ; preds = %land.rhs12, %while.cond5
  %13 = phi i1 [ false, %while.cond5 ], [ %cmp14, %land.rhs12 ], !dbg !5751
  br i1 %13, label %while.body17, label %while.end18, !dbg !5763

while.body17:                                     ; preds = %land.end16
  call void @__const_udelay(i64 noundef 42950) #11, !dbg !5768
  br label %while.cond5, !dbg !5763, !llvm.loop !5773

while.end18:                                      ; preds = %land.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #10, !dbg !5775
  ret void, !dbg !5775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_send_cmd(ptr noundef %bus, i32 noundef %val) #0 align 16 !dbg !5776 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %addr = alloca i32, align 4
  %wp = alloca i32, align 4
  %rp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5778, metadata !DIExpression()), !dbg !5783
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5779, metadata !DIExpression()), !dbg !5784
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #10, !dbg !5785
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5780, metadata !DIExpression()), !dbg !5786
  %0 = load i32, ptr %val.addr, align 4, !dbg !5787
  %call = call i32 @azx_command_addr(i32 noundef %0) #11, !dbg !5788
  store i32 %call, ptr %addr, align 4, !dbg !5786
  call void @llvm.lifetime.start.p0(i64 4, ptr %wp) #10, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !5781, metadata !DIExpression()), !dbg !5790
  call void @llvm.lifetime.start.p0(i64 4, ptr %rp) #10, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %rp, metadata !5782, metadata !DIExpression()), !dbg !5791
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5792
  %reg_lock = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 32, !dbg !5793
  call void @spin_lock_irq(ptr noundef %reg_lock) #11, !dbg !5794
  %2 = load i32, ptr %val.addr, align 4, !dbg !5795
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !5796
  %last_cmd = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 22, !dbg !5797
  %4 = load i32, ptr %val.addr, align 4, !dbg !5798
  %call1 = call i32 @azx_command_addr(i32 noundef %4) #11, !dbg !5799
  %idxprom = zext i32 %call1 to i64, !dbg !5796
  %arrayidx = getelementptr [8 x i32], ptr %last_cmd, i64 0, i64 %idxprom, !dbg !5796
  store i32 %2, ptr %arrayidx, align 4, !dbg !5800
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5801
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !5801
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 4, !dbg !5801
  %7 = load ptr, ptr %remap_addr, align 8, !dbg !5801
  %add.ptr = getelementptr i8, ptr %7, i64 72, !dbg !5801
  %call2 = call zeroext i16 @snd_hdac_reg_readw(ptr noundef %5, ptr noundef %add.ptr) #11, !dbg !5801
  %conv = zext i16 %call2 to i32, !dbg !5801
  store i32 %conv, ptr %wp, align 4, !dbg !5802
  %8 = load i32, ptr %wp, align 4, !dbg !5803
  %cmp = icmp eq i32 %8, 65535, !dbg !5805
  br i1 %cmp, label %if.then, label %if.end, !dbg !5806

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5807
  %reg_lock4 = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 32, !dbg !5809
  call void @spin_unlock_irq(ptr noundef %reg_lock4) #11, !dbg !5810
  store i32 -5, ptr %retval, align 4, !dbg !5811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5811

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %wp, align 4, !dbg !5812
  %inc = add i32 %10, 1, !dbg !5812
  store i32 %inc, ptr %wp, align 4, !dbg !5812
  %11 = load i32, ptr %wp, align 4, !dbg !5813
  %rem = urem i32 %11, 256, !dbg !5813
  store i32 %rem, ptr %wp, align 4, !dbg !5813
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !5814
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !5814
  %remap_addr5 = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 4, !dbg !5814
  %14 = load ptr, ptr %remap_addr5, align 8, !dbg !5814
  %add.ptr6 = getelementptr i8, ptr %14, i64 74, !dbg !5814
  %call7 = call zeroext i16 @snd_hdac_reg_readw(ptr noundef %12, ptr noundef %add.ptr6) #11, !dbg !5814
  %conv8 = zext i16 %call7 to i32, !dbg !5814
  store i32 %conv8, ptr %rp, align 4, !dbg !5815
  %15 = load i32, ptr %wp, align 4, !dbg !5816
  %16 = load i32, ptr %rp, align 4, !dbg !5818
  %cmp9 = icmp eq i32 %15, %16, !dbg !5819
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !5820

if.then11:                                        ; preds = %if.end
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !5821
  %reg_lock12 = getelementptr inbounds %struct.hdac_bus, ptr %17, i32 0, i32 32, !dbg !5823
  call void @spin_unlock_irq(ptr noundef %reg_lock12) #11, !dbg !5824
  store i32 -11, ptr %retval, align 4, !dbg !5825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5825

if.end13:                                         ; preds = %if.end
  %18 = load ptr, ptr %bus.addr, align 8, !dbg !5826
  %rirb = getelementptr inbounds %struct.hdac_bus, ptr %18, i32 0, i32 21, !dbg !5827
  %cmds = getelementptr inbounds %struct.hdac_rb, ptr %rirb, i32 0, i32 4, !dbg !5828
  %19 = load i32, ptr %addr, align 4, !dbg !5829
  %idxprom14 = zext i32 %19 to i64, !dbg !5826
  %arrayidx15 = getelementptr [8 x i32], ptr %cmds, i64 0, i64 %idxprom14, !dbg !5826
  %20 = load i32, ptr %arrayidx15, align 4, !dbg !5830
  %inc16 = add i32 %20, 1, !dbg !5830
  store i32 %inc16, ptr %arrayidx15, align 4, !dbg !5830
  %21 = load i32, ptr %val.addr, align 4, !dbg !5831
  %22 = load ptr, ptr %bus.addr, align 8, !dbg !5832
  %corb = getelementptr inbounds %struct.hdac_bus, ptr %22, i32 0, i32 20, !dbg !5833
  %buf = getelementptr inbounds %struct.hdac_rb, ptr %corb, i32 0, i32 0, !dbg !5834
  %23 = load ptr, ptr %buf, align 8, !dbg !5834
  %24 = load i32, ptr %wp, align 4, !dbg !5835
  %idxprom17 = zext i32 %24 to i64, !dbg !5832
  %arrayidx18 = getelementptr i32, ptr %23, i64 %idxprom17, !dbg !5832
  store i32 %21, ptr %arrayidx18, align 4, !dbg !5836
  %25 = load ptr, ptr %bus.addr, align 8, !dbg !5837
  %26 = load ptr, ptr %bus.addr, align 8, !dbg !5837
  %remap_addr19 = getelementptr inbounds %struct.hdac_bus, ptr %26, i32 0, i32 4, !dbg !5837
  %27 = load ptr, ptr %remap_addr19, align 8, !dbg !5837
  %add.ptr20 = getelementptr i8, ptr %27, i64 72, !dbg !5837
  %28 = load i32, ptr %wp, align 4, !dbg !5837
  %conv21 = trunc i32 %28 to i16, !dbg !5837
  call void @snd_hdac_reg_writew(ptr noundef %25, ptr noundef %add.ptr20, i16 noundef zeroext %conv21) #11, !dbg !5837
  %29 = load ptr, ptr %bus.addr, align 8, !dbg !5838
  %reg_lock22 = getelementptr inbounds %struct.hdac_bus, ptr %29, i32 0, i32 32, !dbg !5839
  call void @spin_unlock_irq(ptr noundef %reg_lock22) #11, !dbg !5840
  store i32 0, ptr %retval, align 4, !dbg !5841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5841

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rp) #10, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 4, ptr %wp) #10, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #10, !dbg !5842
  %30 = load i32, ptr %retval, align 4, !dbg !5842
  ret i32 %30, !dbg !5842
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @azx_command_addr(i32 noundef %cmd) #0 align 16 !dbg !5843 {
entry:
  %cmd.addr = alloca i32, align 4
  %addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5847, metadata !DIExpression()), !dbg !5852
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #10, !dbg !5853
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5848, metadata !DIExpression()), !dbg !5854
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5855
  %shr = lshr i32 %0, 28, !dbg !5856
  store i32 %shr, ptr %addr, align 4, !dbg !5854
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5857
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5849, metadata !DIExpression()), !dbg !5857
  %1 = load i32, ptr %addr, align 4, !dbg !5857
  %cmp = icmp uge i32 %1, 8, !dbg !5857
  %lnot = xor i1 %cmp, true, !dbg !5857
  %lnot1 = xor i1 %lnot, true, !dbg !5857
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5857
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5857
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5857
  %tobool = icmp ne i32 %2, 0, !dbg !5857
  %lnot2 = xor i1 %tobool, true, !dbg !5857
  %lnot4 = xor i1 %lnot2, true, !dbg !5857
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5857
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5857
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5857
  store i64 %expval, ptr %tmp, align 8, !dbg !5857
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5858
  %3 = load i64, ptr %tmp, align 8, !dbg !5857
  %tobool6 = icmp ne i64 %3, 0, !dbg !5858
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5859

if.then:                                          ; preds = %entry
  store i32 0, ptr %addr, align 4, !dbg !5860
  br label %if.end, !dbg !5861

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %addr, align 4, !dbg !5862
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #10, !dbg !5863
  ret i32 %4, !dbg !5864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @snd_hdac_reg_readw(ptr noundef %bus, ptr noundef %addr) #5 align 16 !dbg !5865 {
entry:
  %bus.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5869, metadata !DIExpression()), !dbg !5871
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5870, metadata !DIExpression()), !dbg !5872
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5873
  %call = call zeroext i16 @readw(ptr noundef %0) #11, !dbg !5874
  %conv = zext i16 %call to i32, !dbg !5874
  %conv1 = trunc i32 %conv to i16, !dbg !5875
  ret i16 %conv1, !dbg !5876
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_update_rirb(ptr noundef %bus) #0 align 16 !dbg !5406 {
entry:
  %bus.addr = alloca ptr, align 8
  %rp = alloca i32, align 4
  %wp = alloca i32, align 4
  %addr = alloca i32, align 4
  %res = alloca i32, align 4
  %res_ex = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5410, metadata !DIExpression()), !dbg !5877
  call void @llvm.lifetime.start.p0(i64 4, ptr %rp) #10, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %rp, metadata !5411, metadata !DIExpression()), !dbg !5879
  call void @llvm.lifetime.start.p0(i64 4, ptr %wp) #10, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !5412, metadata !DIExpression()), !dbg !5880
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #10, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5413, metadata !DIExpression()), !dbg !5882
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5414, metadata !DIExpression()), !dbg !5884
  call void @llvm.lifetime.start.p0(i64 4, ptr %res_ex) #10, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %res_ex, metadata !5415, metadata !DIExpression()), !dbg !5885
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5886
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5886
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 4, !dbg !5886
  %2 = load ptr, ptr %remap_addr, align 8, !dbg !5886
  %add.ptr = getelementptr i8, ptr %2, i64 88, !dbg !5886
  %call = call zeroext i16 @snd_hdac_reg_readw(ptr noundef %0, ptr noundef %add.ptr) #11, !dbg !5886
  %conv = zext i16 %call to i32, !dbg !5886
  store i32 %conv, ptr %wp, align 4, !dbg !5887
  %3 = load i32, ptr %wp, align 4, !dbg !5888
  %cmp = icmp eq i32 %3, 65535, !dbg !5890
  br i1 %cmp, label %if.then, label %if.end, !dbg !5891

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5892

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %wp, align 4, !dbg !5894
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5896
  %rirb = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 21, !dbg !5897
  %wp2 = getelementptr inbounds %struct.hdac_rb, ptr %rirb, i32 0, i32 3, !dbg !5898
  %6 = load i16, ptr %wp2, align 2, !dbg !5898
  %conv3 = zext i16 %6 to i32, !dbg !5896
  %cmp4 = icmp eq i32 %4, %conv3, !dbg !5899
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !5900

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5901

if.end7:                                          ; preds = %if.end
  %7 = load i32, ptr %wp, align 4, !dbg !5902
  %conv8 = trunc i32 %7 to i16, !dbg !5902
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !5903
  %rirb9 = getelementptr inbounds %struct.hdac_bus, ptr %8, i32 0, i32 21, !dbg !5904
  %wp10 = getelementptr inbounds %struct.hdac_rb, ptr %rirb9, i32 0, i32 3, !dbg !5905
  store i16 %conv8, ptr %wp10, align 2, !dbg !5906
  br label %while.cond, !dbg !5907

while.cond:                                       ; preds = %if.end82, %if.end7
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5908
  %rirb11 = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 21, !dbg !5909
  %rp12 = getelementptr inbounds %struct.hdac_rb, ptr %rirb11, i32 0, i32 2, !dbg !5910
  %10 = load i16, ptr %rp12, align 8, !dbg !5910
  %conv13 = zext i16 %10 to i32, !dbg !5908
  %11 = load i32, ptr %wp, align 4, !dbg !5911
  %cmp14 = icmp ne i32 %conv13, %11, !dbg !5912
  br i1 %cmp14, label %while.body, label %while.end, !dbg !5907

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !5913
  %rirb16 = getelementptr inbounds %struct.hdac_bus, ptr %12, i32 0, i32 21, !dbg !5915
  %rp17 = getelementptr inbounds %struct.hdac_rb, ptr %rirb16, i32 0, i32 2, !dbg !5916
  %13 = load i16, ptr %rp17, align 8, !dbg !5917
  %inc = add i16 %13, 1, !dbg !5917
  store i16 %inc, ptr %rp17, align 8, !dbg !5917
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !5918
  %rirb18 = getelementptr inbounds %struct.hdac_bus, ptr %14, i32 0, i32 21, !dbg !5919
  %rp19 = getelementptr inbounds %struct.hdac_rb, ptr %rirb18, i32 0, i32 2, !dbg !5920
  %15 = load i16, ptr %rp19, align 8, !dbg !5921
  %conv20 = zext i16 %15 to i32, !dbg !5921
  %rem = srem i32 %conv20, 256, !dbg !5921
  %conv21 = trunc i32 %rem to i16, !dbg !5921
  store i16 %conv21, ptr %rp19, align 8, !dbg !5921
  %16 = load ptr, ptr %bus.addr, align 8, !dbg !5922
  %rirb22 = getelementptr inbounds %struct.hdac_bus, ptr %16, i32 0, i32 21, !dbg !5923
  %rp23 = getelementptr inbounds %struct.hdac_rb, ptr %rirb22, i32 0, i32 2, !dbg !5924
  %17 = load i16, ptr %rp23, align 8, !dbg !5924
  %conv24 = zext i16 %17 to i32, !dbg !5922
  %shl = shl i32 %conv24, 1, !dbg !5925
  store i32 %shl, ptr %rp, align 4, !dbg !5926
  %18 = load ptr, ptr %bus.addr, align 8, !dbg !5927
  %rirb25 = getelementptr inbounds %struct.hdac_bus, ptr %18, i32 0, i32 21, !dbg !5927
  %buf = getelementptr inbounds %struct.hdac_rb, ptr %rirb25, i32 0, i32 0, !dbg !5927
  %19 = load ptr, ptr %buf, align 8, !dbg !5927
  %20 = load i32, ptr %rp, align 4, !dbg !5927
  %add = add i32 %20, 1, !dbg !5927
  %idxprom = zext i32 %add to i64, !dbg !5927
  %arrayidx = getelementptr i32, ptr %19, i64 %idxprom, !dbg !5927
  %21 = load i32, ptr %arrayidx, align 4, !dbg !5927
  store i32 %21, ptr %res_ex, align 4, !dbg !5928
  %22 = load ptr, ptr %bus.addr, align 8, !dbg !5929
  %rirb26 = getelementptr inbounds %struct.hdac_bus, ptr %22, i32 0, i32 21, !dbg !5929
  %buf27 = getelementptr inbounds %struct.hdac_rb, ptr %rirb26, i32 0, i32 0, !dbg !5929
  %23 = load ptr, ptr %buf27, align 8, !dbg !5929
  %24 = load i32, ptr %rp, align 4, !dbg !5929
  %idxprom28 = zext i32 %24 to i64, !dbg !5929
  %arrayidx29 = getelementptr i32, ptr %23, i64 %idxprom28, !dbg !5929
  %25 = load i32, ptr %arrayidx29, align 4, !dbg !5929
  store i32 %25, ptr %res, align 4, !dbg !5930
  %26 = load i32, ptr %res_ex, align 4, !dbg !5931
  %and = and i32 %26, 15, !dbg !5932
  store i32 %and, ptr %addr, align 4, !dbg !5933
  %27 = load i32, ptr %addr, align 4, !dbg !5934
  %cmp30 = icmp uge i32 %27, 8, !dbg !5936
  br i1 %cmp30, label %if.then32, label %if.else, !dbg !5937

if.then32:                                        ; preds = %while.body
  br label %do.body, !dbg !5938

do.body:                                          ; preds = %if.then32
  br label %do.cond, !dbg !5941

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5941

do.end:                                           ; preds = %do.cond
  %28 = load ptr, ptr %bus.addr, align 8, !dbg !5938
  %dev = getelementptr inbounds %struct.hdac_bus, ptr %28, i32 0, i32 0, !dbg !5938
  %29 = load ptr, ptr %dev, align 8, !dbg !5938
  %30 = load i32, ptr %res, align 4, !dbg !5938
  %31 = load i32, ptr %res_ex, align 4, !dbg !5938
  %32 = load ptr, ptr %bus.addr, align 8, !dbg !5938
  %rirb33 = getelementptr inbounds %struct.hdac_bus, ptr %32, i32 0, i32 21, !dbg !5938
  %rp34 = getelementptr inbounds %struct.hdac_rb, ptr %rirb33, i32 0, i32 2, !dbg !5938
  %33 = load i16, ptr %rp34, align 8, !dbg !5938
  %conv35 = zext i16 %33 to i32, !dbg !5938
  %34 = load i32, ptr %wp, align 4, !dbg !5938
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef @.str.1, i32 noundef %30, i32 noundef %31, i32 noundef %conv35, i32 noundef %34) #12, !dbg !5938
  br label %do.body36, !dbg !5943

do.body36:                                        ; preds = %do.end
  br label %do.cond37, !dbg !5944

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !5944

do.end38:                                         ; preds = %do.cond37
  br label %if.end82, !dbg !5946

if.else:                                          ; preds = %while.body
  %35 = load i32, ptr %res_ex, align 4, !dbg !5947
  %and39 = and i32 %35, 16, !dbg !5949
  %tobool = icmp ne i32 %and39, 0, !dbg !5949
  br i1 %tobool, label %if.then40, label %if.else41, !dbg !5950

if.then40:                                        ; preds = %if.else
  %36 = load ptr, ptr %bus.addr, align 8, !dbg !5951
  %37 = load i32, ptr %res, align 4, !dbg !5952
  %38 = load i32, ptr %res_ex, align 4, !dbg !5953
  call void @snd_hdac_bus_queue_event(ptr noundef %36, i32 noundef %37, i32 noundef %38) #11, !dbg !5954
  br label %if.end81, !dbg !5954

if.else41:                                        ; preds = %if.else
  %39 = load ptr, ptr %bus.addr, align 8, !dbg !5955
  %rirb42 = getelementptr inbounds %struct.hdac_bus, ptr %39, i32 0, i32 21, !dbg !5957
  %cmds = getelementptr inbounds %struct.hdac_rb, ptr %rirb42, i32 0, i32 4, !dbg !5958
  %40 = load i32, ptr %addr, align 4, !dbg !5959
  %idxprom43 = zext i32 %40 to i64, !dbg !5955
  %arrayidx44 = getelementptr [8 x i32], ptr %cmds, i64 0, i64 %idxprom43, !dbg !5955
  %41 = load i32, ptr %arrayidx44, align 4, !dbg !5955
  %tobool45 = icmp ne i32 %41, 0, !dbg !5955
  br i1 %tobool45, label %if.then46, label %if.else66, !dbg !5960

if.then46:                                        ; preds = %if.else41
  %42 = load i32, ptr %res, align 4, !dbg !5961
  %43 = load ptr, ptr %bus.addr, align 8, !dbg !5963
  %rirb47 = getelementptr inbounds %struct.hdac_bus, ptr %43, i32 0, i32 21, !dbg !5964
  %res48 = getelementptr inbounds %struct.hdac_rb, ptr %rirb47, i32 0, i32 5, !dbg !5965
  %44 = load i32, ptr %addr, align 4, !dbg !5966
  %idxprom49 = zext i32 %44 to i64, !dbg !5963
  %arrayidx50 = getelementptr [8 x i32], ptr %res48, i64 0, i64 %idxprom49, !dbg !5963
  store i32 %42, ptr %arrayidx50, align 4, !dbg !5967
  %45 = load ptr, ptr %bus.addr, align 8, !dbg !5968
  %rirb51 = getelementptr inbounds %struct.hdac_bus, ptr %45, i32 0, i32 21, !dbg !5969
  %cmds52 = getelementptr inbounds %struct.hdac_rb, ptr %rirb51, i32 0, i32 4, !dbg !5970
  %46 = load i32, ptr %addr, align 4, !dbg !5971
  %idxprom53 = zext i32 %46 to i64, !dbg !5968
  %arrayidx54 = getelementptr [8 x i32], ptr %cmds52, i64 0, i64 %idxprom53, !dbg !5968
  %47 = load i32, ptr %arrayidx54, align 4, !dbg !5972
  %dec = add i32 %47, -1, !dbg !5972
  store i32 %dec, ptr %arrayidx54, align 4, !dbg !5972
  %48 = load ptr, ptr %bus.addr, align 8, !dbg !5973
  %rirb55 = getelementptr inbounds %struct.hdac_bus, ptr %48, i32 0, i32 21, !dbg !5975
  %cmds56 = getelementptr inbounds %struct.hdac_rb, ptr %rirb55, i32 0, i32 4, !dbg !5976
  %49 = load i32, ptr %addr, align 4, !dbg !5977
  %idxprom57 = zext i32 %49 to i64, !dbg !5973
  %arrayidx58 = getelementptr [8 x i32], ptr %cmds56, i64 0, i64 %idxprom57, !dbg !5973
  %50 = load i32, ptr %arrayidx58, align 4, !dbg !5973
  %tobool59 = icmp ne i32 %50, 0, !dbg !5973
  br i1 %tobool59, label %if.end65, label %land.lhs.true, !dbg !5978

land.lhs.true:                                    ; preds = %if.then46
  %51 = load ptr, ptr %bus.addr, align 8, !dbg !5979
  %rirb_wq = getelementptr inbounds %struct.hdac_bus, ptr %51, i32 0, i32 23, !dbg !5980
  %call60 = call i32 @waitqueue_active(ptr noundef %rirb_wq) #11, !dbg !5981
  %tobool61 = icmp ne i32 %call60, 0, !dbg !5981
  br i1 %tobool61, label %if.then62, label %if.end65, !dbg !5982

if.then62:                                        ; preds = %land.lhs.true
  %52 = load ptr, ptr %bus.addr, align 8, !dbg !5983
  %rirb_wq63 = getelementptr inbounds %struct.hdac_bus, ptr %52, i32 0, i32 23, !dbg !5983
  %call64 = call i32 @__wake_up(ptr noundef %rirb_wq63, i32 noundef 3, i32 noundef 1, ptr noundef null) #11, !dbg !5983
  br label %if.end65, !dbg !5983

if.end65:                                         ; preds = %if.then62, %land.lhs.true, %if.then46
  br label %if.end80, !dbg !5984

if.else66:                                        ; preds = %if.else41
  br label %do.body67, !dbg !5985

do.body67:                                        ; preds = %if.else66
  %call68 = call i32 @___ratelimit(ptr noundef @snd_hdac_bus_update_rirb._rs, ptr noundef @__func__.snd_hdac_bus_update_rirb) #11, !dbg !5987
  %tobool69 = icmp ne i32 %call68, 0, !dbg !5987
  br i1 %tobool69, label %if.then70, label %if.end77, !dbg !5990

if.then70:                                        ; preds = %do.body67
  br label %do.body71, !dbg !5991

do.body71:                                        ; preds = %if.then70
  br label %do.cond72, !dbg !5993

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5993

do.end73:                                         ; preds = %do.cond72
  %53 = load ptr, ptr %bus.addr, align 8, !dbg !5991
  %dev74 = getelementptr inbounds %struct.hdac_bus, ptr %53, i32 0, i32 0, !dbg !5991
  %54 = load ptr, ptr %dev74, align 8, !dbg !5991
  %55 = load i32, ptr %res, align 4, !dbg !5991
  %56 = load i32, ptr %res_ex, align 4, !dbg !5991
  %57 = load ptr, ptr %bus.addr, align 8, !dbg !5991
  %last_cmd = getelementptr inbounds %struct.hdac_bus, ptr %57, i32 0, i32 22, !dbg !5991
  %58 = load i32, ptr %addr, align 4, !dbg !5991
  %idxprom75 = zext i32 %58 to i64, !dbg !5991
  %arrayidx76 = getelementptr [8 x i32], ptr %last_cmd, i64 0, i64 %idxprom75, !dbg !5991
  %59 = load i32, ptr %arrayidx76, align 4, !dbg !5991
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef @.str.2, i32 noundef %55, i32 noundef %56, i32 noundef %59) #12, !dbg !5991
  br label %if.end77, !dbg !5987

if.end77:                                         ; preds = %do.end73, %do.body67
  br label %do.cond78, !dbg !5990

do.cond78:                                        ; preds = %if.end77
  br label %do.end79, !dbg !5990

do.end79:                                         ; preds = %do.cond78
  br label %if.end80

if.end80:                                         ; preds = %do.end79, %if.end65
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then40
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %do.end38
  br label %while.cond, !dbg !5907, !llvm.loop !5995

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5997
  br label %cleanup, !dbg !5997

cleanup:                                          ; preds = %while.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res_ex) #10, !dbg !5997
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10, !dbg !5997
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #10, !dbg !5997
  call void @llvm.lifetime.end.p0(i64 4, ptr %wp) #10, !dbg !5997
  call void @llvm.lifetime.end.p0(i64 4, ptr %rp) #10, !dbg !5997
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5997

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5998 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6002 dso_local void @snd_hdac_bus_queue_event(ptr noundef, i32 noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @waitqueue_active(ptr noundef %wq_head) #5 align 16 !dbg !6006 {
entry:
  %wq_head.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  %0 = load ptr, ptr %wq_head.addr, align 8, !dbg !6013
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, !dbg !6014
  %call = call i32 @list_empty(ptr noundef %head) #11, !dbg !6015
  %tobool = icmp ne i32 %call, 0, !dbg !6016
  %lnot = xor i1 %tobool, true, !dbg !6016
  %lnot.ext = zext i1 %lnot to i32, !dbg !6016
  ret i32 %lnot.ext, !dbg !6017
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6018 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6021 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_get_response(ptr noundef %bus, i32 noundef %addr, ptr noundef %res) #0 align 16 !dbg !6025 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %timeout = alloca i64, align 8
  %loopcounter = alloca i64, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %warned = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6027, metadata !DIExpression()), !dbg !6046
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6028, metadata !DIExpression()), !dbg !6047
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6029, metadata !DIExpression()), !dbg !6048
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #10, !dbg !6049
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !6030, metadata !DIExpression()), !dbg !6050
  call void @llvm.lifetime.start.p0(i64 8, ptr %loopcounter) #10, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %loopcounter, metadata !6031, metadata !DIExpression()), !dbg !6052
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #10, !dbg !6053
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !6032, metadata !DIExpression()), !dbg !6054
  call void @llvm.lifetime.start.p0(i64 1, ptr %warned) #10, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %warned, metadata !6045, metadata !DIExpression()), !dbg !6056
  store i8 0, ptr %warned, align 1, !dbg !6056
  call void @init_wait_entry(ptr noundef %wait, i32 noundef 0) #11, !dbg !6057
  %0 = load volatile i64, ptr @jiffies, align 64, !dbg !6058
  %call = call i64 @msecs_to_jiffies(i32 noundef 1000) #11, !dbg !6059
  %add = add i64 %0, %call, !dbg !6060
  store i64 %add, ptr %timeout, align 8, !dbg !6061
  store i64 0, ptr %loopcounter, align 8, !dbg !6062
  br label %for.cond, !dbg !6064

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6065
  %reg_lock = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 32, !dbg !6068
  call void @spin_lock_irq(ptr noundef %reg_lock) #11, !dbg !6069
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !6070
  %polling_mode = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 28, !dbg !6072
  %bf.load = load i16, ptr %polling_mode, align 8, !dbg !6072
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !6072
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6072
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !6072
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !6073

if.then:                                          ; preds = %for.cond
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !6074
  %rirb_wq = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 23, !dbg !6075
  call void @prepare_to_wait(ptr noundef %rirb_wq, ptr noundef %wait, i32 noundef 2) #11, !dbg !6076
  br label %if.end, !dbg !6076

if.end:                                           ; preds = %if.then, %for.cond
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !6077
  %polling_mode1 = getelementptr inbounds %struct.hdac_bus, ptr %4, i32 0, i32 28, !dbg !6079
  %bf.load2 = load i16, ptr %polling_mode1, align 8, !dbg !6079
  %bf.lshr3 = lshr i16 %bf.load2, 8, !dbg !6079
  %bf.clear4 = and i16 %bf.lshr3, 1, !dbg !6079
  %bf.cast5 = trunc i16 %bf.clear4 to i1, !dbg !6079
  br i1 %bf.cast5, label %if.then6, label %if.end7, !dbg !6080

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6081
  call void @snd_hdac_bus_update_rirb(ptr noundef %5) #11, !dbg !6082
  br label %if.end7, !dbg !6082

if.end7:                                          ; preds = %if.then6, %if.end
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !6083
  %rirb = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 21, !dbg !6085
  %cmds = getelementptr inbounds %struct.hdac_rb, ptr %rirb, i32 0, i32 4, !dbg !6086
  %7 = load i32, ptr %addr.addr, align 4, !dbg !6087
  %idxprom = zext i32 %7 to i64, !dbg !6083
  %arrayidx = getelementptr [8 x i32], ptr %cmds, i64 0, i64 %idxprom, !dbg !6083
  %8 = load i32, ptr %arrayidx, align 4, !dbg !6083
  %tobool = icmp ne i32 %8, 0, !dbg !6083
  br i1 %tobool, label %if.end25, label %if.then8, !dbg !6088

if.then8:                                         ; preds = %if.end7
  %9 = load ptr, ptr %res.addr, align 8, !dbg !6089
  %tobool9 = icmp ne ptr %9, null, !dbg !6089
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !6092

if.then10:                                        ; preds = %if.then8
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !6093
  %rirb11 = getelementptr inbounds %struct.hdac_bus, ptr %10, i32 0, i32 21, !dbg !6094
  %res12 = getelementptr inbounds %struct.hdac_rb, ptr %rirb11, i32 0, i32 5, !dbg !6095
  %11 = load i32, ptr %addr.addr, align 4, !dbg !6096
  %idxprom13 = zext i32 %11 to i64, !dbg !6093
  %arrayidx14 = getelementptr [8 x i32], ptr %res12, i64 0, i64 %idxprom13, !dbg !6093
  %12 = load i32, ptr %arrayidx14, align 4, !dbg !6093
  %13 = load ptr, ptr %res.addr, align 8, !dbg !6097
  store i32 %12, ptr %13, align 4, !dbg !6098
  br label %if.end15, !dbg !6099

if.end15:                                         ; preds = %if.then10, %if.then8
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !6100
  %polling_mode16 = getelementptr inbounds %struct.hdac_bus, ptr %14, i32 0, i32 28, !dbg !6102
  %bf.load17 = load i16, ptr %polling_mode16, align 8, !dbg !6102
  %bf.lshr18 = lshr i16 %bf.load17, 8, !dbg !6102
  %bf.clear19 = and i16 %bf.lshr18, 1, !dbg !6102
  %bf.cast20 = trunc i16 %bf.clear19 to i1, !dbg !6102
  br i1 %bf.cast20, label %if.end23, label %if.then21, !dbg !6103

if.then21:                                        ; preds = %if.end15
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !6104
  %rirb_wq22 = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 23, !dbg !6105
  call void @finish_wait(ptr noundef %rirb_wq22, ptr noundef %wait) #11, !dbg !6106
  br label %if.end23, !dbg !6106

if.end23:                                         ; preds = %if.then21, %if.end15
  %16 = load ptr, ptr %bus.addr, align 8, !dbg !6107
  %reg_lock24 = getelementptr inbounds %struct.hdac_bus, ptr %16, i32 0, i32 32, !dbg !6108
  call void @spin_unlock_irq(ptr noundef %reg_lock24) #11, !dbg !6109
  store i32 0, ptr %retval, align 4, !dbg !6110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6110

if.end25:                                         ; preds = %if.end7
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !6111
  %reg_lock26 = getelementptr inbounds %struct.hdac_bus, ptr %17, i32 0, i32 32, !dbg !6112
  call void @spin_unlock_irq(ptr noundef %reg_lock26) #11, !dbg !6113
  %18 = load i64, ptr %timeout, align 8, !dbg !6114
  %19 = load volatile i64, ptr @jiffies, align 64, !dbg !6114
  %sub = sub i64 %18, %19, !dbg !6114
  %cmp = icmp slt i64 %sub, 0, !dbg !6114
  br i1 %cmp, label %if.then27, label %if.end28, !dbg !6116

if.then27:                                        ; preds = %if.end25
  br label %for.end, !dbg !6117

if.end28:                                         ; preds = %if.end25
  %20 = load ptr, ptr %bus.addr, align 8, !dbg !6118
  %polling_mode29 = getelementptr inbounds %struct.hdac_bus, ptr %20, i32 0, i32 28, !dbg !6120
  %bf.load30 = load i16, ptr %polling_mode29, align 8, !dbg !6120
  %bf.lshr31 = lshr i16 %bf.load30, 8, !dbg !6120
  %bf.clear32 = and i16 %bf.lshr31, 1, !dbg !6120
  %bf.cast33 = trunc i16 %bf.clear32 to i1, !dbg !6120
  br i1 %bf.cast33, label %if.else, label %if.then34, !dbg !6121

if.then34:                                        ; preds = %if.end28
  %call35 = call i64 @msecs_to_jiffies(i32 noundef 2) #11, !dbg !6122
  %call36 = call i64 @schedule_timeout(i64 noundef %call35) #11, !dbg !6124
  br label %if.end50, !dbg !6125

if.else:                                          ; preds = %if.end28
  %21 = load ptr, ptr %bus.addr, align 8, !dbg !6126
  %needs_damn_long_delay = getelementptr inbounds %struct.hdac_bus, ptr %21, i32 0, i32 28, !dbg !6128
  %bf.load37 = load i16, ptr %needs_damn_long_delay, align 8, !dbg !6128
  %bf.lshr38 = lshr i16 %bf.load37, 9, !dbg !6128
  %bf.clear39 = and i16 %bf.lshr38, 1, !dbg !6128
  %bf.cast40 = trunc i16 %bf.clear39 to i1, !dbg !6128
  br i1 %bf.cast40, label %if.then42, label %lor.lhs.false, !dbg !6129

lor.lhs.false:                                    ; preds = %if.else
  %22 = load i64, ptr %loopcounter, align 8, !dbg !6130
  %cmp41 = icmp ugt i64 %22, 3000, !dbg !6131
  br i1 %cmp41, label %if.then42, label %if.else47, !dbg !6132

if.then42:                                        ; preds = %lor.lhs.false, %if.else
  %23 = load i64, ptr %loopcounter, align 8, !dbg !6133
  %cmp43 = icmp ugt i64 %23, 3000, !dbg !6136
  br i1 %cmp43, label %land.lhs.true, label %if.end46, !dbg !6137

land.lhs.true:                                    ; preds = %if.then42
  %24 = load i8, ptr %warned, align 1, !dbg !6138, !range !6139, !noundef !915
  %tobool44 = trunc i8 %24 to i1, !dbg !6138
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !6140

if.then45:                                        ; preds = %land.lhs.true
  store i8 1, ptr %warned, align 1, !dbg !6141
  br label %if.end46, !dbg !6143

if.end46:                                         ; preds = %if.then45, %land.lhs.true, %if.then42
  call void @msleep(i32 noundef 2) #11, !dbg !6144
  br label %if.end49, !dbg !6145

if.else47:                                        ; preds = %lor.lhs.false
  call void @__const_udelay(i64 noundef 42950) #11, !dbg !6146
  call void @__might_resched(ptr noundef @.str, i32 noundef 287, i32 noundef 0) #11, !dbg !6152
  %call48 = call i32 @_cond_resched() #11, !dbg !6152
  store i32 %call48, ptr %tmp, align 4, !dbg !6152
  %25 = load i32, ptr %tmp, align 4, !dbg !6152
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.end46
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then34
  br label %for.inc, !dbg !6154

for.inc:                                          ; preds = %if.end50
  %26 = load i64, ptr %loopcounter, align 8, !dbg !6155
  %inc = add i64 %26, 1, !dbg !6155
  store i64 %inc, ptr %loopcounter, align 8, !dbg !6155
  br label %for.cond, !dbg !6156, !llvm.loop !6157

for.end:                                          ; preds = %if.then27
  %27 = load ptr, ptr %bus.addr, align 8, !dbg !6160
  %polling_mode51 = getelementptr inbounds %struct.hdac_bus, ptr %27, i32 0, i32 28, !dbg !6162
  %bf.load52 = load i16, ptr %polling_mode51, align 8, !dbg !6162
  %bf.lshr53 = lshr i16 %bf.load52, 8, !dbg !6162
  %bf.clear54 = and i16 %bf.lshr53, 1, !dbg !6162
  %bf.cast55 = trunc i16 %bf.clear54 to i1, !dbg !6162
  br i1 %bf.cast55, label %if.end58, label %if.then56, !dbg !6163

if.then56:                                        ; preds = %for.end
  %28 = load ptr, ptr %bus.addr, align 8, !dbg !6164
  %rirb_wq57 = getelementptr inbounds %struct.hdac_bus, ptr %28, i32 0, i32 23, !dbg !6165
  call void @finish_wait(ptr noundef %rirb_wq57, ptr noundef %wait) #11, !dbg !6166
  br label %if.end58, !dbg !6166

if.end58:                                         ; preds = %if.then56, %for.end
  store i32 -5, ptr %retval, align 4, !dbg !6167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6167

cleanup:                                          ; preds = %if.end58, %if.end23
  call void @llvm.lifetime.end.p0(i64 1, ptr %warned) #10, !dbg !6168
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #10, !dbg !6168
  call void @llvm.lifetime.end.p0(i64 8, ptr %loopcounter) #10, !dbg !6168
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #10, !dbg !6168
  %29 = load i32, ptr %retval, align 4, !dbg !6168
  ret i32 %29, !dbg !6168
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6169 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #4 align 16 !dbg !6172 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6177, metadata !DIExpression()), !dbg !6178
  %0 = load i32, ptr %m.addr, align 4, !dbg !6179
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6181
  br i1 %1, label %if.then, label %if.else, !dbg !6182

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !6183
  %cmp = icmp slt i32 %2, 0, !dbg !6186
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6187

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !6188
  br label %return, !dbg !6188

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !6189
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #11, !dbg !6190
  store i64 %call, ptr %retval, align 8, !dbg !6191
  br label %return, !dbg !6191

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !6192
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #11, !dbg !6194
  store i64 %call2, ptr %retval, align 8, !dbg !6195
  br label %return, !dbg !6195

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !6196
  ret i64 %5, !dbg !6196
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6197 dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6200 dso_local void @finish_wait(ptr noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6203 dso_local i64 @schedule_timeout(i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6206 dso_local void @msleep(i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6210 dso_local void @__const_udelay(i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #5 align 16 !dbg !6214 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6219, metadata !DIExpression()), !dbg !6222
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !6220, metadata !DIExpression()), !dbg !6223
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !6221, metadata !DIExpression()), !dbg !6224
  ret void, !dbg !6225
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #4 align 16 !dbg !5469 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !6226
  %0 = load ptr, ptr %tmp, align 8, !dbg !6226
  %call = call i32 %0() #11, !dbg !6228
  ret i32 %call, !dbg !6229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_parse_capabilities(ptr noundef %bus) #0 align 16 !dbg !6230 {
entry:
  %bus.addr = alloca ptr, align 8
  %cur_cap = alloca i32, align 4
  %offset = alloca i32, align 4
  %counter = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6234, metadata !DIExpression()), !dbg !6238
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_cap) #10, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %cur_cap, metadata !6235, metadata !DIExpression()), !dbg !6240
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #10, !dbg !6241
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6236, metadata !DIExpression()), !dbg !6242
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #10, !dbg !6243
  call void @llvm.dbg.declare(metadata ptr %counter, metadata !6237, metadata !DIExpression()), !dbg !6244
  store i32 0, ptr %counter, align 4, !dbg !6244
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6245
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6245
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 4, !dbg !6245
  %2 = load ptr, ptr %remap_addr, align 8, !dbg !6245
  %add.ptr = getelementptr i8, ptr %2, i64 20, !dbg !6245
  %call = call zeroext i16 @snd_hdac_reg_readw(ptr noundef %0, ptr noundef %add.ptr) #11, !dbg !6245
  %conv = zext i16 %call to i32, !dbg !6245
  store i32 %conv, ptr %offset, align 4, !dbg !6246
  br label %do.body, !dbg !6247

do.body:                                          ; preds = %do.cond34, %entry
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !6248
  %remap_addr1 = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 4, !dbg !6248
  %4 = load ptr, ptr %remap_addr1, align 8, !dbg !6248
  %5 = load i32, ptr %offset, align 4, !dbg !6248
  %idx.ext = zext i32 %5 to i64, !dbg !6248
  %add.ptr2 = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !6248
  %call3 = call i32 @readl(ptr noundef %add.ptr2) #11, !dbg !6248
  store i32 %call3, ptr %cur_cap, align 4, !dbg !6250
  %6 = load i32, ptr %cur_cap, align 4, !dbg !6251
  %cmp = icmp eq i32 %6, -1, !dbg !6253
  br i1 %cmp, label %if.then, label %if.end, !dbg !6254

if.then:                                          ; preds = %do.body
  br label %do.end35, !dbg !6255

if.end:                                           ; preds = %do.body
  %7 = load i32, ptr %cur_cap, align 4, !dbg !6257
  %and = and i32 %7, 268369920, !dbg !6258
  %shr = lshr i32 %and, 16, !dbg !6259
  switch i32 %shr, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
    i32 3, label %sw.bb12
    i32 4, label %sw.bb16
    i32 5, label %sw.bb20
  ], !dbg !6260

sw.bb:                                            ; preds = %if.end
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !6261
  %remap_addr5 = getelementptr inbounds %struct.hdac_bus, ptr %8, i32 0, i32 4, !dbg !6263
  %9 = load ptr, ptr %remap_addr5, align 8, !dbg !6263
  %10 = load i32, ptr %offset, align 4, !dbg !6264
  %idx.ext6 = zext i32 %10 to i64, !dbg !6265
  %add.ptr7 = getelementptr i8, ptr %9, i64 %idx.ext6, !dbg !6265
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !6266
  %mlcap = getelementptr inbounds %struct.hdac_bus, ptr %11, i32 0, i32 8, !dbg !6267
  store ptr %add.ptr7, ptr %mlcap, align 8, !dbg !6268
  br label %sw.epilog, !dbg !6269

sw.bb8:                                           ; preds = %if.end
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !6270
  %remap_addr9 = getelementptr inbounds %struct.hdac_bus, ptr %12, i32 0, i32 4, !dbg !6271
  %13 = load ptr, ptr %remap_addr9, align 8, !dbg !6271
  %14 = load i32, ptr %offset, align 4, !dbg !6272
  %idx.ext10 = zext i32 %14 to i64, !dbg !6273
  %add.ptr11 = getelementptr i8, ptr %13, i64 %idx.ext10, !dbg !6273
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !6274
  %gtscap = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 9, !dbg !6275
  store ptr %add.ptr11, ptr %gtscap, align 8, !dbg !6276
  br label %sw.epilog, !dbg !6277

sw.bb12:                                          ; preds = %if.end
  %16 = load ptr, ptr %bus.addr, align 8, !dbg !6278
  %remap_addr13 = getelementptr inbounds %struct.hdac_bus, ptr %16, i32 0, i32 4, !dbg !6279
  %17 = load ptr, ptr %remap_addr13, align 8, !dbg !6279
  %18 = load i32, ptr %offset, align 4, !dbg !6280
  %idx.ext14 = zext i32 %18 to i64, !dbg !6281
  %add.ptr15 = getelementptr i8, ptr %17, i64 %idx.ext14, !dbg !6281
  %19 = load ptr, ptr %bus.addr, align 8, !dbg !6282
  %ppcap = getelementptr inbounds %struct.hdac_bus, ptr %19, i32 0, i32 6, !dbg !6283
  store ptr %add.ptr15, ptr %ppcap, align 8, !dbg !6284
  br label %sw.epilog, !dbg !6285

sw.bb16:                                          ; preds = %if.end
  %20 = load ptr, ptr %bus.addr, align 8, !dbg !6286
  %remap_addr17 = getelementptr inbounds %struct.hdac_bus, ptr %20, i32 0, i32 4, !dbg !6287
  %21 = load ptr, ptr %remap_addr17, align 8, !dbg !6287
  %22 = load i32, ptr %offset, align 4, !dbg !6288
  %idx.ext18 = zext i32 %22 to i64, !dbg !6289
  %add.ptr19 = getelementptr i8, ptr %21, i64 %idx.ext18, !dbg !6289
  %23 = load ptr, ptr %bus.addr, align 8, !dbg !6290
  %spbcap = getelementptr inbounds %struct.hdac_bus, ptr %23, i32 0, i32 7, !dbg !6291
  store ptr %add.ptr19, ptr %spbcap, align 8, !dbg !6292
  br label %sw.epilog, !dbg !6293

sw.bb20:                                          ; preds = %if.end
  %24 = load ptr, ptr %bus.addr, align 8, !dbg !6294
  %remap_addr21 = getelementptr inbounds %struct.hdac_bus, ptr %24, i32 0, i32 4, !dbg !6295
  %25 = load ptr, ptr %remap_addr21, align 8, !dbg !6295
  %26 = load i32, ptr %offset, align 4, !dbg !6296
  %idx.ext22 = zext i32 %26 to i64, !dbg !6297
  %add.ptr23 = getelementptr i8, ptr %25, i64 %idx.ext22, !dbg !6297
  %27 = load ptr, ptr %bus.addr, align 8, !dbg !6298
  %drsmcap = getelementptr inbounds %struct.hdac_bus, ptr %27, i32 0, i32 10, !dbg !6299
  store ptr %add.ptr23, ptr %drsmcap, align 8, !dbg !6300
  br label %sw.epilog, !dbg !6301

sw.default:                                       ; preds = %if.end
  br label %do.body24, !dbg !6302

do.body24:                                        ; preds = %sw.default
  br label %do.cond, !dbg !6304

do.cond:                                          ; preds = %do.body24
  br label %do.end, !dbg !6304

do.end:                                           ; preds = %do.cond
  %28 = load ptr, ptr %bus.addr, align 8, !dbg !6302
  %dev = getelementptr inbounds %struct.hdac_bus, ptr %28, i32 0, i32 0, !dbg !6302
  %29 = load ptr, ptr %dev, align 8, !dbg !6302
  %30 = load i32, ptr %cur_cap, align 4, !dbg !6302
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef @.str.3, i32 noundef %30) #12, !dbg !6302
  store i32 0, ptr %cur_cap, align 4, !dbg !6306
  br label %sw.epilog, !dbg !6307

sw.epilog:                                        ; preds = %do.end, %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb
  %31 = load i32, ptr %counter, align 4, !dbg !6308
  %inc = add i32 %31, 1, !dbg !6308
  store i32 %inc, ptr %counter, align 4, !dbg !6308
  %32 = load i32, ptr %counter, align 4, !dbg !6309
  %cmp25 = icmp ugt i32 %32, 10, !dbg !6311
  br i1 %cmp25, label %if.then27, label %if.end32, !dbg !6312

if.then27:                                        ; preds = %sw.epilog
  br label %do.body28, !dbg !6313

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !6316

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !6316

do.end30:                                         ; preds = %do.cond29
  %33 = load ptr, ptr %bus.addr, align 8, !dbg !6313
  %dev31 = getelementptr inbounds %struct.hdac_bus, ptr %33, i32 0, i32 0, !dbg !6313
  %34 = load ptr, ptr %dev31, align 8, !dbg !6313
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef @.str.4) #12, !dbg !6313
  br label %do.end35, !dbg !6318

if.end32:                                         ; preds = %sw.epilog
  %35 = load i32, ptr %cur_cap, align 4, !dbg !6319
  %and33 = and i32 %35, 65535, !dbg !6320
  store i32 %and33, ptr %offset, align 4, !dbg !6321
  br label %do.cond34, !dbg !6322

do.cond34:                                        ; preds = %if.end32
  %36 = load i32, ptr %offset, align 4, !dbg !6323
  %tobool = icmp ne i32 %36, 0, !dbg !6322
  br i1 %tobool, label %do.body, label %do.end35, !dbg !6322, !llvm.loop !6324

do.end35:                                         ; preds = %do.cond34, %do.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #10, !dbg !6326
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #10, !dbg !6326
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_cap) #10, !dbg !6326
  ret i32 0, !dbg !6327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_enter_link_reset(ptr noundef %bus) #0 align 16 !dbg !6328 {
entry:
  %bus.addr = alloca ptr, align 8
  %timeout = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6330, metadata !DIExpression()), !dbg !6332
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #10, !dbg !6333
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !6331, metadata !DIExpression()), !dbg !6334
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6335
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4, !dbg !6335
  %1 = load ptr, ptr %remap_addr, align 8, !dbg !6335
  %add.ptr = getelementptr i8, ptr %1, i64 8, !dbg !6335
  %call = call i32 @readl(ptr noundef %add.ptr) #11, !dbg !6335
  %and = and i32 %call, -2, !dbg !6335
  %or = or i32 %and, 0, !dbg !6335
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !6335
  %remap_addr1 = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 4, !dbg !6335
  %3 = load ptr, ptr %remap_addr1, align 8, !dbg !6335
  %add.ptr2 = getelementptr i8, ptr %3, i64 8, !dbg !6335
  call void @writel(i32 noundef %or, ptr noundef %add.ptr2) #11, !dbg !6335
  %4 = load volatile i64, ptr @jiffies, align 64, !dbg !6336
  %call3 = call i64 @msecs_to_jiffies(i32 noundef 100) #11, !dbg !6337
  %add = add i64 %4, %call3, !dbg !6338
  store i64 %add, ptr %timeout, align 8, !dbg !6339
  br label %while.cond, !dbg !6340

while.cond:                                       ; preds = %while.body, %entry
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6341
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !6341
  %remap_addr4 = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 4, !dbg !6341
  %7 = load ptr, ptr %remap_addr4, align 8, !dbg !6341
  %add.ptr5 = getelementptr i8, ptr %7, i64 8, !dbg !6341
  %call6 = call zeroext i8 @snd_hdac_reg_readb(ptr noundef %5, ptr noundef %add.ptr5) #11, !dbg !6341
  %conv = zext i8 %call6 to i32, !dbg !6341
  %and7 = and i32 %conv, 1, !dbg !6342
  %tobool = icmp ne i32 %and7, 0, !dbg !6342
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6343

land.rhs:                                         ; preds = %while.cond
  %8 = load volatile i64, ptr @jiffies, align 64, !dbg !6344
  %9 = load i64, ptr %timeout, align 8, !dbg !6344
  %sub = sub i64 %8, %9, !dbg !6344
  %cmp = icmp slt i64 %sub, 0, !dbg !6344
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !6345
  br i1 %10, label %while.body, label %while.end, !dbg !6340

while.body:                                       ; preds = %land.end
  call void @usleep_range(i64 noundef 500, i64 noundef 1000) #11, !dbg !6346
  br label %while.cond, !dbg !6340, !llvm.loop !6347

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #10, !dbg !6349
  ret void, !dbg !6349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @snd_hdac_reg_readb(ptr noundef %bus, ptr noundef %addr) #5 align 16 !dbg !6350 {
entry:
  %bus.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6354, metadata !DIExpression()), !dbg !6356
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6355, metadata !DIExpression()), !dbg !6357
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6358
  %call = call zeroext i8 @readb(ptr noundef %0) #11, !dbg !6359
  %conv = zext i8 %call to i32, !dbg !6359
  %conv1 = trunc i32 %conv to i8, !dbg !6360
  ret i8 %conv1, !dbg !6361
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usleep_range(i64 noundef %min, i64 noundef %max) #5 align 16 !dbg !6362 {
entry:
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store i64 %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !6366, metadata !DIExpression()), !dbg !6368
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !6367, metadata !DIExpression()), !dbg !6369
  %0 = load i64, ptr %min.addr, align 8, !dbg !6370
  %1 = load i64, ptr %max.addr, align 8, !dbg !6371
  call void @usleep_range_state(i64 noundef %0, i64 noundef %1, i32 noundef 2) #11, !dbg !6372
  ret void, !dbg !6373
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_exit_link_reset(ptr noundef %bus) #0 align 16 !dbg !6374 {
entry:
  %bus.addr = alloca ptr, align 8
  %timeout = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6376, metadata !DIExpression()), !dbg !6378
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #10, !dbg !6379
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !6377, metadata !DIExpression()), !dbg !6380
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6381
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6381
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 4, !dbg !6381
  %2 = load ptr, ptr %remap_addr, align 8, !dbg !6381
  %add.ptr = getelementptr i8, ptr %2, i64 8, !dbg !6381
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !6381
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !6381
  %remap_addr1 = getelementptr inbounds %struct.hdac_bus, ptr %4, i32 0, i32 4, !dbg !6381
  %5 = load ptr, ptr %remap_addr1, align 8, !dbg !6381
  %add.ptr2 = getelementptr i8, ptr %5, i64 8, !dbg !6381
  %call = call zeroext i8 @snd_hdac_reg_readb(ptr noundef %3, ptr noundef %add.ptr2) #11, !dbg !6381
  %conv = zext i8 %call to i32, !dbg !6381
  %and = and i32 %conv, -2, !dbg !6381
  %or = or i32 %and, 1, !dbg !6381
  %conv3 = trunc i32 %or to i8, !dbg !6381
  call void @snd_hdac_reg_writeb(ptr noundef %0, ptr noundef %add.ptr, i8 noundef zeroext %conv3) #11, !dbg !6381
  %6 = load volatile i64, ptr @jiffies, align 64, !dbg !6382
  %call4 = call i64 @msecs_to_jiffies(i32 noundef 100) #11, !dbg !6383
  %add = add i64 %6, %call4, !dbg !6384
  store i64 %add, ptr %timeout, align 8, !dbg !6385
  br label %while.cond, !dbg !6386

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !6387
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !6387
  %remap_addr5 = getelementptr inbounds %struct.hdac_bus, ptr %8, i32 0, i32 4, !dbg !6387
  %9 = load ptr, ptr %remap_addr5, align 8, !dbg !6387
  %add.ptr6 = getelementptr i8, ptr %9, i64 8, !dbg !6387
  %call7 = call zeroext i8 @snd_hdac_reg_readb(ptr noundef %7, ptr noundef %add.ptr6) #11, !dbg !6387
  %tobool = icmp ne i8 %call7, 0, !dbg !6387
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6388

land.rhs:                                         ; preds = %while.cond
  %10 = load volatile i64, ptr @jiffies, align 64, !dbg !6389
  %11 = load i64, ptr %timeout, align 8, !dbg !6389
  %sub = sub i64 %10, %11, !dbg !6389
  %cmp = icmp slt i64 %sub, 0, !dbg !6389
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !6390
  br i1 %12, label %while.body, label %while.end, !dbg !6386

while.body:                                       ; preds = %land.end
  call void @usleep_range(i64 noundef 500, i64 noundef 1000) #11, !dbg !6391
  br label %while.cond, !dbg !6386, !llvm.loop !6392

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #10, !dbg !6394
  ret void, !dbg !6394
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_reset_link(ptr noundef %bus, i1 noundef zeroext %full_reset) #0 align 16 !dbg !6395 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %full_reset.addr = alloca i8, align 1
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6399, metadata !DIExpression()), !dbg !6402
  %frombool = zext i1 %full_reset to i8
  store i8 %frombool, ptr %full_reset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %full_reset.addr, metadata !6400, metadata !DIExpression()), !dbg !6403
  %0 = load i8, ptr %full_reset.addr, align 1, !dbg !6404, !range !6139, !noundef !915
  %tobool = trunc i8 %0 to i1, !dbg !6404
  br i1 %tobool, label %if.end, label %if.then, !dbg !6406

if.then:                                          ; preds = %entry
  br label %skip_reset, !dbg !6407

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6408
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !6408
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 4, !dbg !6408
  %3 = load ptr, ptr %remap_addr, align 8, !dbg !6408
  %add.ptr = getelementptr i8, ptr %3, i64 8, !dbg !6408
  %call = call zeroext i8 @snd_hdac_reg_readb(ptr noundef %1, ptr noundef %add.ptr) #11, !dbg !6408
  %conv = zext i8 %call to i32, !dbg !6408
  %and = and i32 %conv, 1, !dbg !6410
  %tobool1 = icmp ne i32 %and, 0, !dbg !6410
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !6411

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !6412
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6412
  %remap_addr3 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 4, !dbg !6412
  %6 = load ptr, ptr %remap_addr3, align 8, !dbg !6412
  %add.ptr4 = getelementptr i8, ptr %6, i64 14, !dbg !6412
  call void @snd_hdac_reg_writew(ptr noundef %4, ptr noundef %add.ptr4, i16 noundef zeroext 255) #11, !dbg !6412
  br label %if.end5, !dbg !6412

if.end5:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !6413
  call void @snd_hdac_bus_enter_link_reset(ptr noundef %7) #11, !dbg !6414
  call void @usleep_range(i64 noundef 500, i64 noundef 1000) #11, !dbg !6415
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !6416
  call void @snd_hdac_bus_exit_link_reset(ptr noundef %8) #11, !dbg !6417
  call void @usleep_range(i64 noundef 1000, i64 noundef 1200) #11, !dbg !6418
  br label %skip_reset, !dbg !6418

skip_reset:                                       ; preds = %if.end5, %if.then
  call void @llvm.dbg.label(metadata !6401), !dbg !6419
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !6420
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !6420
  %remap_addr6 = getelementptr inbounds %struct.hdac_bus, ptr %10, i32 0, i32 4, !dbg !6420
  %11 = load ptr, ptr %remap_addr6, align 8, !dbg !6420
  %add.ptr7 = getelementptr i8, ptr %11, i64 8, !dbg !6420
  %call8 = call zeroext i8 @snd_hdac_reg_readb(ptr noundef %9, ptr noundef %add.ptr7) #11, !dbg !6420
  %tobool9 = icmp ne i8 %call8, 0, !dbg !6420
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6422

if.then10:                                        ; preds = %skip_reset
  store i32 -16, ptr %retval, align 4, !dbg !6423
  br label %return, !dbg !6423

if.end11:                                         ; preds = %skip_reset
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !6425
  %codec_mask = getelementptr inbounds %struct.hdac_bus, ptr %12, i32 0, i32 18, !dbg !6427
  %13 = load i64, ptr %codec_mask, align 8, !dbg !6427
  %tobool12 = icmp ne i64 %13, 0, !dbg !6425
  br i1 %tobool12, label %if.end19, label %if.then13, !dbg !6428

if.then13:                                        ; preds = %if.end11
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !6429
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !6429
  %remap_addr14 = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 4, !dbg !6429
  %16 = load ptr, ptr %remap_addr14, align 8, !dbg !6429
  %add.ptr15 = getelementptr i8, ptr %16, i64 14, !dbg !6429
  %call16 = call zeroext i16 @snd_hdac_reg_readw(ptr noundef %14, ptr noundef %add.ptr15) #11, !dbg !6429
  %conv17 = zext i16 %call16 to i64, !dbg !6429
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !6431
  %codec_mask18 = getelementptr inbounds %struct.hdac_bus, ptr %17, i32 0, i32 18, !dbg !6432
  store i64 %conv17, ptr %codec_mask18, align 8, !dbg !6433
  br label %if.end19, !dbg !6434

if.end19:                                         ; preds = %if.then13, %if.end11
  store i32 0, ptr %retval, align 4, !dbg !6435
  br label %return, !dbg !6435

return:                                           ; preds = %if.end19, %if.then10
  %18 = load i32, ptr %retval, align 4, !dbg !6436
  ret i32 %18, !dbg !6436
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @snd_hdac_bus_init_chip(ptr noundef %bus, i1 noundef zeroext %full_reset) #0 align 16 !dbg !6437 {
entry:
  %retval = alloca i1, align 1
  %bus.addr = alloca ptr, align 8
  %full_reset.addr = alloca i8, align 1
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6441, metadata !DIExpression()), !dbg !6443
  %frombool = zext i1 %full_reset to i8
  store i8 %frombool, ptr %full_reset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %full_reset.addr, metadata !6442, metadata !DIExpression()), !dbg !6444
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6445
  %chip_init = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28, !dbg !6447
  %bf.load = load i16, ptr %chip_init, align 8, !dbg !6447
  %bf.clear = and i16 %bf.load, 1, !dbg !6447
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !6447
  br i1 %bf.cast, label %if.then, label %if.end, !dbg !6448

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6449
  br label %return, !dbg !6449

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6450
  %2 = load i8, ptr %full_reset.addr, align 1, !dbg !6451, !range !6139, !noundef !915
  %tobool = trunc i8 %2 to i1, !dbg !6451
  %call = call i32 @snd_hdac_bus_reset_link(ptr noundef %1, i1 noundef zeroext %tobool) #11, !dbg !6452
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !6453
  call void @azx_int_clear(ptr noundef %3) #11, !dbg !6454
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !6455
  call void @snd_hdac_bus_init_cmd_io(ptr noundef %4) #11, !dbg !6456
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6457
  call void @azx_int_enable(ptr noundef %5) #11, !dbg !6458
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !6459
  %use_posbuf = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 28, !dbg !6461
  %bf.load1 = load i16, ptr %use_posbuf, align 8, !dbg !6461
  %bf.lshr = lshr i16 %bf.load1, 3, !dbg !6461
  %bf.clear2 = and i16 %bf.lshr, 1, !dbg !6461
  %bf.cast3 = trunc i16 %bf.clear2 to i1, !dbg !6461
  br i1 %bf.cast3, label %land.lhs.true, label %if.end14, !dbg !6462

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !6463
  %posbuf = getelementptr inbounds %struct.hdac_bus, ptr %7, i32 0, i32 25, !dbg !6464
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %posbuf, i32 0, i32 2, !dbg !6465
  %8 = load i64, ptr %addr, align 8, !dbg !6465
  %tobool4 = icmp ne i64 %8, 0, !dbg !6463
  br i1 %tobool4, label %if.then5, label %if.end14, !dbg !6466

if.then5:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !6467
  %posbuf6 = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 25, !dbg !6467
  %addr7 = getelementptr inbounds %struct.snd_dma_buffer, ptr %posbuf6, i32 0, i32 2, !dbg !6467
  %10 = load i64, ptr %addr7, align 8, !dbg !6467
  %conv = trunc i64 %10 to i32, !dbg !6467
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !6467
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %11, i32 0, i32 4, !dbg !6467
  %12 = load ptr, ptr %remap_addr, align 8, !dbg !6467
  %add.ptr = getelementptr i8, ptr %12, i64 112, !dbg !6467
  call void @writel(i32 noundef %conv, ptr noundef %add.ptr) #11, !dbg !6467
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !6469
  %posbuf8 = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 25, !dbg !6469
  %addr9 = getelementptr inbounds %struct.snd_dma_buffer, ptr %posbuf8, i32 0, i32 2, !dbg !6469
  %14 = load i64, ptr %addr9, align 8, !dbg !6469
  %shr = lshr i64 %14, 16, !dbg !6469
  %shr10 = lshr i64 %shr, 16, !dbg !6469
  %conv11 = trunc i64 %shr10 to i32, !dbg !6469
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !6469
  %remap_addr12 = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 4, !dbg !6469
  %16 = load ptr, ptr %remap_addr12, align 8, !dbg !6469
  %add.ptr13 = getelementptr i8, ptr %16, i64 116, !dbg !6469
  call void @writel(i32 noundef %conv11, ptr noundef %add.ptr13) #11, !dbg !6469
  br label %if.end14, !dbg !6470

if.end14:                                         ; preds = %if.then5, %land.lhs.true, %if.end
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !6471
  %chip_init15 = getelementptr inbounds %struct.hdac_bus, ptr %17, i32 0, i32 28, !dbg !6472
  %bf.load16 = load i16, ptr %chip_init15, align 8, !dbg !6473
  %bf.clear17 = and i16 %bf.load16, -2, !dbg !6473
  %bf.set = or i16 %bf.clear17, 1, !dbg !6473
  store i16 %bf.set, ptr %chip_init15, align 8, !dbg !6473
  store i1 true, ptr %retval, align 1, !dbg !6474
  br label %return, !dbg !6474

return:                                           ; preds = %if.end14, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !6475
  ret i1 %18, !dbg !6475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @azx_int_clear(ptr noundef %bus) #0 align 16 !dbg !6476 {
entry:
  %bus.addr = alloca ptr, align 8
  %azx_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6478, metadata !DIExpression()), !dbg !6486
  call void @llvm.lifetime.start.p0(i64 8, ptr %azx_dev) #10, !dbg !6487
  call void @llvm.dbg.declare(metadata ptr %azx_dev, metadata !6479, metadata !DIExpression()), !dbg !6488
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6489
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6480, metadata !DIExpression()), !dbg !6489
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6489
  %stream_list = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27, !dbg !6489
  %next = getelementptr inbounds %struct.list_head, ptr %stream_list, i32 0, i32 0, !dbg !6489
  %1 = load ptr, ptr %next, align 8, !dbg !6489
  store ptr %1, ptr %__mptr, align 8, !dbg !6489
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6489
  %add.ptr = getelementptr i8, ptr %2, i64 -272, !dbg !6489
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6490
  %3 = load ptr, ptr %tmp, align 8, !dbg !6489
  store ptr %3, ptr %azx_dev, align 8, !dbg !6490
  br label %for.cond, !dbg !6490

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %azx_dev, align 8, !dbg !6491
  %list = getelementptr inbounds %struct.hdac_stream, ptr %4, i32 0, i32 28, !dbg !6491
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6491
  %stream_list1 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 27, !dbg !6491
  %cmp = icmp eq ptr %list, %stream_list1, !dbg !6491
  %lnot = xor i1 %cmp, true, !dbg !6491
  br i1 %lnot, label %for.body, label %for.end, !dbg !6490

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %azx_dev, align 8, !dbg !6492
  %bus2 = getelementptr inbounds %struct.hdac_stream, ptr %6, i32 0, i32 0, !dbg !6492
  %7 = load ptr, ptr %bus2, align 8, !dbg !6492
  %8 = load ptr, ptr %azx_dev, align 8, !dbg !6492
  %sd_addr = getelementptr inbounds %struct.hdac_stream, ptr %8, i32 0, i32 8, !dbg !6492
  %9 = load ptr, ptr %sd_addr, align 8, !dbg !6492
  %add.ptr3 = getelementptr i8, ptr %9, i64 3, !dbg !6492
  call void @snd_hdac_reg_writeb(ptr noundef %7, ptr noundef %add.ptr3, i8 noundef zeroext 28) #11, !dbg !6492
  br label %for.inc, !dbg !6492

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #10, !dbg !6493
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !6483, metadata !DIExpression()), !dbg !6493
  %10 = load ptr, ptr %azx_dev, align 8, !dbg !6493
  %list5 = getelementptr inbounds %struct.hdac_stream, ptr %10, i32 0, i32 28, !dbg !6493
  %next6 = getelementptr inbounds %struct.list_head, ptr %list5, i32 0, i32 0, !dbg !6493
  %11 = load ptr, ptr %next6, align 8, !dbg !6493
  store ptr %11, ptr %__mptr4, align 8, !dbg !6493
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !6493
  %add.ptr8 = getelementptr i8, ptr %12, i64 -272, !dbg !6493
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !6493
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #10, !dbg !6491
  %13 = load ptr, ptr %tmp7, align 8, !dbg !6493
  store ptr %13, ptr %azx_dev, align 8, !dbg !6491
  br label %for.cond, !dbg !6491, !llvm.loop !6494

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !6496
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !6496
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 4, !dbg !6496
  %16 = load ptr, ptr %remap_addr, align 8, !dbg !6496
  %add.ptr9 = getelementptr i8, ptr %16, i64 14, !dbg !6496
  call void @snd_hdac_reg_writew(ptr noundef %14, ptr noundef %add.ptr9, i16 noundef zeroext 255) #11, !dbg !6496
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !6497
  %18 = load ptr, ptr %bus.addr, align 8, !dbg !6497
  %remap_addr10 = getelementptr inbounds %struct.hdac_bus, ptr %18, i32 0, i32 4, !dbg !6497
  %19 = load ptr, ptr %remap_addr10, align 8, !dbg !6497
  %add.ptr11 = getelementptr i8, ptr %19, i64 93, !dbg !6497
  call void @snd_hdac_reg_writeb(ptr noundef %17, ptr noundef %add.ptr11, i8 noundef zeroext 5) #11, !dbg !6497
  %20 = load ptr, ptr %bus.addr, align 8, !dbg !6498
  %remap_addr12 = getelementptr inbounds %struct.hdac_bus, ptr %20, i32 0, i32 4, !dbg !6498
  %21 = load ptr, ptr %remap_addr12, align 8, !dbg !6498
  %add.ptr13 = getelementptr i8, ptr %21, i64 36, !dbg !6498
  call void @writel(i32 noundef 1073742079, ptr noundef %add.ptr13) #11, !dbg !6498
  call void @llvm.lifetime.end.p0(i64 8, ptr %azx_dev) #10, !dbg !6499
  ret void, !dbg !6499
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @azx_int_enable(ptr noundef %bus) #0 align 16 !dbg !6500 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6502, metadata !DIExpression()), !dbg !6503
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6504
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4, !dbg !6504
  %1 = load ptr, ptr %remap_addr, align 8, !dbg !6504
  %add.ptr = getelementptr i8, ptr %1, i64 32, !dbg !6504
  %call = call i32 @readl(ptr noundef %add.ptr) #11, !dbg !6504
  %and = and i32 %call, 1073741823, !dbg !6504
  %or = or i32 %and, -1073741824, !dbg !6504
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !6504
  %remap_addr1 = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 4, !dbg !6504
  %3 = load ptr, ptr %remap_addr1, align 8, !dbg !6504
  %add.ptr2 = getelementptr i8, ptr %3, i64 32, !dbg !6504
  call void @writel(i32 noundef %or, ptr noundef %add.ptr2) #11, !dbg !6504
  ret void, !dbg !6505
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_stop_chip(ptr noundef %bus) #0 align 16 !dbg !6506 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6508, metadata !DIExpression()), !dbg !6509
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6510
  %chip_init = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28, !dbg !6512
  %bf.load = load i16, ptr %chip_init, align 8, !dbg !6512
  %bf.clear = and i16 %bf.load, 1, !dbg !6512
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !6512
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !6513

if.then:                                          ; preds = %entry
  br label %return, !dbg !6514

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6515
  call void @azx_int_disable(ptr noundef %1) #11, !dbg !6516
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !6517
  call void @azx_int_clear(ptr noundef %2) #11, !dbg !6518
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !6519
  call void @snd_hdac_bus_stop_cmd_io(ptr noundef %3) #11, !dbg !6520
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !6521
  %posbuf = getelementptr inbounds %struct.hdac_bus, ptr %4, i32 0, i32 25, !dbg !6523
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %posbuf, i32 0, i32 2, !dbg !6524
  %5 = load i64, ptr %addr, align 8, !dbg !6524
  %tobool = icmp ne i64 %5, 0, !dbg !6521
  br i1 %tobool, label %if.then1, label %if.end4, !dbg !6525

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !6526
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 4, !dbg !6526
  %7 = load ptr, ptr %remap_addr, align 8, !dbg !6526
  %add.ptr = getelementptr i8, ptr %7, i64 112, !dbg !6526
  call void @writel(i32 noundef 0, ptr noundef %add.ptr) #11, !dbg !6526
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !6528
  %remap_addr2 = getelementptr inbounds %struct.hdac_bus, ptr %8, i32 0, i32 4, !dbg !6528
  %9 = load ptr, ptr %remap_addr2, align 8, !dbg !6528
  %add.ptr3 = getelementptr i8, ptr %9, i64 116, !dbg !6528
  call void @writel(i32 noundef 0, ptr noundef %add.ptr3) #11, !dbg !6528
  br label %if.end4, !dbg !6529

if.end4:                                          ; preds = %if.then1, %if.end
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !6530
  %chip_init5 = getelementptr inbounds %struct.hdac_bus, ptr %10, i32 0, i32 28, !dbg !6531
  %bf.load6 = load i16, ptr %chip_init5, align 8, !dbg !6532
  %bf.clear7 = and i16 %bf.load6, -2, !dbg !6532
  %bf.set = or i16 %bf.clear7, 0, !dbg !6532
  store i16 %bf.set, ptr %chip_init5, align 8, !dbg !6532
  br label %return, !dbg !6533

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !6533
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @azx_int_disable(ptr noundef %bus) #0 align 16 !dbg !6534 {
entry:
  %bus.addr = alloca ptr, align 8
  %azx_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6536, metadata !DIExpression()), !dbg !6544
  call void @llvm.lifetime.start.p0(i64 8, ptr %azx_dev) #10, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %azx_dev, metadata !6537, metadata !DIExpression()), !dbg !6546
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6547
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6538, metadata !DIExpression()), !dbg !6547
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6547
  %stream_list = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27, !dbg !6547
  %next = getelementptr inbounds %struct.list_head, ptr %stream_list, i32 0, i32 0, !dbg !6547
  %1 = load ptr, ptr %next, align 8, !dbg !6547
  store ptr %1, ptr %__mptr, align 8, !dbg !6547
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6547
  %add.ptr = getelementptr i8, ptr %2, i64 -272, !dbg !6547
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6547
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6548
  %3 = load ptr, ptr %tmp, align 8, !dbg !6547
  store ptr %3, ptr %azx_dev, align 8, !dbg !6548
  br label %for.cond, !dbg !6548

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %azx_dev, align 8, !dbg !6549
  %list = getelementptr inbounds %struct.hdac_stream, ptr %4, i32 0, i32 28, !dbg !6549
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6549
  %stream_list1 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 27, !dbg !6549
  %cmp = icmp eq ptr %list, %stream_list1, !dbg !6549
  %lnot = xor i1 %cmp, true, !dbg !6549
  br i1 %lnot, label %for.body, label %for.end, !dbg !6548

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %azx_dev, align 8, !dbg !6550
  %bus2 = getelementptr inbounds %struct.hdac_stream, ptr %6, i32 0, i32 0, !dbg !6550
  %7 = load ptr, ptr %bus2, align 8, !dbg !6550
  %8 = load ptr, ptr %azx_dev, align 8, !dbg !6550
  %sd_addr = getelementptr inbounds %struct.hdac_stream, ptr %8, i32 0, i32 8, !dbg !6550
  %9 = load ptr, ptr %sd_addr, align 8, !dbg !6550
  %add.ptr3 = getelementptr i8, ptr %9, i64 0, !dbg !6550
  %10 = load ptr, ptr %azx_dev, align 8, !dbg !6550
  %bus4 = getelementptr inbounds %struct.hdac_stream, ptr %10, i32 0, i32 0, !dbg !6550
  %11 = load ptr, ptr %bus4, align 8, !dbg !6550
  %12 = load ptr, ptr %azx_dev, align 8, !dbg !6550
  %sd_addr5 = getelementptr inbounds %struct.hdac_stream, ptr %12, i32 0, i32 8, !dbg !6550
  %13 = load ptr, ptr %sd_addr5, align 8, !dbg !6550
  %add.ptr6 = getelementptr i8, ptr %13, i64 0, !dbg !6550
  %call = call zeroext i8 @snd_hdac_reg_readb(ptr noundef %11, ptr noundef %add.ptr6) #11, !dbg !6550
  %conv = zext i8 %call to i32, !dbg !6550
  %and = and i32 %conv, -29, !dbg !6550
  %or = or i32 %and, 0, !dbg !6550
  %conv7 = trunc i32 %or to i8, !dbg !6550
  call void @snd_hdac_reg_writeb(ptr noundef %7, ptr noundef %add.ptr3, i8 noundef zeroext %conv7) #11, !dbg !6550
  br label %for.inc, !dbg !6550

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #10, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !6541, metadata !DIExpression()), !dbg !6551
  %14 = load ptr, ptr %azx_dev, align 8, !dbg !6551
  %list9 = getelementptr inbounds %struct.hdac_stream, ptr %14, i32 0, i32 28, !dbg !6551
  %next10 = getelementptr inbounds %struct.list_head, ptr %list9, i32 0, i32 0, !dbg !6551
  %15 = load ptr, ptr %next10, align 8, !dbg !6551
  store ptr %15, ptr %__mptr8, align 8, !dbg !6551
  %16 = load ptr, ptr %__mptr8, align 8, !dbg !6551
  %add.ptr12 = getelementptr i8, ptr %16, i64 -272, !dbg !6551
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !6551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #10, !dbg !6549
  %17 = load ptr, ptr %tmp11, align 8, !dbg !6551
  store ptr %17, ptr %azx_dev, align 8, !dbg !6549
  br label %for.cond, !dbg !6549, !llvm.loop !6552

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %bus.addr, align 8, !dbg !6554
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %18, i32 0, i32 4, !dbg !6554
  %19 = load ptr, ptr %remap_addr, align 8, !dbg !6554
  %add.ptr13 = getelementptr i8, ptr %19, i64 32, !dbg !6554
  call void @writel(i32 noundef 0, ptr noundef %add.ptr13) #11, !dbg !6554
  call void @llvm.lifetime.end.p0(i64 8, ptr %azx_dev) #10, !dbg !6555
  ret void, !dbg !6555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_handle_stream_irq(ptr noundef %bus, i32 noundef %status, ptr noundef %ack) #0 align 16 !dbg !6556 {
entry:
  %bus.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %ack.addr = alloca ptr, align 8
  %azx_dev = alloca ptr, align 8
  %sd_status = alloca i8, align 1
  %handled = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6563, metadata !DIExpression()), !dbg !6575
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !6564, metadata !DIExpression()), !dbg !6576
  store ptr %ack, ptr %ack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ack.addr, metadata !6565, metadata !DIExpression()), !dbg !6577
  call void @llvm.lifetime.start.p0(i64 8, ptr %azx_dev) #10, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %azx_dev, metadata !6566, metadata !DIExpression()), !dbg !6579
  call void @llvm.lifetime.start.p0(i64 1, ptr %sd_status) #10, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %sd_status, metadata !6567, metadata !DIExpression()), !dbg !6581
  call void @llvm.lifetime.start.p0(i64 4, ptr %handled) #10, !dbg !6582
  call void @llvm.dbg.declare(metadata ptr %handled, metadata !6568, metadata !DIExpression()), !dbg !6583
  store i32 0, ptr %handled, align 4, !dbg !6583
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6584
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6569, metadata !DIExpression()), !dbg !6584
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6584
  %stream_list = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27, !dbg !6584
  %next = getelementptr inbounds %struct.list_head, ptr %stream_list, i32 0, i32 0, !dbg !6584
  %1 = load ptr, ptr %next, align 8, !dbg !6584
  store ptr %1, ptr %__mptr, align 8, !dbg !6584
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6584
  %add.ptr = getelementptr i8, ptr %2, i64 -272, !dbg !6584
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6585
  %3 = load ptr, ptr %tmp, align 8, !dbg !6584
  store ptr %3, ptr %azx_dev, align 8, !dbg !6585
  br label %for.cond, !dbg !6585

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %azx_dev, align 8, !dbg !6586
  %list = getelementptr inbounds %struct.hdac_stream, ptr %4, i32 0, i32 28, !dbg !6586
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6586
  %stream_list1 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 27, !dbg !6586
  %cmp = icmp eq ptr %list, %stream_list1, !dbg !6586
  %lnot = xor i1 %cmp, true, !dbg !6586
  br i1 %lnot, label %for.body, label %for.end, !dbg !6585

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %status.addr, align 4, !dbg !6587
  %7 = load ptr, ptr %azx_dev, align 8, !dbg !6590
  %sd_int_sta_mask = getelementptr inbounds %struct.hdac_stream, ptr %7, i32 0, i32 14, !dbg !6591
  %8 = load i32, ptr %sd_int_sta_mask, align 8, !dbg !6591
  %and = and i32 %6, %8, !dbg !6592
  %tobool = icmp ne i32 %and, 0, !dbg !6592
  br i1 %tobool, label %if.then, label %if.end17, !dbg !6593

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %azx_dev, align 8, !dbg !6594
  %bus2 = getelementptr inbounds %struct.hdac_stream, ptr %9, i32 0, i32 0, !dbg !6594
  %10 = load ptr, ptr %bus2, align 8, !dbg !6594
  %11 = load ptr, ptr %azx_dev, align 8, !dbg !6594
  %sd_addr = getelementptr inbounds %struct.hdac_stream, ptr %11, i32 0, i32 8, !dbg !6594
  %12 = load ptr, ptr %sd_addr, align 8, !dbg !6594
  %add.ptr3 = getelementptr i8, ptr %12, i64 3, !dbg !6594
  %call = call zeroext i8 @snd_hdac_reg_readb(ptr noundef %10, ptr noundef %add.ptr3) #11, !dbg !6594
  store i8 %call, ptr %sd_status, align 1, !dbg !6596
  %13 = load ptr, ptr %azx_dev, align 8, !dbg !6597
  %bus4 = getelementptr inbounds %struct.hdac_stream, ptr %13, i32 0, i32 0, !dbg !6597
  %14 = load ptr, ptr %bus4, align 8, !dbg !6597
  %15 = load ptr, ptr %azx_dev, align 8, !dbg !6597
  %sd_addr5 = getelementptr inbounds %struct.hdac_stream, ptr %15, i32 0, i32 8, !dbg !6597
  %16 = load ptr, ptr %sd_addr5, align 8, !dbg !6597
  %add.ptr6 = getelementptr i8, ptr %16, i64 3, !dbg !6597
  call void @snd_hdac_reg_writeb(ptr noundef %14, ptr noundef %add.ptr6, i8 noundef zeroext 28) #11, !dbg !6597
  %17 = load ptr, ptr %azx_dev, align 8, !dbg !6598
  %index = getelementptr inbounds %struct.hdac_stream, ptr %17, i32 0, i32 19, !dbg !6599
  %18 = load i8, ptr %index, align 1, !dbg !6599
  %conv = zext i8 %18 to i32, !dbg !6598
  %shl = shl i32 1, %conv, !dbg !6600
  %19 = load i32, ptr %handled, align 4, !dbg !6601
  %or = or i32 %19, %shl, !dbg !6601
  store i32 %or, ptr %handled, align 4, !dbg !6601
  %20 = load ptr, ptr %azx_dev, align 8, !dbg !6602
  %substream = getelementptr inbounds %struct.hdac_stream, ptr %20, i32 0, i32 15, !dbg !6604
  %21 = load ptr, ptr %substream, align 8, !dbg !6604
  %tobool7 = icmp ne ptr %21, null, !dbg !6602
  br i1 %tobool7, label %lor.lhs.false, label %land.lhs.true, !dbg !6605

land.lhs.true:                                    ; preds = %if.then
  %22 = load ptr, ptr %azx_dev, align 8, !dbg !6606
  %cstream = getelementptr inbounds %struct.hdac_stream, ptr %22, i32 0, i32 16, !dbg !6607
  %23 = load ptr, ptr %cstream, align 8, !dbg !6607
  %tobool8 = icmp ne ptr %23, null, !dbg !6606
  br i1 %tobool8, label %lor.lhs.false, label %if.then13, !dbg !6608

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %24 = load ptr, ptr %azx_dev, align 8, !dbg !6609
  %running = getelementptr inbounds %struct.hdac_stream, ptr %24, i32 0, i32 21, !dbg !6610
  %bf.load = load i8, ptr %running, align 4, !dbg !6610
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6610
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6610
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !6610
  br i1 %bf.cast, label %lor.lhs.false9, label %if.then13, !dbg !6611

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %25 = load i8, ptr %sd_status, align 1, !dbg !6612
  %conv10 = zext i8 %25 to i32, !dbg !6612
  %and11 = and i32 %conv10, 4, !dbg !6613
  %tobool12 = icmp ne i32 %and11, 0, !dbg !6613
  br i1 %tobool12, label %if.end, label %if.then13, !dbg !6614

if.then13:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %land.lhs.true
  br label %for.inc, !dbg !6615

if.end:                                           ; preds = %lor.lhs.false9
  %26 = load ptr, ptr %ack.addr, align 8, !dbg !6616
  %tobool14 = icmp ne ptr %26, null, !dbg !6616
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6618

if.then15:                                        ; preds = %if.end
  %27 = load ptr, ptr %ack.addr, align 8, !dbg !6619
  %28 = load ptr, ptr %bus.addr, align 8, !dbg !6620
  %29 = load ptr, ptr %azx_dev, align 8, !dbg !6621
  call void %27(ptr noundef %28, ptr noundef %29) #11, !dbg !6619
  br label %if.end16, !dbg !6619

if.end16:                                         ; preds = %if.then15, %if.end
  br label %if.end17, !dbg !6622

if.end17:                                         ; preds = %if.end16, %for.body
  br label %for.inc, !dbg !6623

for.inc:                                          ; preds = %if.end17, %if.then13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #10, !dbg !6624
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !6572, metadata !DIExpression()), !dbg !6624
  %30 = load ptr, ptr %azx_dev, align 8, !dbg !6624
  %list19 = getelementptr inbounds %struct.hdac_stream, ptr %30, i32 0, i32 28, !dbg !6624
  %next20 = getelementptr inbounds %struct.list_head, ptr %list19, i32 0, i32 0, !dbg !6624
  %31 = load ptr, ptr %next20, align 8, !dbg !6624
  store ptr %31, ptr %__mptr18, align 8, !dbg !6624
  %32 = load ptr, ptr %__mptr18, align 8, !dbg !6624
  %add.ptr22 = getelementptr i8, ptr %32, i64 -272, !dbg !6624
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !6624
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #10, !dbg !6586
  %33 = load ptr, ptr %tmp21, align 8, !dbg !6624
  store ptr %33, ptr %azx_dev, align 8, !dbg !6586
  br label %for.cond, !dbg !6586, !llvm.loop !6625

for.end:                                          ; preds = %for.cond
  %34 = load i32, ptr %handled, align 4, !dbg !6627
  call void @llvm.lifetime.end.p0(i64 4, ptr %handled) #10, !dbg !6628
  call void @llvm.lifetime.end.p0(i64 1, ptr %sd_status) #10, !dbg !6628
  call void @llvm.lifetime.end.p0(i64 8, ptr %azx_dev) #10, !dbg !6628
  ret i32 %34, !dbg !6629
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_bus_alloc_stream_pages(ptr noundef %bus) #0 align 16 !dbg !6630 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %num_streams = alloca i32, align 4
  %dma_type = alloca i32, align 4
  %err = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp31 = alloca i64, align 8
  %__mptr49 = alloca ptr, align 8
  %tmp52 = alloca ptr, align 8
  %__mptr68 = alloca ptr, align 8
  %tmp71 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6632, metadata !DIExpression()), !dbg !6655
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10, !dbg !6656
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6633, metadata !DIExpression()), !dbg !6657
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_streams) #10, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %num_streams, metadata !6634, metadata !DIExpression()), !dbg !6659
  store i32 0, ptr %num_streams, align 4, !dbg !6659
  call void @llvm.lifetime.start.p0(i64 4, ptr %dma_type) #10, !dbg !6660
  call void @llvm.dbg.declare(metadata ptr %dma_type, metadata !6635, metadata !DIExpression()), !dbg !6661
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6662
  %dma_type1 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 26, !dbg !6663
  %1 = load i32, ptr %dma_type1, align 8, !dbg !6663
  %tobool = icmp ne i32 %1, 0, !dbg !6662
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6662

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !6664
  %dma_type2 = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 26, !dbg !6665
  %3 = load i32, ptr %dma_type2, align 8, !dbg !6665
  br label %cond.end, !dbg !6662

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6662

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 2, %cond.false ], !dbg !6662
  store i32 %cond, ptr %dma_type, align 4, !dbg !6661
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !6666
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6636, metadata !DIExpression()), !dbg !6667
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6637, metadata !DIExpression()), !dbg !6668
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !6668
  %stream_list = getelementptr inbounds %struct.hdac_bus, ptr %4, i32 0, i32 27, !dbg !6668
  %next = getelementptr inbounds %struct.list_head, ptr %stream_list, i32 0, i32 0, !dbg !6668
  %5 = load ptr, ptr %next, align 8, !dbg !6668
  store ptr %5, ptr %__mptr, align 8, !dbg !6668
  %6 = load ptr, ptr %__mptr, align 8, !dbg !6668
  %add.ptr = getelementptr i8, ptr %6, i64 -272, !dbg !6668
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6668
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6669
  %7 = load ptr, ptr %tmp, align 8, !dbg !6668
  store ptr %7, ptr %s, align 8, !dbg !6669
  br label %for.cond, !dbg !6669

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load ptr, ptr %s, align 8, !dbg !6670
  %list = getelementptr inbounds %struct.hdac_stream, ptr %8, i32 0, i32 28, !dbg !6670
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !6670
  %stream_list3 = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 27, !dbg !6670
  %cmp = icmp eq ptr %list, %stream_list3, !dbg !6670
  %lnot = xor i1 %cmp, true, !dbg !6670
  br i1 %lnot, label %for.body, label %for.end, !dbg !6669

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %dma_type, align 4, !dbg !6671
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !6673
  %dev = getelementptr inbounds %struct.hdac_bus, ptr %11, i32 0, i32 0, !dbg !6674
  %12 = load ptr, ptr %dev, align 8, !dbg !6674
  %13 = load ptr, ptr %s, align 8, !dbg !6675
  %bdl = getelementptr inbounds %struct.hdac_stream, ptr %13, i32 0, i32 1, !dbg !6676
  %call = call i32 @snd_dma_alloc_pages(i32 noundef %10, ptr noundef %12, i64 noundef 4096, ptr noundef %bdl) #11, !dbg !6677
  store i32 %call, ptr %err, align 4, !dbg !6678
  %14 = load i32, ptr %num_streams, align 4, !dbg !6679
  %inc = add i32 %14, 1, !dbg !6679
  store i32 %inc, ptr %num_streams, align 4, !dbg !6679
  %15 = load i32, ptr %err, align 4, !dbg !6680
  %cmp4 = icmp slt i32 %15, 0, !dbg !6682
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6683

if.then:                                          ; preds = %for.body
  store i32 -12, ptr %retval, align 4, !dbg !6684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6684

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6685

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #10, !dbg !6686
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !6640, metadata !DIExpression()), !dbg !6686
  %16 = load ptr, ptr %s, align 8, !dbg !6686
  %list6 = getelementptr inbounds %struct.hdac_stream, ptr %16, i32 0, i32 28, !dbg !6686
  %next7 = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !6686
  %17 = load ptr, ptr %next7, align 8, !dbg !6686
  store ptr %17, ptr %__mptr5, align 8, !dbg !6686
  %18 = load ptr, ptr %__mptr5, align 8, !dbg !6686
  %add.ptr9 = getelementptr i8, ptr %18, i64 -272, !dbg !6686
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !6686
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #10, !dbg !6670
  %19 = load ptr, ptr %tmp8, align 8, !dbg !6686
  store ptr %19, ptr %s, align 8, !dbg !6670
  br label %for.cond, !dbg !6670, !llvm.loop !6687

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6689
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6643, metadata !DIExpression()), !dbg !6689
  %20 = load i32, ptr %num_streams, align 4, !dbg !6689
  %tobool10 = icmp ne i32 %20, 0, !dbg !6689
  %lnot11 = xor i1 %tobool10, true, !dbg !6689
  %lnot12 = xor i1 %lnot11, true, !dbg !6689
  %lnot13 = xor i1 %lnot12, true, !dbg !6689
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !6689
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6689
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !6690
  %tobool14 = icmp ne i32 %21, 0, !dbg !6690
  %lnot15 = xor i1 %tobool14, true, !dbg !6690
  %lnot17 = xor i1 %lnot15, true, !dbg !6690
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6690
  %conv = sext i32 %lnot.ext18 to i64, !dbg !6690
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6690
  %tobool19 = icmp ne i64 %expval, 0, !dbg !6690
  br i1 %tobool19, label %if.then20, label %if.end30, !dbg !6689

if.then20:                                        ; preds = %for.end
  br label %do.body, !dbg !6690

do.body:                                          ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6691
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6646, metadata !DIExpression()), !dbg !6691
  store i32 2305, ptr %__flags, align 4, !dbg !6691
  br label %do.body21, !dbg !6691

do.body21:                                        ; preds = %do.body
  br label %do.cond, !dbg !6692

do.cond:                                          ; preds = %do.body21
  br label %do.end, !dbg !6692

do.end:                                           ; preds = %do.cond
  br label %do.body22, !dbg !6691

do.body22:                                        ; preds = %do.end
  %22 = load i32, ptr %__flags, align 4, !dbg !6694
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 618, i32 %22, i64 12) #10, !dbg !6694, !srcloc !6696
  br label %do.cond23, !dbg !6694

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !6694

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !6691

do.body25:                                        ; preds = %do.end24
  br label %do.cond26, !dbg !6697

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !6697

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6690
  br label %do.cond28, !dbg !6691

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !6691

do.end29:                                         ; preds = %do.cond28
  br label %if.end30, !dbg !6691

if.end30:                                         ; preds = %do.end29, %for.end
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !6689
  %tobool32 = icmp ne i32 %23, 0, !dbg !6689
  %lnot33 = xor i1 %tobool32, true, !dbg !6689
  %lnot35 = xor i1 %lnot33, true, !dbg !6689
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !6689
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !6689
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !6689
  store i64 %expval38, ptr %tmp31, align 8, !dbg !6690
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6699
  %24 = load i64, ptr %tmp31, align 8, !dbg !6689
  %tobool39 = icmp ne i64 %24, 0, !dbg !6699
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !6700

if.then40:                                        ; preds = %if.end30
  store i32 -22, ptr %retval, align 4, !dbg !6701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6701

if.end41:                                         ; preds = %if.end30
  %25 = load i32, ptr %dma_type, align 4, !dbg !6702
  %26 = load ptr, ptr %bus.addr, align 8, !dbg !6703
  %dev42 = getelementptr inbounds %struct.hdac_bus, ptr %26, i32 0, i32 0, !dbg !6704
  %27 = load ptr, ptr %dev42, align 8, !dbg !6704
  %28 = load i32, ptr %num_streams, align 4, !dbg !6705
  %mul = mul i32 %28, 8, !dbg !6706
  %conv43 = sext i32 %mul to i64, !dbg !6705
  %29 = load ptr, ptr %bus.addr, align 8, !dbg !6707
  %posbuf = getelementptr inbounds %struct.hdac_bus, ptr %29, i32 0, i32 25, !dbg !6708
  %call44 = call i32 @snd_dma_alloc_pages(i32 noundef %25, ptr noundef %27, i64 noundef %conv43, ptr noundef %posbuf) #11, !dbg !6709
  store i32 %call44, ptr %err, align 4, !dbg !6710
  %30 = load i32, ptr %err, align 4, !dbg !6711
  %cmp45 = icmp slt i32 %30, 0, !dbg !6713
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !6714

if.then47:                                        ; preds = %if.end41
  store i32 -12, ptr %retval, align 4, !dbg !6715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6715

if.end48:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr49) #10, !dbg !6716
  call void @llvm.dbg.declare(metadata ptr %__mptr49, metadata !6649, metadata !DIExpression()), !dbg !6716
  %31 = load ptr, ptr %bus.addr, align 8, !dbg !6716
  %stream_list50 = getelementptr inbounds %struct.hdac_bus, ptr %31, i32 0, i32 27, !dbg !6716
  %next51 = getelementptr inbounds %struct.list_head, ptr %stream_list50, i32 0, i32 0, !dbg !6716
  %32 = load ptr, ptr %next51, align 8, !dbg !6716
  store ptr %32, ptr %__mptr49, align 8, !dbg !6716
  %33 = load ptr, ptr %__mptr49, align 8, !dbg !6716
  %add.ptr53 = getelementptr i8, ptr %33, i64 -272, !dbg !6716
  store ptr %add.ptr53, ptr %tmp52, align 8, !dbg !6716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr49) #10, !dbg !6717
  %34 = load ptr, ptr %tmp52, align 8, !dbg !6716
  store ptr %34, ptr %s, align 8, !dbg !6717
  br label %for.cond54, !dbg !6717

for.cond54:                                       ; preds = %for.inc67, %if.end48
  %35 = load ptr, ptr %s, align 8, !dbg !6718
  %list55 = getelementptr inbounds %struct.hdac_stream, ptr %35, i32 0, i32 28, !dbg !6718
  %36 = load ptr, ptr %bus.addr, align 8, !dbg !6718
  %stream_list56 = getelementptr inbounds %struct.hdac_bus, ptr %36, i32 0, i32 27, !dbg !6718
  %cmp57 = icmp eq ptr %list55, %stream_list56, !dbg !6718
  %lnot59 = xor i1 %cmp57, true, !dbg !6718
  br i1 %lnot59, label %for.body61, label %for.end73, !dbg !6717

for.body61:                                       ; preds = %for.cond54
  %37 = load ptr, ptr %bus.addr, align 8, !dbg !6719
  %posbuf62 = getelementptr inbounds %struct.hdac_bus, ptr %37, i32 0, i32 25, !dbg !6720
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %posbuf62, i32 0, i32 1, !dbg !6721
  %38 = load ptr, ptr %area, align 8, !dbg !6721
  %39 = load ptr, ptr %s, align 8, !dbg !6722
  %index = getelementptr inbounds %struct.hdac_stream, ptr %39, i32 0, i32 19, !dbg !6723
  %40 = load i8, ptr %index, align 1, !dbg !6723
  %conv63 = zext i8 %40 to i32, !dbg !6722
  %mul64 = mul i32 %conv63, 8, !dbg !6724
  %idx.ext = sext i32 %mul64 to i64, !dbg !6725
  %add.ptr65 = getelementptr i8, ptr %38, i64 %idx.ext, !dbg !6725
  %41 = load ptr, ptr %s, align 8, !dbg !6726
  %posbuf66 = getelementptr inbounds %struct.hdac_stream, ptr %41, i32 0, i32 2, !dbg !6727
  store ptr %add.ptr65, ptr %posbuf66, align 8, !dbg !6728
  br label %for.inc67, !dbg !6726

for.inc67:                                        ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr68) #10, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %__mptr68, metadata !6652, metadata !DIExpression()), !dbg !6729
  %42 = load ptr, ptr %s, align 8, !dbg !6729
  %list69 = getelementptr inbounds %struct.hdac_stream, ptr %42, i32 0, i32 28, !dbg !6729
  %next70 = getelementptr inbounds %struct.list_head, ptr %list69, i32 0, i32 0, !dbg !6729
  %43 = load ptr, ptr %next70, align 8, !dbg !6729
  store ptr %43, ptr %__mptr68, align 8, !dbg !6729
  %44 = load ptr, ptr %__mptr68, align 8, !dbg !6729
  %add.ptr72 = getelementptr i8, ptr %44, i64 -272, !dbg !6729
  store ptr %add.ptr72, ptr %tmp71, align 8, !dbg !6729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr68) #10, !dbg !6718
  %45 = load ptr, ptr %tmp71, align 8, !dbg !6729
  store ptr %45, ptr %s, align 8, !dbg !6718
  br label %for.cond54, !dbg !6718, !llvm.loop !6730

for.end73:                                        ; preds = %for.cond54
  %46 = load i32, ptr %dma_type, align 4, !dbg !6732
  %47 = load ptr, ptr %bus.addr, align 8, !dbg !6733
  %dev74 = getelementptr inbounds %struct.hdac_bus, ptr %47, i32 0, i32 0, !dbg !6734
  %48 = load ptr, ptr %dev74, align 8, !dbg !6734
  %49 = load ptr, ptr %bus.addr, align 8, !dbg !6735
  %rb = getelementptr inbounds %struct.hdac_bus, ptr %49, i32 0, i32 24, !dbg !6736
  %call75 = call i32 @snd_dma_alloc_pages(i32 noundef %46, ptr noundef %48, i64 noundef 4096, ptr noundef %rb) #11, !dbg !6737
  store i32 %call75, ptr %retval, align 4, !dbg !6738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6738

cleanup:                                          ; preds = %for.end73, %if.then47, %if.then40, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !6739
  call void @llvm.lifetime.end.p0(i64 4, ptr %dma_type) #10, !dbg !6739
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_streams) #10, !dbg !6739
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10, !dbg !6739
  %50 = load i32, ptr %retval, align 4, !dbg !6739
  ret i32 %50, !dbg !6739
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_dma_alloc_pages(i32 noundef %type, ptr noundef %dev, i64 noundef %size, ptr noundef %dmab) #5 align 16 !dbg !6740 {
entry:
  %type.addr = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dmab.addr = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6744, metadata !DIExpression()), !dbg !6748
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6745, metadata !DIExpression()), !dbg !6749
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6746, metadata !DIExpression()), !dbg !6750
  store ptr %dmab, ptr %dmab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmab.addr, metadata !6747, metadata !DIExpression()), !dbg !6751
  %0 = load i32, ptr %type.addr, align 4, !dbg !6752
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6753
  %2 = load i64, ptr %size.addr, align 8, !dbg !6754
  %3 = load ptr, ptr %dmab.addr, align 8, !dbg !6755
  %call = call i32 @snd_dma_alloc_dir_pages(i32 noundef %0, ptr noundef %1, i32 noundef 0, i64 noundef %2, ptr noundef %3) #11, !dbg !6756
  ret i32 %call, !dbg !6757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_free_stream_pages(ptr noundef %bus) #0 align 16 !dbg !6758 {
entry:
  %bus.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6760, metadata !DIExpression()), !dbg !6768
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10, !dbg !6769
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6761, metadata !DIExpression()), !dbg !6770
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6771
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6762, metadata !DIExpression()), !dbg !6771
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6771
  %stream_list = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27, !dbg !6771
  %next = getelementptr inbounds %struct.list_head, ptr %stream_list, i32 0, i32 0, !dbg !6771
  %1 = load ptr, ptr %next, align 8, !dbg !6771
  store ptr %1, ptr %__mptr, align 8, !dbg !6771
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6771
  %add.ptr = getelementptr i8, ptr %2, i64 -272, !dbg !6771
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6772
  %3 = load ptr, ptr %tmp, align 8, !dbg !6771
  store ptr %3, ptr %s, align 8, !dbg !6772
  br label %for.cond, !dbg !6772

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %s, align 8, !dbg !6773
  %list = getelementptr inbounds %struct.hdac_stream, ptr %4, i32 0, i32 28, !dbg !6773
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6773
  %stream_list1 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 27, !dbg !6773
  %cmp = icmp eq ptr %list, %stream_list1, !dbg !6773
  %lnot = xor i1 %cmp, true, !dbg !6773
  br i1 %lnot, label %for.body, label %for.end, !dbg !6772

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %s, align 8, !dbg !6774
  %bdl = getelementptr inbounds %struct.hdac_stream, ptr %6, i32 0, i32 1, !dbg !6777
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %bdl, i32 0, i32 1, !dbg !6778
  %7 = load ptr, ptr %area, align 8, !dbg !6778
  %tobool = icmp ne ptr %7, null, !dbg !6774
  br i1 %tobool, label %if.then, label %if.end, !dbg !6779

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %s, align 8, !dbg !6780
  %bdl2 = getelementptr inbounds %struct.hdac_stream, ptr %8, i32 0, i32 1, !dbg !6781
  call void @snd_dma_free_pages(ptr noundef %bdl2) #11, !dbg !6782
  br label %if.end, !dbg !6782

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !6783

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #10, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !6765, metadata !DIExpression()), !dbg !6784
  %9 = load ptr, ptr %s, align 8, !dbg !6784
  %list4 = getelementptr inbounds %struct.hdac_stream, ptr %9, i32 0, i32 28, !dbg !6784
  %next5 = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !6784
  %10 = load ptr, ptr %next5, align 8, !dbg !6784
  store ptr %10, ptr %__mptr3, align 8, !dbg !6784
  %11 = load ptr, ptr %__mptr3, align 8, !dbg !6784
  %add.ptr7 = getelementptr i8, ptr %11, i64 -272, !dbg !6784
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !6784
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #10, !dbg !6773
  %12 = load ptr, ptr %tmp6, align 8, !dbg !6784
  store ptr %12, ptr %s, align 8, !dbg !6773
  br label %for.cond, !dbg !6773, !llvm.loop !6785

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !6787
  %rb = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 24, !dbg !6789
  %area8 = getelementptr inbounds %struct.snd_dma_buffer, ptr %rb, i32 0, i32 1, !dbg !6790
  %14 = load ptr, ptr %area8, align 8, !dbg !6790
  %tobool9 = icmp ne ptr %14, null, !dbg !6787
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !6791

if.then10:                                        ; preds = %for.end
  %15 = load ptr, ptr %bus.addr, align 8, !dbg !6792
  %rb11 = getelementptr inbounds %struct.hdac_bus, ptr %15, i32 0, i32 24, !dbg !6793
  call void @snd_dma_free_pages(ptr noundef %rb11) #11, !dbg !6794
  br label %if.end12, !dbg !6794

if.end12:                                         ; preds = %if.then10, %for.end
  %16 = load ptr, ptr %bus.addr, align 8, !dbg !6795
  %posbuf = getelementptr inbounds %struct.hdac_bus, ptr %16, i32 0, i32 25, !dbg !6797
  %area13 = getelementptr inbounds %struct.snd_dma_buffer, ptr %posbuf, i32 0, i32 1, !dbg !6798
  %17 = load ptr, ptr %area13, align 8, !dbg !6798
  %tobool14 = icmp ne ptr %17, null, !dbg !6795
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !6799

if.then15:                                        ; preds = %if.end12
  %18 = load ptr, ptr %bus.addr, align 8, !dbg !6800
  %posbuf16 = getelementptr inbounds %struct.hdac_bus, ptr %18, i32 0, i32 25, !dbg !6801
  call void @snd_dma_free_pages(ptr noundef %posbuf16) #11, !dbg !6802
  br label %if.end17, !dbg !6802

if.end17:                                         ; preds = %if.then15, %if.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10, !dbg !6803
  ret void, !dbg !6803
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6804 dso_local void @snd_dma_free_pages(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_bus_link_power(ptr noundef %codec, i1 noundef zeroext %enable) #0 align 16 !dbg !6807 {
entry:
  %codec.addr = alloca ptr, align 8
  %enable.addr = alloca i8, align 1
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6809, metadata !DIExpression()), !dbg !6811
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !6810, metadata !DIExpression()), !dbg !6812
  %0 = load i8, ptr %enable.addr, align 1, !dbg !6813, !range !6139, !noundef !915
  %tobool = trunc i8 %0 to i1, !dbg !6813
  br i1 %tobool, label %if.then, label %if.else, !dbg !6815

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6816
  %addr = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 3, !dbg !6817
  %2 = load i32, ptr %addr, align 8, !dbg !6817
  %conv = zext i32 %2 to i64, !dbg !6816
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !6818
  %bus = getelementptr inbounds %struct.hdac_device, ptr %3, i32 0, i32 2, !dbg !6819
  %4 = load ptr, ptr %bus, align 8, !dbg !6819
  %codec_powered = getelementptr inbounds %struct.hdac_bus, ptr %4, i32 0, i32 19, !dbg !6820
  call void @set_bit(i64 noundef %conv, ptr noundef %codec_powered) #11, !dbg !6821
  br label %if.end, !dbg !6821

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %codec.addr, align 8, !dbg !6822
  %addr1 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 3, !dbg !6823
  %6 = load i32, ptr %addr1, align 8, !dbg !6823
  %conv2 = zext i32 %6 to i64, !dbg !6822
  %7 = load ptr, ptr %codec.addr, align 8, !dbg !6824
  %bus3 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 2, !dbg !6825
  %8 = load ptr, ptr %bus3, align 8, !dbg !6825
  %codec_powered4 = getelementptr inbounds %struct.hdac_bus, ptr %8, i32 0, i32 19, !dbg !6826
  call void @clear_bit(i64 noundef %conv2, ptr noundef %codec_powered4) #11, !dbg !6827
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6828
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6829 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6836, metadata !DIExpression()), !dbg !6838
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6837, metadata !DIExpression()), !dbg !6839
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6840
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6841
  %div = sdiv i64 %1, 64, !dbg !6841
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6842
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6843
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6844
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6845
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6846
  ret void, !dbg !6847
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6848 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6850, metadata !DIExpression()), !dbg !6852
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6851, metadata !DIExpression()), !dbg !6853
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6854
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6855
  %div = sdiv i64 %1, 64, !dbg !6855
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6856
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6857
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6858
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6859
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6860
  ret void, !dbg !6861
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6862 dso_local void @_raw_spin_lock_irq(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writeb(i8 noundef zeroext %val, ptr noundef %addr) #5 align 16 !dbg !6867 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6871, metadata !DIExpression()), !dbg !6873
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6872, metadata !DIExpression()), !dbg !6873
  %0 = load i8, ptr %val.addr, align 1, !dbg !6873
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6873
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, ptr elementtype(i8) %1) #10, !dbg !6873, !srcloc !6874
  ret void, !dbg !6873
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writew(i16 noundef zeroext %val, ptr noundef %addr) #5 align 16 !dbg !6875 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6879, metadata !DIExpression()), !dbg !6881
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6880, metadata !DIExpression()), !dbg !6881
  %0 = load i16, ptr %val.addr, align 2, !dbg !6881
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6881
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, ptr elementtype(i16) %1) #10, !dbg !6881, !srcloc !6882
  ret void, !dbg !6881
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6883 dso_local void @_raw_spin_unlock_irq(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @readw(ptr noundef %addr) #5 align 16 !dbg !6884 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i16, align 2
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6888, metadata !DIExpression()), !dbg !6890
  call void @llvm.lifetime.start.p0(i64 2, ptr %ret) #10, !dbg !6890
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6889, metadata !DIExpression()), !dbg !6890
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6890
  %1 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %0) #10, !dbg !6890, !srcloc !6891
  store i16 %1, ptr %ret, align 2, !dbg !6890
  %2 = load i16, ptr %ret, align 2, !dbg !6890
  call void @llvm.lifetime.end.p0(i64 2, ptr %ret) #10, !dbg !6890
  ret i16 %2, !dbg !6890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !6892 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6899, metadata !DIExpression()), !dbg !6900
  br label %do.body, !dbg !6901

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6903

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6901
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6901
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6901
  store ptr %1, ptr %tmp, align 8, !dbg !6903
  %2 = load ptr, ptr %tmp, align 8, !dbg !6901
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6905
  %cmp = icmp eq ptr %2, %3, !dbg !6906
  %conv = zext i1 %cmp to i32, !dbg !6906
  ret i32 %conv, !dbg !6907
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #5 align 16 !dbg !6908 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6910, metadata !DIExpression()), !dbg !6911
  %0 = load i32, ptr %m.addr, align 4, !dbg !6912
  %conv = zext i32 %0 to i64, !dbg !6912
  %add = add i64 %conv, 1, !dbg !6913
  %sub = sub i64 %add, 1, !dbg !6914
  %div = sdiv i64 %sub, 1, !dbg !6915
  ret i64 %div, !dbg !6916
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6917 dso_local i64 @__msecs_to_jiffies(i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @readb(ptr noundef %addr) #5 align 16 !dbg !6918 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6922, metadata !DIExpression()), !dbg !6924
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #10, !dbg !6924
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6923, metadata !DIExpression()), !dbg !6924
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6924
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0) #10, !dbg !6924, !srcloc !6925
  store i8 %1, ptr %ret, align 1, !dbg !6924
  %2 = load i8, ptr %ret, align 1, !dbg !6924
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #10, !dbg !6924
  ret i8 %2, !dbg !6924
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6926 dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6929 dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6932 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6937, metadata !DIExpression()), !dbg !6939
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6938, metadata !DIExpression()), !dbg !6940
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6941
  %1 = load i64, ptr %size.addr, align 8, !dbg !6942
  %conv = trunc i64 %1 to i32, !dbg !6942
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6943
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6944
  %3 = load i64, ptr %size.addr, align 8, !dbg !6944
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !6944
  ret void, !dbg !6945
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6946 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6949, metadata !DIExpression()), !dbg !6951
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6950, metadata !DIExpression()), !dbg !6952
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6953
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6955
  br i1 %1, label %if.then, label %if.else, !dbg !6956

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6957
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6957
  %shr = ashr i64 %3, 3, !dbg !6957
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6957
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6959
  %and = and i64 %4, 7, !dbg !6959
  %sh_prom = trunc i64 %and to i32, !dbg !6959
  %shl = shl i32 1, %sh_prom, !dbg !6959
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #10, !dbg !6960, !srcloc !6961
  br label %if.end, !dbg !6962

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6963
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6965
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !6966, !srcloc !6967
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6969 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6974, metadata !DIExpression()), !dbg !6976
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6975, metadata !DIExpression()), !dbg !6977
  ret i1 true, !dbg !6978
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6979 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6984, metadata !DIExpression()), !dbg !6987
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6985, metadata !DIExpression()), !dbg !6988
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6986, metadata !DIExpression()), !dbg !6989
  ret void, !dbg !6990
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6991 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6993, metadata !DIExpression()), !dbg !6995
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6994, metadata !DIExpression()), !dbg !6996
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6997
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6999
  br i1 %1, label %if.then, label %if.else, !dbg !7000

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7001
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7001
  %shr = ashr i64 %3, 3, !dbg !7001
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7001
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7003
  %and = and i64 %4, 7, !dbg !7003
  %sh_prom = trunc i64 %and to i32, !dbg !7003
  %shl = shl i32 1, %sh_prom, !dbg !7003
  %not = xor i32 %shl, -1, !dbg !7004
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #10, !dbg !7005, !srcloc !7006
  br label %if.end, !dbg !7007

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7008
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7010
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !7011, !srcloc !7012
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7013
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477}
!llvm.ident = !{!5478}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sound/hda/hdac_controller.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cbe12deb19fdd6ec0c1d1906a918d30")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_init_cmd_io295", scope: !9, file: !2, line: 90, type: !184, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/hda/.hdac_controller.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/hda/snd-hda-core\22 -D KBUILD_BASENAME=\22hdac_controller\22 -D KBUILD_MODNAME=\22snd_hda_core\22 -D __KBUILD_MODNAME=kmod_snd_hda_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/hda/hdac_controller.ll sound/hda/hdac_controller.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !176, globals: !5394, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !35, !43, !59, !67, !73, !80, !87, !93, !99, !106, !114, !122, !128, !135, !139, !148, !153, !158, !164, !171}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !31, line: 65, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!34 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !36, line: 9, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!39 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!40 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!41 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!42 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !60, line: 68, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!66 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !13, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !123, line: 41, baseType: !13, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!126 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!127 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !123, line: 99, baseType: !13, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!131 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!132 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!133 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!134 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !123, line: 80, baseType: !13, size: 32, elements: !136)
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!138 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147}
!141 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!142 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!143 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!144 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!145 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!146 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!147 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!151 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!152 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!156 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!157 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163}
!160 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!161 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!162 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!163 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !165, line: 5, baseType: !13, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!168 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!169 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!170 = !DIEnumerator(name: "DMA_NONE", value: 3)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !172, line: 10, baseType: !13, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!173 = !{!174, !175}
!174 = !DIEnumerator(name: "false", value: 0)
!175 = !DIEnumerator(name: "true", value: 1)
!176 = !{!177, !182, !184, !178, !180, !185, !186, !5381, !5383, !5385, !5387, !115, !5390, !5392}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !179, line: 38, baseType: !180)
!179 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !181, line: 27, baseType: !13)
!181 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !183, line: 21, baseType: !180)
!183 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!185 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_stream", file: !188, line: 511, size: 2304, elements: !189)
!188 = !DIFile(filename: "./include/sound/hdaudio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "507832bfa56b8fb9054739385c0935fd")
!189 = !{!190, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !5342, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5378, !5379, !5380}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !187, file: !188, line: 512, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus", file: !188, line: 290, size: 10560, elements: !193)
!193 = !{!194, !4727, !4793, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4815, !4817, !4818, !4819, !4820, !4821, !4822, !4834, !4835, !4837, !4838, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4928, !4929, !4930, !4931, !4932, !4933, !4934}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !192, file: !188, line: 291, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !197)
!197 = !{!198, !4200, !4201, !4204, !4205, !4258, !4343, !4344, !4345, !4346, !4347, !4354, !4512, !4525, !4535, !4539, !4541, !4542, !4543, !4547, !4554, !4555, !4558, !4561, !4565, !4669, !4670, !4671, !4672, !4673, !4674, !4704, !4705, !4706, !4709, !4712, !4721, !4722, !4723, !4724, !4725, !4726}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !196, file: !100, line: 706, baseType: !199, size: 512)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !200, line: 64, size: 512, elements: !201)
!200 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!201 = !{!202, !205, !212, !214, !301, !4087, !4190, !4195, !4196, !4197, !4198, !4199}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !200, line: 65, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !199, file: !200, line: 66, baseType: !206, size: 128, offset: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !207, line: 190, size: 128, elements: !208)
!207 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!208 = !{!209, !211}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !207, line: 191, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !206, file: !207, line: 191, baseType: !210, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !200, line: 67, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !199, file: !200, line: 68, baseType: !215, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !200, line: 168, size: 768, elements: !217)
!217 = !{!218, !219, !260, !261}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !216, file: !200, line: 169, baseType: !206, size: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !216, file: !200, line: 170, baseType: !220, size: 32, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !221, line: 29, baseType: !222)
!221 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !221, line: 17, size: 32, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !221, line: 18, baseType: !225, size: 32)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !222, file: !221, line: 18, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !225, file: !221, line: 19, baseType: !228, size: 32)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !229, line: 14, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !228, file: !229, line: 15, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !233, line: 44, baseType: !234)
!233 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !233, line: 14, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !233, line: 15, baseType: !237, size: 32)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !233, line: 15, size: 32, elements: !238)
!238 = !{!239, !244, !252}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !237, file: !233, line: 16, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !207, line: 174, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 172, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !241, file: !207, line: 173, baseType: !115, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !233, line: 24, baseType: !245, size: 16)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !233, line: 24, size: 16, elements: !246)
!246 = !{!247, !251}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !245, file: !233, line: 25, baseType: !248, size: 8)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !183, line: 17, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !181, line: 21, baseType: !250)
!250 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !245, file: !233, line: 26, baseType: !248, size: 8, offset: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !233, line: 28, baseType: !253, size: 32)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !233, line: 28, size: 32, elements: !254)
!254 = !{!255, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !253, file: !233, line: 29, baseType: !256, size: 16)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !183, line: 19, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !181, line: 24, baseType: !258)
!258 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !253, file: !233, line: 30, baseType: !256, size: 16, offset: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !216, file: !200, line: 171, baseType: !199, size: 512, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !216, file: !200, line: 172, baseType: !262, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !200, line: 133, size: 192, elements: !265)
!265 = !{!266, !273, !278}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !264, file: !200, line: 134, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!115, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !200, line: 135, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!203, !271}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !264, file: !200, line: 136, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!115, !271, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !200, line: 125, size: 20736, elements: !285)
!285 = !{!286, !291, !295, !296, !300}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !284, file: !200, line: 126, baseType: !287, size: 192)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 192, elements: !289)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!289 = !{!290}
!290 = !DISubrange(count: 3)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !284, file: !200, line: 127, baseType: !292, size: 4096, offset: 192)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 4096, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !284, file: !200, line: 128, baseType: !115, size: 32, offset: 4288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !284, file: !200, line: 129, baseType: !297, size: 16384, offset: 4320)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 2048)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !284, file: !200, line: 130, baseType: !115, size: 32, offset: 20704)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !199, file: !200, line: 69, baseType: !302, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !200, line: 116, size: 384, elements: !305)
!305 = !{!306, !310, !338, !4049, !4077, !4081}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !304, file: !200, line: 117, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !213}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !304, file: !200, line: 118, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !314, line: 254, size: 128, elements: !315)
!314 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!315 = !{!316, !330}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !313, file: !314, line: 255, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !213, !324, !288}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !207, line: 66, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !322, line: 73, baseType: !323)
!322 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !322, line: 15, baseType: !185)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !314, line: 30, size: 128, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !314, line: 31, baseType: !203, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !325, file: !314, line: 32, baseType: !329, size: 16, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !207, line: 24, baseType: !258)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !313, file: !314, line: 256, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!320, !213, !324, !203, !334}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !207, line: 61, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !322, line: 72, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !322, line: 16, baseType: !337)
!337 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !304, file: !200, line: 119, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !314, line: 84, size: 320, elements: !343)
!343 = !{!344, !345, !349, !4045, !4047}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !314, line: 85, baseType: !203, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !342, file: !314, line: 86, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!329, !213, !324, !115}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !342, file: !314, line: 88, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!329, !213, !353, !115}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !314, line: 175, size: 512, elements: !355)
!355 = !{!356, !357, !358, !359, !4036, !4040, !4041}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !354, file: !314, line: 176, baseType: !325, size: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !354, file: !314, line: 177, baseType: !334, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !354, file: !314, line: 178, baseType: !184, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !354, file: !314, line: 179, baseType: !360, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !365)
!365 = !{!366, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !4030, !4031, !4032, !4033, !4034, !4035}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !364, file: !20, line: 473, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !369)
!369 = !{!370, !371, !372, !380, !381, !388, !389, !392, !393, !3809, !3810, !3811, !3812, !3813, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3853, !3856, !3857, !3858, !3867, !3868, !3869, !3870}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !368, file: !20, line: 642, baseType: !329, size: 16)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !368, file: !20, line: 643, baseType: !258, size: 16, offset: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !368, file: !20, line: 644, baseType: !373, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !374, line: 23, baseType: !375)
!374 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 21, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !375, file: !374, line: 22, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !207, line: 37, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !322, line: 49, baseType: !13)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !368, file: !20, line: 645, baseType: !206, size: 128, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !368, file: !20, line: 646, baseType: !382, size: 32, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !374, line: 28, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 26, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !383, file: !374, line: 27, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !207, line: 38, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !322, line: 50, baseType: !13)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !368, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !368, file: !20, line: 650, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !368, file: !20, line: 651, baseType: !390, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !368, file: !20, line: 654, baseType: !394, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !397)
!397 = !{!398, !3643, !3653, !3657, !3661, !3665, !3669, !3673, !3677, !3681, !3685, !3686, !3690, !3694, !3731, !3760, !3764, !3770, !3774, !3778, !3782, !3786, !3790, !3796, !3800}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !396, file: !20, line: 1967, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !367, !402, !13}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !404, line: 82, size: 1536, elements: !405)
!404 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!405 = !{!406, !407, !417, !425, !426, !444, !445, !449, !462, !3627, !3628, !3629, !3630, !3635, !3636, !3637}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !403, file: !404, line: 84, baseType: !13, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !403, file: !404, line: 85, baseType: !408, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !409, line: 275, baseType: !410)
!409 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !409, line: 275, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !410, file: !409, line: 275, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !409, line: 69, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !409, line: 64, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !414, file: !409, line: 65, baseType: !13, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !403, file: !404, line: 86, baseType: !418, size: 128, offset: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !419, line: 38, size: 128, elements: !420)
!419 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!420 = !{!421, !423}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !419, line: 39, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !418, file: !419, line: 39, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !403, file: !404, line: 87, baseType: !402, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !403, file: !404, line: 88, baseType: !427, size: 128, offset: 256)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !404, line: 49, size: 128, elements: !428)
!428 = !{!429, !441}
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !404, line: 50, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !404, line: 50, size: 64, elements: !431)
!431 = !{!432, !437}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !404, line: 51, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !430, file: !404, line: 51, size: 64, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !433, file: !404, line: 52, baseType: !182, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !433, file: !404, line: 52, baseType: !182, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !430, file: !404, line: 54, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !183, line: 23, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !181, line: 31, baseType: !440)
!440 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !427, file: !404, line: 56, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !403, file: !404, line: 89, baseType: !367, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !403, file: !404, line: 91, baseType: !446, size: 256, offset: 448)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !403, file: !404, line: 94, baseType: !450, size: 64, offset: 704)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !451, line: 25, size: 64, elements: !452)
!451 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !451, line: 26, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !451, line: 26, size: 64, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !454, file: !451, line: 28, baseType: !439, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !451, line: 30, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !451, line: 30, size: 64, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !458, file: !451, line: 31, baseType: !220, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !458, file: !451, line: 32, baseType: !115, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !403, file: !404, line: 95, baseType: !463, size: 64, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !404, line: 128, size: 1024, align: 512, elements: !466)
!466 = !{!467, !471, !472, !479, !485, !489, !493, !497, !498, !502, !506, !3617, !3621}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !465, file: !404, line: 129, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!115, !402, !13}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !465, file: !404, line: 130, baseType: !468, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !465, file: !404, line: 131, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!115, !476, !478}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !465, file: !404, line: 132, baseType: !480, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!115, !476, !13, !203, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !465, file: !404, line: 134, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!115, !476}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !465, file: !404, line: 135, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!115, !402}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !465, file: !404, line: 136, baseType: !494, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !402}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !465, file: !404, line: 137, baseType: !494, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !465, file: !404, line: 138, baseType: !499, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !402, !367}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !465, file: !404, line: 139, baseType: !503, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!288, !402, !288, !115}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !465, file: !404, line: 140, baseType: !507, size: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !3616}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !512, line: 70, size: 256, elements: !513)
!512 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!513 = !{!514, !515, !3612, !3613}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !511, file: !512, line: 71, baseType: !402, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !511, file: !512, line: 72, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !518)
!518 = !{!519, !520, !523, !524, !525, !529, !1009, !1149, !1189, !1279, !1283, !1284, !1285, !1286, !1287, !1296, !1297, !1298, !1299, !1304, !1308, !1309, !1312, !1315, !1318, !1321, !1322, !1323, !1364, !3545, !3546, !3547, !3548, !3549, !3550, !3553, !3555, !3562, !3563, !3564, !3565, !3566, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !517, file: !20, line: 1191, baseType: !206, size: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !517, file: !20, line: 1192, baseType: !521, size: 32, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !207, line: 21, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !207, line: 18, baseType: !182)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !517, file: !20, line: 1193, baseType: !250, size: 8, offset: 160)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !517, file: !20, line: 1194, baseType: !337, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !517, file: !20, line: 1195, baseType: !526, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !207, line: 52, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !322, line: 88, baseType: !528)
!528 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !517, file: !20, line: 1196, baseType: !530, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !532)
!532 = !{!533, !534, !535, !542, !546, !550, !554, !994, !995, !999, !1001, !1002, !1003, !1005, !1006, !1007, !1008}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !20, line: 2367, baseType: !203, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !531, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !531, file: !20, line: 2376, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!115, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !541, line: 32, flags: DIFlagFwdDecl)
!541 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !531, file: !20, line: 2377, baseType: !543, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !531, file: !20, line: 2378, baseType: !547, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!402, !530, !115, !203, !184}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !531, file: !20, line: 2380, baseType: !551, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !516}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !531, file: !20, line: 2381, baseType: !555, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !557)
!557 = !{!558, !559, !560, !564, !586, !612, !613, !614, !615, !619, !624, !625, !645, !701, !702, !703, !704, !705, !708, !709, !710, !718, !722, !749, !770, !771, !772, !773, !782, !805, !806, !809, !812, !813, !814, !815, !816, !817, !818, !823, !824, !952, !960, !961, !962, !964, !968, !969, !973, !974, !975, !976, !978, !979, !980, !987, !988, !989, !993}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !556, file: !12, line: 403, baseType: !11, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !556, file: !12, line: 406, baseType: !206, size: 128, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !556, file: !12, line: 409, baseType: !561, size: 448, offset: 192)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 56)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !556, file: !12, line: 417, baseType: !565, size: 768, offset: 640)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !566)
!566 = !{!567, !568, !569, !570, !573}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !565, file: !12, line: 46, baseType: !199, size: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !565, file: !12, line: 47, baseType: !555, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !565, file: !12, line: 48, baseType: !213, size: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !565, file: !12, line: 49, baseType: !571, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !565, file: !12, line: 50, baseType: !574, size: 64, offset: 704)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !576, line: 26, size: 256, elements: !577)
!576 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !575, file: !576, line: 27, baseType: !13, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !575, file: !576, line: 28, baseType: !580, size: 192, offset: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !581, line: 43, size: 192, elements: !582)
!581 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!582 = !{!583, !585}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !580, file: !581, line: 44, baseType: !584, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !229, line: 23, baseType: !228)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !580, file: !581, line: 45, baseType: !206, size: 128, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !556, file: !12, line: 418, baseType: !587, size: 64, offset: 1408)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !589)
!589 = !{!590, !591, !596, !600, !604, !608}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !588, file: !12, line: 54, baseType: !325, size: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !588, file: !12, line: 55, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!320, !587, !595, !288}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !588, file: !12, line: 57, baseType: !597, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!320, !587, !595, !203, !334}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !588, file: !12, line: 59, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !555, !203}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !588, file: !12, line: 60, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!115, !555}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !588, file: !12, line: 61, baseType: !609, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !555}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !556, file: !12, line: 419, baseType: !203, size: 64, offset: 1472)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !556, file: !12, line: 420, baseType: !203, size: 64, offset: 1536)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !556, file: !12, line: 421, baseType: !213, size: 64, offset: 1600)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !556, file: !12, line: 424, baseType: !616, size: 64, offset: 1664)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !556, file: !12, line: 425, baseType: !620, size: 64, offset: 1728)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !183, line: 20, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !181, line: 26, baseType: !115)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !556, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !556, file: !12, line: 435, baseType: !626, size: 256, offset: 1856)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !627, line: 66, size: 256, elements: !628)
!627 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!628 = !{!629, !638, !639, !644}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !626, file: !627, line: 67, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !631, line: 13, baseType: !632)
!631 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !207, line: 181, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 179, size: 64, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !633, file: !207, line: 180, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !183, line: 22, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !181, line: 30, baseType: !528)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !626, file: !627, line: 68, baseType: !584, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !626, file: !627, line: 70, baseType: !640, size: 32, offset: 96)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !641, line: 15, size: 32, elements: !642)
!641 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !640, file: !641, line: 20, baseType: !240, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !626, file: !627, line: 72, baseType: !206, size: 128, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !556, file: !12, line: 437, baseType: !646, size: 64, offset: 2112)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !648, line: 69, size: 320, elements: !649)
!648 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!649 = !{!650, !651, !652, !672, !674, !678, !679}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !648, line: 70, baseType: !203, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !647, file: !648, line: 71, baseType: !555, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !647, file: !648, line: 72, baseType: !653, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !648, line: 47, size: 256, elements: !656)
!656 = !{!657, !658, !664, !668}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !648, line: 49, baseType: !13, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !655, file: !648, line: 51, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!115, !203, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !655, file: !648, line: 53, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!115, !288, !662}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !655, file: !648, line: 55, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !184}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !647, file: !648, line: 73, baseType: !673, size: 16, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !647, file: !648, line: 74, baseType: !675, size: 8, offset: 208)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !183, line: 16, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !181, line: 20, baseType: !677)
!677 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !648, line: 75, baseType: !248, size: 8, offset: 216)
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !647, file: !648, line: 76, baseType: !680, size: 64, offset: 256)
!680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !648, line: 76, size: 64, elements: !681)
!681 = !{!682, !683, !690}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !680, file: !648, line: 77, baseType: !184, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !680, file: !648, line: 78, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !648, line: 86, size: 128, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !686, file: !648, line: 87, baseType: !13, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !686, file: !648, line: 88, baseType: !288, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !680, file: !648, line: 79, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !648, line: 92, size: 256, elements: !694)
!694 = !{!695, !696, !697, !699, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !693, file: !648, line: 94, baseType: !13, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !693, file: !648, line: 95, baseType: !13, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !693, file: !648, line: 96, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !693, file: !648, line: 97, baseType: !653, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !693, file: !648, line: 98, baseType: !184, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !556, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !556, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !556, file: !12, line: 442, baseType: !616, size: 64, offset: 2240)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !556, file: !12, line: 443, baseType: !620, size: 64, offset: 2304)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !556, file: !12, line: 444, baseType: !706, size: 8, offset: 2368)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !207, line: 35, baseType: !707)
!707 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !556, file: !12, line: 451, baseType: !706, size: 8, offset: 2376)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !556, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !556, file: !12, line: 455, baseType: !711, size: 64, offset: 2432)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !713, line: 23, size: 96, elements: !714)
!713 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!714 = !{!715, !716, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !712, file: !713, line: 24, baseType: !115, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !712, file: !713, line: 24, baseType: !115, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !712, file: !713, line: 24, baseType: !115, size: 32, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !556, file: !12, line: 458, baseType: !719, size: 64, offset: 2496)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!115}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !556, file: !12, line: 460, baseType: !723, size: 4032, align: 512, offset: 2560)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 4032, elements: !747)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !725)
!725 = !{!726, !727, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !724, file: !12, line: 363, baseType: !184, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !724, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !724, file: !12, line: 367, baseType: !729, size: 448, offset: 128)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !729, file: !12, line: 320, baseType: !555, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !729, file: !12, line: 321, baseType: !733, size: 384, offset: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !734, line: 40, size: 384, elements: !735)
!734 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !734, line: 41, baseType: !737, size: 384, align: 64)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 384, align: 64, elements: !745)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !739, line: 5, size: 192, align: 64, elements: !740)
!739 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!740 = !{!741, !742, !744}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !738, file: !739, line: 6, baseType: !337, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !738, file: !739, line: 7, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !738, file: !739, line: 8, baseType: !743, size: 64, offset: 128)
!745 = !{!746}
!746 = !DISubrange(count: 2)
!747 = !{!748}
!748 = !DISubrange(count: 7)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !556, file: !12, line: 463, baseType: !750, size: 192, offset: 6592)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !751, line: 8, size: 192, elements: !752)
!751 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!752 = !{!753, !754, !756}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !750, file: !751, line: 10, baseType: !13, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !750, file: !751, line: 11, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !750, file: !751, line: 12, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !759, line: 59, size: 48, elements: !760)
!759 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!760 = !{!761, !765, !766, !767, !768, !769}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !758, file: !759, line: 60, baseType: !762, size: 16)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !183, line: 18, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !181, line: 23, baseType: !764)
!764 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !758, file: !759, line: 61, baseType: !762, size: 16, offset: 16)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !758, file: !759, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !758, file: !759, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !759, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !758, file: !759, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !556, file: !12, line: 465, baseType: !337, size: 64, offset: 6784)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !556, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !556, file: !12, line: 470, baseType: !206, size: 128, offset: 6912)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !556, file: !12, line: 471, baseType: !774, size: 64, offset: 7040)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !776, line: 33, size: 96, elements: !777)
!776 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!777 = !{!778, !779, !780, !781}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !775, file: !776, line: 37, baseType: !115, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !775, file: !776, line: 43, baseType: !115, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !775, file: !776, line: 45, baseType: !258, size: 16, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !776, line: 47, baseType: !258, size: 16, offset: 80)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !556, file: !12, line: 476, baseType: !783, size: 64, offset: 7104)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !785)
!785 = !{!786, !802, !803, !804}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !784, file: !12, line: 379, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !789, line: 204, baseType: !790)
!789 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !789, line: 197, size: 192, elements: !791)
!791 = !{!792, !794, !795, !796, !798, !800}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !790, file: !789, line: 198, baseType: !793, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !789, line: 21, baseType: !180)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !790, file: !789, line: 199, baseType: !250, size: 8, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !790, file: !789, line: 200, baseType: !250, size: 8, offset: 40)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !790, file: !789, line: 201, baseType: !797, size: 16, offset: 48)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !789, line: 17, baseType: !257)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !790, file: !789, line: 202, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !789, line: 16, baseType: !439)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !790, file: !789, line: 203, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !789, line: 22, baseType: !439)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !784, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !784, file: !12, line: 381, baseType: !288, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !784, file: !12, line: 382, baseType: !288, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !556, file: !12, line: 477, baseType: !784, size: 256, offset: 7168)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !556, file: !12, line: 480, baseType: !807, size: 64, offset: 7424)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !556, file: !12, line: 483, baseType: !810, size: 64, offset: 7488)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !556, file: !12, line: 488, baseType: !288, size: 64, offset: 7552)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !556, file: !12, line: 492, baseType: !184, size: 64, offset: 7616)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !556, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !556, file: !12, line: 495, baseType: !184, size: 64, offset: 7744)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !556, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !556, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !556, file: !12, line: 500, baseType: !819, size: 64, offset: 7872)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !821, line: 45, baseType: !822)
!821 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !556, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !556, file: !12, line: 504, baseType: !825, size: 64, offset: 8000)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !828, line: 96, size: 192, elements: !829)
!828 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!829 = !{!830, !831, !912, !916}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !827, file: !828, line: 97, baseType: !13, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !827, file: !828, line: 98, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !828, line: 24, size: 3072, elements: !834)
!834 = !{!835, !837, !838, !839, !840, !864, !865, !866, !867, !885, !897, !898, !909, !910, !911}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !833, file: !828, line: 26, baseType: !836, size: 128)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 128, elements: !745)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !833, file: !828, line: 27, baseType: !836, size: 128, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !833, file: !828, line: 28, baseType: !115, size: 32, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !833, file: !828, line: 31, baseType: !220, size: 32, align: 512, offset: 512)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !833, file: !828, line: 32, baseType: !841, size: 960, offset: 576)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !842, line: 206, size: 960, elements: !843)
!842 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!843 = !{!844, !853, !858, !860, !861, !863}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !841, file: !842, line: 207, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !207, line: 232, size: 128, align: 64, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !846, file: !207, line: 233, baseType: !845, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !846, file: !207, line: 234, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !845}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !841, file: !842, line: 208, baseType: !854, size: 256, offset: 64)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 256, elements: !856)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!856 = !{!857}
!857 = !DISubrange(count: 4)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !841, file: !842, line: 209, baseType: !859, size: 256, offset: 320)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 256, elements: !856)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !841, file: !842, line: 213, baseType: !185, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !841, file: !842, line: 215, baseType: !862, size: 256, offset: 640)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !856)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !841, file: !842, line: 216, baseType: !248, size: 8, offset: 896)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !833, file: !828, line: 33, baseType: !337, size: 64, offset: 1536)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !833, file: !828, line: 34, baseType: !337, size: 64, offset: 1600)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !833, file: !828, line: 35, baseType: !706, size: 8, offset: 1664)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !833, file: !828, line: 36, baseType: !868, size: 320, offset: 1728)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !869, line: 11, size: 320, elements: !870)
!869 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!870 = !{!871, !878, !879, !884}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !868, file: !869, line: 16, baseType: !872, size: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !207, line: 198, size: 128, elements: !873)
!873 = !{!874, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !872, file: !207, line: 199, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !872, file: !207, line: 199, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !868, file: !869, line: 17, baseType: !337, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !868, file: !869, line: 18, baseType: !880, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !868, file: !869, line: 19, baseType: !182, size: 32, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !833, file: !828, line: 37, baseType: !886, size: 256, offset: 2048)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !887, line: 98, size: 256, elements: !888)
!887 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !886, file: !887, line: 99, baseType: !630, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !886, file: !887, line: 100, baseType: !206, size: 128, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !886, file: !887, line: 101, baseType: !892, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !887, line: 21, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !833, file: !828, line: 38, baseType: !846, size: 128, align: 64, offset: 2304)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !833, file: !828, line: 39, baseType: !899, size: 64, offset: 2432)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !828, line: 49, size: 768, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !900, file: !828, line: 50, baseType: !220, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !900, file: !828, line: 51, baseType: !859, size: 256, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !900, file: !828, line: 53, baseType: !859, size: 256, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !900, file: !828, line: 54, baseType: !337, size: 64, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !900, file: !828, line: 55, baseType: !899, size: 64, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !900, file: !828, line: 56, baseType: !115, size: 32, offset: 704)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !900, file: !828, line: 57, baseType: !115, size: 32, offset: 736)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !833, file: !828, line: 40, baseType: !337, size: 64, offset: 2496)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !833, file: !828, line: 42, baseType: !115, size: 32, offset: 2560)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !833, file: !828, line: 43, baseType: !826, size: 64, offset: 2624)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !827, file: !828, line: 99, baseType: !913, offset: 128)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !914, line: 211, elements: !915)
!914 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!915 = !{}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !827, file: !828, line: 100, baseType: !917, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !828, line: 63, size: 3008, elements: !919)
!919 = !{!920, !921, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !951}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !918, file: !828, line: 64, baseType: !899, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !918, file: !828, line: 65, baseType: !922, size: 192, offset: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 192, elements: !289)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !918, file: !828, line: 67, baseType: !115, size: 32, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !918, file: !828, line: 68, baseType: !626, size: 256, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !918, file: !828, line: 69, baseType: !220, size: 32, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !918, file: !828, line: 70, baseType: !626, size: 256, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !918, file: !828, line: 71, baseType: !337, size: 64, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !918, file: !828, line: 72, baseType: !337, size: 64, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !918, file: !828, line: 73, baseType: !337, size: 64, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !918, file: !828, line: 74, baseType: !337, size: 64, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !918, file: !828, line: 75, baseType: !337, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !918, file: !828, line: 76, baseType: !337, size: 64, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !918, file: !828, line: 77, baseType: !337, size: 64, offset: 1280)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !918, file: !828, line: 78, baseType: !337, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !918, file: !828, line: 79, baseType: !706, size: 8, offset: 1408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !918, file: !828, line: 80, baseType: !337, size: 64, offset: 1472)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !918, file: !828, line: 81, baseType: !626, size: 256, offset: 1536)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !918, file: !828, line: 82, baseType: !575, size: 256, offset: 1792)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !918, file: !828, line: 84, baseType: !240, size: 32, offset: 2048)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !918, file: !828, line: 87, baseType: !337, size: 64, offset: 2112)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !918, file: !828, line: 88, baseType: !337, size: 64, offset: 2176)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !918, file: !828, line: 89, baseType: !943, size: 704, offset: 2240)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !887, line: 111, size: 704, elements: !944)
!944 = !{!945, !946, !947, !950}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !943, file: !887, line: 112, baseType: !886, size: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !943, file: !887, line: 113, baseType: !868, size: 320, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !943, file: !887, line: 116, baseType: !948, size: 64, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !887, line: 18, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !943, file: !887, line: 117, baseType: !115, size: 32, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !918, file: !828, line: 90, baseType: !826, size: 64, offset: 2944)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !556, file: !12, line: 515, baseType: !953, size: 64, offset: 8064)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !955, line: 117, size: 128, elements: !956)
!955 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !954, file: !955, line: 118, baseType: !622, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !954, file: !955, line: 119, baseType: !622, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !954, file: !955, line: 120, baseType: !185, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !556, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !556, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !556, file: !12, line: 520, baseType: !963, size: 64, offset: 8192)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !556, file: !12, line: 523, baseType: !965, size: 64, offset: 8256)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !556, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !556, file: !12, line: 525, baseType: !970, size: 64, offset: 8384)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !556, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !556, file: !12, line: 533, baseType: !184, size: 64, offset: 8512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !556, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !556, file: !12, line: 535, baseType: !977, size: 64, offset: 8640)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !556, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !556, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !556, file: !12, line: 540, baseType: !981, size: 64, offset: 8768)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !983, line: 32, size: 64, elements: !984)
!983 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !982, file: !983, line: 33, baseType: !622, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !982, file: !983, line: 34, baseType: !622, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !556, file: !12, line: 563, baseType: !206, size: 128, offset: 8832)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !556, file: !12, line: 565, baseType: !206, size: 128, offset: 8960)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !556, file: !12, line: 568, baseType: !990, size: 64, offset: 9088)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !556, file: !12, line: 570, baseType: !240, size: 32, offset: 9152)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !20, line: 2382, baseType: !530, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !531, file: !20, line: 2383, baseType: !996, size: 64, offset: 512)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !207, line: 194, size: 64, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !996, file: !207, line: 195, baseType: !875, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !531, file: !20, line: 2385, baseType: !1000, offset: 576)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !914, line: 206, elements: !915)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !531, file: !20, line: 2386, baseType: !1000, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !531, file: !20, line: 2387, baseType: !1000, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !531, file: !20, line: 2388, baseType: !1004, offset: 576)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, elements: !289)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !531, file: !20, line: 2390, baseType: !1000, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !531, file: !20, line: 2391, baseType: !1000, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !531, file: !20, line: 2392, baseType: !1000, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !531, file: !20, line: 2393, baseType: !1000, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !517, file: !20, line: 1197, baseType: !1010, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1013)
!1013 = !{!1014, !1018, !1022, !1023, !1027, !1033, !1037, !1038, !1039, !1043, !1047, !1051, !1052, !1053, !1059, !1063, !1064, !1071, !1072, !1073, !1074, !1078, !1082, !1131, !1147, !1148}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1012, file: !20, line: 2058, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!367, !516}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1012, file: !20, line: 2059, baseType: !1019, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !367}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1012, file: !20, line: 2060, baseType: !1019, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1012, file: !20, line: 2062, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !367, !115}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1012, file: !20, line: 2063, baseType: !1028, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!115, !367, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1012, file: !20, line: 2064, baseType: !1034, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!115, !367}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1012, file: !20, line: 2065, baseType: !1019, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1012, file: !20, line: 2066, baseType: !551, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1012, file: !20, line: 2067, baseType: !1040, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!115, !516, !115}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1012, file: !20, line: 2068, baseType: !1044, size: 64, offset: 576)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!115, !516, !19}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1012, file: !20, line: 2069, baseType: !1048, size: 64, offset: 640)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!115, !516}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1012, file: !20, line: 2070, baseType: !1044, size: 64, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1012, file: !20, line: 2071, baseType: !1048, size: 64, offset: 768)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1012, file: !20, line: 2072, baseType: !1054, size: 64, offset: 832)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!115, !402, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1012, file: !20, line: 2073, baseType: !1060, size: 64, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!115, !516, !755, !288}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1012, file: !20, line: 2074, baseType: !551, size: 64, offset: 960)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1012, file: !20, line: 2076, baseType: !1065, size: 64, offset: 1024)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!115, !1068, !402}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1070, line: 66, flags: DIFlagFwdDecl)
!1070 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1012, file: !20, line: 2077, baseType: !1065, size: 64, offset: 1088)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1012, file: !20, line: 2078, baseType: !1065, size: 64, offset: 1152)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1012, file: !20, line: 2079, baseType: !1065, size: 64, offset: 1216)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1012, file: !20, line: 2081, baseType: !1075, size: 64, offset: 1280)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!320, !516, !115, !288, !334, !526}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1012, file: !20, line: 2082, baseType: !1079, size: 64, offset: 1344)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!320, !516, !115, !203, !334, !526}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1012, file: !20, line: 2083, baseType: !1083, size: 64, offset: 1408)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!1086, !367}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1114, !1115, !1116}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1088, file: !25, line: 297, baseType: !872, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1088, file: !25, line: 298, baseType: !206, size: 128, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1088, file: !25, line: 299, baseType: !206, size: 128, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1088, file: !25, line: 300, baseType: !206, size: 128, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1088, file: !25, line: 301, baseType: !626, size: 256, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1088, file: !25, line: 302, baseType: !220, size: 32, offset: 768)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1088, file: !25, line: 303, baseType: !240, size: 32, offset: 800)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1088, file: !25, line: 304, baseType: !516, size: 64, offset: 832)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1088, file: !25, line: 305, baseType: !1099, size: 64, offset: 896)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !1100)
!1100 = !{!1101, !1113}
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !25, line: 69, baseType: !1102, size: 32)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !25, line: 69, size: 32, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1102, file: !25, line: 70, baseType: !373, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1102, file: !25, line: 71, baseType: !382, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1102, file: !25, line: 72, baseType: !1107, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1108, line: 24, baseType: !1109)
!1108 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1108, line: 22, size: 32, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1109, file: !1108, line: 23, baseType: !1112, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1108, line: 20, baseType: !379)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1099, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1088, file: !25, line: 306, baseType: !526, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1088, file: !25, line: 307, baseType: !337, size: 64, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1088, file: !25, line: 308, baseType: !1117, size: 576, offset: 1088)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !1118)
!1118 = !{!1119, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1130}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1117, file: !25, line: 206, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !528)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1117, file: !25, line: 207, baseType: !1120, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1117, file: !25, line: 208, baseType: !1120, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1117, file: !25, line: 209, baseType: !1120, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1117, file: !25, line: 210, baseType: !1120, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1117, file: !25, line: 211, baseType: !1120, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1117, file: !25, line: 212, baseType: !1120, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1117, file: !25, line: 213, baseType: !1128, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1129, line: 8, baseType: !637)
!1129 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1117, file: !25, line: 214, baseType: !1128, size: 64, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1012, file: !20, line: 2085, baseType: !1132, size: 64, offset: 1472)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!185, !516, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1137, line: 15, size: 256, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1138 = !{!1139, !1141, !1142, !1143, !1144}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1136, file: !1137, line: 16, baseType: !1140, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !207, line: 154, baseType: !13)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1136, file: !1137, line: 19, baseType: !115, size: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1136, file: !1137, line: 26, baseType: !337, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1136, file: !1137, line: 33, baseType: !337, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1136, file: !1137, line: 36, baseType: !1145, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1012, file: !20, line: 2087, baseType: !1132, size: 64, offset: 1536)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1012, file: !20, line: 2089, baseType: !551, size: 64, offset: 1600)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !517, file: !20, line: 1198, baseType: !1150, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !1153)
!1153 = !{!1154, !1158, !1162, !1166, !1167, !1168, !1169, !1170, !1175, !1180, !1184}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1152, file: !25, line: 325, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!115, !1087}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1152, file: !25, line: 326, baseType: !1159, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1087, !516, !115}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1152, file: !25, line: 327, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !1087}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1152, file: !25, line: 328, baseType: !1155, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1152, file: !25, line: 329, baseType: !1155, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1152, file: !25, line: 330, baseType: !1155, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1152, file: !25, line: 331, baseType: !1040, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1152, file: !25, line: 334, baseType: !1171, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!1174, !367}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1152, file: !25, line: 335, baseType: !1176, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!115, !367, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1152, file: !25, line: 337, baseType: !1181, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!115, !367, !1174}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1152, file: !25, line: 339, baseType: !1185, size: 64, offset: 640)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!115, !516, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !517, file: !20, line: 1199, baseType: !1190, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !1193)
!1193 = !{!1194, !1205, !1206, !1210, !1211, !1212, !1227, !1250, !1254, !1255, !1278}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1192, file: !25, line: 431, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!115, !516, !115, !115, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1201, line: 8, size: 128, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1200, file: !1201, line: 9, baseType: !510, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1200, file: !1201, line: 10, baseType: !402, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1192, file: !25, line: 432, baseType: !1040, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1192, file: !25, line: 433, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!115, !516, !13}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1192, file: !25, line: 434, baseType: !1207, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1192, file: !25, line: 435, baseType: !1040, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1192, file: !25, line: 436, baseType: !1213, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!115, !516, !115, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1217, file: !25, line: 418, baseType: !115, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1217, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1217, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1217, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1217, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1217, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1217, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1217, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1192, file: !25, line: 437, baseType: !1228, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!115, !516, !1099, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1232, file: !25, line: 346, baseType: !115, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1232, file: !25, line: 347, baseType: !438, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1232, file: !25, line: 348, baseType: !438, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1232, file: !25, line: 349, baseType: !438, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1232, file: !25, line: 350, baseType: !438, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1232, file: !25, line: 351, baseType: !438, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1232, file: !25, line: 352, baseType: !438, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1232, file: !25, line: 353, baseType: !636, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1232, file: !25, line: 355, baseType: !636, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1232, file: !25, line: 356, baseType: !115, size: 32, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1232, file: !25, line: 357, baseType: !115, size: 32, offset: 608)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1232, file: !25, line: 358, baseType: !438, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1232, file: !25, line: 359, baseType: !438, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1232, file: !25, line: 360, baseType: !438, size: 64, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1232, file: !25, line: 361, baseType: !636, size: 64, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1232, file: !25, line: 362, baseType: !115, size: 32, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1192, file: !25, line: 438, baseType: !1251, size: 64, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!115, !516, !1188, !1231}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1192, file: !25, line: 440, baseType: !1228, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1192, file: !25, line: 441, baseType: !1256, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!115, !516, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1260, file: !25, line: 412, baseType: !13, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1260, file: !25, line: 413, baseType: !1264, size: 1344, offset: 64)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1265, size: 1344, elements: !289)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1277}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !25, line: 398, baseType: !13, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1265, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1265, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1265, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1265, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1265, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1265, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1265, file: !25, line: 406, baseType: !440, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1265, file: !25, line: 407, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !207, line: 132, baseType: !438)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1265, file: !25, line: 408, baseType: !1276, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1192, file: !25, line: 442, baseType: !1207, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !517, file: !20, line: 1200, baseType: !1280, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !517, file: !20, line: 1201, baseType: !337, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !517, file: !20, line: 1202, baseType: !337, size: 64, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !517, file: !20, line: 1203, baseType: !337, size: 64, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !517, file: !20, line: 1204, baseType: !402, size: 64, offset: 832)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !517, file: !20, line: 1205, baseType: !1288, size: 320, offset: 896)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1289, line: 48, size: 320, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1290 = !{!1291, !1292, !1293, !1294, !1295}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1288, file: !1289, line: 49, baseType: !630, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1288, file: !1289, line: 55, baseType: !630, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1288, file: !1289, line: 57, baseType: !640, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1288, file: !1289, line: 59, baseType: !584, size: 32, offset: 160)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1288, file: !1289, line: 60, baseType: !206, size: 128, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !517, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !517, file: !20, line: 1207, baseType: !240, size: 32, offset: 1248)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !517, file: !20, line: 1209, baseType: !184, size: 64, offset: 1280)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !517, file: !20, line: 1211, baseType: !1300, size: 64, offset: 1344)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1303)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !517, file: !20, line: 1223, baseType: !1305, size: 64, offset: 1408)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !419, line: 34, size: 64, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1305, file: !419, line: 35, baseType: !422, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !517, file: !20, line: 1224, baseType: !206, size: 128, offset: 1472)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !517, file: !20, line: 1225, baseType: !1310, size: 64, offset: 1600)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !517, file: !20, line: 1226, baseType: !1313, size: 64, offset: 1664)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !517, file: !20, line: 1227, baseType: !1316, size: 64, offset: 1728)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !517, file: !20, line: 1228, baseType: !1319, size: 64, offset: 1792)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !517, file: !20, line: 1229, baseType: !872, size: 128, offset: 1856)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !517, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !517, file: !20, line: 1231, baseType: !1324, size: 2496, offset: 2048)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1330, !1362}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1324, file: !25, line: 522, baseType: !13, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1324, file: !25, line: 523, baseType: !1288, size: 320, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1324, file: !25, line: 524, baseType: !1329, size: 192, offset: 384)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 192, elements: !289)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1324, file: !25, line: 525, baseType: !1331, size: 1728, offset: 576)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1332, size: 1728, elements: !289)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !1333)
!1333 = !{!1334, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1332, file: !25, line: 223, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !1337)
!1337 = !{!1338, !1339, !1352, !1353}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1336, file: !25, line: 446, baseType: !115, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1336, file: !25, line: 447, baseType: !1340, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1342, file: !25, line: 313, baseType: !1040, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1342, file: !25, line: 314, baseType: !1040, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1342, file: !25, line: 315, baseType: !1040, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1342, file: !25, line: 316, baseType: !1040, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1342, file: !25, line: 317, baseType: !1155, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1342, file: !25, line: 318, baseType: !1155, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1342, file: !25, line: 319, baseType: !1155, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1342, file: !25, line: 320, baseType: !1185, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1336, file: !25, line: 448, baseType: !555, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1336, file: !25, line: 449, baseType: !1335, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1332, file: !25, line: 224, baseType: !115, size: 32, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1332, file: !25, line: 226, baseType: !206, size: 128, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1332, file: !25, line: 227, baseType: !337, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1332, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1332, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1332, file: !25, line: 230, baseType: !1120, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1332, file: !25, line: 231, baseType: !1120, size: 64, offset: 448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1332, file: !25, line: 232, baseType: !184, size: 64, offset: 512)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1324, file: !25, line: 526, baseType: !1363, size: 192, offset: 2304)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1340, size: 192, elements: !289)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !517, file: !20, line: 1233, baseType: !1365, size: 2368, offset: 4544)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !1366)
!1366 = !{!1367, !1368, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1365, file: !20, line: 1185, baseType: !258, size: 16)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1365, file: !20, line: 1186, baseType: !258, size: 16, offset: 16)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1365, file: !20, line: 1187, baseType: !1370, size: 2304, offset: 64)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 2304, elements: !289)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1372, line: 12, size: 768, elements: !1373)
!1372 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1373 = !{!1374, !1388, !1389, !3543, !3544}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1371, file: !1372, line: 13, baseType: !1375, size: 384)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1376, line: 17, size: 384, elements: !1377)
!1376 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1377 = !{!1378, !1379, !1380, !1387}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1375, file: !1376, line: 18, baseType: !115, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1375, file: !1376, line: 19, baseType: !115, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1375, file: !1376, line: 20, baseType: !1381, size: 192, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1382, line: 41, baseType: !1383)
!1382 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1382, line: 37, size: 192, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !1382, line: 38, baseType: !220, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1383, file: !1382, line: 39, baseType: !206, size: 128, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1375, file: !1376, line: 22, baseType: !846, size: 128, align: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1371, file: !1372, line: 14, baseType: !698, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1371, file: !1372, line: 15, baseType: !1390, size: 64, offset: 448)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1391, line: 16, size: 64, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1392 = !{!1393}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1390, file: !1391, line: 17, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1070, line: 746, size: 58368, elements: !1396)
!1396 = !{!1397, !1405, !1406, !1407, !1413, !1414, !1415, !1416, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1487, !1498, !1593, !1597, !1600, !1631, !1632, !1633, !1634, !1645, !1647, !1648, !1649, !1650, !1651, !1652, !1663, !1664, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1681, !1682, !1689, !1690, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2717, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2765, !2771, !2772, !2773, !2774, !2775, !2779, !2782, !2789, !2794, !2797, !2800, !2803, !2806, !2944, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2982, !2983, !2984, !2993, !3001, !3002, !3003, !3004, !3005, !3010, !3011, !3012, !3015, !3016, !3019, !3022, !3025, !3033, !3036, !3037, !3123, !3124, !3125, !3126, !3127, !3133, !3134, !3135, !3136, !3139, !3140, !3143, !3146, !3147, !3150, !3151, !3152, !3155, !3156, !3157, !3158, !3159, !3160, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3192, !3193, !3199, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3211, !3283, !3285, !3286, !3287, !3288, !3289, !3290, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3320, !3321, !3322}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1395, file: !1070, line: 752, baseType: !1398, size: 192)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1399, line: 56, size: 192, elements: !1400)
!1399 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1400 = !{!1401, !1402, !1403, !1404}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1398, file: !1399, line: 57, baseType: !337, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1398, file: !1399, line: 58, baseType: !337, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1398, file: !1399, line: 59, baseType: !182, size: 32, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1398, file: !1399, line: 61, baseType: !182, size: 32, offset: 160)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1395, file: !1070, line: 754, baseType: !13, size: 32, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1395, file: !1070, line: 767, baseType: !184, size: 64, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1395, file: !1070, line: 768, baseType: !1408, size: 32, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1409, line: 113, baseType: !1410)
!1409 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1409, line: 111, size: 32, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1410, file: !1409, line: 112, baseType: !240, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !1070, line: 770, baseType: !13, size: 32, offset: 352)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1395, file: !1070, line: 771, baseType: !13, size: 32, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1395, file: !1070, line: 774, baseType: !115, size: 32, offset: 416)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1395, file: !1070, line: 775, baseType: !1417, size: 128, offset: 448)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1418, line: 58, size: 128, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1419 = !{!1420, !1426, !1431, !1432}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1417, file: !1418, line: 59, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1422, line: 60, size: 64, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1421, file: !1422, line: 61, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !1418, line: 60, baseType: !1427, size: 32, offset: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !1418, line: 60, size: 32, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1427, file: !1418, line: 61, baseType: !13, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1427, file: !1418, line: 62, baseType: !240, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1417, file: !1418, line: 65, baseType: !256, size: 16, offset: 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1417, file: !1418, line: 65, baseType: !256, size: 16, offset: 112)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1395, file: !1070, line: 776, baseType: !13, size: 32, offset: 576)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1395, file: !1070, line: 777, baseType: !337, size: 64, offset: 640)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1395, file: !1070, line: 778, baseType: !1394, size: 64, offset: 704)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1395, file: !1070, line: 787, baseType: !115, size: 32, offset: 768)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1395, file: !1070, line: 788, baseType: !115, size: 32, offset: 800)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1395, file: !1070, line: 790, baseType: !115, size: 32, offset: 832)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1395, file: !1070, line: 792, baseType: !115, size: 32, offset: 864)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1395, file: !1070, line: 793, baseType: !115, size: 32, offset: 896)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1395, file: !1070, line: 794, baseType: !115, size: 32, offset: 928)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1395, file: !1070, line: 795, baseType: !13, size: 32, offset: 960)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1395, file: !1070, line: 797, baseType: !1444, size: 2048, offset: 1024)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1070, line: 551, size: 2048, elements: !1445)
!1445 = !{!1446, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1466, !1469, !1470, !1471}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1444, file: !1070, line: 553, baseType: !1447, size: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1070, line: 411, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1447, file: !1070, line: 412, baseType: !337, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1447, file: !1070, line: 413, baseType: !182, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1444, file: !1070, line: 554, baseType: !738, size: 192, align: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1444, file: !1070, line: 555, baseType: !438, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1444, file: !1070, line: 556, baseType: !438, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1444, file: !1070, line: 558, baseType: !206, size: 128, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1444, file: !1070, line: 559, baseType: !13, size: 32, offset: 576)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1444, file: !1070, line: 561, baseType: !438, size: 64, offset: 640)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1444, file: !1070, line: 562, baseType: !438, size: 64, offset: 704)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1444, file: !1070, line: 563, baseType: !438, size: 64, offset: 768)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1444, file: !1070, line: 564, baseType: !438, size: 64, offset: 832)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1444, file: !1070, line: 565, baseType: !636, size: 64, offset: 896)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1444, file: !1070, line: 566, baseType: !438, size: 64, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1444, file: !1070, line: 568, baseType: !438, size: 64, offset: 1024)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1444, file: !1070, line: 571, baseType: !115, size: 32, offset: 1088)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1444, file: !1070, line: 572, baseType: !1465, size: 64, offset: 1152)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1444, file: !1070, line: 574, baseType: !1467, size: 64, offset: 1216)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1070, line: 49, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1444, file: !1070, line: 576, baseType: !1467, size: 64, offset: 1280)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1444, file: !1070, line: 578, baseType: !337, size: 64, offset: 1344)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1444, file: !1070, line: 588, baseType: !1472, size: 512, align: 512, offset: 1536)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1070, line: 497, size: 512, align: 512, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1472, file: !1070, line: 498, baseType: !438, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1472, file: !1070, line: 499, baseType: !438, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1472, file: !1070, line: 500, baseType: !438, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1472, file: !1070, line: 501, baseType: !182, size: 32, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1472, file: !1070, line: 502, baseType: !182, size: 32, offset: 224)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1472, file: !1070, line: 503, baseType: !337, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1472, file: !1070, line: 504, baseType: !337, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1472, file: !1070, line: 505, baseType: !337, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1472, file: !1070, line: 506, baseType: !1483, size: 64, align: 64, offset: 448)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1070, line: 445, size: 64, align: 64, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1483, file: !1070, line: 446, baseType: !13, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1483, file: !1070, line: 447, baseType: !13, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1395, file: !1070, line: 798, baseType: !1488, size: 384, offset: 3072)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1070, line: 592, size: 384, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1488, file: !1070, line: 593, baseType: !206, size: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1488, file: !1070, line: 594, baseType: !337, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1488, file: !1070, line: 595, baseType: !337, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1488, file: !1070, line: 596, baseType: !13, size: 32, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1488, file: !1070, line: 597, baseType: !258, size: 16, offset: 288)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1488, file: !1070, line: 598, baseType: !258, size: 16, offset: 304)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1488, file: !1070, line: 600, baseType: !1497, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1395, file: !1070, line: 799, baseType: !1499, size: 1792, offset: 3456)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1070, line: 610, size: 1792, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1590, !1591}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1499, file: !1070, line: 611, baseType: !738, size: 192, align: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1499, file: !1070, line: 618, baseType: !438, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1499, file: !1070, line: 619, baseType: !438, size: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1499, file: !1070, line: 620, baseType: !438, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1499, file: !1070, line: 621, baseType: !438, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1499, file: !1070, line: 622, baseType: !438, size: 64, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1499, file: !1070, line: 629, baseType: !636, size: 64, offset: 512)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1499, file: !1070, line: 630, baseType: !438, size: 64, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1499, file: !1070, line: 631, baseType: !13, size: 32, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1499, file: !1070, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1499, file: !1070, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1499, file: !1070, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1499, file: !1070, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1499, file: !1070, line: 662, baseType: !1515, size: 512, offset: 704)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !31, line: 118, size: 512, elements: !1516)
!1516 = !{!1517, !1525, !1526, !1531, !1586, !1587, !1588, !1589}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1515, file: !31, line: 119, baseType: !1518, size: 256)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1519, line: 9, size: 256, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1518, file: !1519, line: 10, baseType: !738, size: 192, align: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1518, file: !1519, line: 11, baseType: !1523, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1524, line: 29, baseType: !636)
!1524 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1515, file: !31, line: 120, baseType: !1523, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1515, file: !31, line: 121, baseType: !1527, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!30, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1515, file: !31, line: 122, baseType: !1532, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !31, line: 159, size: 512, align: 512, elements: !1534)
!1534 = !{!1535, !1560, !1561, !1564, !1569, !1570, !1581, !1585}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1533, file: !31, line: 160, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !31, line: 215, size: 4608, align: 512, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !31, line: 216, baseType: !584, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1537, file: !31, line: 217, baseType: !13, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1537, file: !31, line: 218, baseType: !13, size: 32, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1537, file: !31, line: 219, baseType: !13, size: 32, offset: 96)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1537, file: !31, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1537, file: !31, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1537, file: !31, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1537, file: !31, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1537, file: !31, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1537, file: !31, line: 226, baseType: !13, size: 32, offset: 160)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1537, file: !31, line: 227, baseType: !258, size: 16, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1537, file: !31, line: 228, baseType: !258, size: 16, offset: 208)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1537, file: !31, line: 229, baseType: !13, size: 32, offset: 224)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1537, file: !31, line: 235, baseType: !1523, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1537, file: !31, line: 236, baseType: !1530, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1537, file: !31, line: 237, baseType: !1523, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1537, file: !31, line: 238, baseType: !1530, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1537, file: !31, line: 239, baseType: !1557, size: 4096, align: 512, offset: 512)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1533, size: 4096, align: 512, elements: !1558)
!1558 = !{!1559}
!1559 = !DISubrange(count: 8)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1533, file: !31, line: 161, baseType: !13, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1533, file: !31, line: 162, baseType: !1562, size: 32, offset: 96)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !207, line: 32, baseType: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !322, line: 96, baseType: !115)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1533, file: !31, line: 163, baseType: !1565, size: 32, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !409, line: 274, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !409, line: 274, size: 32, elements: !1567)
!1567 = !{!1568}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1566, file: !409, line: 274, baseType: !413, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1533, file: !31, line: 164, baseType: !1530, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1533, file: !31, line: 165, baseType: !1571, size: 128, offset: 256)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1519, line: 14, size: 128, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1571, file: !1519, line: 15, baseType: !1574, size: 128)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !739, line: 26, size: 128, elements: !1575)
!1575 = !{!1576, !1580}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1574, file: !739, line: 27, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !739, line: 12, size: 64, elements: !1578)
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1577, file: !739, line: 13, baseType: !743, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1574, file: !739, line: 28, baseType: !743, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1533, file: !31, line: 166, baseType: !1582, size: 64, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!1523}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1533, file: !31, line: 167, baseType: !1523, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1515, file: !31, line: 123, baseType: !248, size: 8, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1515, file: !31, line: 124, baseType: !248, size: 8, offset: 456)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1515, file: !31, line: 125, baseType: !248, size: 8, offset: 464)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1515, file: !31, line: 126, baseType: !248, size: 8, offset: 472)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1499, file: !1070, line: 671, baseType: !1515, size: 512, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1499, file: !1070, line: 679, baseType: !1592, size: 64, offset: 1728)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1395, file: !1070, line: 800, baseType: !1594, size: 64, offset: 5248)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1070, line: 800, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1395, file: !1070, line: 809, baseType: !1598, size: 64, offset: 5312)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1070, line: 70, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1395, file: !1070, line: 825, baseType: !1601, size: 2048, align: 512, offset: 5632)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1070, line: 509, size: 2048, align: 512, elements: !1602)
!1602 = !{!1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1601, file: !1070, line: 511, baseType: !438, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1601, file: !1070, line: 512, baseType: !438, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1601, file: !1070, line: 513, baseType: !438, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1601, file: !1070, line: 514, baseType: !438, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1601, file: !1070, line: 515, baseType: !438, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1601, file: !1070, line: 516, baseType: !438, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1601, file: !1070, line: 518, baseType: !438, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1601, file: !1070, line: 519, baseType: !438, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1601, file: !1070, line: 520, baseType: !636, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1601, file: !1070, line: 522, baseType: !438, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1601, file: !1070, line: 523, baseType: !438, size: 64, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1601, file: !1070, line: 524, baseType: !636, size: 64, offset: 704)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1601, file: !1070, line: 526, baseType: !636, size: 64, offset: 768)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1601, file: !1070, line: 527, baseType: !438, size: 64, offset: 832)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1601, file: !1070, line: 529, baseType: !438, size: 64, offset: 896)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1601, file: !1070, line: 530, baseType: !438, size: 64, offset: 960)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1601, file: !1070, line: 531, baseType: !438, size: 64, offset: 1024)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1601, file: !1070, line: 532, baseType: !438, size: 64, offset: 1088)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1601, file: !1070, line: 533, baseType: !438, size: 64, offset: 1152)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1601, file: !1070, line: 535, baseType: !438, size: 64, offset: 1216)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1601, file: !1070, line: 536, baseType: !438, size: 64, offset: 1280)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1601, file: !1070, line: 537, baseType: !438, size: 64, offset: 1344)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1601, file: !1070, line: 538, baseType: !438, size: 64, offset: 1408)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1601, file: !1070, line: 539, baseType: !438, size: 64, offset: 1472)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1601, file: !1070, line: 540, baseType: !438, size: 64, offset: 1536)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1601, file: !1070, line: 541, baseType: !438, size: 64, offset: 1600)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1601, file: !1070, line: 542, baseType: !438, size: 64, offset: 1664)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1601, file: !1070, line: 543, baseType: !438, size: 64, offset: 1728)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1395, file: !1070, line: 833, baseType: !13, size: 32, offset: 7680)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1395, file: !1070, line: 836, baseType: !13, size: 32, offset: 7712)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1395, file: !1070, line: 837, baseType: !115, size: 32, offset: 7744)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1395, file: !1070, line: 838, baseType: !1635, size: 64, offset: 7808)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1638, line: 19, baseType: !1639)
!1638 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1638, line: 19, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1639, file: !1638, line: 19, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 64, elements: !1643)
!1643 = !{!1644}
!1644 = !DISubrange(count: 1)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1395, file: !1070, line: 839, baseType: !1646, size: 64, offset: 7872)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1395, file: !1070, line: 840, baseType: !1637, size: 64, offset: 7936)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1395, file: !1070, line: 841, baseType: !184, size: 64, offset: 8000)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1395, file: !1070, line: 843, baseType: !258, size: 16, offset: 8064)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1395, file: !1070, line: 845, baseType: !258, size: 16, offset: 8080)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1395, file: !1070, line: 848, baseType: !115, size: 32, offset: 8096)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1395, file: !1070, line: 849, baseType: !1653, size: 32, offset: 8128)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1070, line: 718, size: 32, elements: !1654)
!1654 = !{!1655, !1662}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1653, file: !1070, line: 724, baseType: !1656, size: 32)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1653, file: !1070, line: 719, size: 32, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1656, file: !1070, line: 720, baseType: !248, size: 8)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1656, file: !1070, line: 721, baseType: !248, size: 8, offset: 8)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1656, file: !1070, line: 722, baseType: !248, size: 8, offset: 16)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1656, file: !1070, line: 723, baseType: !248, size: 8, offset: 24)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1653, file: !1070, line: 725, baseType: !182, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1395, file: !1070, line: 850, baseType: !206, size: 128, offset: 8192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1395, file: !1070, line: 851, baseType: !1665, size: 64, offset: 8320)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1070, line: 60, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1395, file: !1070, line: 855, baseType: !337, size: 64, offset: 8384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1395, file: !1070, line: 856, baseType: !248, size: 8, offset: 8448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1395, file: !1070, line: 857, baseType: !248, size: 8, offset: 8456)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1395, file: !1070, line: 858, baseType: !115, size: 32, offset: 8480)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1395, file: !1070, line: 859, baseType: !206, size: 128, offset: 8512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1395, file: !1070, line: 860, baseType: !115, size: 32, offset: 8640)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1395, file: !1070, line: 861, baseType: !206, size: 128, offset: 8704)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1395, file: !1070, line: 873, baseType: !1675, size: 256, offset: 8832)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1070, line: 376, size: 256, elements: !1676)
!1676 = !{!1677, !1678, !1679, !1680}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1675, file: !1070, line: 381, baseType: !337, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1675, file: !1070, line: 384, baseType: !440, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1675, file: !1070, line: 389, baseType: !440, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1675, file: !1070, line: 392, baseType: !440, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1395, file: !1070, line: 875, baseType: !206, size: 128, offset: 9088)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1395, file: !1070, line: 877, baseType: !1683, size: 320, offset: 9216)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1684, line: 86, size: 320, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1685 = !{!1686, !1687, !1688}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1683, file: !1684, line: 87, baseType: !115, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1683, file: !1684, line: 88, baseType: !206, size: 128, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1683, file: !1684, line: 89, baseType: !206, size: 128, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1395, file: !1070, line: 878, baseType: !738, size: 192, align: 64, offset: 9536)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1395, file: !1070, line: 881, baseType: !1691, size: 64, offset: 9728)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1693)
!1693 = !{!1694, !2631}
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !44, line: 734, baseType: !1695, size: 10240)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !44, line: 734, size: 10240, elements: !1696)
!1696 = !{!1697, !1701, !1714, !2508, !2509, !2510, !2511, !2512, !2513, !2520, !2521, !2522, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2561, !2563, !2566, !2611, !2612, !2613, !2616, !2617, !2618, !2621, !2622, !2623, !2629, !2630}
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !44, line: 739, baseType: !1698, size: 512, align: 512)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1695, file: !44, line: 739, size: 512, align: 512, elements: !1699)
!1699 = !{!1700}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1698, file: !44, line: 747, baseType: !240, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1695, file: !44, line: 750, baseType: !1702, size: 128, offset: 512)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1703, line: 218, size: 128, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1704 = !{!1705, !1712, !1713}
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1703, line: 219, baseType: !1706, size: 32)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !1703, line: 219, size: 32, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1706, file: !1703, line: 220, baseType: !220, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1706, file: !1703, line: 221, baseType: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1703, line: 197, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1703, line: 197, elements: !915)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1702, file: !1703, line: 223, baseType: !13, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1702, file: !1703, line: 224, baseType: !184, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1695, file: !44, line: 752, baseType: !1715, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!337, !1718, !337, !337, !337, !337}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1720)
!1720 = !{!1721, !1727, !1728, !1730, !1731, !1732, !1733, !1734, !1784, !1974, !1983, !1984, !1985, !2498, !2499, !2500, !2501, !2503, !2504, !2507}
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !20, line: 995, baseType: !1722, size: 128)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !20, line: 995, size: 128, elements: !1723)
!1723 = !{!1724, !1725, !1726}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1722, file: !20, line: 996, baseType: !1421, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1722, file: !20, line: 997, baseType: !846, size: 128, align: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1722, file: !20, line: 998, baseType: !13, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1719, file: !20, line: 1005, baseType: !220, size: 32, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1719, file: !20, line: 1006, baseType: !1729, size: 32, offset: 160)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !207, line: 156, baseType: !13)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1719, file: !20, line: 1007, baseType: !630, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1719, file: !20, line: 1008, baseType: !626, size: 256, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1719, file: !20, line: 1009, baseType: !526, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1719, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1719, file: !20, line: 1011, baseType: !1735, size: 256, offset: 640)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1736)
!1736 = !{!1737, !1758, !1780, !1781, !1782, !1783}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1735, file: !20, line: 949, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1739, line: 34, baseType: !1740)
!1739 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1739, line: 25, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1740, file: !1739, line: 26, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1744, line: 27, baseType: !1745)
!1744 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1744, line: 13, size: 64, elements: !1746)
!1746 = !{!1747, !1757}
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !1744, line: 14, baseType: !1748, size: 32)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !1744, line: 14, size: 32, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1748, file: !1744, line: 15, baseType: !240, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1744, line: 16, baseType: !1752, size: 32)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !1744, line: 16, size: 32, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1752, file: !1744, line: 18, baseType: !248, size: 8)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1752, file: !1744, line: 19, baseType: !1756, size: 24, offset: 8)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 24, elements: !289)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1745, file: !1744, line: 26, baseType: !232, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1735, file: !20, line: 950, baseType: !1759, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1767, !1768, !1769, !1770}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1760, file: !36, line: 61, baseType: !1408, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1760, file: !36, line: 62, baseType: !13, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1760, file: !36, line: 63, baseType: !220, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1760, file: !36, line: 65, baseType: !1766, size: 256, offset: 128)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 256, elements: !856)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1760, file: !36, line: 66, baseType: !996, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1760, file: !36, line: 68, baseType: !1381, size: 192, offset: 448)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1760, file: !36, line: 69, baseType: !846, size: 128, align: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1760, file: !36, line: 70, baseType: !1771, offset: 768)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, elements: !1778)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1772, file: !36, line: 55, baseType: !115, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1772, file: !36, line: 56, baseType: !1776, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !36, line: 56, flags: DIFlagFwdDecl)
!1778 = !{!1779}
!1779 = !DISubrange(count: -1)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1735, file: !20, line: 951, baseType: !35, size: 32, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1735, file: !20, line: 952, baseType: !373, size: 32, offset: 160)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1735, file: !20, line: 952, baseType: !373, size: 32, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1735, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1719, file: !20, line: 1012, baseType: !1785, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1788, line: 110, size: 1472, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1806, !1807, !1808, !1809, !1810, !1811, !1919, !1920, !1921, !1922, !1923, !1954, !1957, !1961, !1969}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1787, file: !1788, line: 111, baseType: !630, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1787, file: !1788, line: 112, baseType: !373, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1787, file: !1788, line: 113, baseType: !382, size: 32, offset: 96)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1787, file: !1788, line: 114, baseType: !373, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1787, file: !1788, line: 115, baseType: !382, size: 32, offset: 160)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1787, file: !1788, line: 116, baseType: !373, size: 32, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1787, file: !1788, line: 117, baseType: !382, size: 32, offset: 224)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1787, file: !1788, line: 118, baseType: !373, size: 32, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1787, file: !1788, line: 119, baseType: !382, size: 32, offset: 288)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1787, file: !1788, line: 120, baseType: !13, size: 32, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1787, file: !1788, line: 121, baseType: !1801, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1802, line: 24, baseType: !1803)
!1802 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1802, line: 24, size: 64, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1803, file: !1802, line: 24, baseType: !438, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1787, file: !1788, line: 122, baseType: !1801, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1787, file: !1788, line: 123, baseType: !1801, size: 64, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1787, file: !1788, line: 124, baseType: !1801, size: 64, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1787, file: !1788, line: 125, baseType: !1801, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1787, file: !1788, line: 127, baseType: !250, size: 8, offset: 704)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1787, file: !1788, line: 129, baseType: !1812, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1814, line: 195, size: 1728, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1815 = !{!1816, !1817, !1820, !1825, !1826, !1829, !1830, !1835, !1836, !1837, !1838, !1841, !1842, !1843, !1844, !1845, !1883, !1904}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1813, file: !1814, line: 196, baseType: !1408, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1813, file: !1814, line: 197, baseType: !1818, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1814, line: 28, baseType: !1819)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !207, line: 104, baseType: !622)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 198, baseType: !1821, size: 192, offset: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 198, size: 192, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1821, file: !1814, line: 199, baseType: !206, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1821, file: !1814, line: 200, baseType: !738, size: 192, align: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1813, file: !1814, line: 205, baseType: !1288, size: 320, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1813, file: !1814, line: 206, baseType: !1827, size: 64, offset: 576)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1814, line: 206, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1813, file: !1814, line: 207, baseType: !184, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 208, baseType: !1831, size: 64, offset: 704)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 208, size: 64, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1831, file: !1814, line: 209, baseType: !1128, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1831, file: !1814, line: 210, baseType: !1128, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1813, file: !1814, line: 212, baseType: !1128, size: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1813, file: !1814, line: 213, baseType: !373, size: 32, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1813, file: !1814, line: 214, baseType: !382, size: 32, offset: 864)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1813, file: !1814, line: 215, baseType: !1839, size: 32, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1814, line: 31, baseType: !1840)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !207, line: 110, baseType: !182)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1813, file: !1814, line: 216, baseType: !258, size: 16, offset: 928)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1813, file: !1814, line: 217, baseType: !258, size: 16, offset: 944)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1813, file: !1814, line: 221, baseType: !764, size: 16, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1813, file: !1814, line: 228, baseType: !337, size: 64, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 245, baseType: !1846, size: 320, offset: 1088)
!1846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 245, size: 320, elements: !1847)
!1847 = !{!1848, !1875}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1846, file: !1814, line: 246, baseType: !1849, size: 320)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1814, line: 114, size: 320, elements: !1850)
!1850 = !{!1851, !1852, !1864, !1867, !1874}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1849, file: !1814, line: 116, baseType: !337, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1814, line: 117, baseType: !1853, size: 64, offset: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1814, line: 117, size: 64, elements: !1854)
!1854 = !{!1855, !1863}
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1814, line: 118, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1814, line: 118, size: 64, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1856, file: !1814, line: 120, baseType: !256, size: 16)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1856, file: !1814, line: 121, baseType: !1860, size: 48, offset: 16)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1861)
!1861 = !{!1862}
!1862 = !DISubrange(count: 6)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1853, file: !1814, line: 127, baseType: !337, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1849, file: !1814, line: 129, baseType: !1865, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1814, line: 102, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1849, file: !1814, line: 130, baseType: !1868, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1814, line: 108, size: 192, elements: !1870)
!1870 = !{!1871, !1872, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1869, file: !1814, line: 109, baseType: !846, size: 128, align: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1869, file: !1814, line: 110, baseType: !1408, size: 32, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1869, file: !1814, line: 111, baseType: !706, size: 8, offset: 160)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1849, file: !1814, line: 131, baseType: !203, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1814, line: 247, baseType: !1876, size: 320)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1814, line: 247, size: 320, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1876, file: !1814, line: 248, baseType: !337, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1876, file: !1814, line: 249, baseType: !337, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1876, file: !1814, line: 250, baseType: !1865, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1876, file: !1814, line: 251, baseType: !1868, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1876, file: !1814, line: 252, baseType: !288, size: 64, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 260, baseType: !1884, size: 256, offset: 1408)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 260, size: 256, elements: !1885)
!1885 = !{!1886, !1892}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1884, file: !1814, line: 261, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1814, line: 134, size: 256, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1887, file: !1814, line: 135, baseType: !184, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1887, file: !1814, line: 136, baseType: !1891, size: 256)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !856)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1884, file: !1814, line: 262, baseType: !1893, size: 256)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1814, line: 262, size: 256, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1893, file: !1814, line: 264, baseType: !206, size: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1893, file: !1814, line: 265, baseType: !1897, size: 128, offset: 128)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1898, line: 22, size: 128, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1899 = !{!1900, !1903}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1897, file: !1898, line: 23, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1898, line: 23, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1897, file: !1898, line: 24, baseType: !337, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1813, file: !1814, line: 280, baseType: !1905, size: 64, offset: 1664)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1814, line: 176, size: 192, elements: !1907)
!1907 = !{!1908, !1917, !1918}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1906, file: !1814, line: 177, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1814, line: 171, baseType: !1910)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!115, !1812, !1913, !1915, !1812}
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1906, file: !1814, line: 178, baseType: !1812, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1906, file: !1814, line: 179, baseType: !1865, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1787, file: !1788, line: 130, baseType: !1812, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1787, file: !1788, line: 131, baseType: !1812, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1787, file: !1788, line: 132, baseType: !1812, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1787, file: !1788, line: 135, baseType: !184, size: 64, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1787, file: !1788, line: 137, baseType: !1924, size: 64, offset: 1088)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1926, line: 14, size: 1088, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1927 = !{!1928, !1929, !1938, !1939, !1940, !1941, !1942, !1943}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1925, file: !1926, line: 15, baseType: !1408, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1925, file: !1926, line: 17, baseType: !1930, size: 320, offset: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1931, line: 22, size: 320, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1932 = !{!1933, !1934, !1935, !1936}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1930, file: !1931, line: 23, baseType: !584, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1930, file: !1931, line: 24, baseType: !636, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1930, file: !1931, line: 26, baseType: !206, size: 128, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1930, file: !1931, line: 28, baseType: !1937, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1925, file: !1926, line: 19, baseType: !337, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1925, file: !1926, line: 20, baseType: !630, size: 64, offset: 448)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1925, file: !1926, line: 23, baseType: !872, size: 128, offset: 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1925, file: !1926, line: 24, baseType: !373, size: 32, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1925, file: !1926, line: 29, baseType: !630, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1925, file: !1926, line: 36, baseType: !1944, size: 320, offset: 768)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1945, line: 15, size: 320, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1952, !1953}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1944, file: !1945, line: 16, baseType: !584, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1944, file: !1945, line: 18, baseType: !115, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1944, file: !1945, line: 19, baseType: !115, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1944, file: !1945, line: 20, baseType: !115, size: 32, offset: 96)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1944, file: !1945, line: 21, baseType: !115, size: 32, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1944, file: !1945, line: 22, baseType: !337, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !1945, line: 23, baseType: !337, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1787, file: !1788, line: 138, baseType: !1955, size: 64, offset: 1152)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !374, line: 18, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1787, file: !1788, line: 139, baseType: !1958, size: 64, offset: 1216)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1960, line: 16, flags: DIFlagFwdDecl)
!1960 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1787, file: !1788, line: 140, baseType: !1962, size: 64, offset: 1280)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1788, line: 25, size: 64, elements: !1964)
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1963, file: !1788, line: 26, baseType: !240, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1963, file: !1788, line: 27, baseType: !115, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1963, file: !1788, line: 28, baseType: !1968, offset: 64)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, elements: !1778)
!1969 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !1788, line: 142, baseType: !1970, size: 128, offset: 1344)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !1788, line: 142, size: 128, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1970, file: !1788, line: 143, baseType: !115, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1970, file: !1788, line: 144, baseType: !846, size: 128, align: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1719, file: !20, line: 1013, baseType: !1975, size: 256, offset: 960)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1975, file: !20, line: 971, baseType: !337, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1975, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1975, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1975, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1975, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1975, file: !20, line: 976, baseType: !526, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1719, file: !20, line: 1014, baseType: !1200, size: 128, offset: 1216)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1719, file: !20, line: 1015, baseType: !367, size: 64, offset: 1344)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1719, file: !20, line: 1016, baseType: !1986, size: 64, offset: 1408)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1988)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !1989)
!1989 = !{!1990, !1991, !1995, !2000, !2004, !2088, !2089, !2095, !2108, !2124, !2128, !2129, !2420, !2421, !2425, !2430, !2431, !2435, !2439, !2445, !2446, !2450, !2451, !2457, !2461, !2465, !2471, !2475, !2479, !2483, !2487, !2488, !2494}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1988, file: !20, line: 1915, baseType: !555, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1988, file: !20, line: 1916, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!526, !1718, !526, !115}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1988, file: !20, line: 1917, baseType: !1996, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!320, !1718, !288, !334, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1988, file: !20, line: 1918, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!320, !1718, !203, !334, !1999}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1988, file: !20, line: 1919, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!320, !2008, !2030}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2017, !2018, !2019, !2020}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2009, file: !20, line: 374, baseType: !1718, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2009, file: !20, line: 375, baseType: !526, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2009, file: !20, line: 376, baseType: !2014, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !2008, !185}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2009, file: !20, line: 377, baseType: !184, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2009, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2009, file: !20, line: 379, baseType: !256, size: 16, offset: 288)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2009, file: !20, line: 380, baseType: !2021, size: 64, offset: 320)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2009, file: !20, line: 380, size: 64, elements: !2022)
!2022 = !{!2023, !2026}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2021, file: !20, line: 386, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2021, file: !20, line: 395, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!320, !184}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2032, line: 41, size: 320, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2044, !2083}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2031, file: !2032, line: 42, baseType: !248, size: 8)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2031, file: !2032, line: 43, baseType: !706, size: 8, offset: 8)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2031, file: !2032, line: 44, baseType: !706, size: 8, offset: 16)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2031, file: !2032, line: 45, baseType: !706, size: 8, offset: 24)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2031, file: !2032, line: 46, baseType: !706, size: 8, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2032, line: 47, baseType: !2040, size: 64, offset: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2032, line: 47, size: 64, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2040, file: !2032, line: 48, baseType: !334, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2040, file: !2032, line: 49, baseType: !115, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2032, line: 61, baseType: !2045, size: 128, offset: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2032, line: 61, size: 128, elements: !2046)
!2046 = !{!2047, !2053}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2045, file: !2032, line: 67, baseType: !2048, size: 128)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2049, line: 17, size: 128, elements: !2050)
!2049 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2048, file: !2049, line: 19, baseType: !184, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2048, file: !2049, line: 20, baseType: !335, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !2032, line: 68, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2032, line: 68, size: 128, elements: !2055)
!2055 = !{!2056, !2082}
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !2032, line: 69, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !2032, line: 69, size: 64, elements: !2058)
!2058 = !{!2059, !2062, !2069, !2073, !2081}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2057, file: !2032, line: 71, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2057, file: !2032, line: 72, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2065)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2032, line: 17, size: 128, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2065, file: !2032, line: 18, baseType: !184, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2065, file: !2032, line: 19, baseType: !334, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2057, file: !2032, line: 73, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2032, line: 73, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2057, file: !2032, line: 74, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2076, line: 296, size: 128, elements: !2077)
!2076 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2077 = !{!2078, !2079, !2080}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2075, file: !2076, line: 297, baseType: !220, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2075, file: !2076, line: 299, baseType: !1140, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2075, file: !2076, line: 300, baseType: !184, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2057, file: !2032, line: 75, baseType: !184, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2054, file: !2032, line: 77, baseType: !334, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2032, line: 80, baseType: !2084, size: 64, offset: 256)
!2084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2032, line: 80, size: 64, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2084, file: !2032, line: 81, baseType: !337, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2084, file: !2032, line: 82, baseType: !526, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1988, file: !20, line: 1920, baseType: !2005, size: 64, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1988, file: !20, line: 1921, baseType: !2090, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!115, !2008, !2093, !13}
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1988, file: !20, line: 1923, baseType: !2096, size: 64, offset: 448)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!115, !1718, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !2101)
!2101 = !{!2102, !2107}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2100, file: !20, line: 1859, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!706, !2099, !203, !115, !526, !438, !13}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2100, file: !20, line: 1860, baseType: !526, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1988, file: !20, line: 1924, baseType: !2109, size: 64, offset: 512)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!2112, !1718, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !179, line: 59, baseType: !13)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2115, line: 37, size: 128, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2116 = !{!2117, !2123}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2114, file: !2115, line: 38, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2115, line: 31, baseType: !2119)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !1718, !2122, !2113}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2114, file: !2115, line: 39, baseType: !2112, size: 32, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1988, file: !20, line: 1925, baseType: !2125, size: 64, offset: 576)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!185, !1718, !13, !337}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1988, file: !20, line: 1926, baseType: !2125, size: 64, offset: 640)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1988, file: !20, line: 1927, baseType: !2130, size: 64, offset: 704)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!115, !1718, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !2135)
!2135 = !{!2136, !2145, !2146, !2154, !2161, !2162, !2167, !2168, !2173, !2174, !2177, !2413, !2414, !2415, !2416, !2417, !2418}
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !2134, file: !44, line: 628, baseType: !2137, size: 128)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2134, file: !44, line: 628, size: 128, elements: !2138)
!2138 = !{!2139, !2144}
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2137, file: !44, line: 629, baseType: !2140, size: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !44, line: 629, size: 128, elements: !2141)
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2140, file: !44, line: 631, baseType: !337, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2140, file: !44, line: 632, baseType: !337, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2137, file: !44, line: 635, baseType: !846, size: 128, align: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2134, file: !44, line: 639, baseType: !1691, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2134, file: !44, line: 640, baseType: !2147, size: 64, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2148, line: 297, baseType: !2149)
!2148 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2148, line: 297, size: 64, elements: !2150)
!2150 = !{!2151}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2149, file: !2148, line: 297, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2153, line: 19, baseType: !337)
!2153 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2134, file: !44, line: 646, baseType: !2155, size: 64, offset: 256)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2134, file: !44, line: 646, size: 64, elements: !2156)
!2156 = !{!2157, !2160}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2155, file: !44, line: 647, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2159)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !337)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2155, file: !44, line: 648, baseType: !2159, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2134, file: !44, line: 666, baseType: !115, size: 32, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2134, file: !44, line: 667, baseType: !2163, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !2165)
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2164, file: !44, line: 580, baseType: !1288, size: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2134, file: !44, line: 670, baseType: !706, size: 8, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2134, file: !44, line: 681, baseType: !2169, size: 256, offset: 512)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !44, line: 678, size: 256, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2169, file: !44, line: 679, baseType: !738, size: 192, align: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2169, file: !44, line: 680, baseType: !337, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2134, file: !44, line: 689, baseType: !206, size: 128, offset: 768)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2134, file: !44, line: 691, baseType: !2175, size: 64, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2134, file: !44, line: 694, baseType: !2178, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2181, line: 563, size: 1024, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2182 = !{!2183, !2187, !2188, !2192, !2196, !2200, !2377, !2381, !2385, !2389, !2390, !2391, !2395, !2399, !2405, !2409}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2180, file: !2181, line: 564, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !2133}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2180, file: !2181, line: 569, baseType: !2184, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2180, file: !2181, line: 571, baseType: !2189, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!115, !2133, !337}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2180, file: !2181, line: 572, baseType: !2193, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!115, !2133}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2180, file: !2181, line: 578, baseType: !2197, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!115, !2133, !337, !337, !337}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2180, file: !2181, line: 580, baseType: !2201, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!2204, !2205}
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2181, line: 512, size: 896, elements: !2207)
!2207 = !{!2208, !2216, !2217, !2224, !2231, !2241, !2370, !2371, !2373, !2375}
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !2181, line: 513, baseType: !2209, size: 320)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2181, line: 513, size: 320, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2215}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2209, file: !2181, line: 514, baseType: !2133, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2209, file: !2181, line: 515, baseType: !1140, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2209, file: !2181, line: 516, baseType: !337, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2209, file: !2181, line: 517, baseType: !337, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2209, file: !2181, line: 518, baseType: !337, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2206, file: !2181, line: 520, baseType: !43, size: 32, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2206, file: !2181, line: 522, baseType: !2218, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2153, line: 22, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2153, line: 22, size: 64, elements: !2221)
!2221 = !{!2222}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2220, file: !2153, line: 22, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2153, line: 15, baseType: !337)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2206, file: !2181, line: 524, baseType: !2225, size: 64, offset: 448)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2148, line: 372, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2148, line: 372, size: 64, elements: !2228)
!2228 = !{!2229}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2227, file: !2148, line: 372, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2153, line: 16, baseType: !337)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !2181, line: 527, baseType: !2232, size: 64, offset: 512)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2206, file: !2181, line: 527, size: 64, elements: !2233)
!2233 = !{!2234, !2240}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2232, file: !2181, line: 528, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2153, line: 21, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2153, line: 21, size: 64, elements: !2237)
!2237 = !{!2238}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2236, file: !2153, line: 21, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2153, line: 14, baseType: !337)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2232, file: !2181, line: 529, baseType: !2219, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2206, file: !2181, line: 534, baseType: !2242, size: 64, offset: 576)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !2244)
!2244 = !{!2245, !2246, !2364, !2369}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2243, file: !44, line: 75, baseType: !337, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !44, line: 83, baseType: !2247, size: 320, offset: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !44, line: 83, size: 320, elements: !2248)
!2248 = !{!2249, !2270, !2284, !2288, !2363}
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2247, file: !44, line: 84, baseType: !2250, size: 320)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !44, line: 84, size: 320, elements: !2251)
!2251 = !{!2252, !2263, !2264, !2269}
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !44, line: 90, baseType: !2253, size: 128)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2250, file: !44, line: 90, size: 128, elements: !2254)
!2254 = !{!2255, !2256, !2261, !2262}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2253, file: !44, line: 91, baseType: !206, size: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !44, line: 94, baseType: !2257, size: 128)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2253, file: !44, line: 94, size: 128, elements: !2258)
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2257, file: !44, line: 96, baseType: !184, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2257, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2253, file: !44, line: 102, baseType: !206, size: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2253, file: !44, line: 103, baseType: !206, size: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2250, file: !44, line: 106, baseType: !363, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !44, line: 107, baseType: !2265, size: 64, offset: 192)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2250, file: !44, line: 107, size: 64, elements: !2266)
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2265, file: !44, line: 108, baseType: !337, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2265, file: !44, line: 109, baseType: !337, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2250, file: !44, line: 117, baseType: !337, size: 64, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !2247, file: !44, line: 119, baseType: !2271, size: 320)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !44, line: 119, size: 320, elements: !2272)
!2272 = !{!2273, !2274, !2277, !2278, !2279}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2271, file: !44, line: 124, baseType: !337, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2271, file: !44, line: 125, baseType: !2275, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2271, file: !44, line: 126, baseType: !337, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2271, file: !44, line: 127, baseType: !337, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !44, line: 128, baseType: !2280, size: 64, offset: 256)
!2280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2271, file: !44, line: 128, size: 64, elements: !2281)
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2280, file: !44, line: 133, baseType: !337, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2280, file: !44, line: 138, baseType: !630, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !2247, file: !44, line: 141, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !44, line: 141, size: 64, elements: !2286)
!2286 = !{!2287}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2285, file: !44, line: 142, baseType: !337, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, scope: !2247, file: !44, line: 144, baseType: !2289, size: 128)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !44, line: 144, size: 128, elements: !2290)
!2290 = !{!2291, !2362}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2289, file: !44, line: 146, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !60, line: 126, size: 1216, elements: !2294)
!2294 = !{!2295, !2305, !2326, !2327, !2328, !2329, !2330, !2344, !2345, !2346}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2293, file: !60, line: 127, baseType: !2296, size: 384)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !60, line: 21, size: 384, elements: !2297)
!2297 = !{!2298, !2299, !2301, !2302, !2303, !2304}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2296, file: !60, line: 22, baseType: !337, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2296, file: !60, line: 23, baseType: !2300, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2296, file: !60, line: 24, baseType: !2300, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2296, file: !60, line: 25, baseType: !337, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2296, file: !60, line: 26, baseType: !337, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2296, file: !60, line: 27, baseType: !337, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2293, file: !60, line: 128, baseType: !2306, size: 128, offset: 384)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2307, line: 105, size: 128, elements: !2308)
!2307 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2306, file: !2307, line: 110, baseType: !337, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2306, file: !2307, line: 118, baseType: !2311, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2307, line: 95, size: 448, elements: !2313)
!2313 = !{!2314, !2315, !2321, !2322, !2323, !2324, !2325}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2312, file: !2307, line: 96, baseType: !630, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2312, file: !2307, line: 97, baseType: !2316, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2307, line: 60, baseType: !2318)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{null, !2320}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2312, file: !2307, line: 98, baseType: !2316, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2312, file: !2307, line: 99, baseType: !706, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2312, file: !2307, line: 100, baseType: !706, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2312, file: !2307, line: 101, baseType: !846, size: 128, align: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2312, file: !2307, line: 102, baseType: !2320, size: 64, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2293, file: !60, line: 129, baseType: !575, size: 256, offset: 512)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2293, file: !60, line: 130, baseType: !59, size: 32, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2293, file: !60, line: 131, baseType: !13, size: 32, offset: 800)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2293, file: !60, line: 132, baseType: !337, size: 64, offset: 832)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2293, file: !60, line: 133, baseType: !2331, size: 64, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !60, line: 77, size: 192, elements: !2334)
!2334 = !{!2335, !2339, !2340}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2333, file: !60, line: 83, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2242}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2333, file: !60, line: 89, baseType: !2201, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2333, file: !60, line: 100, baseType: !2341, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!115, !2292, !337, !337, !115}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2293, file: !60, line: 134, baseType: !184, size: 64, offset: 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2293, file: !60, line: 135, baseType: !115, size: 32, offset: 1024)
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !60, line: 136, baseType: !2347, size: 128, offset: 1088)
!2347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2293, file: !60, line: 136, size: 128, elements: !2348)
!2348 = !{!2349, !2355}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2347, file: !60, line: 137, baseType: !2350, size: 128)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2351, line: 6, size: 128, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2350, file: !2351, line: 7, baseType: !438, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2350, file: !2351, line: 8, baseType: !438, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !60, line: 138, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2347, file: !60, line: 138, elements: !2357)
!2357 = !{!2358, !2360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2356, file: !60, line: 138, baseType: !2359)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2356, file: !60, line: 138, elements: !915)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2356, file: !60, line: 138, baseType: !2361)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2350, elements: !1778)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2289, file: !44, line: 147, baseType: !184, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2247, file: !44, line: 161, baseType: !846, size: 128, align: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !44, line: 164, baseType: !2365, size: 32, offset: 384)
!2365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !44, line: 164, size: 32, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2365, file: !44, line: 169, baseType: !240, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2365, file: !44, line: 177, baseType: !13, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2243, file: !44, line: 181, baseType: !240, size: 32, offset: 416)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2206, file: !2181, line: 535, baseType: !2242, size: 64, offset: 640)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2206, file: !2181, line: 541, baseType: !2372, size: 64, offset: 704)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2206, file: !2181, line: 545, baseType: !2374, size: 64, offset: 768)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2206, file: !2181, line: 549, baseType: !2376, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2148, line: 520, baseType: !2242)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2180, file: !2181, line: 581, baseType: !2378, size: 64, offset: 384)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!2204, !2205, !13}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2180, file: !2181, line: 582, baseType: !2382, size: 64, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!2204, !2205, !337, !337}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2180, file: !2181, line: 584, baseType: !2386, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!337, !2133}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2180, file: !2181, line: 588, baseType: !2201, size: 64, offset: 576)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2180, file: !2181, line: 591, baseType: !2201, size: 64, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2180, file: !2181, line: 597, baseType: !2392, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!115, !2133, !337, !184, !115, !115}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2180, file: !2181, line: 603, baseType: !2396, size: 64, offset: 768)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!203, !2133}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2180, file: !2181, line: 613, baseType: !2400, size: 64, offset: 832)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!115, !2133, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1070, line: 54, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2180, file: !2181, line: 625, baseType: !2406, size: 64, offset: 896)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!2403, !2133, !337}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2180, file: !2181, line: 633, baseType: !2410, size: 64, offset: 960)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!2242, !2133, !337}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2134, file: !44, line: 697, baseType: !337, size: 64, offset: 1024)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2134, file: !44, line: 699, baseType: !1718, size: 64, offset: 1088)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2134, file: !44, line: 700, baseType: !184, size: 64, offset: 1152)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2134, file: !44, line: 711, baseType: !630, size: 64, offset: 1216)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2134, file: !44, line: 717, baseType: !2403, size: 64, offset: 1280)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2134, file: !44, line: 722, baseType: !2419, offset: 1344)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !915)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1988, file: !20, line: 1928, baseType: !337, size: 64, offset: 768)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1988, file: !20, line: 1929, baseType: !2422, size: 64, offset: 832)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!115, !367, !1718}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1988, file: !20, line: 1930, baseType: !2426, size: 64, offset: 896)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!115, !1718, !2429}
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !184)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1988, file: !20, line: 1931, baseType: !2422, size: 64, offset: 960)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1988, file: !20, line: 1932, baseType: !2432, size: 64, offset: 1024)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!115, !1718, !526, !526, !115}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1988, file: !20, line: 1933, baseType: !2436, size: 64, offset: 1088)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!115, !115, !1718, !115}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1988, file: !20, line: 1934, baseType: !2440, size: 64, offset: 1152)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!115, !1718, !115, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1988, file: !20, line: 1935, baseType: !1715, size: 64, offset: 1216)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1988, file: !20, line: 1936, baseType: !2447, size: 64, offset: 1280)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!115, !115}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1988, file: !20, line: 1937, baseType: !2440, size: 64, offset: 1344)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1988, file: !20, line: 1938, baseType: !2452, size: 64, offset: 1408)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!320, !2455, !1718, !1999, !334, !13}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1070, line: 59, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1988, file: !20, line: 1939, baseType: !2458, size: 64, offset: 1472)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!320, !1718, !1999, !2455, !334, !13}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1988, file: !20, line: 1940, baseType: !2462, size: 64, offset: 1536)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !1718}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1988, file: !20, line: 1941, baseType: !2466, size: 64, offset: 1600)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!115, !1718, !115, !2469, !2470}
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1988, file: !20, line: 1942, baseType: !2472, size: 64, offset: 1664)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!185, !1718, !115, !526, !526}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1988, file: !20, line: 1944, baseType: !2476, size: 64, offset: 1728)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !1068, !1718}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1988, file: !20, line: 1948, baseType: !2480, size: 64, offset: 1792)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!320, !1718, !526, !1718, !526, !334, !13}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1988, file: !20, line: 1950, baseType: !2484, size: 64, offset: 1856)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!526, !1718, !526, !1718, !526, !526, !13}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1988, file: !20, line: 1953, baseType: !2432, size: 64, offset: 1920)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1988, file: !20, line: 1954, baseType: !2489, size: 64, offset: 1984)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!115, !2492, !13}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1988, file: !20, line: 1955, baseType: !2495, size: 64, offset: 2048)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!115, !2492, !2093, !13}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1719, file: !20, line: 1018, baseType: !438, size: 64, offset: 1472)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1719, file: !20, line: 1020, baseType: !184, size: 64, offset: 1536)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1719, file: !20, line: 1023, baseType: !184, size: 64, offset: 1600)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1719, file: !20, line: 1027, baseType: !2502, size: 64, offset: 1664)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1719, file: !20, line: 1029, baseType: !363, size: 64, offset: 1728)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1719, file: !20, line: 1030, baseType: !2505, size: 32, offset: 1792)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2506, line: 8, baseType: !182)
!2506 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1719, file: !20, line: 1031, baseType: !2505, size: 32, offset: 1824)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1695, file: !44, line: 756, baseType: !337, size: 64, offset: 704)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1695, file: !44, line: 757, baseType: !337, size: 64, offset: 768)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1695, file: !44, line: 760, baseType: !337, size: 64, offset: 832)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1695, file: !44, line: 761, baseType: !337, size: 64, offset: 896)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1695, file: !44, line: 763, baseType: !337, size: 64, offset: 960)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1695, file: !44, line: 764, baseType: !2514, size: 64, offset: 1024)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2148, line: 299, baseType: !2516)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2148, line: 299, size: 64, elements: !2517)
!2517 = !{!2518}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2516, file: !2148, line: 299, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2153, line: 18, baseType: !337)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1695, file: !44, line: 773, baseType: !240, size: 32, offset: 1088)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1695, file: !44, line: 785, baseType: !240, size: 32, offset: 1120)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1695, file: !44, line: 795, baseType: !2523, size: 64, offset: 1152)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !2525)
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2524, file: !44, line: 727, baseType: !438, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2524, file: !44, line: 728, baseType: !115, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1695, file: !44, line: 801, baseType: !337, size: 64, offset: 1216)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1695, file: !44, line: 804, baseType: !630, size: 64, offset: 1280)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1695, file: !44, line: 806, baseType: !115, size: 32, offset: 1344)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1695, file: !44, line: 808, baseType: !220, size: 32, offset: 1376)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1695, file: !44, line: 823, baseType: !1288, size: 320, offset: 1408)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1695, file: !44, line: 825, baseType: !206, size: 128, offset: 1728)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1695, file: !44, line: 845, baseType: !115, size: 32, offset: 1856)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1695, file: !44, line: 849, baseType: !337, size: 64, offset: 1920)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1695, file: !44, line: 850, baseType: !337, size: 64, offset: 1984)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1695, file: !44, line: 852, baseType: !337, size: 64, offset: 2048)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1695, file: !44, line: 853, baseType: !337, size: 64, offset: 2112)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1695, file: !44, line: 854, baseType: !632, size: 64, offset: 2176)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1695, file: !44, line: 855, baseType: !337, size: 64, offset: 2240)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1695, file: !44, line: 856, baseType: !337, size: 64, offset: 2304)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1695, file: !44, line: 857, baseType: !337, size: 64, offset: 2368)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1695, file: !44, line: 858, baseType: !337, size: 64, offset: 2432)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1695, file: !44, line: 865, baseType: !413, size: 32, offset: 2496)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1695, file: !44, line: 867, baseType: !220, size: 32, offset: 2528)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1695, file: !44, line: 869, baseType: !337, size: 64, offset: 2560)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1695, file: !44, line: 869, baseType: !337, size: 64, offset: 2624)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1695, file: !44, line: 869, baseType: !337, size: 64, offset: 2688)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1695, file: !44, line: 869, baseType: !337, size: 64, offset: 2752)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1695, file: !44, line: 870, baseType: !337, size: 64, offset: 2816)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1695, file: !44, line: 870, baseType: !337, size: 64, offset: 2880)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1695, file: !44, line: 870, baseType: !337, size: 64, offset: 2944)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1695, file: !44, line: 871, baseType: !337, size: 64, offset: 3008)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1695, file: !44, line: 871, baseType: !337, size: 64, offset: 3072)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1695, file: !44, line: 871, baseType: !337, size: 64, offset: 3136)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1695, file: !44, line: 871, baseType: !337, size: 64, offset: 3200)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1695, file: !44, line: 873, baseType: !2558, size: 3328, offset: 3264)
!2558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 3328, elements: !2559)
!2559 = !{!2560}
!2560 = !DISubrange(count: 52)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1695, file: !44, line: 875, baseType: !2562, size: 1280, offset: 6592)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1930, size: 1280, elements: !856)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1695, file: !44, line: 877, baseType: !2564, size: 64, offset: 7872)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1695, file: !44, line: 880, baseType: !2567, size: 1088, offset: 7936)
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2568, line: 72, baseType: !2569)
!2568 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2568, line: 23, size: 1088, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2578, !2579, !2580, !2581, !2608, !2609, !2610}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2569, file: !2568, line: 28, baseType: !438, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2569, file: !2568, line: 38, baseType: !632, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2569, file: !2568, line: 40, baseType: !337, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2569, file: !2568, line: 43, baseType: !1288, size: 320, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2569, file: !2568, line: 44, baseType: !2576, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2568, line: 44, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2569, file: !2568, line: 48, baseType: !337, size: 64, offset: 576)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2569, file: !2568, line: 59, baseType: !626, size: 256, offset: 640)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2569, file: !2568, line: 60, baseType: !184, size: 64, offset: 896)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2569, file: !2568, line: 61, baseType: !2582, size: 64, offset: 960)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2585, line: 13, size: 1216, elements: !2586)
!2585 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2584, file: !2585, line: 14, baseType: !184, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2584, file: !2585, line: 15, baseType: !337, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2584, file: !2585, line: 17, baseType: !337, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2584, file: !2585, line: 17, baseType: !337, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2584, file: !2585, line: 18, baseType: !337, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2584, file: !2585, line: 18, baseType: !337, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2584, file: !2585, line: 19, baseType: !2594, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2584, file: !2585, line: 21, baseType: !185, size: 64, offset: 448)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2584, file: !2585, line: 23, baseType: !185, size: 64, offset: 512)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2584, file: !2585, line: 24, baseType: !185, size: 64, offset: 576)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2584, file: !2585, line: 25, baseType: !185, size: 64, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2584, file: !2585, line: 26, baseType: !185, size: 64, offset: 704)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2584, file: !2585, line: 27, baseType: !185, size: 64, offset: 768)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2584, file: !2585, line: 28, baseType: !185, size: 64, offset: 832)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2584, file: !2585, line: 29, baseType: !185, size: 64, offset: 896)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2584, file: !2585, line: 30, baseType: !185, size: 64, offset: 960)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2584, file: !2585, line: 31, baseType: !185, size: 64, offset: 1024)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2584, file: !2585, line: 32, baseType: !185, size: 64, offset: 1088)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2584, file: !2585, line: 33, baseType: !185, size: 64, offset: 1152)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2569, file: !2568, line: 63, baseType: !240, size: 32, offset: 1024)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2569, file: !2568, line: 69, baseType: !256, size: 16, offset: 1056)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2569, file: !2568, line: 70, baseType: !762, size: 16, offset: 1072)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1695, file: !44, line: 882, baseType: !337, size: 64, offset: 9024)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1695, file: !44, line: 885, baseType: !220, size: 32, offset: 9088)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1695, file: !44, line: 886, baseType: !2614, size: 64, offset: 9152)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1695, file: !44, line: 901, baseType: !1955, size: 64, offset: 9216)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1695, file: !44, line: 904, baseType: !1718, size: 64, offset: 9280)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1695, file: !44, line: 906, baseType: !2619, size: 64, offset: 9344)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1695, file: !44, line: 930, baseType: !240, size: 32, offset: 9408)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1695, file: !44, line: 933, baseType: !240, size: 32, offset: 9440)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1695, file: !44, line: 935, baseType: !2624, size: 64, offset: 9472)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !2625)
!2625 = !{!2626}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2624, file: !74, line: 104, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1695, file: !44, line: 940, baseType: !630, size: 64, offset: 9536)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1695, file: !44, line: 942, baseType: !886, size: 256, offset: 9600)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1692, file: !44, line: 986, baseType: !2632, offset: 10240)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, elements: !1778)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1395, file: !1070, line: 882, baseType: !1691, size: 64, offset: 9792)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1395, file: !1070, line: 884, baseType: !115, size: 32, offset: 9856)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1395, file: !1070, line: 885, baseType: !115, size: 32, offset: 9888)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1395, file: !1070, line: 886, baseType: !115, size: 32, offset: 9920)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1395, file: !1070, line: 888, baseType: !115, size: 32, offset: 9952)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1395, file: !1070, line: 890, baseType: !337, size: 64, offset: 9984)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1395, file: !1070, line: 893, baseType: !13, size: 32, offset: 10048)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1395, file: !1070, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1395, file: !1070, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1395, file: !1070, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1395, file: !1070, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1395, file: !1070, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1395, file: !1070, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1395, file: !1070, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1395, file: !1070, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1395, file: !1070, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1395, file: !1070, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1395, file: !1070, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1395, file: !1070, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1395, file: !1070, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1395, file: !1070, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1395, file: !1070, line: 969, baseType: !337, size: 64, offset: 10176)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1395, file: !1070, line: 971, baseType: !2656, size: 448, offset: 10240)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2657)
!2657 = !{!2658, !2659, !2664}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2656, file: !68, line: 26, baseType: !337, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2656, file: !68, line: 27, baseType: !2660, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!185, !2663}
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, scope: !2656, file: !68, line: 28, baseType: !2665, size: 320, offset: 128)
!2665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2656, file: !68, line: 28, size: 320, elements: !2666)
!2666 = !{!2667, !2677, !2702}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2665, file: !68, line: 37, baseType: !2668, size: 320)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !68, line: 30, size: 320, elements: !2669)
!2669 = !{!2670, !2672, !2673, !2674, !2675, !2676}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2668, file: !68, line: 31, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2668, file: !68, line: 32, baseType: !182, size: 32, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2668, file: !68, line: 33, baseType: !182, size: 32, offset: 96)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2668, file: !68, line: 34, baseType: !182, size: 32, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2668, file: !68, line: 35, baseType: !438, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2668, file: !68, line: 36, baseType: !2671, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2665, file: !68, line: 47, baseType: !2678, size: 192)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !68, line: 39, size: 192, elements: !2679)
!2679 = !{!2680, !2681, !2682, !2701}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2678, file: !68, line: 40, baseType: !1562, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2678, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, scope: !2678, file: !68, line: 42, baseType: !2683, size: 64, offset: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2678, file: !68, line: 42, size: 64, elements: !2684)
!2684 = !{!2685, !2693}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2683, file: !68, line: 43, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2688, line: 7, size: 128, elements: !2689)
!2688 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2689 = !{!2690, !2692}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2687, file: !2688, line: 8, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !322, line: 93, baseType: !528)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2687, file: !2688, line: 9, baseType: !528, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2683, file: !68, line: 44, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2696, line: 7, size: 64, elements: !2697)
!2696 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2697 = !{!2698, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2695, file: !2696, line: 8, baseType: !2699, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2696, line: 5, baseType: !622)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2695, file: !2696, line: 9, baseType: !622, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2678, file: !68, line: 46, baseType: !438, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2665, file: !68, line: 55, baseType: !2703, size: 256)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !68, line: 49, size: 256, elements: !2704)
!2704 = !{!2705, !2713, !2714, !2715, !2716}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2703, file: !68, line: 50, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2708, line: 36, size: 64, elements: !2709)
!2708 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2709 = !{!2710, !2711, !2712}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2707, file: !2708, line: 37, baseType: !115, size: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2707, file: !2708, line: 38, baseType: !764, size: 16, offset: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2707, file: !2708, line: 39, baseType: !764, size: 16, offset: 48)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2703, file: !68, line: 51, baseType: !115, size: 32, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2703, file: !68, line: 52, baseType: !115, size: 32, offset: 96)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2703, file: !68, line: 53, baseType: !337, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2703, file: !68, line: 54, baseType: !337, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1395, file: !1070, line: 973, baseType: !2718, size: 32, offset: 10688)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !207, line: 27, baseType: !2719)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !322, line: 28, baseType: !115)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1395, file: !1070, line: 974, baseType: !2718, size: 32, offset: 10720)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1395, file: !1070, line: 978, baseType: !337, size: 64, offset: 10752)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1395, file: !1070, line: 987, baseType: !1394, size: 64, offset: 10816)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1395, file: !1070, line: 990, baseType: !1394, size: 64, offset: 10880)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1395, file: !1070, line: 995, baseType: !206, size: 128, offset: 10944)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1395, file: !1070, line: 996, baseType: !206, size: 128, offset: 11072)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1395, file: !1070, line: 997, baseType: !1394, size: 64, offset: 11200)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1395, file: !1070, line: 1005, baseType: !206, size: 128, offset: 11264)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1395, file: !1070, line: 1006, baseType: !206, size: 128, offset: 11392)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1395, file: !1070, line: 1009, baseType: !1759, size: 64, offset: 11520)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1395, file: !1070, line: 1010, baseType: !2731, size: 512, offset: 11584)
!2731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 512, elements: !856)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1395, file: !1070, line: 1011, baseType: !206, size: 128, offset: 12096)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1395, file: !1070, line: 1012, baseType: !206, size: 128, offset: 12224)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1395, file: !1070, line: 1014, baseType: !574, size: 64, offset: 12352)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1395, file: !1070, line: 1017, baseType: !755, size: 64, offset: 12416)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1395, file: !1070, line: 1020, baseType: !755, size: 64, offset: 12480)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1395, file: !1070, line: 1023, baseType: !184, size: 64, offset: 12544)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1395, file: !1070, line: 1025, baseType: !438, size: 64, offset: 12608)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1395, file: !1070, line: 1026, baseType: !438, size: 64, offset: 12672)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1395, file: !1070, line: 1031, baseType: !438, size: 64, offset: 12736)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1395, file: !1070, line: 1032, baseType: !2742, size: 192, offset: 12800)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1070, line: 324, size: 192, elements: !2743)
!2743 = !{!2744, !2745, !2746}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2742, file: !1070, line: 326, baseType: !438, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2742, file: !1070, line: 327, baseType: !438, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2742, file: !1070, line: 328, baseType: !584, size: 32, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1395, file: !1070, line: 1041, baseType: !337, size: 64, offset: 12992)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1395, file: !1070, line: 1042, baseType: !337, size: 64, offset: 13056)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1395, file: !1070, line: 1045, baseType: !438, size: 64, offset: 13120)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1395, file: !1070, line: 1048, baseType: !438, size: 64, offset: 13184)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1395, file: !1070, line: 1051, baseType: !337, size: 64, offset: 13248)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1395, file: !1070, line: 1052, baseType: !337, size: 64, offset: 13312)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1395, file: !1070, line: 1055, baseType: !2754, size: 640, offset: 13376)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2755, line: 132, size: 640, elements: !2756)
!2755 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2756 = !{!2757, !2763, !2764}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2754, file: !2755, line: 133, baseType: !2758, size: 576)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2759, size: 576, elements: !289)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2755, line: 117, size: 192, elements: !2760)
!2760 = !{!2761, !2762}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2759, file: !2755, line: 118, baseType: !438, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2759, file: !2755, line: 119, baseType: !1571, size: 128, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2754, file: !2755, line: 134, baseType: !13, size: 32, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2754, file: !2755, line: 135, baseType: !13, size: 32, offset: 608)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1395, file: !1070, line: 1058, baseType: !2766, size: 448, offset: 14016)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2755, line: 144, size: 448, elements: !2767)
!2767 = !{!2768, !2769, !2770}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2766, file: !2755, line: 145, baseType: !846, size: 128, align: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2766, file: !2755, line: 146, baseType: !626, size: 256, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2766, file: !2755, line: 147, baseType: !13, size: 32, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1395, file: !1070, line: 1064, baseType: !1785, size: 64, offset: 14464)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1395, file: !1070, line: 1067, baseType: !1785, size: 64, offset: 14528)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1395, file: !1070, line: 1070, baseType: !1785, size: 64, offset: 14592)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1395, file: !1070, line: 1074, baseType: !1812, size: 64, offset: 14656)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1395, file: !1070, line: 1084, baseType: !2776, size: 128, offset: 14720)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2777)
!2777 = !{!2778}
!2778 = !DISubrange(count: 16)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1395, file: !1070, line: 1086, baseType: !2780, size: 64, offset: 14848)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1070, line: 55, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1395, file: !1070, line: 1089, baseType: !2783, size: 64, offset: 14912)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2784, line: 12, size: 64, elements: !2785)
!2784 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2785 = !{!2786}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2783, file: !2784, line: 13, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2784, line: 8, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1395, file: !1070, line: 1090, baseType: !2790, size: 128, offset: 14976)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2791, line: 13, size: 128, elements: !2792)
!2791 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2792 = !{!2793}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2790, file: !2791, line: 14, baseType: !206, size: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1395, file: !1070, line: 1097, baseType: !2795, size: 64, offset: 15104)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1070, line: 50, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1395, file: !1070, line: 1100, baseType: !2798, size: 64, offset: 15168)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1070, line: 1100, flags: DIFlagFwdDecl)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1395, file: !1070, line: 1103, baseType: !2801, size: 64, offset: 15232)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1070, line: 53, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1395, file: !1070, line: 1107, baseType: !2804, size: 64, offset: 15296)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1070, line: 56, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1395, file: !1070, line: 1110, baseType: !2807, size: 64, offset: 15360)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2809, line: 93, size: 8768, elements: !2810)
!2809 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2810 = !{!2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2858, !2867, !2868, !2870, !2871, !2872, !2875, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2913, !2914, !2921, !2931, !2934, !2935, !2938, !2939, !2940, !2941, !2942, !2943}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2808, file: !2809, line: 94, baseType: !1408, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2808, file: !2809, line: 95, baseType: !240, size: 32, offset: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2808, file: !2809, line: 96, baseType: !115, size: 32, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2808, file: !2809, line: 97, baseType: !115, size: 32, offset: 96)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2808, file: !2809, line: 98, baseType: !206, size: 128, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2808, file: !2809, line: 100, baseType: !1381, size: 192, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2808, file: !2809, line: 103, baseType: !1394, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2808, file: !2809, line: 106, baseType: !2819, size: 192, offset: 512)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1960, line: 32, size: 192, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2819, file: !1960, line: 33, baseType: !206, size: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2819, file: !1960, line: 34, baseType: !2823, size: 64, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2824, line: 25, baseType: !2825)
!2824 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2824, line: 23, size: 64, elements: !2826)
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2825, file: !2824, line: 24, baseType: !1642, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2808, file: !2809, line: 109, baseType: !996, size: 64, offset: 704)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2808, file: !2809, line: 112, baseType: !115, size: 32, offset: 768)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2808, file: !2809, line: 114, baseType: !115, size: 32, offset: 800)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2808, file: !2809, line: 115, baseType: !1394, size: 64, offset: 832)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2808, file: !2809, line: 118, baseType: !115, size: 32, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2808, file: !2809, line: 119, baseType: !13, size: 32, offset: 928)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2808, file: !2809, line: 121, baseType: !2835, size: 64, offset: 960)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2809, line: 80, size: 448, elements: !2837)
!2837 = !{!2838, !2839, !2845}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2836, file: !2809, line: 81, baseType: !240, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2836, file: !2809, line: 82, baseType: !2840, size: 128, offset: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2809, line: 75, size: 128, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2840, file: !2809, line: 76, baseType: !1394, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2840, file: !2809, line: 77, baseType: !2844, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2836, file: !2809, line: 83, baseType: !575, size: 256, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2808, file: !2809, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2808, file: !2809, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2808, file: !2809, line: 138, baseType: !13, size: 32, offset: 1056)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2808, file: !2809, line: 139, baseType: !206, size: 128, offset: 1088)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2808, file: !2809, line: 142, baseType: !1515, size: 512, offset: 1216)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2808, file: !2809, line: 143, baseType: !1523, size: 64, offset: 1728)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2808, file: !2809, line: 150, baseType: !2853, size: 256, offset: 1792)
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2854, size: 256, elements: !745)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2809, line: 38, size: 128, elements: !2855)
!2855 = !{!2856, !2857}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2854, file: !2809, line: 39, baseType: !438, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2854, file: !2809, line: 40, baseType: !438, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2808, file: !2809, line: 156, baseType: !2859, size: 192, offset: 2048)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2809, line: 66, size: 192, elements: !2860)
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2859, file: !2809, line: 67, baseType: !2862, size: 192)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2809, line: 47, size: 192, elements: !2863)
!2863 = !{!2864, !2865, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2862, file: !2809, line: 48, baseType: !632, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2862, file: !2809, line: 49, baseType: !632, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2862, file: !2809, line: 50, baseType: !632, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2808, file: !2809, line: 160, baseType: !2754, size: 640, offset: 2240)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2808, file: !2809, line: 163, baseType: !2869, size: 256, offset: 2880)
!2869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1759, size: 256, elements: !856)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2808, file: !2809, line: 169, baseType: !1759, size: 64, offset: 3136)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2808, file: !2809, line: 172, baseType: !115, size: 32, offset: 3200)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2808, file: !2809, line: 174, baseType: !2873, size: 64, offset: 3264)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2809, line: 174, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2808, file: !2809, line: 185, baseType: !2876, size: 64, offset: 3328)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !409, line: 860, baseType: !2877)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 853, size: 64, elements: !2878)
!2878 = !{!2879, !2880}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2877, file: !409, line: 858, baseType: !408, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2877, file: !409, line: 859, baseType: !220, size: 32, offset: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2808, file: !2809, line: 186, baseType: !438, size: 64, offset: 3392)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2808, file: !2809, line: 186, baseType: !438, size: 64, offset: 3456)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2808, file: !2809, line: 186, baseType: !438, size: 64, offset: 3520)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2808, file: !2809, line: 186, baseType: !438, size: 64, offset: 3584)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2808, file: !2809, line: 187, baseType: !438, size: 64, offset: 3648)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2808, file: !2809, line: 188, baseType: !438, size: 64, offset: 3712)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2808, file: !2809, line: 189, baseType: !2742, size: 192, offset: 3776)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2808, file: !2809, line: 190, baseType: !337, size: 64, offset: 3968)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2808, file: !2809, line: 190, baseType: !337, size: 64, offset: 4032)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2808, file: !2809, line: 190, baseType: !337, size: 64, offset: 4096)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2808, file: !2809, line: 190, baseType: !337, size: 64, offset: 4160)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2808, file: !2809, line: 191, baseType: !337, size: 64, offset: 4224)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2808, file: !2809, line: 191, baseType: !337, size: 64, offset: 4288)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2808, file: !2809, line: 191, baseType: !337, size: 64, offset: 4352)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2808, file: !2809, line: 191, baseType: !337, size: 64, offset: 4416)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2808, file: !2809, line: 192, baseType: !337, size: 64, offset: 4480)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2808, file: !2809, line: 192, baseType: !337, size: 64, offset: 4544)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2808, file: !2809, line: 192, baseType: !337, size: 64, offset: 4608)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2808, file: !2809, line: 192, baseType: !337, size: 64, offset: 4672)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2808, file: !2809, line: 193, baseType: !337, size: 64, offset: 4736)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2808, file: !2809, line: 193, baseType: !337, size: 64, offset: 4800)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2808, file: !2809, line: 194, baseType: !2903, size: 448, offset: 4864)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2904, line: 12, size: 448, elements: !2905)
!2904 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2903, file: !2904, line: 15, baseType: !438, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2903, file: !2904, line: 17, baseType: !438, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2903, file: !2904, line: 19, baseType: !438, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2903, file: !2904, line: 21, baseType: !438, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2903, file: !2904, line: 29, baseType: !438, size: 64, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2903, file: !2904, line: 35, baseType: !438, size: 64, offset: 320)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2903, file: !2904, line: 44, baseType: !438, size: 64, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2808, file: !2809, line: 202, baseType: !440, size: 64, offset: 5312)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2808, file: !2809, line: 213, baseType: !2915, size: 2048, offset: 5376)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2916, size: 2048, elements: !2777)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2917, line: 43, size: 128, elements: !2918)
!2917 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2918 = !{!2919, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2916, file: !2917, line: 44, baseType: !336, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2916, file: !2917, line: 45, baseType: !336, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2808, file: !2809, line: 216, baseType: !2922, size: 448, offset: 7424)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2809, line: 30, size: 448, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2929, !2930}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2922, file: !2809, line: 31, baseType: !115, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2922, file: !2809, line: 32, baseType: !185, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2922, file: !2809, line: 33, baseType: !337, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2922, file: !2809, line: 34, baseType: !438, size: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2922, file: !2809, line: 34, baseType: !438, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2922, file: !2809, line: 35, baseType: !337, size: 64, offset: 320)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2922, file: !2809, line: 35, baseType: !337, size: 64, offset: 384)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2808, file: !2809, line: 219, baseType: !2932, size: 64, offset: 7872)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2809, line: 219, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2808, file: !2809, line: 222, baseType: !13, size: 32, offset: 7936)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2808, file: !2809, line: 223, baseType: !2936, size: 64, offset: 8000)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2809, line: 223, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2808, file: !2809, line: 230, baseType: !706, size: 8, offset: 8064)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2808, file: !2809, line: 231, baseType: !764, size: 16, offset: 8080)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2808, file: !2809, line: 232, baseType: !764, size: 16, offset: 8096)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2808, file: !2809, line: 234, baseType: !1691, size: 64, offset: 8128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2808, file: !2809, line: 237, baseType: !626, size: 256, offset: 8192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2808, file: !2809, line: 243, baseType: !1288, size: 320, offset: 8448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1395, file: !1070, line: 1111, baseType: !2945, size: 64, offset: 15424)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2809, line: 20, size: 16640, elements: !2947)
!2947 = !{!2948, !2949, !2950, !2951}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2946, file: !2809, line: 21, baseType: !220, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2946, file: !2809, line: 22, baseType: !1408, size: 32, offset: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2946, file: !2809, line: 23, baseType: !1381, size: 192, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2946, file: !2809, line: 24, baseType: !2952, size: 16384, offset: 256)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2953, size: 16384, elements: !293)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1960, line: 51, size: 256, elements: !2954)
!2954 = !{!2955}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2953, file: !1960, line: 52, baseType: !2956, size: 256)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1960, line: 37, size: 256, elements: !2957)
!2957 = !{!2958, !2965, !2966, !2970}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2956, file: !1960, line: 39, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2960, line: 83, baseType: !2961)
!2960 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2960, line: 82, baseType: !2963)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !115}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2956, file: !1960, line: 40, baseType: !337, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2956, file: !1960, line: 46, baseType: !2967, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2960, line: 86, baseType: !2968)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2960, line: 85, baseType: !991)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2956, file: !1960, line: 48, baseType: !2823, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1395, file: !1070, line: 1112, baseType: !2823, size: 64, offset: 15488)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1395, file: !1070, line: 1113, baseType: !2823, size: 64, offset: 15552)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1395, file: !1070, line: 1115, baseType: !2823, size: 64, offset: 15616)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1395, file: !1070, line: 1116, baseType: !2819, size: 192, offset: 15680)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1395, file: !1070, line: 1117, baseType: !337, size: 64, offset: 15872)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1395, file: !1070, line: 1118, baseType: !334, size: 64, offset: 15936)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1395, file: !1070, line: 1119, baseType: !13, size: 32, offset: 16000)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1395, file: !1070, line: 1121, baseType: !845, size: 64, offset: 16064)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1395, file: !1070, line: 1125, baseType: !2980, size: 64, offset: 16128)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1070, line: 43, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1395, file: !1070, line: 1127, baseType: !373, size: 32, offset: 16192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1395, file: !1070, line: 1128, baseType: !13, size: 32, offset: 16224)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1395, file: !1070, line: 1130, baseType: !2985, size: 128, offset: 16256)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2986, line: 37, size: 128, elements: !2987)
!2986 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2987 = !{!2988, !2989, !2990}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2985, file: !2986, line: 38, baseType: !115, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2985, file: !2986, line: 39, baseType: !240, size: 32, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2985, file: !2986, line: 40, baseType: !2991, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2986, line: 24, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1395, file: !1070, line: 1131, baseType: !2994, size: 256, offset: 16384)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2995, line: 12, size: 256, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2996 = !{!2997, !2998, !2999, !3000}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2994, file: !2995, line: 13, baseType: !288, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2994, file: !2995, line: 14, baseType: !337, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2994, file: !2995, line: 15, baseType: !337, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2994, file: !2995, line: 16, baseType: !706, size: 8, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1395, file: !1070, line: 1134, baseType: !438, size: 64, offset: 16640)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1395, file: !1070, line: 1135, baseType: !438, size: 64, offset: 16704)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1395, file: !1070, line: 1138, baseType: !220, size: 32, offset: 16768)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1395, file: !1070, line: 1141, baseType: !584, size: 32, offset: 16800)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1395, file: !1070, line: 1143, baseType: !3006, size: 64, offset: 16832)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1070, line: 735, size: 64, elements: !3007)
!3007 = !{!3008}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3006, file: !1070, line: 736, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1395, file: !1070, line: 1147, baseType: !1574, size: 128, offset: 16896)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1395, file: !1070, line: 1149, baseType: !1394, size: 64, offset: 17024)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1395, file: !1070, line: 1151, baseType: !3013, size: 64, offset: 17088)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1070, line: 1151, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1395, file: !1070, line: 1188, baseType: !184, size: 64, offset: 17152)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1395, file: !1070, line: 1191, baseType: !3017, size: 64, offset: 17216)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1070, line: 44, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1395, file: !1070, line: 1194, baseType: !3020, size: 64, offset: 17280)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1070, line: 45, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1395, file: !1070, line: 1197, baseType: !3023, size: 64, offset: 17344)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1070, line: 61, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1395, file: !1070, line: 1199, baseType: !3026, size: 64, offset: 17408)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3028, line: 99, size: 128, elements: !3029)
!3028 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3029 = !{!3030, !3031, !3032}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3027, file: !3028, line: 100, baseType: !630, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3027, file: !3028, line: 101, baseType: !240, size: 32, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3027, file: !3028, line: 103, baseType: !258, size: 16, offset: 96)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1395, file: !1070, line: 1202, baseType: !3034, size: 64, offset: 17472)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1070, line: 48, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1395, file: !1070, line: 1205, baseType: !337, size: 64, offset: 17536)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1395, file: !1070, line: 1206, baseType: !3038, size: 64, offset: 17600)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1960, line: 14, baseType: !3040)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1960, line: 12, size: 384, elements: !3041)
!3041 = !{!3042}
!3042 = !DIDerivedType(tag: DW_TAG_member, scope: !3040, file: !1960, line: 13, baseType: !3043, size: 384)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3040, file: !1960, line: 13, size: 384, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3048}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3043, file: !1960, line: 13, baseType: !115, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3043, file: !1960, line: 13, baseType: !115, size: 32, offset: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3043, file: !1960, line: 13, baseType: !115, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3043, file: !1960, line: 13, baseType: !3049, size: 256, offset: 128)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3050, line: 37, size: 256, elements: !3051)
!3050 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3051 = !{!3052, !3057, !3070, !3076, !3085, !3112, !3117}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3049, file: !3050, line: 42, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3050, line: 39, size: 64, elements: !3054)
!3054 = !{!3055, !3056}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3053, file: !3050, line: 40, baseType: !2719, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3053, file: !3050, line: 41, baseType: !379, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3049, file: !3050, line: 50, baseType: !3058, size: 192)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3050, line: 45, size: 192, elements: !3059)
!3059 = !{!3060, !3062, !3063, !3069}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3058, file: !3050, line: 46, baseType: !3061, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !322, line: 95, baseType: !115)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3058, file: !3050, line: 47, baseType: !115, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3058, file: !3050, line: 48, baseType: !3064, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3050, line: 11, baseType: !3065)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3050, line: 8, size: 64, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3065, file: !3050, line: 9, baseType: !115, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3065, file: !3050, line: 10, baseType: !184, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3058, file: !3050, line: 49, baseType: !115, size: 32, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3049, file: !3050, line: 57, baseType: !3071, size: 128)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3050, line: 53, size: 128, elements: !3072)
!3072 = !{!3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3071, file: !3050, line: 54, baseType: !2719, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3071, file: !3050, line: 55, baseType: !379, size: 32, offset: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3071, file: !3050, line: 56, baseType: !3064, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3049, file: !3050, line: 66, baseType: !3077, size: 256)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3050, line: 60, size: 256, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082, !3084}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3077, file: !3050, line: 61, baseType: !2719, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3077, file: !3050, line: 62, baseType: !379, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3077, file: !3050, line: 63, baseType: !115, size: 32, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3077, file: !3050, line: 64, baseType: !3083, size: 64, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !322, line: 94, baseType: !323)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3077, file: !3050, line: 65, baseType: !3083, size: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3049, file: !3050, line: 105, baseType: !3086, size: 256)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3050, line: 69, size: 256, elements: !3087)
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3086, file: !3050, line: 70, baseType: !184, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !3086, file: !3050, line: 79, baseType: !3090, size: 192, offset: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3086, file: !3050, line: 79, size: 192, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3101, !3106}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3090, file: !3050, line: 81, baseType: !115, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3090, file: !3050, line: 86, baseType: !764, size: 16)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3090, file: !3050, line: 92, baseType: !3095, size: 192)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3050, line: 88, size: 192, elements: !3096)
!3096 = !{!3097, !3099, !3100}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3095, file: !3050, line: 89, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1558)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3095, file: !3050, line: 90, baseType: !184, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3095, file: !3050, line: 91, baseType: !184, size: 64, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3090, file: !3050, line: 97, baseType: !3102, size: 96)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3050, line: 94, size: 96, elements: !3103)
!3103 = !{!3104, !3105}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3102, file: !3050, line: 95, baseType: !3098, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3102, file: !3050, line: 96, baseType: !180, size: 32, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3090, file: !3050, line: 103, baseType: !3107, size: 128)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3050, line: 99, size: 128, elements: !3108)
!3108 = !{!3109, !3110, !3111}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3107, file: !3050, line: 100, baseType: !337, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3107, file: !3050, line: 101, baseType: !180, size: 32, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3107, file: !3050, line: 102, baseType: !180, size: 32, offset: 96)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3049, file: !3050, line: 111, baseType: !3113, size: 128)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3050, line: 108, size: 128, elements: !3114)
!3114 = !{!3115, !3116}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3113, file: !3050, line: 109, baseType: !185, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3113, file: !3050, line: 110, baseType: !115, size: 32, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3049, file: !3050, line: 118, baseType: !3118, size: 128)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3050, line: 114, size: 128, elements: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3118, file: !3050, line: 115, baseType: !184, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3118, file: !3050, line: 116, baseType: !115, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3118, file: !3050, line: 117, baseType: !13, size: 32, offset: 96)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1395, file: !1070, line: 1208, baseType: !2903, size: 448, offset: 17664)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1395, file: !1070, line: 1215, baseType: !438, size: 64, offset: 18112)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1395, file: !1070, line: 1217, baseType: !438, size: 64, offset: 18176)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1395, file: !1070, line: 1219, baseType: !438, size: 64, offset: 18240)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1395, file: !1070, line: 1223, baseType: !3128, size: 64, offset: 18304)
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3129, line: 99, baseType: !3130)
!3129 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3129, line: 99, size: 64, elements: !3131)
!3131 = !{!3132}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3130, file: !3129, line: 99, baseType: !1642, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1395, file: !1070, line: 1225, baseType: !408, size: 32, offset: 18368)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1395, file: !1070, line: 1226, baseType: !115, size: 32, offset: 18400)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1395, file: !1070, line: 1227, baseType: !115, size: 32, offset: 18432)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1395, file: !1070, line: 1231, baseType: !3137, size: 64, offset: 18496)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1070, line: 1231, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1395, file: !1070, line: 1233, baseType: !206, size: 128, offset: 18560)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1395, file: !1070, line: 1240, baseType: !3141, size: 64, offset: 18688)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1070, line: 62, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1395, file: !1070, line: 1242, baseType: !3144, size: 64, offset: 18752)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1070, line: 1242, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1395, file: !1070, line: 1244, baseType: !206, size: 128, offset: 18816)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1395, file: !1070, line: 1245, baseType: !3148, size: 64, offset: 18944)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1070, line: 51, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1395, file: !1070, line: 1246, baseType: !626, size: 256, offset: 19008)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1395, file: !1070, line: 1247, baseType: !13, size: 32, offset: 19264)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1395, file: !1070, line: 1250, baseType: !3153, size: 64, offset: 19328)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1070, line: 57, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1395, file: !1070, line: 1251, baseType: !626, size: 256, offset: 19392)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1395, file: !1070, line: 1252, baseType: !206, size: 128, offset: 19648)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1395, file: !1070, line: 1259, baseType: !2403, size: 64, offset: 19776)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1395, file: !1070, line: 1260, baseType: !764, size: 16, offset: 19840)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1395, file: !1070, line: 1261, baseType: !764, size: 16, offset: 19856)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1395, file: !1070, line: 1314, baseType: !3161, size: 64, offset: 19904)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3163, line: 62, size: 256, align: 256, elements: !3164)
!3163 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3164 = !{!3165, !3166, !3167, !3168, !3169, !3170, !3171}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3162, file: !3163, line: 75, baseType: !180, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3162, file: !3163, line: 90, baseType: !180, size: 32, offset: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3162, file: !3163, line: 112, baseType: !439, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3162, file: !3163, line: 132, baseType: !180, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3162, file: !3163, line: 140, baseType: !180, size: 32, offset: 160)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3162, file: !3163, line: 149, baseType: !180, size: 32, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3162, file: !3163, line: 154, baseType: !3172, offset: 224)
!3172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1778)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1395, file: !1070, line: 1315, baseType: !182, size: 32, offset: 19968)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1395, file: !1070, line: 1316, baseType: !182, size: 32, offset: 20000)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1395, file: !1070, line: 1321, baseType: !337, size: 64, offset: 20032)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1395, file: !1070, line: 1325, baseType: !115, size: 32, offset: 20096)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1395, file: !1070, line: 1326, baseType: !115, size: 32, offset: 20128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1395, file: !1070, line: 1327, baseType: !115, size: 32, offset: 20160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1395, file: !1070, line: 1328, baseType: !115, size: 32, offset: 20192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1395, file: !1070, line: 1329, baseType: !846, size: 128, align: 64, offset: 20224)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1395, file: !1070, line: 1332, baseType: !3182, size: 128, offset: 20352)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3183, line: 51, size: 128, elements: !3184)
!3183 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3184 = !{!3185, !3190, !3191}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3182, file: !3183, line: 60, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3187, line: 7, size: 64, elements: !3188)
!3187 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3188 = !{!3189}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3186, file: !3187, line: 12, baseType: !1639, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3182, file: !3183, line: 63, baseType: !706, size: 8, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3182, file: !3183, line: 70, baseType: !706, size: 8, offset: 72)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1395, file: !1070, line: 1335, baseType: !2455, size: 64, offset: 20480)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1395, file: !1070, line: 1337, baseType: !3194, size: 128, offset: 20544)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3183, line: 39, size: 128, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3194, file: !3183, line: 40, baseType: !2242, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3194, file: !3183, line: 42, baseType: !180, size: 32, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3194, file: !3183, line: 43, baseType: !180, size: 32, offset: 96)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1395, file: !1070, line: 1340, baseType: !3200, size: 64, offset: 20672)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1070, line: 69, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1395, file: !1070, line: 1351, baseType: !115, size: 32, offset: 20736)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1395, file: !1070, line: 1352, baseType: !115, size: 32, offset: 20768)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1395, file: !1070, line: 1354, baseType: !337, size: 64, offset: 20800)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1395, file: !1070, line: 1364, baseType: !438, size: 64, offset: 20864)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1395, file: !1070, line: 1365, baseType: !438, size: 64, offset: 20928)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1395, file: !1070, line: 1412, baseType: !337, size: 64, offset: 20992)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1395, file: !1070, line: 1453, baseType: !3209, size: 64, offset: 21056)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1070, line: 1453, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1395, file: !1070, line: 1457, baseType: !3212, size: 64, offset: 21120)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !3214)
!3214 = !{!3215, !3216, !3235, !3238, !3239, !3272, !3282}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3213, file: !74, line: 62, baseType: !73, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !3213, file: !74, line: 64, baseType: !3217, size: 192, offset: 64)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3213, file: !74, line: 64, size: 192, elements: !3218)
!3218 = !{!3219, !3230}
!3219 = !DIDerivedType(tag: DW_TAG_member, scope: !3217, file: !74, line: 65, baseType: !3220, size: 192)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3217, file: !74, line: 65, size: 192, elements: !3221)
!3221 = !{!3222, !3229}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3220, file: !74, line: 66, baseType: !3223, size: 128)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3224, line: 50, size: 128, elements: !3225)
!3224 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3223, file: !3224, line: 52, baseType: !337, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3223, file: !3224, line: 54, baseType: !13, size: 32, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3223, file: !3224, line: 55, baseType: !13, size: 32, offset: 96)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3220, file: !74, line: 67, baseType: !337, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !3217, file: !74, line: 70, baseType: !3231, size: 192)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3217, file: !74, line: 70, size: 192, elements: !3232)
!3232 = !{!3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3231, file: !74, line: 71, baseType: !846, size: 128, align: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3231, file: !74, line: 72, baseType: !337, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3213, file: !74, line: 76, baseType: !3236, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3213, file: !74, line: 77, baseType: !337, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3213, file: !74, line: 79, baseType: !3240, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3224, line: 25, size: 256, elements: !3242)
!3242 = !{!3243, !3249, !3253}
!3243 = !DIDerivedType(tag: DW_TAG_member, scope: !3241, file: !3224, line: 26, baseType: !3244, size: 128)
!3244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3241, file: !3224, line: 26, size: 128, elements: !3245)
!3245 = !{!3246, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3244, file: !3224, line: 27, baseType: !3247, size: 128)
!3247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 128, elements: !2777)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3244, file: !3224, line: 28, baseType: !3247, size: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3241, file: !3224, line: 31, baseType: !3250, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3252)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3224, line: 23, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !3241, file: !3224, line: 33, baseType: !3254, size: 64, offset: 192)
!3254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3241, file: !3224, line: 33, size: 64, elements: !3255)
!3255 = !{!3256, !3262, !3267}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3254, file: !3224, line: 38, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3254, file: !3224, line: 34, size: 64, elements: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3257, file: !3224, line: 35, baseType: !622, size: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3257, file: !3224, line: 36, baseType: !248, size: 8, offset: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3257, file: !3224, line: 37, baseType: !248, size: 8, offset: 40)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3254, file: !3224, line: 42, baseType: !3263, size: 16)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3254, file: !3224, line: 39, size: 16, elements: !3264)
!3264 = !{!3265, !3266}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3263, file: !3224, line: 40, baseType: !248, size: 8)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3263, file: !3224, line: 41, baseType: !248, size: 8, offset: 8)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3254, file: !3224, line: 46, baseType: !3268, size: 16)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3254, file: !3224, line: 43, size: 16, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3268, file: !3224, line: 44, baseType: !248, size: 8)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3268, file: !3224, line: 45, baseType: !248, size: 8, offset: 8)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3213, file: !74, line: 81, baseType: !3273, size: 64, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !3275)
!3275 = !{!3276, !3277, !3278, !3279, !3280, !3281}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3274, file: !74, line: 86, baseType: !3236, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3274, file: !74, line: 87, baseType: !337, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3274, file: !74, line: 88, baseType: !337, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3274, file: !74, line: 89, baseType: !337, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3274, file: !74, line: 90, baseType: !706, size: 8, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3274, file: !74, line: 92, baseType: !3273, size: 64, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3213, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1395, file: !1070, line: 1463, baseType: !3284, offset: 21184)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1070, line: 739, elements: !915)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1395, file: !1070, line: 1470, baseType: !846, size: 128, align: 64, offset: 21184)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1395, file: !1070, line: 1471, baseType: !1408, size: 32, offset: 21312)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1395, file: !1070, line: 1472, baseType: !115, size: 32, offset: 21344)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1395, file: !1070, line: 1474, baseType: !1394, size: 64, offset: 21376)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1395, file: !1070, line: 1475, baseType: !868, size: 320, offset: 21440)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1395, file: !1070, line: 1478, baseType: !3291, size: 64, offset: 21760)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3293, line: 49, size: 512, elements: !3294)
!3293 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3294 = !{!3295, !3296, !3297, !3298, !3299, !3301, !3302, !3303, !3305}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3292, file: !3293, line: 50, baseType: !3291, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3292, file: !3293, line: 51, baseType: !184, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3292, file: !3293, line: 52, baseType: !337, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3292, file: !3293, line: 53, baseType: !337, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3292, file: !3293, line: 54, baseType: !3300, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3292, file: !3293, line: 56, baseType: !13, size: 32, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3292, file: !3293, line: 58, baseType: !13, size: 32, offset: 352)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3292, file: !3293, line: 59, baseType: !3304, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !207, line: 159, baseType: !438)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3292, file: !3293, line: 60, baseType: !2594, size: 64, offset: 448)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1395, file: !1070, line: 1482, baseType: !1408, size: 32, offset: 21824)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1395, file: !1070, line: 1489, baseType: !184, size: 64, offset: 21888)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1395, file: !1070, line: 1504, baseType: !184, size: 64, offset: 21952)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1395, file: !1070, line: 1505, baseType: !439, size: 64, offset: 22016)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1395, file: !1070, line: 1506, baseType: !438, size: 64, offset: 22080)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1395, file: !1070, line: 1507, baseType: !439, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1395, file: !1070, line: 1508, baseType: !439, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1395, file: !1070, line: 1509, baseType: !439, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1395, file: !1070, line: 1510, baseType: !846, size: 128, align: 64, offset: 22208)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1395, file: !1070, line: 1511, baseType: !115, size: 32, offset: 22336)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1395, file: !1070, line: 1515, baseType: !3317, size: 64, offset: 22400)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1422, line: 56, size: 64, elements: !3318)
!3318 = !{!3319}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3317, file: !1422, line: 57, baseType: !1425, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1395, file: !1070, line: 1518, baseType: !3317, size: 64, offset: 22464)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1395, file: !1070, line: 1528, baseType: !846, size: 128, align: 64, offset: 22528)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1395, file: !1070, line: 1552, baseType: !3323, size: 35328, offset: 23040)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3324, line: 430, size: 35328, elements: !3325)
!3324 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3325 = !{!3326, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3355, !3356, !3357, !3358, !3359, !3360, !3363, !3364, !3365, !3366}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3323, file: !3324, line: 432, baseType: !3327, size: 192)
!3327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3328, size: 192, elements: !289)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3329, line: 16, size: 64, elements: !3330)
!3329 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3328, file: !3329, line: 17, baseType: !256, size: 16)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3328, file: !3329, line: 18, baseType: !256, size: 16, offset: 16)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3328, file: !3329, line: 19, baseType: !256, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3328, file: !3329, line: 19, baseType: !256, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3328, file: !3329, line: 19, baseType: !256, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3328, file: !3329, line: 19, baseType: !256, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3328, file: !3329, line: 19, baseType: !256, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3328, file: !3329, line: 20, baseType: !256, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3328, file: !3329, line: 20, baseType: !256, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3328, file: !3329, line: 20, baseType: !256, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3328, file: !3329, line: 20, baseType: !256, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3328, file: !3329, line: 20, baseType: !256, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3328, file: !3329, line: 20, baseType: !256, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3323, file: !3324, line: 436, baseType: !337, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3323, file: !3324, line: 440, baseType: !258, size: 16, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3323, file: !3324, line: 441, baseType: !258, size: 16, offset: 272)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3323, file: !3324, line: 442, baseType: !258, size: 16, offset: 288)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3323, file: !3324, line: 443, baseType: !258, size: 16, offset: 304)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3323, file: !3324, line: 447, baseType: !337, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3323, file: !3324, line: 448, baseType: !337, size: 64, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3323, file: !3324, line: 459, baseType: !3352, size: 256, offset: 448)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3353, size: 256, elements: !856)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3324, line: 428, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3323, file: !3324, line: 461, baseType: !337, size: 64, offset: 704)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3323, file: !3324, line: 463, baseType: !337, size: 64, offset: 768)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3323, file: !3324, line: 465, baseType: !337, size: 64, offset: 832)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3323, file: !3324, line: 466, baseType: !337, size: 64, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3323, file: !3324, line: 467, baseType: !337, size: 64, offset: 960)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3323, file: !3324, line: 473, baseType: !3361, size: 64, offset: 1024)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3324, line: 10, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3323, file: !3324, line: 480, baseType: !337, size: 64, offset: 1088)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3323, file: !3324, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3323, file: !3324, line: 491, baseType: !182, size: 32, offset: 1184)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3323, file: !3324, line: 501, baseType: !3367, size: 33792, offset: 1536)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3368, line: 448, size: 33792, elements: !3369)
!3368 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3369 = !{!3370, !3371, !3372, !3534, !3535, !3541, !3542}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3367, file: !3368, line: 461, baseType: !13, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3367, file: !3368, line: 468, baseType: !337, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3367, file: !3368, line: 476, baseType: !3373, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3368, line: 356, size: 33280, align: 512, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3374, file: !3368, line: 358, baseType: !13, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3374, file: !3368, line: 361, baseType: !13, size: 32, offset: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3374, file: !3368, line: 364, baseType: !438, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3374, file: !3368, line: 367, baseType: !438, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3374, file: !3368, line: 370, baseType: !438, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3374, file: !3368, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3374, file: !3368, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3374, file: !3368, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3374, file: !3368, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3374, file: !3368, line: 397, baseType: !3386, size: 32768, offset: 512)
!3386 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3368, line: 348, size: 32768, elements: !3387)
!3387 = !{!3388, !3403, !3440, !3517, !3530}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3386, file: !3368, line: 349, baseType: !3389, size: 896)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3368, line: 12, size: 896, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3402}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3389, file: !3368, line: 13, baseType: !182, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3389, file: !3368, line: 14, baseType: !182, size: 32, offset: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3389, file: !3368, line: 15, baseType: !182, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3389, file: !3368, line: 16, baseType: !182, size: 32, offset: 96)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3389, file: !3368, line: 17, baseType: !182, size: 32, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3389, file: !3368, line: 18, baseType: !182, size: 32, offset: 160)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3389, file: !3368, line: 19, baseType: !182, size: 32, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3389, file: !3368, line: 22, baseType: !3399, size: 640, offset: 224)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 640, elements: !3400)
!3400 = !{!3401}
!3401 = !DISubrange(count: 20)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3389, file: !3368, line: 25, baseType: !182, size: 32, offset: 864)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3386, file: !3368, line: 350, baseType: !3404, size: 4096, align: 128)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3368, line: 34, size: 4096, align: 128, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3425, !3426, !3427, !3429, !3431, !3435}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3404, file: !3368, line: 35, baseType: !256, size: 16)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3404, file: !3368, line: 36, baseType: !256, size: 16, offset: 16)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3404, file: !3368, line: 37, baseType: !256, size: 16, offset: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3404, file: !3368, line: 38, baseType: !256, size: 16, offset: 48)
!3410 = !DIDerivedType(tag: DW_TAG_member, scope: !3404, file: !3368, line: 39, baseType: !3411, size: 128, offset: 64)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3404, file: !3368, line: 39, size: 128, elements: !3412)
!3412 = !{!3413, !3418}
!3413 = !DIDerivedType(tag: DW_TAG_member, scope: !3411, file: !3368, line: 40, baseType: !3414, size: 128)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3411, file: !3368, line: 40, size: 128, elements: !3415)
!3415 = !{!3416, !3417}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3414, file: !3368, line: 41, baseType: !438, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3414, file: !3368, line: 42, baseType: !438, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, scope: !3411, file: !3368, line: 44, baseType: !3419, size: 128)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3411, file: !3368, line: 44, size: 128, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3424}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3419, file: !3368, line: 45, baseType: !182, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3419, file: !3368, line: 46, baseType: !182, size: 32, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3419, file: !3368, line: 47, baseType: !182, size: 32, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3419, file: !3368, line: 48, baseType: !182, size: 32, offset: 96)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3404, file: !3368, line: 51, baseType: !182, size: 32, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3404, file: !3368, line: 52, baseType: !182, size: 32, offset: 224)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3404, file: !3368, line: 55, baseType: !3428, size: 1024, offset: 256)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1024, elements: !447)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3404, file: !3368, line: 58, baseType: !3430, size: 2048, offset: 1280)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 2048, elements: !293)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3404, file: !3368, line: 60, baseType: !3432, size: 384, offset: 3328)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 384, elements: !3433)
!3433 = !{!3434}
!3434 = !DISubrange(count: 12)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3404, file: !3368, line: 62, baseType: !3436, size: 384, offset: 3712)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3404, file: !3368, line: 62, size: 384, elements: !3437)
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3436, file: !3368, line: 63, baseType: !3432, size: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3436, file: !3368, line: 64, baseType: !3432, size: 384)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3386, file: !3368, line: 351, baseType: !3441, size: 1088)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3368, line: 79, size: 1088, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3516}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3441, file: !3368, line: 80, baseType: !182, size: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3441, file: !3368, line: 81, baseType: !182, size: 32, offset: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3441, file: !3368, line: 82, baseType: !182, size: 32, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3441, file: !3368, line: 83, baseType: !182, size: 32, offset: 96)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3441, file: !3368, line: 84, baseType: !182, size: 32, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3441, file: !3368, line: 85, baseType: !182, size: 32, offset: 160)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3441, file: !3368, line: 86, baseType: !182, size: 32, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3441, file: !3368, line: 88, baseType: !3399, size: 640, offset: 224)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3441, file: !3368, line: 89, baseType: !248, size: 8, offset: 864)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3441, file: !3368, line: 90, baseType: !248, size: 8, offset: 872)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3441, file: !3368, line: 91, baseType: !248, size: 8, offset: 880)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3441, file: !3368, line: 92, baseType: !248, size: 8, offset: 888)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3441, file: !3368, line: 93, baseType: !248, size: 8, offset: 896)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3441, file: !3368, line: 94, baseType: !248, size: 8, offset: 904)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3441, file: !3368, line: 95, baseType: !3458, size: 64, offset: 960)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3460, line: 11, size: 128, elements: !3461)
!3460 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3461 = !{!3462, !3463}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3459, file: !3460, line: 12, baseType: !185, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3459, file: !3460, line: 13, baseType: !3464, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3466, line: 103, size: 1344, elements: !3467)
!3466 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3496, !3497, !3498}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3465, file: !3466, line: 109, baseType: !337, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3465, file: !3466, line: 110, baseType: !337, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3465, file: !3466, line: 111, baseType: !337, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3465, file: !3466, line: 112, baseType: !337, size: 64, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3465, file: !3466, line: 113, baseType: !337, size: 64, offset: 256)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3465, file: !3466, line: 114, baseType: !337, size: 64, offset: 320)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3465, file: !3466, line: 117, baseType: !337, size: 64, offset: 384)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3465, file: !3466, line: 118, baseType: !337, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3465, file: !3466, line: 119, baseType: !337, size: 64, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3465, file: !3466, line: 120, baseType: !337, size: 64, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3465, file: !3466, line: 121, baseType: !337, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3465, file: !3466, line: 122, baseType: !337, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3465, file: !3466, line: 123, baseType: !337, size: 64, offset: 768)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3465, file: !3466, line: 124, baseType: !337, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3465, file: !3466, line: 125, baseType: !337, size: 64, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3465, file: !3466, line: 139, baseType: !337, size: 64, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3465, file: !3466, line: 142, baseType: !337, size: 64, offset: 1024)
!3485 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !3466, line: 144, baseType: !3486, size: 64, offset: 1088)
!3486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3465, file: !3466, line: 144, size: 64, elements: !3487)
!3487 = !{!3488, !3489, !3490}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3486, file: !3466, line: 146, baseType: !256, size: 16)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3486, file: !3466, line: 148, baseType: !438, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3486, file: !3466, line: 150, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3466, line: 59, size: 64, elements: !3492)
!3492 = !{!3493, !3494, !3495}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3491, file: !3466, line: 61, baseType: !438, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3491, file: !3466, line: 63, baseType: !438, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3491, file: !3466, line: 65, baseType: !438, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3465, file: !3466, line: 153, baseType: !337, size: 64, offset: 1152)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3465, file: !3466, line: 154, baseType: !337, size: 64, offset: 1216)
!3498 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !3466, line: 156, baseType: !3499, size: 64, offset: 1280)
!3499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3465, file: !3466, line: 156, size: 64, elements: !3500)
!3500 = !{!3501, !3502, !3503}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3499, file: !3466, line: 158, baseType: !256, size: 16)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3499, file: !3466, line: 160, baseType: !438, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3499, file: !3466, line: 162, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3466, line: 69, size: 64, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3504, file: !3466, line: 71, baseType: !438, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3504, file: !3466, line: 73, baseType: !438, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3504, file: !3466, line: 75, baseType: !438, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3504, file: !3466, line: 77, baseType: !438, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3504, file: !3466, line: 80, baseType: !438, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3504, file: !3466, line: 83, baseType: !438, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3504, file: !3466, line: 86, baseType: !438, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3504, file: !3466, line: 88, baseType: !438, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3504, file: !3466, line: 93, baseType: !438, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3504, file: !3466, line: 100, baseType: !438, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3441, file: !3368, line: 96, baseType: !182, size: 32, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3386, file: !3368, line: 352, baseType: !3518, size: 4608, align: 512)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3368, line: 333, size: 4608, align: 512, elements: !3519)
!3519 = !{!3520, !3521, !3528}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3518, file: !3368, line: 334, baseType: !3404, size: 4096, align: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3518, file: !3368, line: 335, baseType: !3522, size: 512, offset: 4096)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3368, line: 312, size: 512, elements: !3523)
!3523 = !{!3524, !3525, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3522, file: !3368, line: 313, baseType: !438, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3522, file: !3368, line: 314, baseType: !438, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3522, file: !3368, line: 315, baseType: !3527, size: 384, offset: 128)
!3527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 384, elements: !1861)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3518, file: !3368, line: 336, baseType: !3529, offset: 4608)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, elements: !1778)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3386, file: !3368, line: 353, baseType: !3531, size: 32768)
!3531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 32768, elements: !3532)
!3532 = !{!3533}
!3533 = !DISubrange(count: 4096)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3367, file: !3368, line: 484, baseType: !3373, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3367, file: !3368, line: 491, baseType: !3536, size: 128, offset: 256)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3368, line: 404, size: 128, elements: !3537)
!3537 = !{!3538, !3539, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3536, file: !3368, line: 424, baseType: !438, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3536, file: !3368, line: 432, baseType: !13, size: 32, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3536, file: !3368, line: 440, baseType: !13, size: 32, offset: 96)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3367, file: !3368, line: 498, baseType: !3536, size: 128, offset: 384)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3367, file: !3368, line: 508, baseType: !3374, size: 33280, align: 512, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1371, file: !1372, line: 16, baseType: !1381, size: 192, offset: 512)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1371, file: !1372, line: 17, baseType: !240, size: 32, offset: 704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !517, file: !20, line: 1240, baseType: !184, size: 64, offset: 6912)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !517, file: !20, line: 1243, baseType: !182, size: 32, offset: 6976)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !517, file: !20, line: 1245, baseType: !1128, size: 64, offset: 7040)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !517, file: !20, line: 1246, baseType: !1128, size: 64, offset: 7104)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !517, file: !20, line: 1248, baseType: !180, size: 32, offset: 7168)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !517, file: !20, line: 1249, baseType: !3551, size: 64, offset: 7232)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !517, file: !20, line: 1252, baseType: !3554, size: 256, offset: 7296)
!3554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !447)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !517, file: !20, line: 1253, baseType: !3556, size: 128, offset: 7552)
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3557, line: 21, baseType: !3558)
!3557 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3557, line: 19, size: 128, elements: !3559)
!3559 = !{!3560}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3558, file: !3557, line: 20, baseType: !3561, size: 128)
!3561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !2777)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !517, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !517, file: !20, line: 1261, baseType: !626, size: 256, offset: 7744)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !517, file: !20, line: 1267, baseType: !203, size: 64, offset: 8000)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !517, file: !20, line: 1269, baseType: !463, size: 64, offset: 8064)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !517, file: !20, line: 1271, baseType: !3567, size: 448, offset: 8128)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1137, line: 63, size: 448, elements: !3568)
!3568 = !{!3569, !3574, !3575, !3576, !3577, !3578, !3579}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3567, file: !1137, line: 64, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!337, !3573, !1135}
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3567, file: !1137, line: 66, baseType: !3570, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3567, file: !1137, line: 69, baseType: !185, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3567, file: !1137, line: 70, baseType: !115, size: 32, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3567, file: !1137, line: 71, baseType: !13, size: 32, offset: 224)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3567, file: !1137, line: 74, baseType: !206, size: 128, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3567, file: !1137, line: 85, baseType: !3580, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !517, file: !20, line: 1274, baseType: !630, size: 64, offset: 8576)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !517, file: !20, line: 1280, baseType: !630, size: 64, offset: 8640)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !517, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !517, file: !20, line: 1286, baseType: !2505, size: 32, offset: 8736)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !517, file: !20, line: 1289, baseType: !948, size: 64, offset: 8768)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !517, file: !20, line: 1290, baseType: !996, size: 64, offset: 8832)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !517, file: !20, line: 1297, baseType: !1955, size: 64, offset: 8896)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !517, file: !20, line: 1304, baseType: !3589, size: 64, offset: 8960)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3590, line: 49, size: 64, elements: !3591)
!3590 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3591 = !{!3592}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3589, file: !3590, line: 50, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3590, line: 41, size: 512, align: 512, elements: !3595)
!3595 = !{!3596, !3597, !3602}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3594, file: !3590, line: 43, baseType: !220, size: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3594, file: !3590, line: 45, baseType: !3598, size: 192, offset: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3590, line: 29, size: 192, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3598, file: !3590, line: 30, baseType: !206, size: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3598, file: !3590, line: 32, baseType: !185, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3594, file: !3590, line: 46, baseType: !185, size: 64, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !517, file: !20, line: 1305, baseType: !3589, size: 64, offset: 9024)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !517, file: !20, line: 1306, baseType: !846, size: 128, align: 64, offset: 9088)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !517, file: !20, line: 1307, baseType: !886, size: 256, offset: 9216)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !517, file: !20, line: 1309, baseType: !626, size: 256, offset: 9472)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !517, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !517, file: !20, line: 1317, baseType: !220, size: 32, align: 512, offset: 10240)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !517, file: !20, line: 1318, baseType: !206, size: 128, offset: 10304)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !517, file: !20, line: 1320, baseType: !220, size: 32, offset: 10432)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !517, file: !20, line: 1321, baseType: !206, size: 128, offset: 10496)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !511, file: !512, line: 73, baseType: !115, size: 32, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !511, file: !512, line: 74, baseType: !3614, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1802, line: 42, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !465, file: !404, line: 141, baseType: !3618, size: 64, offset: 704)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!115, !1198, !706}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !465, file: !404, line: 142, baseType: !3622, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!402, !402, !3625}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !403, file: !404, line: 96, baseType: !516, size: 64, offset: 832)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !403, file: !404, line: 97, baseType: !337, size: 64, offset: 896)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !403, file: !404, line: 98, baseType: !184, size: 64, offset: 960)
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 100, baseType: !3631, size: 128, offset: 1024)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 100, size: 128, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3631, file: !404, line: 101, baseType: !206, size: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3631, file: !404, line: 102, baseType: !2122, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !403, file: !404, line: 104, baseType: !206, size: 128, offset: 1152)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !403, file: !404, line: 105, baseType: !206, size: 128, offset: 1280)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !403, file: !404, line: 113, baseType: !3638, size: 128, offset: 1408)
!3638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 109, size: 128, elements: !3639)
!3639 = !{!3640, !3641, !3642}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3638, file: !404, line: 110, baseType: !872, size: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3638, file: !404, line: 111, baseType: !418, size: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3638, file: !404, line: 112, baseType: !846, size: 128, align: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !396, file: !20, line: 1968, baseType: !3644, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!203, !402, !367, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3649, line: 10, size: 128, elements: !3650)
!3649 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3650 = !{!3651, !3652}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3648, file: !3649, line: 11, baseType: !669, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3648, file: !3649, line: 12, baseType: !184, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !396, file: !20, line: 1969, baseType: !3654, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!115, !3614, !367, !115}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !396, file: !20, line: 1970, baseType: !3658, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!390, !367, !115, !706}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !396, file: !20, line: 1972, baseType: !3662, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!115, !402, !288, !115}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !396, file: !20, line: 1974, baseType: !3666, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!115, !3614, !367, !402, !329, !706}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !396, file: !20, line: 1976, baseType: !3670, size: 64, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!115, !402, !367, !402}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !396, file: !20, line: 1977, baseType: !3674, size: 64, offset: 448)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!115, !367, !402}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !396, file: !20, line: 1978, baseType: !3678, size: 64, offset: 512)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!115, !3614, !367, !402, !203}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !396, file: !20, line: 1980, baseType: !3682, size: 64, offset: 576)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!115, !3614, !367, !402, !329}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !396, file: !20, line: 1982, baseType: !3674, size: 64, offset: 640)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !396, file: !20, line: 1983, baseType: !3687, size: 64, offset: 704)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!115, !3614, !367, !402, !329, !521}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !396, file: !20, line: 1985, baseType: !3691, size: 64, offset: 768)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!115, !3614, !367, !402, !367, !402, !13}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !396, file: !20, line: 1987, baseType: !3695, size: 64, offset: 832)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!115, !3614, !402, !3698}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3700)
!3700 = !{!3701, !3702, !3703, !3713, !3722, !3723, !3728, !3729, !3730}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3699, file: !20, line: 227, baseType: !13, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3699, file: !20, line: 228, baseType: !329, size: 16, offset: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !20, line: 241, baseType: !3704, size: 32, offset: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3699, file: !20, line: 241, size: 32, elements: !3705)
!3705 = !{!3706, !3707}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3704, file: !20, line: 242, baseType: !373, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3704, file: !20, line: 243, baseType: !3708, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3709, line: 16, baseType: !3710)
!3709 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3709, line: 14, size: 32, elements: !3711)
!3711 = !{!3712}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3710, file: !3709, line: 15, baseType: !378, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !20, line: 245, baseType: !3714, size: 32, offset: 96)
!3714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3699, file: !20, line: 245, size: 32, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3714, file: !20, line: 246, baseType: !382, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3714, file: !20, line: 247, baseType: !3718, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3709, line: 20, baseType: !3719)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3709, line: 18, size: 32, elements: !3720)
!3720 = !{!3721}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3719, file: !3709, line: 19, baseType: !386, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3699, file: !20, line: 249, baseType: !526, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3699, file: !20, line: 250, baseType: !3724, size: 128, offset: 192)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1129, line: 13, size: 128, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3724, file: !1129, line: 14, baseType: !1128, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3724, file: !1129, line: 15, baseType: !185, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3699, file: !20, line: 251, baseType: !3724, size: 128, offset: 320)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3699, file: !20, line: 252, baseType: !3724, size: 128, offset: 448)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3699, file: !20, line: 259, baseType: !1718, size: 64, offset: 576)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !396, file: !20, line: 1988, baseType: !3732, size: 64, offset: 896)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!115, !3614, !1198, !3735, !182, !13}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3737, line: 22, size: 1280, elements: !3738)
!3737 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3736, file: !3737, line: 23, baseType: !182, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3736, file: !3737, line: 24, baseType: !329, size: 16, offset: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3736, file: !3737, line: 25, baseType: !13, size: 32, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3736, file: !3737, line: 26, baseType: !1840, size: 32, offset: 96)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3736, file: !3737, line: 27, baseType: !438, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3736, file: !3737, line: 28, baseType: !438, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3736, file: !3737, line: 41, baseType: !438, size: 64, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3736, file: !3737, line: 42, baseType: !521, size: 32, offset: 320)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3736, file: !3737, line: 43, baseType: !521, size: 32, offset: 352)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3736, file: !3737, line: 44, baseType: !373, size: 32, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3736, file: !3737, line: 45, baseType: !382, size: 32, offset: 416)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3736, file: !3737, line: 46, baseType: !526, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3736, file: !3737, line: 47, baseType: !3724, size: 128, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3736, file: !3737, line: 48, baseType: !3724, size: 128, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3736, file: !3737, line: 49, baseType: !3724, size: 128, offset: 768)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3736, file: !3737, line: 50, baseType: !3724, size: 128, offset: 896)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3736, file: !3737, line: 51, baseType: !438, size: 64, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3736, file: !3737, line: 52, baseType: !438, size: 64, offset: 1088)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3736, file: !3737, line: 53, baseType: !182, size: 32, offset: 1152)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3736, file: !3737, line: 54, baseType: !182, size: 32, offset: 1184)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3736, file: !3737, line: 55, baseType: !438, size: 64, offset: 1216)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !396, file: !20, line: 1990, baseType: !3761, size: 64, offset: 960)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!320, !402, !288, !334}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !396, file: !20, line: 1991, baseType: !3765, size: 64, offset: 1024)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!115, !367, !3768, !438, !438}
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !396, file: !20, line: 1993, baseType: !3771, size: 64, offset: 1088)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!115, !367, !115}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !396, file: !20, line: 1994, baseType: !3775, size: 64, offset: 1152)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!115, !367, !402, !1718, !13, !329}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !396, file: !20, line: 1997, baseType: !3779, size: 64, offset: 1216)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!115, !3614, !367, !1718, !329}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !396, file: !20, line: 1999, baseType: !3783, size: 64, offset: 1280)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!390, !3614, !402, !115}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !396, file: !20, line: 2001, baseType: !3787, size: 64, offset: 1344)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!115, !3614, !402, !390, !115}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !396, file: !20, line: 2003, baseType: !3791, size: 64, offset: 1408)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!115, !3614, !402, !3794}
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !396, file: !20, line: 2005, baseType: !3797, size: 64, offset: 1472)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!115, !402, !3794}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !396, file: !20, line: 2006, baseType: !3801, size: 64, offset: 1536)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!3804, !367}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3806)
!3806 = !{!3807, !3808}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3805, file: !20, line: 3193, baseType: !2075, size: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3805, file: !20, line: 3194, baseType: !182, size: 32, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !368, file: !20, line: 655, baseType: !516, size: 64, offset: 448)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !368, file: !20, line: 656, baseType: !363, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !368, file: !20, line: 659, baseType: !184, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !368, file: !20, line: 663, baseType: !337, size: 64, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !20, line: 671, baseType: !3814, size: 32, offset: 704)
!3814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !20, line: 671, size: 32, elements: !3815)
!3815 = !{!3816, !3818}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3814, file: !20, line: 672, baseType: !3817, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3814, file: !20, line: 673, baseType: !13, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !368, file: !20, line: 675, baseType: !521, size: 32, offset: 736)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !368, file: !20, line: 676, baseType: !526, size: 64, offset: 768)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !368, file: !20, line: 677, baseType: !3724, size: 128, offset: 832)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !368, file: !20, line: 678, baseType: !3724, size: 128, offset: 960)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !368, file: !20, line: 679, baseType: !3724, size: 128, offset: 1088)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !368, file: !20, line: 680, baseType: !220, size: 32, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !368, file: !20, line: 681, baseType: !258, size: 16, offset: 1248)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !368, file: !20, line: 682, baseType: !248, size: 8, offset: 1264)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !368, file: !20, line: 683, baseType: !248, size: 8, offset: 1272)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !368, file: !20, line: 684, baseType: !1276, size: 64, offset: 1280)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !368, file: !20, line: 691, baseType: !337, size: 64, offset: 1344)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !368, file: !20, line: 692, baseType: !1288, size: 320, offset: 1408)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !368, file: !20, line: 694, baseType: !337, size: 64, offset: 1728)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !368, file: !20, line: 695, baseType: !337, size: 64, offset: 1792)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !368, file: !20, line: 697, baseType: !872, size: 128, offset: 1856)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !368, file: !20, line: 698, baseType: !206, size: 128, offset: 1984)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !368, file: !20, line: 707, baseType: !206, size: 128, offset: 2112)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !368, file: !20, line: 708, baseType: !206, size: 128, offset: 2240)
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !20, line: 709, baseType: !3838, size: 128, offset: 2368)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !20, line: 709, size: 128, elements: !3839)
!3839 = !{!3840, !3841}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3838, file: !20, line: 710, baseType: !996, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3838, file: !20, line: 711, baseType: !846, size: 128, align: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !368, file: !20, line: 713, baseType: !632, size: 64, offset: 2496)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !368, file: !20, line: 714, baseType: !632, size: 64, offset: 2560)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !368, file: !20, line: 715, baseType: !240, size: 32, offset: 2624)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !368, file: !20, line: 716, baseType: !240, size: 32, offset: 2656)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !368, file: !20, line: 717, baseType: !240, size: 32, offset: 2688)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !368, file: !20, line: 719, baseType: !240, size: 32, offset: 2720)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !20, line: 721, baseType: !3849, size: 64, offset: 2752)
!3849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !20, line: 721, size: 64, elements: !3850)
!3850 = !{!3851, !3852}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3849, file: !20, line: 722, baseType: !1986, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3849, file: !20, line: 723, baseType: !1019, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !368, file: !20, line: 725, baseType: !3854, size: 64, offset: 2816)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !368, file: !20, line: 726, baseType: !364, size: 1536, align: 64, offset: 2880)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !368, file: !20, line: 727, baseType: !206, size: 128, offset: 4416)
!3858 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !20, line: 728, baseType: !3859, size: 64, offset: 4544)
!3859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !20, line: 728, size: 64, elements: !3860)
!3860 = !{!3861, !3862, !3865, !3866}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3859, file: !20, line: 729, baseType: !2455, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3859, file: !20, line: 730, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3859, file: !20, line: 731, baseType: !288, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3859, file: !20, line: 732, baseType: !13, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !368, file: !20, line: 735, baseType: !180, size: 32, offset: 4608)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !368, file: !20, line: 738, baseType: !180, size: 32, offset: 4640)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !368, file: !20, line: 739, baseType: !3551, size: 64, offset: 4672)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !368, file: !20, line: 750, baseType: !184, size: 64, offset: 4736)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !364, file: !20, line: 474, baseType: !2075, size: 128, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !364, file: !20, line: 475, baseType: !1288, size: 320, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !364, file: !20, line: 476, baseType: !1140, size: 32, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !364, file: !20, line: 477, baseType: !240, size: 32, offset: 544)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !364, file: !20, line: 482, baseType: !1574, size: 128, offset: 576)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !364, file: !20, line: 483, baseType: !337, size: 64, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !364, file: !20, line: 484, baseType: !337, size: 64, offset: 768)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !364, file: !20, line: 485, baseType: !3879, size: 64, offset: 832)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3881)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !3882)
!3882 = !{!3883, !3887, !3957, !3961, !3965, !3971, !3975, !3979, !3984, !3988, !3992, !3996, !3997, !4001, !4005, !4009, !4014, !4018, !4025, !4026}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3881, file: !20, line: 405, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!115, !2242, !1031}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3881, file: !20, line: 406, baseType: !3888, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!115, !1718, !3891}
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !3893)
!3893 = !{!3894, !3924, !3938}
!3894 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !44, line: 295, baseType: !3895, size: 512)
!3895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !44, line: 295, size: 512, elements: !3896)
!3896 = !{!3897, !3923}
!3897 = !DIDerivedType(tag: DW_TAG_member, scope: !3895, file: !44, line: 296, baseType: !3898, size: 448)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3895, file: !44, line: 296, size: 448, elements: !3899)
!3899 = !{!3900, !3901, !3910, !3911, !3912, !3921, !3922}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3898, file: !44, line: 298, baseType: !337, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !3898, file: !44, line: 299, baseType: !3902, size: 128, offset: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3898, file: !44, line: 299, size: 128, elements: !3903)
!3903 = !{!3904, !3905}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3902, file: !44, line: 300, baseType: !206, size: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, scope: !3902, file: !44, line: 302, baseType: !3906, size: 128)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3902, file: !44, line: 302, size: 128, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3906, file: !44, line: 303, baseType: !184, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3906, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3898, file: !44, line: 310, baseType: !363, size: 64, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3898, file: !44, line: 311, baseType: !337, size: 64, offset: 256)
!3912 = !DIDerivedType(tag: DW_TAG_member, scope: !3898, file: !44, line: 312, baseType: !3913, size: 64, offset: 320)
!3913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3898, file: !44, line: 312, size: 64, elements: !3914)
!3914 = !{!3915, !3916}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3913, file: !44, line: 313, baseType: !184, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3913, file: !44, line: 314, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !3918)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !3919)
!3919 = !{!3920}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3918, file: !44, line: 256, baseType: !337, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3898, file: !44, line: 316, baseType: !240, size: 32, offset: 384)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3898, file: !44, line: 317, baseType: !240, size: 32, offset: 416)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3895, file: !44, line: 323, baseType: !2243, size: 512, align: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !44, line: 325, baseType: !3925, size: 512, offset: 512)
!3925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !44, line: 325, size: 512, elements: !3926)
!3926 = !{!3927, !3937}
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !44, line: 326, baseType: !3928, size: 320)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3925, file: !44, line: 326, size: 320, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3928, file: !44, line: 327, baseType: !337, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3928, file: !44, line: 328, baseType: !337, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3928, file: !44, line: 329, baseType: !337, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3928, file: !44, line: 331, baseType: !240, size: 32, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3928, file: !44, line: 332, baseType: !240, size: 32, offset: 224)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3928, file: !44, line: 333, baseType: !240, size: 32, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3928, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3925, file: !44, line: 339, baseType: !2243, size: 512, align: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !44, line: 341, baseType: !3939, size: 512, offset: 1024)
!3939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !44, line: 341, size: 512, elements: !3940)
!3940 = !{!3941, !3950, !3956}
!3941 = !DIDerivedType(tag: DW_TAG_member, scope: !3939, file: !44, line: 342, baseType: !3942, size: 384)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3939, file: !44, line: 342, size: 384, elements: !3943)
!3943 = !{!3944, !3945, !3946, !3947, !3948, !3949}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3942, file: !44, line: 343, baseType: !337, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3942, file: !44, line: 344, baseType: !337, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3942, file: !44, line: 346, baseType: !184, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3942, file: !44, line: 347, baseType: !184, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3942, file: !44, line: 348, baseType: !184, size: 64, offset: 256)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3942, file: !44, line: 349, baseType: !184, size: 64, offset: 320)
!3950 = !DIDerivedType(tag: DW_TAG_member, scope: !3939, file: !44, line: 352, baseType: !3951, size: 256)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3939, file: !44, line: 352, size: 256, elements: !3952)
!3952 = !{!3953, !3954, !3955}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3951, file: !44, line: 353, baseType: !337, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3951, file: !44, line: 354, baseType: !337, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3951, file: !44, line: 356, baseType: !206, size: 128, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3939, file: !44, line: 359, baseType: !2243, size: 512, align: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3881, file: !20, line: 409, baseType: !3958, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!115, !363, !1031}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3881, file: !20, line: 412, baseType: !3962, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!706, !363, !3891}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3881, file: !20, line: 414, baseType: !3966, size: 64, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3881, file: !20, line: 416, baseType: !3972, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!115, !1718, !363, !526, !13, !3300, !2470}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3881, file: !20, line: 419, baseType: !3976, size: 64, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!115, !1718, !363, !526, !13, !13, !2242, !184}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3881, file: !20, line: 424, baseType: !3980, size: 64, offset: 448)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!3983, !363, !3983}
!3983 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !207, line: 131, baseType: !438)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3881, file: !20, line: 425, baseType: !3985, size: 64, offset: 512)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{null, !3891, !334, !334}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3881, file: !20, line: 426, baseType: !3989, size: 64, offset: 576)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!706, !3891, !1140}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3881, file: !20, line: 427, baseType: !3993, size: 64, offset: 640)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3891}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3881, file: !20, line: 428, baseType: !2005, size: 64, offset: 704)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3881, file: !20, line: 433, baseType: !3998, size: 64, offset: 768)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!115, !363, !3891, !3891, !80}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3881, file: !20, line: 435, baseType: !4002, size: 64, offset: 832)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!115, !3891}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3881, file: !20, line: 436, baseType: !4006, size: 64, offset: 896)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!706, !3891, !334, !334}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3881, file: !20, line: 438, baseType: !4010, size: 64, offset: 960)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3891, !4013, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3881, file: !20, line: 439, baseType: !4015, size: 64, offset: 1024)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!115, !363, !2242}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3881, file: !20, line: 442, baseType: !4019, size: 64, offset: 1088)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!115, !4022, !1718, !4024}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3881, file: !20, line: 444, baseType: !2462, size: 64, offset: 1152)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3881, file: !20, line: 445, baseType: !4027, size: 64, offset: 1216)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!115, !2008, !2030}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !20, line: 486, baseType: !337, size: 64, offset: 896)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !364, file: !20, line: 487, baseType: !1288, size: 320, offset: 960)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !364, file: !20, line: 488, baseType: !2505, size: 32, offset: 1280)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !364, file: !20, line: 489, baseType: !220, size: 32, offset: 1312)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !364, file: !20, line: 490, baseType: !206, size: 128, offset: 1344)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !364, file: !20, line: 491, baseType: !184, size: 64, offset: 1472)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !354, file: !314, line: 180, baseType: !4037, size: 64, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!320, !1718, !213, !353, !288, !526, !334}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !354, file: !314, line: 182, baseType: !4037, size: 64, offset: 384)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !354, file: !314, line: 184, baseType: !4042, size: 64, offset: 448)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!115, !1718, !213, !353, !2133}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !342, file: !314, line: 90, baseType: !4046, size: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !342, file: !314, line: 91, baseType: !4048, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !304, file: !200, line: 120, baseType: !4050, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!4053, !271}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4055)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !4056)
!4056 = !{!4057, !4058, !4062, !4066, !4072, !4076}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4055, file: !88, line: 40, baseType: !87, size: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4055, file: !88, line: 41, baseType: !4059, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!706}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4055, file: !88, line: 42, baseType: !4063, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!184}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4055, file: !88, line: 43, baseType: !4067, size: 64, offset: 192)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!2594, !4070}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4055, file: !88, line: 44, baseType: !4073, size: 64, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!2594}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4055, file: !88, line: 45, baseType: !669, size: 64, offset: 320)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !304, file: !200, line: 121, baseType: !4078, size: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!2594, !271}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !304, file: !200, line: 122, baseType: !4082, size: 64, offset: 320)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !271, !4085, !4086}
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !199, file: !200, line: 70, baseType: !4088, size: 64, offset: 384)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !541, line: 190, size: 1152, elements: !4090)
!4090 = !{!4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4182, !4183, !4184, !4185, !4186, !4189}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4089, file: !541, line: 191, baseType: !240, size: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4089, file: !541, line: 192, baseType: !240, size: 32, offset: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4089, file: !541, line: 202, baseType: !4088, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4089, file: !541, line: 203, baseType: !203, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4089, file: !541, line: 205, baseType: !738, size: 192, align: 64, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4089, file: !541, line: 207, baseType: !2594, size: 64, offset: 384)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4089, file: !541, line: 208, baseType: !13, size: 32, offset: 448)
!4098 = !DIDerivedType(tag: DW_TAG_member, scope: !4089, file: !541, line: 209, baseType: !4099, size: 256, offset: 512)
!4099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4089, file: !541, line: 209, size: 256, elements: !4100)
!4100 = !{!4101, !4110, !4114}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4099, file: !541, line: 210, baseType: !4102, size: 256)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !541, line: 153, size: 256, elements: !4103)
!4103 = !{!4104, !4105, !4106, !4109}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4102, file: !541, line: 154, baseType: !337, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4102, file: !541, line: 156, baseType: !1577, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4102, file: !541, line: 162, baseType: !4107, size: 64, offset: 128)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !541, line: 162, flags: DIFlagFwdDecl)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4102, file: !541, line: 167, baseType: !337, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4099, file: !541, line: 211, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !541, line: 170, size: 64, elements: !4112)
!4112 = !{!4113}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4111, file: !541, line: 171, baseType: !4088, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4099, file: !541, line: 212, baseType: !4115, size: 256)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !541, line: 174, size: 256, elements: !4116)
!4116 = !{!4117, !4177, !4180, !4181}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4115, file: !541, line: 175, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !541, line: 271, size: 768, elements: !4121)
!4121 = !{!4122, !4142, !4146, !4150, !4154, !4158, !4162, !4166, !4167, !4168, !4169, !4173}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4120, file: !541, line: 276, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!115, !4126}
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !541, line: 251, size: 1216, elements: !4128)
!4128 = !{!4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4127, file: !541, line: 253, baseType: !4088, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4127, file: !541, line: 254, baseType: !1718, size: 64, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4127, file: !541, line: 255, baseType: !1068, size: 64, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4127, file: !541, line: 256, baseType: !184, size: 64, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4127, file: !541, line: 259, baseType: !626, size: 256, offset: 256)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4127, file: !541, line: 260, baseType: !626, size: 256, offset: 512)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4127, file: !541, line: 261, baseType: !115, size: 32, offset: 768)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4127, file: !541, line: 262, baseType: !206, size: 128, offset: 832)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4127, file: !541, line: 263, baseType: !288, size: 64, offset: 960)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4127, file: !541, line: 265, baseType: !334, size: 64, offset: 1024)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4127, file: !541, line: 266, baseType: !706, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4127, file: !541, line: 267, baseType: !706, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4127, file: !541, line: 268, baseType: !2178, size: 64, offset: 1152)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4120, file: !541, line: 277, baseType: !4143, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{null, !4126}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4120, file: !541, line: 290, baseType: !4147, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!115, !1068, !184}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4120, file: !541, line: 292, baseType: !4151, size: 64, offset: 192)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!184, !1068, !1999}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4120, file: !541, line: 293, baseType: !4155, size: 64, offset: 256)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!184, !1068, !184, !1999}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4120, file: !541, line: 294, baseType: !4159, size: 64, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !1068, !184}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4120, file: !541, line: 296, baseType: !4163, size: 64, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!320, !4126, !288, !334, !526}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4120, file: !541, line: 306, baseType: !334, size: 64, offset: 448)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4120, file: !541, line: 313, baseType: !706, size: 8, offset: 512)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4120, file: !541, line: 314, baseType: !4163, size: 64, offset: 576)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4120, file: !541, line: 317, baseType: !4170, size: 64, offset: 640)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!2112, !4126, !2113}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4120, file: !541, line: 320, baseType: !4174, size: 64, offset: 704)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!115, !4126, !2133}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4115, file: !541, line: 176, baseType: !4178, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !541, line: 35, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4115, file: !541, line: 177, baseType: !526, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4115, file: !541, line: 178, baseType: !4088, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4089, file: !541, line: 215, baseType: !184, size: 64, offset: 768)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4089, file: !541, line: 221, baseType: !438, size: 64, offset: 832)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4089, file: !541, line: 223, baseType: !258, size: 16, offset: 896)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4089, file: !541, line: 224, baseType: !329, size: 16, offset: 912)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4089, file: !541, line: 225, baseType: !4187, size: 64, offset: 960)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !541, line: 36, flags: DIFlagFwdDecl)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4089, file: !541, line: 227, baseType: !846, size: 128, align: 64, offset: 1024)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !199, file: !200, line: 71, baseType: !4191, size: 32, offset: 448)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4192, line: 19, size: 32, elements: !4193)
!4192 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4193 = !{!4194}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4191, file: !4192, line: 20, baseType: !1408, size: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !199, file: !200, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !199, file: !200, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !199, file: !200, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !199, file: !200, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !199, file: !200, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !100, line: 707, baseType: !195, size: 64, offset: 512)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !196, file: !100, line: 709, baseType: !4202, size: 64, offset: 576)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !196, file: !100, line: 711, baseType: !203, size: 64, offset: 640)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !196, file: !100, line: 712, baseType: !4206, size: 64, offset: 704)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4208)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4209)
!4209 = !{!4210, !4211, !4212, !4218, !4223, !4227}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4208, file: !100, line: 90, baseType: !203, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4208, file: !100, line: 91, baseType: !339, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4208, file: !100, line: 92, baseType: !4213, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!115, !4216, !283}
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4208, file: !100, line: 93, baseType: !4219, size: 64, offset: 192)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!288, !4216, !4222, !4085, !4086}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4208, file: !100, line: 95, baseType: !4224, size: 64, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{null, !195}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4208, file: !100, line: 97, baseType: !4228, size: 64, offset: 320)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4230)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4231)
!4231 = !{!4232, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4230, file: !107, line: 287, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!115, !195}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4230, file: !107, line: 288, baseType: !4224, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4230, file: !107, line: 289, baseType: !4233, size: 64, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4230, file: !107, line: 290, baseType: !4233, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4230, file: !107, line: 291, baseType: !4233, size: 64, offset: 256)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4230, file: !107, line: 292, baseType: !4233, size: 64, offset: 320)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4230, file: !107, line: 293, baseType: !4233, size: 64, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4230, file: !107, line: 294, baseType: !4233, size: 64, offset: 448)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4230, file: !107, line: 295, baseType: !4233, size: 64, offset: 512)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4230, file: !107, line: 296, baseType: !4233, size: 64, offset: 576)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4230, file: !107, line: 297, baseType: !4233, size: 64, offset: 640)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4230, file: !107, line: 298, baseType: !4233, size: 64, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4230, file: !107, line: 299, baseType: !4233, size: 64, offset: 768)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4230, file: !107, line: 300, baseType: !4233, size: 64, offset: 832)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4230, file: !107, line: 301, baseType: !4233, size: 64, offset: 896)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4230, file: !107, line: 302, baseType: !4233, size: 64, offset: 960)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4230, file: !107, line: 303, baseType: !4233, size: 64, offset: 1024)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4230, file: !107, line: 304, baseType: !4233, size: 64, offset: 1088)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4230, file: !107, line: 305, baseType: !4233, size: 64, offset: 1152)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4230, file: !107, line: 306, baseType: !4233, size: 64, offset: 1216)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4230, file: !107, line: 307, baseType: !4233, size: 64, offset: 1280)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4230, file: !107, line: 308, baseType: !4233, size: 64, offset: 1344)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4230, file: !107, line: 309, baseType: !4233, size: 64, offset: 1408)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !196, file: !100, line: 714, baseType: !4259, size: 64, offset: 768)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4261)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4262, line: 80, size: 1344, elements: !4263)
!4262 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4342}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4261, file: !4262, line: 81, baseType: !203, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4261, file: !4262, line: 82, baseType: !203, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4261, file: !4262, line: 83, baseType: !339, size: 64, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4261, file: !4262, line: 84, baseType: !339, size: 64, offset: 192)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4261, file: !4262, line: 85, baseType: !339, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4261, file: !4262, line: 87, baseType: !4270, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!115, !195, !4273}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281, !4282, !4295, !4305, !4306, !4307, !4308, !4309, !4317, !4318, !4319, !4320, !4321, !4322}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4274, file: !94, line: 97, baseType: !203, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4274, file: !94, line: 98, baseType: !4259, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4274, file: !94, line: 100, baseType: !555, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4274, file: !94, line: 101, baseType: !203, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4274, file: !94, line: 103, baseType: !706, size: 8, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4274, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4274, file: !94, line: 106, baseType: !4283, size: 64, offset: 320)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4286, line: 282, size: 1600, elements: !4287)
!4286 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4287 = !{!4288, !4289, !4290, !4294}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4285, file: !4286, line: 283, baseType: !3554, size: 256)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4285, file: !4286, line: 284, baseType: !3554, size: 256, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4285, file: !4286, line: 285, baseType: !4291, size: 1024, offset: 512)
!4291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4292)
!4292 = !{!4293}
!4293 = !DISubrange(count: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4285, file: !4286, line: 286, baseType: !2594, size: 64, offset: 1536)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4274, file: !94, line: 107, baseType: !4296, size: 64, offset: 384)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4298)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4286, line: 217, size: 256, elements: !4299)
!4299 = !{!4300, !4301, !4303, !4304}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4298, file: !4286, line: 218, baseType: !3561, size: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4298, file: !4286, line: 219, baseType: !4302, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4286, line: 15, baseType: !337)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4298, file: !4286, line: 220, baseType: !180, size: 32, offset: 192)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4298, file: !4286, line: 221, baseType: !180, size: 32, offset: 224)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4274, file: !94, line: 109, baseType: !4233, size: 64, offset: 448)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4274, file: !94, line: 110, baseType: !4224, size: 64, offset: 512)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4274, file: !94, line: 111, baseType: !4233, size: 64, offset: 576)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4274, file: !94, line: 112, baseType: !4224, size: 64, offset: 640)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4274, file: !94, line: 113, baseType: !4310, size: 64, offset: 704)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!115, !195, !4313}
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4315)
!4315 = !{!4316}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4314, file: !107, line: 59, baseType: !115, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4274, file: !94, line: 114, baseType: !4233, size: 64, offset: 768)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4274, file: !94, line: 115, baseType: !339, size: 64, offset: 832)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4274, file: !94, line: 116, baseType: !339, size: 64, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4274, file: !94, line: 118, baseType: !4228, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4274, file: !94, line: 119, baseType: !4224, size: 64, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4274, file: !94, line: 121, baseType: !4323, size: 64, offset: 1088)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4261, file: !4262, line: 88, baseType: !4213, size: 64, offset: 384)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4261, file: !4262, line: 89, baseType: !4233, size: 64, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4261, file: !4262, line: 90, baseType: !4224, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4261, file: !4262, line: 91, baseType: !4224, size: 64, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4261, file: !4262, line: 92, baseType: !4224, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4261, file: !4262, line: 94, baseType: !4233, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4261, file: !4262, line: 95, baseType: !4233, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4261, file: !4262, line: 97, baseType: !4310, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4261, file: !4262, line: 98, baseType: !4233, size: 64, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4261, file: !4262, line: 100, baseType: !4233, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4261, file: !4262, line: 102, baseType: !4233, size: 64, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4261, file: !4262, line: 103, baseType: !4224, size: 64, offset: 1088)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4261, file: !4262, line: 105, baseType: !4228, size: 64, offset: 1152)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4261, file: !4262, line: 107, baseType: !4339, size: 64, offset: 1216)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4341)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4262, line: 107, flags: DIFlagFwdDecl)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4261, file: !4262, line: 109, baseType: !706, size: 8, offset: 1280)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !196, file: !100, line: 715, baseType: !4273, size: 64, offset: 832)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !196, file: !100, line: 717, baseType: !184, size: 64, offset: 896)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !196, file: !100, line: 719, baseType: !184, size: 64, offset: 960)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !196, file: !100, line: 721, baseType: !626, size: 256, offset: 1024)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !196, file: !100, line: 725, baseType: !4348, size: 448, offset: 1280)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4349)
!4349 = !{!4350, !4351, !4352, !4353}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4348, file: !100, line: 518, baseType: !206, size: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4348, file: !100, line: 519, baseType: !206, size: 128, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4348, file: !100, line: 520, baseType: !206, size: 128, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4348, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !196, file: !100, line: 726, baseType: !4355, size: 2496, offset: 1728)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4439, !4443}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4355, file: !107, line: 664, baseType: !4313, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4355, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4355, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4355, file: !107, line: 667, baseType: !706, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4355, file: !107, line: 668, baseType: !706, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4355, file: !107, line: 669, baseType: !706, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4355, file: !107, line: 670, baseType: !706, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4355, file: !107, line: 671, baseType: !706, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4355, file: !107, line: 672, baseType: !706, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4355, file: !107, line: 673, baseType: !706, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4355, file: !107, line: 674, baseType: !706, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4355, file: !107, line: 675, baseType: !182, size: 32, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4355, file: !107, line: 676, baseType: !220, size: 32, offset: 96)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4355, file: !107, line: 678, baseType: !206, size: 128, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4355, file: !107, line: 679, baseType: !575, size: 256, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4355, file: !107, line: 680, baseType: !4373, size: 64, offset: 512)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4375, line: 43, size: 1536, elements: !4376)
!4375 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4376 = !{!4377, !4378, !4379, !4380, !4381, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4374, file: !4375, line: 44, baseType: !203, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4374, file: !4375, line: 45, baseType: !115, size: 32, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4374, file: !4375, line: 46, baseType: !206, size: 128, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4374, file: !4375, line: 47, baseType: !220, size: 32, offset: 256)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4374, file: !4375, line: 48, baseType: !4382, size: 64, offset: 320)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4374, file: !4375, line: 49, baseType: !868, size: 320, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4374, file: !4375, line: 50, baseType: !337, size: 64, offset: 704)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4374, file: !4375, line: 51, baseType: !1523, size: 64, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4374, file: !4375, line: 52, baseType: !1523, size: 64, offset: 832)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4374, file: !4375, line: 53, baseType: !1523, size: 64, offset: 896)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4374, file: !4375, line: 54, baseType: !1523, size: 64, offset: 960)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4374, file: !4375, line: 55, baseType: !1523, size: 64, offset: 1024)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4374, file: !4375, line: 56, baseType: !337, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4374, file: !4375, line: 57, baseType: !337, size: 64, offset: 1152)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4374, file: !4375, line: 58, baseType: !337, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4374, file: !4375, line: 59, baseType: !337, size: 64, offset: 1280)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4374, file: !4375, line: 60, baseType: !337, size: 64, offset: 1344)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4374, file: !4375, line: 61, baseType: !195, size: 64, offset: 1408)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4374, file: !4375, line: 62, baseType: !706, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4374, file: !4375, line: 63, baseType: !706, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4355, file: !107, line: 681, baseType: !706, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4355, file: !107, line: 682, baseType: !706, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4355, file: !107, line: 683, baseType: !706, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4355, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4355, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4355, file: !107, line: 690, baseType: !1515, size: 512, offset: 640)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4355, file: !107, line: 691, baseType: !438, size: 64, offset: 1152)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4355, file: !107, line: 692, baseType: !886, size: 256, offset: 1216)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4355, file: !107, line: 693, baseType: !1381, size: 192, offset: 1472)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4355, file: !107, line: 694, baseType: !4382, size: 64, offset: 1664)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4355, file: !107, line: 695, baseType: !240, size: 32, offset: 1728)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4355, file: !107, line: 696, baseType: !240, size: 32, offset: 1760)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4355, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4355, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4355, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4355, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4355, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4355, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4355, file: !107, line: 703, baseType: !706, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4355, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4355, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4355, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4355, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4355, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4355, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4355, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4355, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4355, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4355, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4355, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4355, file: !107, line: 715, baseType: !438, size: 64, offset: 2048)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4355, file: !107, line: 716, baseType: !438, size: 64, offset: 2112)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4355, file: !107, line: 717, baseType: !438, size: 64, offset: 2176)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4355, file: !107, line: 718, baseType: !438, size: 64, offset: 2240)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4355, file: !107, line: 720, baseType: !4434, size: 64, offset: 2304)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4436)
!4436 = !{!4437, !4438}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4435, file: !107, line: 633, baseType: !220, size: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4435, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4355, file: !107, line: 721, baseType: !4440, size: 64, offset: 2368)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !195, !622}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4355, file: !107, line: 722, baseType: !4444, size: 64, offset: 2432)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !123, line: 117, size: 2432, elements: !4446)
!4446 = !{!4447, !4475, !4476, !4483, !4488, !4510, !4511}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4445, file: !123, line: 118, baseType: !4448, size: 320)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !123, line: 52, size: 320, elements: !4449)
!4449 = !{!4450, !4454, !4455, !4456, !4457, !4458}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4448, file: !123, line: 53, baseType: !4451, size: 128)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1684, line: 82, size: 128, elements: !4452)
!4452 = !{!4453}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4451, file: !1684, line: 83, baseType: !206, size: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4448, file: !123, line: 54, baseType: !622, size: 32, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4448, file: !123, line: 55, baseType: !622, size: 32, offset: 160)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4448, file: !123, line: 56, baseType: !622, size: 32, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4448, file: !123, line: 57, baseType: !122, size: 32, offset: 224)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4448, file: !123, line: 58, baseType: !4459, size: 64, offset: 256)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4461, line: 65, size: 384, elements: !4462)
!4461 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4462 = !{!4463, !4464}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4460, file: !4461, line: 66, baseType: !1288, size: 320)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4460, file: !4461, line: 67, baseType: !4465, size: 64, offset: 320)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4461, line: 54, size: 192, elements: !4467)
!4467 = !{!4468, !4473, !4474}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4466, file: !4461, line: 55, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4461, line: 51, baseType: !4470)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!115, !4465, !337, !184}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4466, file: !4461, line: 56, baseType: !4465, size: 64, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4466, file: !4461, line: 57, baseType: !115, size: 32, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4445, file: !123, line: 119, baseType: !4448, size: 320, offset: 320)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4445, file: !123, line: 120, baseType: !4477, size: 1408, offset: 640)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !123, line: 85, size: 1408, elements: !4478)
!4478 = !{!4479, !4480, !4481, !4482}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4477, file: !123, line: 86, baseType: !4448, size: 320)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4477, file: !123, line: 87, baseType: !4460, size: 384, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4477, file: !123, line: 88, baseType: !4448, size: 320, offset: 704)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4477, file: !123, line: 89, baseType: !4460, size: 384, offset: 1024)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4445, file: !123, line: 121, baseType: !4484, size: 192, offset: 2048)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !123, line: 71, size: 192, elements: !4485)
!4485 = !{!4486, !4487}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4484, file: !123, line: 72, baseType: !206, size: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4484, file: !123, line: 73, baseType: !622, size: 32, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4445, file: !123, line: 122, baseType: !4489, size: 64, offset: 2240)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !123, line: 107, size: 576, elements: !4491)
!4491 = !{!4492, !4493, !4509}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4490, file: !123, line: 108, baseType: !128, size: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4490, file: !123, line: 113, baseType: !4494, size: 448, offset: 64)
!4494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4490, file: !123, line: 109, size: 448, elements: !4495)
!4495 = !{!4496, !4497, !4502}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4494, file: !123, line: 110, baseType: !1683, size: 320)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4494, file: !123, line: 111, baseType: !4498, size: 192)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !123, line: 66, size: 192, elements: !4499)
!4499 = !{!4500, !4501}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4498, file: !123, line: 67, baseType: !206, size: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4498, file: !123, line: 68, baseType: !622, size: 32, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4494, file: !123, line: 112, baseType: !4503, size: 448)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !123, line: 92, size: 448, elements: !4504)
!4504 = !{!4505, !4506, !4507}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4503, file: !123, line: 93, baseType: !135, size: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4503, file: !123, line: 94, baseType: !1683, size: 320, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4503, file: !123, line: 95, baseType: !4508, size: 64, offset: 384)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4490, file: !123, line: 114, baseType: !195, size: 64, offset: 512)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4445, file: !123, line: 123, baseType: !4489, size: 64, offset: 2304)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4445, file: !123, line: 124, baseType: !4489, size: 64, offset: 2368)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !196, file: !100, line: 727, baseType: !4513, size: 64, offset: 4224)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4515)
!4515 = !{!4516, !4517, !4518, !4522, !4523, !4524}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4514, file: !107, line: 743, baseType: !4230, size: 1472)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4514, file: !107, line: 744, baseType: !4233, size: 64, offset: 1472)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4514, file: !107, line: 745, baseType: !4519, size: 64, offset: 1536)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{null, !195, !706}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4514, file: !107, line: 746, baseType: !4233, size: 64, offset: 1600)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4514, file: !107, line: 747, baseType: !4224, size: 64, offset: 1664)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4514, file: !107, line: 748, baseType: !4224, size: 64, offset: 1728)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !196, file: !100, line: 736, baseType: !4526, size: 128, offset: 4288)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4527)
!4527 = !{!4528, !4532}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4526, file: !100, line: 531, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4531, line: 13, flags: DIFlagFwdDecl)
!4531 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4526, file: !100, line: 532, baseType: !4533, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !196, file: !100, line: 738, baseType: !4536, size: 64, offset: 4416)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4538)
!4538 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !196, file: !100, line: 740, baseType: !4540, size: 64, offset: 4480)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !196, file: !100, line: 741, baseType: !438, size: 64, offset: 4544)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !196, file: !100, line: 746, baseType: !438, size: 64, offset: 4608)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !196, file: !100, line: 747, baseType: !4544, size: 64, offset: 4672)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4546)
!4546 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !196, file: !100, line: 749, baseType: !4548, size: 64, offset: 4736)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4550)
!4550 = !{!4551, !4552, !4553}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4549, file: !100, line: 433, baseType: !13, size: 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4549, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4549, file: !100, line: 435, baseType: !337, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !196, file: !100, line: 751, baseType: !206, size: 128, offset: 4800)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !196, file: !100, line: 762, baseType: !4556, size: 64, offset: 4928)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !196, file: !100, line: 770, baseType: !4559, offset: 4992)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4560, line: 5, elements: !915)
!4560 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !196, file: !100, line: 772, baseType: !4562, size: 64, offset: 4992)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4564, line: 18, flags: DIFlagFwdDecl)
!4564 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !196, file: !100, line: 773, baseType: !4566, size: 64, offset: 5056)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4568, line: 41, size: 512, elements: !4569)
!4568 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4569 = !{!4570, !4571, !4665, !4666, !4667, !4668}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4567, file: !4568, line: 42, baseType: !4566, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4567, file: !4568, line: 43, baseType: !4572, size: 64, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4574)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4568, line: 125, size: 1408, elements: !4575)
!4575 = !{!4576, !4580, !4584, !4590, !4594, !4595, !4600, !4604, !4608, !4612, !4616, !4617, !4621, !4625, !4629, !4640, !4641, !4642, !4643, !4653, !4657, !4661}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4574, file: !4568, line: 126, baseType: !4577, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!4566, !4566}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4574, file: !4568, line: 127, baseType: !4581, size: 64, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{null, !4566}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4574, file: !4568, line: 128, baseType: !4585, size: 64, offset: 128)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!706, !4588}
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4567)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4574, file: !4568, line: 129, baseType: !4591, size: 64, offset: 192)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!2594, !4588, !4216}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4574, file: !4568, line: 131, baseType: !4585, size: 64, offset: 256)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4574, file: !4568, line: 133, baseType: !4596, size: 64, offset: 320)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!4599, !4588}
!4599 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4568, line: 132, flags: DIFlagFwdDecl)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4574, file: !4568, line: 134, baseType: !4601, size: 64, offset: 384)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!706, !4588, !203}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4574, file: !4568, line: 136, baseType: !4605, size: 64, offset: 448)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!115, !4588, !203, !13, !184, !334}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4574, file: !4568, line: 141, baseType: !4609, size: 64, offset: 512)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!115, !4588, !203, !963, !334}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4574, file: !4568, line: 144, baseType: !4613, size: 64, offset: 576)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!203, !4588}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4574, file: !4568, line: 145, baseType: !4613, size: 64, offset: 640)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4574, file: !4568, line: 146, baseType: !4618, size: 64, offset: 704)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!4566, !4588}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4574, file: !4568, line: 148, baseType: !4622, size: 64, offset: 768)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!4566, !4588, !4566}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4574, file: !4568, line: 151, baseType: !4626, size: 64, offset: 832)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!4566, !4588, !203}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4574, file: !4568, line: 153, baseType: !4630, size: 64, offset: 896)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!115, !4588, !203, !203, !13, !13, !4633}
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4568, line: 94, size: 640, elements: !4635)
!4635 = !{!4636, !4637, !4638}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4634, file: !4568, line: 95, baseType: !4566, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4634, file: !4568, line: 96, baseType: !13, size: 32, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4634, file: !4568, line: 97, baseType: !4639, size: 512, offset: 128)
!4639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 512, elements: !1558)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4574, file: !4568, line: 158, baseType: !4622, size: 64, offset: 960)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4574, file: !4568, line: 161, baseType: !4618, size: 64, offset: 1024)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4574, file: !4568, line: 163, baseType: !4577, size: 64, offset: 1088)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4574, file: !4568, line: 164, baseType: !4644, size: 64, offset: 1152)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!115, !4588, !4647}
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4568, line: 73, size: 128, elements: !4649)
!4649 = !{!4650, !4651, !4652}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4648, file: !4568, line: 74, baseType: !13, size: 32)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4648, file: !4568, line: 75, baseType: !13, size: 32, offset: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4648, file: !4568, line: 76, baseType: !4588, size: 64, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4574, file: !4568, line: 166, baseType: !4654, size: 64, offset: 1216)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!184, !4566, !115}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4574, file: !4568, line: 167, baseType: !4658, size: 64, offset: 1280)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!115, !4588, !13}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4574, file: !4568, line: 168, baseType: !4662, size: 64, offset: 1344)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!115, !4566}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4567, file: !4568, line: 44, baseType: !195, size: 64, offset: 128)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4567, file: !4568, line: 45, baseType: !206, size: 128, offset: 192)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4567, file: !4568, line: 46, baseType: !206, size: 128, offset: 320)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4567, file: !4568, line: 47, baseType: !248, size: 8, offset: 448)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !196, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !196, file: !100, line: 778, baseType: !521, size: 32, offset: 5152)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !196, file: !100, line: 779, baseType: !182, size: 32, offset: 5184)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !196, file: !100, line: 781, baseType: !220, size: 32, offset: 5216)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !196, file: !100, line: 782, baseType: !206, size: 128, offset: 5248)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !196, file: !100, line: 784, baseType: !4675, size: 64, offset: 5376)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4677)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4678, line: 52, size: 768, elements: !4679)
!4678 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4679 = !{!4680, !4681, !4682, !4683, !4684, !4688, !4692, !4693, !4694, !4695, !4699, !4703}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4677, file: !4678, line: 53, baseType: !203, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4677, file: !4678, line: 55, baseType: !339, size: 64, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4677, file: !4678, line: 56, baseType: !339, size: 64, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4677, file: !4678, line: 58, baseType: !4213, size: 64, offset: 192)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4677, file: !4678, line: 59, baseType: !4685, size: 64, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!288, !4216, !4222}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4677, file: !4678, line: 61, baseType: !4689, size: 64, offset: 320)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{null, !4675}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4677, file: !4678, line: 62, baseType: !4224, size: 64, offset: 384)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4677, file: !4678, line: 64, baseType: !4233, size: 64, offset: 448)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4677, file: !4678, line: 66, baseType: !4053, size: 64, offset: 512)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4677, file: !4678, line: 67, baseType: !4696, size: 64, offset: 576)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!2594, !4216}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4677, file: !4678, line: 69, baseType: !4700, size: 64, offset: 640)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{null, !4216, !4085, !4086}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4677, file: !4678, line: 71, baseType: !4228, size: 64, offset: 704)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !196, file: !100, line: 785, baseType: !339, size: 64, offset: 5440)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !196, file: !100, line: 787, baseType: !4224, size: 64, offset: 5504)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !196, file: !100, line: 788, baseType: !4707, size: 64, offset: 5568)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !196, file: !100, line: 789, baseType: !4710, size: 64, offset: 5632)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !196, file: !100, line: 791, baseType: !4713, size: 64, offset: 5696)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4715)
!4715 = !{!4716, !4717, !4718, !4719, !4720}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4714, file: !100, line: 598, baseType: !139, size: 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4714, file: !100, line: 599, baseType: !148, size: 32, offset: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4714, file: !100, line: 600, baseType: !153, size: 32, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4714, file: !100, line: 601, baseType: !706, size: 8, offset: 96)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4714, file: !100, line: 602, baseType: !706, size: 8, offset: 104)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !196, file: !100, line: 793, baseType: !158, size: 32, offset: 5760)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !196, file: !100, line: 795, baseType: !706, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !196, file: !100, line: 796, baseType: !706, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !196, file: !100, line: 797, baseType: !706, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !196, file: !100, line: 798, baseType: !706, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !196, file: !100, line: 799, baseType: !706, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !192, file: !188, line: 292, baseType: !4728, size: 64, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4730)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus_ops", file: !188, line: 242, size: 192, elements: !4731)
!4731 = !{!4732, !4736, !4740}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4730, file: !188, line: 244, baseType: !4733, size: 64)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!115, !191, !13}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "get_response", scope: !4730, file: !188, line: 246, baseType: !4737, size: 64, offset: 64)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!115, !191, !13, !698}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "link_power", scope: !4730, file: !188, line: 249, baseType: !4741, size: 64, offset: 128)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{null, !4744, !706}
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_device", file: !188, line: 52, size: 7616, elements: !4746)
!4746 = !{!4747, !4748, !4749, !4750, !4751, !4752, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4769, !4770, !4771, !4772, !4773, !4774, !4777, !4780, !4781, !4789, !4790, !4791, !4792}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4745, file: !188, line: 53, baseType: !196, size: 5824)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4745, file: !188, line: 54, baseType: !115, size: 32, offset: 5824)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4745, file: !188, line: 55, baseType: !191, size: 64, offset: 5888)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4745, file: !188, line: 56, baseType: !13, size: 32, offset: 5952)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4745, file: !188, line: 57, baseType: !206, size: 128, offset: 6016)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "afg", scope: !4745, file: !188, line: 59, baseType: !4753, size: 16, offset: 6144)
!4753 = !DIDerivedType(tag: DW_TAG_typedef, name: "hda_nid_t", file: !188, line: 24, baseType: !256)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "mfg", scope: !4745, file: !188, line: 60, baseType: !4753, size: 16, offset: 6160)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !4745, file: !188, line: 63, baseType: !13, size: 32, offset: 6176)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_id", scope: !4745, file: !188, line: 64, baseType: !13, size: 32, offset: 6208)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !4745, file: !188, line: 65, baseType: !13, size: 32, offset: 6240)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "afg_function_id", scope: !4745, file: !188, line: 66, baseType: !13, size: 32, offset: 6272)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_function_id", scope: !4745, file: !188, line: 67, baseType: !13, size: 32, offset: 6304)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "afg_unsol", scope: !4745, file: !188, line: 68, baseType: !13, size: 1, offset: 6336, flags: DIFlagBitField, extraData: i64 6336)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_unsol", scope: !4745, file: !188, line: 69, baseType: !13, size: 1, offset: 6337, flags: DIFlagBitField, extraData: i64 6336)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "power_caps", scope: !4745, file: !188, line: 71, baseType: !13, size: 32, offset: 6368)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_name", scope: !4745, file: !188, line: 73, baseType: !203, size: 64, offset: 6400)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "chip_name", scope: !4745, file: !188, line: 74, baseType: !203, size: 64, offset: 6464)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "exec_verb", scope: !4745, file: !188, line: 77, baseType: !4766, size: 64, offset: 6528)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!115, !4744, !13, !13, !698}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !4745, file: !188, line: 81, baseType: !13, size: 32, offset: 6592)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "start_nid", scope: !4745, file: !188, line: 82, baseType: !4753, size: 16, offset: 6624)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "end_nid", scope: !4745, file: !188, line: 82, baseType: !4753, size: 16, offset: 6640)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "in_pm", scope: !4745, file: !188, line: 85, baseType: !240, size: 32, offset: 6656)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "widget_lock", scope: !4745, file: !188, line: 88, baseType: !626, size: 256, offset: 6720)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "widgets", scope: !4745, file: !188, line: 89, baseType: !4775, size: 64, offset: 6976)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_widget_tree", file: !188, line: 30, flags: DIFlagFwdDecl)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !4745, file: !188, line: 92, baseType: !4778, size: 64, offset: 7040)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !188, line: 92, flags: DIFlagFwdDecl)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "regmap_lock", scope: !4745, file: !188, line: 93, baseType: !626, size: 256, offset: 7104)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_verbs", scope: !4745, file: !188, line: 94, baseType: !4782, size: 192, offset: 7360)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_array", file: !188, line: 41, size: 192, elements: !4783)
!4783 = !{!4784, !4785, !4786, !4787, !4788}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4782, file: !188, line: 42, baseType: !13, size: 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !4782, file: !188, line: 43, baseType: !13, size: 32, offset: 32)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4782, file: !188, line: 44, baseType: !13, size: 32, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_align", scope: !4782, file: !188, line: 45, baseType: !13, size: 32, offset: 96)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4782, file: !188, line: 46, baseType: !184, size: 64, offset: 128)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "lazy_cache", scope: !4745, file: !188, line: 95, baseType: !706, size: 1, offset: 7552, flags: DIFlagBitField, extraData: i64 7552)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "caps_overwriting", scope: !4745, file: !188, line: 96, baseType: !706, size: 1, offset: 7553, flags: DIFlagBitField, extraData: i64 7552)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "cache_coef", scope: !4745, file: !188, line: 97, baseType: !706, size: 1, offset: 7554, flags: DIFlagBitField, extraData: i64 7552)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4745, file: !188, line: 98, baseType: !13, size: 1, offset: 7555, flags: DIFlagBitField, extraData: i64 7552)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ops", scope: !192, file: !188, line: 293, baseType: !4794, size: 64, offset: 128)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4796)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_ext_bus_ops", file: !188, line: 255, size: 128, elements: !4797)
!4797 = !{!4798, !4802}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_attach", scope: !4796, file: !188, line: 256, baseType: !4799, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!115, !4744}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_detach", scope: !4796, file: !188, line: 257, baseType: !4799, size: 64, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !192, file: !188, line: 296, baseType: !337, size: 64, offset: 192)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "remap_addr", scope: !192, file: !188, line: 297, baseType: !184, size: 64, offset: 256)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !192, file: !188, line: 298, baseType: !115, size: 32, offset: 320)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "ppcap", scope: !192, file: !188, line: 300, baseType: !184, size: 64, offset: 384)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "spbcap", scope: !192, file: !188, line: 301, baseType: !184, size: 64, offset: 448)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "mlcap", scope: !192, file: !188, line: 302, baseType: !184, size: 64, offset: 512)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "gtscap", scope: !192, file: !188, line: 303, baseType: !184, size: 64, offset: 576)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "drsmcap", scope: !192, file: !188, line: 304, baseType: !184, size: 64, offset: 640)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "codec_list", scope: !192, file: !188, line: 307, baseType: !206, size: 128, offset: 704)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "num_codecs", scope: !192, file: !188, line: 308, baseType: !13, size: 32, offset: 832)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "caddr_tbl", scope: !192, file: !188, line: 311, baseType: !4814, size: 1024, offset: 896)
!4814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4744, size: 1024, elements: !2777)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_queue", scope: !192, file: !188, line: 314, baseType: !4816, size: 4096, offset: 1920)
!4816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 4096, elements: !4292)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_rp", scope: !192, file: !188, line: 315, baseType: !13, size: 32, offset: 6016)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_wp", scope: !192, file: !188, line: 315, baseType: !13, size: 32, offset: 6048)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_work", scope: !192, file: !188, line: 316, baseType: !886, size: 256, offset: 6080)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "codec_mask", scope: !192, file: !188, line: 319, baseType: !337, size: 64, offset: 6336)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "codec_powered", scope: !192, file: !188, line: 322, baseType: !337, size: 64, offset: 6400)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "corb", scope: !192, file: !188, line: 325, baseType: !4823, size: 704, offset: 6464)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_rb", file: !188, line: 268, size: 704, elements: !4824)
!4824 = !{!4825, !4826, !4828, !4829, !4830, !4832}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4823, file: !188, line: 269, baseType: !177, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4823, file: !188, line: 270, baseType: !4827, size: 64, offset: 64)
!4827 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !207, line: 149, baseType: !438)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !4823, file: !188, line: 271, baseType: !258, size: 16, offset: 128)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4823, file: !188, line: 271, baseType: !258, size: 16, offset: 144)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !4823, file: !188, line: 272, baseType: !4831, size: 256, offset: 160)
!4831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !1558)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4823, file: !188, line: 273, baseType: !4833, size: 256, offset: 416)
!4833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !1558)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "rirb", scope: !192, file: !188, line: 326, baseType: !4823, size: 704, offset: 7168)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !192, file: !188, line: 327, baseType: !4836, size: 256, offset: 7872)
!4836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !1558)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "rirb_wq", scope: !192, file: !188, line: 328, baseType: !1381, size: 192, offset: 8128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !192, file: !188, line: 331, baseType: !4839, size: 448, offset: 8320)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_buffer", file: !4840, line: 60, size: 448, elements: !4841)
!4840 = !DIFile(filename: "./include/sound/memalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a311c7e83a04625a087234f49540c88")
!4841 = !{!4842, !4849, !4851, !4852, !4853}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4839, file: !4840, line: 61, baseType: !4843, size: 192)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_device", file: !4840, line: 22, size: 192, elements: !4844)
!4844 = !{!4845, !4846, !4847, !4848}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4843, file: !4840, line: 23, baseType: !115, size: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4843, file: !4840, line: 24, baseType: !164, size: 32, offset: 32)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "need_sync", scope: !4843, file: !4840, line: 25, baseType: !706, size: 8, offset: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4843, file: !4840, line: 26, baseType: !195, size: 64, offset: 128)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !4839, file: !4840, line: 62, baseType: !4850, size: 64, offset: 192)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4839, file: !4840, line: 63, baseType: !4827, size: 64, offset: 256)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4839, file: !4840, line: 64, baseType: !334, size: 64, offset: 320)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4839, file: !4840, line: 65, baseType: !184, size: 64, offset: 384)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "posbuf", scope: !192, file: !188, line: 332, baseType: !4839, size: 448, offset: 8768)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !192, file: !188, line: 333, baseType: !115, size: 32, offset: 9216)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "stream_list", scope: !192, file: !188, line: 336, baseType: !206, size: 128, offset: 9280)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "chip_init", scope: !192, file: !188, line: 339, baseType: !706, size: 1, offset: 9408, flags: DIFlagBitField, extraData: i64 9408)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_mmio", scope: !192, file: !188, line: 342, baseType: !706, size: 1, offset: 9409, flags: DIFlagBitField, extraData: i64 9408)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !192, file: !188, line: 343, baseType: !706, size: 1, offset: 9410, flags: DIFlagBitField, extraData: i64 9408)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "use_posbuf", scope: !192, file: !188, line: 344, baseType: !706, size: 1, offset: 9411, flags: DIFlagBitField, extraData: i64 9408)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "snoop", scope: !192, file: !188, line: 345, baseType: !706, size: 1, offset: 9412, flags: DIFlagBitField, extraData: i64 9408)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "align_bdle_4k", scope: !192, file: !188, line: 346, baseType: !706, size: 1, offset: 9413, flags: DIFlagBitField, extraData: i64 9408)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_assign", scope: !192, file: !188, line: 347, baseType: !706, size: 1, offset: 9414, flags: DIFlagBitField, extraData: i64 9408)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "corbrp_self_clear", scope: !192, file: !188, line: 348, baseType: !706, size: 1, offset: 9415, flags: DIFlagBitField, extraData: i64 9408)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "polling_mode", scope: !192, file: !188, line: 349, baseType: !706, size: 1, offset: 9416, flags: DIFlagBitField, extraData: i64 9408)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "needs_damn_long_delay", scope: !192, file: !188, line: 350, baseType: !706, size: 1, offset: 9417, flags: DIFlagBitField, extraData: i64 9408)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "not_use_interrupts", scope: !192, file: !188, line: 351, baseType: !706, size: 1, offset: 9418, flags: DIFlagBitField, extraData: i64 9408)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "access_sdnctl_in_dword", scope: !192, file: !188, line: 352, baseType: !706, size: 1, offset: 9419, flags: DIFlagBitField, extraData: i64 9408)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "poll_count", scope: !192, file: !188, line: 354, baseType: !115, size: 32, offset: 9440)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "bdl_pos_adj", scope: !192, file: !188, line: 356, baseType: !115, size: 32, offset: 9472)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_stop_delay", scope: !192, file: !188, line: 359, baseType: !13, size: 32, offset: 9504)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "reg_lock", scope: !192, file: !188, line: 362, baseType: !220, size: 32, offset: 9536)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !192, file: !188, line: 363, baseType: !626, size: 256, offset: 9600)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !192, file: !188, line: 364, baseType: !626, size: 256, offset: 9856)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "audio_component", scope: !192, file: !188, line: 367, baseType: !4876, size: 64, offset: 10112)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component", file: !4878, line: 110, size: 448, elements: !4879)
!4878 = !DIFile(filename: "./include/drm/drm_audio_component.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5876290eae632618019af7818f71dd5e")
!4879 = !{!4880, !4881, !4905, !4927}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4877, file: !4878, line: 114, baseType: !195, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4877, file: !4878, line: 118, baseType: !4882, size: 64, offset: 64)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4884)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_ops", file: !4878, line: 16, size: 448, elements: !4885)
!4885 = !{!4886, !4887, !4891, !4895, !4896, !4897, !4901}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4884, file: !4878, line: 20, baseType: !555, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "get_power", scope: !4884, file: !4878, line: 29, baseType: !4888, size: 64, offset: 64)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!337, !195}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "put_power", scope: !4884, file: !4878, line: 35, baseType: !4892, size: 64, offset: 128)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !195, !337}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "codec_wake_override", scope: !4884, file: !4878, line: 39, baseType: !4519, size: 64, offset: 192)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "get_cdclk_freq", scope: !4884, file: !4878, line: 43, baseType: !4233, size: 64, offset: 256)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "sync_audio_rate", scope: !4884, file: !4878, line: 50, baseType: !4898, size: 64, offset: 320)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!115, !195, !115, !115, !115}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "get_eld", scope: !4884, file: !4878, line: 63, baseType: !4902, size: 64, offset: 384)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!115, !195, !115, !115, !4013, !4850, !115}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ops", scope: !4877, file: !4878, line: 122, baseType: !4906, size: 64, offset: 128)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4908)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_audio_ops", file: !4878, line: 70, size: 320, elements: !4909)
!4909 = !{!4910, !4911, !4915, !4919, !4923}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ptr", scope: !4908, file: !4878, line: 74, baseType: !184, size: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "pin_eld_notify", scope: !4908, file: !4878, line: 83, baseType: !4912, size: 64, offset: 64)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{null, !184, !115, !115}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "pin2port", scope: !4908, file: !4878, line: 90, baseType: !4916, size: 64, offset: 128)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!115, !184, !115}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind", scope: !4908, file: !4878, line: 97, baseType: !4920, size: 64, offset: 192)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!115, !195, !4876}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "master_unbind", scope: !4908, file: !4878, line: 104, baseType: !4924, size: 64, offset: 256)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{null, !195, !4876}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind_complete", scope: !4877, file: !4878, line: 126, baseType: !575, size: 256, offset: 192)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_status", scope: !192, file: !188, line: 368, baseType: !185, size: 64, offset: 10176)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_active", scope: !192, file: !188, line: 369, baseType: !337, size: 64, offset: 10240)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "num_streams", scope: !192, file: !188, line: 372, baseType: !115, size: 32, offset: 10304)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !192, file: !188, line: 373, baseType: !115, size: 32, offset: 10336)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "hlink_list", scope: !192, file: !188, line: 376, baseType: !206, size: 128, offset: 10368)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_dma_state", scope: !192, file: !188, line: 377, baseType: !706, size: 8, offset: 10496)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "sdo_limit", scope: !192, file: !188, line: 380, baseType: !13, size: 32, offset: 10528)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "bdl", scope: !187, file: !188, line: 513, baseType: !4839, size: 448, offset: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "posbuf", scope: !187, file: !188, line: 514, baseType: !177, size: 64, offset: 512)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !187, file: !188, line: 515, baseType: !115, size: 32, offset: 576)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !187, file: !188, line: 517, baseType: !13, size: 32, offset: 608)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "period_bytes", scope: !187, file: !188, line: 518, baseType: !13, size: 32, offset: 640)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "frags", scope: !187, file: !188, line: 519, baseType: !13, size: 32, offset: 672)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_size", scope: !187, file: !188, line: 520, baseType: !13, size: 32, offset: 704)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "sd_addr", scope: !187, file: !188, line: 522, baseType: !184, size: 64, offset: 768)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "spib_addr", scope: !187, file: !188, line: 524, baseType: !184, size: 64, offset: 832)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_addr", scope: !187, file: !188, line: 525, baseType: !184, size: 64, offset: 896)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "dpibr_addr", scope: !187, file: !188, line: 527, baseType: !184, size: 64, offset: 960)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "dpib", scope: !187, file: !188, line: 528, baseType: !182, size: 32, offset: 1024)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "lpib", scope: !187, file: !188, line: 529, baseType: !182, size: 32, offset: 1056)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "sd_int_sta_mask", scope: !187, file: !188, line: 531, baseType: !182, size: 32, offset: 1088)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "substream", scope: !187, file: !188, line: 534, baseType: !4950, size: 64, offset: 1152)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_substream", file: !4952, line: 447, size: 2944, elements: !4953)
!4952 = !DIFile(filename: "./include/sound/pcm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02d4b94f1676d26c9d7732dfeb7c2922")
!4953 = !{!4954, !5052, !5054, !5055, !5056, !5057, !5058, !5064, !5065, !5066, !5067, !5169, !5315, !5318, !5319, !5320, !5321, !5322, !5329, !5331, !5332, !5333, !5334, !5338, !5339, !5340, !5341}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "pcm", scope: !4951, file: !4952, line: 448, baseType: !4955, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm", file: !4952, line: 514, size: 3008, elements: !4957)
!4957 = !{!4958, !5020, !5021, !5022, !5023, !5024, !5025, !5027, !5028, !5042, !5043, !5044, !5045, !5049, !5050, !5051}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4956, file: !4952, line: 515, baseType: !4959, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !4961, line: 80, size: 12288, elements: !4962)
!4961 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!4962 = !{!4963, !4964, !4965, !4966, !4967, !4971, !4972, !4973, !4974, !4975, !4976, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4995, !4998, !4999, !5002, !5003, !5004, !5005, !5006, !5007, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4960, file: !4961, line: 81, baseType: !115, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4960, file: !4961, line: 84, baseType: !2776, size: 128, offset: 32)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4960, file: !4961, line: 85, baseType: !2776, size: 128, offset: 160)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4960, file: !4961, line: 86, baseType: !3554, size: 256, offset: 288)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !4960, file: !4961, line: 87, baseType: !4968, size: 640, offset: 544)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !4969)
!4969 = !{!4970}
!4970 = !DISubrange(count: 80)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4960, file: !4961, line: 88, baseType: !3554, size: 256, offset: 1184)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !4960, file: !4961, line: 89, baseType: !4968, size: 640, offset: 1440)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !4960, file: !4961, line: 90, baseType: !4291, size: 1024, offset: 2080)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4960, file: !4961, line: 92, baseType: !555, size: 64, offset: 3136)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4960, file: !4961, line: 94, baseType: !184, size: 64, offset: 3200)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4960, file: !4961, line: 95, baseType: !4977, size: 64, offset: 3264)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{null, !4959}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4960, file: !4961, line: 97, baseType: !206, size: 128, offset: 3328)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !4960, file: !4961, line: 99, baseType: !195, size: 64, offset: 3456)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !4960, file: !4961, line: 100, baseType: !13, size: 32, offset: 3520)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !4960, file: !4961, line: 101, baseType: !1288, size: 320, offset: 3584)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !4960, file: !4961, line: 102, baseType: !1738, size: 64, offset: 3904)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !4960, file: !4961, line: 103, baseType: !115, size: 32, offset: 3968)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !4960, file: !4961, line: 104, baseType: !334, size: 64, offset: 4032)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !4960, file: !4961, line: 105, baseType: !206, size: 128, offset: 4096)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !4960, file: !4961, line: 106, baseType: !206, size: 128, offset: 4224)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !4960, file: !4961, line: 108, baseType: !2075, size: 128, offset: 4352)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !4960, file: !4961, line: 109, baseType: !2075, size: 128, offset: 4480)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !4960, file: !4961, line: 110, baseType: !706, size: 8, offset: 4608)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4960, file: !4961, line: 113, baseType: !4993, size: 64, offset: 4672)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !4961, line: 113, flags: DIFlagFwdDecl)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !4960, file: !4961, line: 114, baseType: !4996, size: 64, offset: 4736)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4961, line: 114, flags: DIFlagFwdDecl)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !4960, file: !4961, line: 116, baseType: !206, size: 128, offset: 4800)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !4960, file: !4961, line: 117, baseType: !5000, size: 64, offset: 4928)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !4961, line: 117, flags: DIFlagFwdDecl)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !4960, file: !4961, line: 119, baseType: !220, size: 32, offset: 4992)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4960, file: !4961, line: 120, baseType: !115, size: 32, offset: 5024)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !4960, file: !4961, line: 121, baseType: !574, size: 64, offset: 5056)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4960, file: !4961, line: 122, baseType: !195, size: 64, offset: 5120)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !4960, file: !4961, line: 123, baseType: !196, size: 5824, offset: 5184)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4960, file: !4961, line: 124, baseType: !5008, size: 256, offset: 11008)
!5008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !856)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4960, file: !4961, line: 125, baseType: !706, size: 8, offset: 11264)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4960, file: !4961, line: 126, baseType: !706, size: 8, offset: 11272)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !4960, file: !4961, line: 127, baseType: !706, size: 8, offset: 11280)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !4960, file: !4961, line: 128, baseType: !115, size: 32, offset: 11296)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !4960, file: !4961, line: 129, baseType: !1381, size: 192, offset: 11328)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !4960, file: !4961, line: 131, baseType: !334, size: 64, offset: 11520)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !4960, file: !4961, line: 132, baseType: !626, size: 256, offset: 11584)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4960, file: !4961, line: 138, baseType: !13, size: 32, offset: 11840)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !4960, file: !4961, line: 139, baseType: !240, size: 32, offset: 11872)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !4960, file: !4961, line: 140, baseType: !1381, size: 192, offset: 11904)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !4960, file: !4961, line: 141, baseType: !1381, size: 192, offset: 12096)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4956, file: !4952, line: 516, baseType: !206, size: 128, offset: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4956, file: !4952, line: 517, baseType: !115, size: 32, offset: 192)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !4956, file: !4952, line: 518, baseType: !13, size: 32, offset: 224)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "dev_class", scope: !4956, file: !4952, line: 519, baseType: !258, size: 16, offset: 256)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "dev_subclass", scope: !4956, file: !4952, line: 520, baseType: !258, size: 16, offset: 272)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4956, file: !4952, line: 521, baseType: !5026, size: 512, offset: 288)
!5026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !293)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4956, file: !4952, line: 522, baseType: !4968, size: 640, offset: 800)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4956, file: !4952, line: 523, baseType: !5029, size: 896, offset: 1472)
!5029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5030, size: 896, elements: !745)
!5030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_str", file: !4952, line: 493, size: 448, elements: !5031)
!5031 = !{!5032, !5033, !5034, !5035, !5036, !5037, !5038, !5041}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !5030, file: !4952, line: 494, baseType: !115, size: 32)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "pcm", scope: !5030, file: !4952, line: 495, baseType: !4955, size: 64, offset: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "substream_count", scope: !5030, file: !4952, line: 497, baseType: !13, size: 32, offset: 128)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "substream_opened", scope: !5030, file: !4952, line: 498, baseType: !13, size: 32, offset: 160)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "substream", scope: !5030, file: !4952, line: 499, baseType: !4950, size: 64, offset: 192)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !5030, file: !4952, line: 505, baseType: !4993, size: 64, offset: 256)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "chmap_kctl", scope: !5030, file: !4952, line: 510, baseType: !5039, size: 64, offset: 320)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_kcontrol", file: !4952, line: 510, flags: DIFlagFwdDecl)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5030, file: !4952, line: 511, baseType: !195, size: 64, offset: 384)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !4956, file: !4952, line: 524, baseType: !626, size: 256, offset: 2368)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !4956, file: !4952, line: 525, baseType: !1381, size: 192, offset: 2624)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4956, file: !4952, line: 526, baseType: !184, size: 64, offset: 2816)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4956, file: !4952, line: 527, baseType: !5046, size: 64, offset: 2880)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{null, !4955}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !4956, file: !4952, line: 528, baseType: !706, size: 8, offset: 2944)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "nonatomic", scope: !4956, file: !4952, line: 529, baseType: !706, size: 8, offset: 2952)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "no_device_suspend", scope: !4956, file: !4952, line: 530, baseType: !706, size: 8, offset: 2960)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "pstr", scope: !4951, file: !4952, line: 449, baseType: !5053, size: 64, offset: 64)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4951, file: !4952, line: 450, baseType: !184, size: 64, offset: 128)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4951, file: !4952, line: 451, baseType: !115, size: 32, offset: 192)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4951, file: !4952, line: 452, baseType: !3554, size: 256, offset: 224)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !4951, file: !4952, line: 453, baseType: !115, size: 32, offset: 480)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "latency_pm_qos_req", scope: !4951, file: !4952, line: 454, baseType: !5059, size: 384, offset: 512)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_request", file: !123, line: 61, size: 384, elements: !5060)
!5060 = !{!5061, !5062}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5059, file: !123, line: 62, baseType: !1683, size: 320)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5059, file: !123, line: 63, baseType: !5063, size: 64, offset: 320)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_bytes_max", scope: !4951, file: !4952, line: 455, baseType: !334, size: 64, offset: 896)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buffer", scope: !4951, file: !4952, line: 456, baseType: !4839, size: 448, offset: 960)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "dma_max", scope: !4951, file: !4952, line: 457, baseType: !334, size: 64, offset: 1408)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4951, file: !4952, line: 459, baseType: !5068, size: 64, offset: 1472)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5070)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_ops", file: !4952, line: 54, size: 960, elements: !5071)
!5071 = !{!5072, !5076, !5077, !5081, !5124, !5125, !5126, !5130, !5131, !5135, !5152, !5156, !5160, !5164, !5168}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5070, file: !4952, line: 55, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!115, !4950}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5070, file: !4952, line: 56, baseType: !5073, size: 64, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5070, file: !4952, line: 57, baseType: !5078, size: 64, offset: 128)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!115, !4950, !13, !184}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "hw_params", scope: !5070, file: !4952, line: 59, baseType: !5082, size: 64, offset: 192)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!115, !4950, !5085}
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_hw_params", file: !5087, line: 405, size: 4864, elements: !5088)
!5087 = !DIFile(filename: "./include/uapi/sound/asound.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c7c1b6718812fde08ec0a715510ddd")
!5088 = !{!5089, !5090, !5096, !5100, !5110, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5122}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5086, file: !5087, line: 406, baseType: !13, size: 32)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "masks", scope: !5086, file: !5087, line: 407, baseType: !5091, size: 768, offset: 32)
!5091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5092, size: 768, elements: !289)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_mask", file: !5087, line: 401, size: 256, elements: !5093)
!5093 = !{!5094}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5092, file: !5087, line: 402, baseType: !5095, size: 256)
!5095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !1558)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "mres", scope: !5086, file: !5087, line: 409, baseType: !5097, size: 1280, offset: 800)
!5097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5092, size: 1280, elements: !5098)
!5098 = !{!5099}
!5099 = !DISubrange(count: 5)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "intervals", scope: !5086, file: !5087, line: 410, baseType: !5101, size: 1152, offset: 2080)
!5101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5102, size: 1152, elements: !3433)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_interval", file: !5087, line: 391, size: 96, elements: !5103)
!5103 = !{!5104, !5105, !5106, !5107, !5108, !5109}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !5102, file: !5087, line: 392, baseType: !13, size: 32)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5102, file: !5087, line: 392, baseType: !13, size: 32, offset: 32)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "openmin", scope: !5102, file: !5087, line: 393, baseType: !13, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "openmax", scope: !5102, file: !5087, line: 394, baseType: !13, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !5102, file: !5087, line: 395, baseType: !13, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "empty", scope: !5102, file: !5087, line: 396, baseType: !13, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "ires", scope: !5086, file: !5087, line: 412, baseType: !5111, size: 864, offset: 3232)
!5111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5102, size: 864, elements: !5112)
!5112 = !{!5113}
!5113 = !DISubrange(count: 9)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "rmask", scope: !5086, file: !5087, line: 413, baseType: !13, size: 32, offset: 4096)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "cmask", scope: !5086, file: !5087, line: 414, baseType: !13, size: 32, offset: 4128)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5086, file: !5087, line: 415, baseType: !13, size: 32, offset: 4160)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "msbits", scope: !5086, file: !5087, line: 416, baseType: !13, size: 32, offset: 4192)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "rate_num", scope: !5086, file: !5087, line: 417, baseType: !13, size: 32, offset: 4224)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "rate_den", scope: !5086, file: !5087, line: 418, baseType: !13, size: 32, offset: 4256)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_size", scope: !5086, file: !5087, line: 419, baseType: !5121, size: 64, offset: 4288)
!5121 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_uframes_t", file: !5087, line: 147, baseType: !337)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5086, file: !5087, line: 420, baseType: !5123, size: 512, offset: 4352)
!5123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 512, elements: !293)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "hw_free", scope: !5070, file: !4952, line: 61, baseType: !5073, size: 64, offset: 256)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5070, file: !4952, line: 62, baseType: !5073, size: 64, offset: 320)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !5070, file: !4952, line: 63, baseType: !5127, size: 64, offset: 384)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!115, !4950, !115}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "sync_stop", scope: !5070, file: !4952, line: 64, baseType: !5073, size: 64, offset: 448)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5070, file: !4952, line: 65, baseType: !5132, size: 64, offset: 512)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!5121, !4950}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "get_time_info", scope: !5070, file: !4952, line: 66, baseType: !5136, size: 64, offset: 576)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!115, !4950, !5139, !5139, !5140, !5145}
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_audio_tstamp_config", file: !4952, line: 297, size: 32, elements: !5142)
!5142 = !{!5143, !5144}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "type_requested", scope: !5141, file: !4952, line: 299, baseType: !182, size: 4, flags: DIFlagBitField, extraData: i64 0)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "report_delay", scope: !5141, file: !4952, line: 300, baseType: !182, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_audio_tstamp_report", file: !4952, line: 314, size: 64, elements: !5147)
!5147 = !{!5148, !5149, !5150, !5151}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5146, file: !4952, line: 318, baseType: !182, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !5146, file: !4952, line: 321, baseType: !182, size: 4, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy_report", scope: !5146, file: !4952, line: 324, baseType: !182, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !5146, file: !4952, line: 325, baseType: !182, size: 32, offset: 32)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "fill_silence", scope: !5070, file: !4952, line: 70, baseType: !5153, size: 64, offset: 640)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!115, !4950, !115, !337, !337}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !5070, file: !4952, line: 72, baseType: !5157, size: 64, offset: 704)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!115, !4950, !115, !337, !2030, !337}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5070, file: !4952, line: 74, baseType: !5161, size: 64, offset: 768)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!2242, !4950, !337}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5070, file: !4952, line: 76, baseType: !5165, size: 64, offset: 832)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!115, !4950, !2133}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !5070, file: !4952, line: 77, baseType: !5073, size: 64, offset: 896)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !4951, file: !4952, line: 461, baseType: !5170, size: 64, offset: 1536)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_runtime", file: !4952, line: 345, size: 6528, elements: !5172)
!5172 = !{!5173, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5187, !5188, !5190, !5192, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5225, !5243, !5253, !5254, !5255, !5256, !5259, !5260, !5261, !5262, !5263, !5267, !5283, !5304, !5305, !5306, !5307, !5308, !5309, !5311, !5312, !5313, !5314}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5171, file: !4952, line: 347, baseType: !5174, size: 32)
!5174 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_state_t", file: !5087, line: 303, baseType: !115)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_state", scope: !5171, file: !4952, line: 348, baseType: !5174, size: 32, offset: 32)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_master", scope: !5171, file: !4952, line: 349, baseType: !4950, size: 64, offset: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_tstamp", scope: !5171, file: !4952, line: 350, baseType: !3724, size: 128, offset: 128)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_tstamp_latched", scope: !5171, file: !4952, line: 351, baseType: !706, size: 8, offset: 256)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "overrange", scope: !5171, file: !4952, line: 352, baseType: !115, size: 32, offset: 288)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "avail_max", scope: !5171, file: !4952, line: 353, baseType: !5121, size: 64, offset: 320)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_base", scope: !5171, file: !4952, line: 354, baseType: !5121, size: 64, offset: 384)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_interrupt", scope: !5171, file: !4952, line: 355, baseType: !5121, size: 64, offset: 448)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_jiffies", scope: !5171, file: !4952, line: 356, baseType: !337, size: 64, offset: 512)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_buffer_jiffies", scope: !5171, file: !4952, line: 357, baseType: !337, size: 64, offset: 576)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !5171, file: !4952, line: 358, baseType: !5186, size: 64, offset: 640)
!5186 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_sframes_t", file: !5087, line: 148, baseType: !185)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_wrap", scope: !5171, file: !4952, line: 359, baseType: !438, size: 64, offset: 704)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !5171, file: !4952, line: 362, baseType: !5189, size: 32, offset: 768)
!5189 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_access_t", file: !5087, line: 172, baseType: !115)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5171, file: !4952, line: 363, baseType: !5191, size: 32, offset: 800)
!5191 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_format_t", file: !5087, line: 180, baseType: !115)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "subformat", scope: !5171, file: !4952, line: 364, baseType: !5193, size: 32, offset: 832)
!5193 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_subformat_t", file: !5087, line: 268, baseType: !115)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !5171, file: !4952, line: 365, baseType: !13, size: 32, offset: 864)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5171, file: !4952, line: 366, baseType: !13, size: 32, offset: 896)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "period_size", scope: !5171, file: !4952, line: 367, baseType: !5121, size: 64, offset: 960)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "periods", scope: !5171, file: !4952, line: 368, baseType: !13, size: 32, offset: 1024)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !5171, file: !4952, line: 369, baseType: !5121, size: 64, offset: 1088)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !5171, file: !4952, line: 370, baseType: !5121, size: 64, offset: 1152)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "byte_align", scope: !5171, file: !4952, line: 371, baseType: !334, size: 64, offset: 1216)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bits", scope: !5171, file: !4952, line: 372, baseType: !13, size: 32, offset: 1280)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "sample_bits", scope: !5171, file: !4952, line: 373, baseType: !13, size: 32, offset: 1312)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5171, file: !4952, line: 374, baseType: !13, size: 32, offset: 1344)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "rate_num", scope: !5171, file: !4952, line: 375, baseType: !13, size: 32, offset: 1376)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "rate_den", scope: !5171, file: !4952, line: 376, baseType: !13, size: 32, offset: 1408)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "no_period_wakeup", scope: !5171, file: !4952, line: 377, baseType: !13, size: 1, offset: 1440, flags: DIFlagBitField, extraData: i64 1440)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp_mode", scope: !5171, file: !4952, line: 380, baseType: !115, size: 32, offset: 1472)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "period_step", scope: !5171, file: !4952, line: 381, baseType: !13, size: 32, offset: 1504)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "start_threshold", scope: !5171, file: !4952, line: 382, baseType: !5121, size: 64, offset: 1536)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "stop_threshold", scope: !5171, file: !4952, line: 383, baseType: !5121, size: 64, offset: 1600)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "silence_threshold", scope: !5171, file: !4952, line: 384, baseType: !5121, size: 64, offset: 1664)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "silence_size", scope: !5171, file: !4952, line: 385, baseType: !5121, size: 64, offset: 1728)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "boundary", scope: !5171, file: !4952, line: 386, baseType: !5121, size: 64, offset: 1792)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "silence_start", scope: !5171, file: !4952, line: 389, baseType: !5121, size: 64, offset: 1856)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "silence_filled", scope: !5171, file: !4952, line: 390, baseType: !5121, size: 64, offset: 1920)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5171, file: !4952, line: 392, baseType: !5217, size: 128, offset: 1984)
!5217 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_pcm_sync_id", file: !5087, line: 330, size: 128, elements: !5218)
!5218 = !{!5219, !5221, !5223}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5217, file: !5087, line: 331, baseType: !5220, size: 128)
!5220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 128, elements: !2777)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "id16", scope: !5217, file: !5087, line: 332, baseType: !5222, size: 128)
!5222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 128, elements: !1558)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "id32", scope: !5217, file: !5087, line: 333, baseType: !5224, size: 128)
!5224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !856)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5171, file: !4952, line: 395, baseType: !5226, size: 64, offset: 2112)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_mmap_status", file: !5087, line: 567, size: 448, elements: !5228)
!5228 = !{!5229, !5230, !5231, !5236, !5237, !5239, !5240, !5241, !5242}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5227, file: !5087, line: 568, baseType: !5174, size: 32)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !5227, file: !5087, line: 569, baseType: !180, size: 32, offset: 32)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5227, file: !5087, line: 570, baseType: !5232, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pad_before_uframe", file: !5087, line: 563, baseType: !5233)
!5233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !5234)
!5234 = !{!5235}
!5235 = !DISubrange(count: 0)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr", scope: !5227, file: !5087, line: 571, baseType: !5121, size: 64, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5227, file: !5087, line: 572, baseType: !5238, offset: 128)
!5238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pad_after_uframe", file: !5087, line: 564, baseType: !5233)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !5227, file: !5087, line: 573, baseType: !2687, size: 128, offset: 128)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_state", scope: !5227, file: !5087, line: 574, baseType: !5174, size: 32, offset: 256)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "pad3", scope: !5227, file: !5087, line: 575, baseType: !180, size: 32, offset: 288)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "audio_tstamp", scope: !5227, file: !5087, line: 576, baseType: !2687, size: 128, offset: 320)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !5171, file: !4952, line: 396, baseType: !5244, size: 64, offset: 2176)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_mmap_control", file: !5087, line: 579, size: 128, elements: !5246)
!5246 = !{!5247, !5248, !5249, !5250, !5251, !5252}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5245, file: !5087, line: 580, baseType: !5232)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "appl_ptr", scope: !5245, file: !5087, line: 581, baseType: !5121, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5245, file: !5087, line: 582, baseType: !5232, offset: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5245, file: !5087, line: 585, baseType: !5232, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "avail_min", scope: !5245, file: !5087, line: 586, baseType: !5121, size: 64, offset: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5245, file: !5087, line: 587, baseType: !5238, offset: 128)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "twake", scope: !5171, file: !4952, line: 399, baseType: !5121, size: 64, offset: 2240)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !5171, file: !4952, line: 400, baseType: !1381, size: 192, offset: 2304)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "tsleep", scope: !5171, file: !4952, line: 401, baseType: !1381, size: 192, offset: 2496)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5171, file: !4952, line: 402, baseType: !5257, size: 64, offset: 2688)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_fasync", file: !4961, line: 511, flags: DIFlagFwdDecl)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "stop_operating", scope: !5171, file: !4952, line: 403, baseType: !706, size: 8, offset: 2752)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_mutex", scope: !5171, file: !4952, line: 404, baseType: !626, size: 256, offset: 2816)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_accessing", scope: !5171, file: !4952, line: 405, baseType: !240, size: 32, offset: 3072)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !5171, file: !4952, line: 408, baseType: !184, size: 64, offset: 3136)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !5171, file: !4952, line: 409, baseType: !5264, size: 64, offset: 3200)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{null, !5170}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !5171, file: !4952, line: 412, baseType: !5268, size: 640, offset: 3264)
!5268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_hardware", file: !4952, line: 32, size: 640, elements: !5269)
!5269 = !{!5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5268, file: !4952, line: 33, baseType: !13, size: 32)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "formats", scope: !5268, file: !4952, line: 34, baseType: !438, size: 64, offset: 64)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "rates", scope: !5268, file: !4952, line: 35, baseType: !13, size: 32, offset: 128)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "rate_min", scope: !5268, file: !4952, line: 36, baseType: !13, size: 32, offset: 160)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "rate_max", scope: !5268, file: !4952, line: 37, baseType: !13, size: 32, offset: 192)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "channels_min", scope: !5268, file: !4952, line: 38, baseType: !13, size: 32, offset: 224)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "channels_max", scope: !5268, file: !4952, line: 39, baseType: !13, size: 32, offset: 256)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_bytes_max", scope: !5268, file: !4952, line: 40, baseType: !334, size: 64, offset: 320)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "period_bytes_min", scope: !5268, file: !4952, line: 41, baseType: !334, size: 64, offset: 384)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "period_bytes_max", scope: !5268, file: !4952, line: 42, baseType: !334, size: 64, offset: 448)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "periods_min", scope: !5268, file: !4952, line: 43, baseType: !13, size: 32, offset: 512)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "periods_max", scope: !5268, file: !4952, line: 44, baseType: !13, size: 32, offset: 544)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_size", scope: !5268, file: !4952, line: 45, baseType: !334, size: 64, offset: 576)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "hw_constraints", scope: !5171, file: !4952, line: 413, baseType: !5284, size: 2048, offset: 3904)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_hw_constraints", file: !4952, line: 239, size: 2048, elements: !5285)
!5285 = !{!5286, !5287, !5288, !5289, !5290}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "masks", scope: !5284, file: !4952, line: 240, baseType: !5091, size: 768)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "intervals", scope: !5284, file: !4952, line: 242, baseType: !5101, size: 1152, offset: 768)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "rules_num", scope: !5284, file: !4952, line: 244, baseType: !13, size: 32, offset: 1920)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "rules_all", scope: !5284, file: !4952, line: 245, baseType: !13, size: 32, offset: 1952)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "rules", scope: !5284, file: !4952, line: 246, baseType: !5291, size: 64, offset: 1984)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_hw_rule", file: !4952, line: 230, size: 384, elements: !5293)
!5293 = !{!5294, !5295, !5296, !5298, !5303}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !5292, file: !4952, line: 231, baseType: !13, size: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !5292, file: !4952, line: 232, baseType: !115, size: 32, offset: 32)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !5292, file: !4952, line: 233, baseType: !5297, size: 160, offset: 64)
!5297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 160, elements: !5098)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5292, file: !4952, line: 235, baseType: !5299, size: 64, offset: 256)
!5299 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_hw_rule_func_t", file: !4952, line: 227, baseType: !5300)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!115, !5085, !5291}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5292, file: !4952, line: 236, baseType: !184, size: 64, offset: 320)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "timer_resolution", scope: !5171, file: !4952, line: 416, baseType: !13, size: 32, offset: 5952)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp_type", scope: !5171, file: !4952, line: 417, baseType: !115, size: 32, offset: 5984)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "dma_area", scope: !5171, file: !4952, line: 420, baseType: !4850, size: 64, offset: 6016)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5171, file: !4952, line: 421, baseType: !4827, size: 64, offset: 6080)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "dma_bytes", scope: !5171, file: !4952, line: 422, baseType: !334, size: 64, offset: 6144)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buffer_p", scope: !5171, file: !4952, line: 424, baseType: !5310, size: 64, offset: 6208)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_changed", scope: !5171, file: !4952, line: 425, baseType: !13, size: 1, offset: 6272, flags: DIFlagBitField, extraData: i64 6272)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "audio_tstamp_config", scope: !5171, file: !4952, line: 428, baseType: !5141, size: 32, offset: 6304)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "audio_tstamp_report", scope: !5171, file: !4952, line: 429, baseType: !5146, size: 64, offset: 6336)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "driver_tstamp", scope: !5171, file: !4952, line: 430, baseType: !3724, size: 128, offset: 6400)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4951, file: !4952, line: 463, baseType: !5316, size: 64, offset: 1600)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer", file: !4952, line: 463, flags: DIFlagFwdDecl)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "timer_running", scope: !4951, file: !4952, line: 464, baseType: !13, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !4951, file: !4952, line: 465, baseType: !185, size: 64, offset: 1728)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4951, file: !4952, line: 467, baseType: !4950, size: 64, offset: 1792)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "link_list", scope: !4951, file: !4952, line: 469, baseType: !206, size: 128, offset: 1856)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "self_group", scope: !4951, file: !4952, line: 470, baseType: !5323, size: 512, offset: 1984)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_group", file: !4952, line: 438, size: 512, elements: !5324)
!5324 = !{!5325, !5326, !5327, !5328}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5323, file: !4952, line: 439, baseType: !220, size: 32)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5323, file: !4952, line: 440, baseType: !626, size: 256, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "substreams", scope: !5323, file: !4952, line: 441, baseType: !206, size: 128, offset: 320)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !5323, file: !4952, line: 442, baseType: !1408, size: 32, offset: 448)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !4951, file: !4952, line: 471, baseType: !5330, size: 64, offset: 2496)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !4951, file: !4952, line: 473, baseType: !115, size: 32, offset: 2560)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !4951, file: !4952, line: 474, baseType: !240, size: 32, offset: 2592)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !4951, file: !4952, line: 475, baseType: !13, size: 32, offset: 2624)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_release", scope: !4951, file: !4952, line: 476, baseType: !5335, size: 64, offset: 2688)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{null, !4950}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4951, file: !4952, line: 477, baseType: !1759, size: 64, offset: 2752)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4951, file: !4952, line: 483, baseType: !4993, size: 64, offset: 2816)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "hw_opened", scope: !4951, file: !4952, line: 486, baseType: !13, size: 1, offset: 2880, flags: DIFlagBitField, extraData: i64 2880)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "managed_buffer_alloc", scope: !4951, file: !4952, line: 487, baseType: !13, size: 1, offset: 2881, flags: DIFlagBitField, extraData: i64 2880)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "cstream", scope: !187, file: !188, line: 537, baseType: !5343, size: 64, offset: 1216)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_compr_stream", file: !188, line: 537, flags: DIFlagFwdDecl)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "format_val", scope: !187, file: !188, line: 538, baseType: !13, size: 32, offset: 1280)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "stream_tag", scope: !187, file: !188, line: 541, baseType: !250, size: 8, offset: 1312)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !187, file: !188, line: 542, baseType: !250, size: 8, offset: 1320)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "assigned_key", scope: !187, file: !188, line: 543, baseType: !115, size: 32, offset: 1344)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !187, file: !188, line: 545, baseType: !706, size: 1, offset: 1376, flags: DIFlagBitField, extraData: i64 1376)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !187, file: !188, line: 546, baseType: !706, size: 1, offset: 1377, flags: DIFlagBitField, extraData: i64 1376)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "prepared", scope: !187, file: !188, line: 547, baseType: !706, size: 1, offset: 1378, flags: DIFlagBitField, extraData: i64 1376)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "no_period_wakeup", scope: !187, file: !188, line: 548, baseType: !706, size: 1, offset: 1379, flags: DIFlagBitField, extraData: i64 1376)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !187, file: !188, line: 549, baseType: !706, size: 1, offset: 1380, flags: DIFlagBitField, extraData: i64 1376)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "stripe", scope: !187, file: !188, line: 550, baseType: !706, size: 1, offset: 1381, flags: DIFlagBitField, extraData: i64 1376)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "curr_pos", scope: !187, file: !188, line: 552, baseType: !438, size: 64, offset: 1408)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "start_wallclk", scope: !187, file: !188, line: 554, baseType: !337, size: 64, offset: 1472)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "period_wallclk", scope: !187, file: !188, line: 555, baseType: !337, size: 64, offset: 1536)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !187, file: !188, line: 556, baseType: !5359, size: 320, offset: 1600)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timecounter", file: !5360, line: 55, size: 320, elements: !5361)
!5360 = !DIFile(filename: "./include/linux/timecounter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "383ec9a52560b80db2c6f4d48ce753fd")
!5361 = !{!5362, !5374, !5375, !5376, !5377}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !5359, file: !5360, line: 56, baseType: !5363, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5365)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cyclecounter", file: !5360, line: 30, size: 192, elements: !5366)
!5366 = !{!5367, !5371, !5372, !5373}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5365, file: !5360, line: 31, baseType: !5368, size: 64)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!438, !5363}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5365, file: !5360, line: 32, baseType: !438, size: 64, offset: 64)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !5365, file: !5360, line: 33, baseType: !182, size: 32, offset: 128)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !5365, file: !5360, line: 34, baseType: !182, size: 32, offset: 160)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !5359, file: !5360, line: 57, baseType: !438, size: 64, offset: 64)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !5359, file: !5360, line: 58, baseType: !438, size: 64, offset: 128)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5359, file: !5360, line: 59, baseType: !438, size: 64, offset: 192)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "frac", scope: !5359, file: !5360, line: 60, baseType: !438, size: 64, offset: 256)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !187, file: !188, line: 557, baseType: !5365, size: 192, offset: 1920)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "delay_negative_threshold", scope: !187, file: !188, line: 558, baseType: !115, size: 32, offset: 2112)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !187, file: !188, line: 560, baseType: !206, size: 128, offset: 2176)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !250)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !258)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5389)
!5389 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !210)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !185)
!5394 = !{!0, !7, !5395, !5397, !5399, !5404, !5416, !5421, !5426, !5428, !5430, !5435, !5440, !5442, !5444, !5446, !5448, !5450, !5452, !5454, !5456, !5458, !5460, !5465, !5467}
!5395 = !DIGlobalVariableExpression(var: !5396, expr: !DIExpression())
!5396 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_stop_cmd_io296", scope: !9, file: !2, line: 127, type: !184, isLocal: true, isDefinition: true)
!5397 = !DIGlobalVariableExpression(var: !5398, expr: !DIExpression())
!5398 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_send_cmd297", scope: !9, file: !2, line: 179, type: !184, isLocal: true, isDefinition: true)
!5399 = !DIGlobalVariableExpression(var: !5400, expr: !DIExpression())
!5400 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !5401, isLocal: true, isDefinition: true)
!5401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !5402)
!5402 = !{!5403}
!5403 = !DISubrange(count: 44)
!5404 = !DIGlobalVariableExpression(var: !5405, expr: !DIExpression())
!5405 = distinct !DIGlobalVariable(name: "_rs", scope: !5406, file: !2, line: 228, type: !1944, isLocal: true, isDefinition: true)
!5406 = distinct !DISubprogram(name: "snd_hdac_bus_update_rirb", scope: !2, file: !2, line: 190, type: !5407, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5409)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{null, !191}
!5409 = !{!5410, !5411, !5412, !5413, !5414, !5415}
!5410 = !DILocalVariable(name: "bus", arg: 1, scope: !5406, file: !2, line: 190, type: !191)
!5411 = !DILocalVariable(name: "rp", scope: !5406, file: !2, line: 192, type: !13)
!5412 = !DILocalVariable(name: "wp", scope: !5406, file: !2, line: 192, type: !13)
!5413 = !DILocalVariable(name: "addr", scope: !5406, file: !2, line: 193, type: !13)
!5414 = !DILocalVariable(name: "res", scope: !5406, file: !2, line: 194, type: !182)
!5415 = !DILocalVariable(name: "res_ex", scope: !5406, file: !2, line: 194, type: !182)
!5416 = !DIGlobalVariableExpression(var: !5417, expr: !DIExpression())
!5417 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !5418, isLocal: true, isDefinition: true)
!5418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 200, elements: !5419)
!5419 = !{!5420}
!5420 = !DISubrange(count: 25)
!5421 = !DIGlobalVariableExpression(var: !5422, expr: !DIExpression())
!5422 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !5423, isLocal: true, isDefinition: true)
!5423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !5424)
!5424 = !{!5425}
!5425 = !DISubrange(count: 43)
!5426 = !DIGlobalVariableExpression(var: !5427, expr: !DIExpression())
!5427 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_update_rirb298", scope: !9, file: !2, line: 234, type: !184, isLocal: true, isDefinition: true)
!5428 = !DIGlobalVariableExpression(var: !5429, expr: !DIExpression())
!5429 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_get_response299", scope: !9, file: !2, line: 296, type: !184, isLocal: true, isDefinition: true)
!5430 = !DIGlobalVariableExpression(var: !5431, expr: !DIExpression())
!5431 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !5432, isLocal: true, isDefinition: true)
!5432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5433)
!5433 = !{!5434}
!5434 = !DISubrange(count: 23)
!5435 = !DIGlobalVariableExpression(var: !5436, expr: !DIExpression())
!5436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !5437, isLocal: true, isDefinition: true)
!5437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5438)
!5438 = !{!5439}
!5439 = !DISubrange(count: 34)
!5440 = !DIGlobalVariableExpression(var: !5441, expr: !DIExpression())
!5441 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_parse_capabilities300", scope: !9, file: !2, line: 377, type: !184, isLocal: true, isDefinition: true)
!5442 = !DIGlobalVariableExpression(var: !5443, expr: !DIExpression())
!5443 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_enter_link_reset301", scope: !9, file: !2, line: 401, type: !184, isLocal: true, isDefinition: true)
!5444 = !DIGlobalVariableExpression(var: !5445, expr: !DIExpression())
!5445 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_exit_link_reset302", scope: !9, file: !2, line: 419, type: !184, isLocal: true, isDefinition: true)
!5446 = !DIGlobalVariableExpression(var: !5447, expr: !DIExpression())
!5447 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_reset_link303", scope: !9, file: !2, line: 460, type: !184, isLocal: true, isDefinition: true)
!5448 = !DIGlobalVariableExpression(var: !5449, expr: !DIExpression())
!5449 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_init_chip304", scope: !9, file: !2, line: 535, type: !184, isLocal: true, isDefinition: true)
!5450 = !DIGlobalVariableExpression(var: !5451, expr: !DIExpression())
!5451 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_stop_chip305", scope: !9, file: !2, line: 561, type: !184, isLocal: true, isDefinition: true)
!5452 = !DIGlobalVariableExpression(var: !5453, expr: !DIExpression())
!5453 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_handle_stream_irq306", scope: !9, file: !2, line: 593, type: !184, isLocal: true, isDefinition: true)
!5454 = !DIGlobalVariableExpression(var: !5455, expr: !DIExpression())
!5455 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_alloc_stream_pages307", scope: !9, file: !2, line: 631, type: !184, isLocal: true, isDefinition: true)
!5456 = !DIGlobalVariableExpression(var: !5457, expr: !DIExpression())
!5457 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_free_stream_pages308", scope: !9, file: !2, line: 651, type: !184, isLocal: true, isDefinition: true)
!5458 = !DIGlobalVariableExpression(var: !5459, expr: !DIExpression())
!5459 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_bus_link_power309", scope: !9, file: !2, line: 665, type: !184, isLocal: true, isDefinition: true)
!5460 = !DIGlobalVariableExpression(var: !5461, expr: !DIExpression())
!5461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !5462, isLocal: true, isDefinition: true)
!5462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !5463)
!5463 = !{!5464}
!5464 = !DISubrange(count: 35)
!5465 = !DIGlobalVariableExpression(var: !5466, expr: !DIExpression())
!5466 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !5462, isLocal: true, isDefinition: true)
!5467 = !DIGlobalVariableExpression(var: !5468, expr: !DIExpression())
!5468 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched144", scope: !5469, file: !1070, line: 2104, type: !184, isLocal: true, isDefinition: true)
!5469 = distinct !DISubprogram(name: "_cond_resched", scope: !1070, file: !1070, line: 2102, type: !720, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5470 = !{i32 7, !"Dwarf Version", i32 5}
!5471 = !{i32 2, !"Debug Info Version", i32 3}
!5472 = !{i32 1, !"wchar_size", i32 2}
!5473 = !{i32 8, !"cf-protection-branch", i32 1}
!5474 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5475 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5476 = !{i32 1, !"Code Model", i32 2}
!5477 = !{i32 1, !"override-stack-alignment", i32 8}
!5478 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5479 = distinct !DISubprogram(name: "snd_hdac_bus_init_cmd_io", scope: !2, file: !2, line: 43, type: !5407, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5480)
!5480 = !{!5481, !5482, !5484}
!5481 = !DILocalVariable(name: "bus", arg: 1, scope: !5479, file: !2, line: 43, type: !191)
!5482 = !DILocalVariable(name: "__ret_warn_on", scope: !5483, file: !2, line: 45, type: !115)
!5483 = distinct !DILexicalBlock(scope: !5479, file: !2, line: 45, column: 2)
!5484 = !DILocalVariable(name: "__flags", scope: !5485, file: !2, line: 45, type: !115)
!5485 = distinct !DILexicalBlock(scope: !5486, file: !2, line: 45, column: 2)
!5486 = distinct !DILexicalBlock(scope: !5483, file: !2, line: 45, column: 2)
!5487 = !DILocation(line: 43, column: 48, scope: !5479)
!5488 = !DILocation(line: 45, column: 2, scope: !5483)
!5489 = !DILocation(line: 45, column: 2, scope: !5486)
!5490 = !DILocation(line: 45, column: 2, scope: !5485)
!5491 = !DILocation(line: 45, column: 2, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5485, file: !2, line: 45, column: 2)
!5493 = !DILocation(line: 45, column: 2, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5485, file: !2, line: 45, column: 2)
!5495 = !{i64 2155344885, i64 2155344914, i64 2155344960, i64 2155345018, i64 2155345072, i64 2155345126, i64 2155345181, i64 2155345212, i64 2155345520, i64 2155345526, i64 2155345573, i64 2155345596, i64 2155345622}
!5496 = !DILocation(line: 45, column: 2, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5485, file: !2, line: 45, column: 2)
!5498 = !DILocation(line: 45, column: 2, scope: !5479)
!5499 = !DILocation(line: 47, column: 17, scope: !5479)
!5500 = !DILocation(line: 47, column: 22, scope: !5479)
!5501 = !DILocation(line: 47, column: 2, scope: !5479)
!5502 = !DILocation(line: 49, column: 19, scope: !5479)
!5503 = !DILocation(line: 49, column: 24, scope: !5479)
!5504 = !DILocation(line: 49, column: 27, scope: !5479)
!5505 = !DILocation(line: 49, column: 2, scope: !5479)
!5506 = !DILocation(line: 49, column: 7, scope: !5479)
!5507 = !DILocation(line: 49, column: 12, scope: !5479)
!5508 = !DILocation(line: 49, column: 17, scope: !5479)
!5509 = !DILocation(line: 50, column: 28, scope: !5479)
!5510 = !DILocation(line: 50, column: 33, scope: !5479)
!5511 = !DILocation(line: 50, column: 36, scope: !5479)
!5512 = !DILocation(line: 50, column: 2, scope: !5479)
!5513 = !DILocation(line: 50, column: 7, scope: !5479)
!5514 = !DILocation(line: 50, column: 12, scope: !5479)
!5515 = !DILocation(line: 50, column: 16, scope: !5479)
!5516 = !DILocation(line: 51, column: 2, scope: !5479)
!5517 = !DILocation(line: 52, column: 2, scope: !5479)
!5518 = !DILocation(line: 55, column: 2, scope: !5479)
!5519 = !DILocation(line: 57, column: 2, scope: !5479)
!5520 = !DILocation(line: 60, column: 2, scope: !5479)
!5521 = !DILocation(line: 61, column: 7, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5479, file: !2, line: 61, column: 6)
!5523 = !DILocation(line: 61, column: 12, scope: !5522)
!5524 = !DILocation(line: 61, column: 6, scope: !5479)
!5525 = !DILocation(line: 62, column: 20, scope: !5522)
!5526 = !DILocation(line: 62, column: 3, scope: !5522)
!5527 = !DILocation(line: 65, column: 2, scope: !5479)
!5528 = !DILocation(line: 68, column: 19, scope: !5479)
!5529 = !DILocation(line: 68, column: 24, scope: !5479)
!5530 = !DILocation(line: 68, column: 27, scope: !5479)
!5531 = !DILocation(line: 68, column: 32, scope: !5479)
!5532 = !DILocation(line: 68, column: 2, scope: !5479)
!5533 = !DILocation(line: 68, column: 7, scope: !5479)
!5534 = !DILocation(line: 68, column: 12, scope: !5479)
!5535 = !DILocation(line: 68, column: 17, scope: !5479)
!5536 = !DILocation(line: 69, column: 29, scope: !5479)
!5537 = !DILocation(line: 69, column: 34, scope: !5479)
!5538 = !DILocation(line: 69, column: 37, scope: !5479)
!5539 = !DILocation(line: 69, column: 42, scope: !5479)
!5540 = !DILocation(line: 69, column: 2, scope: !5479)
!5541 = !DILocation(line: 69, column: 7, scope: !5479)
!5542 = !DILocation(line: 69, column: 12, scope: !5479)
!5543 = !DILocation(line: 69, column: 16, scope: !5479)
!5544 = !DILocation(line: 70, column: 17, scope: !5479)
!5545 = !DILocation(line: 70, column: 22, scope: !5479)
!5546 = !DILocation(line: 70, column: 27, scope: !5479)
!5547 = !DILocation(line: 70, column: 30, scope: !5479)
!5548 = !DILocation(line: 70, column: 2, scope: !5479)
!5549 = !DILocation(line: 70, column: 7, scope: !5479)
!5550 = !DILocation(line: 70, column: 12, scope: !5479)
!5551 = !DILocation(line: 70, column: 15, scope: !5479)
!5552 = !DILocation(line: 71, column: 9, scope: !5479)
!5553 = !DILocation(line: 71, column: 14, scope: !5479)
!5554 = !DILocation(line: 71, column: 19, scope: !5479)
!5555 = !DILocation(line: 71, column: 2, scope: !5479)
!5556 = !DILocation(line: 72, column: 2, scope: !5479)
!5557 = !DILocation(line: 73, column: 2, scope: !5479)
!5558 = !DILocation(line: 76, column: 2, scope: !5479)
!5559 = !DILocation(line: 78, column: 2, scope: !5479)
!5560 = !DILocation(line: 80, column: 2, scope: !5479)
!5561 = !DILocation(line: 82, column: 6, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5479, file: !2, line: 82, column: 6)
!5563 = !DILocation(line: 82, column: 11, scope: !5562)
!5564 = !DILocation(line: 82, column: 6, scope: !5479)
!5565 = !DILocation(line: 83, column: 3, scope: !5562)
!5566 = !DILocation(line: 85, column: 3, scope: !5562)
!5567 = !DILocation(line: 87, column: 2, scope: !5479)
!5568 = !DILocation(line: 88, column: 19, scope: !5479)
!5569 = !DILocation(line: 88, column: 24, scope: !5479)
!5570 = !DILocation(line: 88, column: 2, scope: !5479)
!5571 = !DILocation(line: 89, column: 1, scope: !5479)
!5572 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5573, file: !5573, line: 374, type: !5574, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5576)
!5573 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5574 = !DISubroutineType(types: !5575)
!5575 = !{null, !2374}
!5576 = !{!5577}
!5577 = !DILocalVariable(name: "lock", arg: 1, scope: !5572, file: !5573, line: 374, type: !2374)
!5578 = !DILocation(line: 374, column: 55, scope: !5572)
!5579 = !DILocation(line: 376, column: 2, scope: !5572)
!5580 = !DILocation(line: 377, column: 1, scope: !5572)
!5581 = distinct !DISubprogram(name: "writel", scope: !5582, file: !5582, line: 66, type: !5583, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5587)
!5582 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!5583 = !DISubroutineType(types: !5584)
!5584 = !{null, !13, !5585}
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5587 = !{!5588, !5589}
!5588 = !DILocalVariable(name: "val", arg: 1, scope: !5581, file: !5582, line: 66, type: !13)
!5589 = !DILocalVariable(name: "addr", arg: 2, scope: !5581, file: !5582, line: 66, type: !5585)
!5590 = !DILocation(line: 66, column: 1, scope: !5581)
!5591 = !{i64 2152717241}
!5592 = distinct !DISubprogram(name: "snd_hdac_reg_writeb", scope: !188, file: !188, line: 425, type: !5593, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5595)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{null, !191, !184, !248}
!5595 = !{!5596, !5597, !5598}
!5596 = !DILocalVariable(name: "bus", arg: 1, scope: !5592, file: !188, line: 425, type: !191)
!5597 = !DILocalVariable(name: "addr", arg: 2, scope: !5592, file: !188, line: 425, type: !184)
!5598 = !DILocalVariable(name: "val", arg: 3, scope: !5592, file: !188, line: 426, type: !248)
!5599 = !DILocation(line: 425, column: 57, scope: !5592)
!5600 = !DILocation(line: 425, column: 76, scope: !5592)
!5601 = !DILocation(line: 426, column: 15, scope: !5592)
!5602 = !DILocation(line: 431, column: 10, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5592, file: !188, line: 428, column: 6)
!5604 = !DILocation(line: 431, column: 15, scope: !5603)
!5605 = !DILocation(line: 431, column: 3, scope: !5603)
!5606 = !DILocation(line: 432, column: 1, scope: !5592)
!5607 = distinct !DISubprogram(name: "snd_hdac_reg_writew", scope: !188, file: !188, line: 434, type: !5608, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5610)
!5608 = !DISubroutineType(types: !5609)
!5609 = !{null, !191, !184, !256}
!5610 = !{!5611, !5612, !5613}
!5611 = !DILocalVariable(name: "bus", arg: 1, scope: !5607, file: !188, line: 434, type: !191)
!5612 = !DILocalVariable(name: "addr", arg: 2, scope: !5607, file: !188, line: 434, type: !184)
!5613 = !DILocalVariable(name: "val", arg: 3, scope: !5607, file: !188, line: 435, type: !256)
!5614 = !DILocation(line: 434, column: 57, scope: !5607)
!5615 = !DILocation(line: 434, column: 76, scope: !5607)
!5616 = !DILocation(line: 435, column: 16, scope: !5607)
!5617 = !DILocation(line: 440, column: 10, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5607, file: !188, line: 437, column: 6)
!5619 = !DILocation(line: 440, column: 15, scope: !5618)
!5620 = !DILocation(line: 440, column: 3, scope: !5618)
!5621 = !DILocation(line: 441, column: 1, scope: !5607)
!5622 = distinct !DISubprogram(name: "azx_clear_corbrp", scope: !2, file: !2, line: 15, type: !5407, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5623)
!5623 = !{!5624, !5625}
!5624 = !DILocalVariable(name: "bus", arg: 1, scope: !5622, file: !2, line: 15, type: !191)
!5625 = !DILocalVariable(name: "timeout", scope: !5622, file: !2, line: 17, type: !115)
!5626 = !DILocation(line: 15, column: 47, scope: !5622)
!5627 = !DILocation(line: 17, column: 2, scope: !5622)
!5628 = !DILocation(line: 17, column: 6, scope: !5622)
!5629 = !DILocation(line: 19, column: 15, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 19, column: 2)
!5631 = !DILocation(line: 19, column: 7, scope: !5630)
!5632 = !DILocation(line: 19, column: 23, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5630, file: !2, line: 19, column: 2)
!5634 = !DILocation(line: 19, column: 31, scope: !5633)
!5635 = !DILocation(line: 19, column: 2, scope: !5630)
!5636 = !DILocation(line: 20, column: 7, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 20, column: 7)
!5638 = distinct !DILexicalBlock(scope: !5633, file: !2, line: 19, column: 47)
!5639 = !DILocation(line: 20, column: 40, scope: !5637)
!5640 = !DILocation(line: 20, column: 7, scope: !5638)
!5641 = !DILocation(line: 21, column: 4, scope: !5637)
!5642 = !DILocation(line: 22, column: 3, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5644, file: !2, line: 22, column: 3)
!5644 = distinct !DILexicalBlock(scope: !5645, file: !2, line: 22, column: 3)
!5645 = distinct !DILexicalBlock(scope: !5646, file: !2, line: 22, column: 3)
!5646 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 22, column: 3)
!5647 = !DILocation(line: 23, column: 2, scope: !5638)
!5648 = !DILocation(line: 19, column: 43, scope: !5633)
!5649 = !DILocation(line: 19, column: 2, scope: !5633)
!5650 = distinct !{!5650, !5635, !5651, !5652, !5653}
!5651 = !DILocation(line: 23, column: 2, scope: !5630)
!5652 = !{!"llvm.loop.mustprogress"}
!5653 = !{!"llvm.loop.unroll.disable"}
!5654 = !DILocation(line: 24, column: 6, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 24, column: 6)
!5656 = !DILocation(line: 24, column: 14, scope: !5655)
!5657 = !DILocation(line: 24, column: 6, scope: !5622)
!5658 = !DILocation(line: 25, column: 3, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5655, file: !2, line: 25, column: 3)
!5660 = !DILocation(line: 25, column: 3, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5659, file: !2, line: 25, column: 3)
!5662 = !DILocation(line: 25, column: 3, scope: !5655)
!5663 = !DILocation(line: 28, column: 2, scope: !5622)
!5664 = !DILocation(line: 29, column: 15, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 29, column: 2)
!5666 = !DILocation(line: 29, column: 7, scope: !5665)
!5667 = !DILocation(line: 29, column: 23, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5665, file: !2, line: 29, column: 2)
!5669 = !DILocation(line: 29, column: 31, scope: !5668)
!5670 = !DILocation(line: 29, column: 2, scope: !5665)
!5671 = !DILocation(line: 30, column: 7, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5673, file: !2, line: 30, column: 7)
!5673 = distinct !DILexicalBlock(scope: !5668, file: !2, line: 29, column: 47)
!5674 = !DILocation(line: 30, column: 40, scope: !5672)
!5675 = !DILocation(line: 30, column: 7, scope: !5673)
!5676 = !DILocation(line: 31, column: 4, scope: !5672)
!5677 = !DILocation(line: 32, column: 3, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5679, file: !2, line: 32, column: 3)
!5679 = distinct !DILexicalBlock(scope: !5680, file: !2, line: 32, column: 3)
!5680 = distinct !DILexicalBlock(scope: !5681, file: !2, line: 32, column: 3)
!5681 = distinct !DILexicalBlock(scope: !5673, file: !2, line: 32, column: 3)
!5682 = !DILocation(line: 33, column: 2, scope: !5673)
!5683 = !DILocation(line: 29, column: 43, scope: !5668)
!5684 = !DILocation(line: 29, column: 2, scope: !5668)
!5685 = distinct !{!5685, !5670, !5686, !5652, !5653}
!5686 = !DILocation(line: 33, column: 2, scope: !5665)
!5687 = !DILocation(line: 34, column: 6, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 34, column: 6)
!5689 = !DILocation(line: 34, column: 14, scope: !5688)
!5690 = !DILocation(line: 34, column: 6, scope: !5622)
!5691 = !DILocation(line: 35, column: 3, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5688, file: !2, line: 35, column: 3)
!5693 = !DILocation(line: 35, column: 3, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5692, file: !2, line: 35, column: 3)
!5695 = !DILocation(line: 35, column: 3, scope: !5688)
!5696 = !DILocation(line: 37, column: 1, scope: !5622)
!5697 = distinct !DISubprogram(name: "readl", scope: !5582, file: !5582, line: 58, type: !5698, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5702)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!13, !5700}
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5586)
!5702 = !{!5703, !5704}
!5703 = !DILocalVariable(name: "addr", arg: 1, scope: !5697, file: !5582, line: 58, type: !5700)
!5704 = !DILocalVariable(name: "ret", scope: !5697, file: !5582, line: 58, type: !13)
!5705 = !DILocation(line: 58, column: 1, scope: !5697)
!5706 = !{i64 2152714848}
!5707 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5573, file: !5573, line: 399, type: !5574, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5708)
!5708 = !{!5709}
!5709 = !DILocalVariable(name: "lock", arg: 1, scope: !5707, file: !5573, line: 399, type: !2374)
!5710 = !DILocation(line: 399, column: 57, scope: !5707)
!5711 = !DILocation(line: 401, column: 2, scope: !5707)
!5712 = !DILocation(line: 402, column: 1, scope: !5707)
!5713 = distinct !DISubprogram(name: "snd_hdac_bus_stop_cmd_io", scope: !2, file: !2, line: 112, type: !5407, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5714)
!5714 = !{!5715}
!5715 = !DILocalVariable(name: "bus", arg: 1, scope: !5713, file: !2, line: 112, type: !191)
!5716 = !DILocation(line: 112, column: 48, scope: !5713)
!5717 = !DILocation(line: 114, column: 17, scope: !5713)
!5718 = !DILocation(line: 114, column: 22, scope: !5713)
!5719 = !DILocation(line: 114, column: 2, scope: !5713)
!5720 = !DILocation(line: 116, column: 2, scope: !5713)
!5721 = !DILocation(line: 117, column: 2, scope: !5713)
!5722 = !DILocation(line: 118, column: 19, scope: !5713)
!5723 = !DILocation(line: 118, column: 24, scope: !5713)
!5724 = !DILocation(line: 118, column: 2, scope: !5713)
!5725 = !DILocation(line: 120, column: 25, scope: !5713)
!5726 = !DILocation(line: 120, column: 2, scope: !5713)
!5727 = !DILocation(line: 122, column: 17, scope: !5713)
!5728 = !DILocation(line: 122, column: 22, scope: !5713)
!5729 = !DILocation(line: 122, column: 2, scope: !5713)
!5730 = !DILocation(line: 124, column: 2, scope: !5713)
!5731 = !DILocation(line: 125, column: 19, scope: !5713)
!5732 = !DILocation(line: 125, column: 24, scope: !5713)
!5733 = !DILocation(line: 125, column: 2, scope: !5713)
!5734 = !DILocation(line: 126, column: 1, scope: !5713)
!5735 = distinct !DISubprogram(name: "hdac_wait_for_cmd_dmas", scope: !2, file: !2, line: 93, type: !5407, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5736)
!5736 = !{!5737, !5738}
!5737 = !DILocalVariable(name: "bus", arg: 1, scope: !5735, file: !2, line: 93, type: !191)
!5738 = !DILocalVariable(name: "timeout", scope: !5735, file: !2, line: 95, type: !337)
!5739 = !DILocation(line: 93, column: 53, scope: !5735)
!5740 = !DILocation(line: 95, column: 2, scope: !5735)
!5741 = !DILocation(line: 95, column: 16, scope: !5735)
!5742 = !DILocation(line: 97, column: 12, scope: !5735)
!5743 = !DILocation(line: 97, column: 22, scope: !5735)
!5744 = !DILocation(line: 97, column: 20, scope: !5735)
!5745 = !DILocation(line: 97, column: 10, scope: !5735)
!5746 = !DILocation(line: 98, column: 2, scope: !5735)
!5747 = !DILocation(line: 98, column: 10, scope: !5735)
!5748 = !DILocation(line: 98, column: 44, scope: !5735)
!5749 = !DILocation(line: 99, column: 3, scope: !5735)
!5750 = !DILocation(line: 99, column: 6, scope: !5735)
!5751 = !DILocation(line: 0, scope: !5735)
!5752 = !DILocation(line: 100, column: 3, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5754, file: !2, line: 100, column: 3)
!5754 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 100, column: 3)
!5755 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 100, column: 3)
!5756 = distinct !DILexicalBlock(scope: !5735, file: !2, line: 100, column: 3)
!5757 = distinct !{!5757, !5746, !5758, !5652, !5653}
!5758 = !DILocation(line: 100, column: 3, scope: !5735)
!5759 = !DILocation(line: 102, column: 12, scope: !5735)
!5760 = !DILocation(line: 102, column: 22, scope: !5735)
!5761 = !DILocation(line: 102, column: 20, scope: !5735)
!5762 = !DILocation(line: 102, column: 10, scope: !5735)
!5763 = !DILocation(line: 103, column: 2, scope: !5735)
!5764 = !DILocation(line: 103, column: 10, scope: !5735)
!5765 = !DILocation(line: 103, column: 44, scope: !5735)
!5766 = !DILocation(line: 104, column: 3, scope: !5735)
!5767 = !DILocation(line: 104, column: 6, scope: !5735)
!5768 = !DILocation(line: 105, column: 3, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5770, file: !2, line: 105, column: 3)
!5770 = distinct !DILexicalBlock(scope: !5771, file: !2, line: 105, column: 3)
!5771 = distinct !DILexicalBlock(scope: !5772, file: !2, line: 105, column: 3)
!5772 = distinct !DILexicalBlock(scope: !5735, file: !2, line: 105, column: 3)
!5773 = distinct !{!5773, !5763, !5774, !5652, !5653}
!5774 = !DILocation(line: 105, column: 3, scope: !5735)
!5775 = !DILocation(line: 106, column: 1, scope: !5735)
!5776 = distinct !DISubprogram(name: "snd_hdac_bus_send_cmd", scope: !2, file: !2, line: 145, type: !4734, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5777)
!5777 = !{!5778, !5779, !5780, !5781, !5782}
!5778 = !DILocalVariable(name: "bus", arg: 1, scope: !5776, file: !2, line: 145, type: !191)
!5779 = !DILocalVariable(name: "val", arg: 2, scope: !5776, file: !2, line: 145, type: !13)
!5780 = !DILocalVariable(name: "addr", scope: !5776, file: !2, line: 147, type: !13)
!5781 = !DILocalVariable(name: "wp", scope: !5776, file: !2, line: 148, type: !13)
!5782 = !DILocalVariable(name: "rp", scope: !5776, file: !2, line: 148, type: !13)
!5783 = !DILocation(line: 145, column: 44, scope: !5776)
!5784 = !DILocation(line: 145, column: 62, scope: !5776)
!5785 = !DILocation(line: 147, column: 2, scope: !5776)
!5786 = !DILocation(line: 147, column: 15, scope: !5776)
!5787 = !DILocation(line: 147, column: 39, scope: !5776)
!5788 = !DILocation(line: 147, column: 22, scope: !5776)
!5789 = !DILocation(line: 148, column: 2, scope: !5776)
!5790 = !DILocation(line: 148, column: 15, scope: !5776)
!5791 = !DILocation(line: 148, column: 19, scope: !5776)
!5792 = !DILocation(line: 150, column: 17, scope: !5776)
!5793 = !DILocation(line: 150, column: 22, scope: !5776)
!5794 = !DILocation(line: 150, column: 2, scope: !5776)
!5795 = !DILocation(line: 152, column: 41, scope: !5776)
!5796 = !DILocation(line: 152, column: 2, scope: !5776)
!5797 = !DILocation(line: 152, column: 7, scope: !5776)
!5798 = !DILocation(line: 152, column: 33, scope: !5776)
!5799 = !DILocation(line: 152, column: 16, scope: !5776)
!5800 = !DILocation(line: 152, column: 39, scope: !5776)
!5801 = !DILocation(line: 155, column: 7, scope: !5776)
!5802 = !DILocation(line: 155, column: 5, scope: !5776)
!5803 = !DILocation(line: 156, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5776, file: !2, line: 156, column: 6)
!5805 = !DILocation(line: 156, column: 9, scope: !5804)
!5806 = !DILocation(line: 156, column: 6, scope: !5776)
!5807 = !DILocation(line: 158, column: 20, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5804, file: !2, line: 156, column: 20)
!5809 = !DILocation(line: 158, column: 25, scope: !5808)
!5810 = !DILocation(line: 158, column: 3, scope: !5808)
!5811 = !DILocation(line: 159, column: 3, scope: !5808)
!5812 = !DILocation(line: 161, column: 4, scope: !5776)
!5813 = !DILocation(line: 162, column: 5, scope: !5776)
!5814 = !DILocation(line: 164, column: 7, scope: !5776)
!5815 = !DILocation(line: 164, column: 5, scope: !5776)
!5816 = !DILocation(line: 165, column: 6, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5776, file: !2, line: 165, column: 6)
!5818 = !DILocation(line: 165, column: 12, scope: !5817)
!5819 = !DILocation(line: 165, column: 9, scope: !5817)
!5820 = !DILocation(line: 165, column: 6, scope: !5776)
!5821 = !DILocation(line: 167, column: 20, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5817, file: !2, line: 165, column: 16)
!5823 = !DILocation(line: 167, column: 25, scope: !5822)
!5824 = !DILocation(line: 167, column: 3, scope: !5822)
!5825 = !DILocation(line: 168, column: 3, scope: !5822)
!5826 = !DILocation(line: 171, column: 2, scope: !5776)
!5827 = !DILocation(line: 171, column: 7, scope: !5776)
!5828 = !DILocation(line: 171, column: 12, scope: !5776)
!5829 = !DILocation(line: 171, column: 17, scope: !5776)
!5830 = !DILocation(line: 171, column: 22, scope: !5776)
!5831 = !DILocation(line: 172, column: 22, scope: !5776)
!5832 = !DILocation(line: 172, column: 2, scope: !5776)
!5833 = !DILocation(line: 172, column: 7, scope: !5776)
!5834 = !DILocation(line: 172, column: 12, scope: !5776)
!5835 = !DILocation(line: 172, column: 16, scope: !5776)
!5836 = !DILocation(line: 172, column: 20, scope: !5776)
!5837 = !DILocation(line: 173, column: 2, scope: !5776)
!5838 = !DILocation(line: 175, column: 19, scope: !5776)
!5839 = !DILocation(line: 175, column: 24, scope: !5776)
!5840 = !DILocation(line: 175, column: 2, scope: !5776)
!5841 = !DILocation(line: 177, column: 2, scope: !5776)
!5842 = !DILocation(line: 178, column: 1, scope: !5776)
!5843 = distinct !DISubprogram(name: "azx_command_addr", scope: !2, file: !2, line: 129, type: !5844, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5846)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{!13, !182}
!5846 = !{!5847, !5848, !5849}
!5847 = !DILocalVariable(name: "cmd", arg: 1, scope: !5843, file: !2, line: 129, type: !182)
!5848 = !DILocalVariable(name: "addr", scope: !5843, file: !2, line: 131, type: !13)
!5849 = !DILocalVariable(name: "__ret_warn_on", scope: !5850, file: !2, line: 133, type: !115)
!5850 = distinct !DILexicalBlock(scope: !5851, file: !2, line: 133, column: 6)
!5851 = distinct !DILexicalBlock(scope: !5843, file: !2, line: 133, column: 6)
!5852 = !DILocation(line: 129, column: 42, scope: !5843)
!5853 = !DILocation(line: 131, column: 2, scope: !5843)
!5854 = !DILocation(line: 131, column: 15, scope: !5843)
!5855 = !DILocation(line: 131, column: 22, scope: !5843)
!5856 = !DILocation(line: 131, column: 26, scope: !5843)
!5857 = !DILocation(line: 133, column: 6, scope: !5850)
!5858 = !DILocation(line: 133, column: 6, scope: !5851)
!5859 = !DILocation(line: 133, column: 6, scope: !5843)
!5860 = !DILocation(line: 134, column: 8, scope: !5851)
!5861 = !DILocation(line: 134, column: 3, scope: !5851)
!5862 = !DILocation(line: 135, column: 9, scope: !5843)
!5863 = !DILocation(line: 136, column: 1, scope: !5843)
!5864 = !DILocation(line: 135, column: 2, scope: !5843)
!5865 = distinct !DISubprogram(name: "snd_hdac_reg_readw", scope: !188, file: !188, line: 449, type: !5866, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5868)
!5866 = !DISubroutineType(types: !5867)
!5867 = !{!256, !191, !184}
!5868 = !{!5869, !5870}
!5869 = !DILocalVariable(name: "bus", arg: 1, scope: !5865, file: !188, line: 449, type: !191)
!5870 = !DILocalVariable(name: "addr", arg: 2, scope: !5865, file: !188, line: 449, type: !184)
!5871 = !DILocation(line: 449, column: 55, scope: !5865)
!5872 = !DILocation(line: 449, column: 74, scope: !5865)
!5873 = !DILocation(line: 452, column: 47, scope: !5865)
!5874 = !DILocation(line: 452, column: 41, scope: !5865)
!5875 = !DILocation(line: 451, column: 9, scope: !5865)
!5876 = !DILocation(line: 451, column: 2, scope: !5865)
!5877 = !DILocation(line: 190, column: 48, scope: !5406)
!5878 = !DILocation(line: 192, column: 2, scope: !5406)
!5879 = !DILocation(line: 192, column: 15, scope: !5406)
!5880 = !DILocation(line: 192, column: 19, scope: !5406)
!5881 = !DILocation(line: 193, column: 2, scope: !5406)
!5882 = !DILocation(line: 193, column: 15, scope: !5406)
!5883 = !DILocation(line: 194, column: 2, scope: !5406)
!5884 = !DILocation(line: 194, column: 6, scope: !5406)
!5885 = !DILocation(line: 194, column: 11, scope: !5406)
!5886 = !DILocation(line: 196, column: 7, scope: !5406)
!5887 = !DILocation(line: 196, column: 5, scope: !5406)
!5888 = !DILocation(line: 197, column: 6, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5406, file: !2, line: 197, column: 6)
!5890 = !DILocation(line: 197, column: 9, scope: !5889)
!5891 = !DILocation(line: 197, column: 6, scope: !5406)
!5892 = !DILocation(line: 199, column: 3, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5889, file: !2, line: 197, column: 20)
!5894 = !DILocation(line: 202, column: 6, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5406, file: !2, line: 202, column: 6)
!5896 = !DILocation(line: 202, column: 12, scope: !5895)
!5897 = !DILocation(line: 202, column: 17, scope: !5895)
!5898 = !DILocation(line: 202, column: 22, scope: !5895)
!5899 = !DILocation(line: 202, column: 9, scope: !5895)
!5900 = !DILocation(line: 202, column: 6, scope: !5406)
!5901 = !DILocation(line: 203, column: 3, scope: !5895)
!5902 = !DILocation(line: 204, column: 17, scope: !5406)
!5903 = !DILocation(line: 204, column: 2, scope: !5406)
!5904 = !DILocation(line: 204, column: 7, scope: !5406)
!5905 = !DILocation(line: 204, column: 12, scope: !5406)
!5906 = !DILocation(line: 204, column: 15, scope: !5406)
!5907 = !DILocation(line: 206, column: 2, scope: !5406)
!5908 = !DILocation(line: 206, column: 9, scope: !5406)
!5909 = !DILocation(line: 206, column: 14, scope: !5406)
!5910 = !DILocation(line: 206, column: 19, scope: !5406)
!5911 = !DILocation(line: 206, column: 25, scope: !5406)
!5912 = !DILocation(line: 206, column: 22, scope: !5406)
!5913 = !DILocation(line: 207, column: 3, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5406, file: !2, line: 206, column: 29)
!5915 = !DILocation(line: 207, column: 8, scope: !5914)
!5916 = !DILocation(line: 207, column: 13, scope: !5914)
!5917 = !DILocation(line: 207, column: 15, scope: !5914)
!5918 = !DILocation(line: 208, column: 3, scope: !5914)
!5919 = !DILocation(line: 208, column: 8, scope: !5914)
!5920 = !DILocation(line: 208, column: 13, scope: !5914)
!5921 = !DILocation(line: 208, column: 16, scope: !5914)
!5922 = !DILocation(line: 210, column: 8, scope: !5914)
!5923 = !DILocation(line: 210, column: 13, scope: !5914)
!5924 = !DILocation(line: 210, column: 18, scope: !5914)
!5925 = !DILocation(line: 210, column: 21, scope: !5914)
!5926 = !DILocation(line: 210, column: 6, scope: !5914)
!5927 = !DILocation(line: 211, column: 12, scope: !5914)
!5928 = !DILocation(line: 211, column: 10, scope: !5914)
!5929 = !DILocation(line: 212, column: 9, scope: !5914)
!5930 = !DILocation(line: 212, column: 7, scope: !5914)
!5931 = !DILocation(line: 213, column: 10, scope: !5914)
!5932 = !DILocation(line: 213, column: 17, scope: !5914)
!5933 = !DILocation(line: 213, column: 8, scope: !5914)
!5934 = !DILocation(line: 214, column: 7, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5914, file: !2, line: 214, column: 7)
!5936 = !DILocation(line: 214, column: 12, scope: !5935)
!5937 = !DILocation(line: 214, column: 7, scope: !5914)
!5938 = !DILocation(line: 215, column: 4, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5940, file: !2, line: 215, column: 4)
!5940 = distinct !DILexicalBlock(scope: !5935, file: !2, line: 214, column: 31)
!5941 = !DILocation(line: 215, column: 4, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5939, file: !2, line: 215, column: 4)
!5943 = !DILocation(line: 218, column: 4, scope: !5940)
!5944 = !DILocation(line: 218, column: 4, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5940, file: !2, line: 218, column: 4)
!5946 = !DILocation(line: 219, column: 3, scope: !5940)
!5947 = !DILocation(line: 219, column: 14, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5935, file: !2, line: 219, column: 14)
!5949 = !DILocation(line: 219, column: 21, scope: !5948)
!5950 = !DILocation(line: 219, column: 14, scope: !5935)
!5951 = !DILocation(line: 220, column: 29, scope: !5948)
!5952 = !DILocation(line: 220, column: 34, scope: !5948)
!5953 = !DILocation(line: 220, column: 39, scope: !5948)
!5954 = !DILocation(line: 220, column: 4, scope: !5948)
!5955 = !DILocation(line: 221, column: 12, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5948, file: !2, line: 221, column: 12)
!5957 = !DILocation(line: 221, column: 17, scope: !5956)
!5958 = !DILocation(line: 221, column: 22, scope: !5956)
!5959 = !DILocation(line: 221, column: 27, scope: !5956)
!5960 = !DILocation(line: 221, column: 12, scope: !5948)
!5961 = !DILocation(line: 222, column: 26, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 221, column: 34)
!5963 = !DILocation(line: 222, column: 4, scope: !5962)
!5964 = !DILocation(line: 222, column: 9, scope: !5962)
!5965 = !DILocation(line: 222, column: 14, scope: !5962)
!5966 = !DILocation(line: 222, column: 18, scope: !5962)
!5967 = !DILocation(line: 222, column: 24, scope: !5962)
!5968 = !DILocation(line: 223, column: 4, scope: !5962)
!5969 = !DILocation(line: 223, column: 9, scope: !5962)
!5970 = !DILocation(line: 223, column: 14, scope: !5962)
!5971 = !DILocation(line: 223, column: 19, scope: !5962)
!5972 = !DILocation(line: 223, column: 24, scope: !5962)
!5973 = !DILocation(line: 224, column: 9, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5962, file: !2, line: 224, column: 8)
!5975 = !DILocation(line: 224, column: 14, scope: !5974)
!5976 = !DILocation(line: 224, column: 19, scope: !5974)
!5977 = !DILocation(line: 224, column: 24, scope: !5974)
!5978 = !DILocation(line: 224, column: 30, scope: !5974)
!5979 = !DILocation(line: 225, column: 26, scope: !5974)
!5980 = !DILocation(line: 225, column: 31, scope: !5974)
!5981 = !DILocation(line: 225, column: 8, scope: !5974)
!5982 = !DILocation(line: 224, column: 8, scope: !5962)
!5983 = !DILocation(line: 226, column: 5, scope: !5974)
!5984 = !DILocation(line: 227, column: 3, scope: !5962)
!5985 = !DILocation(line: 228, column: 4, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 227, column: 10)
!5987 = !DILocation(line: 228, column: 4, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5989, file: !2, line: 228, column: 4)
!5989 = distinct !DILexicalBlock(scope: !5986, file: !2, line: 228, column: 4)
!5990 = !DILocation(line: 228, column: 4, scope: !5989)
!5991 = !DILocation(line: 228, column: 4, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5988, file: !2, line: 228, column: 4)
!5993 = !DILocation(line: 228, column: 4, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5992, file: !2, line: 228, column: 4)
!5995 = distinct !{!5995, !5907, !5996, !5652, !5653}
!5996 = !DILocation(line: 232, column: 2, scope: !5406)
!5997 = !DILocation(line: 233, column: 1, scope: !5406)
!5998 = !DISubprogram(name: "_dev_err", scope: !5999, file: !5999, line: 50, type: !6000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5999 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6000 = !DISubroutineType(types: !6001)
!6001 = !{null, !4216, !203, null}
!6002 = !DISubprogram(name: "snd_hdac_bus_queue_event", scope: !6003, file: !6003, line: 39, type: !6004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6003 = !DIFile(filename: "sound/hda/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bce2a319d6874fd9f98f491157f60fc4")
!6004 = !DISubroutineType(types: !6005)
!6005 = !{null, !191, !182, !182}
!6006 = distinct !DISubprogram(name: "waitqueue_active", scope: !1382, file: !1382, line: 127, type: !6007, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6010)
!6007 = !DISubroutineType(types: !6008)
!6008 = !{!115, !6009}
!6009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!6010 = !{!6011}
!6011 = !DILocalVariable(name: "wq_head", arg: 1, scope: !6006, file: !1382, line: 127, type: !6009)
!6012 = !DILocation(line: 127, column: 60, scope: !6006)
!6013 = !DILocation(line: 129, column: 22, scope: !6006)
!6014 = !DILocation(line: 129, column: 31, scope: !6006)
!6015 = !DILocation(line: 129, column: 10, scope: !6006)
!6016 = !DILocation(line: 129, column: 9, scope: !6006)
!6017 = !DILocation(line: 129, column: 2, scope: !6006)
!6018 = !DISubprogram(name: "__wake_up", scope: !1382, file: !1382, line: 212, type: !6019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{!115, !6009, !13, !115, !184}
!6021 = !DISubprogram(name: "___ratelimit", scope: !1945, file: !1945, line: 44, type: !6022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6022 = !DISubroutineType(types: !6023)
!6023 = !{!115, !6024, !203}
!6024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!6025 = distinct !DISubprogram(name: "snd_hdac_bus_get_response", scope: !2, file: !2, line: 244, type: !4738, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6026)
!6026 = !{!6027, !6028, !6029, !6030, !6031, !6032, !6045}
!6027 = !DILocalVariable(name: "bus", arg: 1, scope: !6025, file: !2, line: 244, type: !191)
!6028 = !DILocalVariable(name: "addr", arg: 2, scope: !6025, file: !2, line: 244, type: !13)
!6029 = !DILocalVariable(name: "res", arg: 3, scope: !6025, file: !2, line: 245, type: !698)
!6030 = !DILocalVariable(name: "timeout", scope: !6025, file: !2, line: 247, type: !337)
!6031 = !DILocalVariable(name: "loopcounter", scope: !6025, file: !2, line: 248, type: !337)
!6032 = !DILocalVariable(name: "wait", scope: !6025, file: !2, line: 249, type: !6033)
!6033 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1382, line: 14, baseType: !6034)
!6034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1382, line: 30, size: 320, elements: !6035)
!6035 = !{!6036, !6037, !6038, !6044}
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6034, file: !1382, line: 31, baseType: !13, size: 32)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6034, file: !1382, line: 32, baseType: !184, size: 64, offset: 64)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6034, file: !1382, line: 33, baseType: !6039, size: 64, offset: 128)
!6039 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1382, line: 16, baseType: !6040)
!6040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6041, size: 64)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!115, !6043, !13, !115, !184}
!6043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6034, size: 64)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6034, file: !1382, line: 34, baseType: !206, size: 128, offset: 192)
!6045 = !DILocalVariable(name: "warned", scope: !6025, file: !2, line: 250, type: !706)
!6046 = !DILocation(line: 244, column: 48, scope: !6025)
!6047 = !DILocation(line: 244, column: 66, scope: !6025)
!6048 = !DILocation(line: 245, column: 24, scope: !6025)
!6049 = !DILocation(line: 247, column: 2, scope: !6025)
!6050 = !DILocation(line: 247, column: 16, scope: !6025)
!6051 = !DILocation(line: 248, column: 2, scope: !6025)
!6052 = !DILocation(line: 248, column: 16, scope: !6025)
!6053 = !DILocation(line: 249, column: 2, scope: !6025)
!6054 = !DILocation(line: 249, column: 21, scope: !6025)
!6055 = !DILocation(line: 250, column: 2, scope: !6025)
!6056 = !DILocation(line: 250, column: 7, scope: !6025)
!6057 = !DILocation(line: 252, column: 2, scope: !6025)
!6058 = !DILocation(line: 253, column: 12, scope: !6025)
!6059 = !DILocation(line: 253, column: 22, scope: !6025)
!6060 = !DILocation(line: 253, column: 20, scope: !6025)
!6061 = !DILocation(line: 253, column: 10, scope: !6025)
!6062 = !DILocation(line: 255, column: 19, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6025, file: !2, line: 255, column: 2)
!6064 = !DILocation(line: 255, column: 7, scope: !6063)
!6065 = !DILocation(line: 256, column: 18, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6067, file: !2, line: 255, column: 40)
!6067 = distinct !DILexicalBlock(scope: !6063, file: !2, line: 255, column: 2)
!6068 = !DILocation(line: 256, column: 23, scope: !6066)
!6069 = !DILocation(line: 256, column: 3, scope: !6066)
!6070 = !DILocation(line: 257, column: 8, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 257, column: 7)
!6072 = !DILocation(line: 257, column: 13, scope: !6071)
!6073 = !DILocation(line: 257, column: 7, scope: !6066)
!6074 = !DILocation(line: 258, column: 21, scope: !6071)
!6075 = !DILocation(line: 258, column: 26, scope: !6071)
!6076 = !DILocation(line: 258, column: 4, scope: !6071)
!6077 = !DILocation(line: 260, column: 7, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 260, column: 7)
!6079 = !DILocation(line: 260, column: 12, scope: !6078)
!6080 = !DILocation(line: 260, column: 7, scope: !6066)
!6081 = !DILocation(line: 261, column: 29, scope: !6078)
!6082 = !DILocation(line: 261, column: 4, scope: !6078)
!6083 = !DILocation(line: 262, column: 8, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 262, column: 7)
!6085 = !DILocation(line: 262, column: 13, scope: !6084)
!6086 = !DILocation(line: 262, column: 18, scope: !6084)
!6087 = !DILocation(line: 262, column: 23, scope: !6084)
!6088 = !DILocation(line: 262, column: 7, scope: !6066)
!6089 = !DILocation(line: 263, column: 8, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 263, column: 8)
!6091 = distinct !DILexicalBlock(scope: !6084, file: !2, line: 262, column: 30)
!6092 = !DILocation(line: 263, column: 8, scope: !6091)
!6093 = !DILocation(line: 264, column: 12, scope: !6090)
!6094 = !DILocation(line: 264, column: 17, scope: !6090)
!6095 = !DILocation(line: 264, column: 22, scope: !6090)
!6096 = !DILocation(line: 264, column: 26, scope: !6090)
!6097 = !DILocation(line: 264, column: 6, scope: !6090)
!6098 = !DILocation(line: 264, column: 10, scope: !6090)
!6099 = !DILocation(line: 264, column: 5, scope: !6090)
!6100 = !DILocation(line: 265, column: 9, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 265, column: 8)
!6102 = !DILocation(line: 265, column: 14, scope: !6101)
!6103 = !DILocation(line: 265, column: 8, scope: !6091)
!6104 = !DILocation(line: 266, column: 18, scope: !6101)
!6105 = !DILocation(line: 266, column: 23, scope: !6101)
!6106 = !DILocation(line: 266, column: 5, scope: !6101)
!6107 = !DILocation(line: 267, column: 21, scope: !6091)
!6108 = !DILocation(line: 267, column: 26, scope: !6091)
!6109 = !DILocation(line: 267, column: 4, scope: !6091)
!6110 = !DILocation(line: 268, column: 4, scope: !6091)
!6111 = !DILocation(line: 270, column: 20, scope: !6066)
!6112 = !DILocation(line: 270, column: 25, scope: !6066)
!6113 = !DILocation(line: 270, column: 3, scope: !6066)
!6114 = !DILocation(line: 271, column: 7, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 271, column: 7)
!6116 = !DILocation(line: 271, column: 7, scope: !6066)
!6117 = !DILocation(line: 272, column: 4, scope: !6115)
!6118 = !DILocation(line: 274, column: 8, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 274, column: 7)
!6120 = !DILocation(line: 274, column: 13, scope: !6119)
!6121 = !DILocation(line: 274, column: 7, scope: !6066)
!6122 = !DILocation(line: 275, column: 21, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6119, file: !2, line: 274, column: 27)
!6124 = !DILocation(line: 275, column: 4, scope: !6123)
!6125 = !DILocation(line: 276, column: 3, scope: !6123)
!6126 = !DILocation(line: 276, column: 14, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6119, file: !2, line: 276, column: 14)
!6128 = !DILocation(line: 276, column: 19, scope: !6127)
!6129 = !DILocation(line: 276, column: 41, scope: !6127)
!6130 = !DILocation(line: 277, column: 7, scope: !6127)
!6131 = !DILocation(line: 277, column: 19, scope: !6127)
!6132 = !DILocation(line: 276, column: 14, scope: !6119)
!6133 = !DILocation(line: 278, column: 8, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6135, file: !2, line: 278, column: 8)
!6135 = distinct !DILexicalBlock(scope: !6127, file: !2, line: 277, column: 37)
!6136 = !DILocation(line: 278, column: 20, scope: !6134)
!6137 = !DILocation(line: 278, column: 37, scope: !6134)
!6138 = !DILocation(line: 278, column: 41, scope: !6134)
!6139 = !{i8 0, i8 2}
!6140 = !DILocation(line: 278, column: 8, scope: !6135)
!6141 = !DILocation(line: 282, column: 12, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6134, file: !2, line: 278, column: 49)
!6143 = !DILocation(line: 283, column: 4, scope: !6142)
!6144 = !DILocation(line: 284, column: 4, scope: !6135)
!6145 = !DILocation(line: 285, column: 3, scope: !6135)
!6146 = !DILocation(line: 286, column: 4, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6148, file: !2, line: 286, column: 4)
!6148 = distinct !DILexicalBlock(scope: !6149, file: !2, line: 286, column: 4)
!6149 = distinct !DILexicalBlock(scope: !6150, file: !2, line: 286, column: 4)
!6150 = distinct !DILexicalBlock(scope: !6151, file: !2, line: 286, column: 4)
!6151 = distinct !DILexicalBlock(scope: !6127, file: !2, line: 285, column: 10)
!6152 = !DILocation(line: 287, column: 4, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6151, file: !2, line: 287, column: 4)
!6154 = !DILocation(line: 289, column: 2, scope: !6066)
!6155 = !DILocation(line: 255, column: 36, scope: !6067)
!6156 = !DILocation(line: 255, column: 2, scope: !6067)
!6157 = distinct !{!6157, !6158, !6159, !5653}
!6158 = !DILocation(line: 255, column: 2, scope: !6063)
!6159 = !DILocation(line: 289, column: 2, scope: !6063)
!6160 = !DILocation(line: 291, column: 7, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6025, file: !2, line: 291, column: 6)
!6162 = !DILocation(line: 291, column: 12, scope: !6161)
!6163 = !DILocation(line: 291, column: 6, scope: !6025)
!6164 = !DILocation(line: 292, column: 16, scope: !6161)
!6165 = !DILocation(line: 292, column: 21, scope: !6161)
!6166 = !DILocation(line: 292, column: 3, scope: !6161)
!6167 = !DILocation(line: 294, column: 2, scope: !6025)
!6168 = !DILocation(line: 295, column: 1, scope: !6025)
!6169 = !DISubprogram(name: "init_wait_entry", scope: !1382, file: !1382, line: 290, type: !6170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{null, !6043, !115}
!6172 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6173, file: !6173, line: 515, type: !6174, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6176)
!6173 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!6174 = !DISubroutineType(types: !6175)
!6175 = !{!337, !3817}
!6176 = !{!6177}
!6177 = !DILocalVariable(name: "m", arg: 1, scope: !6172, file: !6173, line: 515, type: !3817)
!6178 = !DILocation(line: 515, column: 74, scope: !6172)
!6179 = !DILocation(line: 517, column: 27, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6172, file: !6173, line: 517, column: 6)
!6181 = !DILocation(line: 517, column: 6, scope: !6180)
!6182 = !DILocation(line: 517, column: 6, scope: !6172)
!6183 = !DILocation(line: 518, column: 12, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6185, file: !6173, line: 518, column: 7)
!6185 = distinct !DILexicalBlock(scope: !6180, file: !6173, line: 517, column: 31)
!6186 = !DILocation(line: 518, column: 14, scope: !6184)
!6187 = !DILocation(line: 518, column: 7, scope: !6185)
!6188 = !DILocation(line: 519, column: 4, scope: !6184)
!6189 = !DILocation(line: 520, column: 28, scope: !6185)
!6190 = !DILocation(line: 520, column: 10, scope: !6185)
!6191 = !DILocation(line: 520, column: 3, scope: !6185)
!6192 = !DILocation(line: 522, column: 29, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6180, file: !6173, line: 521, column: 9)
!6194 = !DILocation(line: 522, column: 10, scope: !6193)
!6195 = !DILocation(line: 522, column: 3, scope: !6193)
!6196 = !DILocation(line: 524, column: 1, scope: !6172)
!6197 = !DISubprogram(name: "prepare_to_wait", scope: !1382, file: !1382, line: 1197, type: !6198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{null, !6009, !6043, !115}
!6200 = !DISubprogram(name: "finish_wait", scope: !1382, file: !1382, line: 1200, type: !6201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6201 = !DISubroutineType(types: !6202)
!6202 = !{null, !6009, !6043}
!6203 = !DISubprogram(name: "schedule_timeout", scope: !1070, file: !1070, line: 298, type: !6204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6204 = !DISubroutineType(types: !6205)
!6205 = !{!185, !185}
!6206 = !DISubprogram(name: "msleep", scope: !6207, file: !6207, line: 61, type: !6208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6207 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6208 = !DISubroutineType(types: !6209)
!6209 = !{null, !13}
!6210 = !DISubprogram(name: "__const_udelay", scope: !6211, file: !6211, line: 11, type: !6212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6211 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!6212 = !DISubroutineType(types: !6213)
!6213 = !{null, !337}
!6214 = distinct !DISubprogram(name: "__might_resched", scope: !6215, file: !6215, line: 184, type: !6216, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6218)
!6215 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6216 = !DISubroutineType(types: !6217)
!6217 = !{null, !203, !115, !13}
!6218 = !{!6219, !6220, !6221}
!6219 = !DILocalVariable(name: "file", arg: 1, scope: !6214, file: !6215, line: 184, type: !203)
!6220 = !DILocalVariable(name: "line", arg: 2, scope: !6214, file: !6215, line: 184, type: !115)
!6221 = !DILocalVariable(name: "offsets", arg: 3, scope: !6214, file: !6215, line: 185, type: !13)
!6222 = !DILocation(line: 184, column: 50, scope: !6214)
!6223 = !DILocation(line: 184, column: 60, scope: !6214)
!6224 = !DILocation(line: 185, column: 23, scope: !6214)
!6225 = !DILocation(line: 185, column: 34, scope: !6214)
!6226 = !DILocation(line: 2104, column: 9, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !5469, file: !1070, line: 2104, column: 9)
!6228 = !DILocation(line: 2104, column: 9, scope: !5469)
!6229 = !DILocation(line: 2104, column: 2, scope: !5469)
!6230 = distinct !DISubprogram(name: "snd_hdac_bus_parse_capabilities", scope: !2, file: !2, line: 305, type: !6231, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6233)
!6231 = !DISubroutineType(types: !6232)
!6232 = !{!115, !191}
!6233 = !{!6234, !6235, !6236, !6237}
!6234 = !DILocalVariable(name: "bus", arg: 1, scope: !6230, file: !2, line: 305, type: !191)
!6235 = !DILocalVariable(name: "cur_cap", scope: !6230, file: !2, line: 307, type: !13)
!6236 = !DILocalVariable(name: "offset", scope: !6230, file: !2, line: 308, type: !13)
!6237 = !DILocalVariable(name: "counter", scope: !6230, file: !2, line: 309, type: !13)
!6238 = !DILocation(line: 305, column: 54, scope: !6230)
!6239 = !DILocation(line: 307, column: 2, scope: !6230)
!6240 = !DILocation(line: 307, column: 15, scope: !6230)
!6241 = !DILocation(line: 308, column: 2, scope: !6230)
!6242 = !DILocation(line: 308, column: 15, scope: !6230)
!6243 = !DILocation(line: 309, column: 2, scope: !6230)
!6244 = !DILocation(line: 309, column: 15, scope: !6230)
!6245 = !DILocation(line: 311, column: 11, scope: !6230)
!6246 = !DILocation(line: 311, column: 9, scope: !6230)
!6247 = !DILocation(line: 314, column: 2, scope: !6230)
!6248 = !DILocation(line: 315, column: 13, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6230, file: !2, line: 314, column: 5)
!6250 = !DILocation(line: 315, column: 11, scope: !6249)
!6251 = !DILocation(line: 323, column: 7, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6249, file: !2, line: 323, column: 7)
!6253 = !DILocation(line: 323, column: 15, scope: !6252)
!6254 = !DILocation(line: 323, column: 7, scope: !6249)
!6255 = !DILocation(line: 325, column: 4, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6252, file: !2, line: 323, column: 22)
!6257 = !DILocation(line: 328, column: 12, scope: !6249)
!6258 = !DILocation(line: 328, column: 20, scope: !6249)
!6259 = !DILocation(line: 328, column: 43, scope: !6249)
!6260 = !DILocation(line: 328, column: 3, scope: !6249)
!6261 = !DILocation(line: 331, column: 17, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6249, file: !2, line: 328, column: 66)
!6263 = !DILocation(line: 331, column: 22, scope: !6262)
!6264 = !DILocation(line: 331, column: 35, scope: !6262)
!6265 = !DILocation(line: 331, column: 33, scope: !6262)
!6266 = !DILocation(line: 331, column: 4, scope: !6262)
!6267 = !DILocation(line: 331, column: 9, scope: !6262)
!6268 = !DILocation(line: 331, column: 15, scope: !6262)
!6269 = !DILocation(line: 332, column: 4, scope: !6262)
!6270 = !DILocation(line: 336, column: 18, scope: !6262)
!6271 = !DILocation(line: 336, column: 23, scope: !6262)
!6272 = !DILocation(line: 336, column: 36, scope: !6262)
!6273 = !DILocation(line: 336, column: 34, scope: !6262)
!6274 = !DILocation(line: 336, column: 4, scope: !6262)
!6275 = !DILocation(line: 336, column: 9, scope: !6262)
!6276 = !DILocation(line: 336, column: 16, scope: !6262)
!6277 = !DILocation(line: 337, column: 4, scope: !6262)
!6278 = !DILocation(line: 342, column: 17, scope: !6262)
!6279 = !DILocation(line: 342, column: 22, scope: !6262)
!6280 = !DILocation(line: 342, column: 35, scope: !6262)
!6281 = !DILocation(line: 342, column: 33, scope: !6262)
!6282 = !DILocation(line: 342, column: 4, scope: !6262)
!6283 = !DILocation(line: 342, column: 9, scope: !6262)
!6284 = !DILocation(line: 342, column: 15, scope: !6262)
!6285 = !DILocation(line: 343, column: 4, scope: !6262)
!6286 = !DILocation(line: 348, column: 18, scope: !6262)
!6287 = !DILocation(line: 348, column: 23, scope: !6262)
!6288 = !DILocation(line: 348, column: 36, scope: !6262)
!6289 = !DILocation(line: 348, column: 34, scope: !6262)
!6290 = !DILocation(line: 348, column: 4, scope: !6262)
!6291 = !DILocation(line: 348, column: 9, scope: !6262)
!6292 = !DILocation(line: 348, column: 16, scope: !6262)
!6293 = !DILocation(line: 349, column: 4, scope: !6262)
!6294 = !DILocation(line: 354, column: 19, scope: !6262)
!6295 = !DILocation(line: 354, column: 24, scope: !6262)
!6296 = !DILocation(line: 354, column: 37, scope: !6262)
!6297 = !DILocation(line: 354, column: 35, scope: !6262)
!6298 = !DILocation(line: 354, column: 4, scope: !6262)
!6299 = !DILocation(line: 354, column: 9, scope: !6262)
!6300 = !DILocation(line: 354, column: 17, scope: !6262)
!6301 = !DILocation(line: 355, column: 4, scope: !6262)
!6302 = !DILocation(line: 358, column: 4, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 358, column: 4)
!6304 = !DILocation(line: 358, column: 4, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6303, file: !2, line: 358, column: 4)
!6306 = !DILocation(line: 359, column: 12, scope: !6262)
!6307 = !DILocation(line: 360, column: 4, scope: !6262)
!6308 = !DILocation(line: 363, column: 10, scope: !6249)
!6309 = !DILocation(line: 365, column: 7, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6249, file: !2, line: 365, column: 7)
!6311 = !DILocation(line: 365, column: 15, scope: !6310)
!6312 = !DILocation(line: 365, column: 7, scope: !6249)
!6313 = !DILocation(line: 366, column: 4, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6315, file: !2, line: 366, column: 4)
!6315 = distinct !DILexicalBlock(scope: !6310, file: !2, line: 365, column: 32)
!6316 = !DILocation(line: 366, column: 4, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6314, file: !2, line: 366, column: 4)
!6318 = !DILocation(line: 367, column: 4, scope: !6315)
!6319 = !DILocation(line: 371, column: 12, scope: !6249)
!6320 = !DILocation(line: 371, column: 20, scope: !6249)
!6321 = !DILocation(line: 371, column: 10, scope: !6249)
!6322 = !DILocation(line: 373, column: 2, scope: !6249)
!6323 = !DILocation(line: 373, column: 11, scope: !6230)
!6324 = distinct !{!6324, !6247, !6325, !5652, !5653}
!6325 = !DILocation(line: 373, column: 17, scope: !6230)
!6326 = !DILocation(line: 376, column: 1, scope: !6230)
!6327 = !DILocation(line: 375, column: 2, scope: !6230)
!6328 = distinct !DISubprogram(name: "snd_hdac_bus_enter_link_reset", scope: !2, file: !2, line: 389, type: !5407, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6329)
!6329 = !{!6330, !6331}
!6330 = !DILocalVariable(name: "bus", arg: 1, scope: !6328, file: !2, line: 389, type: !191)
!6331 = !DILocalVariable(name: "timeout", scope: !6328, file: !2, line: 391, type: !337)
!6332 = !DILocation(line: 389, column: 53, scope: !6328)
!6333 = !DILocation(line: 391, column: 2, scope: !6328)
!6334 = !DILocation(line: 391, column: 16, scope: !6328)
!6335 = !DILocation(line: 394, column: 2, scope: !6328)
!6336 = !DILocation(line: 396, column: 12, scope: !6328)
!6337 = !DILocation(line: 396, column: 22, scope: !6328)
!6338 = !DILocation(line: 396, column: 20, scope: !6328)
!6339 = !DILocation(line: 396, column: 10, scope: !6328)
!6340 = !DILocation(line: 397, column: 2, scope: !6328)
!6341 = !DILocation(line: 397, column: 10, scope: !6328)
!6342 = !DILocation(line: 397, column: 41, scope: !6328)
!6343 = !DILocation(line: 397, column: 59, scope: !6328)
!6344 = !DILocation(line: 398, column: 9, scope: !6328)
!6345 = !DILocation(line: 0, scope: !6328)
!6346 = !DILocation(line: 399, column: 3, scope: !6328)
!6347 = distinct !{!6347, !6340, !6348, !5652, !5653}
!6348 = !DILocation(line: 399, column: 25, scope: !6328)
!6349 = !DILocation(line: 400, column: 1, scope: !6328)
!6350 = distinct !DISubprogram(name: "snd_hdac_reg_readb", scope: !188, file: !188, line: 443, type: !6351, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6353)
!6351 = !DISubroutineType(types: !6352)
!6352 = !{!248, !191, !184}
!6353 = !{!6354, !6355}
!6354 = !DILocalVariable(name: "bus", arg: 1, scope: !6350, file: !188, line: 443, type: !191)
!6355 = !DILocalVariable(name: "addr", arg: 2, scope: !6350, file: !188, line: 443, type: !184)
!6356 = !DILocation(line: 443, column: 54, scope: !6350)
!6357 = !DILocation(line: 443, column: 73, scope: !6350)
!6358 = !DILocation(line: 446, column: 45, scope: !6350)
!6359 = !DILocation(line: 446, column: 39, scope: !6350)
!6360 = !DILocation(line: 445, column: 9, scope: !6350)
!6361 = !DILocation(line: 445, column: 2, scope: !6350)
!6362 = distinct !DISubprogram(name: "usleep_range", scope: !6207, file: !6207, line: 66, type: !6363, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6365)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{null, !337, !337}
!6365 = !{!6366, !6367}
!6366 = !DILocalVariable(name: "min", arg: 1, scope: !6362, file: !6207, line: 66, type: !337)
!6367 = !DILocalVariable(name: "max", arg: 2, scope: !6362, file: !6207, line: 66, type: !337)
!6368 = !DILocation(line: 66, column: 47, scope: !6362)
!6369 = !DILocation(line: 66, column: 66, scope: !6362)
!6370 = !DILocation(line: 68, column: 21, scope: !6362)
!6371 = !DILocation(line: 68, column: 26, scope: !6362)
!6372 = !DILocation(line: 68, column: 2, scope: !6362)
!6373 = !DILocation(line: 69, column: 1, scope: !6362)
!6374 = distinct !DISubprogram(name: "snd_hdac_bus_exit_link_reset", scope: !2, file: !2, line: 409, type: !5407, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6375)
!6375 = !{!6376, !6377}
!6376 = !DILocalVariable(name: "bus", arg: 1, scope: !6374, file: !2, line: 409, type: !191)
!6377 = !DILocalVariable(name: "timeout", scope: !6374, file: !2, line: 411, type: !337)
!6378 = !DILocation(line: 409, column: 52, scope: !6374)
!6379 = !DILocation(line: 411, column: 2, scope: !6374)
!6380 = !DILocation(line: 411, column: 16, scope: !6374)
!6381 = !DILocation(line: 413, column: 2, scope: !6374)
!6382 = !DILocation(line: 415, column: 12, scope: !6374)
!6383 = !DILocation(line: 415, column: 22, scope: !6374)
!6384 = !DILocation(line: 415, column: 20, scope: !6374)
!6385 = !DILocation(line: 415, column: 10, scope: !6374)
!6386 = !DILocation(line: 416, column: 2, scope: !6374)
!6387 = !DILocation(line: 416, column: 10, scope: !6374)
!6388 = !DILocation(line: 416, column: 41, scope: !6374)
!6389 = !DILocation(line: 416, column: 44, scope: !6374)
!6390 = !DILocation(line: 0, scope: !6374)
!6391 = !DILocation(line: 417, column: 3, scope: !6374)
!6392 = distinct !{!6392, !6386, !6393, !5652, !5653}
!6393 = !DILocation(line: 417, column: 25, scope: !6374)
!6394 = !DILocation(line: 418, column: 1, scope: !6374)
!6395 = distinct !DISubprogram(name: "snd_hdac_bus_reset_link", scope: !2, file: !2, line: 422, type: !6396, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6398)
!6396 = !DISubroutineType(types: !6397)
!6397 = !{!115, !191, !706}
!6398 = !{!6399, !6400, !6401}
!6399 = !DILocalVariable(name: "bus", arg: 1, scope: !6395, file: !2, line: 422, type: !191)
!6400 = !DILocalVariable(name: "full_reset", arg: 2, scope: !6395, file: !2, line: 422, type: !706)
!6401 = !DILabel(scope: !6395, name: "skip_reset", file: !2, line: 445)
!6402 = !DILocation(line: 422, column: 46, scope: !6395)
!6403 = !DILocation(line: 422, column: 56, scope: !6395)
!6404 = !DILocation(line: 424, column: 7, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6395, file: !2, line: 424, column: 6)
!6406 = !DILocation(line: 424, column: 6, scope: !6395)
!6407 = !DILocation(line: 425, column: 3, scope: !6405)
!6408 = !DILocation(line: 428, column: 6, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6395, file: !2, line: 428, column: 6)
!6410 = !DILocation(line: 428, column: 37, scope: !6409)
!6411 = !DILocation(line: 428, column: 6, scope: !6395)
!6412 = !DILocation(line: 429, column: 3, scope: !6409)
!6413 = !DILocation(line: 432, column: 32, scope: !6395)
!6414 = !DILocation(line: 432, column: 2, scope: !6395)
!6415 = !DILocation(line: 437, column: 2, scope: !6395)
!6416 = !DILocation(line: 440, column: 31, scope: !6395)
!6417 = !DILocation(line: 440, column: 2, scope: !6395)
!6418 = !DILocation(line: 443, column: 2, scope: !6395)
!6419 = !DILocation(line: 445, column: 2, scope: !6395)
!6420 = !DILocation(line: 447, column: 7, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6395, file: !2, line: 447, column: 6)
!6422 = !DILocation(line: 447, column: 6, scope: !6395)
!6423 = !DILocation(line: 449, column: 3, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6421, file: !2, line: 447, column: 39)
!6425 = !DILocation(line: 453, column: 7, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6395, file: !2, line: 453, column: 6)
!6427 = !DILocation(line: 453, column: 12, scope: !6426)
!6428 = !DILocation(line: 453, column: 6, scope: !6395)
!6429 = !DILocation(line: 454, column: 21, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6426, file: !2, line: 453, column: 24)
!6431 = !DILocation(line: 454, column: 3, scope: !6430)
!6432 = !DILocation(line: 454, column: 8, scope: !6430)
!6433 = !DILocation(line: 454, column: 19, scope: !6430)
!6434 = !DILocation(line: 456, column: 2, scope: !6430)
!6435 = !DILocation(line: 458, column: 2, scope: !6395)
!6436 = !DILocation(line: 459, column: 1, scope: !6395)
!6437 = distinct !DISubprogram(name: "snd_hdac_bus_init_chip", scope: !2, file: !2, line: 508, type: !6438, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6440)
!6438 = !DISubroutineType(types: !6439)
!6439 = !{!706, !191, !706}
!6440 = !{!6441, !6442}
!6441 = !DILocalVariable(name: "bus", arg: 1, scope: !6437, file: !2, line: 508, type: !191)
!6442 = !DILocalVariable(name: "full_reset", arg: 2, scope: !6437, file: !2, line: 508, type: !706)
!6443 = !DILocation(line: 508, column: 46, scope: !6437)
!6444 = !DILocation(line: 508, column: 56, scope: !6437)
!6445 = !DILocation(line: 510, column: 6, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6437, file: !2, line: 510, column: 6)
!6447 = !DILocation(line: 510, column: 11, scope: !6446)
!6448 = !DILocation(line: 510, column: 6, scope: !6437)
!6449 = !DILocation(line: 511, column: 3, scope: !6446)
!6450 = !DILocation(line: 514, column: 26, scope: !6437)
!6451 = !DILocation(line: 514, column: 31, scope: !6437)
!6452 = !DILocation(line: 514, column: 2, scope: !6437)
!6453 = !DILocation(line: 517, column: 16, scope: !6437)
!6454 = !DILocation(line: 517, column: 2, scope: !6437)
!6455 = !DILocation(line: 520, column: 27, scope: !6437)
!6456 = !DILocation(line: 520, column: 2, scope: !6437)
!6457 = !DILocation(line: 523, column: 17, scope: !6437)
!6458 = !DILocation(line: 523, column: 2, scope: !6437)
!6459 = !DILocation(line: 526, column: 6, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6437, file: !2, line: 526, column: 6)
!6461 = !DILocation(line: 526, column: 11, scope: !6460)
!6462 = !DILocation(line: 526, column: 22, scope: !6460)
!6463 = !DILocation(line: 526, column: 25, scope: !6460)
!6464 = !DILocation(line: 526, column: 30, scope: !6460)
!6465 = !DILocation(line: 526, column: 37, scope: !6460)
!6466 = !DILocation(line: 526, column: 6, scope: !6437)
!6467 = !DILocation(line: 527, column: 3, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6460, file: !2, line: 526, column: 43)
!6469 = !DILocation(line: 528, column: 3, scope: !6468)
!6470 = !DILocation(line: 529, column: 2, scope: !6468)
!6471 = !DILocation(line: 531, column: 2, scope: !6437)
!6472 = !DILocation(line: 531, column: 7, scope: !6437)
!6473 = !DILocation(line: 531, column: 17, scope: !6437)
!6474 = !DILocation(line: 533, column: 2, scope: !6437)
!6475 = !DILocation(line: 534, column: 1, scope: !6437)
!6476 = distinct !DISubprogram(name: "azx_int_clear", scope: !2, file: !2, line: 485, type: !5407, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6477)
!6477 = !{!6478, !6479, !6480, !6483}
!6478 = !DILocalVariable(name: "bus", arg: 1, scope: !6476, file: !2, line: 485, type: !191)
!6479 = !DILocalVariable(name: "azx_dev", scope: !6476, file: !2, line: 487, type: !186)
!6480 = !DILocalVariable(name: "__mptr", scope: !6481, file: !2, line: 490, type: !184)
!6481 = distinct !DILexicalBlock(scope: !6482, file: !2, line: 490, column: 2)
!6482 = distinct !DILexicalBlock(scope: !6476, file: !2, line: 490, column: 2)
!6483 = !DILocalVariable(name: "__mptr", scope: !6484, file: !2, line: 490, type: !184)
!6484 = distinct !DILexicalBlock(scope: !6485, file: !2, line: 490, column: 2)
!6485 = distinct !DILexicalBlock(scope: !6482, file: !2, line: 490, column: 2)
!6486 = !DILocation(line: 485, column: 44, scope: !6476)
!6487 = !DILocation(line: 487, column: 2, scope: !6476)
!6488 = !DILocation(line: 487, column: 22, scope: !6476)
!6489 = !DILocation(line: 490, column: 2, scope: !6481)
!6490 = !DILocation(line: 490, column: 2, scope: !6482)
!6491 = !DILocation(line: 490, column: 2, scope: !6485)
!6492 = !DILocation(line: 491, column: 3, scope: !6485)
!6493 = !DILocation(line: 490, column: 2, scope: !6484)
!6494 = distinct !{!6494, !6490, !6495, !5652, !5653}
!6495 = !DILocation(line: 491, column: 3, scope: !6482)
!6496 = !DILocation(line: 494, column: 2, scope: !6476)
!6497 = !DILocation(line: 497, column: 2, scope: !6476)
!6498 = !DILocation(line: 500, column: 2, scope: !6476)
!6499 = !DILocation(line: 501, column: 1, scope: !6476)
!6500 = distinct !DISubprogram(name: "azx_int_enable", scope: !2, file: !2, line: 463, type: !5407, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6501)
!6501 = !{!6502}
!6502 = !DILocalVariable(name: "bus", arg: 1, scope: !6500, file: !2, line: 463, type: !191)
!6503 = !DILocation(line: 463, column: 45, scope: !6500)
!6504 = !DILocation(line: 466, column: 2, scope: !6500)
!6505 = !DILocation(line: 469, column: 1, scope: !6500)
!6506 = distinct !DISubprogram(name: "snd_hdac_bus_stop_chip", scope: !2, file: !2, line: 541, type: !5407, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6507)
!6507 = !{!6508}
!6508 = !DILocalVariable(name: "bus", arg: 1, scope: !6506, file: !2, line: 541, type: !191)
!6509 = !DILocation(line: 541, column: 46, scope: !6506)
!6510 = !DILocation(line: 543, column: 7, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6506, file: !2, line: 543, column: 6)
!6512 = !DILocation(line: 543, column: 12, scope: !6511)
!6513 = !DILocation(line: 543, column: 6, scope: !6506)
!6514 = !DILocation(line: 544, column: 3, scope: !6511)
!6515 = !DILocation(line: 547, column: 18, scope: !6506)
!6516 = !DILocation(line: 547, column: 2, scope: !6506)
!6517 = !DILocation(line: 548, column: 16, scope: !6506)
!6518 = !DILocation(line: 548, column: 2, scope: !6506)
!6519 = !DILocation(line: 551, column: 27, scope: !6506)
!6520 = !DILocation(line: 551, column: 2, scope: !6506)
!6521 = !DILocation(line: 554, column: 6, scope: !6522)
!6522 = distinct !DILexicalBlock(scope: !6506, file: !2, line: 554, column: 6)
!6523 = !DILocation(line: 554, column: 11, scope: !6522)
!6524 = !DILocation(line: 554, column: 18, scope: !6522)
!6525 = !DILocation(line: 554, column: 6, scope: !6506)
!6526 = !DILocation(line: 555, column: 3, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6522, file: !2, line: 554, column: 24)
!6528 = !DILocation(line: 556, column: 3, scope: !6527)
!6529 = !DILocation(line: 557, column: 2, scope: !6527)
!6530 = !DILocation(line: 559, column: 2, scope: !6506)
!6531 = !DILocation(line: 559, column: 7, scope: !6506)
!6532 = !DILocation(line: 559, column: 17, scope: !6506)
!6533 = !DILocation(line: 560, column: 1, scope: !6506)
!6534 = distinct !DISubprogram(name: "azx_int_disable", scope: !2, file: !2, line: 472, type: !5407, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6535)
!6535 = !{!6536, !6537, !6538, !6541}
!6536 = !DILocalVariable(name: "bus", arg: 1, scope: !6534, file: !2, line: 472, type: !191)
!6537 = !DILocalVariable(name: "azx_dev", scope: !6534, file: !2, line: 474, type: !186)
!6538 = !DILocalVariable(name: "__mptr", scope: !6539, file: !2, line: 477, type: !184)
!6539 = distinct !DILexicalBlock(scope: !6540, file: !2, line: 477, column: 2)
!6540 = distinct !DILexicalBlock(scope: !6534, file: !2, line: 477, column: 2)
!6541 = !DILocalVariable(name: "__mptr", scope: !6542, file: !2, line: 477, type: !184)
!6542 = distinct !DILexicalBlock(scope: !6543, file: !2, line: 477, column: 2)
!6543 = distinct !DILexicalBlock(scope: !6540, file: !2, line: 477, column: 2)
!6544 = !DILocation(line: 472, column: 46, scope: !6534)
!6545 = !DILocation(line: 474, column: 2, scope: !6534)
!6546 = !DILocation(line: 474, column: 22, scope: !6534)
!6547 = !DILocation(line: 477, column: 2, scope: !6539)
!6548 = !DILocation(line: 477, column: 2, scope: !6540)
!6549 = !DILocation(line: 477, column: 2, scope: !6543)
!6550 = !DILocation(line: 478, column: 3, scope: !6543)
!6551 = !DILocation(line: 477, column: 2, scope: !6542)
!6552 = distinct !{!6552, !6548, !6553, !5652, !5653}
!6553 = !DILocation(line: 478, column: 3, scope: !6540)
!6554 = !DILocation(line: 481, column: 2, scope: !6534)
!6555 = !DILocation(line: 482, column: 1, scope: !6534)
!6556 = distinct !DISubprogram(name: "snd_hdac_bus_handle_stream_irq", scope: !2, file: !2, line: 571, type: !6557, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6562)
!6557 = !DISubroutineType(types: !6558)
!6558 = !{!115, !191, !13, !6559}
!6559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6560, size: 64)
!6560 = !DISubroutineType(types: !6561)
!6561 = !{null, !191, !186}
!6562 = !{!6563, !6564, !6565, !6566, !6567, !6568, !6569, !6572}
!6563 = !DILocalVariable(name: "bus", arg: 1, scope: !6556, file: !2, line: 571, type: !191)
!6564 = !DILocalVariable(name: "status", arg: 2, scope: !6556, file: !2, line: 571, type: !13)
!6565 = !DILocalVariable(name: "ack", arg: 3, scope: !6556, file: !2, line: 572, type: !6559)
!6566 = !DILocalVariable(name: "azx_dev", scope: !6556, file: !2, line: 575, type: !186)
!6567 = !DILocalVariable(name: "sd_status", scope: !6556, file: !2, line: 576, type: !248)
!6568 = !DILocalVariable(name: "handled", scope: !6556, file: !2, line: 577, type: !115)
!6569 = !DILocalVariable(name: "__mptr", scope: !6570, file: !2, line: 579, type: !184)
!6570 = distinct !DILexicalBlock(scope: !6571, file: !2, line: 579, column: 2)
!6571 = distinct !DILexicalBlock(scope: !6556, file: !2, line: 579, column: 2)
!6572 = !DILocalVariable(name: "__mptr", scope: !6573, file: !2, line: 579, type: !184)
!6573 = distinct !DILexicalBlock(scope: !6574, file: !2, line: 579, column: 2)
!6574 = distinct !DILexicalBlock(scope: !6571, file: !2, line: 579, column: 2)
!6575 = !DILocation(line: 571, column: 53, scope: !6556)
!6576 = !DILocation(line: 571, column: 71, scope: !6556)
!6577 = !DILocation(line: 572, column: 16, scope: !6556)
!6578 = !DILocation(line: 575, column: 2, scope: !6556)
!6579 = !DILocation(line: 575, column: 22, scope: !6556)
!6580 = !DILocation(line: 576, column: 2, scope: !6556)
!6581 = !DILocation(line: 576, column: 5, scope: !6556)
!6582 = !DILocation(line: 577, column: 2, scope: !6556)
!6583 = !DILocation(line: 577, column: 6, scope: !6556)
!6584 = !DILocation(line: 579, column: 2, scope: !6570)
!6585 = !DILocation(line: 579, column: 2, scope: !6571)
!6586 = !DILocation(line: 579, column: 2, scope: !6574)
!6587 = !DILocation(line: 580, column: 7, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6589, file: !2, line: 580, column: 7)
!6589 = distinct !DILexicalBlock(scope: !6574, file: !2, line: 579, column: 56)
!6590 = !DILocation(line: 580, column: 16, scope: !6588)
!6591 = !DILocation(line: 580, column: 25, scope: !6588)
!6592 = !DILocation(line: 580, column: 14, scope: !6588)
!6593 = !DILocation(line: 580, column: 7, scope: !6589)
!6594 = !DILocation(line: 581, column: 16, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6588, file: !2, line: 580, column: 42)
!6596 = !DILocation(line: 581, column: 14, scope: !6595)
!6597 = !DILocation(line: 582, column: 4, scope: !6595)
!6598 = !DILocation(line: 583, column: 20, scope: !6595)
!6599 = !DILocation(line: 583, column: 29, scope: !6595)
!6600 = !DILocation(line: 583, column: 17, scope: !6595)
!6601 = !DILocation(line: 583, column: 12, scope: !6595)
!6602 = !DILocation(line: 584, column: 10, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6595, file: !2, line: 584, column: 8)
!6604 = !DILocation(line: 584, column: 19, scope: !6603)
!6605 = !DILocation(line: 584, column: 29, scope: !6603)
!6606 = !DILocation(line: 584, column: 33, scope: !6603)
!6607 = !DILocation(line: 584, column: 42, scope: !6603)
!6608 = !DILocation(line: 584, column: 51, scope: !6603)
!6609 = !DILocation(line: 585, column: 9, scope: !6603)
!6610 = !DILocation(line: 585, column: 18, scope: !6603)
!6611 = !DILocation(line: 585, column: 26, scope: !6603)
!6612 = !DILocation(line: 585, column: 31, scope: !6603)
!6613 = !DILocation(line: 585, column: 41, scope: !6603)
!6614 = !DILocation(line: 584, column: 8, scope: !6595)
!6615 = !DILocation(line: 586, column: 5, scope: !6603)
!6616 = !DILocation(line: 587, column: 8, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6595, file: !2, line: 587, column: 8)
!6618 = !DILocation(line: 587, column: 8, scope: !6595)
!6619 = !DILocation(line: 588, column: 5, scope: !6617)
!6620 = !DILocation(line: 588, column: 9, scope: !6617)
!6621 = !DILocation(line: 588, column: 14, scope: !6617)
!6622 = !DILocation(line: 589, column: 3, scope: !6595)
!6623 = !DILocation(line: 590, column: 2, scope: !6589)
!6624 = !DILocation(line: 579, column: 2, scope: !6573)
!6625 = distinct !{!6625, !6585, !6626, !5652, !5653}
!6626 = !DILocation(line: 590, column: 2, scope: !6571)
!6627 = !DILocation(line: 591, column: 9, scope: !6556)
!6628 = !DILocation(line: 592, column: 1, scope: !6556)
!6629 = !DILocation(line: 591, column: 2, scope: !6556)
!6630 = distinct !DISubprogram(name: "snd_hdac_bus_alloc_stream_pages", scope: !2, file: !2, line: 602, type: !6231, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6631)
!6631 = !{!6632, !6633, !6634, !6635, !6636, !6637, !6640, !6643, !6646, !6649, !6652}
!6632 = !DILocalVariable(name: "bus", arg: 1, scope: !6630, file: !2, line: 602, type: !191)
!6633 = !DILocalVariable(name: "s", scope: !6630, file: !2, line: 604, type: !186)
!6634 = !DILocalVariable(name: "num_streams", scope: !6630, file: !2, line: 605, type: !115)
!6635 = !DILocalVariable(name: "dma_type", scope: !6630, file: !2, line: 606, type: !115)
!6636 = !DILocalVariable(name: "err", scope: !6630, file: !2, line: 607, type: !115)
!6637 = !DILocalVariable(name: "__mptr", scope: !6638, file: !2, line: 609, type: !184)
!6638 = distinct !DILexicalBlock(scope: !6639, file: !2, line: 609, column: 2)
!6639 = distinct !DILexicalBlock(scope: !6630, file: !2, line: 609, column: 2)
!6640 = !DILocalVariable(name: "__mptr", scope: !6641, file: !2, line: 609, type: !184)
!6641 = distinct !DILexicalBlock(scope: !6642, file: !2, line: 609, column: 2)
!6642 = distinct !DILexicalBlock(scope: !6639, file: !2, line: 609, column: 2)
!6643 = !DILocalVariable(name: "__ret_warn_on", scope: !6644, file: !2, line: 618, type: !115)
!6644 = distinct !DILexicalBlock(scope: !6645, file: !2, line: 618, column: 6)
!6645 = distinct !DILexicalBlock(scope: !6630, file: !2, line: 618, column: 6)
!6646 = !DILocalVariable(name: "__flags", scope: !6647, file: !2, line: 618, type: !115)
!6647 = distinct !DILexicalBlock(scope: !6648, file: !2, line: 618, column: 6)
!6648 = distinct !DILexicalBlock(scope: !6644, file: !2, line: 618, column: 6)
!6649 = !DILocalVariable(name: "__mptr", scope: !6650, file: !2, line: 625, type: !184)
!6650 = distinct !DILexicalBlock(scope: !6651, file: !2, line: 625, column: 2)
!6651 = distinct !DILexicalBlock(scope: !6630, file: !2, line: 625, column: 2)
!6652 = !DILocalVariable(name: "__mptr", scope: !6653, file: !2, line: 625, type: !184)
!6653 = distinct !DILexicalBlock(scope: !6654, file: !2, line: 625, column: 2)
!6654 = distinct !DILexicalBlock(scope: !6651, file: !2, line: 625, column: 2)
!6655 = !DILocation(line: 602, column: 54, scope: !6630)
!6656 = !DILocation(line: 604, column: 2, scope: !6630)
!6657 = !DILocation(line: 604, column: 22, scope: !6630)
!6658 = !DILocation(line: 605, column: 2, scope: !6630)
!6659 = !DILocation(line: 605, column: 6, scope: !6630)
!6660 = !DILocation(line: 606, column: 2, scope: !6630)
!6661 = !DILocation(line: 606, column: 6, scope: !6630)
!6662 = !DILocation(line: 606, column: 17, scope: !6630)
!6663 = !DILocation(line: 606, column: 22, scope: !6630)
!6664 = !DILocation(line: 606, column: 33, scope: !6630)
!6665 = !DILocation(line: 606, column: 38, scope: !6630)
!6666 = !DILocation(line: 607, column: 2, scope: !6630)
!6667 = !DILocation(line: 607, column: 6, scope: !6630)
!6668 = !DILocation(line: 609, column: 2, scope: !6638)
!6669 = !DILocation(line: 609, column: 2, scope: !6639)
!6670 = !DILocation(line: 609, column: 2, scope: !6642)
!6671 = !DILocation(line: 611, column: 29, scope: !6672)
!6672 = distinct !DILexicalBlock(scope: !6642, file: !2, line: 609, column: 50)
!6673 = !DILocation(line: 611, column: 39, scope: !6672)
!6674 = !DILocation(line: 611, column: 44, scope: !6672)
!6675 = !DILocation(line: 612, column: 19, scope: !6672)
!6676 = !DILocation(line: 612, column: 22, scope: !6672)
!6677 = !DILocation(line: 611, column: 9, scope: !6672)
!6678 = !DILocation(line: 611, column: 7, scope: !6672)
!6679 = !DILocation(line: 613, column: 14, scope: !6672)
!6680 = !DILocation(line: 614, column: 7, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6672, file: !2, line: 614, column: 7)
!6682 = !DILocation(line: 614, column: 11, scope: !6681)
!6683 = !DILocation(line: 614, column: 7, scope: !6672)
!6684 = !DILocation(line: 615, column: 4, scope: !6681)
!6685 = !DILocation(line: 616, column: 2, scope: !6672)
!6686 = !DILocation(line: 609, column: 2, scope: !6641)
!6687 = distinct !{!6687, !6669, !6688, !5652, !5653}
!6688 = !DILocation(line: 616, column: 2, scope: !6639)
!6689 = !DILocation(line: 618, column: 6, scope: !6644)
!6690 = !DILocation(line: 618, column: 6, scope: !6648)
!6691 = !DILocation(line: 618, column: 6, scope: !6647)
!6692 = !DILocation(line: 618, column: 6, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6647, file: !2, line: 618, column: 6)
!6694 = !DILocation(line: 618, column: 6, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6647, file: !2, line: 618, column: 6)
!6696 = !{i64 2155414530, i64 2155414559, i64 2155414605, i64 2155414663, i64 2155414717, i64 2155414771, i64 2155414826, i64 2155414857, i64 2155415165, i64 2155415171, i64 2155415218, i64 2155415241, i64 2155415267}
!6697 = !DILocation(line: 618, column: 6, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6647, file: !2, line: 618, column: 6)
!6699 = !DILocation(line: 618, column: 6, scope: !6645)
!6700 = !DILocation(line: 618, column: 6, scope: !6630)
!6701 = !DILocation(line: 619, column: 3, scope: !6645)
!6702 = !DILocation(line: 621, column: 28, scope: !6630)
!6703 = !DILocation(line: 621, column: 38, scope: !6630)
!6704 = !DILocation(line: 621, column: 43, scope: !6630)
!6705 = !DILocation(line: 622, column: 7, scope: !6630)
!6706 = !DILocation(line: 622, column: 19, scope: !6630)
!6707 = !DILocation(line: 622, column: 25, scope: !6630)
!6708 = !DILocation(line: 622, column: 30, scope: !6630)
!6709 = !DILocation(line: 621, column: 8, scope: !6630)
!6710 = !DILocation(line: 621, column: 6, scope: !6630)
!6711 = !DILocation(line: 623, column: 6, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6630, file: !2, line: 623, column: 6)
!6713 = !DILocation(line: 623, column: 10, scope: !6712)
!6714 = !DILocation(line: 623, column: 6, scope: !6630)
!6715 = !DILocation(line: 624, column: 3, scope: !6712)
!6716 = !DILocation(line: 625, column: 2, scope: !6650)
!6717 = !DILocation(line: 625, column: 2, scope: !6651)
!6718 = !DILocation(line: 625, column: 2, scope: !6654)
!6719 = !DILocation(line: 626, column: 26, scope: !6654)
!6720 = !DILocation(line: 626, column: 31, scope: !6654)
!6721 = !DILocation(line: 626, column: 38, scope: !6654)
!6722 = !DILocation(line: 626, column: 45, scope: !6654)
!6723 = !DILocation(line: 626, column: 48, scope: !6654)
!6724 = !DILocation(line: 626, column: 54, scope: !6654)
!6725 = !DILocation(line: 626, column: 43, scope: !6654)
!6726 = !DILocation(line: 626, column: 3, scope: !6654)
!6727 = !DILocation(line: 626, column: 6, scope: !6654)
!6728 = !DILocation(line: 626, column: 13, scope: !6654)
!6729 = !DILocation(line: 625, column: 2, scope: !6653)
!6730 = distinct !{!6730, !6717, !6731, !5652, !5653}
!6731 = !DILocation(line: 626, column: 57, scope: !6651)
!6732 = !DILocation(line: 629, column: 29, scope: !6630)
!6733 = !DILocation(line: 629, column: 39, scope: !6630)
!6734 = !DILocation(line: 629, column: 44, scope: !6630)
!6735 = !DILocation(line: 629, column: 61, scope: !6630)
!6736 = !DILocation(line: 629, column: 66, scope: !6630)
!6737 = !DILocation(line: 629, column: 9, scope: !6630)
!6738 = !DILocation(line: 629, column: 2, scope: !6630)
!6739 = !DILocation(line: 630, column: 1, scope: !6630)
!6740 = distinct !DISubprogram(name: "snd_dma_alloc_pages", scope: !4840, file: !4840, line: 81, type: !6741, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6743)
!6741 = !DISubroutineType(types: !6742)
!6742 = !{!115, !115, !195, !334, !5310}
!6743 = !{!6744, !6745, !6746, !6747}
!6744 = !DILocalVariable(name: "type", arg: 1, scope: !6740, file: !4840, line: 81, type: !115)
!6745 = !DILocalVariable(name: "dev", arg: 2, scope: !6740, file: !4840, line: 81, type: !195)
!6746 = !DILocalVariable(name: "size", arg: 3, scope: !6740, file: !4840, line: 82, type: !334)
!6747 = !DILocalVariable(name: "dmab", arg: 4, scope: !6740, file: !4840, line: 82, type: !5310)
!6748 = !DILocation(line: 81, column: 43, scope: !6740)
!6749 = !DILocation(line: 81, column: 64, scope: !6740)
!6750 = !DILocation(line: 82, column: 18, scope: !6740)
!6751 = !DILocation(line: 82, column: 47, scope: !6740)
!6752 = !DILocation(line: 84, column: 33, scope: !6740)
!6753 = !DILocation(line: 84, column: 39, scope: !6740)
!6754 = !DILocation(line: 84, column: 63, scope: !6740)
!6755 = !DILocation(line: 84, column: 69, scope: !6740)
!6756 = !DILocation(line: 84, column: 9, scope: !6740)
!6757 = !DILocation(line: 84, column: 2, scope: !6740)
!6758 = distinct !DISubprogram(name: "snd_hdac_bus_free_stream_pages", scope: !2, file: !2, line: 637, type: !5407, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6759)
!6759 = !{!6760, !6761, !6762, !6765}
!6760 = !DILocalVariable(name: "bus", arg: 1, scope: !6758, file: !2, line: 637, type: !191)
!6761 = !DILocalVariable(name: "s", scope: !6758, file: !2, line: 639, type: !186)
!6762 = !DILocalVariable(name: "__mptr", scope: !6763, file: !2, line: 641, type: !184)
!6763 = distinct !DILexicalBlock(scope: !6764, file: !2, line: 641, column: 2)
!6764 = distinct !DILexicalBlock(scope: !6758, file: !2, line: 641, column: 2)
!6765 = !DILocalVariable(name: "__mptr", scope: !6766, file: !2, line: 641, type: !184)
!6766 = distinct !DILexicalBlock(scope: !6767, file: !2, line: 641, column: 2)
!6767 = distinct !DILexicalBlock(scope: !6764, file: !2, line: 641, column: 2)
!6768 = !DILocation(line: 637, column: 54, scope: !6758)
!6769 = !DILocation(line: 639, column: 2, scope: !6758)
!6770 = !DILocation(line: 639, column: 22, scope: !6758)
!6771 = !DILocation(line: 641, column: 2, scope: !6763)
!6772 = !DILocation(line: 641, column: 2, scope: !6764)
!6773 = !DILocation(line: 641, column: 2, scope: !6767)
!6774 = !DILocation(line: 642, column: 7, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6776, file: !2, line: 642, column: 7)
!6776 = distinct !DILexicalBlock(scope: !6767, file: !2, line: 641, column: 50)
!6777 = !DILocation(line: 642, column: 10, scope: !6775)
!6778 = !DILocation(line: 642, column: 14, scope: !6775)
!6779 = !DILocation(line: 642, column: 7, scope: !6776)
!6780 = !DILocation(line: 643, column: 24, scope: !6775)
!6781 = !DILocation(line: 643, column: 27, scope: !6775)
!6782 = !DILocation(line: 643, column: 4, scope: !6775)
!6783 = !DILocation(line: 644, column: 2, scope: !6776)
!6784 = !DILocation(line: 641, column: 2, scope: !6766)
!6785 = distinct !{!6785, !6772, !6786, !5652, !5653}
!6786 = !DILocation(line: 644, column: 2, scope: !6764)
!6787 = !DILocation(line: 646, column: 6, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6758, file: !2, line: 646, column: 6)
!6789 = !DILocation(line: 646, column: 11, scope: !6788)
!6790 = !DILocation(line: 646, column: 14, scope: !6788)
!6791 = !DILocation(line: 646, column: 6, scope: !6758)
!6792 = !DILocation(line: 647, column: 23, scope: !6788)
!6793 = !DILocation(line: 647, column: 28, scope: !6788)
!6794 = !DILocation(line: 647, column: 3, scope: !6788)
!6795 = !DILocation(line: 648, column: 6, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6758, file: !2, line: 648, column: 6)
!6797 = !DILocation(line: 648, column: 11, scope: !6796)
!6798 = !DILocation(line: 648, column: 18, scope: !6796)
!6799 = !DILocation(line: 648, column: 6, scope: !6758)
!6800 = !DILocation(line: 649, column: 23, scope: !6796)
!6801 = !DILocation(line: 649, column: 28, scope: !6796)
!6802 = !DILocation(line: 649, column: 3, scope: !6796)
!6803 = !DILocation(line: 650, column: 1, scope: !6758)
!6804 = !DISubprogram(name: "snd_dma_free_pages", scope: !4840, file: !4840, line: 89, type: !6805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6805 = !DISubroutineType(types: !6806)
!6806 = !{null, !5310}
!6807 = distinct !DISubprogram(name: "snd_hdac_bus_link_power", scope: !2, file: !2, line: 658, type: !4742, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6808)
!6808 = !{!6809, !6810}
!6809 = !DILocalVariable(name: "codec", arg: 1, scope: !6807, file: !2, line: 658, type: !4744)
!6810 = !DILocalVariable(name: "enable", arg: 2, scope: !6807, file: !2, line: 658, type: !706)
!6811 = !DILocation(line: 658, column: 50, scope: !6807)
!6812 = !DILocation(line: 658, column: 62, scope: !6807)
!6813 = !DILocation(line: 660, column: 6, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6807, file: !2, line: 660, column: 6)
!6815 = !DILocation(line: 660, column: 6, scope: !6807)
!6816 = !DILocation(line: 661, column: 11, scope: !6814)
!6817 = !DILocation(line: 661, column: 18, scope: !6814)
!6818 = !DILocation(line: 661, column: 25, scope: !6814)
!6819 = !DILocation(line: 661, column: 32, scope: !6814)
!6820 = !DILocation(line: 661, column: 37, scope: !6814)
!6821 = !DILocation(line: 661, column: 3, scope: !6814)
!6822 = !DILocation(line: 663, column: 13, scope: !6814)
!6823 = !DILocation(line: 663, column: 20, scope: !6814)
!6824 = !DILocation(line: 663, column: 27, scope: !6814)
!6825 = !DILocation(line: 663, column: 34, scope: !6814)
!6826 = !DILocation(line: 663, column: 39, scope: !6814)
!6827 = !DILocation(line: 663, column: 3, scope: !6814)
!6828 = !DILocation(line: 664, column: 1, scope: !6807)
!6829 = distinct !DISubprogram(name: "set_bit", scope: !6830, file: !6830, line: 26, type: !6831, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6835)
!6830 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6831 = !DISubroutineType(types: !6832)
!6832 = !{null, !185, !6833}
!6833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6834, size: 64)
!6834 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !337)
!6835 = !{!6836, !6837}
!6836 = !DILocalVariable(name: "nr", arg: 1, scope: !6829, file: !6830, line: 26, type: !185)
!6837 = !DILocalVariable(name: "addr", arg: 2, scope: !6829, file: !6830, line: 26, type: !6833)
!6838 = !DILocation(line: 26, column: 42, scope: !6829)
!6839 = !DILocation(line: 26, column: 70, scope: !6829)
!6840 = !DILocation(line: 28, column: 26, scope: !6829)
!6841 = !DILocation(line: 28, column: 33, scope: !6829)
!6842 = !DILocation(line: 28, column: 31, scope: !6829)
!6843 = !DILocation(line: 28, column: 2, scope: !6829)
!6844 = !DILocation(line: 29, column: 15, scope: !6829)
!6845 = !DILocation(line: 29, column: 19, scope: !6829)
!6846 = !DILocation(line: 29, column: 2, scope: !6829)
!6847 = !DILocation(line: 30, column: 1, scope: !6829)
!6848 = distinct !DISubprogram(name: "clear_bit", scope: !6830, file: !6830, line: 39, type: !6831, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6849)
!6849 = !{!6850, !6851}
!6850 = !DILocalVariable(name: "nr", arg: 1, scope: !6848, file: !6830, line: 39, type: !185)
!6851 = !DILocalVariable(name: "addr", arg: 2, scope: !6848, file: !6830, line: 39, type: !6833)
!6852 = !DILocation(line: 39, column: 44, scope: !6848)
!6853 = !DILocation(line: 39, column: 72, scope: !6848)
!6854 = !DILocation(line: 41, column: 26, scope: !6848)
!6855 = !DILocation(line: 41, column: 33, scope: !6848)
!6856 = !DILocation(line: 41, column: 31, scope: !6848)
!6857 = !DILocation(line: 41, column: 2, scope: !6848)
!6858 = !DILocation(line: 42, column: 17, scope: !6848)
!6859 = !DILocation(line: 42, column: 21, scope: !6848)
!6860 = !DILocation(line: 42, column: 2, scope: !6848)
!6861 = !DILocation(line: 43, column: 1, scope: !6848)
!6862 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6863, file: !6863, line: 29, type: !6864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6863 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6864 = !DISubroutineType(types: !6865)
!6865 = !{null, !6866}
!6866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!6867 = distinct !DISubprogram(name: "writeb", scope: !5582, file: !5582, line: 64, type: !6868, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6870)
!6868 = !DISubroutineType(types: !6869)
!6869 = !{null, !250, !5585}
!6870 = !{!6871, !6872}
!6871 = !DILocalVariable(name: "val", arg: 1, scope: !6867, file: !5582, line: 64, type: !250)
!6872 = !DILocalVariable(name: "addr", arg: 2, scope: !6867, file: !5582, line: 64, type: !5585)
!6873 = !DILocation(line: 64, column: 1, scope: !6867)
!6874 = !{i64 2152716471}
!6875 = distinct !DISubprogram(name: "writew", scope: !5582, file: !5582, line: 65, type: !6876, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6878)
!6876 = !DISubroutineType(types: !6877)
!6877 = !{null, !258, !5585}
!6878 = !{!6879, !6880}
!6879 = !DILocalVariable(name: "val", arg: 1, scope: !6875, file: !5582, line: 65, type: !258)
!6880 = !DILocalVariable(name: "addr", arg: 2, scope: !6875, file: !5582, line: 65, type: !5585)
!6881 = !DILocation(line: 65, column: 1, scope: !6875)
!6882 = !{i64 2152716855}
!6883 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6863, file: !6863, line: 41, type: !6864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6884 = distinct !DISubprogram(name: "readw", scope: !5582, file: !5582, line: 57, type: !6885, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6887)
!6885 = !DISubroutineType(types: !6886)
!6886 = !{!258, !5700}
!6887 = !{!6888, !6889}
!6888 = !DILocalVariable(name: "addr", arg: 1, scope: !6884, file: !5582, line: 57, type: !5700)
!6889 = !DILocalVariable(name: "ret", scope: !6884, file: !5582, line: 57, type: !258)
!6890 = !DILocation(line: 57, column: 1, scope: !6884)
!6891 = !{i64 2152714431}
!6892 = distinct !DISubprogram(name: "list_empty", scope: !6893, file: !6893, line: 371, type: !6894, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6898)
!6893 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6894 = !DISubroutineType(types: !6895)
!6895 = !{!115, !6896}
!6896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6897, size: 64)
!6897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!6898 = !{!6899}
!6899 = !DILocalVariable(name: "head", arg: 1, scope: !6892, file: !6893, line: 371, type: !6896)
!6900 = !DILocation(line: 371, column: 54, scope: !6892)
!6901 = !DILocation(line: 373, column: 9, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6892, file: !6893, line: 373, column: 9)
!6903 = !DILocation(line: 373, column: 9, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6902, file: !6893, line: 373, column: 9)
!6905 = !DILocation(line: 373, column: 34, scope: !6892)
!6906 = !DILocation(line: 373, column: 31, scope: !6892)
!6907 = !DILocation(line: 373, column: 2, scope: !6892)
!6908 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6173, file: !6173, line: 458, type: !6174, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6909)
!6909 = !{!6910}
!6910 = !DILocalVariable(name: "m", arg: 1, scope: !6908, file: !6173, line: 458, type: !3817)
!6911 = !DILocation(line: 458, column: 66, scope: !6908)
!6912 = !DILocation(line: 460, column: 10, scope: !6908)
!6913 = !DILocation(line: 460, column: 12, scope: !6908)
!6914 = !DILocation(line: 460, column: 34, scope: !6908)
!6915 = !DILocation(line: 460, column: 39, scope: !6908)
!6916 = !DILocation(line: 460, column: 2, scope: !6908)
!6917 = !DISubprogram(name: "__msecs_to_jiffies", scope: !6173, file: !6173, line: 451, type: !6174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6918 = distinct !DISubprogram(name: "readb", scope: !5582, file: !5582, line: 56, type: !6919, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6921)
!6919 = !DISubroutineType(types: !6920)
!6920 = !{!250, !5700}
!6921 = !{!6922, !6923}
!6922 = !DILocalVariable(name: "addr", arg: 1, scope: !6918, file: !5582, line: 56, type: !5700)
!6923 = !DILocalVariable(name: "ret", scope: !6918, file: !5582, line: 56, type: !250)
!6924 = !DILocation(line: 56, column: 1, scope: !6918)
!6925 = !{i64 2152714017}
!6926 = !DISubprogram(name: "usleep_range_state", scope: !6207, file: !6207, line: 63, type: !6927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6927 = !DISubroutineType(types: !6928)
!6928 = !{null, !337, !337, !13}
!6929 = !DISubprogram(name: "snd_dma_alloc_dir_pages", scope: !4840, file: !4840, line: 77, type: !6930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6930 = !DISubroutineType(types: !6931)
!6931 = !{!115, !115, !195, !164, !334, !5310}
!6932 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6933, file: !6933, line: 80, type: !6934, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6936)
!6933 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6934 = !DISubroutineType(types: !6935)
!6935 = !{null, !5700, !334}
!6936 = !{!6937, !6938}
!6937 = !DILocalVariable(name: "v", arg: 1, scope: !6932, file: !6933, line: 80, type: !5700)
!6938 = !DILocalVariable(name: "size", arg: 2, scope: !6932, file: !6933, line: 80, type: !334)
!6939 = !DILocation(line: 80, column: 74, scope: !6932)
!6940 = !DILocation(line: 80, column: 84, scope: !6932)
!6941 = !DILocation(line: 82, column: 20, scope: !6932)
!6942 = !DILocation(line: 82, column: 23, scope: !6932)
!6943 = !DILocation(line: 82, column: 2, scope: !6932)
!6944 = !DILocation(line: 83, column: 2, scope: !6932)
!6945 = !DILocation(line: 84, column: 1, scope: !6932)
!6946 = distinct !DISubprogram(name: "arch_set_bit", scope: !6947, file: !6947, line: 52, type: !6831, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6948)
!6947 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6948 = !{!6949, !6950}
!6949 = !DILocalVariable(name: "nr", arg: 1, scope: !6946, file: !6947, line: 52, type: !185)
!6950 = !DILocalVariable(name: "addr", arg: 2, scope: !6946, file: !6947, line: 52, type: !6833)
!6951 = !DILocation(line: 52, column: 19, scope: !6946)
!6952 = !DILocation(line: 52, column: 47, scope: !6946)
!6953 = !DILocation(line: 54, column: 27, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6946, file: !6947, line: 54, column: 6)
!6955 = !DILocation(line: 54, column: 6, scope: !6954)
!6956 = !DILocation(line: 54, column: 6, scope: !6946)
!6957 = !DILocation(line: 56, column: 6, scope: !6958)
!6958 = distinct !DILexicalBlock(scope: !6954, file: !6947, line: 54, column: 32)
!6959 = !DILocation(line: 57, column: 12, scope: !6958)
!6960 = !DILocation(line: 55, column: 3, scope: !6958)
!6961 = !{i64 2147801752, i64 2147801791, i64 2147801812, i64 2147801849, i64 2147801872, i64 2147801742}
!6962 = !DILocation(line: 59, column: 2, scope: !6958)
!6963 = !DILocation(line: 61, column: 8, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6954, file: !6947, line: 59, column: 9)
!6965 = !DILocation(line: 61, column: 32, scope: !6964)
!6966 = !DILocation(line: 60, column: 3, scope: !6964)
!6967 = !{i64 2147802037, i64 2147802076, i64 2147802097, i64 2147802134, i64 2147802157, i64 2147802027}
!6968 = !DILocation(line: 63, column: 1, scope: !6946)
!6969 = distinct !DISubprogram(name: "kasan_check_write", scope: !6970, file: !6970, line: 44, type: !6971, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6973)
!6970 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6971 = !DISubroutineType(types: !6972)
!6972 = !{!706, !5700, !13}
!6973 = !{!6974, !6975}
!6974 = !DILocalVariable(name: "p", arg: 1, scope: !6969, file: !6970, line: 44, type: !5700)
!6975 = !DILocalVariable(name: "size", arg: 2, scope: !6969, file: !6970, line: 44, type: !13)
!6976 = !DILocation(line: 44, column: 59, scope: !6969)
!6977 = !DILocation(line: 44, column: 75, scope: !6969)
!6978 = !DILocation(line: 46, column: 2, scope: !6969)
!6979 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6980, file: !6980, line: 229, type: !6981, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6983)
!6980 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6981 = !DISubroutineType(types: !6982)
!6982 = !{null, !5700, !334, !115}
!6983 = !{!6984, !6985, !6986}
!6984 = !DILocalVariable(name: "ptr", arg: 1, scope: !6979, file: !6980, line: 229, type: !5700)
!6985 = !DILocalVariable(name: "size", arg: 2, scope: !6979, file: !6980, line: 229, type: !334)
!6986 = !DILocalVariable(name: "type", arg: 3, scope: !6979, file: !6980, line: 230, type: !115)
!6987 = !DILocation(line: 229, column: 60, scope: !6979)
!6988 = !DILocation(line: 229, column: 72, scope: !6979)
!6989 = !DILocation(line: 230, column: 15, scope: !6979)
!6990 = !DILocation(line: 230, column: 23, scope: !6979)
!6991 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6947, file: !6947, line: 72, type: !6831, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6992)
!6992 = !{!6993, !6994}
!6993 = !DILocalVariable(name: "nr", arg: 1, scope: !6991, file: !6947, line: 72, type: !185)
!6994 = !DILocalVariable(name: "addr", arg: 2, scope: !6991, file: !6947, line: 72, type: !6833)
!6995 = !DILocation(line: 72, column: 21, scope: !6991)
!6996 = !DILocation(line: 72, column: 49, scope: !6991)
!6997 = !DILocation(line: 74, column: 27, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6991, file: !6947, line: 74, column: 6)
!6999 = !DILocation(line: 74, column: 6, scope: !6998)
!7000 = !DILocation(line: 74, column: 6, scope: !6991)
!7001 = !DILocation(line: 76, column: 6, scope: !7002)
!7002 = distinct !DILexicalBlock(scope: !6998, file: !6947, line: 74, column: 32)
!7003 = !DILocation(line: 77, column: 13, scope: !7002)
!7004 = !DILocation(line: 77, column: 12, scope: !7002)
!7005 = !DILocation(line: 75, column: 3, scope: !7002)
!7006 = !{i64 2147803040, i64 2147803079, i64 2147803100, i64 2147803137, i64 2147803160, i64 2147803030}
!7007 = !DILocation(line: 78, column: 2, scope: !7002)
!7008 = !DILocation(line: 80, column: 8, scope: !7009)
!7009 = distinct !DILexicalBlock(scope: !6998, file: !6947, line: 78, column: 9)
!7010 = !DILocation(line: 80, column: 32, scope: !7009)
!7011 = !DILocation(line: 79, column: 3, scope: !7009)
!7012 = !{i64 2147803325, i64 2147803364, i64 2147803385, i64 2147803422, i64 2147803445, i64 2147803315}
!7013 = !DILocation(line: 82, column: 1, scope: !6991)
