; ModuleID = 'drivers/scsi/scsi_logging.c'
source_filename = "drivers/scsi/scsi_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sdev_prefix_printk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sdev_prefix_printk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scmd_printk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scmd_printk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___scsi_format_command: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __scsi_format_command ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_print_command: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_print_command ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_print_sense_hdr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_print_sense_hdr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___scsi_print_sense: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __scsi_print_sense ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_print_sense: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_print_sense ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_print_result: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_print_result ; .previous"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, [4 x i8], %struct.list_head, i16, i16, i16, i16, i64, i64, i64, i32, i32, i64, i32, i32, ptr, i8, i8, i8, [5 x i8], %struct.mutex, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i8, [3 x i8], %struct.atomic_t, [1 x i64], [1 x i64], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.work_struct, ptr, ptr, i64, ptr, i32, i32, ptr, i8, [7 x i8], %struct.mutex, i32, [4 x i8], ptr, [0 x i64] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.13, ptr, i64, i64, i64, i16, i16, i16, i32, %struct.atomic_t, i64, %union.anon.14, %union.anon.15, %struct.anon.16, %struct.anon.17, i64, ptr, ptr }
%union.anon.13 = type { %struct.list_head }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.15 = type { %struct.rb_node }
%struct.anon.16 = type { ptr, [2 x ptr] }
%struct.anon.17 = type { i32, ptr }
%struct.scsi_cmnd = type { ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i64, i32, i32, i8, i8, i8, i8, i16, i32, [32 x i8], %struct.scsi_data_buffer, ptr, i32, i32, i32, i32, ptr, i32, i64, i32, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, %struct.bio_set, i32, i64, %struct.mutex, i32, ptr, %struct.kobject, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64, i32, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_varlen_cdb_hdr = type { i8, i8, [5 x i8], i8, i16 }

@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/scsi/scsi_logging.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !12
@__UNIQUE_ID___addressable_sdev_prefix_printk348 = internal global ptr @sdev_prefix_printk, section ".discard.addressable", align 8, !dbg !17
@__UNIQUE_ID___addressable_scmd_printk349 = internal global ptr @scmd_printk, section ".discard.addressable", align 8, !dbg !5589
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1, !dbg !5591
@__UNIQUE_ID___addressable___scsi_format_command350 = internal global ptr @__scsi_format_command, section ".discard.addressable", align 8, !dbg !5593
@.str.4 = private unnamed_addr constant [6 x i8] c"CDB: \00", align 1, !dbg !5595
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !5597
@.str.6 = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !5600
@.str.7 = private unnamed_addr constant [12 x i8] c"CDB[%02x]: \00", align 1, !dbg !5602
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !5605
@__UNIQUE_ID___addressable_scsi_print_command353 = internal global ptr @scsi_print_command, section ".discard.addressable", align 8, !dbg !5607
@__UNIQUE_ID___addressable_scsi_print_sense_hdr356 = internal global ptr @scsi_print_sense_hdr, section ".discard.addressable", align 8, !dbg !5609
@__UNIQUE_ID___addressable___scsi_print_sense357 = internal global ptr @__scsi_print_sense, section ".discard.addressable", align 8, !dbg !5611
@__UNIQUE_ID___addressable_scsi_print_sense358 = internal global ptr @scsi_print_sense, section ".discard.addressable", align 8, !dbg !5613
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.9 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !5615
@.str.10 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !5618
@.str.11 = private unnamed_addr constant [17 x i8] c"UNKNOWN(0x%02x) \00", align 1, !dbg !5621
@.str.12 = private unnamed_addr constant [9 x i8] c"Result: \00", align 1, !dbg !5626
@.str.13 = private unnamed_addr constant [13 x i8] c"hostbyte=%s \00", align 1, !dbg !5631
@.str.14 = private unnamed_addr constant [17 x i8] c"hostbyte=0x%02x \00", align 1, !dbg !5636
@.str.15 = private unnamed_addr constant [22 x i8] c"driverbyte=DRIVER_OK \00", align 1, !dbg !5638
@.str.16 = private unnamed_addr constant [13 x i8] c"cmd_age=%lus\00", align 1, !dbg !5643
@__UNIQUE_ID___addressable_scsi_print_result359 = internal global ptr @scsi_print_result, section ".discard.addressable", align 8, !dbg !5645
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5647
@.str.18 = private unnamed_addr constant [8 x i8] c"tag#%d \00", align 1, !dbg !5652
@.str.19 = private unnamed_addr constant [38 x i8] c"short variable length command, len=%d\00", align 1, !dbg !5654
@.str.20 = private unnamed_addr constant [12 x i8] c"opcode=0x%x\00", align 1, !dbg !5659
@.str.21 = private unnamed_addr constant [10 x i8] c" (vendor)\00", align 1, !dbg !5661
@.str.22 = private unnamed_addr constant [12 x i8] c" (reserved)\00", align 1, !dbg !5666
@.str.23 = private unnamed_addr constant [12 x i8] c"%s, sa=0x%x\00", align 1, !dbg !5668
@.str.24 = private unnamed_addr constant [21 x i8] c"opcode=0x%x, sa=0x%x\00", align 1, !dbg !5670
@scsi_command_size_tbl = external dso_local constant [8 x i8], align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Sense Key : \00", align 1, !dbg !5672
@.str.26 = private unnamed_addr constant [6 x i8] c"0x%x \00", align 1, !dbg !5674
@.str.27 = private unnamed_addr constant [12 x i8] c"[deferred] \00", align 1, !dbg !5676
@.str.28 = private unnamed_addr constant [11 x i8] c"[current] \00", align 1, !dbg !5678
@.str.29 = private unnamed_addr constant [14 x i8] c"[descriptor] \00", align 1, !dbg !5683
@.str.30 = private unnamed_addr constant [15 x i8] c"Add. Sense: %s\00", align 1, !dbg !5688
@.str.31 = private unnamed_addr constant [7 x i8] c"(%s%x)\00", align 1, !dbg !5693
@.str.32 = private unnamed_addr constant [11 x i8] c"<<vendor>>\00", align 1, !dbg !5696
@.str.33 = private unnamed_addr constant [10 x i8] c"ASC=0x%x \00", align 1, !dbg !5698
@.str.34 = private unnamed_addr constant [11 x i8] c"ASCQ=0x%x \00", align 1, !dbg !5700
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_sdev_prefix_printk348, ptr @__UNIQUE_ID___addressable_scmd_printk349, ptr @__UNIQUE_ID___addressable___scsi_format_command350, ptr @__UNIQUE_ID___addressable_scsi_print_command353, ptr @__UNIQUE_ID___addressable_scsi_print_sense_hdr356, ptr @__UNIQUE_ID___addressable___scsi_print_sense357, ptr @__UNIQUE_ID___addressable_scsi_print_sense358, ptr @__UNIQUE_ID___addressable_scsi_print_result359], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sdev_prefix_printk(ptr noundef %level, ptr noundef %sdev, ptr noundef %name, ptr noundef %fmt, ...) #0 align 16 !dbg !5711 {
entry:
  %level.addr = alloca ptr, align 8
  %sdev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %logbuf = alloca ptr, align 8
  %off = alloca i64, align 8
  %logbuf_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %level, ptr %level.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !5717, metadata !DIExpression()), !dbg !5741
  store ptr %sdev, ptr %sdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sdev.addr, metadata !5718, metadata !DIExpression()), !dbg !5742
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5719, metadata !DIExpression()), !dbg !5743
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !5720, metadata !DIExpression()), !dbg !5744
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #14, !dbg !5745
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5721, metadata !DIExpression()), !dbg !5746
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf) #14, !dbg !5747
  call void @llvm.dbg.declare(metadata ptr %logbuf, metadata !5732, metadata !DIExpression()), !dbg !5748
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !5749
  call void @llvm.dbg.declare(metadata ptr %off, metadata !5733, metadata !DIExpression()), !dbg !5750
  store i64 0, ptr %off, align 8, !dbg !5750
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf_len) #14, !dbg !5749
  call void @llvm.dbg.declare(metadata ptr %logbuf_len, metadata !5734, metadata !DIExpression()), !dbg !5751
  %0 = load ptr, ptr %sdev.addr, align 8, !dbg !5752
  %tobool = icmp ne ptr %0, null, !dbg !5752
  br i1 %tobool, label %if.end, label %if.then, !dbg !5754

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5755

if.end:                                           ; preds = %entry
  %call = call ptr @scsi_log_reserve_buffer(ptr noundef %logbuf_len) #15, !dbg !5756
  store ptr %call, ptr %logbuf, align 8, !dbg !5757
  %1 = load ptr, ptr %logbuf, align 8, !dbg !5758
  %tobool1 = icmp ne ptr %1, null, !dbg !5758
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5760

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5761

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5762
  %tobool4 = icmp ne ptr %2, null, !dbg !5762
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !5764

if.then5:                                         ; preds = %if.end3
  %3 = load ptr, ptr %logbuf, align 8, !dbg !5765
  %4 = load i64, ptr %off, align 8, !dbg !5766
  %add.ptr = getelementptr i8, ptr %3, i64 %4, !dbg !5767
  %5 = load i64, ptr %logbuf_len, align 8, !dbg !5768
  %6 = load i64, ptr %off, align 8, !dbg !5769
  %sub = sub i64 %5, %6, !dbg !5770
  %7 = load ptr, ptr %name.addr, align 8, !dbg !5771
  %call6 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str, ptr noundef %7) #15, !dbg !5772
  %conv = sext i32 %call6 to i64, !dbg !5772
  %8 = load i64, ptr %off, align 8, !dbg !5773
  %add = add i64 %8, %conv, !dbg !5773
  store i64 %add, ptr %off, align 8, !dbg !5773
  br label %if.end7, !dbg !5774

if.end7:                                          ; preds = %if.then5, %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5775
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5735, metadata !DIExpression()), !dbg !5775
  %9 = load i64, ptr %off, align 8, !dbg !5775
  %10 = load i64, ptr %logbuf_len, align 8, !dbg !5775
  %cmp = icmp uge i64 %9, %10, !dbg !5775
  %lnot = xor i1 %cmp, true, !dbg !5775
  %lnot9 = xor i1 %lnot, true, !dbg !5775
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !5775
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5775
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !5776
  %tobool10 = icmp ne i32 %11, 0, !dbg !5776
  %lnot11 = xor i1 %tobool10, true, !dbg !5776
  %lnot13 = xor i1 %lnot11, true, !dbg !5776
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !5776
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !5776
  %expval = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !5776
  %tobool16 = icmp ne i64 %expval, 0, !dbg !5776
  br i1 %tobool16, label %if.then17, label %if.end27, !dbg !5775

if.then17:                                        ; preds = %if.end7
  br label %do.body, !dbg !5776

do.body:                                          ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5777
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5738, metadata !DIExpression()), !dbg !5777
  store i32 2305, ptr %__flags, align 4, !dbg !5777
  br label %do.body18, !dbg !5777

do.body18:                                        ; preds = %do.body
  br label %do.cond, !dbg !5778

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !5778

do.end:                                           ; preds = %do.cond
  br label %do.body19, !dbg !5777

do.body19:                                        ; preds = %do.end
  %12 = load i32, ptr %__flags, align 4, !dbg !5780
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 73, i32 %12, i64 12) #14, !dbg !5780, !srcloc !5782
  br label %do.cond20, !dbg !5780

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5780

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !5777

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !5783

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5783

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5776
  br label %do.cond25, !dbg !5777

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !5777

do.end26:                                         ; preds = %do.cond25
  br label %if.end27, !dbg !5777

if.end27:                                         ; preds = %do.end26, %if.end7
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !5775
  %tobool28 = icmp ne i32 %13, 0, !dbg !5775
  %lnot29 = xor i1 %tobool28, true, !dbg !5775
  %lnot31 = xor i1 %lnot29, true, !dbg !5775
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !5775
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !5775
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !5775
  store i64 %expval34, ptr %tmp, align 8, !dbg !5776
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5785
  %14 = load i64, ptr %tmp, align 8, !dbg !5775
  %tobool35 = icmp ne i64 %14, 0, !dbg !5785
  br i1 %tobool35, label %if.end44, label %if.then36, !dbg !5786

if.then36:                                        ; preds = %if.end27
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5787
  call void @llvm.va_start(ptr %arraydecay), !dbg !5787
  %15 = load ptr, ptr %logbuf, align 8, !dbg !5789
  %16 = load i64, ptr %off, align 8, !dbg !5790
  %add.ptr37 = getelementptr i8, ptr %15, i64 %16, !dbg !5791
  %17 = load i64, ptr %logbuf_len, align 8, !dbg !5792
  %18 = load i64, ptr %off, align 8, !dbg !5793
  %sub38 = sub i64 %17, %18, !dbg !5794
  %19 = load ptr, ptr %fmt.addr, align 8, !dbg !5795
  %arraydecay39 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5796
  %call40 = call i32 @vscnprintf(ptr noundef %add.ptr37, i64 noundef %sub38, ptr noundef %19, ptr noundef %arraydecay39) #15, !dbg !5797
  %conv41 = sext i32 %call40 to i64, !dbg !5797
  %20 = load i64, ptr %off, align 8, !dbg !5798
  %add42 = add i64 %20, %conv41, !dbg !5798
  store i64 %add42, ptr %off, align 8, !dbg !5798
  %arraydecay43 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5799
  call void @llvm.va_end(ptr %arraydecay43), !dbg !5799
  br label %if.end44, !dbg !5800

if.end44:                                         ; preds = %if.then36, %if.end27
  br label %do.body45, !dbg !5801

do.body45:                                        ; preds = %if.end44
  br label %do.cond46, !dbg !5803

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !5803

do.end47:                                         ; preds = %do.cond46
  %21 = load ptr, ptr %level.addr, align 8, !dbg !5801
  %22 = load ptr, ptr %sdev.addr, align 8, !dbg !5801
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 59, !dbg !5801
  %23 = load ptr, ptr %logbuf, align 8, !dbg !5801
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %21, ptr noundef %sdev_gendev, ptr noundef @.str.2, ptr noundef %23) #16, !dbg !5801
  %24 = load ptr, ptr %logbuf, align 8, !dbg !5805
  call void @scsi_log_release_buffer(ptr noundef %24) #15, !dbg !5806
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5807
  br label %cleanup, !dbg !5807

cleanup:                                          ; preds = %do.end47, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf_len) #14, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf) #14, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #14, !dbg !5807
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5807

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_log_reserve_buffer(ptr noundef %len) #0 align 16 !dbg !5808 {
entry:
  %len.addr = alloca ptr, align 8
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5813, metadata !DIExpression()), !dbg !5814
  %0 = load ptr, ptr %len.addr, align 8, !dbg !5815
  store i64 128, ptr %0, align 8, !dbg !5816
  %1 = load ptr, ptr %len.addr, align 8, !dbg !5817
  %2 = load i64, ptr %1, align 8, !dbg !5818
  %call = call noalias ptr @kmalloc(i64 noundef %2, i32 noundef 2080) #17, !dbg !5819
  ret ptr %call, !dbg !5820
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5821 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5825 dso_local i32 @vscnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5829 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scsi_log_release_buffer(ptr noundef %bufptr) #0 align 16 !dbg !5833 {
entry:
  %bufptr.addr = alloca ptr, align 8
  store ptr %bufptr, ptr %bufptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bufptr.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  %0 = load ptr, ptr %bufptr.addr, align 8, !dbg !5839
  call void @kfree(ptr noundef %0) #15, !dbg !5840
  ret void, !dbg !5841
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scmd_printk(ptr noundef %level, ptr noundef %scmd, ptr noundef %fmt, ...) #0 align 16 !dbg !5842 {
entry:
  %level.addr = alloca ptr, align 8
  %scmd.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %logbuf = alloca ptr, align 8
  %off = alloca i64, align 8
  %logbuf_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %level, ptr %level.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !5848, metadata !DIExpression()), !dbg !5855
  store ptr %scmd, ptr %scmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scmd.addr, metadata !5849, metadata !DIExpression()), !dbg !5856
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !5850, metadata !DIExpression()), !dbg !5857
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #14, !dbg !5858
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5851, metadata !DIExpression()), !dbg !5859
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf) #14, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %logbuf, metadata !5852, metadata !DIExpression()), !dbg !5861
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !5862
  call void @llvm.dbg.declare(metadata ptr %off, metadata !5853, metadata !DIExpression()), !dbg !5863
  store i64 0, ptr %off, align 8, !dbg !5863
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf_len) #14, !dbg !5862
  call void @llvm.dbg.declare(metadata ptr %logbuf_len, metadata !5854, metadata !DIExpression()), !dbg !5864
  %0 = load ptr, ptr %scmd.addr, align 8, !dbg !5865
  %tobool = icmp ne ptr %0, null, !dbg !5865
  br i1 %tobool, label %if.end, label %if.then, !dbg !5867

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5868

if.end:                                           ; preds = %entry
  %call = call ptr @scsi_log_reserve_buffer(ptr noundef %logbuf_len) #15, !dbg !5869
  store ptr %call, ptr %logbuf, align 8, !dbg !5870
  %1 = load ptr, ptr %logbuf, align 8, !dbg !5871
  %tobool1 = icmp ne ptr %1, null, !dbg !5871
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5873

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5874

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %logbuf, align 8, !dbg !5875
  %3 = load i64, ptr %logbuf_len, align 8, !dbg !5876
  %4 = load ptr, ptr %scmd.addr, align 8, !dbg !5877
  %call4 = call ptr @scmd_name(ptr noundef %4) #15, !dbg !5878
  %5 = load ptr, ptr %scmd.addr, align 8, !dbg !5879
  %call5 = call ptr @scsi_cmd_to_rq(ptr noundef %5) #15, !dbg !5880
  %tag = getelementptr inbounds %struct.request, ptr %call5, i32 0, i32 5, !dbg !5881
  %6 = load i32, ptr %tag, align 8, !dbg !5881
  %call6 = call i64 @sdev_format_header(ptr noundef %2, i64 noundef %3, ptr noundef %call4, i32 noundef %6) #15, !dbg !5882
  store i64 %call6, ptr %off, align 8, !dbg !5883
  %7 = load i64, ptr %off, align 8, !dbg !5884
  %8 = load i64, ptr %logbuf_len, align 8, !dbg !5886
  %cmp = icmp ult i64 %7, %8, !dbg !5887
  br i1 %cmp, label %if.then7, label %if.end11, !dbg !5888

if.then7:                                         ; preds = %if.end3
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5889
  call void @llvm.va_start(ptr %arraydecay), !dbg !5889
  %9 = load ptr, ptr %logbuf, align 8, !dbg !5891
  %10 = load i64, ptr %off, align 8, !dbg !5892
  %add.ptr = getelementptr i8, ptr %9, i64 %10, !dbg !5893
  %11 = load i64, ptr %logbuf_len, align 8, !dbg !5894
  %12 = load i64, ptr %off, align 8, !dbg !5895
  %sub = sub i64 %11, %12, !dbg !5896
  %13 = load ptr, ptr %fmt.addr, align 8, !dbg !5897
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5898
  %call9 = call i32 @vscnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef %13, ptr noundef %arraydecay8) #15, !dbg !5899
  %conv = sext i32 %call9 to i64, !dbg !5899
  %14 = load i64, ptr %off, align 8, !dbg !5900
  %add = add i64 %14, %conv, !dbg !5900
  store i64 %add, ptr %off, align 8, !dbg !5900
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5901
  call void @llvm.va_end(ptr %arraydecay10), !dbg !5901
  br label %if.end11, !dbg !5902

if.end11:                                         ; preds = %if.then7, %if.end3
  br label %do.body, !dbg !5903

do.body:                                          ; preds = %if.end11
  br label %do.cond, !dbg !5905

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5905

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %level.addr, align 8, !dbg !5903
  %16 = load ptr, ptr %scmd.addr, align 8, !dbg !5903
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 0, !dbg !5903
  %17 = load ptr, ptr %device, align 8, !dbg !5903
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 59, !dbg !5903
  %18 = load ptr, ptr %logbuf, align 8, !dbg !5903
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %15, ptr noundef %sdev_gendev, ptr noundef @.str.2, ptr noundef %18) #16, !dbg !5903
  %19 = load ptr, ptr %logbuf, align 8, !dbg !5907
  call void @scsi_log_release_buffer(ptr noundef %19) #15, !dbg !5908
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5909
  br label %cleanup, !dbg !5909

cleanup:                                          ; preds = %do.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf_len) #14, !dbg !5909
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !5909
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf) #14, !dbg !5909
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #14, !dbg !5909
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5909

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sdev_format_header(ptr noundef %logbuf, i64 noundef %logbuf_len, ptr noundef %name, i32 noundef %tag) #0 align 16 !dbg !5910 {
entry:
  %retval = alloca i64, align 8
  %logbuf.addr = alloca ptr, align 8
  %logbuf_len.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %off = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %logbuf, ptr %logbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %logbuf.addr, metadata !5914, metadata !DIExpression()), !dbg !5925
  store i64 %logbuf_len, ptr %logbuf_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %logbuf_len.addr, metadata !5915, metadata !DIExpression()), !dbg !5926
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5916, metadata !DIExpression()), !dbg !5927
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !5917, metadata !DIExpression()), !dbg !5928
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !5929
  call void @llvm.dbg.declare(metadata ptr %off, metadata !5918, metadata !DIExpression()), !dbg !5930
  store i64 0, ptr %off, align 8, !dbg !5930
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5931
  %tobool = icmp ne ptr %0, null, !dbg !5931
  br i1 %tobool, label %if.then, label %if.end, !dbg !5933

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %logbuf.addr, align 8, !dbg !5934
  %2 = load i64, ptr %off, align 8, !dbg !5935
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !5936
  %3 = load i64, ptr %logbuf_len.addr, align 8, !dbg !5937
  %4 = load i64, ptr %off, align 8, !dbg !5938
  %sub = sub i64 %3, %4, !dbg !5939
  %5 = load ptr, ptr %name.addr, align 8, !dbg !5940
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str, ptr noundef %5) #15, !dbg !5941
  %conv = sext i32 %call to i64, !dbg !5941
  %6 = load i64, ptr %off, align 8, !dbg !5942
  %add = add i64 %6, %conv, !dbg !5942
  store i64 %add, ptr %off, align 8, !dbg !5942
  br label %if.end, !dbg !5943

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5944
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5919, metadata !DIExpression()), !dbg !5944
  %7 = load i64, ptr %off, align 8, !dbg !5944
  %8 = load i64, ptr %logbuf_len.addr, align 8, !dbg !5944
  %cmp = icmp uge i64 %7, %8, !dbg !5944
  %lnot = xor i1 %cmp, true, !dbg !5944
  %lnot2 = xor i1 %lnot, true, !dbg !5944
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5944
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5944
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !5945
  %tobool3 = icmp ne i32 %9, 0, !dbg !5945
  %lnot4 = xor i1 %tobool3, true, !dbg !5945
  %lnot6 = xor i1 %lnot4, true, !dbg !5945
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5945
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !5945
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !5945
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5945
  br i1 %tobool9, label %if.then10, label %if.end20, !dbg !5944

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !5945

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5922, metadata !DIExpression()), !dbg !5946
  store i32 2305, ptr %__flags, align 4, !dbg !5946
  br label %do.body11, !dbg !5946

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !5947

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !5947

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !5946

do.body12:                                        ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !5949
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 47, i32 %10, i64 12) #14, !dbg !5949, !srcloc !5951
  br label %do.cond13, !dbg !5949

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5949

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !5946

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !5952

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5952

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5945
  br label %do.cond18, !dbg !5946

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5946

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !5946

if.end20:                                         ; preds = %do.end19, %if.end
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !5944
  %tobool21 = icmp ne i32 %11, 0, !dbg !5944
  %lnot22 = xor i1 %tobool21, true, !dbg !5944
  %lnot24 = xor i1 %lnot22, true, !dbg !5944
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5944
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5944
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !5944
  store i64 %expval27, ptr %tmp, align 8, !dbg !5945
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5954
  %12 = load i64, ptr %tmp, align 8, !dbg !5944
  %tobool28 = icmp ne i64 %12, 0, !dbg !5954
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5955

if.then29:                                        ; preds = %if.end20
  %13 = load i64, ptr %off, align 8, !dbg !5956
  store i64 %13, ptr %retval, align 8, !dbg !5957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5957

if.end30:                                         ; preds = %if.end20
  %14 = load i32, ptr %tag.addr, align 4, !dbg !5958
  %cmp31 = icmp sge i32 %14, 0, !dbg !5960
  br i1 %cmp31, label %if.then33, label %if.end39, !dbg !5961

if.then33:                                        ; preds = %if.end30
  %15 = load ptr, ptr %logbuf.addr, align 8, !dbg !5962
  %16 = load i64, ptr %off, align 8, !dbg !5963
  %add.ptr34 = getelementptr i8, ptr %15, i64 %16, !dbg !5964
  %17 = load i64, ptr %logbuf_len.addr, align 8, !dbg !5965
  %18 = load i64, ptr %off, align 8, !dbg !5966
  %sub35 = sub i64 %17, %18, !dbg !5967
  %19 = load i32, ptr %tag.addr, align 4, !dbg !5968
  %call36 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i64 noundef %sub35, ptr noundef @.str.18, i32 noundef %19) #15, !dbg !5969
  %conv37 = sext i32 %call36 to i64, !dbg !5969
  %20 = load i64, ptr %off, align 8, !dbg !5970
  %add38 = add i64 %20, %conv37, !dbg !5970
  store i64 %add38, ptr %off, align 8, !dbg !5970
  br label %if.end39, !dbg !5971

if.end39:                                         ; preds = %if.then33, %if.end30
  %21 = load i64, ptr %off, align 8, !dbg !5972
  store i64 %21, ptr %retval, align 8, !dbg !5973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5973

cleanup:                                          ; preds = %if.end39, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !5974
  %22 = load i64, ptr %retval, align 8, !dbg !5974
  ret i64 %22, !dbg !5974
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scmd_name(ptr noundef %scmd) #7 align 16 !dbg !5975 {
entry:
  %retval = alloca ptr, align 8
  %scmd.addr = alloca ptr, align 8
  %rq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %scmd, ptr %scmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scmd.addr, metadata !5979, metadata !DIExpression()), !dbg !5981
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #14, !dbg !5982
  call void @llvm.dbg.declare(metadata ptr %rq, metadata !5980, metadata !DIExpression()), !dbg !5983
  %0 = load ptr, ptr %scmd.addr, align 8, !dbg !5984
  %call = call ptr @scsi_cmd_to_rq(ptr noundef %0) #15, !dbg !5985
  store ptr %call, ptr %rq, align 8, !dbg !5983
  %1 = load ptr, ptr %rq, align 8, !dbg !5986
  %q = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 0, !dbg !5988
  %2 = load ptr, ptr %q, align 8, !dbg !5988
  %tobool = icmp ne ptr %2, null, !dbg !5986
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5989

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %rq, align 8, !dbg !5990
  %q1 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 0, !dbg !5991
  %4 = load ptr, ptr %q1, align 8, !dbg !5991
  %disk = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 16, !dbg !5992
  %5 = load ptr, ptr %disk, align 8, !dbg !5992
  %tobool2 = icmp ne ptr %5, null, !dbg !5990
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5993

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !5994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5994

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %rq, align 8, !dbg !5995
  %q3 = getelementptr inbounds %struct.request, ptr %6, i32 0, i32 0, !dbg !5996
  %7 = load ptr, ptr %q3, align 8, !dbg !5996
  %disk4 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 16, !dbg !5997
  %8 = load ptr, ptr %disk4, align 8, !dbg !5997
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 3, !dbg !5998
  %arraydecay = getelementptr inbounds [32 x i8], ptr %disk_name, i64 0, i64 0, !dbg !5995
  store ptr %arraydecay, ptr %retval, align 8, !dbg !5999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5999

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #14, !dbg !6000
  %9 = load ptr, ptr %retval, align 8, !dbg !6000
  ret ptr %9, !dbg !6000
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_cmd_to_rq(ptr noundef %scmd) #7 align 16 !dbg !6001 {
entry:
  %scmd.addr = alloca ptr, align 8
  store ptr %scmd, ptr %scmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scmd.addr, metadata !6005, metadata !DIExpression()), !dbg !6006
  %0 = load ptr, ptr %scmd.addr, align 8, !dbg !6007
  %call = call ptr @blk_mq_rq_from_pdu(ptr noundef %0) #15, !dbg !6008
  ret ptr %call, !dbg !6009
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__scsi_format_command(ptr noundef %logbuf, i64 noundef %logbuf_len, ptr noundef %cdb, i64 noundef %cdb_len) #0 align 16 !dbg !6010 {
entry:
  %retval = alloca i64, align 8
  %logbuf.addr = alloca ptr, align 8
  %logbuf_len.addr = alloca i64, align 8
  %cdb.addr = alloca ptr, align 8
  %cdb_len.addr = alloca i64, align 8
  %len = alloca i32, align 4
  %k = alloca i32, align 4
  %off = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %logbuf, ptr %logbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %logbuf.addr, metadata !6014, metadata !DIExpression()), !dbg !6021
  store i64 %logbuf_len, ptr %logbuf_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %logbuf_len.addr, metadata !6015, metadata !DIExpression()), !dbg !6022
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !6016, metadata !DIExpression()), !dbg !6023
  store i64 %cdb_len, ptr %cdb_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb_len.addr, metadata !6017, metadata !DIExpression()), !dbg !6024
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #14, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6018, metadata !DIExpression()), !dbg !6026
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #14, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %k, metadata !6019, metadata !DIExpression()), !dbg !6027
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !6028
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6020, metadata !DIExpression()), !dbg !6029
  %0 = load ptr, ptr %logbuf.addr, align 8, !dbg !6030
  %1 = load i64, ptr %logbuf_len.addr, align 8, !dbg !6031
  %2 = load ptr, ptr %cdb.addr, align 8, !dbg !6032
  %call = call i64 @scsi_format_opcode_name(ptr noundef %0, i64 noundef %1, ptr noundef %2) #15, !dbg !6033
  store i64 %call, ptr %off, align 8, !dbg !6034
  %3 = load i64, ptr %off, align 8, !dbg !6035
  %4 = load i64, ptr %logbuf_len.addr, align 8, !dbg !6037
  %cmp = icmp uge i64 %3, %4, !dbg !6038
  br i1 %cmp, label %if.then, label %if.end, !dbg !6039

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %off, align 8, !dbg !6040
  store i64 %5, ptr %retval, align 8, !dbg !6041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6041

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %cdb.addr, align 8, !dbg !6042
  %call1 = call i32 @scsi_command_size(ptr noundef %6) #15, !dbg !6043
  store i32 %call1, ptr %len, align 4, !dbg !6044
  %7 = load i64, ptr %cdb_len.addr, align 8, !dbg !6045
  %8 = load i32, ptr %len, align 4, !dbg !6047
  %conv = sext i32 %8 to i64, !dbg !6047
  %cmp2 = icmp ult i64 %7, %conv, !dbg !6048
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !6049

if.then4:                                         ; preds = %if.end
  %9 = load i64, ptr %cdb_len.addr, align 8, !dbg !6050
  %conv5 = trunc i64 %9 to i32, !dbg !6050
  store i32 %conv5, ptr %len, align 4, !dbg !6051
  br label %if.end6, !dbg !6052

if.end6:                                          ; preds = %if.then4, %if.end
  store i32 0, ptr %k, align 4, !dbg !6053
  br label %for.cond, !dbg !6055

for.cond:                                         ; preds = %for.inc, %if.end6
  %10 = load i32, ptr %k, align 4, !dbg !6056
  %11 = load i32, ptr %len, align 4, !dbg !6058
  %cmp7 = icmp slt i32 %10, %11, !dbg !6059
  br i1 %cmp7, label %for.body, label %for.end, !dbg !6060

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %off, align 8, !dbg !6061
  %13 = load i64, ptr %logbuf_len.addr, align 8, !dbg !6064
  %sub = sub i64 %13, 3, !dbg !6065
  %cmp9 = icmp ugt i64 %12, %sub, !dbg !6066
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !6067

if.then11:                                        ; preds = %for.body
  br label %for.end, !dbg !6068

if.end12:                                         ; preds = %for.body
  %14 = load ptr, ptr %logbuf.addr, align 8, !dbg !6069
  %15 = load i64, ptr %off, align 8, !dbg !6070
  %add.ptr = getelementptr i8, ptr %14, i64 %15, !dbg !6071
  %16 = load i64, ptr %logbuf_len.addr, align 8, !dbg !6072
  %17 = load i64, ptr %off, align 8, !dbg !6073
  %sub13 = sub i64 %16, %17, !dbg !6074
  %18 = load ptr, ptr %cdb.addr, align 8, !dbg !6075
  %19 = load i32, ptr %k, align 4, !dbg !6076
  %idxprom = sext i32 %19 to i64, !dbg !6075
  %arrayidx = getelementptr i8, ptr %18, i64 %idxprom, !dbg !6075
  %20 = load i8, ptr %arrayidx, align 1, !dbg !6075
  %conv14 = zext i8 %20 to i32, !dbg !6075
  %call15 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub13, ptr noundef @.str.3, i32 noundef %conv14) #15, !dbg !6077
  %conv16 = sext i32 %call15 to i64, !dbg !6077
  %21 = load i64, ptr %off, align 8, !dbg !6078
  %add = add i64 %21, %conv16, !dbg !6078
  store i64 %add, ptr %off, align 8, !dbg !6078
  br label %for.inc, !dbg !6079

for.inc:                                          ; preds = %if.end12
  %22 = load i32, ptr %k, align 4, !dbg !6080
  %inc = add i32 %22, 1, !dbg !6080
  store i32 %inc, ptr %k, align 4, !dbg !6080
  br label %for.cond, !dbg !6081, !llvm.loop !6082

for.end:                                          ; preds = %if.then11, %for.cond
  %23 = load i64, ptr %off, align 8, !dbg !6086
  store i64 %23, ptr %retval, align 8, !dbg !6087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6087

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !6088
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #14, !dbg !6088
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #14, !dbg !6088
  %24 = load i64, ptr %retval, align 8, !dbg !6088
  ret i64 %24, !dbg !6088
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @scsi_format_opcode_name(ptr noundef %buffer, i64 noundef %buf_len, ptr noundef %cdbp) #0 align 16 !dbg !6089 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca ptr, align 8
  %buf_len.addr = alloca i64, align 8
  %cdbp.addr = alloca ptr, align 8
  %sa = alloca i32, align 4
  %cdb0 = alloca i32, align 4
  %cdb_name = alloca ptr, align 8
  %sa_name = alloca ptr, align 8
  %off = alloca i64, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on89 = alloca i32, align 4
  %__flags106 = alloca i32, align 4
  %tmp119 = alloca i64, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6093, metadata !DIExpression()), !dbg !6119
  store i64 %buf_len, ptr %buf_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_len.addr, metadata !6094, metadata !DIExpression()), !dbg !6120
  store ptr %cdbp, ptr %cdbp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdbp.addr, metadata !6095, metadata !DIExpression()), !dbg !6121
  call void @llvm.lifetime.start.p0(i64 4, ptr %sa) #14, !dbg !6122
  call void @llvm.dbg.declare(metadata ptr %sa, metadata !6096, metadata !DIExpression()), !dbg !6123
  call void @llvm.lifetime.start.p0(i64 4, ptr %cdb0) #14, !dbg !6122
  call void @llvm.dbg.declare(metadata ptr %cdb0, metadata !6097, metadata !DIExpression()), !dbg !6124
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdb_name) #14, !dbg !6125
  call void @llvm.dbg.declare(metadata ptr %cdb_name, metadata !6098, metadata !DIExpression()), !dbg !6126
  store ptr null, ptr %cdb_name, align 8, !dbg !6126
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa_name) #14, !dbg !6125
  call void @llvm.dbg.declare(metadata ptr %sa_name, metadata !6099, metadata !DIExpression()), !dbg !6127
  store ptr null, ptr %sa_name, align 8, !dbg !6127
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !6128
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6100, metadata !DIExpression()), !dbg !6129
  %0 = load ptr, ptr %cdbp.addr, align 8, !dbg !6130
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !6130
  %1 = load i8, ptr %arrayidx, align 1, !dbg !6130
  %conv = zext i8 %1 to i32, !dbg !6130
  store i32 %conv, ptr %cdb0, align 4, !dbg !6131
  %2 = load i32, ptr %cdb0, align 4, !dbg !6132
  %cmp = icmp eq i32 %2, 127, !dbg !6133
  br i1 %cmp, label %if.then, label %if.else, !dbg !6134

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #14, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6101, metadata !DIExpression()), !dbg !6136
  %3 = load ptr, ptr %cdbp.addr, align 8, !dbg !6137
  %call = call i32 @scsi_varlen_cdb_length(ptr noundef %3) #15, !dbg !6138
  store i32 %call, ptr %len, align 4, !dbg !6136
  %4 = load i32, ptr %len, align 4, !dbg !6139
  %cmp2 = icmp slt i32 %4, 10, !dbg !6141
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !6142

if.then4:                                         ; preds = %if.then
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !6143
  %6 = load i64, ptr %buf_len.addr, align 8, !dbg !6145
  %7 = load i32, ptr %len, align 4, !dbg !6146
  %call5 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %5, i64 noundef %6, ptr noundef @.str.19, i32 noundef %7) #15, !dbg !6147
  %conv6 = sext i32 %call5 to i64, !dbg !6147
  store i64 %conv6, ptr %off, align 8, !dbg !6148
  %8 = load i64, ptr %off, align 8, !dbg !6149
  store i64 %8, ptr %retval, align 8, !dbg !6150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6150

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %cdbp.addr, align 8, !dbg !6151
  %arrayidx7 = getelementptr i8, ptr %9, i64 8, !dbg !6151
  %10 = load i8, ptr %arrayidx7, align 1, !dbg !6151
  %conv8 = zext i8 %10 to i32, !dbg !6151
  %shl = shl i32 %conv8, 8, !dbg !6152
  %11 = load ptr, ptr %cdbp.addr, align 8, !dbg !6153
  %arrayidx9 = getelementptr i8, ptr %11, i64 9, !dbg !6153
  %12 = load i8, ptr %arrayidx9, align 1, !dbg !6153
  %conv10 = zext i8 %12 to i32, !dbg !6153
  %add = add i32 %shl, %conv10, !dbg !6154
  store i32 %add, ptr %sa, align 4, !dbg !6155
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6156
  br label %cleanup, !dbg !6156

cleanup:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #14, !dbg !6156
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup127 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13, !dbg !6157

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %cdbp.addr, align 8, !dbg !6158
  %arrayidx11 = getelementptr i8, ptr %13, i64 1, !dbg !6158
  %14 = load i8, ptr %arrayidx11, align 1, !dbg !6158
  %conv12 = zext i8 %14 to i32, !dbg !6158
  %and = and i32 %conv12, 31, !dbg !6159
  store i32 %and, ptr %sa, align 4, !dbg !6160
  br label %if.end13

if.end13:                                         ; preds = %if.else, %cleanup.cont
  %15 = load i32, ptr %cdb0, align 4, !dbg !6161
  %16 = load i32, ptr %sa, align 4, !dbg !6162
  %call14 = call zeroext i1 @scsi_opcode_sa_name(i32 noundef %15, i32 noundef %16, ptr noundef %cdb_name, ptr noundef %sa_name) #15, !dbg !6163
  br i1 %call14, label %if.else73, label %if.then15, !dbg !6164

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %cdb_name, align 8, !dbg !6165
  %tobool = icmp ne ptr %17, null, !dbg !6165
  br i1 %tobool, label %if.then16, label %if.else19, !dbg !6166

if.then16:                                        ; preds = %if.then15
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !6167
  %19 = load i64, ptr %buf_len.addr, align 8, !dbg !6168
  %20 = load ptr, ptr %cdb_name, align 8, !dbg !6169
  %call17 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %18, i64 noundef %19, ptr noundef @.str.2, ptr noundef %20) #15, !dbg !6170
  %conv18 = sext i32 %call17 to i64, !dbg !6170
  store i64 %conv18, ptr %off, align 8, !dbg !6171
  br label %if.end72, !dbg !6172

if.else19:                                        ; preds = %if.then15
  %21 = load ptr, ptr %buffer.addr, align 8, !dbg !6173
  %22 = load i64, ptr %buf_len.addr, align 8, !dbg !6174
  %23 = load i32, ptr %cdb0, align 4, !dbg !6175
  %call20 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %21, i64 noundef %22, ptr noundef @.str.20, i32 noundef %23) #15, !dbg !6176
  %conv21 = sext i32 %call20 to i64, !dbg !6176
  store i64 %conv21, ptr %off, align 8, !dbg !6177
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6178
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6104, metadata !DIExpression()), !dbg !6178
  %24 = load i64, ptr %off, align 8, !dbg !6178
  %25 = load i64, ptr %buf_len.addr, align 8, !dbg !6178
  %cmp22 = icmp uge i64 %24, %25, !dbg !6178
  %lnot = xor i1 %cmp22, true, !dbg !6178
  %lnot24 = xor i1 %lnot, true, !dbg !6178
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !6178
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6178
  %26 = load i32, ptr %__ret_warn_on, align 4, !dbg !6179
  %tobool25 = icmp ne i32 %26, 0, !dbg !6179
  %lnot26 = xor i1 %tobool25, true, !dbg !6179
  %lnot28 = xor i1 %lnot26, true, !dbg !6179
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !6179
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !6179
  %expval = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !6179
  %tobool31 = icmp ne i64 %expval, 0, !dbg !6179
  br i1 %tobool31, label %if.then32, label %if.end42, !dbg !6178

if.then32:                                        ; preds = %if.else19
  br label %do.body, !dbg !6179

do.body:                                          ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6180
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6111, metadata !DIExpression()), !dbg !6180
  store i32 2305, ptr %__flags, align 4, !dbg !6180
  br label %do.body33, !dbg !6180

do.body33:                                        ; preds = %do.body
  br label %do.cond, !dbg !6181

do.cond:                                          ; preds = %do.body33
  br label %do.end, !dbg !6181

do.end:                                           ; preds = %do.cond
  br label %do.body34, !dbg !6180

do.body34:                                        ; preds = %do.end
  %27 = load i32, ptr %__flags, align 4, !dbg !6183
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 134, i32 %27, i64 12) #14, !dbg !6183, !srcloc !6185
  br label %do.cond35, !dbg !6183

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6183

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6180

do.body37:                                        ; preds = %do.end36
  br label %do.cond38, !dbg !6186

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !6186

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6179
  br label %do.cond40, !dbg !6180

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !6180

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !6180

if.end42:                                         ; preds = %do.end41, %if.else19
  %28 = load i32, ptr %__ret_warn_on, align 4, !dbg !6178
  %tobool43 = icmp ne i32 %28, 0, !dbg !6178
  %lnot44 = xor i1 %tobool43, true, !dbg !6178
  %lnot46 = xor i1 %lnot44, true, !dbg !6178
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !6178
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !6178
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0), !dbg !6178
  store i64 %expval49, ptr %tmp, align 8, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6188
  %29 = load i64, ptr %tmp, align 8, !dbg !6178
  %tobool50 = icmp ne i64 %29, 0, !dbg !6188
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !6189

if.then51:                                        ; preds = %if.end42
  %30 = load i64, ptr %off, align 8, !dbg !6190
  store i64 %30, ptr %retval, align 8, !dbg !6191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127, !dbg !6191

if.end52:                                         ; preds = %if.end42
  %31 = load i32, ptr %cdb0, align 4, !dbg !6192
  %cmp53 = icmp sge i32 %31, 192, !dbg !6194
  br i1 %cmp53, label %if.then55, label %if.else59, !dbg !6195

if.then55:                                        ; preds = %if.end52
  %32 = load ptr, ptr %buffer.addr, align 8, !dbg !6196
  %33 = load i64, ptr %off, align 8, !dbg !6197
  %add.ptr = getelementptr i8, ptr %32, i64 %33, !dbg !6198
  %34 = load i64, ptr %buf_len.addr, align 8, !dbg !6199
  %35 = load i64, ptr %off, align 8, !dbg !6200
  %sub = sub i64 %34, %35, !dbg !6201
  %call56 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str.21) #15, !dbg !6202
  %conv57 = sext i32 %call56 to i64, !dbg !6202
  %36 = load i64, ptr %off, align 8, !dbg !6203
  %add58 = add i64 %36, %conv57, !dbg !6203
  store i64 %add58, ptr %off, align 8, !dbg !6203
  br label %if.end71, !dbg !6204

if.else59:                                        ; preds = %if.end52
  %37 = load i32, ptr %cdb0, align 4, !dbg !6205
  %cmp60 = icmp sge i32 %37, 96, !dbg !6207
  br i1 %cmp60, label %land.lhs.true, label %if.end70, !dbg !6208

land.lhs.true:                                    ; preds = %if.else59
  %38 = load i32, ptr %cdb0, align 4, !dbg !6209
  %cmp62 = icmp slt i32 %38, 126, !dbg !6210
  br i1 %cmp62, label %if.then64, label %if.end70, !dbg !6211

if.then64:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %buffer.addr, align 8, !dbg !6212
  %40 = load i64, ptr %off, align 8, !dbg !6213
  %add.ptr65 = getelementptr i8, ptr %39, i64 %40, !dbg !6214
  %41 = load i64, ptr %buf_len.addr, align 8, !dbg !6215
  %42 = load i64, ptr %off, align 8, !dbg !6216
  %sub66 = sub i64 %41, %42, !dbg !6217
  %call67 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i64 noundef %sub66, ptr noundef @.str.22) #15, !dbg !6218
  %conv68 = sext i32 %call67 to i64, !dbg !6218
  %43 = load i64, ptr %off, align 8, !dbg !6219
  %add69 = add i64 %43, %conv68, !dbg !6219
  store i64 %add69, ptr %off, align 8, !dbg !6219
  br label %if.end70, !dbg !6220

if.end70:                                         ; preds = %if.then64, %land.lhs.true, %if.else59
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then55
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then16
  br label %if.end88, !dbg !6221

if.else73:                                        ; preds = %if.end13
  %44 = load ptr, ptr %sa_name, align 8, !dbg !6222
  %tobool74 = icmp ne ptr %44, null, !dbg !6222
  br i1 %tobool74, label %if.then75, label %if.else78, !dbg !6225

if.then75:                                        ; preds = %if.else73
  %45 = load ptr, ptr %buffer.addr, align 8, !dbg !6226
  %46 = load i64, ptr %buf_len.addr, align 8, !dbg !6227
  %47 = load ptr, ptr %sa_name, align 8, !dbg !6228
  %call76 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %45, i64 noundef %46, ptr noundef @.str.2, ptr noundef %47) #15, !dbg !6229
  %conv77 = sext i32 %call76 to i64, !dbg !6229
  store i64 %conv77, ptr %off, align 8, !dbg !6230
  br label %if.end87, !dbg !6231

if.else78:                                        ; preds = %if.else73
  %48 = load ptr, ptr %cdb_name, align 8, !dbg !6232
  %tobool79 = icmp ne ptr %48, null, !dbg !6232
  br i1 %tobool79, label %if.then80, label %if.else83, !dbg !6234

if.then80:                                        ; preds = %if.else78
  %49 = load ptr, ptr %buffer.addr, align 8, !dbg !6235
  %50 = load i64, ptr %buf_len.addr, align 8, !dbg !6236
  %51 = load ptr, ptr %cdb_name, align 8, !dbg !6237
  %52 = load i32, ptr %sa, align 4, !dbg !6238
  %call81 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %49, i64 noundef %50, ptr noundef @.str.23, ptr noundef %51, i32 noundef %52) #15, !dbg !6239
  %conv82 = sext i32 %call81 to i64, !dbg !6239
  store i64 %conv82, ptr %off, align 8, !dbg !6240
  br label %if.end86, !dbg !6241

if.else83:                                        ; preds = %if.else78
  %53 = load ptr, ptr %buffer.addr, align 8, !dbg !6242
  %54 = load i64, ptr %buf_len.addr, align 8, !dbg !6243
  %55 = load i32, ptr %cdb0, align 4, !dbg !6244
  %56 = load i32, ptr %sa, align 4, !dbg !6245
  %call84 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %53, i64 noundef %54, ptr noundef @.str.24, i32 noundef %55, i32 noundef %56) #15, !dbg !6246
  %conv85 = sext i32 %call84 to i64, !dbg !6246
  store i64 %conv85, ptr %off, align 8, !dbg !6247
  br label %if.end86

if.end86:                                         ; preds = %if.else83, %if.then80
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then75
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on89) #14, !dbg !6248
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on89, metadata !6114, metadata !DIExpression()), !dbg !6248
  %57 = load i64, ptr %off, align 8, !dbg !6248
  %58 = load i64, ptr %buf_len.addr, align 8, !dbg !6248
  %cmp90 = icmp uge i64 %57, %58, !dbg !6248
  %lnot92 = xor i1 %cmp90, true, !dbg !6248
  %lnot94 = xor i1 %lnot92, true, !dbg !6248
  %lnot.ext95 = zext i1 %lnot94 to i32, !dbg !6248
  store i32 %lnot.ext95, ptr %__ret_warn_on89, align 4, !dbg !6248
  %59 = load i32, ptr %__ret_warn_on89, align 4, !dbg !6249
  %tobool96 = icmp ne i32 %59, 0, !dbg !6249
  %lnot97 = xor i1 %tobool96, true, !dbg !6249
  %lnot99 = xor i1 %lnot97, true, !dbg !6249
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !6249
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !6249
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 0), !dbg !6249
  %tobool103 = icmp ne i64 %expval102, 0, !dbg !6249
  br i1 %tobool103, label %if.then104, label %if.end118, !dbg !6248

if.then104:                                       ; preds = %if.end88
  br label %do.body105, !dbg !6249

do.body105:                                       ; preds = %if.then104
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags106) #14, !dbg !6250
  call void @llvm.dbg.declare(metadata ptr %__flags106, metadata !6116, metadata !DIExpression()), !dbg !6250
  store i32 2305, ptr %__flags106, align 4, !dbg !6250
  br label %do.body107, !dbg !6250

do.body107:                                       ; preds = %do.body105
  br label %do.cond108, !dbg !6251

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !6251

do.end109:                                        ; preds = %do.cond108
  br label %do.body110, !dbg !6250

do.body110:                                       ; preds = %do.end109
  %60 = load i32, ptr %__flags106, align 4, !dbg !6253
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 153, i32 %60, i64 12) #14, !dbg !6253, !srcloc !6255
  br label %do.cond111, !dbg !6253

do.cond111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !6253

do.end112:                                        ; preds = %do.cond111
  br label %do.body113, !dbg !6250

do.body113:                                       ; preds = %do.end112
  br label %do.cond114, !dbg !6256

do.cond114:                                       ; preds = %do.body113
  br label %do.end115, !dbg !6256

do.end115:                                        ; preds = %do.cond114
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags106) #14, !dbg !6249
  br label %do.cond116, !dbg !6250

do.cond116:                                       ; preds = %do.end115
  br label %do.end117, !dbg !6250

do.end117:                                        ; preds = %do.cond116
  br label %if.end118, !dbg !6250

if.end118:                                        ; preds = %do.end117, %if.end88
  %61 = load i32, ptr %__ret_warn_on89, align 4, !dbg !6248
  %tobool120 = icmp ne i32 %61, 0, !dbg !6248
  %lnot121 = xor i1 %tobool120, true, !dbg !6248
  %lnot123 = xor i1 %lnot121, true, !dbg !6248
  %lnot.ext124 = zext i1 %lnot123 to i32, !dbg !6248
  %conv125 = sext i32 %lnot.ext124 to i64, !dbg !6248
  %expval126 = call i64 @llvm.expect.i64(i64 %conv125, i64 0), !dbg !6248
  store i64 %expval126, ptr %tmp119, align 8, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on89) #14, !dbg !6258
  %62 = load i64, ptr %tmp119, align 8, !dbg !6248
  %63 = load i64, ptr %off, align 8, !dbg !6259
  store i64 %63, ptr %retval, align 8, !dbg !6260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127, !dbg !6260

cleanup127:                                       ; preds = %if.end118, %if.then51, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !6261
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa_name) #14, !dbg !6261
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdb_name) #14, !dbg !6261
  call void @llvm.lifetime.end.p0(i64 4, ptr %cdb0) #14, !dbg !6261
  call void @llvm.lifetime.end.p0(i64 4, ptr %sa) #14, !dbg !6261
  %64 = load i64, ptr %retval, align 8, !dbg !6261
  ret i64 %64, !dbg !6261
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @scsi_command_size(ptr noundef %cmnd) #7 align 16 !dbg !6262 {
entry:
  %cmnd.addr = alloca ptr, align 8
  store ptr %cmnd, ptr %cmnd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmnd.addr, metadata !6267, metadata !DIExpression()), !dbg !6268
  %0 = load ptr, ptr %cmnd.addr, align 8, !dbg !6269
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !6269
  %1 = load i8, ptr %arrayidx, align 1, !dbg !6269
  %conv = zext i8 %1 to i32, !dbg !6269
  %cmp = icmp eq i32 %conv, 127, !dbg !6270
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6271

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %cmnd.addr, align 8, !dbg !6272
  %call = call i32 @scsi_varlen_cdb_length(ptr noundef %2) #15, !dbg !6273
  br label %cond.end, !dbg !6271

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %cmnd.addr, align 8, !dbg !6274
  %arrayidx2 = getelementptr i8, ptr %3, i64 0, !dbg !6274
  %4 = load i8, ptr %arrayidx2, align 1, !dbg !6274
  %conv3 = zext i8 %4 to i32, !dbg !6274
  %shr = ashr i32 %conv3, 5, !dbg !6274
  %and = and i32 %shr, 7, !dbg !6274
  %idxprom = sext i32 %and to i64, !dbg !6274
  %arrayidx4 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i64 0, i64 %idxprom, !dbg !6274
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !6274
  %conv5 = zext i8 %5 to i32, !dbg !6274
  br label %cond.end, !dbg !6271

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv5, %cond.false ], !dbg !6271
  ret i32 %cond, !dbg !6275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scsi_print_command(ptr noundef %cmd) #0 align 16 !dbg !6276 {
entry:
  %cmd.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %logbuf = alloca ptr, align 8
  %off = alloca i64, align 8
  %logbuf_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %linelen = alloca i64, align 8
  %__UNIQUE_ID___x351 = alloca i32, align 4
  %__UNIQUE_ID___y352 = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %__ret_warn_on73 = alloca i32, align 4
  %__flags91 = alloca i32, align 4
  %tmp104 = alloca i64, align 8
  %__ret_warn_on131 = alloca i32, align 4
  %__flags149 = alloca i32, align 4
  %tmp162 = alloca i64, align 8
  store ptr %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6280, metadata !DIExpression()), !dbg !6314
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #14, !dbg !6315
  call void @llvm.dbg.declare(metadata ptr %k, metadata !6281, metadata !DIExpression()), !dbg !6316
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf) #14, !dbg !6317
  call void @llvm.dbg.declare(metadata ptr %logbuf, metadata !6282, metadata !DIExpression()), !dbg !6318
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6283, metadata !DIExpression()), !dbg !6320
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf_len) #14, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %logbuf_len, metadata !6284, metadata !DIExpression()), !dbg !6321
  %call = call ptr @scsi_log_reserve_buffer(ptr noundef %logbuf_len) #15, !dbg !6322
  store ptr %call, ptr %logbuf, align 8, !dbg !6323
  %0 = load ptr, ptr %logbuf, align 8, !dbg !6324
  %tobool = icmp ne ptr %0, null, !dbg !6324
  br i1 %tobool, label %if.end, label %if.then, !dbg !6326

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6327

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %logbuf, align 8, !dbg !6328
  %2 = load i64, ptr %logbuf_len, align 8, !dbg !6329
  %3 = load ptr, ptr %cmd.addr, align 8, !dbg !6330
  %call1 = call ptr @scmd_name(ptr noundef %3) #15, !dbg !6331
  %4 = load ptr, ptr %cmd.addr, align 8, !dbg !6332
  %call2 = call ptr @scsi_cmd_to_rq(ptr noundef %4) #15, !dbg !6333
  %tag = getelementptr inbounds %struct.request, ptr %call2, i32 0, i32 5, !dbg !6334
  %5 = load i32, ptr %tag, align 8, !dbg !6334
  %call3 = call i64 @sdev_format_header(ptr noundef %1, i64 noundef %2, ptr noundef %call1, i32 noundef %5) #15, !dbg !6335
  store i64 %call3, ptr %off, align 8, !dbg !6336
  %6 = load i64, ptr %off, align 8, !dbg !6337
  %7 = load i64, ptr %logbuf_len, align 8, !dbg !6339
  %cmp = icmp uge i64 %6, %7, !dbg !6340
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6341

if.then4:                                         ; preds = %if.end
  br label %out_printk, !dbg !6342

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %logbuf, align 8, !dbg !6343
  %9 = load i64, ptr %off, align 8, !dbg !6344
  %add.ptr = getelementptr i8, ptr %8, i64 %9, !dbg !6345
  %10 = load i64, ptr %logbuf_len, align 8, !dbg !6346
  %11 = load i64, ptr %off, align 8, !dbg !6347
  %sub = sub i64 %10, %11, !dbg !6348
  %call6 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str.4) #15, !dbg !6349
  %conv = sext i32 %call6 to i64, !dbg !6349
  %12 = load i64, ptr %off, align 8, !dbg !6350
  %add = add i64 %12, %conv, !dbg !6350
  store i64 %add, ptr %off, align 8, !dbg !6350
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6351
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6285, metadata !DIExpression()), !dbg !6351
  %13 = load i64, ptr %off, align 8, !dbg !6351
  %14 = load i64, ptr %logbuf_len, align 8, !dbg !6351
  %cmp7 = icmp uge i64 %13, %14, !dbg !6351
  %lnot = xor i1 %cmp7, true, !dbg !6351
  %lnot9 = xor i1 %lnot, true, !dbg !6351
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !6351
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6351
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !6352
  %tobool10 = icmp ne i32 %15, 0, !dbg !6352
  %lnot11 = xor i1 %tobool10, true, !dbg !6352
  %lnot13 = xor i1 %lnot11, true, !dbg !6352
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !6352
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !6352
  %expval = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !6352
  %tobool16 = icmp ne i64 %expval, 0, !dbg !6352
  br i1 %tobool16, label %if.then17, label %if.end27, !dbg !6351

if.then17:                                        ; preds = %if.end5
  br label %do.body, !dbg !6352

do.body:                                          ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6353
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6288, metadata !DIExpression()), !dbg !6353
  store i32 2305, ptr %__flags, align 4, !dbg !6353
  br label %do.body18, !dbg !6353

do.body18:                                        ; preds = %do.body
  br label %do.cond, !dbg !6354

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !6354

do.end:                                           ; preds = %do.cond
  br label %do.body19, !dbg !6353

do.body19:                                        ; preds = %do.end
  %16 = load i32, ptr %__flags, align 4, !dbg !6356
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 195, i32 %16, i64 12) #14, !dbg !6356, !srcloc !6358
  br label %do.cond20, !dbg !6356

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6356

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !6353

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !6359

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !6359

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6352
  br label %do.cond25, !dbg !6353

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !6353

do.end26:                                         ; preds = %do.cond25
  br label %if.end27, !dbg !6353

if.end27:                                         ; preds = %do.end26, %if.end5
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !6351
  %tobool28 = icmp ne i32 %17, 0, !dbg !6351
  %lnot29 = xor i1 %tobool28, true, !dbg !6351
  %lnot31 = xor i1 %lnot29, true, !dbg !6351
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !6351
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !6351
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !6351
  store i64 %expval34, ptr %tmp, align 8, !dbg !6352
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6361
  %18 = load i64, ptr %tmp, align 8, !dbg !6351
  %tobool35 = icmp ne i64 %18, 0, !dbg !6361
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !6362

if.then36:                                        ; preds = %if.end27
  br label %out_printk, !dbg !6363

if.end37:                                         ; preds = %if.end27
  %19 = load ptr, ptr %logbuf, align 8, !dbg !6364
  %20 = load i64, ptr %off, align 8, !dbg !6365
  %add.ptr38 = getelementptr i8, ptr %19, i64 %20, !dbg !6366
  %21 = load i64, ptr %logbuf_len, align 8, !dbg !6367
  %22 = load i64, ptr %off, align 8, !dbg !6368
  %sub39 = sub i64 %21, %22, !dbg !6369
  %23 = load ptr, ptr %cmd.addr, align 8, !dbg !6370
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %23, i32 0, i32 15, !dbg !6371
  %arraydecay = getelementptr inbounds [32 x i8], ptr %cmnd, i64 0, i64 0, !dbg !6370
  %call40 = call i64 @scsi_format_opcode_name(ptr noundef %add.ptr38, i64 noundef %sub39, ptr noundef %arraydecay) #15, !dbg !6372
  %24 = load i64, ptr %off, align 8, !dbg !6373
  %add41 = add i64 %24, %call40, !dbg !6373
  store i64 %add41, ptr %off, align 8, !dbg !6373
  %25 = load i64, ptr %off, align 8, !dbg !6374
  %26 = load i64, ptr %logbuf_len, align 8, !dbg !6376
  %cmp42 = icmp uge i64 %25, %26, !dbg !6377
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !6378

if.then44:                                        ; preds = %if.end37
  br label %out_printk, !dbg !6379

if.end45:                                         ; preds = %if.end37
  %27 = load ptr, ptr %cmd.addr, align 8, !dbg !6380
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 13, !dbg !6381
  %28 = load i16, ptr %cmd_len, align 4, !dbg !6381
  %conv46 = zext i16 %28 to i32, !dbg !6380
  %cmp47 = icmp sgt i32 %conv46, 16, !dbg !6382
  br i1 %cmp47, label %if.then49, label %if.end130, !dbg !6383

if.then49:                                        ; preds = %if.end45
  %29 = load ptr, ptr %logbuf, align 8, !dbg !6384
  %30 = load i64, ptr %off, align 8, !dbg !6385
  %add.ptr50 = getelementptr i8, ptr %29, i64 %30, !dbg !6386
  %31 = load i64, ptr %logbuf_len, align 8, !dbg !6387
  %32 = load i64, ptr %off, align 8, !dbg !6388
  %sub51 = sub i64 %31, %32, !dbg !6389
  %call52 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i64 noundef %sub51, ptr noundef @.str.5) #15, !dbg !6390
  %conv53 = sext i32 %call52 to i64, !dbg !6390
  %33 = load i64, ptr %off, align 8, !dbg !6391
  %add54 = add i64 %33, %conv53, !dbg !6391
  store i64 %add54, ptr %off, align 8, !dbg !6391
  br label %do.body55, !dbg !6392

do.body55:                                        ; preds = %if.then49
  br label %do.cond56, !dbg !6394

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !6394

do.end57:                                         ; preds = %do.cond56
  %34 = load ptr, ptr %cmd.addr, align 8, !dbg !6392
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %34, i32 0, i32 0, !dbg !6392
  %35 = load ptr, ptr %device, align 8, !dbg !6392
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 59, !dbg !6392
  %36 = load ptr, ptr %logbuf, align 8, !dbg !6392
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %sdev_gendev, ptr noundef @.str.2, ptr noundef %36) #16, !dbg !6392
  store i32 0, ptr %k, align 4, !dbg !6396
  br label %for.cond, !dbg !6397

for.cond:                                         ; preds = %for.inc, %do.end57
  %37 = load i32, ptr %k, align 4, !dbg !6398
  %38 = load ptr, ptr %cmd.addr, align 8, !dbg !6399
  %cmd_len58 = getelementptr inbounds %struct.scsi_cmnd, ptr %38, i32 0, i32 13, !dbg !6400
  %39 = load i16, ptr %cmd_len58, align 4, !dbg !6400
  %conv59 = zext i16 %39 to i32, !dbg !6399
  %cmp60 = icmp slt i32 %37, %conv59, !dbg !6401
  br i1 %cmp60, label %for.body, label %for.end, !dbg !6402

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %linelen) #14, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %linelen, metadata !6291, metadata !DIExpression()), !dbg !6404
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x351) #14, !dbg !6405
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x351, metadata !6297, metadata !DIExpression()), !dbg !6405
  %40 = load ptr, ptr %cmd.addr, align 8, !dbg !6405
  %cmd_len62 = getelementptr inbounds %struct.scsi_cmnd, ptr %40, i32 0, i32 13, !dbg !6405
  %41 = load i16, ptr %cmd_len62, align 4, !dbg !6405
  %conv63 = zext i16 %41 to i32, !dbg !6405
  %42 = load i32, ptr %k, align 4, !dbg !6405
  %sub64 = sub i32 %conv63, %42, !dbg !6405
  store i32 %sub64, ptr %__UNIQUE_ID___x351, align 4, !dbg !6405
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y352) #14, !dbg !6405
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y352, metadata !6299, metadata !DIExpression()), !dbg !6405
  store i32 16, ptr %__UNIQUE_ID___y352, align 4, !dbg !6405
  %43 = load i32, ptr %__UNIQUE_ID___x351, align 4, !dbg !6405
  %44 = load i32, ptr %__UNIQUE_ID___y352, align 4, !dbg !6405
  %cmp66 = icmp slt i32 %43, %44, !dbg !6405
  br i1 %cmp66, label %cond.true, label %cond.false, !dbg !6405

cond.true:                                        ; preds = %for.body
  %45 = load i32, ptr %__UNIQUE_ID___x351, align 4, !dbg !6405
  br label %cond.end, !dbg !6405

cond.false:                                       ; preds = %for.body
  %46 = load i32, ptr %__UNIQUE_ID___y352, align 4, !dbg !6405
  br label %cond.end, !dbg !6405

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %45, %cond.true ], [ %46, %cond.false ], !dbg !6405
  store i32 %cond, ptr %tmp65, align 4, !dbg !6405
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y352) #14, !dbg !6406
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x351) #14, !dbg !6406
  %47 = load i32, ptr %tmp65, align 4, !dbg !6405
  %conv68 = sext i32 %47 to i64, !dbg !6406
  store i64 %conv68, ptr %linelen, align 8, !dbg !6404
  %48 = load ptr, ptr %logbuf, align 8, !dbg !6407
  %49 = load i64, ptr %logbuf_len, align 8, !dbg !6408
  %50 = load ptr, ptr %cmd.addr, align 8, !dbg !6409
  %call69 = call ptr @scmd_name(ptr noundef %50) #15, !dbg !6410
  %51 = load ptr, ptr %cmd.addr, align 8, !dbg !6411
  %call70 = call ptr @scsi_cmd_to_rq(ptr noundef %51) #15, !dbg !6412
  %tag71 = getelementptr inbounds %struct.request, ptr %call70, i32 0, i32 5, !dbg !6413
  %52 = load i32, ptr %tag71, align 8, !dbg !6413
  %call72 = call i64 @sdev_format_header(ptr noundef %48, i64 noundef %49, ptr noundef %call69, i32 noundef %52) #15, !dbg !6414
  store i64 %call72, ptr %off, align 8, !dbg !6415
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on73) #14, !dbg !6416
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on73, metadata !6300, metadata !DIExpression()), !dbg !6416
  %53 = load i64, ptr %off, align 8, !dbg !6416
  %54 = load i64, ptr %logbuf_len, align 8, !dbg !6416
  %sub74 = sub i64 %54, 58, !dbg !6416
  %cmp75 = icmp ugt i64 %53, %sub74, !dbg !6416
  %lnot77 = xor i1 %cmp75, true, !dbg !6416
  %lnot79 = xor i1 %lnot77, true, !dbg !6416
  %lnot.ext80 = zext i1 %lnot79 to i32, !dbg !6416
  store i32 %lnot.ext80, ptr %__ret_warn_on73, align 4, !dbg !6416
  %55 = load i32, ptr %__ret_warn_on73, align 4, !dbg !6417
  %tobool81 = icmp ne i32 %55, 0, !dbg !6417
  %lnot82 = xor i1 %tobool81, true, !dbg !6417
  %lnot84 = xor i1 %lnot82, true, !dbg !6417
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !6417
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !6417
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !6417
  %tobool88 = icmp ne i64 %expval87, 0, !dbg !6417
  br i1 %tobool88, label %if.then89, label %if.end103, !dbg !6416

if.then89:                                        ; preds = %cond.end
  br label %do.body90, !dbg !6417

do.body90:                                        ; preds = %if.then89
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags91) #14, !dbg !6418
  call void @llvm.dbg.declare(metadata ptr %__flags91, metadata !6303, metadata !DIExpression()), !dbg !6418
  store i32 2305, ptr %__flags91, align 4, !dbg !6418
  br label %do.body92, !dbg !6418

do.body92:                                        ; preds = %do.body90
  br label %do.cond93, !dbg !6419

do.cond93:                                        ; preds = %do.body92
  br label %do.end94, !dbg !6419

do.end94:                                         ; preds = %do.cond93
  br label %do.body95, !dbg !6418

do.body95:                                        ; preds = %do.end94
  %56 = load i32, ptr %__flags91, align 4, !dbg !6421
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 214, i32 %56, i64 12) #14, !dbg !6421, !srcloc !6423
  br label %do.cond96, !dbg !6421

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !6421

do.end97:                                         ; preds = %do.cond96
  br label %do.body98, !dbg !6418

do.body98:                                        ; preds = %do.end97
  br label %do.cond99, !dbg !6424

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !6424

do.end100:                                        ; preds = %do.cond99
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags91) #14, !dbg !6417
  br label %do.cond101, !dbg !6418

do.cond101:                                       ; preds = %do.end100
  br label %do.end102, !dbg !6418

do.end102:                                        ; preds = %do.cond101
  br label %if.end103, !dbg !6418

if.end103:                                        ; preds = %do.end102, %cond.end
  %57 = load i32, ptr %__ret_warn_on73, align 4, !dbg !6416
  %tobool105 = icmp ne i32 %57, 0, !dbg !6416
  %lnot106 = xor i1 %tobool105, true, !dbg !6416
  %lnot108 = xor i1 %lnot106, true, !dbg !6416
  %lnot.ext109 = zext i1 %lnot108 to i32, !dbg !6416
  %conv110 = sext i32 %lnot.ext109 to i64, !dbg !6416
  %expval111 = call i64 @llvm.expect.i64(i64 %conv110, i64 0), !dbg !6416
  store i64 %expval111, ptr %tmp104, align 8, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on73) #14, !dbg !6426
  %58 = load i64, ptr %tmp104, align 8, !dbg !6416
  %tobool112 = icmp ne i64 %58, 0, !dbg !6426
  br i1 %tobool112, label %if.end123, label %if.then113, !dbg !6427

if.then113:                                       ; preds = %if.end103
  %59 = load ptr, ptr %logbuf, align 8, !dbg !6428
  %60 = load i64, ptr %off, align 8, !dbg !6430
  %add.ptr114 = getelementptr i8, ptr %59, i64 %60, !dbg !6431
  %61 = load i64, ptr %logbuf_len, align 8, !dbg !6432
  %62 = load i64, ptr %off, align 8, !dbg !6433
  %sub115 = sub i64 %61, %62, !dbg !6434
  %63 = load i32, ptr %k, align 4, !dbg !6435
  %call116 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr114, i64 noundef %sub115, ptr noundef @.str.7, i32 noundef %63) #15, !dbg !6436
  %conv117 = sext i32 %call116 to i64, !dbg !6436
  %64 = load i64, ptr %off, align 8, !dbg !6437
  %add118 = add i64 %64, %conv117, !dbg !6437
  store i64 %add118, ptr %off, align 8, !dbg !6437
  %65 = load ptr, ptr %cmd.addr, align 8, !dbg !6438
  %cmnd119 = getelementptr inbounds %struct.scsi_cmnd, ptr %65, i32 0, i32 15, !dbg !6439
  %66 = load i32, ptr %k, align 4, !dbg !6440
  %idxprom = sext i32 %66 to i64, !dbg !6438
  %arrayidx = getelementptr [32 x i8], ptr %cmnd119, i64 0, i64 %idxprom, !dbg !6438
  %67 = load i64, ptr %linelen, align 8, !dbg !6441
  %68 = load ptr, ptr %logbuf, align 8, !dbg !6442
  %69 = load i64, ptr %off, align 8, !dbg !6443
  %add.ptr120 = getelementptr i8, ptr %68, i64 %69, !dbg !6444
  %70 = load i64, ptr %logbuf_len, align 8, !dbg !6445
  %71 = load i64, ptr %off, align 8, !dbg !6446
  %sub121 = sub i64 %70, %71, !dbg !6447
  %call122 = call i32 @hex_dump_to_buffer(ptr noundef %arrayidx, i64 noundef %67, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr120, i64 noundef %sub121, i1 noundef zeroext false) #15, !dbg !6448
  br label %if.end123, !dbg !6449

if.end123:                                        ; preds = %if.then113, %if.end103
  br label %do.body124, !dbg !6450

do.body124:                                       ; preds = %if.end123
  br label %do.cond125, !dbg !6452

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !6452

do.end126:                                        ; preds = %do.cond125
  %72 = load ptr, ptr %cmd.addr, align 8, !dbg !6450
  %device127 = getelementptr inbounds %struct.scsi_cmnd, ptr %72, i32 0, i32 0, !dbg !6450
  %73 = load ptr, ptr %device127, align 8, !dbg !6450
  %sdev_gendev128 = getelementptr inbounds %struct.scsi_device, ptr %73, i32 0, i32 59, !dbg !6450
  %74 = load ptr, ptr %logbuf, align 8, !dbg !6450
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %sdev_gendev128, ptr noundef @.str.2, ptr noundef %74) #16, !dbg !6450
  call void @llvm.lifetime.end.p0(i64 8, ptr %linelen) #14, !dbg !6454
  br label %for.inc, !dbg !6455

for.inc:                                          ; preds = %do.end126
  %75 = load i32, ptr %k, align 4, !dbg !6456
  %add129 = add i32 %75, 16, !dbg !6456
  store i32 %add129, ptr %k, align 4, !dbg !6456
  br label %for.cond, !dbg !6457, !llvm.loop !6458

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !6460

if.end130:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on131) #14, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on131, metadata !6306, metadata !DIExpression()), !dbg !6461
  %76 = load i64, ptr %off, align 8, !dbg !6461
  %77 = load i64, ptr %logbuf_len, align 8, !dbg !6461
  %sub132 = sub i64 %77, 49, !dbg !6461
  %cmp133 = icmp ugt i64 %76, %sub132, !dbg !6461
  %lnot135 = xor i1 %cmp133, true, !dbg !6461
  %lnot137 = xor i1 %lnot135, true, !dbg !6461
  %lnot.ext138 = zext i1 %lnot137 to i32, !dbg !6461
  store i32 %lnot.ext138, ptr %__ret_warn_on131, align 4, !dbg !6461
  %78 = load i32, ptr %__ret_warn_on131, align 4, !dbg !6462
  %tobool139 = icmp ne i32 %78, 0, !dbg !6462
  %lnot140 = xor i1 %tobool139, true, !dbg !6462
  %lnot142 = xor i1 %lnot140, true, !dbg !6462
  %lnot.ext143 = zext i1 %lnot142 to i32, !dbg !6462
  %conv144 = sext i32 %lnot.ext143 to i64, !dbg !6462
  %expval145 = call i64 @llvm.expect.i64(i64 %conv144, i64 0), !dbg !6462
  %tobool146 = icmp ne i64 %expval145, 0, !dbg !6462
  br i1 %tobool146, label %if.then147, label %if.end161, !dbg !6461

if.then147:                                       ; preds = %if.end130
  br label %do.body148, !dbg !6462

do.body148:                                       ; preds = %if.then147
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags149) #14, !dbg !6463
  call void @llvm.dbg.declare(metadata ptr %__flags149, metadata !6309, metadata !DIExpression()), !dbg !6463
  store i32 2305, ptr %__flags149, align 4, !dbg !6463
  br label %do.body150, !dbg !6463

do.body150:                                       ; preds = %do.body148
  br label %do.cond151, !dbg !6464

do.cond151:                                       ; preds = %do.body150
  br label %do.end152, !dbg !6464

do.end152:                                        ; preds = %do.cond151
  br label %do.body153, !dbg !6463

do.body153:                                       ; preds = %do.end152
  %79 = load i32, ptr %__flags149, align 4, !dbg !6466
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 226, i32 %79, i64 12) #14, !dbg !6466, !srcloc !6468
  br label %do.cond154, !dbg !6466

do.cond154:                                       ; preds = %do.body153
  br label %do.end155, !dbg !6466

do.end155:                                        ; preds = %do.cond154
  br label %do.body156, !dbg !6463

do.body156:                                       ; preds = %do.end155
  br label %do.cond157, !dbg !6469

do.cond157:                                       ; preds = %do.body156
  br label %do.end158, !dbg !6469

do.end158:                                        ; preds = %do.cond157
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags149) #14, !dbg !6462
  br label %do.cond159, !dbg !6463

do.cond159:                                       ; preds = %do.end158
  br label %do.end160, !dbg !6463

do.end160:                                        ; preds = %do.cond159
  br label %if.end161, !dbg !6463

if.end161:                                        ; preds = %do.end160, %if.end130
  %80 = load i32, ptr %__ret_warn_on131, align 4, !dbg !6461
  %tobool163 = icmp ne i32 %80, 0, !dbg !6461
  %lnot164 = xor i1 %tobool163, true, !dbg !6461
  %lnot166 = xor i1 %lnot164, true, !dbg !6461
  %lnot.ext167 = zext i1 %lnot166 to i32, !dbg !6461
  %conv168 = sext i32 %lnot.ext167 to i64, !dbg !6461
  %expval169 = call i64 @llvm.expect.i64(i64 %conv168, i64 0), !dbg !6461
  store i64 %expval169, ptr %tmp162, align 8, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on131) #14, !dbg !6471
  %81 = load i64, ptr %tmp162, align 8, !dbg !6461
  %tobool170 = icmp ne i64 %81, 0, !dbg !6471
  br i1 %tobool170, label %if.end184, label %if.then171, !dbg !6472

if.then171:                                       ; preds = %if.end161
  %82 = load ptr, ptr %logbuf, align 8, !dbg !6473
  %83 = load i64, ptr %off, align 8, !dbg !6475
  %add.ptr172 = getelementptr i8, ptr %82, i64 %83, !dbg !6476
  %84 = load i64, ptr %logbuf_len, align 8, !dbg !6477
  %85 = load i64, ptr %off, align 8, !dbg !6478
  %sub173 = sub i64 %84, %85, !dbg !6479
  %call174 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr172, i64 noundef %sub173, ptr noundef @.str.8) #15, !dbg !6480
  %conv175 = sext i32 %call174 to i64, !dbg !6480
  %86 = load i64, ptr %off, align 8, !dbg !6481
  %add176 = add i64 %86, %conv175, !dbg !6481
  store i64 %add176, ptr %off, align 8, !dbg !6481
  %87 = load ptr, ptr %cmd.addr, align 8, !dbg !6482
  %cmnd177 = getelementptr inbounds %struct.scsi_cmnd, ptr %87, i32 0, i32 15, !dbg !6483
  %arraydecay178 = getelementptr inbounds [32 x i8], ptr %cmnd177, i64 0, i64 0, !dbg !6482
  %88 = load ptr, ptr %cmd.addr, align 8, !dbg !6484
  %cmd_len179 = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 13, !dbg !6485
  %89 = load i16, ptr %cmd_len179, align 4, !dbg !6485
  %conv180 = zext i16 %89 to i64, !dbg !6484
  %90 = load ptr, ptr %logbuf, align 8, !dbg !6486
  %91 = load i64, ptr %off, align 8, !dbg !6487
  %add.ptr181 = getelementptr i8, ptr %90, i64 %91, !dbg !6488
  %92 = load i64, ptr %logbuf_len, align 8, !dbg !6489
  %93 = load i64, ptr %off, align 8, !dbg !6490
  %sub182 = sub i64 %92, %93, !dbg !6491
  %call183 = call i32 @hex_dump_to_buffer(ptr noundef %arraydecay178, i64 noundef %conv180, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr181, i64 noundef %sub182, i1 noundef zeroext false) #15, !dbg !6492
  br label %if.end184, !dbg !6493

if.end184:                                        ; preds = %if.then171, %if.end161
  br label %out_printk, !dbg !6471

out_printk:                                       ; preds = %if.end184, %if.then44, %if.then36, %if.then4
  call void @llvm.dbg.label(metadata !6312), !dbg !6494
  br label %do.body185, !dbg !6495

do.body185:                                       ; preds = %out_printk
  br label %do.cond186, !dbg !6497

do.cond186:                                       ; preds = %do.body185
  br label %do.end187, !dbg !6497

do.end187:                                        ; preds = %do.cond186
  %94 = load ptr, ptr %cmd.addr, align 8, !dbg !6495
  %device188 = getelementptr inbounds %struct.scsi_cmnd, ptr %94, i32 0, i32 0, !dbg !6495
  %95 = load ptr, ptr %device188, align 8, !dbg !6495
  %sdev_gendev189 = getelementptr inbounds %struct.scsi_device, ptr %95, i32 0, i32 59, !dbg !6495
  %96 = load ptr, ptr %logbuf, align 8, !dbg !6495
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %sdev_gendev189, ptr noundef @.str.2, ptr noundef %96) #16, !dbg !6495
  br label %out, !dbg !6499

out:                                              ; preds = %do.end187, %for.end
  call void @llvm.dbg.label(metadata !6313), !dbg !6500
  %97 = load ptr, ptr %logbuf, align 8, !dbg !6501
  call void @scsi_log_release_buffer(ptr noundef %97) #15, !dbg !6502
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6503
  br label %cleanup, !dbg !6503

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf_len) #14, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf) #14, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #14, !dbg !6503
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6503

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6504 dso_local i32 @hex_dump_to_buffer(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scsi_print_sense_hdr(ptr noundef %sdev, ptr noundef %name, ptr noundef %sshdr) #0 align 16 !dbg !6508 {
entry:
  %sdev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %sshdr.addr = alloca ptr, align 8
  store ptr %sdev, ptr %sdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sdev.addr, metadata !6524, metadata !DIExpression()), !dbg !6527
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6525, metadata !DIExpression()), !dbg !6528
  store ptr %sshdr, ptr %sshdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sshdr.addr, metadata !6526, metadata !DIExpression()), !dbg !6529
  %0 = load ptr, ptr %sdev.addr, align 8, !dbg !6530
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6531
  %2 = load ptr, ptr %sshdr.addr, align 8, !dbg !6532
  call void @scsi_log_print_sense_hdr(ptr noundef %0, ptr noundef %1, i32 noundef -1, ptr noundef %2) #15, !dbg !6533
  ret void, !dbg !6534
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scsi_log_print_sense_hdr(ptr noundef %sdev, ptr noundef %name, i32 noundef %tag, ptr noundef %sshdr) #0 align 16 !dbg !6535 {
entry:
  %sdev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %sshdr.addr = alloca ptr, align 8
  %logbuf = alloca ptr, align 8
  %off = alloca i64, align 8
  %logbuf_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sdev, ptr %sdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sdev.addr, metadata !6539, metadata !DIExpression()), !dbg !6546
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6540, metadata !DIExpression()), !dbg !6547
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !6541, metadata !DIExpression()), !dbg !6548
  store ptr %sshdr, ptr %sshdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sshdr.addr, metadata !6542, metadata !DIExpression()), !dbg !6549
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf) #14, !dbg !6550
  call void @llvm.dbg.declare(metadata ptr %logbuf, metadata !6543, metadata !DIExpression()), !dbg !6551
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !6552
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6544, metadata !DIExpression()), !dbg !6553
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf_len) #14, !dbg !6552
  call void @llvm.dbg.declare(metadata ptr %logbuf_len, metadata !6545, metadata !DIExpression()), !dbg !6554
  %call = call ptr @scsi_log_reserve_buffer(ptr noundef %logbuf_len) #15, !dbg !6555
  store ptr %call, ptr %logbuf, align 8, !dbg !6556
  %0 = load ptr, ptr %logbuf, align 8, !dbg !6557
  %tobool = icmp ne ptr %0, null, !dbg !6557
  br i1 %tobool, label %if.end, label %if.then, !dbg !6559

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6560

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %logbuf, align 8, !dbg !6561
  %2 = load i64, ptr %logbuf_len, align 8, !dbg !6562
  %3 = load ptr, ptr %name.addr, align 8, !dbg !6563
  %4 = load i32, ptr %tag.addr, align 4, !dbg !6564
  %call1 = call i64 @sdev_format_header(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #15, !dbg !6565
  store i64 %call1, ptr %off, align 8, !dbg !6566
  %5 = load ptr, ptr %logbuf, align 8, !dbg !6567
  %6 = load i64, ptr %off, align 8, !dbg !6568
  %add.ptr = getelementptr i8, ptr %5, i64 %6, !dbg !6569
  %7 = load i64, ptr %logbuf_len, align 8, !dbg !6570
  %8 = load i64, ptr %off, align 8, !dbg !6571
  %sub = sub i64 %7, %8, !dbg !6572
  %9 = load ptr, ptr %sshdr.addr, align 8, !dbg !6573
  %call2 = call i64 @scsi_format_sense_hdr(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef %9) #15, !dbg !6574
  %10 = load i64, ptr %off, align 8, !dbg !6575
  %add = add i64 %10, %call2, !dbg !6575
  store i64 %add, ptr %off, align 8, !dbg !6575
  br label %do.body, !dbg !6576

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6578

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6578

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %sdev.addr, align 8, !dbg !6576
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 59, !dbg !6576
  %12 = load ptr, ptr %logbuf, align 8, !dbg !6576
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %sdev_gendev, ptr noundef @.str.2, ptr noundef %12) #16, !dbg !6576
  %13 = load ptr, ptr %logbuf, align 8, !dbg !6580
  call void @scsi_log_release_buffer(ptr noundef %13) #15, !dbg !6581
  %call3 = call ptr @scsi_log_reserve_buffer(ptr noundef %logbuf_len) #15, !dbg !6582
  store ptr %call3, ptr %logbuf, align 8, !dbg !6583
  %14 = load ptr, ptr %logbuf, align 8, !dbg !6584
  %tobool4 = icmp ne ptr %14, null, !dbg !6584
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6586

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6587

if.end6:                                          ; preds = %do.end
  %15 = load ptr, ptr %logbuf, align 8, !dbg !6588
  %16 = load i64, ptr %logbuf_len, align 8, !dbg !6589
  %17 = load ptr, ptr %name.addr, align 8, !dbg !6590
  %18 = load i32, ptr %tag.addr, align 4, !dbg !6591
  %call7 = call i64 @sdev_format_header(ptr noundef %15, i64 noundef %16, ptr noundef %17, i32 noundef %18) #15, !dbg !6592
  store i64 %call7, ptr %off, align 8, !dbg !6593
  %19 = load ptr, ptr %logbuf, align 8, !dbg !6594
  %20 = load i64, ptr %off, align 8, !dbg !6595
  %add.ptr8 = getelementptr i8, ptr %19, i64 %20, !dbg !6596
  %21 = load i64, ptr %logbuf_len, align 8, !dbg !6597
  %22 = load i64, ptr %off, align 8, !dbg !6598
  %sub9 = sub i64 %21, %22, !dbg !6599
  %23 = load ptr, ptr %sshdr.addr, align 8, !dbg !6600
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %23, i32 0, i32 2, !dbg !6601
  %24 = load i8, ptr %asc, align 1, !dbg !6601
  %25 = load ptr, ptr %sshdr.addr, align 8, !dbg !6602
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, ptr %25, i32 0, i32 3, !dbg !6603
  %26 = load i8, ptr %ascq, align 1, !dbg !6603
  %call10 = call i64 @scsi_format_extd_sense(ptr noundef %add.ptr8, i64 noundef %sub9, i8 noundef zeroext %24, i8 noundef zeroext %26) #15, !dbg !6604
  %27 = load i64, ptr %off, align 8, !dbg !6605
  %add11 = add i64 %27, %call10, !dbg !6605
  store i64 %add11, ptr %off, align 8, !dbg !6605
  br label %do.body12, !dbg !6606

do.body12:                                        ; preds = %if.end6
  br label %do.cond13, !dbg !6608

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6608

do.end14:                                         ; preds = %do.cond13
  %28 = load ptr, ptr %sdev.addr, align 8, !dbg !6606
  %sdev_gendev15 = getelementptr inbounds %struct.scsi_device, ptr %28, i32 0, i32 59, !dbg !6606
  %29 = load ptr, ptr %logbuf, align 8, !dbg !6606
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %sdev_gendev15, ptr noundef @.str.2, ptr noundef %29) #16, !dbg !6606
  %30 = load ptr, ptr %logbuf, align 8, !dbg !6610
  call void @scsi_log_release_buffer(ptr noundef %30) #15, !dbg !6611
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6612
  br label %cleanup, !dbg !6612

cleanup:                                          ; preds = %do.end14, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf_len) #14, !dbg !6612
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !6612
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf) #14, !dbg !6612
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6612

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__scsi_print_sense(ptr noundef %sdev, ptr noundef %name, ptr noundef %sense_buffer, i32 noundef %sense_len) #0 align 16 !dbg !6613 {
entry:
  %sdev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %sense_buffer.addr = alloca ptr, align 8
  %sense_len.addr = alloca i32, align 4
  store ptr %sdev, ptr %sdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sdev.addr, metadata !6617, metadata !DIExpression()), !dbg !6621
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6618, metadata !DIExpression()), !dbg !6622
  store ptr %sense_buffer, ptr %sense_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sense_buffer.addr, metadata !6619, metadata !DIExpression()), !dbg !6623
  store i32 %sense_len, ptr %sense_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sense_len.addr, metadata !6620, metadata !DIExpression()), !dbg !6624
  %0 = load ptr, ptr %sdev.addr, align 8, !dbg !6625
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6626
  %2 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !6627
  %3 = load i32, ptr %sense_len.addr, align 4, !dbg !6628
  call void @scsi_log_print_sense(ptr noundef %0, ptr noundef %1, i32 noundef -1, ptr noundef %2, i32 noundef %3) #15, !dbg !6629
  ret void, !dbg !6630
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scsi_log_print_sense(ptr noundef %sdev, ptr noundef %name, i32 noundef %tag, ptr noundef %sense_buffer, i32 noundef %sense_len) #0 align 16 !dbg !6631 {
entry:
  %sdev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %sense_buffer.addr = alloca ptr, align 8
  %sense_len.addr = alloca i32, align 4
  %sshdr = alloca %struct.scsi_sense_hdr, align 1
  store ptr %sdev, ptr %sdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sdev.addr, metadata !6635, metadata !DIExpression()), !dbg !6641
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6636, metadata !DIExpression()), !dbg !6642
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !6637, metadata !DIExpression()), !dbg !6643
  store ptr %sense_buffer, ptr %sense_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sense_buffer.addr, metadata !6638, metadata !DIExpression()), !dbg !6644
  store i32 %sense_len, ptr %sense_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sense_len.addr, metadata !6639, metadata !DIExpression()), !dbg !6645
  call void @llvm.lifetime.start.p0(i64 8, ptr %sshdr) #14, !dbg !6646
  call void @llvm.dbg.declare(metadata ptr %sshdr, metadata !6640, metadata !DIExpression()), !dbg !6647
  %0 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !6648
  %1 = load i32, ptr %sense_len.addr, align 4, !dbg !6650
  %call = call zeroext i1 @scsi_normalize_sense(ptr noundef %0, i32 noundef %1, ptr noundef %sshdr) #15, !dbg !6651
  br i1 %call, label %if.then, label %if.else, !dbg !6652

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sdev.addr, align 8, !dbg !6653
  %3 = load ptr, ptr %name.addr, align 8, !dbg !6654
  %4 = load i32, ptr %tag.addr, align 4, !dbg !6655
  call void @scsi_log_print_sense_hdr(ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %sshdr) #15, !dbg !6656
  br label %if.end, !dbg !6656

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %sdev.addr, align 8, !dbg !6657
  %6 = load ptr, ptr %name.addr, align 8, !dbg !6658
  %7 = load i32, ptr %tag.addr, align 4, !dbg !6659
  %8 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !6660
  %9 = load i32, ptr %sense_len.addr, align 4, !dbg !6661
  call void @scsi_log_dump_sense(ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) #15, !dbg !6662
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sshdr) #14, !dbg !6663
  ret void, !dbg !6663
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scsi_print_sense(ptr noundef %cmd) #0 align 16 !dbg !6664 {
entry:
  %cmd.addr = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6668, metadata !DIExpression()), !dbg !6669
  %0 = load ptr, ptr %cmd.addr, align 8, !dbg !6670
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 0, !dbg !6671
  %1 = load ptr, ptr %device, align 8, !dbg !6671
  %2 = load ptr, ptr %cmd.addr, align 8, !dbg !6672
  %call = call ptr @scmd_name(ptr noundef %2) #15, !dbg !6673
  %3 = load ptr, ptr %cmd.addr, align 8, !dbg !6674
  %call1 = call ptr @scsi_cmd_to_rq(ptr noundef %3) #15, !dbg !6675
  %tag = getelementptr inbounds %struct.request, ptr %call1, i32 0, i32 5, !dbg !6676
  %4 = load i32, ptr %tag, align 8, !dbg !6676
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !6677
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 22, !dbg !6678
  %6 = load ptr, ptr %sense_buffer, align 8, !dbg !6678
  call void @scsi_log_print_sense(ptr noundef %1, ptr noundef %call, i32 noundef %4, ptr noundef %6, i32 noundef 96) #15, !dbg !6679
  ret void, !dbg !6680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scsi_print_result(ptr noundef %cmd, ptr noundef %msg, i32 noundef %disposition) #0 align 16 !dbg !6681 {
entry:
  %cmd.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %disposition.addr = alloca i32, align 4
  %logbuf = alloca ptr, align 8
  %off = alloca i64, align 8
  %logbuf_len = alloca i64, align 8
  %mlret_string = alloca ptr, align 8
  %hb_string = alloca ptr, align 8
  %cmd_age = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on57 = alloca i32, align 4
  %__flags74 = alloca i32, align 4
  %tmp87 = alloca i64, align 8
  %__ret_warn_on103 = alloca i32, align 4
  %__flags120 = alloca i32, align 4
  %tmp133 = alloca i64, align 8
  %__ret_warn_on159 = alloca i32, align 4
  %__flags176 = alloca i32, align 4
  %tmp189 = alloca i64, align 8
  store ptr %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6685, metadata !DIExpression()), !dbg !6721
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !6686, metadata !DIExpression()), !dbg !6722
  store i32 %disposition, ptr %disposition.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %disposition.addr, metadata !6687, metadata !DIExpression()), !dbg !6723
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf) #14, !dbg !6724
  call void @llvm.dbg.declare(metadata ptr %logbuf, metadata !6688, metadata !DIExpression()), !dbg !6725
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !6726
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6689, metadata !DIExpression()), !dbg !6727
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf_len) #14, !dbg !6726
  call void @llvm.dbg.declare(metadata ptr %logbuf_len, metadata !6690, metadata !DIExpression()), !dbg !6728
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlret_string) #14, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %mlret_string, metadata !6691, metadata !DIExpression()), !dbg !6730
  %0 = load i32, ptr %disposition.addr, align 4, !dbg !6731
  %call = call ptr @scsi_mlreturn_string(i32 noundef %0) #15, !dbg !6732
  store ptr %call, ptr %mlret_string, align 8, !dbg !6730
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb_string) #14, !dbg !6733
  call void @llvm.dbg.declare(metadata ptr %hb_string, metadata !6692, metadata !DIExpression()), !dbg !6734
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !6735
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 27, !dbg !6736
  %2 = load i32, ptr %result, align 8, !dbg !6736
  %call1 = call ptr @scsi_hostbyte_string(i32 noundef %2) #15, !dbg !6737
  store ptr %call1, ptr %hb_string, align 8, !dbg !6734
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd_age) #14, !dbg !6738
  call void @llvm.dbg.declare(metadata ptr %cmd_age, metadata !6693, metadata !DIExpression()), !dbg !6739
  %3 = load volatile i64, ptr @jiffies, align 64, !dbg !6740
  %4 = load ptr, ptr %cmd.addr, align 8, !dbg !6741
  %jiffies_at_alloc = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 6, !dbg !6742
  %5 = load i64, ptr %jiffies_at_alloc, align 8, !dbg !6742
  %sub = sub i64 %3, %5, !dbg !6743
  %div = udiv i64 %sub, 1000, !dbg !6744
  store i64 %div, ptr %cmd_age, align 8, !dbg !6739
  %call2 = call ptr @scsi_log_reserve_buffer(ptr noundef %logbuf_len) #15, !dbg !6745
  store ptr %call2, ptr %logbuf, align 8, !dbg !6746
  %6 = load ptr, ptr %logbuf, align 8, !dbg !6747
  %tobool = icmp ne ptr %6, null, !dbg !6747
  br i1 %tobool, label %if.end, label %if.then, !dbg !6749

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6750

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %logbuf, align 8, !dbg !6751
  %8 = load i64, ptr %logbuf_len, align 8, !dbg !6752
  %9 = load ptr, ptr %cmd.addr, align 8, !dbg !6753
  %call3 = call ptr @scmd_name(ptr noundef %9) #15, !dbg !6754
  %10 = load ptr, ptr %cmd.addr, align 8, !dbg !6755
  %call4 = call ptr @scsi_cmd_to_rq(ptr noundef %10) #15, !dbg !6756
  %tag = getelementptr inbounds %struct.request, ptr %call4, i32 0, i32 5, !dbg !6757
  %11 = load i32, ptr %tag, align 8, !dbg !6757
  %call5 = call i64 @sdev_format_header(ptr noundef %7, i64 noundef %8, ptr noundef %call3, i32 noundef %11) #15, !dbg !6758
  store i64 %call5, ptr %off, align 8, !dbg !6759
  %12 = load i64, ptr %off, align 8, !dbg !6760
  %13 = load i64, ptr %logbuf_len, align 8, !dbg !6762
  %cmp = icmp uge i64 %12, %13, !dbg !6763
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !6764

if.then6:                                         ; preds = %if.end
  br label %out_printk, !dbg !6765

if.end7:                                          ; preds = %if.end
  %14 = load ptr, ptr %msg.addr, align 8, !dbg !6766
  %tobool8 = icmp ne ptr %14, null, !dbg !6766
  br i1 %tobool8, label %if.then9, label %if.end43, !dbg !6767

if.then9:                                         ; preds = %if.end7
  %15 = load ptr, ptr %logbuf, align 8, !dbg !6768
  %16 = load i64, ptr %off, align 8, !dbg !6769
  %add.ptr = getelementptr i8, ptr %15, i64 %16, !dbg !6770
  %17 = load i64, ptr %logbuf_len, align 8, !dbg !6771
  %18 = load i64, ptr %off, align 8, !dbg !6772
  %sub10 = sub i64 %17, %18, !dbg !6773
  %19 = load ptr, ptr %msg.addr, align 8, !dbg !6774
  %call11 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub10, ptr noundef @.str.9, ptr noundef %19) #15, !dbg !6775
  %conv = sext i32 %call11 to i64, !dbg !6775
  %20 = load i64, ptr %off, align 8, !dbg !6776
  %add = add i64 %20, %conv, !dbg !6776
  store i64 %add, ptr %off, align 8, !dbg !6776
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6777
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6694, metadata !DIExpression()), !dbg !6777
  %21 = load i64, ptr %off, align 8, !dbg !6777
  %22 = load i64, ptr %logbuf_len, align 8, !dbg !6777
  %cmp12 = icmp uge i64 %21, %22, !dbg !6777
  %lnot = xor i1 %cmp12, true, !dbg !6777
  %lnot14 = xor i1 %lnot, true, !dbg !6777
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6777
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6777
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !6778
  %tobool15 = icmp ne i32 %23, 0, !dbg !6778
  %lnot16 = xor i1 %tobool15, true, !dbg !6778
  %lnot18 = xor i1 %lnot16, true, !dbg !6778
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6778
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6778
  %expval = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !6778
  %tobool21 = icmp ne i64 %expval, 0, !dbg !6778
  br i1 %tobool21, label %if.then22, label %if.end32, !dbg !6777

if.then22:                                        ; preds = %if.then9
  br label %do.body, !dbg !6778

do.body:                                          ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6779
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6699, metadata !DIExpression()), !dbg !6779
  store i32 2305, ptr %__flags, align 4, !dbg !6779
  br label %do.body23, !dbg !6779

do.body23:                                        ; preds = %do.body
  br label %do.cond, !dbg !6780

do.cond:                                          ; preds = %do.body23
  br label %do.end, !dbg !6780

do.end:                                           ; preds = %do.cond
  br label %do.body24, !dbg !6779

do.body24:                                        ; preds = %do.end
  %24 = load i32, ptr %__flags, align 4, !dbg !6782
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 404, i32 %24, i64 12) #14, !dbg !6782, !srcloc !6784
  br label %do.cond25, !dbg !6782

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !6782

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !6779

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !6785

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !6785

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6778
  br label %do.cond30, !dbg !6779

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !6779

do.end31:                                         ; preds = %do.cond30
  br label %if.end32, !dbg !6779

if.end32:                                         ; preds = %do.end31, %if.then9
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !6777
  %tobool33 = icmp ne i32 %25, 0, !dbg !6777
  %lnot34 = xor i1 %tobool33, true, !dbg !6777
  %lnot36 = xor i1 %lnot34, true, !dbg !6777
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !6777
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !6777
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !6777
  store i64 %expval39, ptr %tmp, align 8, !dbg !6778
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6787
  %26 = load i64, ptr %tmp, align 8, !dbg !6777
  %tobool40 = icmp ne i64 %26, 0, !dbg !6787
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !6788

if.then41:                                        ; preds = %if.end32
  br label %out_printk, !dbg !6789

if.end42:                                         ; preds = %if.end32
  br label %if.end43, !dbg !6790

if.end43:                                         ; preds = %if.end42, %if.end7
  %27 = load ptr, ptr %mlret_string, align 8, !dbg !6791
  %tobool44 = icmp ne ptr %27, null, !dbg !6791
  br i1 %tobool44, label %if.then45, label %if.else, !dbg !6793

if.then45:                                        ; preds = %if.end43
  %28 = load ptr, ptr %logbuf, align 8, !dbg !6794
  %29 = load i64, ptr %off, align 8, !dbg !6795
  %add.ptr46 = getelementptr i8, ptr %28, i64 %29, !dbg !6796
  %30 = load i64, ptr %logbuf_len, align 8, !dbg !6797
  %31 = load i64, ptr %off, align 8, !dbg !6798
  %sub47 = sub i64 %30, %31, !dbg !6799
  %32 = load ptr, ptr %mlret_string, align 8, !dbg !6800
  %call48 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i64 noundef %sub47, ptr noundef @.str.10, ptr noundef %32) #15, !dbg !6801
  %conv49 = sext i32 %call48 to i64, !dbg !6801
  %33 = load i64, ptr %off, align 8, !dbg !6802
  %add50 = add i64 %33, %conv49, !dbg !6802
  store i64 %add50, ptr %off, align 8, !dbg !6802
  br label %if.end56, !dbg !6803

if.else:                                          ; preds = %if.end43
  %34 = load ptr, ptr %logbuf, align 8, !dbg !6804
  %35 = load i64, ptr %off, align 8, !dbg !6805
  %add.ptr51 = getelementptr i8, ptr %34, i64 %35, !dbg !6806
  %36 = load i64, ptr %logbuf_len, align 8, !dbg !6807
  %37 = load i64, ptr %off, align 8, !dbg !6808
  %sub52 = sub i64 %36, %37, !dbg !6809
  %38 = load i32, ptr %disposition.addr, align 4, !dbg !6810
  %call53 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr51, i64 noundef %sub52, ptr noundef @.str.11, i32 noundef %38) #15, !dbg !6811
  %conv54 = sext i32 %call53 to i64, !dbg !6811
  %39 = load i64, ptr %off, align 8, !dbg !6812
  %add55 = add i64 %39, %conv54, !dbg !6812
  store i64 %add55, ptr %off, align 8, !dbg !6812
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on57) #14, !dbg !6813
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on57, metadata !6702, metadata !DIExpression()), !dbg !6813
  %40 = load i64, ptr %off, align 8, !dbg !6813
  %41 = load i64, ptr %logbuf_len, align 8, !dbg !6813
  %cmp58 = icmp uge i64 %40, %41, !dbg !6813
  %lnot60 = xor i1 %cmp58, true, !dbg !6813
  %lnot62 = xor i1 %lnot60, true, !dbg !6813
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !6813
  store i32 %lnot.ext63, ptr %__ret_warn_on57, align 4, !dbg !6813
  %42 = load i32, ptr %__ret_warn_on57, align 4, !dbg !6814
  %tobool64 = icmp ne i32 %42, 0, !dbg !6814
  %lnot65 = xor i1 %tobool64, true, !dbg !6814
  %lnot67 = xor i1 %lnot65, true, !dbg !6814
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !6814
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !6814
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !6814
  %tobool71 = icmp ne i64 %expval70, 0, !dbg !6814
  br i1 %tobool71, label %if.then72, label %if.end86, !dbg !6813

if.then72:                                        ; preds = %if.end56
  br label %do.body73, !dbg !6814

do.body73:                                        ; preds = %if.then72
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags74) #14, !dbg !6815
  call void @llvm.dbg.declare(metadata ptr %__flags74, metadata !6705, metadata !DIExpression()), !dbg !6815
  store i32 2305, ptr %__flags74, align 4, !dbg !6815
  br label %do.body75, !dbg !6815

do.body75:                                        ; preds = %do.body73
  br label %do.cond76, !dbg !6816

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !6816

do.end77:                                         ; preds = %do.cond76
  br label %do.body78, !dbg !6815

do.body78:                                        ; preds = %do.end77
  %43 = load i32, ptr %__flags74, align 4, !dbg !6818
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 413, i32 %43, i64 12) #14, !dbg !6818, !srcloc !6820
  br label %do.cond79, !dbg !6818

do.cond79:                                        ; preds = %do.body78
  br label %do.end80, !dbg !6818

do.end80:                                         ; preds = %do.cond79
  br label %do.body81, !dbg !6815

do.body81:                                        ; preds = %do.end80
  br label %do.cond82, !dbg !6821

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !6821

do.end83:                                         ; preds = %do.cond82
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags74) #14, !dbg !6814
  br label %do.cond84, !dbg !6815

do.cond84:                                        ; preds = %do.end83
  br label %do.end85, !dbg !6815

do.end85:                                         ; preds = %do.cond84
  br label %if.end86, !dbg !6815

if.end86:                                         ; preds = %do.end85, %if.end56
  %44 = load i32, ptr %__ret_warn_on57, align 4, !dbg !6813
  %tobool88 = icmp ne i32 %44, 0, !dbg !6813
  %lnot89 = xor i1 %tobool88, true, !dbg !6813
  %lnot91 = xor i1 %lnot89, true, !dbg !6813
  %lnot.ext92 = zext i1 %lnot91 to i32, !dbg !6813
  %conv93 = sext i32 %lnot.ext92 to i64, !dbg !6813
  %expval94 = call i64 @llvm.expect.i64(i64 %conv93, i64 0), !dbg !6813
  store i64 %expval94, ptr %tmp87, align 8, !dbg !6814
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on57) #14, !dbg !6823
  %45 = load i64, ptr %tmp87, align 8, !dbg !6813
  %tobool95 = icmp ne i64 %45, 0, !dbg !6823
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !6824

if.then96:                                        ; preds = %if.end86
  br label %out_printk, !dbg !6825

if.end97:                                         ; preds = %if.end86
  %46 = load ptr, ptr %logbuf, align 8, !dbg !6826
  %47 = load i64, ptr %off, align 8, !dbg !6827
  %add.ptr98 = getelementptr i8, ptr %46, i64 %47, !dbg !6828
  %48 = load i64, ptr %logbuf_len, align 8, !dbg !6829
  %49 = load i64, ptr %off, align 8, !dbg !6830
  %sub99 = sub i64 %48, %49, !dbg !6831
  %call100 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr98, i64 noundef %sub99, ptr noundef @.str.12) #15, !dbg !6832
  %conv101 = sext i32 %call100 to i64, !dbg !6832
  %50 = load i64, ptr %off, align 8, !dbg !6833
  %add102 = add i64 %50, %conv101, !dbg !6833
  store i64 %add102, ptr %off, align 8, !dbg !6833
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on103) #14, !dbg !6834
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on103, metadata !6708, metadata !DIExpression()), !dbg !6834
  %51 = load i64, ptr %off, align 8, !dbg !6834
  %52 = load i64, ptr %logbuf_len, align 8, !dbg !6834
  %cmp104 = icmp uge i64 %51, %52, !dbg !6834
  %lnot106 = xor i1 %cmp104, true, !dbg !6834
  %lnot108 = xor i1 %lnot106, true, !dbg !6834
  %lnot.ext109 = zext i1 %lnot108 to i32, !dbg !6834
  store i32 %lnot.ext109, ptr %__ret_warn_on103, align 4, !dbg !6834
  %53 = load i32, ptr %__ret_warn_on103, align 4, !dbg !6835
  %tobool110 = icmp ne i32 %53, 0, !dbg !6835
  %lnot111 = xor i1 %tobool110, true, !dbg !6835
  %lnot113 = xor i1 %lnot111, true, !dbg !6835
  %lnot.ext114 = zext i1 %lnot113 to i32, !dbg !6835
  %conv115 = sext i32 %lnot.ext114 to i64, !dbg !6835
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 0), !dbg !6835
  %tobool117 = icmp ne i64 %expval116, 0, !dbg !6835
  br i1 %tobool117, label %if.then118, label %if.end132, !dbg !6834

if.then118:                                       ; preds = %if.end97
  br label %do.body119, !dbg !6835

do.body119:                                       ; preds = %if.then118
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags120) #14, !dbg !6836
  call void @llvm.dbg.declare(metadata ptr %__flags120, metadata !6711, metadata !DIExpression()), !dbg !6836
  store i32 2305, ptr %__flags120, align 4, !dbg !6836
  br label %do.body121, !dbg !6836

do.body121:                                       ; preds = %do.body119
  br label %do.cond122, !dbg !6837

do.cond122:                                       ; preds = %do.body121
  br label %do.end123, !dbg !6837

do.end123:                                        ; preds = %do.cond122
  br label %do.body124, !dbg !6836

do.body124:                                       ; preds = %do.end123
  %54 = load i32, ptr %__flags120, align 4, !dbg !6839
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 417, i32 %54, i64 12) #14, !dbg !6839, !srcloc !6841
  br label %do.cond125, !dbg !6839

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !6839

do.end126:                                        ; preds = %do.cond125
  br label %do.body127, !dbg !6836

do.body127:                                       ; preds = %do.end126
  br label %do.cond128, !dbg !6842

do.cond128:                                       ; preds = %do.body127
  br label %do.end129, !dbg !6842

do.end129:                                        ; preds = %do.cond128
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags120) #14, !dbg !6835
  br label %do.cond130, !dbg !6836

do.cond130:                                       ; preds = %do.end129
  br label %do.end131, !dbg !6836

do.end131:                                        ; preds = %do.cond130
  br label %if.end132, !dbg !6836

if.end132:                                        ; preds = %do.end131, %if.end97
  %55 = load i32, ptr %__ret_warn_on103, align 4, !dbg !6834
  %tobool134 = icmp ne i32 %55, 0, !dbg !6834
  %lnot135 = xor i1 %tobool134, true, !dbg !6834
  %lnot137 = xor i1 %lnot135, true, !dbg !6834
  %lnot.ext138 = zext i1 %lnot137 to i32, !dbg !6834
  %conv139 = sext i32 %lnot.ext138 to i64, !dbg !6834
  %expval140 = call i64 @llvm.expect.i64(i64 %conv139, i64 0), !dbg !6834
  store i64 %expval140, ptr %tmp133, align 8, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on103) #14, !dbg !6844
  %56 = load i64, ptr %tmp133, align 8, !dbg !6834
  %tobool141 = icmp ne i64 %56, 0, !dbg !6844
  br i1 %tobool141, label %if.then142, label %if.end143, !dbg !6845

if.then142:                                       ; preds = %if.end132
  br label %out_printk, !dbg !6846

if.end143:                                        ; preds = %if.end132
  %57 = load ptr, ptr %hb_string, align 8, !dbg !6847
  %tobool144 = icmp ne ptr %57, null, !dbg !6847
  br i1 %tobool144, label %if.then145, label %if.else151, !dbg !6849

if.then145:                                       ; preds = %if.end143
  %58 = load ptr, ptr %logbuf, align 8, !dbg !6850
  %59 = load i64, ptr %off, align 8, !dbg !6851
  %add.ptr146 = getelementptr i8, ptr %58, i64 %59, !dbg !6852
  %60 = load i64, ptr %logbuf_len, align 8, !dbg !6853
  %61 = load i64, ptr %off, align 8, !dbg !6854
  %sub147 = sub i64 %60, %61, !dbg !6855
  %62 = load ptr, ptr %hb_string, align 8, !dbg !6856
  %call148 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr146, i64 noundef %sub147, ptr noundef @.str.13, ptr noundef %62) #15, !dbg !6857
  %conv149 = sext i32 %call148 to i64, !dbg !6857
  %63 = load i64, ptr %off, align 8, !dbg !6858
  %add150 = add i64 %63, %conv149, !dbg !6858
  store i64 %add150, ptr %off, align 8, !dbg !6858
  br label %if.end158, !dbg !6859

if.else151:                                       ; preds = %if.end143
  %64 = load ptr, ptr %logbuf, align 8, !dbg !6860
  %65 = load i64, ptr %off, align 8, !dbg !6861
  %add.ptr152 = getelementptr i8, ptr %64, i64 %65, !dbg !6862
  %66 = load i64, ptr %logbuf_len, align 8, !dbg !6863
  %67 = load i64, ptr %off, align 8, !dbg !6864
  %sub153 = sub i64 %66, %67, !dbg !6865
  %68 = load ptr, ptr %cmd.addr, align 8, !dbg !6866
  %result154 = getelementptr inbounds %struct.scsi_cmnd, ptr %68, i32 0, i32 27, !dbg !6866
  %69 = load i32, ptr %result154, align 8, !dbg !6866
  %shr = ashr i32 %69, 16, !dbg !6866
  %and = and i32 %shr, 255, !dbg !6866
  %call155 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr152, i64 noundef %sub153, ptr noundef @.str.14, i32 noundef %and) #15, !dbg !6867
  %conv156 = sext i32 %call155 to i64, !dbg !6867
  %70 = load i64, ptr %off, align 8, !dbg !6868
  %add157 = add i64 %70, %conv156, !dbg !6868
  store i64 %add157, ptr %off, align 8, !dbg !6868
  br label %if.end158

if.end158:                                        ; preds = %if.else151, %if.then145
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on159) #14, !dbg !6869
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on159, metadata !6714, metadata !DIExpression()), !dbg !6869
  %71 = load i64, ptr %off, align 8, !dbg !6869
  %72 = load i64, ptr %logbuf_len, align 8, !dbg !6869
  %cmp160 = icmp uge i64 %71, %72, !dbg !6869
  %lnot162 = xor i1 %cmp160, true, !dbg !6869
  %lnot164 = xor i1 %lnot162, true, !dbg !6869
  %lnot.ext165 = zext i1 %lnot164 to i32, !dbg !6869
  store i32 %lnot.ext165, ptr %__ret_warn_on159, align 4, !dbg !6869
  %73 = load i32, ptr %__ret_warn_on159, align 4, !dbg !6870
  %tobool166 = icmp ne i32 %73, 0, !dbg !6870
  %lnot167 = xor i1 %tobool166, true, !dbg !6870
  %lnot169 = xor i1 %lnot167, true, !dbg !6870
  %lnot.ext170 = zext i1 %lnot169 to i32, !dbg !6870
  %conv171 = sext i32 %lnot.ext170 to i64, !dbg !6870
  %expval172 = call i64 @llvm.expect.i64(i64 %conv171, i64 0), !dbg !6870
  %tobool173 = icmp ne i64 %expval172, 0, !dbg !6870
  br i1 %tobool173, label %if.then174, label %if.end188, !dbg !6869

if.then174:                                       ; preds = %if.end158
  br label %do.body175, !dbg !6870

do.body175:                                       ; preds = %if.then174
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags176) #14, !dbg !6871
  call void @llvm.dbg.declare(metadata ptr %__flags176, metadata !6717, metadata !DIExpression()), !dbg !6871
  store i32 2305, ptr %__flags176, align 4, !dbg !6871
  br label %do.body177, !dbg !6871

do.body177:                                       ; preds = %do.body175
  br label %do.cond178, !dbg !6872

do.cond178:                                       ; preds = %do.body177
  br label %do.end179, !dbg !6872

do.end179:                                        ; preds = %do.cond178
  br label %do.body180, !dbg !6871

do.body180:                                       ; preds = %do.end179
  %74 = load i32, ptr %__flags176, align 4, !dbg !6874
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 426, i32 %74, i64 12) #14, !dbg !6874, !srcloc !6876
  br label %do.cond181, !dbg !6874

do.cond181:                                       ; preds = %do.body180
  br label %do.end182, !dbg !6874

do.end182:                                        ; preds = %do.cond181
  br label %do.body183, !dbg !6871

do.body183:                                       ; preds = %do.end182
  br label %do.cond184, !dbg !6877

do.cond184:                                       ; preds = %do.body183
  br label %do.end185, !dbg !6877

do.end185:                                        ; preds = %do.cond184
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags176) #14, !dbg !6870
  br label %do.cond186, !dbg !6871

do.cond186:                                       ; preds = %do.end185
  br label %do.end187, !dbg !6871

do.end187:                                        ; preds = %do.cond186
  br label %if.end188, !dbg !6871

if.end188:                                        ; preds = %do.end187, %if.end158
  %75 = load i32, ptr %__ret_warn_on159, align 4, !dbg !6869
  %tobool190 = icmp ne i32 %75, 0, !dbg !6869
  %lnot191 = xor i1 %tobool190, true, !dbg !6869
  %lnot193 = xor i1 %lnot191, true, !dbg !6869
  %lnot.ext194 = zext i1 %lnot193 to i32, !dbg !6869
  %conv195 = sext i32 %lnot.ext194 to i64, !dbg !6869
  %expval196 = call i64 @llvm.expect.i64(i64 %conv195, i64 0), !dbg !6869
  store i64 %expval196, ptr %tmp189, align 8, !dbg !6870
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on159) #14, !dbg !6879
  %76 = load i64, ptr %tmp189, align 8, !dbg !6869
  %tobool197 = icmp ne i64 %76, 0, !dbg !6879
  br i1 %tobool197, label %if.then198, label %if.end199, !dbg !6880

if.then198:                                       ; preds = %if.end188
  br label %out_printk, !dbg !6881

if.end199:                                        ; preds = %if.end188
  %77 = load ptr, ptr %logbuf, align 8, !dbg !6882
  %78 = load i64, ptr %off, align 8, !dbg !6883
  %add.ptr200 = getelementptr i8, ptr %77, i64 %78, !dbg !6884
  %79 = load i64, ptr %logbuf_len, align 8, !dbg !6885
  %80 = load i64, ptr %off, align 8, !dbg !6886
  %sub201 = sub i64 %79, %80, !dbg !6887
  %call202 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr200, i64 noundef %sub201, ptr noundef @.str.15) #15, !dbg !6888
  %conv203 = sext i32 %call202 to i64, !dbg !6888
  %81 = load i64, ptr %off, align 8, !dbg !6889
  %add204 = add i64 %81, %conv203, !dbg !6889
  store i64 %add204, ptr %off, align 8, !dbg !6889
  %82 = load ptr, ptr %logbuf, align 8, !dbg !6890
  %83 = load i64, ptr %off, align 8, !dbg !6891
  %add.ptr205 = getelementptr i8, ptr %82, i64 %83, !dbg !6892
  %84 = load i64, ptr %logbuf_len, align 8, !dbg !6893
  %85 = load i64, ptr %off, align 8, !dbg !6894
  %sub206 = sub i64 %84, %85, !dbg !6895
  %86 = load i64, ptr %cmd_age, align 8, !dbg !6896
  %call207 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr205, i64 noundef %sub206, ptr noundef @.str.16, i64 noundef %86) #15, !dbg !6897
  %conv208 = sext i32 %call207 to i64, !dbg !6897
  %87 = load i64, ptr %off, align 8, !dbg !6898
  %add209 = add i64 %87, %conv208, !dbg !6898
  store i64 %add209, ptr %off, align 8, !dbg !6898
  br label %out_printk, !dbg !6899

out_printk:                                       ; preds = %if.end199, %if.then198, %if.then142, %if.then96, %if.then41, %if.then6
  call void @llvm.dbg.label(metadata !6720), !dbg !6900
  br label %do.body210, !dbg !6901

do.body210:                                       ; preds = %out_printk
  br label %do.cond211, !dbg !6903

do.cond211:                                       ; preds = %do.body210
  br label %do.end212, !dbg !6903

do.end212:                                        ; preds = %do.cond211
  %88 = load ptr, ptr %cmd.addr, align 8, !dbg !6901
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 0, !dbg !6901
  %89 = load ptr, ptr %device, align 8, !dbg !6901
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %89, i32 0, i32 59, !dbg !6901
  %90 = load ptr, ptr %logbuf, align 8, !dbg !6901
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %sdev_gendev, ptr noundef @.str.2, ptr noundef %90) #16, !dbg !6901
  %91 = load ptr, ptr %logbuf, align 8, !dbg !6905
  call void @scsi_log_release_buffer(ptr noundef %91) #15, !dbg !6906
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6907
  br label %cleanup, !dbg !6907

cleanup:                                          ; preds = %do.end212, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd_age) #14, !dbg !6907
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb_string) #14, !dbg !6907
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlret_string) #14, !dbg !6907
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf_len) #14, !dbg !6907
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !6907
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf) #14, !dbg !6907
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6907

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6908 dso_local ptr @scsi_mlreturn_string(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6912 dso_local ptr @scsi_hostbyte_string(i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6913 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6917, metadata !DIExpression()), !dbg !6922
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6918, metadata !DIExpression()), !dbg !6923
  %0 = load i64, ptr %size.addr, align 8, !dbg !6924
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6925
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6926

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6927
  %tobool = icmp ne i64 %2, 0, !dbg !6927
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6928

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6929
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6919, metadata !DIExpression()), !dbg !6930
  %3 = load i64, ptr %size.addr, align 8, !dbg !6931
  %cmp = icmp ugt i64 %3, 8192, !dbg !6933
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6934

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6935
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6936
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6937
  store ptr %call, ptr %retval, align 8, !dbg !6938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6938

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6939
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6939
  store i32 %call2, ptr %index, align 4, !dbg !6940
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6941
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6942
  %9 = ptrtoint ptr %8 to i64, !dbg !6942
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6943
  %idxprom = zext i32 %call3 to i64, !dbg !6944
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6944
  %10 = load i32, ptr %index, align 4, !dbg !6945
  %idxprom4 = zext i32 %10 to i64, !dbg !6944
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6944
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6944
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6946
  %13 = load i64, ptr %size.addr, align 8, !dbg !6947
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !6948
  store ptr %call6, ptr %retval, align 8, !dbg !6949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6949

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6950
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6951
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6952
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6953
  store ptr %call8, ptr %retval, align 8, !dbg !6954
  br label %return, !dbg !6954

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6955
  ret ptr %16, !dbg !6955
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6956 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6957 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6961, metadata !DIExpression()), !dbg !6963
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6962, metadata !DIExpression()), !dbg !6964
  %0 = load i64, ptr %size.addr, align 8, !dbg !6965
  %tobool = icmp ne i64 %0, 0, !dbg !6965
  br i1 %tobool, label %if.end, label %if.then, !dbg !6967

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6968
  br label %return, !dbg !6968

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6969
  %cmp = icmp ule i64 %1, 8, !dbg !6971
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6972

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6973
  br label %return, !dbg !6973

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6974
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6976
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6977

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6978
  %cmp4 = icmp ule i64 %3, 96, !dbg !6979
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6980

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6981
  br label %return, !dbg !6981

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6982
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6984
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6985

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6986
  %cmp9 = icmp ule i64 %5, 192, !dbg !6987
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6988

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6989
  br label %return, !dbg !6989

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6990
  %cmp12 = icmp ule i64 %6, 8, !dbg !6992
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6993

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6994
  br label %return, !dbg !6994

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6995
  %cmp15 = icmp ule i64 %7, 16, !dbg !6997
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6998

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6999
  br label %return, !dbg !6999

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7000
  %cmp18 = icmp ule i64 %8, 32, !dbg !7002
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7003

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7004
  br label %return, !dbg !7004

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7005
  %cmp21 = icmp ule i64 %9, 64, !dbg !7007
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7008

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7009
  br label %return, !dbg !7009

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7010
  %cmp24 = icmp ule i64 %10, 128, !dbg !7012
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7013

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7014
  br label %return, !dbg !7014

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7015
  %cmp27 = icmp ule i64 %11, 256, !dbg !7017
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7018

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7019
  br label %return, !dbg !7019

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7020
  %cmp30 = icmp ule i64 %12, 512, !dbg !7022
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7023

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7024
  br label %return, !dbg !7024

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7025
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7027
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7028

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7029
  br label %return, !dbg !7029

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7030
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7032
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7033

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7034
  br label %return, !dbg !7034

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7035
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7037
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7038

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7039
  br label %return, !dbg !7039

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7040
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7042
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7043

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7044
  br label %return, !dbg !7044

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7045
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7047
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7048

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7049
  br label %return, !dbg !7049

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7050
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7052
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7053

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7054
  br label %return, !dbg !7054

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7055
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7057
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7058

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7059
  br label %return, !dbg !7059

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7060
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7062
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7063

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7064
  br label %return, !dbg !7064

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7065
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7067
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7068

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7069
  br label %return, !dbg !7069

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7070
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7072
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7073

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7074
  br label %return, !dbg !7074

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7075
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7077
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7078

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7079
  br label %return, !dbg !7079

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7080
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7082
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7083

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7084
  br label %return, !dbg !7084

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7085, !range !7087, !noundef !1092
  %tobool69 = trunc i8 %25 to i1, !dbg !7085
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7088

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7089

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #19, !dbg !7090, !srcloc !7093
  unreachable, !dbg !7090

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7094

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7095

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7096

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7098

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7096

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.17, i32 480, i32 0, i64 12) #14, !dbg !7100, !srcloc !7102
  br label %do.end75, !dbg !7100

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7096

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7103
  br label %return, !dbg !7103

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7104
  ret i32 %26, !dbg !7104
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7105 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !7108 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7112, metadata !DIExpression()), !dbg !7114
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7113, metadata !DIExpression()), !dbg !7115
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7116
  %and = and i32 %0, 17, !dbg !7116
  %cmp = icmp eq i32 %and, 0, !dbg !7116
  %lnot = xor i1 %cmp, true, !dbg !7116
  %lnot1 = xor i1 %lnot, true, !dbg !7116
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7116
  %conv = sext i32 %lnot.ext to i64, !dbg !7116
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7116
  %tobool = icmp ne i64 %expval, 0, !dbg !7116
  br i1 %tobool, label %if.then, label %if.end, !dbg !7118

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7119
  br label %return, !dbg !7119

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7120
  %and2 = and i32 %1, 1, !dbg !7122
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7122
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7123

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7124
  br label %return, !dbg !7124

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7125
  br label %return, !dbg !7125

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7127
  ret i32 %2, !dbg !7127
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7128 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7129 dso_local void @__compiletime_assert_206() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7130 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @blk_mq_rq_from_pdu(ptr noundef %pdu) #7 align 16 !dbg !7133 {
entry:
  %pdu.addr = alloca ptr, align 8
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !7137, metadata !DIExpression()), !dbg !7138
  %0 = load ptr, ptr %pdu.addr, align 8, !dbg !7139
  %add.ptr = getelementptr i8, ptr %0, i64 -248, !dbg !7140
  ret ptr %add.ptr, !dbg !7141
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @scsi_varlen_cdb_length(ptr noundef %hdr) #7 align 16 !dbg !7142 {
entry:
  %hdr.addr = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !7146, metadata !DIExpression()), !dbg !7147
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !7148
  %additional_cdb_length = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %0, i32 0, i32 3, !dbg !7149
  %1 = load i8, ptr %additional_cdb_length, align 1, !dbg !7149
  %conv = zext i8 %1 to i32, !dbg !7150
  %add = add i32 %conv, 8, !dbg !7151
  ret i32 %add, !dbg !7152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7153 dso_local zeroext i1 @scsi_opcode_sa_name(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @scsi_format_sense_hdr(ptr noundef %buffer, i64 noundef %buf_len, ptr noundef %sshdr) #0 align 16 !dbg !7156 {
entry:
  %buffer.addr = alloca ptr, align 8
  %buf_len.addr = alloca i64, align 8
  %sshdr.addr = alloca ptr, align 8
  %sense_txt = alloca ptr, align 8
  %off = alloca i64, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !7160, metadata !DIExpression()), !dbg !7165
  store i64 %buf_len, ptr %buf_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_len.addr, metadata !7161, metadata !DIExpression()), !dbg !7166
  store ptr %sshdr, ptr %sshdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sshdr.addr, metadata !7162, metadata !DIExpression()), !dbg !7167
  call void @llvm.lifetime.start.p0(i64 8, ptr %sense_txt) #14, !dbg !7168
  call void @llvm.dbg.declare(metadata ptr %sense_txt, metadata !7163, metadata !DIExpression()), !dbg !7169
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !7170
  call void @llvm.dbg.declare(metadata ptr %off, metadata !7164, metadata !DIExpression()), !dbg !7171
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !7172
  %1 = load i64, ptr %buf_len.addr, align 8, !dbg !7173
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.25) #15, !dbg !7174
  %conv = sext i32 %call to i64, !dbg !7174
  store i64 %conv, ptr %off, align 8, !dbg !7175
  %2 = load ptr, ptr %sshdr.addr, align 8, !dbg !7176
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 1, !dbg !7177
  %3 = load i8, ptr %sense_key, align 1, !dbg !7177
  %call1 = call ptr @scsi_sense_key_string(i8 noundef zeroext %3) #15, !dbg !7178
  store ptr %call1, ptr %sense_txt, align 8, !dbg !7179
  %4 = load ptr, ptr %sense_txt, align 8, !dbg !7180
  %tobool = icmp ne ptr %4, null, !dbg !7180
  br i1 %tobool, label %if.then, label %if.else, !dbg !7182

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !7183
  %6 = load i64, ptr %off, align 8, !dbg !7184
  %add.ptr = getelementptr i8, ptr %5, i64 %6, !dbg !7185
  %7 = load i64, ptr %buf_len.addr, align 8, !dbg !7186
  %8 = load i64, ptr %off, align 8, !dbg !7187
  %sub = sub i64 %7, %8, !dbg !7188
  %9 = load ptr, ptr %sense_txt, align 8, !dbg !7189
  %call2 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str.10, ptr noundef %9) #15, !dbg !7190
  %conv3 = sext i32 %call2 to i64, !dbg !7190
  %10 = load i64, ptr %off, align 8, !dbg !7191
  %add = add i64 %10, %conv3, !dbg !7191
  store i64 %add, ptr %off, align 8, !dbg !7191
  br label %if.end, !dbg !7192

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %buffer.addr, align 8, !dbg !7193
  %12 = load i64, ptr %off, align 8, !dbg !7194
  %add.ptr4 = getelementptr i8, ptr %11, i64 %12, !dbg !7195
  %13 = load i64, ptr %buf_len.addr, align 8, !dbg !7196
  %14 = load i64, ptr %off, align 8, !dbg !7197
  %sub5 = sub i64 %13, %14, !dbg !7198
  %15 = load ptr, ptr %sshdr.addr, align 8, !dbg !7199
  %sense_key6 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %15, i32 0, i32 1, !dbg !7200
  %16 = load i8, ptr %sense_key6, align 1, !dbg !7200
  %conv7 = zext i8 %16 to i32, !dbg !7199
  %call8 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i64 noundef %sub5, ptr noundef @.str.26, i32 noundef %conv7) #15, !dbg !7201
  %conv9 = sext i32 %call8 to i64, !dbg !7201
  %17 = load i64, ptr %off, align 8, !dbg !7202
  %add10 = add i64 %17, %conv9, !dbg !7202
  store i64 %add10, ptr %off, align 8, !dbg !7202
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !7203
  %19 = load i64, ptr %off, align 8, !dbg !7204
  %add.ptr11 = getelementptr i8, ptr %18, i64 %19, !dbg !7205
  %20 = load i64, ptr %buf_len.addr, align 8, !dbg !7206
  %21 = load i64, ptr %off, align 8, !dbg !7207
  %sub12 = sub i64 %20, %21, !dbg !7208
  %22 = load ptr, ptr %sshdr.addr, align 8, !dbg !7209
  %call13 = call zeroext i1 @scsi_sense_is_deferred(ptr noundef %22) #15, !dbg !7210
  %23 = zext i1 %call13 to i64, !dbg !7210
  %cond = select i1 %call13, ptr @.str.27, ptr @.str.28, !dbg !7210
  %call15 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i64 noundef %sub12, ptr noundef %cond) #15, !dbg !7211
  %conv16 = sext i32 %call15 to i64, !dbg !7211
  %24 = load i64, ptr %off, align 8, !dbg !7212
  %add17 = add i64 %24, %conv16, !dbg !7212
  store i64 %add17, ptr %off, align 8, !dbg !7212
  %25 = load ptr, ptr %sshdr.addr, align 8, !dbg !7213
  %response_code = getelementptr inbounds %struct.scsi_sense_hdr, ptr %25, i32 0, i32 0, !dbg !7215
  %26 = load i8, ptr %response_code, align 1, !dbg !7215
  %conv18 = zext i8 %26 to i32, !dbg !7213
  %cmp = icmp sge i32 %conv18, 114, !dbg !7216
  br i1 %cmp, label %if.then20, label %if.end26, !dbg !7217

if.then20:                                        ; preds = %if.end
  %27 = load ptr, ptr %buffer.addr, align 8, !dbg !7218
  %28 = load i64, ptr %off, align 8, !dbg !7219
  %add.ptr21 = getelementptr i8, ptr %27, i64 %28, !dbg !7220
  %29 = load i64, ptr %buf_len.addr, align 8, !dbg !7221
  %30 = load i64, ptr %off, align 8, !dbg !7222
  %sub22 = sub i64 %29, %30, !dbg !7223
  %call23 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i64 noundef %sub22, ptr noundef @.str.29) #15, !dbg !7224
  %conv24 = sext i32 %call23 to i64, !dbg !7224
  %31 = load i64, ptr %off, align 8, !dbg !7225
  %add25 = add i64 %31, %conv24, !dbg !7225
  store i64 %add25, ptr %off, align 8, !dbg !7225
  br label %if.end26, !dbg !7226

if.end26:                                         ; preds = %if.then20, %if.end
  %32 = load i64, ptr %off, align 8, !dbg !7227
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !7228
  call void @llvm.lifetime.end.p0(i64 8, ptr %sense_txt) #14, !dbg !7228
  ret i64 %32, !dbg !7229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @scsi_format_extd_sense(ptr noundef %buffer, i64 noundef %buf_len, i8 noundef zeroext %asc, i8 noundef zeroext %ascq) #0 align 16 !dbg !7230 {
entry:
  %buffer.addr = alloca ptr, align 8
  %buf_len.addr = alloca i64, align 8
  %asc.addr = alloca i8, align 1
  %ascq.addr = alloca i8, align 1
  %off = alloca i64, align 8
  %extd_sense_fmt = alloca ptr, align 8
  %extd_sense_str = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !7234, metadata !DIExpression()), !dbg !7241
  store i64 %buf_len, ptr %buf_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_len.addr, metadata !7235, metadata !DIExpression()), !dbg !7242
  store i8 %asc, ptr %asc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %asc.addr, metadata !7236, metadata !DIExpression()), !dbg !7243
  store i8 %ascq, ptr %ascq.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ascq.addr, metadata !7237, metadata !DIExpression()), !dbg !7244
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !7245
  call void @llvm.dbg.declare(metadata ptr %off, metadata !7238, metadata !DIExpression()), !dbg !7246
  store i64 0, ptr %off, align 8, !dbg !7246
  call void @llvm.lifetime.start.p0(i64 8, ptr %extd_sense_fmt) #14, !dbg !7247
  call void @llvm.dbg.declare(metadata ptr %extd_sense_fmt, metadata !7239, metadata !DIExpression()), !dbg !7248
  store ptr null, ptr %extd_sense_fmt, align 8, !dbg !7248
  call void @llvm.lifetime.start.p0(i64 8, ptr %extd_sense_str) #14, !dbg !7249
  call void @llvm.dbg.declare(metadata ptr %extd_sense_str, metadata !7240, metadata !DIExpression()), !dbg !7250
  %0 = load i8, ptr %asc.addr, align 1, !dbg !7251
  %1 = load i8, ptr %ascq.addr, align 1, !dbg !7252
  %call = call ptr @scsi_extd_sense_format(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr noundef %extd_sense_fmt) #15, !dbg !7253
  store ptr %call, ptr %extd_sense_str, align 8, !dbg !7250
  %2 = load ptr, ptr %extd_sense_str, align 8, !dbg !7254
  %tobool = icmp ne ptr %2, null, !dbg !7254
  br i1 %tobool, label %if.then, label %if.else, !dbg !7256

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !7257
  %4 = load i64, ptr %buf_len.addr, align 8, !dbg !7259
  %5 = load ptr, ptr %extd_sense_str, align 8, !dbg !7260
  %call1 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %3, i64 noundef %4, ptr noundef @.str.30, ptr noundef %5) #15, !dbg !7261
  %conv = sext i32 %call1 to i64, !dbg !7261
  store i64 %conv, ptr %off, align 8, !dbg !7262
  %6 = load ptr, ptr %extd_sense_fmt, align 8, !dbg !7263
  %tobool2 = icmp ne ptr %6, null, !dbg !7263
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !7265

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !7266
  %8 = load i64, ptr %off, align 8, !dbg !7267
  %add.ptr = getelementptr i8, ptr %7, i64 %8, !dbg !7268
  %9 = load i64, ptr %buf_len.addr, align 8, !dbg !7269
  %10 = load i64, ptr %off, align 8, !dbg !7270
  %sub = sub i64 %9, %10, !dbg !7271
  %11 = load ptr, ptr %extd_sense_fmt, align 8, !dbg !7272
  %12 = load i8, ptr %ascq.addr, align 1, !dbg !7273
  %conv4 = zext i8 %12 to i32, !dbg !7273
  %call5 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str.31, ptr noundef %11, i32 noundef %conv4) #15, !dbg !7274
  %conv6 = sext i32 %call5 to i64, !dbg !7274
  %13 = load i64, ptr %off, align 8, !dbg !7275
  %add = add i64 %13, %conv6, !dbg !7275
  store i64 %add, ptr %off, align 8, !dbg !7275
  br label %if.end, !dbg !7276

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end35, !dbg !7277

if.else:                                          ; preds = %entry
  %14 = load i8, ptr %asc.addr, align 1, !dbg !7278
  %conv7 = zext i8 %14 to i32, !dbg !7278
  %cmp = icmp sge i32 %conv7, 128, !dbg !7281
  br i1 %cmp, label %if.then9, label %if.end12, !dbg !7282

if.then9:                                         ; preds = %if.else
  %15 = load ptr, ptr %buffer.addr, align 8, !dbg !7283
  %16 = load i64, ptr %buf_len.addr, align 8, !dbg !7284
  %call10 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %15, i64 noundef %16, ptr noundef @.str.32) #15, !dbg !7285
  %conv11 = sext i32 %call10 to i64, !dbg !7285
  store i64 %conv11, ptr %off, align 8, !dbg !7286
  br label %if.end12, !dbg !7287

if.end12:                                         ; preds = %if.then9, %if.else
  %17 = load ptr, ptr %buffer.addr, align 8, !dbg !7288
  %18 = load i64, ptr %off, align 8, !dbg !7289
  %add.ptr13 = getelementptr i8, ptr %17, i64 %18, !dbg !7290
  %19 = load i64, ptr %buf_len.addr, align 8, !dbg !7291
  %20 = load i64, ptr %off, align 8, !dbg !7292
  %sub14 = sub i64 %19, %20, !dbg !7293
  %21 = load i8, ptr %asc.addr, align 1, !dbg !7294
  %conv15 = zext i8 %21 to i32, !dbg !7294
  %call16 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i64 noundef %sub14, ptr noundef @.str.33, i32 noundef %conv15) #15, !dbg !7295
  %conv17 = sext i32 %call16 to i64, !dbg !7295
  %22 = load i64, ptr %off, align 8, !dbg !7296
  %add18 = add i64 %22, %conv17, !dbg !7296
  store i64 %add18, ptr %off, align 8, !dbg !7296
  %23 = load i8, ptr %ascq.addr, align 1, !dbg !7297
  %conv19 = zext i8 %23 to i32, !dbg !7297
  %cmp20 = icmp sge i32 %conv19, 128, !dbg !7299
  br i1 %cmp20, label %if.then22, label %if.end28, !dbg !7300

if.then22:                                        ; preds = %if.end12
  %24 = load ptr, ptr %buffer.addr, align 8, !dbg !7301
  %25 = load i64, ptr %off, align 8, !dbg !7302
  %add.ptr23 = getelementptr i8, ptr %24, i64 %25, !dbg !7303
  %26 = load i64, ptr %buf_len.addr, align 8, !dbg !7304
  %27 = load i64, ptr %off, align 8, !dbg !7305
  %sub24 = sub i64 %26, %27, !dbg !7306
  %call25 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i64 noundef %sub24, ptr noundef @.str.32) #15, !dbg !7307
  %conv26 = sext i32 %call25 to i64, !dbg !7307
  %28 = load i64, ptr %off, align 8, !dbg !7308
  %add27 = add i64 %28, %conv26, !dbg !7308
  store i64 %add27, ptr %off, align 8, !dbg !7308
  br label %if.end28, !dbg !7309

if.end28:                                         ; preds = %if.then22, %if.end12
  %29 = load ptr, ptr %buffer.addr, align 8, !dbg !7310
  %30 = load i64, ptr %off, align 8, !dbg !7311
  %add.ptr29 = getelementptr i8, ptr %29, i64 %30, !dbg !7312
  %31 = load i64, ptr %buf_len.addr, align 8, !dbg !7313
  %32 = load i64, ptr %off, align 8, !dbg !7314
  %sub30 = sub i64 %31, %32, !dbg !7315
  %33 = load i8, ptr %ascq.addr, align 1, !dbg !7316
  %conv31 = zext i8 %33 to i32, !dbg !7316
  %call32 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i64 noundef %sub30, ptr noundef @.str.34, i32 noundef %conv31) #15, !dbg !7317
  %conv33 = sext i32 %call32 to i64, !dbg !7317
  %34 = load i64, ptr %off, align 8, !dbg !7318
  %add34 = add i64 %34, %conv33, !dbg !7318
  store i64 %add34, ptr %off, align 8, !dbg !7318
  br label %if.end35

if.end35:                                         ; preds = %if.end28, %if.end
  %35 = load i64, ptr %off, align 8, !dbg !7319
  call void @llvm.lifetime.end.p0(i64 8, ptr %extd_sense_str) #14, !dbg !7320
  call void @llvm.lifetime.end.p0(i64 8, ptr %extd_sense_fmt) #14, !dbg !7320
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !7320
  ret i64 %35, !dbg !7321
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7322 dso_local ptr @scsi_sense_key_string(i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @scsi_sense_is_deferred(ptr noundef %sshdr) #7 align 16 !dbg !7325 {
entry:
  %sshdr.addr = alloca ptr, align 8
  store ptr %sshdr, ptr %sshdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sshdr.addr, metadata !7330, metadata !DIExpression()), !dbg !7331
  %0 = load ptr, ptr %sshdr.addr, align 8, !dbg !7332
  %response_code = getelementptr inbounds %struct.scsi_sense_hdr, ptr %0, i32 0, i32 0, !dbg !7333
  %1 = load i8, ptr %response_code, align 1, !dbg !7333
  %conv = zext i8 %1 to i32, !dbg !7332
  %cmp = icmp sge i32 %conv, 112, !dbg !7334
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7335

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %sshdr.addr, align 8, !dbg !7336
  %response_code2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 0, !dbg !7337
  %3 = load i8, ptr %response_code2, align 1, !dbg !7337
  %conv3 = zext i8 %3 to i32, !dbg !7336
  %and = and i32 %conv3, 1, !dbg !7338
  %tobool = icmp ne i32 %and, 0, !dbg !7335
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !7339
  ret i1 %4, !dbg !7340
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7341 dso_local ptr @scsi_extd_sense_format(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7344 dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scsi_log_dump_sense(ptr noundef %sdev, ptr noundef %name, i32 noundef %tag, ptr noundef %sense_buffer, i32 noundef %sense_len) #0 align 16 !dbg !7350 {
entry:
  %sdev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %sense_buffer.addr = alloca ptr, align 8
  %sense_len.addr = alloca i32, align 4
  %logbuf = alloca ptr, align 8
  %logbuf_len = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i32, align 4
  %__UNIQUE_ID___x354 = alloca i32, align 4
  %__UNIQUE_ID___y355 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %off = alloca i64, align 8
  store ptr %sdev, ptr %sdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sdev.addr, metadata !7352, metadata !DIExpression()), !dbg !7368
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !7353, metadata !DIExpression()), !dbg !7369
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !7354, metadata !DIExpression()), !dbg !7370
  store ptr %sense_buffer, ptr %sense_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sense_buffer.addr, metadata !7355, metadata !DIExpression()), !dbg !7371
  store i32 %sense_len, ptr %sense_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sense_len.addr, metadata !7356, metadata !DIExpression()), !dbg !7372
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf) #14, !dbg !7373
  call void @llvm.dbg.declare(metadata ptr %logbuf, metadata !7357, metadata !DIExpression()), !dbg !7374
  call void @llvm.lifetime.start.p0(i64 8, ptr %logbuf_len) #14, !dbg !7375
  call void @llvm.dbg.declare(metadata ptr %logbuf_len, metadata !7358, metadata !DIExpression()), !dbg !7376
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !7377
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7359, metadata !DIExpression()), !dbg !7378
  %call = call ptr @scsi_log_reserve_buffer(ptr noundef %logbuf_len) #15, !dbg !7379
  store ptr %call, ptr %logbuf, align 8, !dbg !7380
  %0 = load ptr, ptr %logbuf, align 8, !dbg !7381
  %tobool = icmp ne ptr %0, null, !dbg !7381
  br i1 %tobool, label %if.end, label %if.then, !dbg !7383

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7384

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !7385
  br label %for.cond, !dbg !7386

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !7387
  %2 = load i32, ptr %sense_len.addr, align 4, !dbg !7388
  %cmp = icmp slt i32 %1, %2, !dbg !7389
  br i1 %cmp, label %for.body, label %for.end, !dbg !7390

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #14, !dbg !7391
  call void @llvm.dbg.declare(metadata ptr %len, metadata !7360, metadata !DIExpression()), !dbg !7392
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x354) #14, !dbg !7393
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x354, metadata !7364, metadata !DIExpression()), !dbg !7393
  %3 = load i32, ptr %sense_len.addr, align 4, !dbg !7393
  %4 = load i32, ptr %i, align 4, !dbg !7393
  %sub = sub i32 %3, %4, !dbg !7393
  store i32 %sub, ptr %__UNIQUE_ID___x354, align 4, !dbg !7393
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y355) #14, !dbg !7393
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y355, metadata !7366, metadata !DIExpression()), !dbg !7393
  store i32 16, ptr %__UNIQUE_ID___y355, align 4, !dbg !7393
  %5 = load i32, ptr %__UNIQUE_ID___x354, align 4, !dbg !7393
  %6 = load i32, ptr %__UNIQUE_ID___y355, align 4, !dbg !7393
  %cmp1 = icmp slt i32 %5, %6, !dbg !7393
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !7393

cond.true:                                        ; preds = %for.body
  %7 = load i32, ptr %__UNIQUE_ID___x354, align 4, !dbg !7393
  br label %cond.end, !dbg !7393

cond.false:                                       ; preds = %for.body
  %8 = load i32, ptr %__UNIQUE_ID___y355, align 4, !dbg !7393
  br label %cond.end, !dbg !7393

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !7393
  store i32 %cond, ptr %tmp, align 4, !dbg !7393
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y355) #14, !dbg !7394
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x354) #14, !dbg !7394
  %9 = load i32, ptr %tmp, align 4, !dbg !7393
  store i32 %9, ptr %len, align 4, !dbg !7392
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #14, !dbg !7395
  call void @llvm.dbg.declare(metadata ptr %off, metadata !7367, metadata !DIExpression()), !dbg !7396
  %10 = load ptr, ptr %logbuf, align 8, !dbg !7397
  %11 = load i64, ptr %logbuf_len, align 8, !dbg !7398
  %12 = load ptr, ptr %name.addr, align 8, !dbg !7399
  %13 = load i32, ptr %tag.addr, align 4, !dbg !7400
  %call2 = call i64 @sdev_format_header(ptr noundef %10, i64 noundef %11, ptr noundef %12, i32 noundef %13) #15, !dbg !7401
  store i64 %call2, ptr %off, align 8, !dbg !7402
  %14 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !7403
  %15 = load i32, ptr %i, align 4, !dbg !7404
  %idxprom = sext i32 %15 to i64, !dbg !7403
  %arrayidx = getelementptr i8, ptr %14, i64 %idxprom, !dbg !7403
  %16 = load i32, ptr %len, align 4, !dbg !7405
  %conv = sext i32 %16 to i64, !dbg !7405
  %17 = load ptr, ptr %logbuf, align 8, !dbg !7406
  %18 = load i64, ptr %off, align 8, !dbg !7407
  %add.ptr = getelementptr i8, ptr %17, i64 %18, !dbg !7408
  %19 = load i64, ptr %logbuf_len, align 8, !dbg !7409
  %20 = load i64, ptr %off, align 8, !dbg !7410
  %sub3 = sub i64 %19, %20, !dbg !7411
  %call4 = call i32 @hex_dump_to_buffer(ptr noundef %arrayidx, i64 noundef %conv, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr, i64 noundef %sub3, i1 noundef zeroext false) #15, !dbg !7412
  br label %do.body, !dbg !7413

do.body:                                          ; preds = %cond.end
  br label %do.cond, !dbg !7415

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7415

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %sdev.addr, align 8, !dbg !7413
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 59, !dbg !7413
  %22 = load ptr, ptr %logbuf, align 8, !dbg !7413
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.6, ptr noundef %sdev_gendev, ptr noundef @.str.2, ptr noundef %22) #16, !dbg !7413
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #14, !dbg !7417
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #14, !dbg !7417
  br label %for.inc, !dbg !7418

for.inc:                                          ; preds = %do.end
  %23 = load i32, ptr %i, align 4, !dbg !7419
  %add = add i32 %23, 16, !dbg !7419
  store i32 %add, ptr %i, align 4, !dbg !7419
  br label %for.cond, !dbg !7420, !llvm.loop !7421

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %logbuf, align 8, !dbg !7423
  call void @scsi_log_release_buffer(ptr noundef %24) #15, !dbg !7424
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7425
  br label %cleanup, !dbg !7425

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !7425
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf_len) #14, !dbg !7425
  call void @llvm.lifetime.end.p0(i64 8, ptr %logbuf) #14, !dbg !7425
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7425

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709}
!llvm.ident = !{!5710}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/scsi/scsi_logging.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6578fdaed26a4ea9780b43634064982")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 28)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sdev_prefix_printk348", scope: !19, file: !2, line: 81, type: !235, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/scsi/.scsi_logging.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/scsi/scsi_mod\22 -D KBUILD_BASENAME=\22scsi_logging\22 -D KBUILD_MODNAME=\22scsi_mod\22 -D __KBUILD_MODNAME=kmod_scsi_mod -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/scsi/scsi_logging.ll drivers/scsi/scsi_logging.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !234, globals: !5588, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !29, !34, !40, !48, !56, !72, !78, !84, !91, !96, !104, !112, !118, !127, !132, !137, !143, !149, !156, !163, !169, !173, !177, !181, !186, !194, !205, !212, !219, !224}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !22, line: 312, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!26 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!27 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!28 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !30, line: 2052, baseType: !23, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!33 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !35, line: 54, baseType: !23, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "USRQUOTA", value: 0)
!38 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!39 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !41, line: 68, baseType: !23, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !49, line: 9, baseType: !23, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!52 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!53 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!54 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!55 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !57, line: 1325, baseType: !23, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!59 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!60 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!61 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!62 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!63 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!64 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!65 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!66 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!67 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!68 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!69 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!70 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!71 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !73, line: 1381, baseType: !23, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!76 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!77 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !79, line: 45, baseType: !23, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!82 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!83 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !85, line: 487, baseType: !23, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!88 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!89 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!90 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !92, line: 65, baseType: !23, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!93 = !{!94, !95}
!94 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!95 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !97, line: 620, baseType: !23, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!98 = !{!99, !100, !101, !102, !103}
!99 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!100 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!101 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!102 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!103 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !97, line: 597, baseType: !105, size: 32, elements: !106)
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!108 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!109 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!110 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!111 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !113, line: 26, baseType: !23, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!116 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!117 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !85, line: 547, baseType: !23, size: 32, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126}
!120 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!121 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!122 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!123 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!124 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!126 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !85, line: 564, baseType: !23, size: 32, elements: !128)
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!130 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!131 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !85, line: 577, baseType: !23, size: 32, elements: !133)
!133 = !{!134, !135, !136}
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!135 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!136 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !85, line: 503, baseType: !23, size: 32, elements: !138)
!138 = !{!139, !140, !141, !142}
!139 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!141 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!142 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !144, line: 16, baseType: !23, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "TT_NONE", value: 0)
!147 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!148 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !150, line: 51, baseType: !23, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!153 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!154 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!155 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !157, line: 15, baseType: !23, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!160 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!161 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!162 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !164, line: 68, baseType: !23, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!167 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!168 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !164, line: 18, baseType: !23, size: 32, elements: !170)
!170 = !{!171, !172}
!171 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!172 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !164, line: 276, baseType: !23, size: 32, elements: !174)
!174 = !{!175, !176}
!175 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!176 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !73, line: 295, baseType: !23, size: 32, elements: !178)
!178 = !{!179, !180}
!179 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!180 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !73, line: 285, baseType: !23, size: 32, elements: !182)
!182 = !{!183, !184, !185}
!183 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!184 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!185 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_target_state", file: !187, line: 321, baseType: !23, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/scsi/scsi_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8532a04b33bfb2793a57cbb23a970be9")
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIEnumerator(name: "STARGET_CREATED", value: 1)
!190 = !DIEnumerator(name: "STARGET_RUNNING", value: 2)
!191 = !DIEnumerator(name: "STARGET_REMOVE", value: 3)
!192 = !DIEnumerator(name: "STARGET_CREATED_REMOVE", value: 4)
!193 = !DIEnumerator(name: "STARGET_DEL", value: 5)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_device_state", file: !187, line: 38, baseType: !23, size: 32, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204}
!196 = !DIEnumerator(name: "SDEV_CREATED", value: 1)
!197 = !DIEnumerator(name: "SDEV_RUNNING", value: 2)
!198 = !DIEnumerator(name: "SDEV_CANCEL", value: 3)
!199 = !DIEnumerator(name: "SDEV_DEL", value: 4)
!200 = !DIEnumerator(name: "SDEV_QUIESCE", value: 5)
!201 = !DIEnumerator(name: "SDEV_OFFLINE", value: 6)
!202 = !DIEnumerator(name: "SDEV_TRANSPORT_OFFLINE", value: 7)
!203 = !DIEnumerator(name: "SDEV_BLOCK", value: 8)
!204 = !DIEnumerator(name: "SDEV_CREATED_BLOCK", value: 9)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_cmnd_submitter", file: !206, line: 68, baseType: !207, size: 8, elements: !208)
!206 = !DIFile(filename: "./include/scsi/scsi_cmnd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4198ccc53f5f3f3d1c4fd795461bcb03")
!207 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "SUBMITTED_BY_BLOCK_LAYER", value: 0)
!210 = !DIEnumerator(name: "SUBMITTED_BY_SCSI_ERROR_HANDLER", value: 1)
!211 = !DIEnumerator(name: "SUBMITTED_BY_SCSI_RESET_IOCTL", value: 2)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !213, line: 5, baseType: !23, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!214 = !{!215, !216, !217, !218}
!215 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!216 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!217 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!218 = !DIEnumerator(name: "DMA_NONE", value: 3)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !220, line: 10, baseType: !23, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!221 = !{!222, !223}
!222 = !DIEnumerator(name: "false", value: 0)
!223 = !DIEnumerator(name: "true", value: 1)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !225, line: 364, baseType: !23, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!226 = !{!227, !228, !229, !230, !231, !232, !233}
!227 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!228 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!229 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!230 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!231 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!232 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!233 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!234 = !{!235, !236, !1309, !315, !5575}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_cmnd", file: !206, line: 74, size: 2368, elements: !238)
!238 = !{!239, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5563, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !237, file: !206, line: 75, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device", file: !187, line: 103, size: 16256, align: 64, elements: !242)
!242 = !{!243, !246, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5395, !5396, !5397, !5398, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5436, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5514, !5515, !5516, !5517, !5518, !5519, !5522, !5523, !5524, !5525, !5526}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !241, file: !187, line: 104, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "Scsi_Host", file: !187, line: 104, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "request_queue", scope: !241, file: !187, line: 105, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !73, line: 391, size: 7296, elements: !249)
!249 = !{!250, !5166, !5169, !5170, !5173, !5176, !5177, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5342, !5343, !5344, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !248, file: !73, line: 392, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !164, line: 80, size: 1984, elements: !253)
!253 = !{!254, !255, !258, !5097, !5098, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5127, !5132, !5154, !5163, !5164, !5165}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !252, file: !164, line: 81, baseType: !247, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !252, file: !164, line: 82, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !73, line: 404, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !252, file: !164, line: 83, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !164, line: 288, size: 4096, elements: !261)
!261 = !{!262, !316, !364, !374, !375, !376, !377, !378, !379, !382, !383, !403, !404, !405, !406, !407, !409, !410, !424, !425, !458, !459, !460, !461, !462, !463, !464, !465, !5094, !5095, !5096}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !164, line: 289, baseType: !263, size: 512, align: 512)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !260, file: !164, line: 289, size: 512, align: 512, elements: !264)
!264 = !{!265, !308, !314}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !263, file: !164, line: 291, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !267, line: 29, baseType: !268)
!267 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !267, line: 17, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !267, line: 18, baseType: !271, size: 32)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !267, line: 18, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !271, file: !267, line: 19, baseType: !274, size: 32)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !275, line: 14, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !274, file: !275, line: 15, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !279, line: 44, baseType: !280)
!279 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !279, line: 14, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !279, line: 15, baseType: !283, size: 32)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !279, line: 15, size: 32, elements: !284)
!284 = !{!285, !291, !300}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !283, file: !279, line: 16, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !287, line: 174, baseType: !288)
!287 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 172, size: 32, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !288, file: !287, line: 173, baseType: !105, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !279, line: 24, baseType: !292, size: 16)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !283, file: !279, line: 24, size: 16, elements: !293)
!293 = !{!294, !299}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !292, file: !279, line: 25, baseType: !295, size: 8)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !296, line: 17, baseType: !297)
!296 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !298, line: 21, baseType: !207)
!298 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !292, file: !279, line: 26, baseType: !295, size: 8, offset: 8)
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !279, line: 28, baseType: !301, size: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !283, file: !279, line: 28, size: 32, elements: !302)
!302 = !{!303, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !301, file: !279, line: 29, baseType: !304, size: 16)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !296, line: 19, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !298, line: 24, baseType: !306)
!306 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !301, file: !279, line: 30, baseType: !304, size: 16, offset: 16)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !263, file: !164, line: 299, baseType: !309, size: 128, offset: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !287, line: 190, size: 128, elements: !310)
!310 = !{!311, !313}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !287, line: 191, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !309, file: !287, line: 191, baseType: !312, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !263, file: !164, line: 304, baseType: !315, size: 64, offset: 192)
!315 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !260, file: !164, line: 310, baseType: !317, size: 704, offset: 512)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !318, line: 111, size: 704, elements: !319)
!318 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!319 = !{!320, !340, !360, !363}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !317, file: !318, line: 112, baseType: !321, size: 256)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !318, line: 98, size: 256, elements: !322)
!322 = !{!323, !333, !334}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !321, file: !318, line: 99, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !325, line: 13, baseType: !326)
!325 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !287, line: 181, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 179, size: 64, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !327, file: !287, line: 180, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !296, line: 22, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !298, line: 30, baseType: !332)
!332 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !321, file: !318, line: 100, baseType: !309, size: 128, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !321, file: !318, line: 101, baseType: !335, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !318, line: 21, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !317, file: !318, line: 113, baseType: !341, size: 320, offset: 256)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !342, line: 11, size: 320, elements: !343)
!342 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!343 = !{!344, !351, !352, !357}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !341, file: !342, line: 16, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !287, line: 198, size: 128, elements: !346)
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !287, line: 199, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !345, file: !287, line: 199, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !341, file: !342, line: 17, baseType: !315, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !341, file: !342, line: 18, baseType: !353, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !342, line: 19, baseType: !358, size: 32, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !296, line: 21, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !298, line: 27, baseType: !23)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !317, file: !318, line: 116, baseType: !361, size: 64, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !318, line: 18, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !317, file: !318, line: 117, baseType: !105, size: 32, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !260, file: !164, line: 312, baseType: !365, size: 64, offset: 1216)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !366, line: 913, baseType: !367)
!366 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 64, elements: !372)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !366, line: 19, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !368, file: !366, line: 19, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 1)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !260, file: !164, line: 317, baseType: !105, size: 32, offset: 1280)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !260, file: !164, line: 322, baseType: !105, size: 32, offset: 1312)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !164, line: 325, baseType: !315, size: 64, offset: 1344)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !260, file: !164, line: 331, baseType: !235, size: 64, offset: 1408)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !260, file: !164, line: 335, baseType: !247, size: 64, offset: 1472)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !260, file: !164, line: 337, baseType: !380, size: 64, offset: 1536)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !73, line: 35, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !260, file: !164, line: 343, baseType: !235, size: 64, offset: 1600)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !260, file: !164, line: 349, baseType: !384, size: 256, offset: 1664)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !385, line: 52, size: 256, elements: !386)
!385 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!386 = !{!387, !388, !389, !390, !393, !401}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !384, file: !385, line: 56, baseType: !23, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !384, file: !385, line: 61, baseType: !23, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !384, file: !385, line: 66, baseType: !23, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !384, file: !385, line: 71, baseType: !391, size: 8, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !287, line: 35, baseType: !392)
!392 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !384, file: !385, line: 76, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !385, line: 29, size: 1024, align: 512, elements: !396)
!396 = !{!397, !398, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !395, file: !385, line: 33, baseType: !315, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !395, file: !385, line: 38, baseType: !315, size: 64, align: 512, offset: 512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !395, file: !385, line: 43, baseType: !400, size: 32, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !275, line: 23, baseType: !274)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !384, file: !385, line: 84, baseType: !402, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !260, file: !164, line: 355, baseType: !256, size: 64, offset: 1920)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !260, file: !164, line: 361, baseType: !23, size: 32, offset: 1984)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !260, file: !164, line: 364, baseType: !306, size: 16, offset: 2016)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !260, file: !164, line: 366, baseType: !306, size: 16, offset: 2032)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !260, file: !164, line: 368, baseType: !408, size: 64, offset: 2048)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !260, file: !164, line: 371, baseType: !266, size: 32, offset: 2112)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !260, file: !164, line: 376, baseType: !411, size: 320, offset: 2176)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !412, line: 14, baseType: !413)
!412 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !412, line: 30, size: 320, elements: !414)
!414 = !{!415, !416, !417, !423}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !412, line: 31, baseType: !23, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !413, file: !412, line: 32, baseType: !235, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !413, file: !412, line: 33, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !412, line: 16, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!105, !422, !23, !105, !235}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !413, file: !412, line: 34, baseType: !309, size: 128, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !260, file: !164, line: 382, baseType: !286, size: 32, offset: 2496)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !260, file: !164, line: 388, baseType: !426, size: 64, offset: 2560)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !164, line: 735, size: 1472, elements: !428)
!428 = !{!429, !430, !431, !432, !452, !453, !455, !456, !457}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !427, file: !164, line: 736, baseType: !23, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !427, file: !164, line: 737, baseType: !23, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !427, file: !164, line: 738, baseType: !23, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !427, file: !164, line: 740, baseType: !433, size: 512, offset: 128)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !385, line: 109, size: 512, elements: !434)
!434 = !{!435, !436, !437, !438, !448, !449, !450, !451}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !433, file: !385, line: 113, baseType: !384, size: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !433, file: !385, line: 119, baseType: !23, size: 32, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !433, file: !385, line: 124, baseType: !286, size: 32, offset: 288)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !433, file: !385, line: 129, baseType: !439, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !385, line: 93, size: 512, align: 512, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !440, file: !385, line: 97, baseType: !443, size: 192)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !412, line: 41, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !412, line: 37, size: 192, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !444, file: !412, line: 38, baseType: !266, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !444, file: !412, line: 39, baseType: !309, size: 128, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !433, file: !385, line: 134, baseType: !286, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !433, file: !385, line: 140, baseType: !23, size: 32, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !433, file: !385, line: 146, baseType: !286, size: 32, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !433, file: !385, line: 151, baseType: !286, size: 32, offset: 480)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !427, file: !164, line: 741, baseType: !433, size: 512, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !427, file: !164, line: 743, baseType: !454, size: 64, offset: 1152)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !427, file: !164, line: 744, baseType: !454, size: 64, offset: 1216)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !427, file: !164, line: 745, baseType: !309, size: 128, offset: 1280)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !427, file: !164, line: 751, baseType: !266, size: 32, offset: 1408)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !260, file: !164, line: 394, baseType: !426, size: 64, offset: 2624)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !260, file: !164, line: 397, baseType: !315, size: 64, offset: 2688)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !260, file: !164, line: 400, baseType: !23, size: 32, offset: 2752)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !260, file: !164, line: 402, baseType: !23, size: 32, offset: 2784)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !260, file: !164, line: 408, baseType: !286, size: 32, offset: 2816)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !260, file: !164, line: 411, baseType: !345, size: 128, offset: 2880)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !260, file: !164, line: 413, baseType: !345, size: 128, offset: 3008)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !260, file: !164, line: 415, baseType: !466, size: 512, offset: 3136)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !467, line: 64, size: 512, elements: !468)
!467 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!468 = !{!469, !472, !473, !475, !520, !4980, !5084, !5089, !5090, !5091, !5092, !5093}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !467, line: 65, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !466, file: !467, line: 66, baseType: !309, size: 128, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !466, file: !467, line: 67, baseType: !474, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !466, file: !467, line: 68, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !467, line: 168, size: 768, elements: !478)
!478 = !{!479, !480, !481, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !477, file: !467, line: 169, baseType: !309, size: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !477, file: !467, line: 170, baseType: !266, size: 32, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !477, file: !467, line: 171, baseType: !466, size: 512, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !477, file: !467, line: 172, baseType: !483, size: 64, offset: 704)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !467, line: 133, size: 192, elements: !486)
!486 = !{!487, !494, !499}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !485, file: !467, line: 134, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!105, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !467, line: 135, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!470, !492}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !485, file: !467, line: 136, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!105, !492, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !467, line: 125, size: 20736, elements: !506)
!506 = !{!507, !510, !514, !515, !519}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !505, file: !467, line: 126, baseType: !508, size: 192)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 192, elements: !15)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !505, file: !467, line: 127, baseType: !511, size: 4096, offset: 192)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 4096, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !505, file: !467, line: 128, baseType: !105, size: 32, offset: 4288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !505, file: !467, line: 129, baseType: !516, size: 16384, offset: 4320)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 2048)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !505, file: !467, line: 130, baseType: !105, size: 32, offset: 20704)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !466, file: !467, line: 69, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !467, line: 116, size: 384, elements: !524)
!524 = !{!525, !529, !557, !4968, !4972, !4976}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !523, file: !467, line: 117, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !474}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !523, file: !467, line: 118, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !533, line: 254, size: 128, elements: !534)
!533 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!534 = !{!535, !550}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !532, file: !533, line: 255, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!539, !474, !544, !509}
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !287, line: 66, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !541, line: 73, baseType: !542)
!541 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !541, line: 15, baseType: !543)
!543 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !533, line: 30, size: 128, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !545, file: !533, line: 31, baseType: !470, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !545, file: !533, line: 32, baseType: !549, size: 16, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !287, line: 24, baseType: !306)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !532, file: !533, line: 256, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!539, !474, !544, !470, !554}
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !287, line: 61, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !541, line: 72, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !541, line: 16, baseType: !315)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !523, file: !467, line: 119, baseType: !558, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !533, line: 84, size: 320, elements: !562)
!562 = !{!563, !564, !568, !4964, !4966}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !561, file: !533, line: 85, baseType: !470, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !561, file: !533, line: 86, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!549, !474, !544, !105}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !561, file: !533, line: 88, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!549, !474, !572, !105}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !533, line: 175, size: 512, elements: !574)
!574 = !{!575, !576, !577, !578, !4955, !4959, !4960}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !573, file: !533, line: 176, baseType: !545, size: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !573, file: !533, line: 177, baseType: !554, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !573, file: !533, line: 178, baseType: !235, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !573, file: !533, line: 179, baseType: !579, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !30, line: 472, size: 1536, align: 64, elements: !584)
!584 = !{!585, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4949, !4950, !4951, !4952, !4953, !4954}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !583, file: !30, line: 473, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !30, line: 641, size: 4800, elements: !588)
!588 = !{!589, !590, !591, !599, !600, !607, !608, !611, !612, !4730, !4731, !4732, !4733, !4734, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4774, !4777, !4778, !4779, !4788, !4789, !4790, !4791}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !587, file: !30, line: 642, baseType: !549, size: 16)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !587, file: !30, line: 643, baseType: !306, size: 16, offset: 16)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !587, file: !30, line: 644, baseType: !592, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !593, line: 23, baseType: !594)
!593 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !593, line: 21, size: 32, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !594, file: !593, line: 22, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !287, line: 37, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !541, line: 49, baseType: !23)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !587, file: !30, line: 645, baseType: !309, size: 128, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !587, file: !30, line: 646, baseType: !601, size: 32, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !593, line: 28, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !593, line: 26, size: 32, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !602, file: !593, line: 27, baseType: !605, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !287, line: 38, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !541, line: 50, baseType: !23)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !587, file: !30, line: 647, baseType: !23, size: 32, offset: 224)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !587, file: !30, line: 650, baseType: !609, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !30, line: 607, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !587, file: !30, line: 651, baseType: !609, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !587, file: !30, line: 654, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !30, line: 1966, size: 2048, align: 512, elements: !616)
!616 = !{!617, !4564, !4574, !4578, !4582, !4586, !4590, !4594, !4598, !4602, !4606, !4607, !4611, !4615, !4652, !4681, !4685, !4691, !4695, !4699, !4703, !4707, !4711, !4717, !4721}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !615, file: !30, line: 1967, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !586, !621, !23}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !623, line: 82, size: 1536, elements: !624)
!623 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!624 = !{!625, !626, !636, !644, !645, !663, !664, !668, !681, !4547, !4548, !4549, !4550, !4556, !4557, !4558}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !622, file: !623, line: 84, baseType: !23, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !622, file: !623, line: 85, baseType: !627, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !628, line: 275, baseType: !629)
!628 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !628, line: 275, size: 32, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !629, file: !628, line: 275, baseType: !632, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !628, line: 69, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !628, line: 64, size: 32, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !633, file: !628, line: 65, baseType: !23, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !622, file: !623, line: 86, baseType: !637, size: 128, offset: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !638, line: 38, size: 128, elements: !639)
!638 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!639 = !{!640, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !637, file: !638, line: 39, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !637, file: !638, line: 39, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !622, file: !623, line: 87, baseType: !621, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !622, file: !623, line: 88, baseType: !646, size: 128, offset: 256)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !623, line: 49, size: 128, elements: !647)
!647 = !{!648, !660}
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !623, line: 50, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !623, line: 50, size: 64, elements: !650)
!650 = !{!651, !656}
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !623, line: 51, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !623, line: 51, size: 64, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !652, file: !623, line: 52, baseType: !358, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !652, file: !623, line: 52, baseType: !358, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !649, file: !623, line: 54, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !296, line: 23, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !298, line: 31, baseType: !659)
!659 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !623, line: 56, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !622, file: !623, line: 89, baseType: !586, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !622, file: !623, line: 91, baseType: !665, size: 256, offset: 448)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !622, file: !623, line: 94, baseType: !669, size: 64, offset: 704)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !670, line: 25, size: 64, elements: !671)
!670 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !670, line: 26, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !670, line: 26, size: 64, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !673, file: !670, line: 28, baseType: !658, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !670, line: 30, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !670, line: 30, size: 64, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !677, file: !670, line: 31, baseType: !266, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !677, file: !670, line: 32, baseType: !105, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !622, file: !623, line: 95, baseType: !682, size: 64, offset: 768)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !623, line: 128, size: 1024, align: 512, elements: !685)
!685 = !{!686, !690, !691, !698, !704, !708, !712, !716, !717, !721, !725, !4537, !4541}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !684, file: !623, line: 129, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!105, !621, !23}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !684, file: !623, line: 130, baseType: !687, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !684, file: !623, line: 131, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!105, !695, !697}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !684, file: !623, line: 132, baseType: !699, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!105, !695, !23, !470, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !684, file: !623, line: 134, baseType: !705, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!105, !695}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !684, file: !623, line: 135, baseType: !709, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!105, !621}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !684, file: !623, line: 136, baseType: !713, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !621}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !684, file: !623, line: 137, baseType: !713, size: 64, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !684, file: !623, line: 138, baseType: !718, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !621, !586}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !684, file: !623, line: 139, baseType: !722, size: 64, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!509, !621, !509, !105}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !684, file: !623, line: 140, baseType: !726, size: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!729, !4536}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !731, line: 70, size: 256, elements: !732)
!731 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!732 = !{!733, !734, !4532, !4533}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !730, file: !731, line: 71, baseType: !621, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !730, file: !731, line: 72, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !30, line: 1190, size: 10752, elements: !737)
!737 = !{!738, !739, !742, !743, !744, !747, !1178, !1318, !1358, !1448, !1452, !1453, !1454, !1455, !1456, !1465, !1466, !1467, !1468, !1473, !1477, !1478, !3272, !3278, !3279, !3282, !3283, !3284, !3325, !4466, !4467, !4468, !4469, !4470, !4471, !4474, !4475, !4482, !4483, !4484, !4485, !4486, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !736, file: !30, line: 1191, baseType: !309, size: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !736, file: !30, line: 1192, baseType: !740, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !287, line: 21, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !287, line: 18, baseType: !358)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !736, file: !30, line: 1193, baseType: !207, size: 8, offset: 160)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !736, file: !30, line: 1194, baseType: !315, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !736, file: !30, line: 1195, baseType: !745, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !287, line: 52, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !541, line: 88, baseType: !332)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !736, file: !30, line: 1196, baseType: !748, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !30, line: 2366, size: 576, elements: !750)
!750 = !{!751, !752, !753, !759, !763, !767, !771, !1163, !1164, !1168, !1170, !1171, !1172, !1174, !1175, !1176, !1177}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !749, file: !30, line: 2367, baseType: !470, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !749, file: !30, line: 2368, baseType: !105, size: 32, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !749, file: !30, line: 2376, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!105, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !731, line: 21, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !749, file: !30, line: 2377, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !30, line: 75, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !749, file: !30, line: 2378, baseType: !764, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!621, !748, !105, !470, !235}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !749, file: !30, line: 2380, baseType: !768, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !735}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !749, file: !30, line: 2381, baseType: !772, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !22, line: 402, size: 9216, align: 512, elements: !774)
!774 = !{!775, !776, !777, !781, !802, !828, !829, !830, !831, !835, !840, !841, !853, !908, !909, !910, !911, !912, !913, !914, !915, !923, !927, !954, !975, !976, !977, !978, !987, !1010, !1011, !1014, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1028, !1029, !1121, !1129, !1130, !1131, !1133, !1137, !1138, !1142, !1143, !1144, !1145, !1147, !1148, !1149, !1156, !1157, !1158, !1162}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !773, file: !22, line: 403, baseType: !21, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !773, file: !22, line: 406, baseType: !309, size: 128, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !773, file: !22, line: 409, baseType: !778, size: 448, offset: 192)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 56)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !773, file: !22, line: 417, baseType: !782, size: 768, offset: 640)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !22, line: 45, size: 768, elements: !783)
!783 = !{!784, !785, !786, !787, !790}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !782, file: !22, line: 46, baseType: !466, size: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !782, file: !22, line: 47, baseType: !772, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !782, file: !22, line: 48, baseType: !474, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !782, file: !22, line: 49, baseType: !788, size: 64, offset: 640)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !22, line: 49, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !782, file: !22, line: 50, baseType: !791, size: 64, offset: 704)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !793, line: 26, size: 256, elements: !794)
!793 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !792, file: !793, line: 27, baseType: !23, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !792, file: !793, line: 28, baseType: !797, size: 192, offset: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !798, line: 43, size: 192, elements: !799)
!798 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !797, file: !798, line: 44, baseType: !400, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !797, file: !798, line: 45, baseType: !309, size: 128, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !773, file: !22, line: 418, baseType: !803, size: 64, offset: 1408)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !22, line: 53, size: 448, elements: !805)
!805 = !{!806, !807, !812, !816, !820, !824}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !804, file: !22, line: 54, baseType: !545, size: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !804, file: !22, line: 55, baseType: !808, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!539, !803, !811, !509}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !804, file: !22, line: 57, baseType: !813, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!539, !803, !811, !470, !554}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !804, file: !22, line: 59, baseType: !817, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !772, !470}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !804, file: !22, line: 60, baseType: !821, size: 64, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!105, !772}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !804, file: !22, line: 61, baseType: !825, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !772}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !773, file: !22, line: 419, baseType: !470, size: 64, offset: 1472)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !773, file: !22, line: 420, baseType: !470, size: 64, offset: 1536)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !773, file: !22, line: 421, baseType: !474, size: 64, offset: 1600)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !773, file: !22, line: 424, baseType: !832, size: 64, offset: 1664)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !22, line: 424, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !773, file: !22, line: 425, baseType: !836, size: 64, offset: 1728)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !296, line: 20, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !298, line: 26, baseType: !105)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !773, file: !22, line: 426, baseType: !23, size: 32, offset: 1792)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !773, file: !22, line: 435, baseType: !842, size: 256, offset: 1856)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !843, line: 66, size: 256, elements: !844)
!843 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!844 = !{!845, !846, !847, !852}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !842, file: !843, line: 67, baseType: !324, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !842, file: !843, line: 68, baseType: !400, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !842, file: !843, line: 70, baseType: !848, size: 32, offset: 96)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !849, line: 15, size: 32, elements: !850)
!849 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !848, file: !849, line: 20, baseType: !286, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !842, file: !843, line: 72, baseType: !309, size: 128, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !773, file: !22, line: 437, baseType: !854, size: 64, offset: 2112)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !856, line: 69, size: 320, elements: !857)
!856 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!857 = !{!858, !859, !860, !880, !882, !886, !887}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !855, file: !856, line: 70, baseType: !470, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !855, file: !856, line: 71, baseType: !772, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !855, file: !856, line: 72, baseType: !861, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !856, line: 47, size: 256, elements: !864)
!864 = !{!865, !866, !872, !876}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !863, file: !856, line: 49, baseType: !23, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !863, file: !856, line: 51, baseType: !867, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!105, !470, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !863, file: !856, line: 53, baseType: !873, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!105, !509, !870}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !863, file: !856, line: 55, baseType: !877, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !235}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !855, file: !856, line: 73, baseType: !881, size: 16, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !855, file: !856, line: 74, baseType: !883, size: 8, offset: 208)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !296, line: 16, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !298, line: 20, baseType: !885)
!885 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !855, file: !856, line: 75, baseType: !295, size: 8, offset: 216)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !856, line: 76, baseType: !888, size: 64, offset: 256)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !856, line: 76, size: 64, elements: !889)
!889 = !{!890, !891, !898}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !888, file: !856, line: 77, baseType: !235, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !888, file: !856, line: 78, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !856, line: 86, size: 128, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !894, file: !856, line: 87, baseType: !23, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !894, file: !856, line: 88, baseType: !509, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !888, file: !856, line: 79, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !856, line: 92, size: 256, elements: !902)
!902 = !{!903, !904, !905, !906, !907}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !901, file: !856, line: 94, baseType: !23, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !901, file: !856, line: 95, baseType: !23, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !901, file: !856, line: 96, baseType: !402, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !901, file: !856, line: 97, baseType: !861, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !901, file: !856, line: 98, baseType: !235, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !773, file: !22, line: 438, baseType: !23, size: 32, offset: 2176)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !773, file: !22, line: 441, baseType: !23, size: 32, offset: 2208)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !773, file: !22, line: 442, baseType: !832, size: 64, offset: 2240)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !773, file: !22, line: 443, baseType: !836, size: 64, offset: 2304)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !773, file: !22, line: 444, baseType: !391, size: 8, offset: 2368)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !773, file: !22, line: 451, baseType: !391, size: 8, offset: 2376)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !773, file: !22, line: 454, baseType: !23, size: 32, offset: 2400)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !773, file: !22, line: 455, baseType: !916, size: 64, offset: 2432)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !918, line: 23, size: 96, elements: !919)
!918 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !917, file: !918, line: 24, baseType: !105, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !917, file: !918, line: 24, baseType: !105, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !917, file: !918, line: 24, baseType: !105, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !773, file: !22, line: 458, baseType: !924, size: 64, offset: 2496)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!105}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !773, file: !22, line: 460, baseType: !928, size: 4032, align: 512, offset: 2560)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 4032, elements: !952)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !22, line: 362, size: 576, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !929, file: !22, line: 363, baseType: !235, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !929, file: !22, line: 364, baseType: !23, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !929, file: !22, line: 367, baseType: !934, size: 448, offset: 128)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !22, line: 319, size: 448, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !934, file: !22, line: 320, baseType: !772, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !934, file: !22, line: 321, baseType: !938, size: 384, offset: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !939, line: 40, size: 384, elements: !940)
!939 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !938, file: !939, line: 41, baseType: !942, size: 384, align: 64)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 384, align: 64, elements: !950)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !944, line: 5, size: 192, align: 64, elements: !945)
!944 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!945 = !{!946, !947, !949}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !943, file: !944, line: 6, baseType: !315, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !943, file: !944, line: 7, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !943, file: !944, line: 8, baseType: !948, size: 64, offset: 128)
!950 = !{!951}
!951 = !DISubrange(count: 2)
!952 = !{!953}
!953 = !DISubrange(count: 7)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !773, file: !22, line: 463, baseType: !955, size: 192, offset: 6592)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !956, line: 8, size: 192, elements: !957)
!956 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!957 = !{!958, !959, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !955, file: !956, line: 10, baseType: !23, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !955, file: !956, line: 11, baseType: !960, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !955, file: !956, line: 12, baseType: !962, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !964, line: 59, size: 48, elements: !965)
!964 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!965 = !{!966, !970, !971, !972, !973, !974}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !963, file: !964, line: 60, baseType: !967, size: 16)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !296, line: 18, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !298, line: 23, baseType: !969)
!969 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !963, file: !964, line: 61, baseType: !967, size: 16, offset: 16)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !963, file: !964, line: 63, baseType: !23, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !963, file: !964, line: 64, baseType: !23, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !963, file: !964, line: 65, baseType: !23, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !963, file: !964, line: 66, baseType: !23, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !773, file: !22, line: 465, baseType: !315, size: 64, offset: 6784)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !773, file: !22, line: 469, baseType: !23, size: 32, offset: 6848)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !773, file: !22, line: 470, baseType: !309, size: 128, offset: 6912)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !773, file: !22, line: 471, baseType: !979, size: 64, offset: 7040)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !981, line: 33, size: 96, elements: !982)
!981 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!982 = !{!983, !984, !985, !986}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !980, file: !981, line: 37, baseType: !105, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !980, file: !981, line: 43, baseType: !105, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !980, file: !981, line: 45, baseType: !306, size: 16, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !981, line: 47, baseType: !306, size: 16, offset: 80)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !773, file: !22, line: 476, baseType: !988, size: 64, offset: 7104)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !22, line: 378, size: 256, elements: !990)
!990 = !{!991, !1007, !1008, !1009}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !989, file: !22, line: 379, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !994, line: 204, baseType: !995)
!994 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !994, line: 197, size: 192, elements: !996)
!996 = !{!997, !999, !1000, !1001, !1003, !1005}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !995, file: !994, line: 198, baseType: !998, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !994, line: 21, baseType: !359)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !995, file: !994, line: 199, baseType: !207, size: 8, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !995, file: !994, line: 200, baseType: !207, size: 8, offset: 40)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !995, file: !994, line: 201, baseType: !1002, size: 16, offset: 48)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !994, line: 17, baseType: !305)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !995, file: !994, line: 202, baseType: !1004, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !994, line: 16, baseType: !658)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !995, file: !994, line: 203, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !994, line: 22, baseType: !658)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !989, file: !22, line: 380, baseType: !23, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !989, file: !22, line: 381, baseType: !509, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !989, file: !22, line: 382, baseType: !509, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !773, file: !22, line: 477, baseType: !989, size: 256, offset: 7168)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !773, file: !22, line: 480, baseType: !1012, size: 64, offset: 7424)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !22, line: 480, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !773, file: !22, line: 483, baseType: !1015, size: 64, offset: 7488)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !22, line: 483, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !773, file: !22, line: 488, baseType: !509, size: 64, offset: 7552)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !773, file: !22, line: 492, baseType: !235, size: 64, offset: 7616)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !773, file: !22, line: 493, baseType: !23, size: 32, offset: 7680)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !773, file: !22, line: 495, baseType: !235, size: 64, offset: 7744)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !773, file: !22, line: 496, baseType: !23, size: 32, offset: 7808)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !773, file: !22, line: 499, baseType: !23, size: 32, offset: 7840)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !773, file: !22, line: 500, baseType: !1024, size: 64, offset: 7872)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1026, line: 45, baseType: !1027)
!1026 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !773, file: !22, line: 503, baseType: !23, size: 32, offset: 7936)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !773, file: !22, line: 504, baseType: !1030, size: 64, offset: 8000)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1033, line: 96, size: 192, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1034 = !{!1035, !1036, !1089, !1093}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1032, file: !1033, line: 97, baseType: !23, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1032, file: !1033, line: 98, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1033, line: 24, size: 3072, elements: !1039)
!1039 = !{!1040, !1042, !1043, !1044, !1045, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1086, !1087, !1088}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1038, file: !1033, line: 26, baseType: !1041, size: 128)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 128, elements: !950)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1038, file: !1033, line: 27, baseType: !1041, size: 128, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1038, file: !1033, line: 28, baseType: !105, size: 32, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1038, file: !1033, line: 31, baseType: !266, size: 32, align: 512, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1038, file: !1033, line: 32, baseType: !1046, size: 960, offset: 576)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1047, line: 206, size: 960, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1048 = !{!1049, !1058, !1063, !1065, !1066, !1068}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1046, file: !1047, line: 207, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !287, line: 232, size: 128, align: 64, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1051, file: !287, line: 233, baseType: !1050, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1051, file: !287, line: 234, baseType: !1055, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !1050}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1046, file: !1047, line: 208, baseType: !1059, size: 256, offset: 64)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 256, elements: !1061)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1061 = !{!1062}
!1062 = !DISubrange(count: 4)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1046, file: !1047, line: 209, baseType: !1064, size: 256, offset: 320)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !1061)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1046, file: !1047, line: 213, baseType: !543, size: 64, offset: 576)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1046, file: !1047, line: 215, baseType: !1067, size: 256, offset: 640)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 256, elements: !1061)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1046, file: !1047, line: 216, baseType: !295, size: 8, offset: 896)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1038, file: !1033, line: 33, baseType: !315, size: 64, offset: 1536)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1038, file: !1033, line: 34, baseType: !315, size: 64, offset: 1600)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1038, file: !1033, line: 35, baseType: !391, size: 8, offset: 1664)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1038, file: !1033, line: 36, baseType: !341, size: 320, offset: 1728)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1038, file: !1033, line: 37, baseType: !321, size: 256, offset: 2048)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1038, file: !1033, line: 38, baseType: !1051, size: 128, align: 64, offset: 2304)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1038, file: !1033, line: 39, baseType: !1076, size: 64, offset: 2432)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1033, line: 49, size: 768, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !1033, line: 50, baseType: !266, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1077, file: !1033, line: 51, baseType: !1064, size: 256, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1077, file: !1033, line: 53, baseType: !1064, size: 256, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1077, file: !1033, line: 54, baseType: !315, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1077, file: !1033, line: 55, baseType: !1076, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1077, file: !1033, line: 56, baseType: !105, size: 32, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1077, file: !1033, line: 57, baseType: !105, size: 32, offset: 736)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1038, file: !1033, line: 40, baseType: !315, size: 64, offset: 2496)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1038, file: !1033, line: 42, baseType: !105, size: 32, offset: 2560)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1038, file: !1033, line: 43, baseType: !1031, size: 64, offset: 2624)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1032, file: !1033, line: 99, baseType: !1090, offset: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1091, line: 211, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1092 = !{}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1032, file: !1033, line: 100, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1033, line: 63, size: 3008, elements: !1096)
!1096 = !{!1097, !1098, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1095, file: !1033, line: 64, baseType: !1076, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1095, file: !1033, line: 65, baseType: !1099, size: 192, offset: 64)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 192, elements: !15)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1095, file: !1033, line: 67, baseType: !105, size: 32, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1095, file: !1033, line: 68, baseType: !842, size: 256, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1095, file: !1033, line: 69, baseType: !266, size: 32, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1095, file: !1033, line: 70, baseType: !842, size: 256, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1095, file: !1033, line: 71, baseType: !315, size: 64, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1095, file: !1033, line: 72, baseType: !315, size: 64, offset: 960)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1095, file: !1033, line: 73, baseType: !315, size: 64, offset: 1024)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1095, file: !1033, line: 74, baseType: !315, size: 64, offset: 1088)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1095, file: !1033, line: 75, baseType: !315, size: 64, offset: 1152)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1095, file: !1033, line: 76, baseType: !315, size: 64, offset: 1216)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1095, file: !1033, line: 77, baseType: !315, size: 64, offset: 1280)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1095, file: !1033, line: 78, baseType: !315, size: 64, offset: 1344)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1095, file: !1033, line: 79, baseType: !391, size: 8, offset: 1408)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1095, file: !1033, line: 80, baseType: !315, size: 64, offset: 1472)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1095, file: !1033, line: 81, baseType: !842, size: 256, offset: 1536)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1095, file: !1033, line: 82, baseType: !792, size: 256, offset: 1792)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1095, file: !1033, line: 84, baseType: !286, size: 32, offset: 2048)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1095, file: !1033, line: 87, baseType: !315, size: 64, offset: 2112)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1095, file: !1033, line: 88, baseType: !315, size: 64, offset: 2176)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1095, file: !1033, line: 89, baseType: !317, size: 704, offset: 2240)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1095, file: !1033, line: 90, baseType: !1031, size: 64, offset: 2944)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !773, file: !22, line: 515, baseType: !1122, size: 64, offset: 8064)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1124, line: 117, size: 128, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1125 = !{!1126, !1127, !1128}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1123, file: !1124, line: 118, baseType: !838, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1123, file: !1124, line: 119, baseType: !838, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1123, file: !1124, line: 120, baseType: !543, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !773, file: !22, line: 516, baseType: !23, size: 32, offset: 8128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !773, file: !22, line: 519, baseType: !23, size: 32, offset: 8160)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !773, file: !22, line: 520, baseType: !1132, size: 64, offset: 8192)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !773, file: !22, line: 523, baseType: !1134, size: 64, offset: 8256)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !22, line: 523, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !773, file: !22, line: 524, baseType: !23, size: 32, offset: 8320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !773, file: !22, line: 525, baseType: !1139, size: 64, offset: 8384)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !22, line: 525, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !773, file: !22, line: 526, baseType: !23, size: 32, offset: 8448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !773, file: !22, line: 533, baseType: !235, size: 64, offset: 8512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !773, file: !22, line: 534, baseType: !23, size: 32, offset: 8576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !773, file: !22, line: 535, baseType: !1146, size: 64, offset: 8640)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !773, file: !22, line: 536, baseType: !23, size: 32, offset: 8704)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !773, file: !22, line: 539, baseType: !105, size: 32, offset: 8736)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !773, file: !22, line: 540, baseType: !1150, size: 64, offset: 8768)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1152, line: 32, size: 64, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1151, file: !1152, line: 33, baseType: !838, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1151, file: !1152, line: 34, baseType: !838, size: 32, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !773, file: !22, line: 563, baseType: !309, size: 128, offset: 8832)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !773, file: !22, line: 565, baseType: !309, size: 128, offset: 8960)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !773, file: !22, line: 568, baseType: !1159, size: 64, offset: 9088)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !773, file: !22, line: 570, baseType: !286, size: 32, offset: 9152)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !749, file: !30, line: 2382, baseType: !748, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !749, file: !30, line: 2383, baseType: !1165, size: 64, offset: 512)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !287, line: 194, size: 64, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1165, file: !287, line: 195, baseType: !348, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !749, file: !30, line: 2385, baseType: !1169, offset: 576)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1091, line: 206, elements: !1092)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !749, file: !30, line: 2386, baseType: !1169, offset: 576)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !749, file: !30, line: 2387, baseType: !1169, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !749, file: !30, line: 2388, baseType: !1173, offset: 576)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, elements: !15)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !749, file: !30, line: 2390, baseType: !1169, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !749, file: !30, line: 2391, baseType: !1169, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !749, file: !30, line: 2392, baseType: !1169, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !749, file: !30, line: 2393, baseType: !1169, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !736, file: !30, line: 1197, baseType: !1179, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !30, line: 2057, size: 1664, elements: !1182)
!1182 = !{!1183, !1187, !1191, !1192, !1196, !1202, !1206, !1207, !1208, !1212, !1216, !1220, !1221, !1222, !1228, !1232, !1233, !1240, !1241, !1242, !1243, !1247, !1251, !1300, !1316, !1317}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1181, file: !30, line: 2058, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!586, !735}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1181, file: !30, line: 2059, baseType: !1188, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !586}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1181, file: !30, line: 2060, baseType: !1188, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1181, file: !30, line: 2062, baseType: !1193, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !586, !105}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1181, file: !30, line: 2063, baseType: !1197, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!105, !586, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !30, line: 309, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1181, file: !30, line: 2064, baseType: !1203, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!105, !586}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1181, file: !30, line: 2065, baseType: !1188, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1181, file: !30, line: 2066, baseType: !768, size: 64, offset: 448)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1181, file: !30, line: 2067, baseType: !1209, size: 64, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!105, !735, !105}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1181, file: !30, line: 2068, baseType: !1213, size: 64, offset: 576)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!105, !735, !29}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1181, file: !30, line: 2069, baseType: !1217, size: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!105, !735}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1181, file: !30, line: 2070, baseType: !1213, size: 64, offset: 704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1181, file: !30, line: 2071, baseType: !1217, size: 64, offset: 768)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1181, file: !30, line: 2072, baseType: !1223, size: 64, offset: 832)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!105, !621, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !30, line: 62, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1181, file: !30, line: 2073, baseType: !1229, size: 64, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!105, !735, !960, !509}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1181, file: !30, line: 2074, baseType: !768, size: 64, offset: 960)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1181, file: !30, line: 2076, baseType: !1234, size: 64, offset: 1024)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!105, !1237, !621}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1239, line: 66, flags: DIFlagFwdDecl)
!1239 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1181, file: !30, line: 2077, baseType: !1234, size: 64, offset: 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1181, file: !30, line: 2078, baseType: !1234, size: 64, offset: 1152)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1181, file: !30, line: 2079, baseType: !1234, size: 64, offset: 1216)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1181, file: !30, line: 2081, baseType: !1244, size: 64, offset: 1280)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!539, !735, !105, !509, !554, !745}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1181, file: !30, line: 2082, baseType: !1248, size: 64, offset: 1344)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!539, !735, !105, !470, !554, !745}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1181, file: !30, line: 2083, baseType: !1252, size: 64, offset: 1408)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1255, !586}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !35, line: 296, size: 1664, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1283, !1284, !1285}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1257, file: !35, line: 297, baseType: !345, size: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1257, file: !35, line: 298, baseType: !309, size: 128, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1257, file: !35, line: 299, baseType: !309, size: 128, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1257, file: !35, line: 300, baseType: !309, size: 128, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1257, file: !35, line: 301, baseType: !842, size: 256, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1257, file: !35, line: 302, baseType: !266, size: 32, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1257, file: !35, line: 303, baseType: !286, size: 32, offset: 800)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1257, file: !35, line: 304, baseType: !735, size: 64, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1257, file: !35, line: 305, baseType: !1268, size: 64, offset: 896)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !35, line: 68, size: 64, elements: !1269)
!1269 = !{!1270, !1282}
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !35, line: 69, baseType: !1271, size: 32)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1268, file: !35, line: 69, size: 32, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1271, file: !35, line: 70, baseType: !592, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1271, file: !35, line: 71, baseType: !601, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1271, file: !35, line: 72, baseType: !1276, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1277, line: 24, baseType: !1278)
!1277 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1277, line: 22, size: 32, elements: !1279)
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1278, file: !1277, line: 23, baseType: !1281, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1277, line: 20, baseType: !598)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1268, file: !35, line: 74, baseType: !34, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1257, file: !35, line: 306, baseType: !745, size: 64, offset: 960)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1257, file: !35, line: 307, baseType: !315, size: 64, offset: 1024)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1257, file: !35, line: 308, baseType: !1286, size: 576, offset: 1088)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !35, line: 205, size: 576, elements: !1287)
!1287 = !{!1288, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1299}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1286, file: !35, line: 206, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !35, line: 66, baseType: !332)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1286, file: !35, line: 207, baseType: !1289, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1286, file: !35, line: 208, baseType: !1289, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1286, file: !35, line: 209, baseType: !1289, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1286, file: !35, line: 210, baseType: !1289, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1286, file: !35, line: 211, baseType: !1289, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1286, file: !35, line: 212, baseType: !1289, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1286, file: !35, line: 213, baseType: !1297, size: 64, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1298, line: 8, baseType: !331)
!1298 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1286, file: !35, line: 214, baseType: !1297, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1181, file: !30, line: 2085, baseType: !1301, size: 64, offset: 1472)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!543, !735, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1306, line: 15, size: 256, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1307 = !{!1308, !1310, !1311, !1312, !1313}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1305, file: !1306, line: 16, baseType: !1309, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !287, line: 154, baseType: !23)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1305, file: !1306, line: 19, baseType: !105, size: 32, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1305, file: !1306, line: 26, baseType: !315, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1305, file: !1306, line: 33, baseType: !315, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1305, file: !1306, line: 36, baseType: !1314, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !57, line: 33, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1181, file: !30, line: 2087, baseType: !1301, size: 64, offset: 1536)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1181, file: !30, line: 2089, baseType: !768, size: 64, offset: 1600)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !736, file: !30, line: 1198, baseType: !1319, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !35, line: 324, size: 704, elements: !1322)
!1322 = !{!1323, !1327, !1331, !1335, !1336, !1337, !1338, !1339, !1344, !1349, !1353}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1321, file: !35, line: 325, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!105, !1256}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1321, file: !35, line: 326, baseType: !1328, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1256, !735, !105}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1321, file: !35, line: 327, baseType: !1332, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !1256}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1321, file: !35, line: 328, baseType: !1324, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1321, file: !35, line: 329, baseType: !1324, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1321, file: !35, line: 330, baseType: !1324, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1321, file: !35, line: 331, baseType: !1209, size: 64, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1321, file: !35, line: 334, baseType: !1340, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!1343, !586}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1321, file: !35, line: 335, baseType: !1345, size: 64, offset: 512)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!105, !586, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1321, file: !35, line: 337, baseType: !1350, size: 64, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!105, !586, !1343}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1321, file: !35, line: 339, baseType: !1354, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!105, !735, !1357}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !736, file: !30, line: 1199, baseType: !1359, size: 64, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !35, line: 430, size: 704, elements: !1362)
!1362 = !{!1363, !1374, !1375, !1379, !1380, !1381, !1396, !1419, !1423, !1424, !1447}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1361, file: !35, line: 431, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!105, !735, !105, !105, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1369)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1370, line: 8, size: 128, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1369, file: !1370, line: 9, baseType: !729, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1369, file: !1370, line: 10, baseType: !621, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1361, file: !35, line: 432, baseType: !1209, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1361, file: !35, line: 433, baseType: !1376, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!105, !735, !23}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1361, file: !35, line: 434, baseType: !1376, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1361, file: !35, line: 435, baseType: !1209, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1361, file: !35, line: 436, baseType: !1382, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!105, !735, !105, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !35, line: 417, size: 256, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1386, file: !35, line: 418, baseType: !105, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1386, file: !35, line: 419, baseType: !23, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1386, file: !35, line: 420, baseType: !23, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1386, file: !35, line: 422, baseType: !23, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1386, file: !35, line: 423, baseType: !23, size: 32, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1386, file: !35, line: 424, baseType: !23, size: 32, offset: 160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1386, file: !35, line: 425, baseType: !23, size: 32, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1386, file: !35, line: 426, baseType: !23, size: 32, offset: 224)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1361, file: !35, line: 437, baseType: !1397, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!105, !735, !1268, !1400}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !35, line: 345, size: 960, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1401, file: !35, line: 346, baseType: !105, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1401, file: !35, line: 347, baseType: !657, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1401, file: !35, line: 348, baseType: !657, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1401, file: !35, line: 349, baseType: !657, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1401, file: !35, line: 350, baseType: !657, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1401, file: !35, line: 351, baseType: !657, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1401, file: !35, line: 352, baseType: !657, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1401, file: !35, line: 353, baseType: !330, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1401, file: !35, line: 355, baseType: !330, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1401, file: !35, line: 356, baseType: !105, size: 32, offset: 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1401, file: !35, line: 357, baseType: !105, size: 32, offset: 608)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1401, file: !35, line: 358, baseType: !657, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1401, file: !35, line: 359, baseType: !657, size: 64, offset: 704)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1401, file: !35, line: 360, baseType: !657, size: 64, offset: 768)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1401, file: !35, line: 361, baseType: !330, size: 64, offset: 832)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1401, file: !35, line: 362, baseType: !105, size: 32, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1361, file: !35, line: 438, baseType: !1420, size: 64, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!105, !735, !1357, !1400}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1361, file: !35, line: 440, baseType: !1397, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1361, file: !35, line: 441, baseType: !1425, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!105, !735, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !35, line: 411, size: 1408, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1429, file: !35, line: 412, baseType: !23, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1429, file: !35, line: 413, baseType: !1433, size: 1344, offset: 64)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1434, size: 1344, elements: !15)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !35, line: 397, size: 448, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1446}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1434, file: !35, line: 398, baseType: !23, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1434, file: !35, line: 399, baseType: !23, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1434, file: !35, line: 401, baseType: !23, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1434, file: !35, line: 402, baseType: !23, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1434, file: !35, line: 403, baseType: !23, size: 32, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1434, file: !35, line: 404, baseType: !23, size: 32, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1434, file: !35, line: 405, baseType: !23, size: 32, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1434, file: !35, line: 406, baseType: !659, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1434, file: !35, line: 407, baseType: !1445, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !287, line: 132, baseType: !657)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1434, file: !35, line: 408, baseType: !1445, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1361, file: !35, line: 442, baseType: !1376, size: 64, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !736, file: !30, line: 1200, baseType: !1449, size: 64, offset: 576)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !30, line: 54, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !736, file: !30, line: 1201, baseType: !315, size: 64, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !736, file: !30, line: 1202, baseType: !315, size: 64, offset: 704)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !736, file: !30, line: 1203, baseType: !315, size: 64, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !736, file: !30, line: 1204, baseType: !621, size: 64, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !736, file: !30, line: 1205, baseType: !1457, size: 320, offset: 896)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1458, line: 48, size: 320, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1459 = !{!1460, !1461, !1462, !1463, !1464}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1457, file: !1458, line: 49, baseType: !324, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1457, file: !1458, line: 55, baseType: !324, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1457, file: !1458, line: 57, baseType: !848, size: 32, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1457, file: !1458, line: 59, baseType: !400, size: 32, offset: 160)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1457, file: !1458, line: 60, baseType: !309, size: 128, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !736, file: !30, line: 1206, baseType: !105, size: 32, offset: 1216)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !736, file: !30, line: 1207, baseType: !286, size: 32, offset: 1248)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !736, file: !30, line: 1209, baseType: !235, size: 64, offset: 1280)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !736, file: !30, line: 1211, baseType: !1469, size: 64, offset: 1344)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !30, line: 1211, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !736, file: !30, line: 1223, baseType: !1474, size: 64, offset: 1408)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !638, line: 34, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1474, file: !638, line: 35, baseType: !641, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !736, file: !30, line: 1224, baseType: !309, size: 128, offset: 1472)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !736, file: !30, line: 1225, baseType: !1479, size: 64, offset: 1600)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1481, line: 40, size: 7424, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!1482 = !{!1483, !1485, !1486, !2676, !2677, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2720, !2721}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !1480, file: !1481, line: 41, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !287, line: 131, baseType: !657)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !1480, file: !1481, line: 42, baseType: !1484, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1480, file: !1481, line: 43, baseType: !1487, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !73, line: 128, size: 4544, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1495, !1496, !1497, !1504, !1505, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2642, !2643, !2644, !2645, !2648, !2649, !2652, !2655, !2656, !2659, !2660, !2661, !2662}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1488, file: !73, line: 133, baseType: !105, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1488, file: !73, line: 134, baseType: !105, size: 32, offset: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1488, file: !73, line: 135, baseType: !105, size: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1488, file: !73, line: 137, baseType: !1494, size: 256, offset: 96)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !666)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1488, file: !73, line: 139, baseType: !306, size: 16, offset: 352)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1488, file: !73, line: 140, baseType: !306, size: 16, offset: 368)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1488, file: !73, line: 142, baseType: !1498, size: 128, offset: 384)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1499, line: 296, size: 128, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1498, file: !1499, line: 297, baseType: !266, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1498, file: !1499, line: 299, baseType: !1309, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1498, file: !1499, line: 300, baseType: !235, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1488, file: !73, line: 143, baseType: !1479, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1488, file: !73, line: 145, baseType: !1506, size: 64, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !73, line: 1388, size: 1152, elements: !1509)
!1509 = !{!1510, !2548, !2552, !2557, !2561, !2565, !2566, !2570, !2571, !2577, !2581, !2582, !2586, !2612, !2617, !2622, !2623, !2627}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1508, file: !73, line: 1389, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1481, line: 265, size: 960, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1521, !1522, !1523, !1525, !1526, !1534, !1536, !1539, !1540, !1543, !1547, !1548, !1550, !1551, !1552, !1553, !2501, !2546}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1515, file: !1481, line: 266, baseType: !1514, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !1515, file: !1481, line: 267, baseType: !1479, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1515, file: !1481, line: 268, baseType: !1520, size: 32, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !1481, line: 256, baseType: !359)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1515, file: !1481, line: 271, baseType: !306, size: 16, offset: 160)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1515, file: !1481, line: 272, baseType: !306, size: 16, offset: 176)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1515, file: !1481, line: 273, baseType: !1524, size: 8, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1481, line: 97, baseType: !295)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1515, file: !1481, line: 274, baseType: !286, size: 32, offset: 224)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1515, file: !1481, line: 276, baseType: !1527, size: 160, align: 32, offset: 256)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1528, line: 77, size: 160, align: 32, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1527, file: !1528, line: 78, baseType: !1484, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1527, file: !1528, line: 80, baseType: !23, size: 32, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1527, file: !1528, line: 82, baseType: !23, size: 32, offset: 96)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1527, file: !1528, line: 84, baseType: !23, size: 32, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !1515, file: !1481, line: 278, baseType: !1535, size: 32, offset: 416)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1481, line: 258, baseType: !23)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1515, file: !1481, line: 279, baseType: !1537, size: 64, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1481, line: 20, baseType: !1512)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1515, file: !1481, line: 280, baseType: !235, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !1515, file: !1481, line: 288, baseType: !1541, size: 64, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !1481, line: 288, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !1515, file: !1481, line: 289, baseType: !1544, size: 64, offset: 640)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !1481, line: 228, size: 64, elements: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1544, file: !1481, line: 229, baseType: !657, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !1515, file: !1481, line: 291, baseType: !657, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1481, line: 299, baseType: !1549, offset: 768)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1515, file: !1481, line: 299, elements: !1092)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1515, file: !1481, line: 305, baseType: !306, size: 16, offset: 768)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1515, file: !1481, line: 311, baseType: !306, size: 16, offset: 784)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1515, file: !1481, line: 313, baseType: !286, size: 32, offset: 800)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1515, file: !1481, line: 315, baseType: !1554, size: 64, offset: 832)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1528, line: 31, size: 128, elements: !1556)
!1556 = !{!1557, !2499, !2500}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1555, file: !1528, line: 32, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !57, line: 74, size: 512, align: 128, elements: !1560)
!1560 = !{!1561, !1562, !2493, !2498}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1559, file: !57, line: 75, baseType: !315, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !57, line: 83, baseType: !1563, size: 320, offset: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !57, line: 83, size: 320, elements: !1564)
!1564 = !{!1565, !1586, !1600, !1604, !2492}
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !57, line: 84, baseType: !1566, size: 320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !57, line: 84, size: 320, elements: !1567)
!1567 = !{!1568, !1579, !1580, !1585}
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !57, line: 90, baseType: !1569, size: 128)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !57, line: 90, size: 128, elements: !1570)
!1570 = !{!1571, !1572, !1577, !1578}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1569, file: !57, line: 91, baseType: !309, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !57, line: 94, baseType: !1573, size: 128)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !57, line: 94, size: 128, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1573, file: !57, line: 96, baseType: !235, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1573, file: !57, line: 98, baseType: !23, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1569, file: !57, line: 102, baseType: !309, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1569, file: !57, line: 103, baseType: !309, size: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1566, file: !57, line: 106, baseType: !582, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !57, line: 107, baseType: !1581, size: 64, offset: 192)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !57, line: 107, size: 64, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1581, file: !57, line: 108, baseType: !315, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1581, file: !57, line: 109, baseType: !315, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1566, file: !57, line: 117, baseType: !315, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !57, line: 119, baseType: !1587, size: 320)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !57, line: 119, size: 320, elements: !1588)
!1588 = !{!1589, !1590, !1593, !1594, !1595}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1587, file: !57, line: 124, baseType: !315, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1587, file: !57, line: 125, baseType: !1591, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !57, line: 125, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1587, file: !57, line: 126, baseType: !315, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1587, file: !57, line: 127, baseType: !315, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !57, line: 128, baseType: !1596, size: 64, offset: 256)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !57, line: 128, size: 64, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1596, file: !57, line: 133, baseType: !315, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1596, file: !57, line: 138, baseType: !324, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !57, line: 141, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !57, line: 141, size: 64, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1601, file: !57, line: 142, baseType: !315, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !57, line: 144, baseType: !1605, size: 128)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !57, line: 144, size: 128, elements: !1606)
!1606 = !{!1607, !2491}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1605, file: !57, line: 146, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !41, line: 126, size: 1216, elements: !1610)
!1610 = !{!1611, !1621, !1642, !1643, !1644, !1645, !1646, !2473, !2474, !2475}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1609, file: !41, line: 127, baseType: !1612, size: 384)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !41, line: 21, size: 384, elements: !1613)
!1613 = !{!1614, !1615, !1617, !1618, !1619, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1612, file: !41, line: 22, baseType: !315, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1612, file: !41, line: 23, baseType: !1616, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1612, file: !41, line: 24, baseType: !1616, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1612, file: !41, line: 25, baseType: !315, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1612, file: !41, line: 26, baseType: !315, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1612, file: !41, line: 27, baseType: !315, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1609, file: !41, line: 128, baseType: !1622, size: 128, offset: 384)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1623, line: 105, size: 128, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1622, file: !1623, line: 110, baseType: !315, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1622, file: !1623, line: 118, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1623, line: 95, size: 448, elements: !1629)
!1629 = !{!1630, !1631, !1637, !1638, !1639, !1640, !1641}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1628, file: !1623, line: 96, baseType: !324, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1628, file: !1623, line: 97, baseType: !1632, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1623, line: 60, baseType: !1634)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1628, file: !1623, line: 98, baseType: !1632, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1628, file: !1623, line: 99, baseType: !391, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1628, file: !1623, line: 100, baseType: !391, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1628, file: !1623, line: 101, baseType: !1051, size: 128, align: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1628, file: !1623, line: 102, baseType: !1636, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1609, file: !41, line: 129, baseType: !792, size: 256, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1609, file: !41, line: 130, baseType: !40, size: 32, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1609, file: !41, line: 131, baseType: !23, size: 32, offset: 800)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1609, file: !41, line: 132, baseType: !315, size: 64, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1609, file: !41, line: 133, baseType: !1647, size: 64, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !41, line: 77, size: 192, elements: !1650)
!1650 = !{!1651, !1655, !2469}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1649, file: !41, line: 83, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1558}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1649, file: !41, line: 89, baseType: !1656, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !57, line: 1184, baseType: !23)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1662, line: 512, size: 896, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1663 = !{!1664, !2436, !2437, !2444, !2451, !2461, !2462, !2463, !2465, !2467}
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !1662, line: 513, baseType: !1665, size: 320)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !1662, line: 513, size: 320, elements: !1666)
!1666 = !{!1667, !2432, !2433, !2434, !2435}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1665, file: !1662, line: 514, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !57, line: 625, size: 1344, elements: !1670)
!1670 = !{!1671, !1680, !2337, !2343, !2350, !2351, !2356, !2357, !2362, !2363, !2366, !2425, !2426, !2427, !2428, !2429, !2430}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !57, line: 628, baseType: !1672, size: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !57, line: 628, size: 128, elements: !1673)
!1673 = !{!1674, !1679}
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !57, line: 629, baseType: !1675, size: 128)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !57, line: 629, size: 128, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1675, file: !57, line: 631, baseType: !315, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1675, file: !57, line: 632, baseType: !315, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1672, file: !57, line: 635, baseType: !1051, size: 128, align: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1669, file: !57, line: 639, baseType: !1681, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !57, line: 733, size: 10240, elements: !1683)
!1683 = !{!1684, !2335}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !57, line: 734, baseType: !1685, size: 10240)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !57, line: 734, size: 10240, elements: !1686)
!1686 = !{!1687, !1691, !1704, !2210, !2211, !2212, !2213, !2214, !2215, !2224, !2225, !2226, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2265, !2267, !2270, !2315, !2316, !2317, !2320, !2321, !2322, !2325, !2326, !2327, !2333, !2334}
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !57, line: 739, baseType: !1688, size: 512, align: 512)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1685, file: !57, line: 739, size: 512, align: 512, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1688, file: !57, line: 747, baseType: !286, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1685, file: !57, line: 750, baseType: !1692, size: 128, offset: 512)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1693, line: 218, size: 128, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1694 = !{!1695, !1702, !1703}
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !1693, line: 219, baseType: !1696, size: 32)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1692, file: !1693, line: 219, size: 32, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1696, file: !1693, line: 220, baseType: !266, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1696, file: !1693, line: 221, baseType: !1700)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1693, line: 197, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1693, line: 197, elements: !1092)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1692, file: !1693, line: 223, baseType: !23, size: 32, offset: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1692, file: !1693, line: 224, baseType: !235, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1685, file: !57, line: 752, baseType: !1705, size: 64, offset: 640)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!315, !1708, !315, !315, !315, !315}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !30, line: 994, size: 1856, align: 64, elements: !1710)
!1710 = !{!1711, !1722, !1723, !1725, !1726, !1727, !1728, !1729, !1784, !1971, !1980, !1981, !1982, !2200, !2201, !2202, !2203, !2205, !2206, !2209}
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !30, line: 995, baseType: !1712, size: 128)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !30, line: 995, size: 128, elements: !1713)
!1713 = !{!1714, !1720, !1721}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1712, file: !30, line: 996, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1716, line: 60, size: 64, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1715, file: !1716, line: 61, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1712, file: !30, line: 997, baseType: !1051, size: 128, align: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1712, file: !30, line: 998, baseType: !23, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1709, file: !30, line: 1005, baseType: !266, size: 32, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1709, file: !30, line: 1006, baseType: !1724, size: 32, offset: 160)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !287, line: 156, baseType: !23)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1709, file: !30, line: 1007, baseType: !324, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1709, file: !30, line: 1008, baseType: !842, size: 256, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1709, file: !30, line: 1009, baseType: !745, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1709, file: !30, line: 1010, baseType: !23, size: 32, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1709, file: !30, line: 1011, baseType: !1730, size: 256, offset: 640)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !30, line: 948, size: 256, elements: !1731)
!1731 = !{!1732, !1753, !1780, !1781, !1782, !1783}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1730, file: !30, line: 949, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1734, line: 34, baseType: !1735)
!1734 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1734, line: 25, size: 64, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1735, file: !1734, line: 26, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1739, line: 27, baseType: !1740)
!1739 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1739, line: 13, size: 64, elements: !1741)
!1741 = !{!1742, !1752}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !1739, line: 14, baseType: !1743, size: 32)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1740, file: !1739, line: 14, size: 32, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1743, file: !1739, line: 15, baseType: !286, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !1739, line: 16, baseType: !1747, size: 32)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !1739, line: 16, size: 32, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1747, file: !1739, line: 18, baseType: !295, size: 8)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1747, file: !1739, line: 19, baseType: !1751, size: 24, offset: 8)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 24, elements: !15)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1740, file: !1739, line: 26, baseType: !278, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1730, file: !30, line: 950, baseType: !1754, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !49, line: 59, size: 768, elements: !1756)
!1756 = !{!1757, !1763, !1764, !1765, !1767, !1768, !1769, !1770}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1755, file: !49, line: 61, baseType: !1758, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1759, line: 113, baseType: !1760)
!1759 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1759, line: 111, size: 32, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1760, file: !1759, line: 112, baseType: !286, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1755, file: !49, line: 62, baseType: !23, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1755, file: !49, line: 63, baseType: !266, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1755, file: !49, line: 65, baseType: !1766, size: 256, offset: 128)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 256, elements: !1061)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1755, file: !49, line: 66, baseType: !1165, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1755, file: !49, line: 68, baseType: !443, size: 192, offset: 448)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1755, file: !49, line: 69, baseType: !1051, size: 128, align: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1755, file: !49, line: 70, baseType: !1771, offset: 768)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, elements: !1778)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !49, line: 54, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1772, file: !49, line: 55, baseType: !105, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1772, file: !49, line: 56, baseType: !1776, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !49, line: 56, flags: DIFlagFwdDecl)
!1778 = !{!1779}
!1779 = !DISubrange(count: -1)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1730, file: !30, line: 951, baseType: !48, size: 32, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1730, file: !30, line: 952, baseType: !592, size: 32, offset: 160)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1730, file: !30, line: 952, baseType: !592, size: 32, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1730, file: !30, line: 953, baseType: !105, size: 32, offset: 224)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1709, file: !30, line: 1012, baseType: !1785, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1788, line: 110, size: 1472, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1806, !1807, !1808, !1809, !1810, !1811, !1916, !1917, !1918, !1919, !1920, !1951, !1954, !1958, !1966}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1787, file: !1788, line: 111, baseType: !324, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1787, file: !1788, line: 112, baseType: !592, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1787, file: !1788, line: 113, baseType: !601, size: 32, offset: 96)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1787, file: !1788, line: 114, baseType: !592, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1787, file: !1788, line: 115, baseType: !601, size: 32, offset: 160)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1787, file: !1788, line: 116, baseType: !592, size: 32, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1787, file: !1788, line: 117, baseType: !601, size: 32, offset: 224)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1787, file: !1788, line: 118, baseType: !592, size: 32, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1787, file: !1788, line: 119, baseType: !601, size: 32, offset: 288)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1787, file: !1788, line: 120, baseType: !23, size: 32, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1787, file: !1788, line: 121, baseType: !1801, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1802, line: 24, baseType: !1803)
!1802 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1802, line: 24, size: 64, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1803, file: !1802, line: 24, baseType: !657, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1787, file: !1788, line: 122, baseType: !1801, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1787, file: !1788, line: 123, baseType: !1801, size: 64, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1787, file: !1788, line: 124, baseType: !1801, size: 64, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1787, file: !1788, line: 125, baseType: !1801, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1787, file: !1788, line: 127, baseType: !207, size: 8, offset: 704)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1787, file: !1788, line: 129, baseType: !1812, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1814, line: 195, size: 1728, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1815 = !{!1816, !1817, !1820, !1825, !1826, !1829, !1830, !1835, !1836, !1837, !1838, !1841, !1842, !1843, !1844, !1845, !1880, !1901}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1813, file: !1814, line: 196, baseType: !1758, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1813, file: !1814, line: 197, baseType: !1818, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1814, line: 28, baseType: !1819)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !287, line: 104, baseType: !838)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 198, baseType: !1821, size: 192, offset: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 198, size: 192, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1821, file: !1814, line: 199, baseType: !309, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1821, file: !1814, line: 200, baseType: !943, size: 192, align: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1813, file: !1814, line: 205, baseType: !1457, size: 320, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1813, file: !1814, line: 206, baseType: !1827, size: 64, offset: 576)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1814, line: 206, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1813, file: !1814, line: 207, baseType: !235, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 208, baseType: !1831, size: 64, offset: 704)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 208, size: 64, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1831, file: !1814, line: 209, baseType: !1297, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1831, file: !1814, line: 210, baseType: !1297, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1813, file: !1814, line: 212, baseType: !1297, size: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1813, file: !1814, line: 213, baseType: !592, size: 32, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1813, file: !1814, line: 214, baseType: !601, size: 32, offset: 864)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1813, file: !1814, line: 215, baseType: !1839, size: 32, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1814, line: 31, baseType: !1840)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !287, line: 110, baseType: !358)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1813, file: !1814, line: 216, baseType: !306, size: 16, offset: 928)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1813, file: !1814, line: 217, baseType: !306, size: 16, offset: 944)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1813, file: !1814, line: 221, baseType: !969, size: 16, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1813, file: !1814, line: 228, baseType: !315, size: 64, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 245, baseType: !1846, size: 320, offset: 1088)
!1846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 245, size: 320, elements: !1847)
!1847 = !{!1848, !1872}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1846, file: !1814, line: 246, baseType: !1849, size: 320)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1814, line: 114, size: 320, elements: !1850)
!1850 = !{!1851, !1852, !1861, !1864, !1871}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1849, file: !1814, line: 116, baseType: !315, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1814, line: 117, baseType: !1853, size: 64, offset: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1814, line: 117, size: 64, elements: !1854)
!1854 = !{!1855, !1860}
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1814, line: 118, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1814, line: 118, size: 64, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1856, file: !1814, line: 120, baseType: !304, size: 16)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1856, file: !1814, line: 121, baseType: !3, size: 48, offset: 16)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1853, file: !1814, line: 127, baseType: !315, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1849, file: !1814, line: 129, baseType: !1862, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1814, line: 102, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1849, file: !1814, line: 130, baseType: !1865, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1814, line: 108, size: 192, elements: !1867)
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1866, file: !1814, line: 109, baseType: !1051, size: 128, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1866, file: !1814, line: 110, baseType: !1758, size: 32, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1866, file: !1814, line: 111, baseType: !391, size: 8, offset: 160)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1849, file: !1814, line: 131, baseType: !470, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1814, line: 247, baseType: !1873, size: 320)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1814, line: 247, size: 320, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1873, file: !1814, line: 248, baseType: !315, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1873, file: !1814, line: 249, baseType: !315, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1873, file: !1814, line: 250, baseType: !1862, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1873, file: !1814, line: 251, baseType: !1865, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1873, file: !1814, line: 252, baseType: !509, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 260, baseType: !1881, size: 256, offset: 1408)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 260, size: 256, elements: !1882)
!1882 = !{!1883, !1889}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1881, file: !1814, line: 261, baseType: !1884, size: 256)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1814, line: 134, size: 256, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1884, file: !1814, line: 135, baseType: !235, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1884, file: !1814, line: 136, baseType: !1888, size: 256)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !1061)
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1814, line: 262, baseType: !1890, size: 256)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1814, line: 262, size: 256, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1890, file: !1814, line: 264, baseType: !309, size: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1890, file: !1814, line: 265, baseType: !1894, size: 128, offset: 128)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1895, line: 22, size: 128, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1896 = !{!1897, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1894, file: !1895, line: 23, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1895, line: 23, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1894, file: !1895, line: 24, baseType: !315, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1813, file: !1814, line: 280, baseType: !1902, size: 64, offset: 1664)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1814, line: 176, size: 192, elements: !1904)
!1904 = !{!1905, !1914, !1915}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1903, file: !1814, line: 177, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1814, line: 171, baseType: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!105, !1812, !1910, !1912, !1812}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1863)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1903, file: !1814, line: 178, baseType: !1812, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1903, file: !1814, line: 179, baseType: !1862, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1787, file: !1788, line: 130, baseType: !1812, size: 64, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1787, file: !1788, line: 131, baseType: !1812, size: 64, offset: 896)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1787, file: !1788, line: 132, baseType: !1812, size: 64, offset: 960)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1787, file: !1788, line: 135, baseType: !235, size: 64, offset: 1024)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1787, file: !1788, line: 137, baseType: !1921, size: 64, offset: 1088)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1923, line: 14, size: 1088, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1924 = !{!1925, !1926, !1935, !1936, !1937, !1938, !1939, !1940}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1922, file: !1923, line: 15, baseType: !1758, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1922, file: !1923, line: 17, baseType: !1927, size: 320, offset: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1928, line: 22, size: 320, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1929 = !{!1930, !1931, !1932, !1933}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1927, file: !1928, line: 23, baseType: !400, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1927, file: !1928, line: 24, baseType: !330, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1927, file: !1928, line: 26, baseType: !309, size: 128, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1927, file: !1928, line: 28, baseType: !1934, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1922, file: !1923, line: 19, baseType: !315, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1922, file: !1923, line: 20, baseType: !324, size: 64, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1922, file: !1923, line: 23, baseType: !345, size: 128, offset: 512)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1922, file: !1923, line: 24, baseType: !592, size: 32, offset: 640)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1922, file: !1923, line: 29, baseType: !324, size: 64, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1922, file: !1923, line: 36, baseType: !1941, size: 320, offset: 768)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1942, line: 15, size: 320, elements: !1943)
!1942 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1941, file: !1942, line: 16, baseType: !400, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1941, file: !1942, line: 18, baseType: !105, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1941, file: !1942, line: 19, baseType: !105, size: 32, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1941, file: !1942, line: 20, baseType: !105, size: 32, offset: 96)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1941, file: !1942, line: 21, baseType: !105, size: 32, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1941, file: !1942, line: 22, baseType: !315, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1941, file: !1942, line: 23, baseType: !315, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1787, file: !1788, line: 138, baseType: !1952, size: 64, offset: 1152)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !57, line: 901, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1787, file: !1788, line: 139, baseType: !1955, size: 64, offset: 1216)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1957, line: 16, flags: DIFlagFwdDecl)
!1957 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1787, file: !1788, line: 140, baseType: !1959, size: 64, offset: 1280)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1788, line: 25, size: 64, elements: !1961)
!1961 = !{!1962, !1963, !1964}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1960, file: !1788, line: 26, baseType: !286, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1960, file: !1788, line: 27, baseType: !105, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1960, file: !1788, line: 28, baseType: !1965, offset: 64)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, elements: !1778)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !1788, line: 142, baseType: !1967, size: 128, offset: 1344)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !1788, line: 142, size: 128, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1967, file: !1788, line: 143, baseType: !105, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1967, file: !1788, line: 144, baseType: !1051, size: 128, align: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1709, file: !30, line: 1013, baseType: !1972, size: 256, offset: 960)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !30, line: 970, size: 256, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1972, file: !30, line: 971, baseType: !315, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1972, file: !30, line: 972, baseType: !23, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1972, file: !30, line: 973, baseType: !23, size: 32, offset: 96)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1972, file: !30, line: 974, baseType: !23, size: 32, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1972, file: !30, line: 975, baseType: !23, size: 32, offset: 160)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1972, file: !30, line: 976, baseType: !745, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1709, file: !30, line: 1014, baseType: !1369, size: 128, offset: 1216)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1709, file: !30, line: 1015, baseType: !586, size: 64, offset: 1344)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1709, file: !30, line: 1016, baseType: !1983, size: 64, offset: 1408)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !30, line: 1914, size: 2112, elements: !1986)
!1986 = !{!1987, !1988, !1992, !1997, !2001, !2078, !2079, !2092, !2105, !2113, !2117, !2118, !2122, !2123, !2127, !2132, !2133, !2137, !2141, !2147, !2148, !2152, !2153, !2159, !2163, !2167, !2173, !2177, !2181, !2185, !2189, !2190, !2196}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1985, file: !30, line: 1915, baseType: !772, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1985, file: !30, line: 1916, baseType: !1989, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!745, !1708, !745, !105}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1985, file: !30, line: 1917, baseType: !1993, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!539, !1708, !509, !554, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1985, file: !30, line: 1918, baseType: !1998, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!539, !1708, !470, !554, !1996}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1985, file: !30, line: 1919, baseType: !2002, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!539, !2005, !2027}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !30, line: 373, size: 384, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2014, !2015, !2016, !2017}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2006, file: !30, line: 374, baseType: !1708, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2006, file: !30, line: 375, baseType: !745, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2006, file: !30, line: 376, baseType: !2011, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !2005, !543}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2006, file: !30, line: 377, baseType: !235, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2006, file: !30, line: 378, baseType: !105, size: 32, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2006, file: !30, line: 379, baseType: !304, size: 16, offset: 288)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !30, line: 380, baseType: !2018, size: 64, offset: 320)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !30, line: 380, size: 64, elements: !2019)
!2019 = !{!2020, !2023}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2018, file: !30, line: 386, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !30, line: 386, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2018, file: !30, line: 395, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!539, !235}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2029, line: 41, size: 320, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2030 = !{!2031, !2032, !2033, !2034, !2035, !2036, !2041, !2073}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2028, file: !2029, line: 42, baseType: !295, size: 8)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2028, file: !2029, line: 43, baseType: !391, size: 8, offset: 8)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2028, file: !2029, line: 44, baseType: !391, size: 8, offset: 16)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2028, file: !2029, line: 45, baseType: !391, size: 8, offset: 24)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2028, file: !2029, line: 46, baseType: !391, size: 8, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 47, baseType: !2037, size: 64, offset: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 47, size: 64, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2037, file: !2029, line: 48, baseType: !554, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2037, file: !2029, line: 49, baseType: !105, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 61, baseType: !2042, size: 128, offset: 128)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 61, size: 128, elements: !2043)
!2043 = !{!2044, !2050}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2042, file: !2029, line: 67, baseType: !2045, size: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2046, line: 17, size: 128, elements: !2047)
!2046 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2045, file: !2046, line: 19, baseType: !235, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2045, file: !2046, line: 20, baseType: !555, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !2029, line: 68, baseType: !2051, size: 128)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !2029, line: 68, size: 128, elements: !2052)
!2052 = !{!2053, !2072}
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2051, file: !2029, line: 69, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2051, file: !2029, line: 69, size: 64, elements: !2055)
!2055 = !{!2056, !2059, !2066, !2069, !2071}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2054, file: !2029, line: 71, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2054, file: !2029, line: 72, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2062)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2029, line: 17, size: 128, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2062, file: !2029, line: 18, baseType: !235, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2062, file: !2029, line: 19, baseType: !554, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2054, file: !2029, line: 73, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2054, file: !2029, line: 74, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2054, file: !2029, line: 75, baseType: !235, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2051, file: !2029, line: 77, baseType: !554, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 80, baseType: !2074, size: 64, offset: 256)
!2074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 80, size: 64, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2074, file: !2029, line: 81, baseType: !315, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2074, file: !2029, line: 82, baseType: !745, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1985, file: !30, line: 1920, baseType: !2002, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1985, file: !30, line: 1921, baseType: !2080, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!105, !2005, !2083, !23}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !73, line: 1559, size: 192, elements: !2085)
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2084, file: !73, line: 1560, baseType: !251, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2084, file: !73, line: 1561, baseType: !391, size: 8, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2084, file: !73, line: 1562, baseType: !2089, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !2083}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1985, file: !30, line: 1923, baseType: !2093, size: 64, offset: 448)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!105, !1708, !2096}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !30, line: 1858, size: 128, elements: !2098)
!2098 = !{!2099, !2104}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2097, file: !30, line: 1859, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !30, line: 1855, baseType: !2101)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!391, !2096, !470, !105, !745, !657, !23}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2097, file: !30, line: 1860, baseType: !745, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1985, file: !30, line: 1924, baseType: !2106, size: 64, offset: 512)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!2109, !1708, !2111}
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2110, line: 59, baseType: !23)
!2110 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !30, line: 61, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1985, file: !30, line: 1925, baseType: !2114, size: 64, offset: 576)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!543, !1708, !23, !315}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1985, file: !30, line: 1926, baseType: !2114, size: 64, offset: 640)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1985, file: !30, line: 1927, baseType: !2119, size: 64, offset: 704)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!105, !1708, !1668}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1985, file: !30, line: 1928, baseType: !315, size: 64, offset: 768)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1985, file: !30, line: 1929, baseType: !2124, size: 64, offset: 832)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!105, !586, !1708}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1985, file: !30, line: 1930, baseType: !2128, size: 64, offset: 896)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!105, !1708, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !30, line: 1061, baseType: !235)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1985, file: !30, line: 1931, baseType: !2124, size: 64, offset: 960)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1985, file: !30, line: 1932, baseType: !2134, size: 64, offset: 1024)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!105, !1708, !745, !745, !105}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1985, file: !30, line: 1933, baseType: !2138, size: 64, offset: 1088)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!105, !105, !1708, !105}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1985, file: !30, line: 1934, baseType: !2142, size: 64, offset: 1152)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!105, !1708, !105, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !30, line: 1063, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1985, file: !30, line: 1935, baseType: !1705, size: 64, offset: 1216)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1985, file: !30, line: 1936, baseType: !2149, size: 64, offset: 1280)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!105, !105}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1985, file: !30, line: 1937, baseType: !2142, size: 64, offset: 1344)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1985, file: !30, line: 1938, baseType: !2154, size: 64, offset: 1408)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!539, !2157, !1708, !1996, !554, !23}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1239, line: 59, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1985, file: !30, line: 1939, baseType: !2160, size: 64, offset: 1472)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!539, !1708, !1996, !2157, !554, !23}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1985, file: !30, line: 1940, baseType: !2164, size: 64, offset: 1536)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !1708}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1985, file: !30, line: 1941, baseType: !2168, size: 64, offset: 1600)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!105, !1708, !105, !2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1985, file: !30, line: 1942, baseType: !2174, size: 64, offset: 1664)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!543, !1708, !105, !745, !745}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1985, file: !30, line: 1944, baseType: !2178, size: 64, offset: 1728)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !1237, !1708}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1985, file: !30, line: 1948, baseType: !2182, size: 64, offset: 1792)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!539, !1708, !745, !1708, !745, !554, !23}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1985, file: !30, line: 1950, baseType: !2186, size: 64, offset: 1856)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!745, !1708, !745, !1708, !745, !745, !23}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1985, file: !30, line: 1953, baseType: !2134, size: 64, offset: 1920)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1985, file: !30, line: 1954, baseType: !2191, size: 64, offset: 1984)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!105, !2194, !23}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !30, line: 1911, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1985, file: !30, line: 1955, baseType: !2197, size: 64, offset: 2048)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!105, !2194, !2083, !23}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1709, file: !30, line: 1018, baseType: !657, size: 64, offset: 1472)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1709, file: !30, line: 1020, baseType: !235, size: 64, offset: 1536)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1709, file: !30, line: 1023, baseType: !235, size: 64, offset: 1600)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1709, file: !30, line: 1027, baseType: !2204, size: 64, offset: 1664)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1709, file: !30, line: 1029, baseType: !582, size: 64, offset: 1728)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1709, file: !30, line: 1030, baseType: !2207, size: 32, offset: 1792)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2208, line: 8, baseType: !358)
!2208 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1709, file: !30, line: 1031, baseType: !2207, size: 32, offset: 1824)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1685, file: !57, line: 756, baseType: !315, size: 64, offset: 704)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1685, file: !57, line: 757, baseType: !315, size: 64, offset: 768)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1685, file: !57, line: 760, baseType: !315, size: 64, offset: 832)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1685, file: !57, line: 761, baseType: !315, size: 64, offset: 896)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1685, file: !57, line: 763, baseType: !315, size: 64, offset: 960)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1685, file: !57, line: 764, baseType: !2216, size: 64, offset: 1024)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2218, line: 299, baseType: !2219)
!2218 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2218, line: 299, size: 64, elements: !2220)
!2220 = !{!2221}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2219, file: !2218, line: 299, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2223, line: 18, baseType: !315)
!2223 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1685, file: !57, line: 773, baseType: !286, size: 32, offset: 1088)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1685, file: !57, line: 785, baseType: !286, size: 32, offset: 1120)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1685, file: !57, line: 795, baseType: !2227, size: 64, offset: 1152)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !57, line: 726, size: 128, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2228, file: !57, line: 727, baseType: !657, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2228, file: !57, line: 728, baseType: !105, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1685, file: !57, line: 801, baseType: !315, size: 64, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1685, file: !57, line: 804, baseType: !324, size: 64, offset: 1280)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1685, file: !57, line: 806, baseType: !105, size: 32, offset: 1344)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1685, file: !57, line: 808, baseType: !266, size: 32, offset: 1376)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1685, file: !57, line: 823, baseType: !1457, size: 320, offset: 1408)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1685, file: !57, line: 825, baseType: !309, size: 128, offset: 1728)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1685, file: !57, line: 845, baseType: !105, size: 32, offset: 1856)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1685, file: !57, line: 849, baseType: !315, size: 64, offset: 1920)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1685, file: !57, line: 850, baseType: !315, size: 64, offset: 1984)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1685, file: !57, line: 852, baseType: !315, size: 64, offset: 2048)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1685, file: !57, line: 853, baseType: !315, size: 64, offset: 2112)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1685, file: !57, line: 854, baseType: !326, size: 64, offset: 2176)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1685, file: !57, line: 855, baseType: !315, size: 64, offset: 2240)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1685, file: !57, line: 856, baseType: !315, size: 64, offset: 2304)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1685, file: !57, line: 857, baseType: !315, size: 64, offset: 2368)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1685, file: !57, line: 858, baseType: !315, size: 64, offset: 2432)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1685, file: !57, line: 865, baseType: !632, size: 32, offset: 2496)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1685, file: !57, line: 867, baseType: !266, size: 32, offset: 2528)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1685, file: !57, line: 869, baseType: !315, size: 64, offset: 2560)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1685, file: !57, line: 869, baseType: !315, size: 64, offset: 2624)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1685, file: !57, line: 869, baseType: !315, size: 64, offset: 2688)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1685, file: !57, line: 869, baseType: !315, size: 64, offset: 2752)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1685, file: !57, line: 870, baseType: !315, size: 64, offset: 2816)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1685, file: !57, line: 870, baseType: !315, size: 64, offset: 2880)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1685, file: !57, line: 870, baseType: !315, size: 64, offset: 2944)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1685, file: !57, line: 871, baseType: !315, size: 64, offset: 3008)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1685, file: !57, line: 871, baseType: !315, size: 64, offset: 3072)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1685, file: !57, line: 871, baseType: !315, size: 64, offset: 3136)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1685, file: !57, line: 871, baseType: !315, size: 64, offset: 3200)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1685, file: !57, line: 873, baseType: !2262, size: 3328, offset: 3264)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 3328, elements: !2263)
!2263 = !{!2264}
!2264 = !DISubrange(count: 52)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1685, file: !57, line: 875, baseType: !2266, size: 1280, offset: 6592)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1927, size: 1280, elements: !1061)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1685, file: !57, line: 877, baseType: !2268, size: 64, offset: 7872)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !57, line: 877, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1685, file: !57, line: 880, baseType: !2271, size: 1088, offset: 7936)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2272, line: 72, baseType: !2273)
!2272 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2272, line: 23, size: 1088, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2282, !2283, !2284, !2285, !2312, !2313, !2314}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2273, file: !2272, line: 28, baseType: !657, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2273, file: !2272, line: 38, baseType: !326, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2273, file: !2272, line: 40, baseType: !315, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2273, file: !2272, line: 43, baseType: !1457, size: 320, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2273, file: !2272, line: 44, baseType: !2280, size: 64, offset: 512)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2272, line: 44, flags: DIFlagFwdDecl)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !2272, line: 48, baseType: !315, size: 64, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2273, file: !2272, line: 59, baseType: !842, size: 256, offset: 640)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2273, file: !2272, line: 60, baseType: !235, size: 64, offset: 896)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2273, file: !2272, line: 61, baseType: !2286, size: 64, offset: 960)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2288)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2289, line: 13, size: 1216, elements: !2290)
!2289 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2288, file: !2289, line: 14, baseType: !235, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2288, file: !2289, line: 15, baseType: !315, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2288, file: !2289, line: 17, baseType: !315, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2288, file: !2289, line: 17, baseType: !315, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2288, file: !2289, line: 18, baseType: !315, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2288, file: !2289, line: 18, baseType: !315, size: 64, offset: 320)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2288, file: !2289, line: 19, baseType: !2298, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2288, file: !2289, line: 21, baseType: !543, size: 64, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2288, file: !2289, line: 23, baseType: !543, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2288, file: !2289, line: 24, baseType: !543, size: 64, offset: 576)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2288, file: !2289, line: 25, baseType: !543, size: 64, offset: 640)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2288, file: !2289, line: 26, baseType: !543, size: 64, offset: 704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2288, file: !2289, line: 27, baseType: !543, size: 64, offset: 768)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2288, file: !2289, line: 28, baseType: !543, size: 64, offset: 832)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2288, file: !2289, line: 29, baseType: !543, size: 64, offset: 896)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2288, file: !2289, line: 30, baseType: !543, size: 64, offset: 960)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2288, file: !2289, line: 31, baseType: !543, size: 64, offset: 1024)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2288, file: !2289, line: 32, baseType: !543, size: 64, offset: 1088)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2288, file: !2289, line: 33, baseType: !543, size: 64, offset: 1152)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2273, file: !2272, line: 63, baseType: !286, size: 32, offset: 1024)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2273, file: !2272, line: 69, baseType: !304, size: 16, offset: 1056)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2273, file: !2272, line: 70, baseType: !967, size: 16, offset: 1072)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1685, file: !57, line: 882, baseType: !315, size: 64, offset: 9024)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1685, file: !57, line: 885, baseType: !266, size: 32, offset: 9088)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1685, file: !57, line: 886, baseType: !2318, size: 64, offset: 9152)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !57, line: 732, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1685, file: !57, line: 901, baseType: !1952, size: 64, offset: 9216)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1685, file: !57, line: 904, baseType: !1708, size: 64, offset: 9280)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1685, file: !57, line: 906, baseType: !2323, size: 64, offset: 9344)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !57, line: 906, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1685, file: !57, line: 930, baseType: !286, size: 32, offset: 9408)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1685, file: !57, line: 933, baseType: !286, size: 32, offset: 9440)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1685, file: !57, line: 935, baseType: !2328, size: 64, offset: 9472)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !150, line: 103, size: 64, elements: !2329)
!2329 = !{!2330}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2328, file: !150, line: 104, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !150, line: 101, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1685, file: !57, line: 940, baseType: !324, size: 64, offset: 9536)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1685, file: !57, line: 942, baseType: !321, size: 256, offset: 9600)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1682, file: !57, line: 986, baseType: !2336, offset: 10240)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, elements: !1778)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1669, file: !57, line: 640, baseType: !2338, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2218, line: 297, baseType: !2339)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2218, line: 297, size: 64, elements: !2340)
!2340 = !{!2341}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2339, file: !2218, line: 297, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2223, line: 19, baseType: !315)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !57, line: 646, baseType: !2344, size: 64, offset: 256)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !57, line: 646, size: 64, elements: !2345)
!2345 = !{!2346, !2349}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2344, file: !57, line: 647, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2348)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !57, line: 542, baseType: !315)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2344, file: !57, line: 648, baseType: !2348, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1669, file: !57, line: 666, baseType: !105, size: 32, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1669, file: !57, line: 667, baseType: !2352, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !57, line: 579, size: 320, elements: !2354)
!2354 = !{!2355}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2353, file: !57, line: 580, baseType: !1457, size: 320)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1669, file: !57, line: 670, baseType: !391, size: 8, offset: 448)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1669, file: !57, line: 681, baseType: !2358, size: 256, offset: 512)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !57, line: 678, size: 256, elements: !2359)
!2359 = !{!2360, !2361}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2358, file: !57, line: 679, baseType: !943, size: 192, align: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2358, file: !57, line: 680, baseType: !315, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1669, file: !57, line: 689, baseType: !309, size: 128, offset: 768)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1669, file: !57, line: 691, baseType: !2364, size: 64, offset: 896)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !57, line: 691, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1669, file: !57, line: 694, baseType: !2367, size: 64, offset: 960)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2369)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1662, line: 563, size: 1024, elements: !2370)
!2370 = !{!2371, !2375, !2376, !2380, !2384, !2388, !2389, !2393, !2397, !2401, !2402, !2403, !2407, !2411, !2417, !2421}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2369, file: !1662, line: 564, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !1668}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2369, file: !1662, line: 569, baseType: !2372, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2369, file: !1662, line: 571, baseType: !2377, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!105, !1668, !315}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2369, file: !1662, line: 572, baseType: !2381, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!105, !1668}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2369, file: !1662, line: 578, baseType: !2385, size: 64, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!105, !1668, !315, !315, !315}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2369, file: !1662, line: 580, baseType: !1656, size: 64, offset: 320)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2369, file: !1662, line: 581, baseType: !2390, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!1659, !1660, !23}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2369, file: !1662, line: 582, baseType: !2394, size: 64, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!1659, !1660, !315, !315}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2369, file: !1662, line: 584, baseType: !2398, size: 64, offset: 512)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!315, !1668}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2369, file: !1662, line: 588, baseType: !1656, size: 64, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2369, file: !1662, line: 591, baseType: !1656, size: 64, offset: 640)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2369, file: !1662, line: 597, baseType: !2404, size: 64, offset: 704)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!105, !1668, !315, !235, !105, !105}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2369, file: !1662, line: 603, baseType: !2408, size: 64, offset: 768)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!470, !1668}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2369, file: !1662, line: 613, baseType: !2412, size: 64, offset: 832)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!105, !1668, !2415}
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !57, line: 717, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2369, file: !1662, line: 625, baseType: !2418, size: 64, offset: 896)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2415, !1668, !315}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2369, file: !1662, line: 633, baseType: !2422, size: 64, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!1558, !1668, !315}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1669, file: !57, line: 697, baseType: !315, size: 64, offset: 1024)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1669, file: !57, line: 699, baseType: !1708, size: 64, offset: 1088)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1669, file: !57, line: 700, baseType: !235, size: 64, offset: 1152)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1669, file: !57, line: 711, baseType: !324, size: 64, offset: 1216)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1669, file: !57, line: 717, baseType: !2415, size: 64, offset: 1280)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1669, file: !57, line: 722, baseType: !2431, offset: 1344)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !57, line: 570, elements: !1092)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1665, file: !1662, line: 515, baseType: !1309, size: 32, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1665, file: !1662, line: 516, baseType: !315, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1665, file: !1662, line: 517, baseType: !315, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1665, file: !1662, line: 518, baseType: !315, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1661, file: !1662, line: 520, baseType: !56, size: 32, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1661, file: !1662, line: 522, baseType: !2438, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2223, line: 22, baseType: !2440)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2223, line: 22, size: 64, elements: !2441)
!2441 = !{!2442}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2440, file: !2223, line: 22, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2223, line: 15, baseType: !315)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1661, file: !1662, line: 524, baseType: !2445, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2218, line: 372, baseType: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2218, line: 372, size: 64, elements: !2448)
!2448 = !{!2449}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2447, file: !2218, line: 372, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2223, line: 16, baseType: !315)
!2451 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !1662, line: 527, baseType: !2452, size: 64, offset: 512)
!2452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1661, file: !1662, line: 527, size: 64, elements: !2453)
!2453 = !{!2454, !2460}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2452, file: !1662, line: 528, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2223, line: 21, baseType: !2456)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2223, line: 21, size: 64, elements: !2457)
!2457 = !{!2458}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2456, file: !2223, line: 21, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2223, line: 14, baseType: !315)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2452, file: !1662, line: 529, baseType: !2439, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1661, file: !1662, line: 534, baseType: !1558, size: 64, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1661, file: !1662, line: 535, baseType: !1558, size: 64, offset: 640)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1661, file: !1662, line: 541, baseType: !2464, size: 64, offset: 704)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1661, file: !1662, line: 545, baseType: !2466, size: 64, offset: 768)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1661, file: !1662, line: 549, baseType: !2468, size: 64, offset: 832)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2218, line: 520, baseType: !1558)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1649, file: !41, line: 100, baseType: !2470, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!105, !1608, !315, !315, !105}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1609, file: !41, line: 134, baseType: !235, size: 64, offset: 960)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1609, file: !41, line: 135, baseType: !105, size: 32, offset: 1024)
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !41, line: 136, baseType: !2476, size: 128, offset: 1088)
!2476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !41, line: 136, size: 128, elements: !2477)
!2477 = !{!2478, !2484}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2476, file: !41, line: 137, baseType: !2479, size: 128)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2480, line: 6, size: 128, elements: !2481)
!2480 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2479, file: !2480, line: 7, baseType: !657, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2479, file: !2480, line: 8, baseType: !657, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, scope: !2476, file: !41, line: 138, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !41, line: 138, elements: !2486)
!2486 = !{!2487, !2489}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2485, file: !41, line: 138, baseType: !2488)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2485, file: !41, line: 138, elements: !1092)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2485, file: !41, line: 138, baseType: !2490)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2479, elements: !1778)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1605, file: !57, line: 147, baseType: !235, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1563, file: !57, line: 161, baseType: !1051, size: 128, align: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !57, line: 164, baseType: !2494, size: 32, offset: 384)
!2494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !57, line: 164, size: 32, elements: !2495)
!2495 = !{!2496, !2497}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2494, file: !57, line: 169, baseType: !286, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2494, file: !57, line: 177, baseType: !23, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1559, file: !57, line: 181, baseType: !286, size: 32, offset: 416)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1555, file: !1528, line: 33, baseType: !23, size: 32, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1555, file: !1528, line: 34, baseType: !23, size: 32, offset: 96)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1515, file: !1481, line: 317, baseType: !2502, size: 64, offset: 896)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2504, line: 678, size: 1984, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2505 = !{!2506, !2510, !2511, !2514, !2535, !2536, !2537, !2538, !2543, !2544, !2545}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2503, file: !2504, line: 679, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2509, line: 11, flags: DIFlagFwdDecl)
!2509 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2503, file: !2504, line: 680, baseType: !23, size: 32, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2503, file: !2504, line: 685, baseType: !2512, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2504, line: 685, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2503, file: !2504, line: 687, baseType: !2515, size: 576, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2516, line: 26, baseType: !2517)
!2516 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2516, line: 16, size: 576, elements: !2518)
!2518 = !{!2519, !2520, !2521, !2522, !2523, !2524, !2529, !2534}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2517, file: !2516, line: 17, baseType: !266, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2517, file: !2516, line: 18, baseType: !105, size: 32, offset: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2517, file: !2516, line: 19, baseType: !105, size: 32, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2517, file: !2516, line: 20, baseType: !2172, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2517, file: !2516, line: 22, baseType: !235, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2517, file: !2516, line: 23, baseType: !2525, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2516, line: 13, baseType: !2527)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!235, !1309, !235}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2517, file: !2516, line: 24, baseType: !2530, size: 64, offset: 320)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2516, line: 14, baseType: !2532)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !235, !235}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2517, file: !2516, line: 25, baseType: !443, size: 192, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2503, file: !2504, line: 688, baseType: !2515, size: 576, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2503, file: !2504, line: 694, baseType: !23, size: 32, offset: 1344)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2503, file: !2504, line: 699, baseType: !266, size: 32, offset: 1376)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2503, file: !2504, line: 700, baseType: !2539, size: 128, offset: 1408)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2504, line: 550, size: 128, elements: !2540)
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2539, file: !2504, line: 551, baseType: !1514, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2539, file: !2504, line: 552, baseType: !1514, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2503, file: !2504, line: 701, baseType: !321, size: 256, offset: 1536)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2503, file: !2504, line: 702, baseType: !361, size: 64, offset: 1792)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2503, file: !2504, line: 707, baseType: !345, size: 128, offset: 1856)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1515, file: !1481, line: 324, baseType: !2547, offset: 960)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1555, elements: !1778)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !1508, file: !73, line: 1390, baseType: !2549, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!105, !1514, !2083, !23}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1508, file: !73, line: 1392, baseType: !2553, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!105, !1487, !2556}
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !73, line: 115, baseType: !23)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1508, file: !73, line: 1393, baseType: !2558, size: 64, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !1487}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1508, file: !73, line: 1394, baseType: !2562, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!105, !1479, !2556, !23, !315}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1508, file: !73, line: 1396, baseType: !2562, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1508, file: !73, line: 1398, baseType: !2567, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!23, !1487, !23}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1508, file: !73, line: 1400, baseType: !2558, size: 64, offset: 448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1508, file: !73, line: 1401, baseType: !2572, size: 64, offset: 512)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!105, !1479, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !30, line: 56, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !1508, file: !73, line: 1402, baseType: !2578, size: 64, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!105, !1479, !391}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !1508, file: !73, line: 1403, baseType: !2558, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1508, file: !73, line: 1405, baseType: !2583, size: 64, offset: 704)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !1479, !315}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1508, file: !73, line: 1406, baseType: !2587, size: 64, offset: 768)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!105, !1487, !1484, !23, !2590, !235}
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !73, line: 342, baseType: !2591)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!105, !2594, !23, !235}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2596, line: 106, size: 512, elements: !2597)
!2596 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2597 = !{!2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2607, !2608}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2595, file: !2596, line: 107, baseType: !658, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2595, file: !2596, line: 108, baseType: !658, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2595, file: !2596, line: 109, baseType: !658, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2595, file: !2596, line: 110, baseType: !297, size: 8, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2595, file: !2596, line: 111, baseType: !297, size: 8, offset: 200)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2595, file: !2596, line: 112, baseType: !297, size: 8, offset: 208)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2595, file: !2596, line: 113, baseType: !297, size: 8, offset: 216)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2595, file: !2596, line: 114, baseType: !2606, size: 32, offset: 224)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 32, elements: !1061)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2595, file: !2596, line: 115, baseType: !658, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2595, file: !2596, line: 116, baseType: !2609, size: 192, offset: 320)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 192, elements: !2610)
!2610 = !{!2611}
!2611 = !DISubrange(count: 24)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1508, file: !73, line: 1408, baseType: !2613, size: 64, offset: 832)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!509, !1487, !2616}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !1508, file: !73, line: 1410, baseType: !2618, size: 64, offset: 896)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!105, !1487, !2621, !72}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1508, file: !73, line: 1412, baseType: !772, size: 64, offset: 960)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1508, file: !73, line: 1413, baseType: !2624, size: 64, offset: 1024)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !73, line: 37, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !1508, file: !73, line: 1420, baseType: !2628, size: 64, offset: 1088)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!105, !1487, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1488, file: !73, line: 146, baseType: !247, size: 64, offset: 640)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1488, file: !73, line: 147, baseType: !235, size: 64, offset: 704)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1488, file: !73, line: 149, baseType: !2503, size: 1984, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1488, file: !73, line: 151, baseType: !105, size: 32, offset: 2752)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1488, file: !73, line: 152, baseType: !315, size: 64, offset: 2816)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !1488, file: !73, line: 161, baseType: !842, size: 256, offset: 2880)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !1488, file: !73, line: 162, baseType: !23, size: 32, offset: 3136)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1488, file: !73, line: 164, baseType: !2640, size: 64, offset: 3200)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !30, line: 50, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !1488, file: !73, line: 165, baseType: !466, size: 512, offset: 3264)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1488, file: !73, line: 166, baseType: !474, size: 64, offset: 3776)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !1488, file: !73, line: 168, baseType: !309, size: 128, offset: 3840)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1488, file: !73, line: 170, baseType: !2646, size: 64, offset: 3968)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !73, line: 170, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1488, file: !73, line: 171, baseType: !286, size: 32, offset: 4032)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1488, file: !73, line: 172, baseType: !2650, size: 64, offset: 4096)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !73, line: 104, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !1488, file: !73, line: 197, baseType: !2653, size: 64, offset: 4160)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !73, line: 197, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1488, file: !73, line: 199, baseType: !105, size: 32, offset: 4224)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1488, file: !73, line: 200, baseType: !2657, size: 64, offset: 4288)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !73, line: 105, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1488, file: !73, line: 201, baseType: !1090, offset: 4352)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !1488, file: !73, line: 202, baseType: !657, size: 64, offset: 4352)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !1488, file: !73, line: 203, baseType: !2556, size: 32, offset: 4416)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !1488, file: !73, line: 209, baseType: !2663, size: 64, offset: 4480)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !73, line: 384, size: 576, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2669}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2664, file: !73, line: 385, baseType: !466, size: 512)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !2664, file: !73, line: 386, baseType: !391, size: 8, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !2664, file: !73, line: 387, baseType: !23, size: 32, offset: 544)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !2664, file: !73, line: 388, baseType: !2670, offset: 576)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, elements: !1778)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !73, line: 378, size: 640, elements: !2672)
!2672 = !{!2673, !2674, !2675}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2671, file: !73, line: 379, baseType: !466, size: 512)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !2671, file: !73, line: 380, baseType: !1484, size: 64, offset: 512)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !2671, file: !73, line: 381, baseType: !1484, size: 64, offset: 576)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !1480, file: !1481, line: 44, baseType: !247, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !1480, file: !1481, line: 45, baseType: !2678, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1481, line: 45, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !1480, file: !1481, line: 46, baseType: !315, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !1480, file: !1481, line: 47, baseType: !391, size: 8, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1480, file: !1481, line: 48, baseType: !295, size: 8, offset: 392)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1480, file: !1481, line: 49, baseType: !391, size: 8, offset: 400)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !1480, file: !1481, line: 50, baseType: !391, size: 8, offset: 408)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1480, file: !1481, line: 51, baseType: !740, size: 32, offset: 416)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1480, file: !1481, line: 52, baseType: !286, size: 32, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1480, file: !1481, line: 53, baseType: !266, size: 32, offset: 480)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1480, file: !1481, line: 54, baseType: !586, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1480, file: !1481, line: 55, baseType: !235, size: 64, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1480, file: !1481, line: 56, baseType: !235, size: 64, offset: 640)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !1480, file: !1481, line: 57, baseType: !2692, size: 64, offset: 704)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2694)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !73, line: 1477, size: 128, elements: !2695)
!2695 = !{!2696, !2700}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !2694, file: !73, line: 1478, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{null, !1479, !391}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2694, file: !73, line: 1483, baseType: !2701, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{null, !1479}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !1480, file: !1481, line: 58, baseType: !842, size: 256, offset: 768)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1480, file: !1481, line: 60, baseType: !105, size: 32, offset: 1024)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1480, file: !1481, line: 61, baseType: !105, size: 32, offset: 1056)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !1480, file: !1481, line: 62, baseType: !474, size: 64, offset: 1088)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1480, file: !1481, line: 65, baseType: !842, size: 256, offset: 1152)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !1480, file: !1481, line: 66, baseType: !735, size: 64, offset: 1408)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !1480, file: !1481, line: 68, baseType: !2711, size: 64, offset: 1472)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !73, line: 63, size: 808, elements: !2713)
!2713 = !{!2714, !2718}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2712, file: !73, line: 64, baseType: !2715, size: 296)
!2715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !2716)
!2716 = !{!2717}
!2717 = !DISubrange(count: 37)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2712, file: !73, line: 65, baseType: !2719, size: 512, offset: 296)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 512, elements: !512)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !1480, file: !1481, line: 72, baseType: !391, size: 8, offset: 1536)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !1480, file: !1481, line: 77, baseType: !2722, size: 5824, offset: 1600)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !85, line: 705, size: 5824, elements: !2723)
!2723 = !{!2724, !2725, !2727, !2730, !2731, !2785, !2855, !2856, !2857, !2858, !2859, !2866, !3033, !3046, !3056, !3060, !3062, !3063, !3064, !3068, !3075, !3076, !3079, !3082, !3086, !3190, !3191, !3192, !3193, !3194, !3195, !3249, !3250, !3251, !3254, !3257, !3266, !3267, !3268, !3269, !3270, !3271}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2722, file: !85, line: 706, baseType: !466, size: 512)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2722, file: !85, line: 707, baseType: !2726, size: 64, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2722, file: !85, line: 709, baseType: !2728, size: 64, offset: 576)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !85, line: 37, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2722, file: !85, line: 711, baseType: !470, size: 64, offset: 640)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2722, file: !85, line: 712, baseType: !2732, size: 64, offset: 704)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2734)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !85, line: 89, size: 384, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2744, !2750, !2754}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2734, file: !85, line: 90, baseType: !470, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2734, file: !85, line: 91, baseType: !558, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2734, file: !85, line: 92, baseType: !2739, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!105, !2742, !504}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2722)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2734, file: !85, line: 93, baseType: !2745, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!509, !2742, !2616, !2748, !2749}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2734, file: !85, line: 95, baseType: !2751, size: 64, offset: 256)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{null, !2726}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2734, file: !85, line: 97, baseType: !2755, size: 64, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !97, line: 286, size: 1472, elements: !2758)
!2758 = !{!2759, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2757, file: !97, line: 287, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!105, !2726}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2757, file: !97, line: 288, baseType: !2751, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2757, file: !97, line: 289, baseType: !2760, size: 64, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2757, file: !97, line: 290, baseType: !2760, size: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2757, file: !97, line: 291, baseType: !2760, size: 64, offset: 256)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2757, file: !97, line: 292, baseType: !2760, size: 64, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2757, file: !97, line: 293, baseType: !2760, size: 64, offset: 384)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2757, file: !97, line: 294, baseType: !2760, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2757, file: !97, line: 295, baseType: !2760, size: 64, offset: 512)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2757, file: !97, line: 296, baseType: !2760, size: 64, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2757, file: !97, line: 297, baseType: !2760, size: 64, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2757, file: !97, line: 298, baseType: !2760, size: 64, offset: 704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2757, file: !97, line: 299, baseType: !2760, size: 64, offset: 768)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2757, file: !97, line: 300, baseType: !2760, size: 64, offset: 832)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2757, file: !97, line: 301, baseType: !2760, size: 64, offset: 896)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2757, file: !97, line: 302, baseType: !2760, size: 64, offset: 960)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2757, file: !97, line: 303, baseType: !2760, size: 64, offset: 1024)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2757, file: !97, line: 304, baseType: !2760, size: 64, offset: 1088)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2757, file: !97, line: 305, baseType: !2760, size: 64, offset: 1152)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2757, file: !97, line: 306, baseType: !2760, size: 64, offset: 1216)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2757, file: !97, line: 307, baseType: !2760, size: 64, offset: 1280)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2757, file: !97, line: 308, baseType: !2760, size: 64, offset: 1344)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2757, file: !97, line: 309, baseType: !2760, size: 64, offset: 1408)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2722, file: !85, line: 714, baseType: !2786, size: 64, offset: 768)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2789, line: 80, size: 1344, elements: !2790)
!2789 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2790 = !{!2791, !2792, !2793, !2794, !2795, !2796, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2854}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2788, file: !2789, line: 81, baseType: !470, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2788, file: !2789, line: 82, baseType: !470, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2788, file: !2789, line: 83, baseType: !558, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2788, file: !2789, line: 84, baseType: !558, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2788, file: !2789, line: 85, baseType: !558, size: 64, offset: 256)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2788, file: !2789, line: 87, baseType: !2797, size: 64, offset: 320)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!105, !2726, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !79, line: 96, size: 1152, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808, !2809, !2813, !2817, !2818, !2819, !2820, !2821, !2829, !2830, !2831, !2832, !2833, !2834}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2801, file: !79, line: 97, baseType: !470, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2801, file: !79, line: 98, baseType: !2786, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2801, file: !79, line: 100, baseType: !772, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2801, file: !79, line: 101, baseType: !470, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2801, file: !79, line: 103, baseType: !391, size: 8, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2801, file: !79, line: 104, baseType: !78, size: 32, offset: 288)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2801, file: !79, line: 106, baseType: !2810, size: 64, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2812)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !79, line: 106, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2801, file: !79, line: 107, baseType: !2814, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2816)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !79, line: 107, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2801, file: !79, line: 109, baseType: !2760, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2801, file: !79, line: 110, baseType: !2751, size: 64, offset: 512)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2801, file: !79, line: 111, baseType: !2760, size: 64, offset: 576)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2801, file: !79, line: 112, baseType: !2751, size: 64, offset: 640)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2801, file: !79, line: 113, baseType: !2822, size: 64, offset: 704)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!105, !2726, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !97, line: 60, baseType: !2826)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !97, line: 58, size: 32, elements: !2827)
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2826, file: !97, line: 59, baseType: !105, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2801, file: !79, line: 114, baseType: !2760, size: 64, offset: 768)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2801, file: !79, line: 115, baseType: !558, size: 64, offset: 832)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2801, file: !79, line: 116, baseType: !558, size: 64, offset: 896)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2801, file: !79, line: 118, baseType: !2755, size: 64, offset: 960)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2801, file: !79, line: 119, baseType: !2751, size: 64, offset: 1024)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2801, file: !79, line: 121, baseType: !2835, size: 64, offset: 1088)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !79, line: 121, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2788, file: !2789, line: 88, baseType: !2739, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2788, file: !2789, line: 89, baseType: !2760, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2788, file: !2789, line: 90, baseType: !2751, size: 64, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2788, file: !2789, line: 91, baseType: !2751, size: 64, offset: 576)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2788, file: !2789, line: 92, baseType: !2751, size: 64, offset: 640)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2788, file: !2789, line: 94, baseType: !2760, size: 64, offset: 704)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2788, file: !2789, line: 95, baseType: !2760, size: 64, offset: 768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2788, file: !2789, line: 97, baseType: !2822, size: 64, offset: 832)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2788, file: !2789, line: 98, baseType: !2760, size: 64, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2788, file: !2789, line: 100, baseType: !2760, size: 64, offset: 960)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2788, file: !2789, line: 102, baseType: !2760, size: 64, offset: 1024)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2788, file: !2789, line: 103, baseType: !2751, size: 64, offset: 1088)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2788, file: !2789, line: 105, baseType: !2755, size: 64, offset: 1152)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2788, file: !2789, line: 107, baseType: !2851, size: 64, offset: 1216)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2853)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2789, line: 107, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2788, file: !2789, line: 109, baseType: !391, size: 8, offset: 1280)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2722, file: !85, line: 715, baseType: !2800, size: 64, offset: 832)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2722, file: !85, line: 717, baseType: !235, size: 64, offset: 896)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2722, file: !85, line: 719, baseType: !235, size: 64, offset: 960)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2722, file: !85, line: 721, baseType: !842, size: 256, offset: 1024)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2722, file: !85, line: 725, baseType: !2860, size: 448, offset: 1280)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !85, line: 517, size: 448, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2865}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2860, file: !85, line: 518, baseType: !309, size: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2860, file: !85, line: 519, baseType: !309, size: 128, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2860, file: !85, line: 520, baseType: !309, size: 128, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2860, file: !85, line: 521, baseType: !84, size: 32, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2722, file: !85, line: 726, baseType: !2867, size: 2496, offset: 1728)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !97, line: 663, size: 2496, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2913, !2914, !2915, !2916, !2917, !2918, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3026, !3030}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2867, file: !97, line: 664, baseType: !2825, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2867, file: !97, line: 665, baseType: !23, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2867, file: !97, line: 666, baseType: !23, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2867, file: !97, line: 667, baseType: !391, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2867, file: !97, line: 668, baseType: !391, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2867, file: !97, line: 669, baseType: !391, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2867, file: !97, line: 670, baseType: !391, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2867, file: !97, line: 671, baseType: !391, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2867, file: !97, line: 672, baseType: !391, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2867, file: !97, line: 673, baseType: !391, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2867, file: !97, line: 674, baseType: !391, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2867, file: !97, line: 675, baseType: !358, size: 32, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2867, file: !97, line: 676, baseType: !266, size: 32, offset: 96)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2867, file: !97, line: 678, baseType: !309, size: 128, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2867, file: !97, line: 679, baseType: !792, size: 256, offset: 256)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2867, file: !97, line: 680, baseType: !2885, size: 64, offset: 512)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2887, line: 43, size: 1536, elements: !2888)
!2887 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2888 = !{!2889, !2890, !2891, !2892, !2893, !2896, !2897, !2898, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2886, file: !2887, line: 44, baseType: !470, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2886, file: !2887, line: 45, baseType: !105, size: 32, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2886, file: !2887, line: 46, baseType: !309, size: 128, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2886, file: !2887, line: 47, baseType: !266, size: 32, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2886, file: !2887, line: 48, baseType: !2894, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !97, line: 629, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2886, file: !2887, line: 49, baseType: !341, size: 320, offset: 384)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2886, file: !2887, line: 50, baseType: !315, size: 64, offset: 704)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2886, file: !2887, line: 51, baseType: !2899, size: 64, offset: 768)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2900, line: 29, baseType: !330)
!2900 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2886, file: !2887, line: 52, baseType: !2899, size: 64, offset: 832)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2886, file: !2887, line: 53, baseType: !2899, size: 64, offset: 896)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2886, file: !2887, line: 54, baseType: !2899, size: 64, offset: 960)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2886, file: !2887, line: 55, baseType: !2899, size: 64, offset: 1024)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2886, file: !2887, line: 56, baseType: !315, size: 64, offset: 1088)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2886, file: !2887, line: 57, baseType: !315, size: 64, offset: 1152)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2886, file: !2887, line: 58, baseType: !315, size: 64, offset: 1216)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2886, file: !2887, line: 59, baseType: !315, size: 64, offset: 1280)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2886, file: !2887, line: 60, baseType: !315, size: 64, offset: 1344)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2886, file: !2887, line: 61, baseType: !2726, size: 64, offset: 1408)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2886, file: !2887, line: 62, baseType: !391, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2886, file: !2887, line: 63, baseType: !391, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2867, file: !97, line: 681, baseType: !391, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2867, file: !97, line: 682, baseType: !391, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2867, file: !97, line: 683, baseType: !391, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2867, file: !97, line: 684, baseType: !23, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2867, file: !97, line: 685, baseType: !23, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2867, file: !97, line: 690, baseType: !2919, size: 512, offset: 640)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !92, line: 118, size: 512, elements: !2920)
!2920 = !{!2921, !2927, !2928, !2933, !2988, !2989, !2990, !2991}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2919, file: !92, line: 119, baseType: !2922, size: 256)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2923, line: 9, size: 256, elements: !2924)
!2923 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2922, file: !2923, line: 10, baseType: !943, size: 192, align: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2922, file: !2923, line: 11, baseType: !2899, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2919, file: !92, line: 120, baseType: !2899, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2919, file: !92, line: 121, baseType: !2929, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!91, !2932}
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2919, file: !92, line: 122, baseType: !2934, size: 64, offset: 384)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !92, line: 159, size: 512, align: 512, elements: !2936)
!2936 = !{!2937, !2962, !2963, !2966, !2971, !2972, !2983, !2987}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2935, file: !92, line: 160, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !92, line: 215, size: 4608, align: 512, elements: !2940)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2939, file: !92, line: 216, baseType: !400, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2939, file: !92, line: 217, baseType: !23, size: 32, offset: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2939, file: !92, line: 218, baseType: !23, size: 32, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2939, file: !92, line: 219, baseType: !23, size: 32, offset: 96)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2939, file: !92, line: 220, baseType: !23, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2939, file: !92, line: 221, baseType: !23, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2939, file: !92, line: 222, baseType: !23, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2939, file: !92, line: 223, baseType: !23, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2939, file: !92, line: 224, baseType: !23, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2939, file: !92, line: 226, baseType: !23, size: 32, offset: 160)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2939, file: !92, line: 227, baseType: !306, size: 16, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2939, file: !92, line: 228, baseType: !306, size: 16, offset: 208)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2939, file: !92, line: 229, baseType: !23, size: 32, offset: 224)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2939, file: !92, line: 235, baseType: !2899, size: 64, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2939, file: !92, line: 236, baseType: !2932, size: 64, offset: 320)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2939, file: !92, line: 237, baseType: !2899, size: 64, offset: 384)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2939, file: !92, line: 238, baseType: !2932, size: 64, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2939, file: !92, line: 239, baseType: !2959, size: 4096, align: 512, offset: 512)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 4096, align: 512, elements: !2960)
!2960 = !{!2961}
!2961 = !DISubrange(count: 8)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2935, file: !92, line: 161, baseType: !23, size: 32, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2935, file: !92, line: 162, baseType: !2964, size: 32, offset: 96)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !287, line: 32, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !541, line: 96, baseType: !105)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2935, file: !92, line: 163, baseType: !2967, size: 32, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !628, line: 274, baseType: !2968)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !628, line: 274, size: 32, elements: !2969)
!2969 = !{!2970}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2968, file: !628, line: 274, baseType: !632, size: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2935, file: !92, line: 164, baseType: !2932, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2935, file: !92, line: 165, baseType: !2973, size: 128, offset: 256)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2923, line: 14, size: 128, elements: !2974)
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2973, file: !2923, line: 15, baseType: !2976, size: 128)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !944, line: 26, size: 128, elements: !2977)
!2977 = !{!2978, !2982}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2976, file: !944, line: 27, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !944, line: 12, size: 64, elements: !2980)
!2980 = !{!2981}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2979, file: !944, line: 13, baseType: !948, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2976, file: !944, line: 28, baseType: !948, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2935, file: !92, line: 166, baseType: !2984, size: 64, offset: 384)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!2899}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2935, file: !92, line: 167, baseType: !2899, size: 64, offset: 448)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2919, file: !92, line: 123, baseType: !295, size: 8, offset: 448)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2919, file: !92, line: 124, baseType: !295, size: 8, offset: 456)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2919, file: !92, line: 125, baseType: !295, size: 8, offset: 464)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2919, file: !92, line: 126, baseType: !295, size: 8, offset: 472)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2867, file: !97, line: 691, baseType: !657, size: 64, offset: 1152)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2867, file: !97, line: 692, baseType: !321, size: 256, offset: 1216)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2867, file: !97, line: 693, baseType: !443, size: 192, offset: 1472)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2867, file: !97, line: 694, baseType: !2894, size: 64, offset: 1664)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2867, file: !97, line: 695, baseType: !286, size: 32, offset: 1728)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2867, file: !97, line: 696, baseType: !286, size: 32, offset: 1760)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2867, file: !97, line: 697, baseType: !23, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2867, file: !97, line: 698, baseType: !23, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2867, file: !97, line: 699, baseType: !23, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2867, file: !97, line: 700, baseType: !23, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2867, file: !97, line: 701, baseType: !23, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2867, file: !97, line: 702, baseType: !23, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2867, file: !97, line: 703, baseType: !391, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2867, file: !97, line: 704, baseType: !23, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2867, file: !97, line: 705, baseType: !23, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2867, file: !97, line: 706, baseType: !23, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2867, file: !97, line: 707, baseType: !23, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2867, file: !97, line: 708, baseType: !23, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2867, file: !97, line: 709, baseType: !23, size: 32, offset: 1824)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2867, file: !97, line: 710, baseType: !96, size: 32, offset: 1856)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2867, file: !97, line: 711, baseType: !104, size: 32, offset: 1888)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2867, file: !97, line: 712, baseType: !104, size: 32, offset: 1920)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2867, file: !97, line: 713, baseType: !105, size: 32, offset: 1952)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2867, file: !97, line: 714, baseType: !105, size: 32, offset: 1984)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2867, file: !97, line: 715, baseType: !657, size: 64, offset: 2048)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2867, file: !97, line: 716, baseType: !657, size: 64, offset: 2112)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2867, file: !97, line: 717, baseType: !657, size: 64, offset: 2176)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2867, file: !97, line: 718, baseType: !657, size: 64, offset: 2240)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2867, file: !97, line: 720, baseType: !3021, size: 64, offset: 2304)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !97, line: 632, size: 64, elements: !3023)
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3022, file: !97, line: 633, baseType: !266, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3022, file: !97, line: 634, baseType: !23, size: 32, offset: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2867, file: !97, line: 721, baseType: !3027, size: 64, offset: 2368)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2726, !838}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2867, file: !97, line: 722, baseType: !3031, size: 64, offset: 2432)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !97, line: 722, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2722, file: !85, line: 727, baseType: !3034, size: 64, offset: 4224)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !97, line: 742, size: 1792, elements: !3036)
!3036 = !{!3037, !3038, !3039, !3043, !3044, !3045}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3035, file: !97, line: 743, baseType: !2757, size: 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3035, file: !97, line: 744, baseType: !2760, size: 64, offset: 1472)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3035, file: !97, line: 745, baseType: !3040, size: 64, offset: 1536)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !2726, !391}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3035, file: !97, line: 746, baseType: !2760, size: 64, offset: 1600)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3035, file: !97, line: 747, baseType: !2751, size: 64, offset: 1664)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3035, file: !97, line: 748, baseType: !2751, size: 64, offset: 1728)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2722, file: !85, line: 736, baseType: !3047, size: 128, offset: 4288)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !85, line: 529, size: 128, elements: !3048)
!3048 = !{!3049, !3053}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3047, file: !85, line: 531, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3052, line: 13, flags: DIFlagFwdDecl)
!3052 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3047, file: !85, line: 532, baseType: !3054, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !85, line: 49, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2722, file: !85, line: 738, baseType: !3057, size: 64, offset: 4416)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3059)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !85, line: 738, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2722, file: !85, line: 740, baseType: !3061, size: 64, offset: 4480)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2722, file: !85, line: 741, baseType: !657, size: 64, offset: 4544)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2722, file: !85, line: 746, baseType: !657, size: 64, offset: 4608)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2722, file: !85, line: 747, baseType: !3065, size: 64, offset: 4672)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3067)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !85, line: 747, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2722, file: !85, line: 749, baseType: !3069, size: 64, offset: 4736)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !85, line: 428, size: 128, elements: !3071)
!3071 = !{!3072, !3073, !3074}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3070, file: !85, line: 433, baseType: !23, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3070, file: !85, line: 434, baseType: !23, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3070, file: !85, line: 435, baseType: !315, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2722, file: !85, line: 751, baseType: !309, size: 128, offset: 4800)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2722, file: !85, line: 762, baseType: !3077, size: 64, offset: 4928)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !85, line: 762, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2722, file: !85, line: 770, baseType: !3080, offset: 4992)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3081, line: 5, elements: !1092)
!3081 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2722, file: !85, line: 772, baseType: !3083, size: 64, offset: 4992)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3085, line: 18, flags: DIFlagFwdDecl)
!3085 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2722, file: !85, line: 773, baseType: !3087, size: 64, offset: 5056)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3089, line: 41, size: 512, elements: !3090)
!3089 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3090 = !{!3091, !3092, !3186, !3187, !3188, !3189}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3088, file: !3089, line: 42, baseType: !3087, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3088, file: !3089, line: 43, baseType: !3093, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3089, line: 125, size: 1408, elements: !3096)
!3096 = !{!3097, !3101, !3105, !3111, !3115, !3116, !3121, !3125, !3129, !3133, !3137, !3138, !3142, !3146, !3150, !3161, !3162, !3163, !3164, !3174, !3178, !3182}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3095, file: !3089, line: 126, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!3087, !3087}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3095, file: !3089, line: 127, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !3087}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3095, file: !3089, line: 128, baseType: !3106, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!391, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3088)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3095, file: !3089, line: 129, baseType: !3112, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!2298, !3109, !2742}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3095, file: !3089, line: 131, baseType: !3106, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3095, file: !3089, line: 133, baseType: !3117, size: 64, offset: 320)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!3120, !3109}
!3120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3089, line: 132, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3095, file: !3089, line: 134, baseType: !3122, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!391, !3109, !470}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3095, file: !3089, line: 136, baseType: !3126, size: 64, offset: 448)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!105, !3109, !470, !23, !235, !554}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3095, file: !3089, line: 141, baseType: !3130, size: 64, offset: 512)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!105, !3109, !470, !1132, !554}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3095, file: !3089, line: 144, baseType: !3134, size: 64, offset: 576)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!470, !3109}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3095, file: !3089, line: 145, baseType: !3134, size: 64, offset: 640)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3095, file: !3089, line: 146, baseType: !3139, size: 64, offset: 704)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!3087, !3109}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3095, file: !3089, line: 148, baseType: !3143, size: 64, offset: 768)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!3087, !3109, !3087}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3095, file: !3089, line: 151, baseType: !3147, size: 64, offset: 832)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!3087, !3109, !470}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3095, file: !3089, line: 153, baseType: !3151, size: 64, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!105, !3109, !470, !470, !23, !23, !3154}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3089, line: 94, size: 640, elements: !3156)
!3156 = !{!3157, !3158, !3159}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3155, file: !3089, line: 95, baseType: !3087, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3155, file: !3089, line: 96, baseType: !23, size: 32, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3155, file: !3089, line: 97, baseType: !3160, size: 512, offset: 128)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 512, elements: !2960)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3095, file: !3089, line: 158, baseType: !3143, size: 64, offset: 960)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3095, file: !3089, line: 161, baseType: !3139, size: 64, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3095, file: !3089, line: 163, baseType: !3098, size: 64, offset: 1088)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3095, file: !3089, line: 164, baseType: !3165, size: 64, offset: 1152)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!105, !3109, !3168}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3089, line: 73, size: 128, elements: !3170)
!3170 = !{!3171, !3172, !3173}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3169, file: !3089, line: 74, baseType: !23, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3169, file: !3089, line: 75, baseType: !23, size: 32, offset: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3169, file: !3089, line: 76, baseType: !3109, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3095, file: !3089, line: 166, baseType: !3175, size: 64, offset: 1216)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!235, !3087, !105}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3095, file: !3089, line: 167, baseType: !3179, size: 64, offset: 1280)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!105, !3109, !23}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3095, file: !3089, line: 168, baseType: !3183, size: 64, offset: 1344)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!105, !3087}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3088, file: !3089, line: 44, baseType: !2726, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3088, file: !3089, line: 45, baseType: !309, size: 128, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3088, file: !3089, line: 46, baseType: !309, size: 128, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3088, file: !3089, line: 47, baseType: !295, size: 8, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2722, file: !85, line: 776, baseType: !105, size: 32, offset: 5120)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2722, file: !85, line: 778, baseType: !740, size: 32, offset: 5152)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2722, file: !85, line: 779, baseType: !358, size: 32, offset: 5184)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2722, file: !85, line: 781, baseType: !266, size: 32, offset: 5216)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2722, file: !85, line: 782, baseType: !309, size: 128, offset: 5248)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2722, file: !85, line: 784, baseType: !3196, size: 64, offset: 5376)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3199, line: 52, size: 768, elements: !3200)
!3199 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3209, !3213, !3214, !3215, !3240, !3244, !3248}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3198, file: !3199, line: 53, baseType: !470, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3198, file: !3199, line: 55, baseType: !558, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3198, file: !3199, line: 56, baseType: !558, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3198, file: !3199, line: 58, baseType: !2739, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3198, file: !3199, line: 59, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!509, !2742, !2616}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3198, file: !3199, line: 61, baseType: !3210, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !3196}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3198, file: !3199, line: 62, baseType: !2751, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3198, file: !3199, line: 64, baseType: !2760, size: 64, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3198, file: !3199, line: 66, baseType: !3216, size: 64, offset: 512)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3218)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !113, line: 39, size: 384, elements: !3219)
!3219 = !{!3220, !3221, !3225, !3229, !3235, !3239}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3218, file: !113, line: 40, baseType: !112, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3218, file: !113, line: 41, baseType: !3222, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!391}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3218, file: !113, line: 42, baseType: !3226, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!235}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3218, file: !113, line: 43, baseType: !3230, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!2298, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !113, line: 19, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3218, file: !113, line: 44, baseType: !3236, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!2298}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3218, file: !113, line: 45, baseType: !877, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3198, file: !3199, line: 67, baseType: !3241, size: 64, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!2298, !2742}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3198, file: !3199, line: 69, baseType: !3245, size: 64, offset: 640)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{null, !2742, !2748, !2749}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3198, file: !3199, line: 71, baseType: !2755, size: 64, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2722, file: !85, line: 785, baseType: !558, size: 64, offset: 5440)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2722, file: !85, line: 787, baseType: !2751, size: 64, offset: 5504)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2722, file: !85, line: 788, baseType: !3252, size: 64, offset: 5568)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !85, line: 46, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2722, file: !85, line: 789, baseType: !3255, size: 64, offset: 5632)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !85, line: 48, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2722, file: !85, line: 791, baseType: !3258, size: 64, offset: 5696)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !85, line: 597, size: 128, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3259, file: !85, line: 598, baseType: !118, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3259, file: !85, line: 599, baseType: !127, size: 32, offset: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3259, file: !85, line: 600, baseType: !132, size: 32, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3259, file: !85, line: 601, baseType: !391, size: 8, offset: 96)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3259, file: !85, line: 602, baseType: !391, size: 8, offset: 104)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2722, file: !85, line: 793, baseType: !137, size: 32, offset: 5760)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2722, file: !85, line: 795, baseType: !391, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2722, file: !85, line: 796, baseType: !391, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2722, file: !85, line: 797, baseType: !391, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2722, file: !85, line: 798, baseType: !391, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2722, file: !85, line: 799, baseType: !391, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !736, file: !30, line: 1226, baseType: !3273, size: 64, offset: 1664)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !73, line: 1495, size: 128, elements: !3275)
!3275 = !{!3276, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3274, file: !73, line: 1496, baseType: !1479, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3274, file: !73, line: 1497, baseType: !235, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !736, file: !30, line: 1227, baseType: !2640, size: 64, offset: 1728)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !736, file: !30, line: 1228, baseType: !3280, size: 64, offset: 1792)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !30, line: 1228, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !736, file: !30, line: 1229, baseType: !345, size: 128, offset: 1856)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !736, file: !30, line: 1230, baseType: !23, size: 32, offset: 1984)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !736, file: !30, line: 1231, baseType: !3285, size: 2496, offset: 2048)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !35, line: 521, size: 2496, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3291, !3323}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3285, file: !35, line: 522, baseType: !23, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3285, file: !35, line: 523, baseType: !1457, size: 320, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3285, file: !35, line: 524, baseType: !3290, size: 192, offset: 384)
!3290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 192, elements: !15)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3285, file: !35, line: 525, baseType: !3292, size: 1728, offset: 576)
!3292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3293, size: 1728, elements: !15)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !35, line: 222, size: 576, elements: !3294)
!3294 = !{!3295, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3293, file: !35, line: 223, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !35, line: 445, size: 256, elements: !3298)
!3298 = !{!3299, !3300, !3313, !3314}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3297, file: !35, line: 446, baseType: !105, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3297, file: !35, line: 447, baseType: !3301, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3303)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !35, line: 312, size: 512, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3303, file: !35, line: 313, baseType: !1209, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3303, file: !35, line: 314, baseType: !1209, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3303, file: !35, line: 315, baseType: !1209, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3303, file: !35, line: 316, baseType: !1209, size: 64, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3303, file: !35, line: 317, baseType: !1324, size: 64, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3303, file: !35, line: 318, baseType: !1324, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3303, file: !35, line: 319, baseType: !1324, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3303, file: !35, line: 320, baseType: !1354, size: 64, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3297, file: !35, line: 448, baseType: !772, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3297, file: !35, line: 449, baseType: !3296, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3293, file: !35, line: 224, baseType: !105, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3293, file: !35, line: 226, baseType: !309, size: 128, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3293, file: !35, line: 227, baseType: !315, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3293, file: !35, line: 228, baseType: !23, size: 32, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3293, file: !35, line: 229, baseType: !23, size: 32, offset: 352)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3293, file: !35, line: 230, baseType: !1289, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3293, file: !35, line: 231, baseType: !1289, size: 64, offset: 448)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3293, file: !35, line: 232, baseType: !235, size: 64, offset: 512)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3285, file: !35, line: 526, baseType: !3324, size: 192, offset: 2304)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3301, size: 192, elements: !15)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !736, file: !30, line: 1233, baseType: !3326, size: 2368, offset: 4544)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !30, line: 1184, size: 2368, elements: !3327)
!3327 = !{!3328, !3329, !3330}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3326, file: !30, line: 1185, baseType: !306, size: 16)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3326, file: !30, line: 1186, baseType: !306, size: 16, offset: 16)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3326, file: !30, line: 1187, baseType: !3331, size: 2304, offset: 64)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3332, size: 2304, elements: !15)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3333, line: 12, size: 768, elements: !3334)
!3333 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3334 = !{!3335, !3343, !3344, !4464, !4465}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3332, file: !3333, line: 13, baseType: !3336, size: 384)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3337, line: 17, size: 384, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3338 = !{!3339, !3340, !3341, !3342}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3336, file: !3337, line: 18, baseType: !105, size: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3336, file: !3337, line: 19, baseType: !105, size: 32, offset: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3336, file: !3337, line: 20, baseType: !443, size: 192, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3336, file: !3337, line: 22, baseType: !1051, size: 128, align: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3332, file: !3333, line: 14, baseType: !402, size: 64, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3332, file: !3333, line: 15, baseType: !3345, size: 64, offset: 448)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3346, line: 16, size: 64, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3347 = !{!3348}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3345, file: !3346, line: 17, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1239, line: 746, size: 58368, elements: !3351)
!3351 = !{!3352, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3432, !3443, !3463, !3467, !3470, !3501, !3502, !3503, !3504, !3508, !3510, !3511, !3512, !3513, !3514, !3515, !3526, !3527, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3544, !3545, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3633, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3681, !3687, !3688, !3689, !3690, !3691, !3695, !3698, !3705, !3710, !3713, !3716, !3719, !3722, !3860, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3898, !3899, !3900, !3909, !3917, !3918, !3919, !3920, !3921, !3926, !3927, !3928, !3931, !3932, !3934, !3945, !3948, !3956, !3959, !3960, !4046, !4047, !4048, !4049, !4050, !4056, !4057, !4058, !4059, !4062, !4063, !4066, !4069, !4070, !4073, !4074, !4075, !4078, !4079, !4080, !4081, !4082, !4083, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4115, !4116, !4122, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4204, !4206, !4207, !4208, !4209, !4210, !4211, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4241, !4242, !4243}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3350, file: !1239, line: 752, baseType: !3353, size: 192)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3354, line: 56, size: 192, elements: !3355)
!3354 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3355 = !{!3356, !3357, !3358, !3359}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3353, file: !3354, line: 57, baseType: !315, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3353, file: !3354, line: 58, baseType: !315, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3353, file: !3354, line: 59, baseType: !358, size: 32, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3353, file: !3354, line: 61, baseType: !358, size: 32, offset: 160)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3350, file: !1239, line: 754, baseType: !23, size: 32, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3350, file: !1239, line: 767, baseType: !235, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3350, file: !1239, line: 768, baseType: !1758, size: 32, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3350, file: !1239, line: 770, baseType: !23, size: 32, offset: 352)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3350, file: !1239, line: 771, baseType: !23, size: 32, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3350, file: !1239, line: 774, baseType: !105, size: 32, offset: 416)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3350, file: !1239, line: 775, baseType: !3367, size: 128, offset: 448)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3368, line: 58, size: 128, elements: !3369)
!3368 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3369 = !{!3370, !3371, !3376, !3377}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3367, file: !3368, line: 59, baseType: !1715, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3367, file: !3368, line: 60, baseType: !3372, size: 32, offset: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3367, file: !3368, line: 60, size: 32, elements: !3373)
!3373 = !{!3374, !3375}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3372, file: !3368, line: 61, baseType: !23, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3372, file: !3368, line: 62, baseType: !286, size: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3367, file: !3368, line: 65, baseType: !304, size: 16, offset: 96)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3367, file: !3368, line: 65, baseType: !304, size: 16, offset: 112)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3350, file: !1239, line: 776, baseType: !23, size: 32, offset: 576)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3350, file: !1239, line: 777, baseType: !315, size: 64, offset: 640)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3350, file: !1239, line: 778, baseType: !3349, size: 64, offset: 704)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3350, file: !1239, line: 787, baseType: !105, size: 32, offset: 768)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3350, file: !1239, line: 788, baseType: !105, size: 32, offset: 800)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3350, file: !1239, line: 790, baseType: !105, size: 32, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3350, file: !1239, line: 792, baseType: !105, size: 32, offset: 864)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3350, file: !1239, line: 793, baseType: !105, size: 32, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3350, file: !1239, line: 794, baseType: !105, size: 32, offset: 928)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3350, file: !1239, line: 795, baseType: !23, size: 32, offset: 960)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3350, file: !1239, line: 797, baseType: !3389, size: 2048, offset: 1024)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1239, line: 551, size: 2048, elements: !3390)
!3390 = !{!3391, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3411, !3414, !3415, !3416}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3389, file: !1239, line: 553, baseType: !3392, size: 128)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1239, line: 411, size: 128, elements: !3393)
!3393 = !{!3394, !3395}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3392, file: !1239, line: 412, baseType: !315, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3392, file: !1239, line: 413, baseType: !358, size: 32, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3389, file: !1239, line: 554, baseType: !943, size: 192, align: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3389, file: !1239, line: 555, baseType: !657, size: 64, offset: 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3389, file: !1239, line: 556, baseType: !657, size: 64, offset: 384)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3389, file: !1239, line: 558, baseType: !309, size: 128, offset: 448)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3389, file: !1239, line: 559, baseType: !23, size: 32, offset: 576)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3389, file: !1239, line: 561, baseType: !657, size: 64, offset: 640)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3389, file: !1239, line: 562, baseType: !657, size: 64, offset: 704)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3389, file: !1239, line: 563, baseType: !657, size: 64, offset: 768)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3389, file: !1239, line: 564, baseType: !657, size: 64, offset: 832)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3389, file: !1239, line: 565, baseType: !330, size: 64, offset: 896)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3389, file: !1239, line: 566, baseType: !657, size: 64, offset: 960)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3389, file: !1239, line: 568, baseType: !657, size: 64, offset: 1024)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3389, file: !1239, line: 571, baseType: !105, size: 32, offset: 1088)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3389, file: !1239, line: 572, baseType: !3410, size: 64, offset: 1152)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3389, file: !1239, line: 574, baseType: !3412, size: 64, offset: 1216)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1239, line: 49, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3389, file: !1239, line: 576, baseType: !3412, size: 64, offset: 1280)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3389, file: !1239, line: 578, baseType: !315, size: 64, offset: 1344)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3389, file: !1239, line: 588, baseType: !3417, size: 512, align: 512, offset: 1536)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1239, line: 497, size: 512, align: 512, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3417, file: !1239, line: 498, baseType: !657, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3417, file: !1239, line: 499, baseType: !657, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3417, file: !1239, line: 500, baseType: !657, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3417, file: !1239, line: 501, baseType: !358, size: 32, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3417, file: !1239, line: 502, baseType: !358, size: 32, offset: 224)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3417, file: !1239, line: 503, baseType: !315, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3417, file: !1239, line: 504, baseType: !315, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3417, file: !1239, line: 505, baseType: !315, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3417, file: !1239, line: 506, baseType: !3428, size: 64, align: 64, offset: 448)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1239, line: 445, size: 64, align: 64, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3428, file: !1239, line: 446, baseType: !23, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3428, file: !1239, line: 447, baseType: !23, size: 32, offset: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3350, file: !1239, line: 798, baseType: !3433, size: 384, offset: 3072)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1239, line: 592, size: 384, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3433, file: !1239, line: 593, baseType: !309, size: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3433, file: !1239, line: 594, baseType: !315, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3433, file: !1239, line: 595, baseType: !315, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3433, file: !1239, line: 596, baseType: !23, size: 32, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3433, file: !1239, line: 597, baseType: !306, size: 16, offset: 288)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3433, file: !1239, line: 598, baseType: !306, size: 16, offset: 304)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3433, file: !1239, line: 600, baseType: !3442, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3350, file: !1239, line: 799, baseType: !3444, size: 1792, offset: 3456)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1239, line: 610, size: 1792, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3444, file: !1239, line: 611, baseType: !943, size: 192, align: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3444, file: !1239, line: 618, baseType: !657, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3444, file: !1239, line: 619, baseType: !657, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3444, file: !1239, line: 620, baseType: !657, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3444, file: !1239, line: 621, baseType: !657, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3444, file: !1239, line: 622, baseType: !657, size: 64, offset: 448)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3444, file: !1239, line: 629, baseType: !330, size: 64, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3444, file: !1239, line: 630, baseType: !657, size: 64, offset: 576)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3444, file: !1239, line: 631, baseType: !23, size: 32, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3444, file: !1239, line: 653, baseType: !23, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3444, file: !1239, line: 654, baseType: !23, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3444, file: !1239, line: 655, baseType: !23, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3444, file: !1239, line: 656, baseType: !23, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3444, file: !1239, line: 662, baseType: !2919, size: 512, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3444, file: !1239, line: 671, baseType: !2919, size: 512, offset: 1216)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3444, file: !1239, line: 679, baseType: !3462, size: 64, offset: 1728)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3350, file: !1239, line: 800, baseType: !3464, size: 64, offset: 5248)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1239, line: 800, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3350, file: !1239, line: 809, baseType: !3468, size: 64, offset: 5312)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1239, line: 70, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3350, file: !1239, line: 825, baseType: !3471, size: 2048, align: 512, offset: 5632)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1239, line: 509, size: 2048, align: 512, elements: !3472)
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3471, file: !1239, line: 511, baseType: !657, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3471, file: !1239, line: 512, baseType: !657, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3471, file: !1239, line: 513, baseType: !657, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3471, file: !1239, line: 514, baseType: !657, size: 64, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3471, file: !1239, line: 515, baseType: !657, size: 64, offset: 256)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3471, file: !1239, line: 516, baseType: !657, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3471, file: !1239, line: 518, baseType: !657, size: 64, offset: 384)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3471, file: !1239, line: 519, baseType: !657, size: 64, offset: 448)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3471, file: !1239, line: 520, baseType: !330, size: 64, offset: 512)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3471, file: !1239, line: 522, baseType: !657, size: 64, offset: 576)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3471, file: !1239, line: 523, baseType: !657, size: 64, offset: 640)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3471, file: !1239, line: 524, baseType: !330, size: 64, offset: 704)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3471, file: !1239, line: 526, baseType: !330, size: 64, offset: 768)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3471, file: !1239, line: 527, baseType: !657, size: 64, offset: 832)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3471, file: !1239, line: 529, baseType: !657, size: 64, offset: 896)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3471, file: !1239, line: 530, baseType: !657, size: 64, offset: 960)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3471, file: !1239, line: 531, baseType: !657, size: 64, offset: 1024)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3471, file: !1239, line: 532, baseType: !657, size: 64, offset: 1088)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3471, file: !1239, line: 533, baseType: !657, size: 64, offset: 1152)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3471, file: !1239, line: 535, baseType: !657, size: 64, offset: 1216)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3471, file: !1239, line: 536, baseType: !657, size: 64, offset: 1280)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3471, file: !1239, line: 537, baseType: !657, size: 64, offset: 1344)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3471, file: !1239, line: 538, baseType: !657, size: 64, offset: 1408)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3471, file: !1239, line: 539, baseType: !657, size: 64, offset: 1472)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3471, file: !1239, line: 540, baseType: !657, size: 64, offset: 1536)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3471, file: !1239, line: 541, baseType: !657, size: 64, offset: 1600)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3471, file: !1239, line: 542, baseType: !657, size: 64, offset: 1664)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3471, file: !1239, line: 543, baseType: !657, size: 64, offset: 1728)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3350, file: !1239, line: 833, baseType: !23, size: 32, offset: 7680)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3350, file: !1239, line: 836, baseType: !23, size: 32, offset: 7712)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3350, file: !1239, line: 837, baseType: !105, size: 32, offset: 7744)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3350, file: !1239, line: 838, baseType: !3505, size: 64, offset: 7808)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3507)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !366, line: 19, baseType: !368)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3350, file: !1239, line: 839, baseType: !3509, size: 64, offset: 7872)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3350, file: !1239, line: 840, baseType: !3507, size: 64, offset: 7936)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3350, file: !1239, line: 841, baseType: !235, size: 64, offset: 8000)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3350, file: !1239, line: 843, baseType: !306, size: 16, offset: 8064)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3350, file: !1239, line: 845, baseType: !306, size: 16, offset: 8080)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3350, file: !1239, line: 848, baseType: !105, size: 32, offset: 8096)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3350, file: !1239, line: 849, baseType: !3516, size: 32, offset: 8128)
!3516 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1239, line: 718, size: 32, elements: !3517)
!3517 = !{!3518, !3525}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3516, file: !1239, line: 724, baseType: !3519, size: 32)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3516, file: !1239, line: 719, size: 32, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3519, file: !1239, line: 720, baseType: !295, size: 8)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3519, file: !1239, line: 721, baseType: !295, size: 8, offset: 8)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3519, file: !1239, line: 722, baseType: !295, size: 8, offset: 16)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3519, file: !1239, line: 723, baseType: !295, size: 8, offset: 24)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3516, file: !1239, line: 725, baseType: !358, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3350, file: !1239, line: 850, baseType: !309, size: 128, offset: 8192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3350, file: !1239, line: 851, baseType: !3528, size: 64, offset: 8320)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1239, line: 60, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3350, file: !1239, line: 855, baseType: !315, size: 64, offset: 8384)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3350, file: !1239, line: 856, baseType: !295, size: 8, offset: 8448)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3350, file: !1239, line: 857, baseType: !295, size: 8, offset: 8456)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3350, file: !1239, line: 858, baseType: !105, size: 32, offset: 8480)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3350, file: !1239, line: 859, baseType: !309, size: 128, offset: 8512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3350, file: !1239, line: 860, baseType: !105, size: 32, offset: 8640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3350, file: !1239, line: 861, baseType: !309, size: 128, offset: 8704)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3350, file: !1239, line: 873, baseType: !3538, size: 256, offset: 8832)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1239, line: 376, size: 256, elements: !3539)
!3539 = !{!3540, !3541, !3542, !3543}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3538, file: !1239, line: 381, baseType: !315, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3538, file: !1239, line: 384, baseType: !659, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3538, file: !1239, line: 389, baseType: !659, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3538, file: !1239, line: 392, baseType: !659, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3350, file: !1239, line: 875, baseType: !309, size: 128, offset: 9088)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3350, file: !1239, line: 877, baseType: !3546, size: 320, offset: 9216)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3547, line: 86, size: 320, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3548 = !{!3549, !3550, !3551}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3546, file: !3547, line: 87, baseType: !105, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3546, file: !3547, line: 88, baseType: !309, size: 128, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3546, file: !3547, line: 89, baseType: !309, size: 128, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3350, file: !1239, line: 878, baseType: !943, size: 192, align: 64, offset: 9536)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3350, file: !1239, line: 881, baseType: !1681, size: 64, offset: 9728)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3350, file: !1239, line: 882, baseType: !1681, size: 64, offset: 9792)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3350, file: !1239, line: 884, baseType: !105, size: 32, offset: 9856)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3350, file: !1239, line: 885, baseType: !105, size: 32, offset: 9888)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3350, file: !1239, line: 886, baseType: !105, size: 32, offset: 9920)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3350, file: !1239, line: 888, baseType: !105, size: 32, offset: 9952)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3350, file: !1239, line: 890, baseType: !315, size: 64, offset: 9984)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3350, file: !1239, line: 893, baseType: !23, size: 32, offset: 10048)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3350, file: !1239, line: 896, baseType: !23, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3350, file: !1239, line: 897, baseType: !23, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3350, file: !1239, line: 898, baseType: !23, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3350, file: !1239, line: 899, baseType: !23, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3350, file: !1239, line: 919, baseType: !23, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3350, file: !1239, line: 922, baseType: !23, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3350, file: !1239, line: 923, baseType: !23, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3350, file: !1239, line: 925, baseType: !23, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3350, file: !1239, line: 939, baseType: !23, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3350, file: !1239, line: 941, baseType: !23, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3350, file: !1239, line: 944, baseType: !23, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3350, file: !1239, line: 956, baseType: !23, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3350, file: !1239, line: 962, baseType: !23, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3350, file: !1239, line: 966, baseType: !23, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3350, file: !1239, line: 969, baseType: !315, size: 64, offset: 10176)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3350, file: !1239, line: 971, baseType: !3577, size: 448, offset: 10240)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !144, line: 25, size: 448, elements: !3578)
!3578 = !{!3579, !3580, !3585}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3577, file: !144, line: 26, baseType: !315, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3577, file: !144, line: 27, baseType: !3581, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!543, !3584}
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, scope: !3577, file: !144, line: 28, baseType: !3586, size: 320, offset: 128)
!3586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3577, file: !144, line: 28, size: 320, elements: !3587)
!3587 = !{!3588, !3598, !3623}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3586, file: !144, line: 37, baseType: !3589, size: 320)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3586, file: !144, line: 30, size: 320, elements: !3590)
!3590 = !{!3591, !3593, !3594, !3595, !3596, !3597}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3589, file: !144, line: 31, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3589, file: !144, line: 32, baseType: !358, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3589, file: !144, line: 33, baseType: !358, size: 32, offset: 96)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3589, file: !144, line: 34, baseType: !358, size: 32, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3589, file: !144, line: 35, baseType: !657, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3589, file: !144, line: 36, baseType: !3592, size: 64, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3586, file: !144, line: 47, baseType: !3599, size: 192)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3586, file: !144, line: 39, size: 192, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3622}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3599, file: !144, line: 40, baseType: !2964, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3599, file: !144, line: 41, baseType: !143, size: 32, offset: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, scope: !3599, file: !144, line: 42, baseType: !3604, size: 64, offset: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3599, file: !144, line: 42, size: 64, elements: !3605)
!3605 = !{!3606, !3614}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3604, file: !144, line: 43, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3609, line: 7, size: 128, elements: !3610)
!3609 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3610 = !{!3611, !3613}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3608, file: !3609, line: 8, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !541, line: 93, baseType: !332)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3608, file: !3609, line: 9, baseType: !332, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3604, file: !144, line: 44, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3617, line: 7, size: 64, elements: !3618)
!3617 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3618 = !{!3619, !3621}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3616, file: !3617, line: 8, baseType: !3620, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3617, line: 5, baseType: !838)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3616, file: !3617, line: 9, baseType: !838, size: 32, offset: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3599, file: !144, line: 46, baseType: !657, size: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3586, file: !144, line: 55, baseType: !3624, size: 256)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3586, file: !144, line: 49, size: 256, elements: !3625)
!3625 = !{!3626, !3629, !3630, !3631, !3632}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3624, file: !144, line: 50, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !144, line: 14, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3624, file: !144, line: 51, baseType: !105, size: 32, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3624, file: !144, line: 52, baseType: !105, size: 32, offset: 96)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3624, file: !144, line: 53, baseType: !315, size: 64, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3624, file: !144, line: 54, baseType: !315, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3350, file: !1239, line: 973, baseType: !3634, size: 32, offset: 10688)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !287, line: 27, baseType: !3635)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !541, line: 28, baseType: !105)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3350, file: !1239, line: 974, baseType: !3634, size: 32, offset: 10720)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3350, file: !1239, line: 978, baseType: !315, size: 64, offset: 10752)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3350, file: !1239, line: 987, baseType: !3349, size: 64, offset: 10816)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3350, file: !1239, line: 990, baseType: !3349, size: 64, offset: 10880)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3350, file: !1239, line: 995, baseType: !309, size: 128, offset: 10944)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3350, file: !1239, line: 996, baseType: !309, size: 128, offset: 11072)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3350, file: !1239, line: 997, baseType: !3349, size: 64, offset: 11200)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3350, file: !1239, line: 1005, baseType: !309, size: 128, offset: 11264)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3350, file: !1239, line: 1006, baseType: !309, size: 128, offset: 11392)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3350, file: !1239, line: 1009, baseType: !1754, size: 64, offset: 11520)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3350, file: !1239, line: 1010, baseType: !3647, size: 512, offset: 11584)
!3647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 512, elements: !1061)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3350, file: !1239, line: 1011, baseType: !309, size: 128, offset: 12096)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3350, file: !1239, line: 1012, baseType: !309, size: 128, offset: 12224)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3350, file: !1239, line: 1014, baseType: !791, size: 64, offset: 12352)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3350, file: !1239, line: 1017, baseType: !960, size: 64, offset: 12416)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3350, file: !1239, line: 1020, baseType: !960, size: 64, offset: 12480)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3350, file: !1239, line: 1023, baseType: !235, size: 64, offset: 12544)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3350, file: !1239, line: 1025, baseType: !657, size: 64, offset: 12608)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3350, file: !1239, line: 1026, baseType: !657, size: 64, offset: 12672)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3350, file: !1239, line: 1031, baseType: !657, size: 64, offset: 12736)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3350, file: !1239, line: 1032, baseType: !3658, size: 192, offset: 12800)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1239, line: 324, size: 192, elements: !3659)
!3659 = !{!3660, !3661, !3662}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3658, file: !1239, line: 326, baseType: !657, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3658, file: !1239, line: 327, baseType: !657, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3658, file: !1239, line: 328, baseType: !400, size: 32, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3350, file: !1239, line: 1041, baseType: !315, size: 64, offset: 12992)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3350, file: !1239, line: 1042, baseType: !315, size: 64, offset: 13056)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3350, file: !1239, line: 1045, baseType: !657, size: 64, offset: 13120)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3350, file: !1239, line: 1048, baseType: !657, size: 64, offset: 13184)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3350, file: !1239, line: 1051, baseType: !315, size: 64, offset: 13248)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3350, file: !1239, line: 1052, baseType: !315, size: 64, offset: 13312)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3350, file: !1239, line: 1055, baseType: !3670, size: 640, offset: 13376)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3671, line: 132, size: 640, elements: !3672)
!3671 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3672 = !{!3673, !3679, !3680}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3670, file: !3671, line: 133, baseType: !3674, size: 576)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3675, size: 576, elements: !15)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3671, line: 117, size: 192, elements: !3676)
!3676 = !{!3677, !3678}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3675, file: !3671, line: 118, baseType: !657, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3675, file: !3671, line: 119, baseType: !2973, size: 128, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3670, file: !3671, line: 134, baseType: !23, size: 32, offset: 576)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3670, file: !3671, line: 135, baseType: !23, size: 32, offset: 608)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3350, file: !1239, line: 1058, baseType: !3682, size: 448, offset: 14016)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3671, line: 144, size: 448, elements: !3683)
!3683 = !{!3684, !3685, !3686}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3682, file: !3671, line: 145, baseType: !1051, size: 128, align: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3682, file: !3671, line: 146, baseType: !842, size: 256, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3682, file: !3671, line: 147, baseType: !23, size: 32, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3350, file: !1239, line: 1064, baseType: !1785, size: 64, offset: 14464)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3350, file: !1239, line: 1067, baseType: !1785, size: 64, offset: 14528)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3350, file: !1239, line: 1070, baseType: !1785, size: 64, offset: 14592)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3350, file: !1239, line: 1074, baseType: !1812, size: 64, offset: 14656)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3350, file: !1239, line: 1084, baseType: !3692, size: 128, offset: 14720)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3693)
!3693 = !{!3694}
!3694 = !DISubrange(count: 16)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3350, file: !1239, line: 1086, baseType: !3696, size: 64, offset: 14848)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1239, line: 55, flags: DIFlagFwdDecl)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3350, file: !1239, line: 1089, baseType: !3699, size: 64, offset: 14912)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3700, line: 12, size: 64, elements: !3701)
!3700 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3701 = !{!3702}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3699, file: !3700, line: 13, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3700, line: 8, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3350, file: !1239, line: 1090, baseType: !3706, size: 128, offset: 14976)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3707, line: 13, size: 128, elements: !3708)
!3707 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3708 = !{!3709}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3706, file: !3707, line: 14, baseType: !309, size: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3350, file: !1239, line: 1097, baseType: !3711, size: 64, offset: 15104)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1239, line: 50, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3350, file: !1239, line: 1100, baseType: !3714, size: 64, offset: 15168)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1239, line: 1100, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3350, file: !1239, line: 1103, baseType: !3717, size: 64, offset: 15232)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1239, line: 53, flags: DIFlagFwdDecl)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3350, file: !1239, line: 1107, baseType: !3720, size: 64, offset: 15296)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1239, line: 56, flags: DIFlagFwdDecl)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3350, file: !1239, line: 1110, baseType: !3723, size: 64, offset: 15360)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3725, line: 93, size: 8768, elements: !3726)
!3725 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3774, !3783, !3784, !3786, !3787, !3788, !3791, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3829, !3830, !3837, !3847, !3850, !3851, !3854, !3855, !3856, !3857, !3858, !3859}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3724, file: !3725, line: 94, baseType: !1758, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3724, file: !3725, line: 95, baseType: !286, size: 32, offset: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3724, file: !3725, line: 96, baseType: !105, size: 32, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3724, file: !3725, line: 97, baseType: !105, size: 32, offset: 96)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3724, file: !3725, line: 98, baseType: !309, size: 128, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3724, file: !3725, line: 100, baseType: !443, size: 192, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3724, file: !3725, line: 103, baseType: !3349, size: 64, offset: 448)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3724, file: !3725, line: 106, baseType: !3735, size: 192, offset: 512)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1957, line: 32, size: 192, elements: !3736)
!3736 = !{!3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3735, file: !1957, line: 33, baseType: !309, size: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3735, file: !1957, line: 34, baseType: !3739, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3740, line: 25, baseType: !3741)
!3740 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3740, line: 23, size: 64, elements: !3742)
!3742 = !{!3743}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3741, file: !3740, line: 24, baseType: !371, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3724, file: !3725, line: 109, baseType: !1165, size: 64, offset: 704)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3724, file: !3725, line: 112, baseType: !105, size: 32, offset: 768)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3724, file: !3725, line: 114, baseType: !105, size: 32, offset: 800)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3724, file: !3725, line: 115, baseType: !3349, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3724, file: !3725, line: 118, baseType: !105, size: 32, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3724, file: !3725, line: 119, baseType: !23, size: 32, offset: 928)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3724, file: !3725, line: 121, baseType: !3751, size: 64, offset: 960)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3725, line: 80, size: 448, elements: !3753)
!3753 = !{!3754, !3755, !3761}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3752, file: !3725, line: 81, baseType: !286, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3752, file: !3725, line: 82, baseType: !3756, size: 128, offset: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3725, line: 75, size: 128, elements: !3757)
!3757 = !{!3758, !3759}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3756, file: !3725, line: 76, baseType: !3349, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3756, file: !3725, line: 77, baseType: !3760, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3752, file: !3725, line: 83, baseType: !792, size: 256, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3724, file: !3725, line: 132, baseType: !23, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3724, file: !3725, line: 133, baseType: !23, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3724, file: !3725, line: 138, baseType: !23, size: 32, offset: 1056)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3724, file: !3725, line: 139, baseType: !309, size: 128, offset: 1088)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3724, file: !3725, line: 142, baseType: !2919, size: 512, offset: 1216)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3724, file: !3725, line: 143, baseType: !2899, size: 64, offset: 1728)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3724, file: !3725, line: 150, baseType: !3769, size: 256, offset: 1792)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3770, size: 256, elements: !950)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3725, line: 38, size: 128, elements: !3771)
!3771 = !{!3772, !3773}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3770, file: !3725, line: 39, baseType: !657, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3770, file: !3725, line: 40, baseType: !657, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3724, file: !3725, line: 156, baseType: !3775, size: 192, offset: 2048)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3725, line: 66, size: 192, elements: !3776)
!3776 = !{!3777}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3775, file: !3725, line: 67, baseType: !3778, size: 192)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3725, line: 47, size: 192, elements: !3779)
!3779 = !{!3780, !3781, !3782}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3778, file: !3725, line: 48, baseType: !326, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3778, file: !3725, line: 49, baseType: !326, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3778, file: !3725, line: 50, baseType: !326, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3724, file: !3725, line: 160, baseType: !3670, size: 640, offset: 2240)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3724, file: !3725, line: 163, baseType: !3785, size: 256, offset: 2880)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1754, size: 256, elements: !1061)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3724, file: !3725, line: 169, baseType: !1754, size: 64, offset: 3136)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3724, file: !3725, line: 172, baseType: !105, size: 32, offset: 3200)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3724, file: !3725, line: 174, baseType: !3789, size: 64, offset: 3264)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3725, line: 174, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3724, file: !3725, line: 185, baseType: !3792, size: 64, offset: 3328)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !628, line: 860, baseType: !3793)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !628, line: 853, size: 64, elements: !3794)
!3794 = !{!3795, !3796}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3793, file: !628, line: 858, baseType: !627, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3793, file: !628, line: 859, baseType: !266, size: 32, offset: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3724, file: !3725, line: 186, baseType: !657, size: 64, offset: 3392)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3724, file: !3725, line: 186, baseType: !657, size: 64, offset: 3456)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3724, file: !3725, line: 186, baseType: !657, size: 64, offset: 3520)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3724, file: !3725, line: 186, baseType: !657, size: 64, offset: 3584)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3724, file: !3725, line: 187, baseType: !657, size: 64, offset: 3648)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3724, file: !3725, line: 188, baseType: !657, size: 64, offset: 3712)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3724, file: !3725, line: 189, baseType: !3658, size: 192, offset: 3776)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3724, file: !3725, line: 190, baseType: !315, size: 64, offset: 3968)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3724, file: !3725, line: 190, baseType: !315, size: 64, offset: 4032)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3724, file: !3725, line: 190, baseType: !315, size: 64, offset: 4096)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3724, file: !3725, line: 190, baseType: !315, size: 64, offset: 4160)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3724, file: !3725, line: 191, baseType: !315, size: 64, offset: 4224)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3724, file: !3725, line: 191, baseType: !315, size: 64, offset: 4288)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3724, file: !3725, line: 191, baseType: !315, size: 64, offset: 4352)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3724, file: !3725, line: 191, baseType: !315, size: 64, offset: 4416)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3724, file: !3725, line: 192, baseType: !315, size: 64, offset: 4480)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3724, file: !3725, line: 192, baseType: !315, size: 64, offset: 4544)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3724, file: !3725, line: 192, baseType: !315, size: 64, offset: 4608)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3724, file: !3725, line: 192, baseType: !315, size: 64, offset: 4672)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3724, file: !3725, line: 193, baseType: !315, size: 64, offset: 4736)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3724, file: !3725, line: 193, baseType: !315, size: 64, offset: 4800)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3724, file: !3725, line: 194, baseType: !3819, size: 448, offset: 4864)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3820, line: 12, size: 448, elements: !3821)
!3820 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3819, file: !3820, line: 15, baseType: !657, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3819, file: !3820, line: 17, baseType: !657, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3819, file: !3820, line: 19, baseType: !657, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3819, file: !3820, line: 21, baseType: !657, size: 64, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3819, file: !3820, line: 29, baseType: !657, size: 64, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3819, file: !3820, line: 35, baseType: !657, size: 64, offset: 320)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3819, file: !3820, line: 44, baseType: !657, size: 64, offset: 384)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3724, file: !3725, line: 202, baseType: !659, size: 64, offset: 5312)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3724, file: !3725, line: 213, baseType: !3831, size: 2048, offset: 5376)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3832, size: 2048, elements: !3693)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3833, line: 43, size: 128, elements: !3834)
!3833 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3832, file: !3833, line: 44, baseType: !556, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3832, file: !3833, line: 45, baseType: !556, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3724, file: !3725, line: 216, baseType: !3838, size: 448, offset: 7424)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3725, line: 30, size: 448, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3843, !3844, !3845, !3846}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3838, file: !3725, line: 31, baseType: !105, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3838, file: !3725, line: 32, baseType: !543, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3838, file: !3725, line: 33, baseType: !315, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3838, file: !3725, line: 34, baseType: !657, size: 64, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3838, file: !3725, line: 34, baseType: !657, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3838, file: !3725, line: 35, baseType: !315, size: 64, offset: 320)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3838, file: !3725, line: 35, baseType: !315, size: 64, offset: 384)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3724, file: !3725, line: 219, baseType: !3848, size: 64, offset: 7872)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3725, line: 219, flags: DIFlagFwdDecl)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3724, file: !3725, line: 222, baseType: !23, size: 32, offset: 7936)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3724, file: !3725, line: 223, baseType: !3852, size: 64, offset: 8000)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3725, line: 223, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3724, file: !3725, line: 230, baseType: !391, size: 8, offset: 8064)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3724, file: !3725, line: 231, baseType: !969, size: 16, offset: 8080)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3724, file: !3725, line: 232, baseType: !969, size: 16, offset: 8096)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3724, file: !3725, line: 234, baseType: !1681, size: 64, offset: 8128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3724, file: !3725, line: 237, baseType: !842, size: 256, offset: 8192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3724, file: !3725, line: 243, baseType: !1457, size: 320, offset: 8448)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3350, file: !1239, line: 1111, baseType: !3861, size: 64, offset: 15424)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3725, line: 20, size: 16640, elements: !3863)
!3863 = !{!3864, !3865, !3866, !3867}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3862, file: !3725, line: 21, baseType: !266, size: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3862, file: !3725, line: 22, baseType: !1758, size: 32, offset: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3862, file: !3725, line: 23, baseType: !443, size: 192, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3862, file: !3725, line: 24, baseType: !3868, size: 16384, offset: 256)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3869, size: 16384, elements: !512)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1957, line: 51, size: 256, elements: !3870)
!3870 = !{!3871}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3869, file: !1957, line: 52, baseType: !3872, size: 256)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1957, line: 37, size: 256, elements: !3873)
!3873 = !{!3874, !3881, !3882, !3886}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3872, file: !1957, line: 39, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3876, line: 83, baseType: !3877)
!3876 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3876, line: 82, baseType: !3879)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{null, !105}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3872, file: !1957, line: 40, baseType: !315, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3872, file: !1957, line: 46, baseType: !3883, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3876, line: 86, baseType: !3884)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3876, line: 85, baseType: !1160)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3872, file: !1957, line: 48, baseType: !3739, size: 64, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3350, file: !1239, line: 1112, baseType: !3739, size: 64, offset: 15488)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3350, file: !1239, line: 1113, baseType: !3739, size: 64, offset: 15552)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3350, file: !1239, line: 1115, baseType: !3739, size: 64, offset: 15616)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3350, file: !1239, line: 1116, baseType: !3735, size: 192, offset: 15680)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3350, file: !1239, line: 1117, baseType: !315, size: 64, offset: 15872)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3350, file: !1239, line: 1118, baseType: !554, size: 64, offset: 15936)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3350, file: !1239, line: 1119, baseType: !23, size: 32, offset: 16000)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3350, file: !1239, line: 1121, baseType: !1050, size: 64, offset: 16064)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3350, file: !1239, line: 1125, baseType: !3896, size: 64, offset: 16128)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1239, line: 43, flags: DIFlagFwdDecl)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3350, file: !1239, line: 1127, baseType: !592, size: 32, offset: 16192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3350, file: !1239, line: 1128, baseType: !23, size: 32, offset: 16224)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3350, file: !1239, line: 1130, baseType: !3901, size: 128, offset: 16256)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3902, line: 37, size: 128, elements: !3903)
!3902 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3903 = !{!3904, !3905, !3906}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3901, file: !3902, line: 38, baseType: !105, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3901, file: !3902, line: 39, baseType: !286, size: 32, offset: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3901, file: !3902, line: 40, baseType: !3907, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3902, line: 24, flags: DIFlagFwdDecl)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3350, file: !1239, line: 1131, baseType: !3910, size: 256, offset: 16384)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3911, line: 12, size: 256, elements: !3912)
!3911 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3912 = !{!3913, !3914, !3915, !3916}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3910, file: !3911, line: 13, baseType: !509, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3910, file: !3911, line: 14, baseType: !315, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3910, file: !3911, line: 15, baseType: !315, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3910, file: !3911, line: 16, baseType: !391, size: 8, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3350, file: !1239, line: 1134, baseType: !657, size: 64, offset: 16640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3350, file: !1239, line: 1135, baseType: !657, size: 64, offset: 16704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3350, file: !1239, line: 1138, baseType: !266, size: 32, offset: 16768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3350, file: !1239, line: 1141, baseType: !400, size: 32, offset: 16800)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3350, file: !1239, line: 1143, baseType: !3922, size: 64, offset: 16832)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1239, line: 735, size: 64, elements: !3923)
!3923 = !{!3924}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3922, file: !1239, line: 736, baseType: !3925, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3350, file: !1239, line: 1147, baseType: !2976, size: 128, offset: 16896)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3350, file: !1239, line: 1149, baseType: !3349, size: 64, offset: 17024)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3350, file: !1239, line: 1151, baseType: !3929, size: 64, offset: 17088)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1239, line: 1151, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3350, file: !1239, line: 1188, baseType: !235, size: 64, offset: 17152)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3350, file: !1239, line: 1191, baseType: !3933, size: 64, offset: 17216)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3350, file: !1239, line: 1194, baseType: !3935, size: 64, offset: 17280)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !73, line: 976, size: 320, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3936, file: !73, line: 977, baseType: !251, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3936, file: !73, line: 980, baseType: !251, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3936, file: !73, line: 981, baseType: !306, size: 16, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3936, file: !73, line: 983, baseType: !306, size: 16, offset: 144)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3936, file: !73, line: 985, baseType: !391, size: 8, offset: 160)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3936, file: !73, line: 986, baseType: !391, size: 8, offset: 168)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3936, file: !73, line: 988, baseType: !309, size: 128, offset: 192)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3350, file: !1239, line: 1197, baseType: !3946, size: 64, offset: 17344)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1239, line: 61, flags: DIFlagFwdDecl)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3350, file: !1239, line: 1199, baseType: !3949, size: 64, offset: 17408)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3951, line: 99, size: 128, elements: !3952)
!3951 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3952 = !{!3953, !3954, !3955}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3950, file: !3951, line: 100, baseType: !324, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3950, file: !3951, line: 101, baseType: !286, size: 32, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3950, file: !3951, line: 103, baseType: !306, size: 16, offset: 96)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3350, file: !1239, line: 1202, baseType: !3957, size: 64, offset: 17472)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1239, line: 48, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3350, file: !1239, line: 1205, baseType: !315, size: 64, offset: 17536)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3350, file: !1239, line: 1206, baseType: !3961, size: 64, offset: 17600)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1957, line: 14, baseType: !3963)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1957, line: 12, size: 384, elements: !3964)
!3964 = !{!3965}
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !1957, line: 13, baseType: !3966, size: 384)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3963, file: !1957, line: 13, size: 384, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3966, file: !1957, line: 13, baseType: !105, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3966, file: !1957, line: 13, baseType: !105, size: 32, offset: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3966, file: !1957, line: 13, baseType: !105, size: 32, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3966, file: !1957, line: 13, baseType: !3972, size: 256, offset: 128)
!3972 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3973, line: 37, size: 256, elements: !3974)
!3973 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3974 = !{!3975, !3980, !3993, !3999, !4008, !4035, !4040}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3972, file: !3973, line: 42, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3973, line: 39, size: 64, elements: !3977)
!3977 = !{!3978, !3979}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3976, file: !3973, line: 40, baseType: !3635, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3976, file: !3973, line: 41, baseType: !598, size: 32, offset: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3972, file: !3973, line: 50, baseType: !3981, size: 192)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3973, line: 45, size: 192, elements: !3982)
!3982 = !{!3983, !3985, !3986, !3992}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3981, file: !3973, line: 46, baseType: !3984, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !541, line: 95, baseType: !105)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3981, file: !3973, line: 47, baseType: !105, size: 32, offset: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3981, file: !3973, line: 48, baseType: !3987, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3973, line: 11, baseType: !3988)
!3988 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3973, line: 8, size: 64, elements: !3989)
!3989 = !{!3990, !3991}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3988, file: !3973, line: 9, baseType: !105, size: 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3988, file: !3973, line: 10, baseType: !235, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3981, file: !3973, line: 49, baseType: !105, size: 32, offset: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3972, file: !3973, line: 57, baseType: !3994, size: 128)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3973, line: 53, size: 128, elements: !3995)
!3995 = !{!3996, !3997, !3998}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3994, file: !3973, line: 54, baseType: !3635, size: 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3994, file: !3973, line: 55, baseType: !598, size: 32, offset: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3994, file: !3973, line: 56, baseType: !3987, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3972, file: !3973, line: 66, baseType: !4000, size: 256)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3973, line: 60, size: 256, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005, !4007}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4000, file: !3973, line: 61, baseType: !3635, size: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4000, file: !3973, line: 62, baseType: !598, size: 32, offset: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4000, file: !3973, line: 63, baseType: !105, size: 32, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4000, file: !3973, line: 64, baseType: !4006, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !541, line: 94, baseType: !542)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4000, file: !3973, line: 65, baseType: !4006, size: 64, offset: 192)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3972, file: !3973, line: 105, baseType: !4009, size: 256)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3973, line: 69, size: 256, elements: !4010)
!4010 = !{!4011, !4012}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4009, file: !3973, line: 70, baseType: !235, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, scope: !4009, file: !3973, line: 79, baseType: !4013, size: 192, offset: 64)
!4013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4009, file: !3973, line: 79, size: 192, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4024, !4029}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4013, file: !3973, line: 81, baseType: !105, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4013, file: !3973, line: 86, baseType: !969, size: 16)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4013, file: !3973, line: 92, baseType: !4018, size: 192)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !3973, line: 88, size: 192, elements: !4019)
!4019 = !{!4020, !4022, !4023}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4018, file: !3973, line: 89, baseType: !4021, size: 64)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2960)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4018, file: !3973, line: 90, baseType: !235, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4018, file: !3973, line: 91, baseType: !235, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4013, file: !3973, line: 97, baseType: !4025, size: 96)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !3973, line: 94, size: 96, elements: !4026)
!4026 = !{!4027, !4028}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4025, file: !3973, line: 95, baseType: !4021, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4025, file: !3973, line: 96, baseType: !359, size: 32, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4013, file: !3973, line: 103, baseType: !4030, size: 128)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !3973, line: 99, size: 128, elements: !4031)
!4031 = !{!4032, !4033, !4034}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4030, file: !3973, line: 100, baseType: !315, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4030, file: !3973, line: 101, baseType: !359, size: 32, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4030, file: !3973, line: 102, baseType: !359, size: 32, offset: 96)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3972, file: !3973, line: 111, baseType: !4036, size: 128)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3973, line: 108, size: 128, elements: !4037)
!4037 = !{!4038, !4039}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4036, file: !3973, line: 109, baseType: !543, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4036, file: !3973, line: 110, baseType: !105, size: 32, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3972, file: !3973, line: 118, baseType: !4041, size: 128)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3973, line: 114, size: 128, elements: !4042)
!4042 = !{!4043, !4044, !4045}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4041, file: !3973, line: 115, baseType: !235, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4041, file: !3973, line: 116, baseType: !105, size: 32, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4041, file: !3973, line: 117, baseType: !23, size: 32, offset: 96)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3350, file: !1239, line: 1208, baseType: !3819, size: 448, offset: 17664)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3350, file: !1239, line: 1215, baseType: !657, size: 64, offset: 18112)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3350, file: !1239, line: 1217, baseType: !657, size: 64, offset: 18176)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3350, file: !1239, line: 1219, baseType: !657, size: 64, offset: 18240)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3350, file: !1239, line: 1223, baseType: !4051, size: 64, offset: 18304)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4052, line: 99, baseType: !4053)
!4052 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4052, line: 99, size: 64, elements: !4054)
!4054 = !{!4055}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4053, file: !4052, line: 99, baseType: !371, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3350, file: !1239, line: 1225, baseType: !627, size: 32, offset: 18368)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3350, file: !1239, line: 1226, baseType: !105, size: 32, offset: 18400)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3350, file: !1239, line: 1227, baseType: !105, size: 32, offset: 18432)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3350, file: !1239, line: 1231, baseType: !4060, size: 64, offset: 18496)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1239, line: 1231, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3350, file: !1239, line: 1233, baseType: !309, size: 128, offset: 18560)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3350, file: !1239, line: 1240, baseType: !4064, size: 64, offset: 18688)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1239, line: 62, flags: DIFlagFwdDecl)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3350, file: !1239, line: 1242, baseType: !4067, size: 64, offset: 18752)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1239, line: 1242, flags: DIFlagFwdDecl)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3350, file: !1239, line: 1244, baseType: !309, size: 128, offset: 18816)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3350, file: !1239, line: 1245, baseType: !4071, size: 64, offset: 18944)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1239, line: 51, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3350, file: !1239, line: 1246, baseType: !842, size: 256, offset: 19008)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3350, file: !1239, line: 1247, baseType: !23, size: 32, offset: 19264)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3350, file: !1239, line: 1250, baseType: !4076, size: 64, offset: 19328)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1239, line: 57, flags: DIFlagFwdDecl)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3350, file: !1239, line: 1251, baseType: !842, size: 256, offset: 19392)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3350, file: !1239, line: 1252, baseType: !309, size: 128, offset: 19648)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3350, file: !1239, line: 1259, baseType: !2415, size: 64, offset: 19776)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3350, file: !1239, line: 1260, baseType: !969, size: 16, offset: 19840)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3350, file: !1239, line: 1261, baseType: !969, size: 16, offset: 19856)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3350, file: !1239, line: 1314, baseType: !4084, size: 64, offset: 19904)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4086, line: 62, size: 256, align: 256, elements: !4087)
!4086 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093, !4094}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4085, file: !4086, line: 75, baseType: !359, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4085, file: !4086, line: 90, baseType: !359, size: 32, offset: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4085, file: !4086, line: 112, baseType: !658, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4085, file: !4086, line: 132, baseType: !359, size: 32, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4085, file: !4086, line: 140, baseType: !359, size: 32, offset: 160)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4085, file: !4086, line: 149, baseType: !359, size: 32, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4085, file: !4086, line: 154, baseType: !4095, offset: 224)
!4095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1778)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3350, file: !1239, line: 1315, baseType: !358, size: 32, offset: 19968)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3350, file: !1239, line: 1316, baseType: !358, size: 32, offset: 20000)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3350, file: !1239, line: 1321, baseType: !315, size: 64, offset: 20032)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3350, file: !1239, line: 1325, baseType: !105, size: 32, offset: 20096)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3350, file: !1239, line: 1326, baseType: !105, size: 32, offset: 20128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3350, file: !1239, line: 1327, baseType: !105, size: 32, offset: 20160)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3350, file: !1239, line: 1328, baseType: !105, size: 32, offset: 20192)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3350, file: !1239, line: 1329, baseType: !1051, size: 128, align: 64, offset: 20224)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3350, file: !1239, line: 1332, baseType: !4105, size: 128, offset: 20352)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4106, line: 51, size: 128, elements: !4107)
!4106 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4107 = !{!4108, !4113, !4114}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4105, file: !4106, line: 60, baseType: !4109, size: 64)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4110, line: 7, size: 64, elements: !4111)
!4110 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4111 = !{!4112}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4109, file: !4110, line: 12, baseType: !368, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4105, file: !4106, line: 63, baseType: !391, size: 8, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4105, file: !4106, line: 70, baseType: !391, size: 8, offset: 72)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3350, file: !1239, line: 1335, baseType: !2157, size: 64, offset: 20480)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3350, file: !1239, line: 1337, baseType: !4117, size: 128, offset: 20544)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4106, line: 39, size: 128, elements: !4118)
!4118 = !{!4119, !4120, !4121}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4117, file: !4106, line: 40, baseType: !1558, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4117, file: !4106, line: 42, baseType: !359, size: 32, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4117, file: !4106, line: 43, baseType: !359, size: 32, offset: 96)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3350, file: !1239, line: 1340, baseType: !4123, size: 64, offset: 20672)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1239, line: 69, flags: DIFlagFwdDecl)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3350, file: !1239, line: 1351, baseType: !105, size: 32, offset: 20736)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3350, file: !1239, line: 1352, baseType: !105, size: 32, offset: 20768)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3350, file: !1239, line: 1354, baseType: !315, size: 64, offset: 20800)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3350, file: !1239, line: 1364, baseType: !657, size: 64, offset: 20864)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3350, file: !1239, line: 1365, baseType: !657, size: 64, offset: 20928)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3350, file: !1239, line: 1412, baseType: !315, size: 64, offset: 20992)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3350, file: !1239, line: 1453, baseType: !1487, size: 64, offset: 21056)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3350, file: !1239, line: 1457, baseType: !4133, size: 64, offset: 21120)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !150, line: 61, size: 576, elements: !4135)
!4135 = !{!4136, !4137, !4156, !4159, !4160, !4193, !4203}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4134, file: !150, line: 62, baseType: !149, size: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4134, file: !150, line: 64, baseType: !4138, size: 192, offset: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4134, file: !150, line: 64, size: 192, elements: !4139)
!4139 = !{!4140, !4151}
!4140 = !DIDerivedType(tag: DW_TAG_member, scope: !4138, file: !150, line: 65, baseType: !4141, size: 192)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !150, line: 65, size: 192, elements: !4142)
!4142 = !{!4143, !4150}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4141, file: !150, line: 66, baseType: !4144, size: 128)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4145, line: 50, size: 128, elements: !4146)
!4145 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4146 = !{!4147, !4148, !4149}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4144, file: !4145, line: 52, baseType: !315, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4144, file: !4145, line: 54, baseType: !23, size: 32, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4144, file: !4145, line: 55, baseType: !23, size: 32, offset: 96)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4141, file: !150, line: 67, baseType: !315, size: 64, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, scope: !4138, file: !150, line: 70, baseType: !4152, size: 192)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !150, line: 70, size: 192, elements: !4153)
!4153 = !{!4154, !4155}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4152, file: !150, line: 71, baseType: !1051, size: 128, align: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4152, file: !150, line: 72, baseType: !315, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4134, file: !150, line: 76, baseType: !4157, size: 64, offset: 256)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !150, line: 76, flags: DIFlagFwdDecl)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4134, file: !150, line: 77, baseType: !315, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4134, file: !150, line: 79, baseType: !4161, size: 64, offset: 384)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4145, line: 25, size: 256, elements: !4163)
!4163 = !{!4164, !4170, !4174}
!4164 = !DIDerivedType(tag: DW_TAG_member, scope: !4162, file: !4145, line: 26, baseType: !4165, size: 128)
!4165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !4145, line: 26, size: 128, elements: !4166)
!4166 = !{!4167, !4169}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4165, file: !4145, line: 27, baseType: !4168, size: 128)
!4168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 128, elements: !3693)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4165, file: !4145, line: 28, baseType: !4168, size: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4162, file: !4145, line: 31, baseType: !4171, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4173)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4145, line: 23, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, scope: !4162, file: !4145, line: 33, baseType: !4175, size: 64, offset: 192)
!4175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !4145, line: 33, size: 64, elements: !4176)
!4176 = !{!4177, !4183, !4188}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4175, file: !4145, line: 38, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4175, file: !4145, line: 34, size: 64, elements: !4179)
!4179 = !{!4180, !4181, !4182}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4178, file: !4145, line: 35, baseType: !838, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4178, file: !4145, line: 36, baseType: !295, size: 8, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4178, file: !4145, line: 37, baseType: !295, size: 8, offset: 40)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4175, file: !4145, line: 42, baseType: !4184, size: 16)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4175, file: !4145, line: 39, size: 16, elements: !4185)
!4185 = !{!4186, !4187}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4184, file: !4145, line: 40, baseType: !295, size: 8)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4184, file: !4145, line: 41, baseType: !295, size: 8, offset: 8)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4175, file: !4145, line: 46, baseType: !4189, size: 16)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4175, file: !4145, line: 43, size: 16, elements: !4190)
!4190 = !{!4191, !4192}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4189, file: !4145, line: 44, baseType: !295, size: 8)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4189, file: !4145, line: 45, baseType: !295, size: 8, offset: 8)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4134, file: !150, line: 81, baseType: !4194, size: 64, offset: 448)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !150, line: 85, size: 384, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4202}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4195, file: !150, line: 86, baseType: !4157, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4195, file: !150, line: 87, baseType: !315, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4195, file: !150, line: 88, baseType: !315, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4195, file: !150, line: 89, baseType: !315, size: 64, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4195, file: !150, line: 90, baseType: !391, size: 8, offset: 256)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4195, file: !150, line: 92, baseType: !4194, size: 64, offset: 320)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4134, file: !150, line: 82, baseType: !23, size: 32, offset: 512)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3350, file: !1239, line: 1463, baseType: !4205, offset: 21184)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1239, line: 739, elements: !1092)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3350, file: !1239, line: 1470, baseType: !1051, size: 128, align: 64, offset: 21184)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3350, file: !1239, line: 1471, baseType: !1758, size: 32, offset: 21312)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3350, file: !1239, line: 1472, baseType: !105, size: 32, offset: 21344)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3350, file: !1239, line: 1474, baseType: !3349, size: 64, offset: 21376)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3350, file: !1239, line: 1475, baseType: !341, size: 320, offset: 21440)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3350, file: !1239, line: 1478, baseType: !4212, size: 64, offset: 21760)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4214, line: 49, size: 512, elements: !4215)
!4214 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4222, !4223, !4224, !4226}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4213, file: !4214, line: 50, baseType: !4212, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4213, file: !4214, line: 51, baseType: !235, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4213, file: !4214, line: 52, baseType: !315, size: 64, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4213, file: !4214, line: 53, baseType: !315, size: 64, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4213, file: !4214, line: 54, baseType: !4221, size: 64, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4213, file: !4214, line: 56, baseType: !23, size: 32, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4213, file: !4214, line: 58, baseType: !23, size: 32, offset: 352)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4213, file: !4214, line: 59, baseType: !4225, size: 64, offset: 384)
!4225 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !287, line: 159, baseType: !657)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4213, file: !4214, line: 60, baseType: !2298, size: 64, offset: 448)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3350, file: !1239, line: 1482, baseType: !1758, size: 32, offset: 21824)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3350, file: !1239, line: 1489, baseType: !235, size: 64, offset: 21888)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3350, file: !1239, line: 1504, baseType: !235, size: 64, offset: 21952)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3350, file: !1239, line: 1505, baseType: !658, size: 64, offset: 22016)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3350, file: !1239, line: 1506, baseType: !657, size: 64, offset: 22080)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3350, file: !1239, line: 1507, baseType: !658, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3350, file: !1239, line: 1508, baseType: !658, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3350, file: !1239, line: 1509, baseType: !658, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3350, file: !1239, line: 1510, baseType: !1051, size: 128, align: 64, offset: 22208)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3350, file: !1239, line: 1511, baseType: !105, size: 32, offset: 22336)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3350, file: !1239, line: 1515, baseType: !4238, size: 64, offset: 22400)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1716, line: 56, size: 64, elements: !4239)
!4239 = !{!4240}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4238, file: !1716, line: 57, baseType: !1719, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3350, file: !1239, line: 1518, baseType: !4238, size: 64, offset: 22464)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3350, file: !1239, line: 1528, baseType: !1051, size: 128, align: 64, offset: 22528)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3350, file: !1239, line: 1552, baseType: !4244, size: 35328, offset: 23040)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4245, line: 430, size: 35328, elements: !4246)
!4245 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4246 = !{!4247, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4276, !4277, !4278, !4279, !4280, !4281, !4284, !4285, !4286, !4287}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4244, file: !4245, line: 432, baseType: !4248, size: 192)
!4248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4249, size: 192, elements: !15)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4250, line: 16, size: 64, elements: !4251)
!4250 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4249, file: !4250, line: 17, baseType: !304, size: 16)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4249, file: !4250, line: 18, baseType: !304, size: 16, offset: 16)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4249, file: !4250, line: 19, baseType: !304, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4249, file: !4250, line: 19, baseType: !304, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4249, file: !4250, line: 19, baseType: !304, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4249, file: !4250, line: 19, baseType: !304, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4249, file: !4250, line: 19, baseType: !304, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4249, file: !4250, line: 20, baseType: !304, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4249, file: !4250, line: 20, baseType: !304, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4249, file: !4250, line: 20, baseType: !304, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4249, file: !4250, line: 20, baseType: !304, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4249, file: !4250, line: 20, baseType: !304, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4249, file: !4250, line: 20, baseType: !304, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4244, file: !4245, line: 436, baseType: !315, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4244, file: !4245, line: 440, baseType: !306, size: 16, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4244, file: !4245, line: 441, baseType: !306, size: 16, offset: 272)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4244, file: !4245, line: 442, baseType: !306, size: 16, offset: 288)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4244, file: !4245, line: 443, baseType: !306, size: 16, offset: 304)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4244, file: !4245, line: 447, baseType: !315, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4244, file: !4245, line: 448, baseType: !315, size: 64, offset: 384)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4244, file: !4245, line: 459, baseType: !4273, size: 256, offset: 448)
!4273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4274, size: 256, elements: !1061)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4245, line: 428, flags: DIFlagFwdDecl)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4244, file: !4245, line: 461, baseType: !315, size: 64, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4244, file: !4245, line: 463, baseType: !315, size: 64, offset: 768)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4244, file: !4245, line: 465, baseType: !315, size: 64, offset: 832)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4244, file: !4245, line: 466, baseType: !315, size: 64, offset: 896)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4244, file: !4245, line: 467, baseType: !315, size: 64, offset: 960)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4244, file: !4245, line: 473, baseType: !4282, size: 64, offset: 1024)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4245, line: 10, flags: DIFlagFwdDecl)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4244, file: !4245, line: 480, baseType: !315, size: 64, offset: 1088)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4244, file: !4245, line: 482, baseType: !23, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4244, file: !4245, line: 491, baseType: !358, size: 32, offset: 1184)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4244, file: !4245, line: 501, baseType: !4288, size: 33792, offset: 1536)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4289, line: 448, size: 33792, elements: !4290)
!4289 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4290 = !{!4291, !4292, !4293, !4455, !4456, !4462, !4463}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4288, file: !4289, line: 461, baseType: !23, size: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4288, file: !4289, line: 468, baseType: !315, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4288, file: !4289, line: 476, baseType: !4294, size: 64, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4289, line: 356, size: 33280, align: 512, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4295, file: !4289, line: 358, baseType: !23, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4295, file: !4289, line: 361, baseType: !23, size: 32, offset: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4295, file: !4289, line: 364, baseType: !657, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4295, file: !4289, line: 367, baseType: !657, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4295, file: !4289, line: 370, baseType: !657, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4295, file: !4289, line: 373, baseType: !23, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4295, file: !4289, line: 376, baseType: !23, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4295, file: !4289, line: 391, baseType: !23, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4295, file: !4289, line: 394, baseType: !23, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4295, file: !4289, line: 397, baseType: !4307, size: 32768, offset: 512)
!4307 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4289, line: 348, size: 32768, elements: !4308)
!4308 = !{!4309, !4324, !4361, !4438, !4451}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4307, file: !4289, line: 349, baseType: !4310, size: 896)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4289, line: 12, size: 896, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4323}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4310, file: !4289, line: 13, baseType: !358, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4310, file: !4289, line: 14, baseType: !358, size: 32, offset: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4310, file: !4289, line: 15, baseType: !358, size: 32, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4310, file: !4289, line: 16, baseType: !358, size: 32, offset: 96)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4310, file: !4289, line: 17, baseType: !358, size: 32, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4310, file: !4289, line: 18, baseType: !358, size: 32, offset: 160)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4310, file: !4289, line: 19, baseType: !358, size: 32, offset: 192)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4310, file: !4289, line: 22, baseType: !4320, size: 640, offset: 224)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 640, elements: !4321)
!4321 = !{!4322}
!4322 = !DISubrange(count: 20)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4310, file: !4289, line: 25, baseType: !358, size: 32, offset: 864)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4307, file: !4289, line: 350, baseType: !4325, size: 4096, align: 128)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4289, line: 34, size: 4096, align: 128, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4346, !4347, !4348, !4350, !4352, !4356}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4325, file: !4289, line: 35, baseType: !304, size: 16)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4325, file: !4289, line: 36, baseType: !304, size: 16, offset: 16)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4325, file: !4289, line: 37, baseType: !304, size: 16, offset: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4325, file: !4289, line: 38, baseType: !304, size: 16, offset: 48)
!4331 = !DIDerivedType(tag: DW_TAG_member, scope: !4325, file: !4289, line: 39, baseType: !4332, size: 128, offset: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4325, file: !4289, line: 39, size: 128, elements: !4333)
!4333 = !{!4334, !4339}
!4334 = !DIDerivedType(tag: DW_TAG_member, scope: !4332, file: !4289, line: 40, baseType: !4335, size: 128)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4332, file: !4289, line: 40, size: 128, elements: !4336)
!4336 = !{!4337, !4338}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4335, file: !4289, line: 41, baseType: !657, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4335, file: !4289, line: 42, baseType: !657, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, scope: !4332, file: !4289, line: 44, baseType: !4340, size: 128)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4332, file: !4289, line: 44, size: 128, elements: !4341)
!4341 = !{!4342, !4343, !4344, !4345}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4340, file: !4289, line: 45, baseType: !358, size: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4340, file: !4289, line: 46, baseType: !358, size: 32, offset: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4340, file: !4289, line: 47, baseType: !358, size: 32, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4340, file: !4289, line: 48, baseType: !358, size: 32, offset: 96)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4325, file: !4289, line: 51, baseType: !358, size: 32, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4325, file: !4289, line: 52, baseType: !358, size: 32, offset: 224)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4325, file: !4289, line: 55, baseType: !4349, size: 1024, offset: 256)
!4349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 1024, elements: !666)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4325, file: !4289, line: 58, baseType: !4351, size: 2048, offset: 1280)
!4351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 2048, elements: !512)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4325, file: !4289, line: 60, baseType: !4353, size: 384, offset: 3328)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 384, elements: !4354)
!4354 = !{!4355}
!4355 = !DISubrange(count: 12)
!4356 = !DIDerivedType(tag: DW_TAG_member, scope: !4325, file: !4289, line: 62, baseType: !4357, size: 384, offset: 3712)
!4357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4325, file: !4289, line: 62, size: 384, elements: !4358)
!4358 = !{!4359, !4360}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4357, file: !4289, line: 63, baseType: !4353, size: 384)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4357, file: !4289, line: 64, baseType: !4353, size: 384)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4307, file: !4289, line: 351, baseType: !4362, size: 1088)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4289, line: 79, size: 1088, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4437}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4362, file: !4289, line: 80, baseType: !358, size: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4362, file: !4289, line: 81, baseType: !358, size: 32, offset: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4362, file: !4289, line: 82, baseType: !358, size: 32, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4362, file: !4289, line: 83, baseType: !358, size: 32, offset: 96)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4362, file: !4289, line: 84, baseType: !358, size: 32, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4362, file: !4289, line: 85, baseType: !358, size: 32, offset: 160)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4362, file: !4289, line: 86, baseType: !358, size: 32, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4362, file: !4289, line: 88, baseType: !4320, size: 640, offset: 224)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4362, file: !4289, line: 89, baseType: !295, size: 8, offset: 864)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4362, file: !4289, line: 90, baseType: !295, size: 8, offset: 872)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4362, file: !4289, line: 91, baseType: !295, size: 8, offset: 880)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4362, file: !4289, line: 92, baseType: !295, size: 8, offset: 888)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4362, file: !4289, line: 93, baseType: !295, size: 8, offset: 896)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4362, file: !4289, line: 94, baseType: !295, size: 8, offset: 904)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4362, file: !4289, line: 95, baseType: !4379, size: 64, offset: 960)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4381, line: 11, size: 128, elements: !4382)
!4381 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4382 = !{!4383, !4384}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4380, file: !4381, line: 12, baseType: !543, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4380, file: !4381, line: 13, baseType: !4385, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4387, line: 103, size: 1344, elements: !4388)
!4387 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4388 = !{!4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4417, !4418, !4419}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4386, file: !4387, line: 109, baseType: !315, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4386, file: !4387, line: 110, baseType: !315, size: 64, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4386, file: !4387, line: 111, baseType: !315, size: 64, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4386, file: !4387, line: 112, baseType: !315, size: 64, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4386, file: !4387, line: 113, baseType: !315, size: 64, offset: 256)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4386, file: !4387, line: 114, baseType: !315, size: 64, offset: 320)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4386, file: !4387, line: 117, baseType: !315, size: 64, offset: 384)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4386, file: !4387, line: 118, baseType: !315, size: 64, offset: 448)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4386, file: !4387, line: 119, baseType: !315, size: 64, offset: 512)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4386, file: !4387, line: 120, baseType: !315, size: 64, offset: 576)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4386, file: !4387, line: 121, baseType: !315, size: 64, offset: 640)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4386, file: !4387, line: 122, baseType: !315, size: 64, offset: 704)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4386, file: !4387, line: 123, baseType: !315, size: 64, offset: 768)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4386, file: !4387, line: 124, baseType: !315, size: 64, offset: 832)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4386, file: !4387, line: 125, baseType: !315, size: 64, offset: 896)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4386, file: !4387, line: 139, baseType: !315, size: 64, offset: 960)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4386, file: !4387, line: 142, baseType: !315, size: 64, offset: 1024)
!4406 = !DIDerivedType(tag: DW_TAG_member, scope: !4386, file: !4387, line: 144, baseType: !4407, size: 64, offset: 1088)
!4407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4386, file: !4387, line: 144, size: 64, elements: !4408)
!4408 = !{!4409, !4410, !4411}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4407, file: !4387, line: 146, baseType: !304, size: 16)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4407, file: !4387, line: 148, baseType: !657, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4407, file: !4387, line: 150, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4387, line: 59, size: 64, elements: !4413)
!4413 = !{!4414, !4415, !4416}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4412, file: !4387, line: 61, baseType: !657, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4412, file: !4387, line: 63, baseType: !657, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4412, file: !4387, line: 65, baseType: !657, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4386, file: !4387, line: 153, baseType: !315, size: 64, offset: 1152)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4386, file: !4387, line: 154, baseType: !315, size: 64, offset: 1216)
!4419 = !DIDerivedType(tag: DW_TAG_member, scope: !4386, file: !4387, line: 156, baseType: !4420, size: 64, offset: 1280)
!4420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4386, file: !4387, line: 156, size: 64, elements: !4421)
!4421 = !{!4422, !4423, !4424}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4420, file: !4387, line: 158, baseType: !304, size: 16)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4420, file: !4387, line: 160, baseType: !657, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4420, file: !4387, line: 162, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4387, line: 69, size: 64, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4425, file: !4387, line: 71, baseType: !657, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4425, file: !4387, line: 73, baseType: !657, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4425, file: !4387, line: 75, baseType: !657, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4425, file: !4387, line: 77, baseType: !657, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4425, file: !4387, line: 80, baseType: !657, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4425, file: !4387, line: 83, baseType: !657, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4425, file: !4387, line: 86, baseType: !657, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4425, file: !4387, line: 88, baseType: !657, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4425, file: !4387, line: 93, baseType: !657, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4425, file: !4387, line: 100, baseType: !657, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4362, file: !4289, line: 96, baseType: !358, size: 32, offset: 1024)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4307, file: !4289, line: 352, baseType: !4439, size: 4608, align: 512)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4289, line: 333, size: 4608, align: 512, elements: !4440)
!4440 = !{!4441, !4442, !4449}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4439, file: !4289, line: 334, baseType: !4325, size: 4096, align: 128)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4439, file: !4289, line: 335, baseType: !4443, size: 512, offset: 4096)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4289, line: 312, size: 512, elements: !4444)
!4444 = !{!4445, !4446, !4447}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4443, file: !4289, line: 313, baseType: !657, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4443, file: !4289, line: 314, baseType: !657, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4443, file: !4289, line: 315, baseType: !4448, size: 384, offset: 128)
!4448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 384, elements: !5)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4439, file: !4289, line: 336, baseType: !4450, offset: 4608)
!4450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !1778)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4307, file: !4289, line: 353, baseType: !4452, size: 32768)
!4452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 32768, elements: !4453)
!4453 = !{!4454}
!4454 = !DISubrange(count: 4096)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4288, file: !4289, line: 484, baseType: !4294, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4288, file: !4289, line: 491, baseType: !4457, size: 128, offset: 256)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4289, line: 404, size: 128, elements: !4458)
!4458 = !{!4459, !4460, !4461}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4457, file: !4289, line: 424, baseType: !657, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4457, file: !4289, line: 432, baseType: !23, size: 32, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4457, file: !4289, line: 440, baseType: !23, size: 32, offset: 96)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4288, file: !4289, line: 498, baseType: !4457, size: 128, offset: 384)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4288, file: !4289, line: 508, baseType: !4295, size: 33280, align: 512, offset: 512)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3332, file: !3333, line: 16, baseType: !443, size: 192, offset: 512)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3332, file: !3333, line: 17, baseType: !286, size: 32, offset: 704)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !736, file: !30, line: 1240, baseType: !235, size: 64, offset: 6912)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !736, file: !30, line: 1243, baseType: !358, size: 32, offset: 6976)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !736, file: !30, line: 1245, baseType: !1297, size: 64, offset: 7040)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !736, file: !30, line: 1246, baseType: !1297, size: 64, offset: 7104)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !736, file: !30, line: 1248, baseType: !359, size: 32, offset: 7168)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !736, file: !30, line: 1249, baseType: !4472, size: 64, offset: 7232)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !30, line: 634, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !736, file: !30, line: 1252, baseType: !1494, size: 256, offset: 7296)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !736, file: !30, line: 1253, baseType: !4476, size: 128, offset: 7552)
!4476 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4477, line: 21, baseType: !4478)
!4477 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4477, line: 19, size: 128, elements: !4479)
!4479 = !{!4480}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4478, file: !4477, line: 20, baseType: !4481, size: 128)
!4481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !3693)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !736, file: !30, line: 1255, baseType: !23, size: 32, offset: 7680)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !736, file: !30, line: 1261, baseType: !842, size: 256, offset: 7744)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !736, file: !30, line: 1267, baseType: !470, size: 64, offset: 8000)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !736, file: !30, line: 1269, baseType: !682, size: 64, offset: 8064)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !736, file: !30, line: 1271, baseType: !4487, size: 448, offset: 8128)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1306, line: 63, size: 448, elements: !4488)
!4488 = !{!4489, !4494, !4495, !4496, !4497, !4498, !4499}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4487, file: !1306, line: 64, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!315, !4493, !1304}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4487, file: !1306, line: 66, baseType: !4490, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4487, file: !1306, line: 69, baseType: !543, size: 64, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4487, file: !1306, line: 70, baseType: !105, size: 32, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4487, file: !1306, line: 71, baseType: !23, size: 32, offset: 224)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4487, file: !1306, line: 74, baseType: !309, size: 128, offset: 256)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4487, file: !1306, line: 85, baseType: !4500, size: 64, offset: 384)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !736, file: !30, line: 1274, baseType: !324, size: 64, offset: 8576)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !736, file: !30, line: 1280, baseType: !324, size: 64, offset: 8640)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !736, file: !30, line: 1283, baseType: !105, size: 32, offset: 8704)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !736, file: !30, line: 1286, baseType: !2207, size: 32, offset: 8736)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !736, file: !30, line: 1289, baseType: !361, size: 64, offset: 8768)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !736, file: !30, line: 1290, baseType: !1165, size: 64, offset: 8832)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !736, file: !30, line: 1297, baseType: !1952, size: 64, offset: 8896)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !736, file: !30, line: 1304, baseType: !4509, size: 64, offset: 8960)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4510, line: 49, size: 64, elements: !4511)
!4510 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4511 = !{!4512}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4509, file: !4510, line: 50, baseType: !4513, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4510, line: 41, size: 512, align: 512, elements: !4515)
!4515 = !{!4516, !4517, !4522}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4514, file: !4510, line: 43, baseType: !266, size: 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4514, file: !4510, line: 45, baseType: !4518, size: 192, offset: 64)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4510, line: 29, size: 192, elements: !4519)
!4519 = !{!4520, !4521}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4518, file: !4510, line: 30, baseType: !309, size: 128)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4518, file: !4510, line: 32, baseType: !543, size: 64, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4514, file: !4510, line: 46, baseType: !543, size: 64, offset: 256)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !736, file: !30, line: 1305, baseType: !4509, size: 64, offset: 9024)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !736, file: !30, line: 1306, baseType: !1051, size: 128, align: 64, offset: 9088)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !736, file: !30, line: 1307, baseType: !321, size: 256, offset: 9216)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !736, file: !30, line: 1309, baseType: !842, size: 256, offset: 9472)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !736, file: !30, line: 1314, baseType: !105, size: 32, offset: 9728)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !736, file: !30, line: 1317, baseType: !266, size: 32, align: 512, offset: 10240)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !736, file: !30, line: 1318, baseType: !309, size: 128, offset: 10304)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !736, file: !30, line: 1320, baseType: !266, size: 32, offset: 10432)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !736, file: !30, line: 1321, baseType: !309, size: 128, offset: 10496)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !730, file: !731, line: 73, baseType: !105, size: 32, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !730, file: !731, line: 74, baseType: !4534, size: 64, offset: 192)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1802, line: 42, flags: DIFlagFwdDecl)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !684, file: !623, line: 141, baseType: !4538, size: 64, offset: 704)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!105, !1367, !391}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !684, file: !623, line: 142, baseType: !4542, size: 64, offset: 768)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!621, !621, !4545}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !622, file: !623, line: 96, baseType: !735, size: 64, offset: 832)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !622, file: !623, line: 97, baseType: !315, size: 64, offset: 896)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !622, file: !623, line: 98, baseType: !235, size: 64, offset: 960)
!4550 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !623, line: 100, baseType: !4551, size: 128, offset: 1024)
!4551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !623, line: 100, size: 128, elements: !4552)
!4552 = !{!4553, !4554}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4551, file: !623, line: 101, baseType: !309, size: 128)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4551, file: !623, line: 102, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !622, file: !623, line: 104, baseType: !309, size: 128, offset: 1152)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !622, file: !623, line: 105, baseType: !309, size: 128, offset: 1280)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !622, file: !623, line: 113, baseType: !4559, size: 128, offset: 1408)
!4559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !623, line: 109, size: 128, elements: !4560)
!4560 = !{!4561, !4562, !4563}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4559, file: !623, line: 110, baseType: !345, size: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4559, file: !623, line: 111, baseType: !637, size: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4559, file: !623, line: 112, baseType: !1051, size: 128, align: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !615, file: !30, line: 1968, baseType: !4565, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!470, !621, !586, !4568}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4570, line: 10, size: 128, elements: !4571)
!4570 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4571 = !{!4572, !4573}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4569, file: !4570, line: 11, baseType: !877, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4569, file: !4570, line: 12, baseType: !235, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !615, file: !30, line: 1969, baseType: !4575, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!105, !4534, !586, !105}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !615, file: !30, line: 1970, baseType: !4579, size: 64, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!609, !586, !105, !391}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !615, file: !30, line: 1972, baseType: !4583, size: 64, offset: 256)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!105, !621, !509, !105}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !615, file: !30, line: 1974, baseType: !4587, size: 64, offset: 320)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!105, !4534, !586, !621, !549, !391}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !615, file: !30, line: 1976, baseType: !4591, size: 64, offset: 384)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!105, !621, !586, !621}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !615, file: !30, line: 1977, baseType: !4595, size: 64, offset: 448)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!105, !586, !621}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !615, file: !30, line: 1978, baseType: !4599, size: 64, offset: 512)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!105, !4534, !586, !621, !470}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !615, file: !30, line: 1980, baseType: !4603, size: 64, offset: 576)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!105, !4534, !586, !621, !549}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !615, file: !30, line: 1982, baseType: !4595, size: 64, offset: 640)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !615, file: !30, line: 1983, baseType: !4608, size: 64, offset: 704)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!105, !4534, !586, !621, !549, !740}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !615, file: !30, line: 1985, baseType: !4612, size: 64, offset: 768)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!105, !4534, !586, !621, !586, !621, !23}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !615, file: !30, line: 1987, baseType: !4616, size: 64, offset: 832)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!105, !4534, !621, !4619}
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !30, line: 226, size: 640, elements: !4621)
!4621 = !{!4622, !4623, !4624, !4634, !4643, !4644, !4649, !4650, !4651}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4620, file: !30, line: 227, baseType: !23, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4620, file: !30, line: 228, baseType: !549, size: 16, offset: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, scope: !4620, file: !30, line: 241, baseType: !4625, size: 32, offset: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4620, file: !30, line: 241, size: 32, elements: !4626)
!4626 = !{!4627, !4628}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4625, file: !30, line: 242, baseType: !592, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4625, file: !30, line: 243, baseType: !4629, size: 32)
!4629 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4630, line: 16, baseType: !4631)
!4630 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4630, line: 14, size: 32, elements: !4632)
!4632 = !{!4633}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4631, file: !4630, line: 15, baseType: !597, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, scope: !4620, file: !30, line: 245, baseType: !4635, size: 32, offset: 96)
!4635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4620, file: !30, line: 245, size: 32, elements: !4636)
!4636 = !{!4637, !4638}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4635, file: !30, line: 246, baseType: !601, size: 32)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4635, file: !30, line: 247, baseType: !4639, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4630, line: 20, baseType: !4640)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4630, line: 18, size: 32, elements: !4641)
!4641 = !{!4642}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4640, file: !4630, line: 19, baseType: !605, size: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4620, file: !30, line: 249, baseType: !745, size: 64, offset: 128)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4620, file: !30, line: 250, baseType: !4645, size: 128, offset: 192)
!4645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1298, line: 13, size: 128, elements: !4646)
!4646 = !{!4647, !4648}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4645, file: !1298, line: 14, baseType: !1297, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4645, file: !1298, line: 15, baseType: !543, size: 64, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4620, file: !30, line: 251, baseType: !4645, size: 128, offset: 320)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4620, file: !30, line: 252, baseType: !4645, size: 128, offset: 448)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4620, file: !30, line: 259, baseType: !1708, size: 64, offset: 576)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !615, file: !30, line: 1988, baseType: !4653, size: 64, offset: 896)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!105, !4534, !1367, !4656, !358, !23}
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4658, line: 22, size: 1280, elements: !4659)
!4658 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4659 = !{!4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4657, file: !4658, line: 23, baseType: !358, size: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4657, file: !4658, line: 24, baseType: !549, size: 16, offset: 32)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4657, file: !4658, line: 25, baseType: !23, size: 32, offset: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4657, file: !4658, line: 26, baseType: !1840, size: 32, offset: 96)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4657, file: !4658, line: 27, baseType: !657, size: 64, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4657, file: !4658, line: 28, baseType: !657, size: 64, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4657, file: !4658, line: 41, baseType: !657, size: 64, offset: 256)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4657, file: !4658, line: 42, baseType: !740, size: 32, offset: 320)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4657, file: !4658, line: 43, baseType: !740, size: 32, offset: 352)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4657, file: !4658, line: 44, baseType: !592, size: 32, offset: 384)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4657, file: !4658, line: 45, baseType: !601, size: 32, offset: 416)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4657, file: !4658, line: 46, baseType: !745, size: 64, offset: 448)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4657, file: !4658, line: 47, baseType: !4645, size: 128, offset: 512)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4657, file: !4658, line: 48, baseType: !4645, size: 128, offset: 640)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4657, file: !4658, line: 49, baseType: !4645, size: 128, offset: 768)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4657, file: !4658, line: 50, baseType: !4645, size: 128, offset: 896)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4657, file: !4658, line: 51, baseType: !657, size: 64, offset: 1024)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4657, file: !4658, line: 52, baseType: !657, size: 64, offset: 1088)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4657, file: !4658, line: 53, baseType: !358, size: 32, offset: 1152)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4657, file: !4658, line: 54, baseType: !358, size: 32, offset: 1184)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4657, file: !4658, line: 55, baseType: !657, size: 64, offset: 1216)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !615, file: !30, line: 1990, baseType: !4682, size: 64, offset: 960)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!539, !621, !509, !554}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !615, file: !30, line: 1991, baseType: !4686, size: 64, offset: 1024)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!105, !586, !4689, !657, !657}
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !30, line: 55, flags: DIFlagFwdDecl)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !615, file: !30, line: 1993, baseType: !4692, size: 64, offset: 1088)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!105, !586, !105}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !615, file: !30, line: 1994, baseType: !4696, size: 64, offset: 1152)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!105, !586, !621, !1708, !23, !549}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !615, file: !30, line: 1997, baseType: !4700, size: 64, offset: 1216)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!105, !4534, !586, !1708, !549}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !615, file: !30, line: 1999, baseType: !4704, size: 64, offset: 1280)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!609, !4534, !621, !105}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !615, file: !30, line: 2001, baseType: !4708, size: 64, offset: 1344)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!105, !4534, !621, !609, !105}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !615, file: !30, line: 2003, baseType: !4712, size: 64, offset: 1408)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!105, !4534, !621, !4715}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !30, line: 76, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !615, file: !30, line: 2005, baseType: !4718, size: 64, offset: 1472)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!105, !621, !4715}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !615, file: !30, line: 2006, baseType: !4722, size: 64, offset: 1536)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!4725, !586}
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !30, line: 3192, size: 192, elements: !4727)
!4727 = !{!4728, !4729}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4726, file: !30, line: 3193, baseType: !1498, size: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4726, file: !30, line: 3194, baseType: !358, size: 32, offset: 128)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !587, file: !30, line: 655, baseType: !735, size: 64, offset: 448)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !587, file: !30, line: 656, baseType: !582, size: 64, offset: 512)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !587, file: !30, line: 659, baseType: !235, size: 64, offset: 576)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !587, file: !30, line: 663, baseType: !315, size: 64, offset: 640)
!4734 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !30, line: 671, baseType: !4735, size: 32, offset: 704)
!4735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !30, line: 671, size: 32, elements: !4736)
!4736 = !{!4737, !4739}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4735, file: !30, line: 672, baseType: !4738, size: 32)
!4738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4735, file: !30, line: 673, baseType: !23, size: 32)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !587, file: !30, line: 675, baseType: !740, size: 32, offset: 736)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !587, file: !30, line: 676, baseType: !745, size: 64, offset: 768)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !587, file: !30, line: 677, baseType: !4645, size: 128, offset: 832)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !587, file: !30, line: 678, baseType: !4645, size: 128, offset: 960)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !587, file: !30, line: 679, baseType: !4645, size: 128, offset: 1088)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !587, file: !30, line: 680, baseType: !266, size: 32, offset: 1216)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !587, file: !30, line: 681, baseType: !306, size: 16, offset: 1248)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !587, file: !30, line: 682, baseType: !295, size: 8, offset: 1264)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !587, file: !30, line: 683, baseType: !295, size: 8, offset: 1272)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !587, file: !30, line: 684, baseType: !1445, size: 64, offset: 1280)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !587, file: !30, line: 691, baseType: !315, size: 64, offset: 1344)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !587, file: !30, line: 692, baseType: !1457, size: 320, offset: 1408)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !587, file: !30, line: 694, baseType: !315, size: 64, offset: 1728)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !587, file: !30, line: 695, baseType: !315, size: 64, offset: 1792)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !587, file: !30, line: 697, baseType: !345, size: 128, offset: 1856)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !587, file: !30, line: 698, baseType: !309, size: 128, offset: 1984)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !587, file: !30, line: 707, baseType: !309, size: 128, offset: 2112)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !587, file: !30, line: 708, baseType: !309, size: 128, offset: 2240)
!4758 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !30, line: 709, baseType: !4759, size: 128, offset: 2368)
!4759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !30, line: 709, size: 128, elements: !4760)
!4760 = !{!4761, !4762}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4759, file: !30, line: 710, baseType: !1165, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4759, file: !30, line: 711, baseType: !1051, size: 128, align: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !587, file: !30, line: 713, baseType: !326, size: 64, offset: 2496)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !587, file: !30, line: 714, baseType: !326, size: 64, offset: 2560)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !587, file: !30, line: 715, baseType: !286, size: 32, offset: 2624)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !587, file: !30, line: 716, baseType: !286, size: 32, offset: 2656)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !587, file: !30, line: 717, baseType: !286, size: 32, offset: 2688)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !587, file: !30, line: 719, baseType: !286, size: 32, offset: 2720)
!4769 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !30, line: 721, baseType: !4770, size: 64, offset: 2752)
!4770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !30, line: 721, size: 64, elements: !4771)
!4771 = !{!4772, !4773}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4770, file: !30, line: 722, baseType: !1983, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4770, file: !30, line: 723, baseType: !1188, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !587, file: !30, line: 725, baseType: !4775, size: 64, offset: 2816)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !30, line: 725, flags: DIFlagFwdDecl)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !587, file: !30, line: 726, baseType: !583, size: 1536, align: 64, offset: 2880)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !587, file: !30, line: 727, baseType: !309, size: 128, offset: 4416)
!4779 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !30, line: 728, baseType: !4780, size: 64, offset: 4544)
!4780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !30, line: 728, size: 64, elements: !4781)
!4781 = !{!4782, !4783, !4786, !4787}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4780, file: !30, line: 729, baseType: !2157, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4780, file: !30, line: 730, baseType: !4784, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !30, line: 730, flags: DIFlagFwdDecl)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4780, file: !30, line: 731, baseType: !509, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4780, file: !30, line: 732, baseType: !23, size: 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !587, file: !30, line: 735, baseType: !359, size: 32, offset: 4608)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !587, file: !30, line: 738, baseType: !359, size: 32, offset: 4640)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !587, file: !30, line: 739, baseType: !4472, size: 64, offset: 4672)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !587, file: !30, line: 750, baseType: !235, size: 64, offset: 4736)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !583, file: !30, line: 474, baseType: !1498, size: 128, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !583, file: !30, line: 475, baseType: !1457, size: 320, offset: 192)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !583, file: !30, line: 476, baseType: !1309, size: 32, offset: 512)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !583, file: !30, line: 477, baseType: !286, size: 32, offset: 544)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !583, file: !30, line: 482, baseType: !2976, size: 128, offset: 576)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !583, file: !30, line: 483, baseType: !315, size: 64, offset: 704)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !583, file: !30, line: 484, baseType: !315, size: 64, offset: 768)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !583, file: !30, line: 485, baseType: !4800, size: 64, offset: 832)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4802)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !30, line: 404, size: 1280, elements: !4803)
!4803 = !{!4804, !4808, !4878, !4882, !4886, !4892, !4896, !4900, !4904, !4908, !4912, !4916, !4917, !4921, !4925, !4929, !4934, !4938, !4944, !4945}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4802, file: !30, line: 405, baseType: !4805, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!105, !1558, !1200}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4802, file: !30, line: 406, baseType: !4809, size: 64, offset: 64)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!105, !1708, !4812}
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !57, line: 293, size: 1536, elements: !4814)
!4814 = !{!4815, !4845, !4859}
!4815 = !DIDerivedType(tag: DW_TAG_member, scope: !4813, file: !57, line: 295, baseType: !4816, size: 512)
!4816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4813, file: !57, line: 295, size: 512, elements: !4817)
!4817 = !{!4818, !4844}
!4818 = !DIDerivedType(tag: DW_TAG_member, scope: !4816, file: !57, line: 296, baseType: !4819, size: 448)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4816, file: !57, line: 296, size: 448, elements: !4820)
!4820 = !{!4821, !4822, !4831, !4832, !4833, !4842, !4843}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4819, file: !57, line: 298, baseType: !315, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, scope: !4819, file: !57, line: 299, baseType: !4823, size: 128, offset: 64)
!4823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4819, file: !57, line: 299, size: 128, elements: !4824)
!4824 = !{!4825, !4826}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4823, file: !57, line: 300, baseType: !309, size: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, scope: !4823, file: !57, line: 302, baseType: !4827, size: 128)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4823, file: !57, line: 302, size: 128, elements: !4828)
!4828 = !{!4829, !4830}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4827, file: !57, line: 303, baseType: !235, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4827, file: !57, line: 305, baseType: !23, size: 32, offset: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4819, file: !57, line: 310, baseType: !582, size: 64, offset: 192)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4819, file: !57, line: 311, baseType: !315, size: 64, offset: 256)
!4833 = !DIDerivedType(tag: DW_TAG_member, scope: !4819, file: !57, line: 312, baseType: !4834, size: 64, offset: 320)
!4834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4819, file: !57, line: 312, size: 64, elements: !4835)
!4835 = !{!4836, !4837}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4834, file: !57, line: 313, baseType: !235, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4834, file: !57, line: 314, baseType: !4838, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !57, line: 257, baseType: !4839)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 255, size: 64, elements: !4840)
!4840 = !{!4841}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4839, file: !57, line: 256, baseType: !315, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4819, file: !57, line: 316, baseType: !286, size: 32, offset: 384)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4819, file: !57, line: 317, baseType: !286, size: 32, offset: 416)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4816, file: !57, line: 323, baseType: !1559, size: 512, align: 128)
!4845 = !DIDerivedType(tag: DW_TAG_member, scope: !4813, file: !57, line: 325, baseType: !4846, size: 512, offset: 512)
!4846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4813, file: !57, line: 325, size: 512, elements: !4847)
!4847 = !{!4848, !4858}
!4848 = !DIDerivedType(tag: DW_TAG_member, scope: !4846, file: !57, line: 326, baseType: !4849, size: 320)
!4849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4846, file: !57, line: 326, size: 320, elements: !4850)
!4850 = !{!4851, !4852, !4853, !4854, !4855, !4856, !4857}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4849, file: !57, line: 327, baseType: !315, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4849, file: !57, line: 328, baseType: !315, size: 64, offset: 64)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4849, file: !57, line: 329, baseType: !315, size: 64, offset: 128)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4849, file: !57, line: 331, baseType: !286, size: 32, offset: 192)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4849, file: !57, line: 332, baseType: !286, size: 32, offset: 224)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4849, file: !57, line: 333, baseType: !286, size: 32, offset: 256)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4849, file: !57, line: 335, baseType: !23, size: 32, offset: 288)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4846, file: !57, line: 339, baseType: !1559, size: 512, align: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, scope: !4813, file: !57, line: 341, baseType: !4860, size: 512, offset: 1024)
!4860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4813, file: !57, line: 341, size: 512, elements: !4861)
!4861 = !{!4862, !4871, !4877}
!4862 = !DIDerivedType(tag: DW_TAG_member, scope: !4860, file: !57, line: 342, baseType: !4863, size: 384)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4860, file: !57, line: 342, size: 384, elements: !4864)
!4864 = !{!4865, !4866, !4867, !4868, !4869, !4870}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4863, file: !57, line: 343, baseType: !315, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4863, file: !57, line: 344, baseType: !315, size: 64, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4863, file: !57, line: 346, baseType: !235, size: 64, offset: 128)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4863, file: !57, line: 347, baseType: !235, size: 64, offset: 192)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4863, file: !57, line: 348, baseType: !235, size: 64, offset: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4863, file: !57, line: 349, baseType: !235, size: 64, offset: 320)
!4871 = !DIDerivedType(tag: DW_TAG_member, scope: !4860, file: !57, line: 352, baseType: !4872, size: 256)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4860, file: !57, line: 352, size: 256, elements: !4873)
!4873 = !{!4874, !4875, !4876}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4872, file: !57, line: 353, baseType: !315, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4872, file: !57, line: 354, baseType: !315, size: 64, offset: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4872, file: !57, line: 356, baseType: !309, size: 128, offset: 128)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4860, file: !57, line: 359, baseType: !1559, size: 512, align: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4802, file: !30, line: 409, baseType: !4879, size: 64, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!105, !582, !1200}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4802, file: !30, line: 412, baseType: !4883, size: 64, offset: 192)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!391, !582, !4812}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4802, file: !30, line: 414, baseType: !4887, size: 64, offset: 256)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{null, !4890}
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !30, line: 310, flags: DIFlagFwdDecl)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4802, file: !30, line: 416, baseType: !4893, size: 64, offset: 320)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!105, !1708, !582, !745, !23, !4221, !2172}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4802, file: !30, line: 419, baseType: !4897, size: 64, offset: 384)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!105, !1708, !582, !745, !23, !23, !1558, !235}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4802, file: !30, line: 424, baseType: !4901, size: 64, offset: 448)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!1484, !582, !1484}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4802, file: !30, line: 425, baseType: !4905, size: 64, offset: 512)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{null, !4812, !554, !554}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4802, file: !30, line: 426, baseType: !4909, size: 64, offset: 576)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!391, !4812, !1309}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4802, file: !30, line: 427, baseType: !4913, size: 64, offset: 640)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{null, !4812}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4802, file: !30, line: 428, baseType: !2002, size: 64, offset: 704)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4802, file: !30, line: 433, baseType: !4918, size: 64, offset: 768)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!105, !582, !4812, !4812, !156}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4802, file: !30, line: 435, baseType: !4922, size: 64, offset: 832)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!105, !4812}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4802, file: !30, line: 436, baseType: !4926, size: 64, offset: 896)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!391, !4812, !554, !554}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4802, file: !30, line: 438, baseType: !4930, size: 64, offset: 960)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{null, !4812, !4933, !4933}
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4802, file: !30, line: 439, baseType: !4935, size: 64, offset: 1024)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!105, !582, !1558}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4802, file: !30, line: 442, baseType: !4939, size: 64, offset: 1088)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!105, !4942, !1708, !2631}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !30, line: 66, flags: DIFlagFwdDecl)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4802, file: !30, line: 444, baseType: !2164, size: 64, offset: 1152)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4802, file: !30, line: 445, baseType: !4946, size: 64, offset: 1216)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!105, !2005, !2027}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !30, line: 486, baseType: !315, size: 64, offset: 896)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !583, file: !30, line: 487, baseType: !1457, size: 320, offset: 960)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !583, file: !30, line: 488, baseType: !2207, size: 32, offset: 1280)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !583, file: !30, line: 489, baseType: !266, size: 32, offset: 1312)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !583, file: !30, line: 490, baseType: !309, size: 128, offset: 1344)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !583, file: !30, line: 491, baseType: !235, size: 64, offset: 1472)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !573, file: !533, line: 180, baseType: !4956, size: 64, offset: 320)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!539, !1708, !474, !572, !509, !745, !554}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !573, file: !533, line: 182, baseType: !4956, size: 64, offset: 384)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !573, file: !533, line: 184, baseType: !4961, size: 64, offset: 448)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!105, !1708, !474, !572, !1668}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !561, file: !533, line: 90, baseType: !4965, size: 64, offset: 192)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !561, file: !533, line: 91, baseType: !4967, size: 64, offset: 256)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !523, file: !467, line: 120, baseType: !4969, size: 64, offset: 192)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!3216, !492}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !523, file: !467, line: 121, baseType: !4973, size: 64, offset: 256)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!2298, !492}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !523, file: !467, line: 122, baseType: !4977, size: 64, offset: 320)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{null, !492, !2748, !2749}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !466, file: !467, line: 70, baseType: !4981, size: 64, offset: 384)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4983, line: 190, size: 1152, elements: !4984)
!4983 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4984 = !{!4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !5076, !5077, !5078, !5079, !5080, !5083}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4982, file: !4983, line: 191, baseType: !286, size: 32)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4982, file: !4983, line: 192, baseType: !286, size: 32, offset: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4982, file: !4983, line: 202, baseType: !4981, size: 64, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4982, file: !4983, line: 203, baseType: !470, size: 64, offset: 128)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4982, file: !4983, line: 205, baseType: !943, size: 192, align: 64, offset: 192)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4982, file: !4983, line: 207, baseType: !2298, size: 64, offset: 384)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4982, file: !4983, line: 208, baseType: !23, size: 32, offset: 448)
!4992 = !DIDerivedType(tag: DW_TAG_member, scope: !4982, file: !4983, line: 209, baseType: !4993, size: 256, offset: 512)
!4993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4982, file: !4983, line: 209, size: 256, elements: !4994)
!4994 = !{!4995, !5004, !5008}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4993, file: !4983, line: 210, baseType: !4996, size: 256)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4983, line: 153, size: 256, elements: !4997)
!4997 = !{!4998, !4999, !5000, !5003}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4996, file: !4983, line: 154, baseType: !315, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4996, file: !4983, line: 156, baseType: !2979, size: 64, offset: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4996, file: !4983, line: 162, baseType: !5001, size: 64, offset: 128)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4983, line: 162, flags: DIFlagFwdDecl)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4996, file: !4983, line: 167, baseType: !315, size: 64, offset: 192)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4993, file: !4983, line: 211, baseType: !5005, size: 64)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4983, line: 170, size: 64, elements: !5006)
!5006 = !{!5007}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5005, file: !4983, line: 171, baseType: !4981, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4993, file: !4983, line: 212, baseType: !5009, size: 256)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4983, line: 174, size: 256, elements: !5010)
!5010 = !{!5011, !5071, !5074, !5075}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5009, file: !4983, line: 175, baseType: !5012, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5014)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4983, line: 271, size: 768, elements: !5015)
!5015 = !{!5016, !5036, !5040, !5044, !5048, !5052, !5056, !5060, !5061, !5062, !5063, !5067}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5014, file: !4983, line: 276, baseType: !5017, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!105, !5020}
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4983, line: 251, size: 1216, elements: !5022)
!5022 = !{!5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5021, file: !4983, line: 253, baseType: !4981, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5021, file: !4983, line: 254, baseType: !1708, size: 64, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5021, file: !4983, line: 255, baseType: !1237, size: 64, offset: 128)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5021, file: !4983, line: 256, baseType: !235, size: 64, offset: 192)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5021, file: !4983, line: 259, baseType: !842, size: 256, offset: 256)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5021, file: !4983, line: 260, baseType: !842, size: 256, offset: 512)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5021, file: !4983, line: 261, baseType: !105, size: 32, offset: 768)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5021, file: !4983, line: 262, baseType: !309, size: 128, offset: 832)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5021, file: !4983, line: 263, baseType: !509, size: 64, offset: 960)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5021, file: !4983, line: 265, baseType: !554, size: 64, offset: 1024)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5021, file: !4983, line: 266, baseType: !391, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5021, file: !4983, line: 267, baseType: !391, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5021, file: !4983, line: 268, baseType: !2367, size: 64, offset: 1152)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5014, file: !4983, line: 277, baseType: !5037, size: 64, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{null, !5020}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5014, file: !4983, line: 290, baseType: !5041, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!105, !1237, !235}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5014, file: !4983, line: 292, baseType: !5045, size: 64, offset: 192)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!235, !1237, !1996}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5014, file: !4983, line: 293, baseType: !5049, size: 64, offset: 256)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!235, !1237, !235, !1996}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5014, file: !4983, line: 294, baseType: !5053, size: 64, offset: 320)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{null, !1237, !235}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5014, file: !4983, line: 296, baseType: !5057, size: 64, offset: 384)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!539, !5020, !509, !554, !745}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5014, file: !4983, line: 306, baseType: !554, size: 64, offset: 448)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5014, file: !4983, line: 313, baseType: !391, size: 8, offset: 512)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5014, file: !4983, line: 314, baseType: !5057, size: 64, offset: 576)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5014, file: !4983, line: 317, baseType: !5064, size: 64, offset: 640)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!2109, !5020, !2111}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5014, file: !4983, line: 320, baseType: !5068, size: 64, offset: 704)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!105, !5020, !1668}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5009, file: !4983, line: 176, baseType: !5072, size: 64, offset: 64)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4983, line: 35, flags: DIFlagFwdDecl)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5009, file: !4983, line: 177, baseType: !745, size: 64, offset: 128)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5009, file: !4983, line: 178, baseType: !4981, size: 64, offset: 192)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4982, file: !4983, line: 215, baseType: !235, size: 64, offset: 768)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4982, file: !4983, line: 221, baseType: !657, size: 64, offset: 832)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4982, file: !4983, line: 223, baseType: !306, size: 16, offset: 896)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4982, file: !4983, line: 224, baseType: !549, size: 16, offset: 912)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4982, file: !4983, line: 225, baseType: !5081, size: 64, offset: 960)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4983, line: 36, flags: DIFlagFwdDecl)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4982, file: !4983, line: 227, baseType: !1051, size: 128, align: 64, offset: 1024)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !466, file: !467, line: 71, baseType: !5085, size: 32, offset: 448)
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5086, line: 19, size: 32, elements: !5087)
!5086 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5087 = !{!5088}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5085, file: !5086, line: 20, baseType: !1758, size: 32)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !466, file: !467, line: 73, baseType: !23, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !466, file: !467, line: 74, baseType: !23, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !466, file: !467, line: 75, baseType: !23, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !466, file: !467, line: 76, baseType: !23, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !466, file: !467, line: 77, baseType: !23, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !260, file: !164, line: 422, baseType: !621, size: 64, offset: 3648)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !260, file: !164, line: 424, baseType: !621, size: 64, offset: 3712)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !260, file: !164, line: 431, baseType: !309, size: 128, offset: 3776)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !252, file: !164, line: 85, baseType: !1520, size: 32, offset: 192)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !252, file: !164, line: 86, baseType: !5099, size: 32, offset: 224)
!5099 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !164, line: 27, baseType: !359)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !252, file: !164, line: 88, baseType: !105, size: 32, offset: 256)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !252, file: !164, line: 89, baseType: !105, size: 32, offset: 288)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !252, file: !164, line: 91, baseType: !23, size: 32, offset: 320)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !252, file: !164, line: 94, baseType: !23, size: 32, offset: 352)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !252, file: !164, line: 95, baseType: !1484, size: 64, offset: 384)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !252, file: !164, line: 97, baseType: !1514, size: 64, offset: 448)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !252, file: !164, line: 98, baseType: !1514, size: 64, offset: 512)
!5107 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !164, line: 100, baseType: !5108, size: 128, offset: 576)
!5108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !164, line: 100, size: 128, elements: !5109)
!5109 = !{!5110, !5111}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !5108, file: !164, line: 101, baseType: !309, size: 128)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !5108, file: !164, line: 102, baseType: !251, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !252, file: !164, line: 105, baseType: !1479, size: 64, offset: 704)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !252, file: !164, line: 108, baseType: !657, size: 64, offset: 768)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !252, file: !164, line: 111, baseType: !657, size: 64, offset: 832)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !252, file: !164, line: 113, baseType: !657, size: 64, offset: 896)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !252, file: !164, line: 123, baseType: !306, size: 16, offset: 960)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !252, file: !164, line: 129, baseType: !306, size: 16, offset: 976)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !252, file: !164, line: 140, baseType: !306, size: 16, offset: 992)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !252, file: !164, line: 142, baseType: !163, size: 32, offset: 1024)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !252, file: !164, line: 143, baseType: !286, size: 32, offset: 1056)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !252, file: !164, line: 145, baseType: !315, size: 64, offset: 1088)
!5122 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !164, line: 154, baseType: !5123, size: 128, offset: 1152)
!5123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !164, line: 154, size: 128, elements: !5124)
!5124 = !{!5125, !5126}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5123, file: !164, line: 155, baseType: !345, size: 128)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !5123, file: !164, line: 156, baseType: !1715, size: 64)
!5127 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !164, line: 165, baseType: !5128, size: 192, offset: 1280)
!5128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !164, line: 165, size: 192, elements: !5129)
!5129 = !{!5130, !5131}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !5128, file: !164, line: 166, baseType: !943, size: 192, align: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !5128, file: !164, line: 167, baseType: !1555, size: 128)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !252, file: !164, line: 177, baseType: !5133, size: 192, offset: 1472)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !164, line: 174, size: 192, elements: !5134)
!5134 = !{!5135, !5152}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !5133, file: !164, line: 175, baseType: !5136, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3951, line: 73, size: 448, elements: !5138)
!5138 = !{!5139, !5140, !5141, !5146, !5151}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !5137, file: !3951, line: 74, baseType: !247, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !5137, file: !3951, line: 75, baseType: !3949, size: 64, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, scope: !5137, file: !3951, line: 83, baseType: !5142, size: 128, offset: 128)
!5142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5137, file: !3951, line: 83, size: 128, elements: !5143)
!5143 = !{!5144, !5145}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !5142, file: !3951, line: 84, baseType: !309, size: 128)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !5142, file: !3951, line: 85, baseType: !2507, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, scope: !5137, file: !3951, line: 87, baseType: !5147, size: 128, offset: 256)
!5147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5137, file: !3951, line: 87, size: 128, elements: !5148)
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !5147, file: !3951, line: 88, baseType: !345, size: 128)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !5147, file: !3951, line: 89, baseType: !1051, size: 128, align: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5137, file: !3951, line: 92, baseType: !23, size: 32, offset: 384)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5133, file: !164, line: 176, baseType: !5153, size: 128, offset: 64)
!5153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !950)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !252, file: !164, line: 182, baseType: !5155, size: 128, offset: 1664)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !164, line: 179, size: 128, elements: !5156)
!5156 = !{!5157, !5158}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5155, file: !164, line: 180, baseType: !23, size: 32)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !5155, file: !164, line: 181, baseType: !5159, size: 64, offset: 64)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !164, line: 23, baseType: !5161)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!169, !251, !1524}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !252, file: !164, line: 184, baseType: !657, size: 64, offset: 1792)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !252, file: !164, line: 189, baseType: !5159, size: 64, offset: 1856)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !252, file: !164, line: 190, baseType: !235, size: 64, offset: 1920)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !248, file: !73, line: 393, baseType: !5167, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !73, line: 30, flags: DIFlagFwdDecl)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !248, file: !73, line: 395, baseType: !1622, size: 128, offset: 128)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !248, file: !73, line: 397, baseType: !5171, size: 64, offset: 256)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !73, line: 39, flags: DIFlagFwdDecl)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !248, file: !73, line: 398, baseType: !5174, size: 64, offset: 320)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !73, line: 38, flags: DIFlagFwdDecl)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !248, file: !73, line: 399, baseType: !842, size: 256, offset: 384)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !248, file: !73, line: 401, baseType: !5178, size: 64, offset: 640)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5180)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !164, line: 537, size: 1152, elements: !5181)
!5181 = !{!5182, !5192, !5196, !5200, !5204, !5208, !5212, !5216, !5220, !5224, !5228, !5232, !5236, !5266, !5270, !5271, !5275, !5279}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !5180, file: !164, line: 541, baseType: !5183, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!1524, !259, !5186}
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5188)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !164, line: 526, size: 128, elements: !5189)
!5189 = !{!5190, !5191}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !5188, file: !164, line: 527, baseType: !251, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5188, file: !164, line: 528, baseType: !391, size: 8, offset: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !5180, file: !164, line: 551, baseType: !5193, size: 64, offset: 64)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{null, !259}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !5180, file: !164, line: 559, baseType: !5197, size: 64, offset: 128)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{null, !454}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !5180, file: !164, line: 567, baseType: !5201, size: 64, offset: 192)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!105, !247}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !5180, file: !164, line: 572, baseType: !5205, size: 64, offset: 256)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{null, !247, !105}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !5180, file: !164, line: 577, baseType: !5209, size: 64, offset: 320)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{null, !251, !105}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !5180, file: !164, line: 581, baseType: !5213, size: 64, offset: 384)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!105, !251}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5180, file: !164, line: 586, baseType: !5217, size: 64, offset: 448)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!173, !251}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5180, file: !164, line: 591, baseType: !5221, size: 64, offset: 512)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!105, !259, !2083}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5180, file: !164, line: 596, baseType: !5225, size: 64, offset: 576)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{null, !251}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !5180, file: !164, line: 603, baseType: !5229, size: 64, offset: 640)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!105, !259, !235, !23}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !5180, file: !164, line: 607, baseType: !5233, size: 64, offset: 704)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !259, !23}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !5180, file: !164, line: 616, baseType: !5237, size: 64, offset: 768)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!105, !5240, !251, !23, !23}
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !164, line: 498, size: 1344, elements: !5242)
!5242 = !{!5243, !5244, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5262, !5263, !5264, !5265}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5241, file: !164, line: 499, baseType: !5178, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5241, file: !164, line: 500, baseType: !5245, size: 384, offset: 64)
!5245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5246, size: 384, elements: !15)
!5246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !164, line: 444, size: 128, elements: !5247)
!5247 = !{!5248, !5249, !5250}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !5246, file: !164, line: 445, baseType: !402, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !5246, file: !164, line: 446, baseType: !23, size: 32, offset: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !5246, file: !164, line: 447, baseType: !23, size: 32, offset: 96)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !5241, file: !164, line: 501, baseType: !23, size: 32, offset: 448)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !5241, file: !164, line: 502, baseType: !23, size: 32, offset: 480)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !5241, file: !164, line: 503, baseType: !23, size: 32, offset: 512)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !5241, file: !164, line: 504, baseType: !23, size: 32, offset: 544)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !5241, file: !164, line: 505, baseType: !23, size: 32, offset: 576)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !5241, file: !164, line: 506, baseType: !105, size: 32, offset: 608)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5241, file: !164, line: 507, baseType: !23, size: 32, offset: 640)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5241, file: !164, line: 508, baseType: !23, size: 32, offset: 672)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5241, file: !164, line: 509, baseType: !235, size: 64, offset: 704)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !5241, file: !164, line: 511, baseType: !5261, size: 64, offset: 768)
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !5241, file: !164, line: 513, baseType: !426, size: 64, offset: 832)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !5241, file: !164, line: 515, baseType: !842, size: 256, offset: 896)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !5241, file: !164, line: 516, baseType: !309, size: 128, offset: 1152)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !5241, file: !164, line: 517, baseType: !1031, size: 64, offset: 1280)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !5180, file: !164, line: 621, baseType: !5267, size: 64, offset: 832)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{null, !5240, !251, !23}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !5180, file: !164, line: 628, baseType: !5225, size: 64, offset: 896)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !5180, file: !164, line: 633, baseType: !5272, size: 64, offset: 960)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!391, !247}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !5180, file: !164, line: 639, baseType: !5276, size: 64, offset: 1024)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{null, !5240}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !5180, file: !164, line: 646, baseType: !5280, size: 64, offset: 1088)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{null, !1237, !251}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !248, file: !73, line: 404, baseType: !256, size: 64, offset: 704)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !248, file: !73, line: 406, baseType: !23, size: 32, offset: 768)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !248, file: !73, line: 409, baseType: !1498, size: 128, offset: 832)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !248, file: !73, line: 410, baseType: !23, size: 32, offset: 960)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !248, file: !73, line: 416, baseType: !235, size: 64, offset: 1024)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !248, file: !73, line: 421, baseType: !315, size: 64, offset: 1088)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !248, file: !73, line: 426, baseType: !286, size: 32, offset: 1152)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !248, file: !73, line: 432, baseType: !105, size: 32, offset: 1184)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !248, file: !73, line: 434, baseType: !266, size: 32, offset: 1216)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !248, file: !73, line: 436, baseType: !1487, size: 64, offset: 1280)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !248, file: !73, line: 438, baseType: !1758, size: 32, offset: 1344)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !248, file: !73, line: 443, baseType: !474, size: 64, offset: 1408)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !248, file: !73, line: 450, baseType: !2726, size: 64, offset: 1472)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !248, file: !73, line: 451, baseType: !104, size: 32, offset: 1536)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !248, file: !73, line: 457, baseType: !315, size: 64, offset: 1600)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !248, file: !73, line: 459, baseType: !23, size: 32, offset: 1664)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !248, file: !73, line: 466, baseType: !23, size: 32, offset: 1696)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !248, file: !73, line: 468, baseType: !341, size: 320, offset: 1728)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !248, file: !73, line: 469, baseType: !321, size: 256, offset: 2048)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !248, file: !73, line: 471, baseType: !286, size: 32, offset: 2304)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !248, file: !73, line: 473, baseType: !426, size: 64, offset: 2368)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !248, file: !73, line: 475, baseType: !309, size: 128, offset: 2432)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !248, file: !73, line: 477, baseType: !371, size: 64, offset: 2560)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !248, file: !73, line: 478, baseType: !1541, size: 64, offset: 2624)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !248, file: !73, line: 479, baseType: !309, size: 128, offset: 2688)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !248, file: !73, line: 480, baseType: !842, size: 256, offset: 2816)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !248, file: !73, line: 483, baseType: !5310, size: 960, offset: 3072)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !73, line: 300, size: 960, elements: !5311)
!5311 = !{!5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !5310, file: !73, line: 301, baseType: !177, size: 32)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !5310, file: !73, line: 302, baseType: !315, size: 64, offset: 64)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !5310, file: !73, line: 303, baseType: !315, size: 64, offset: 128)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !5310, file: !73, line: 305, baseType: !23, size: 32, offset: 192)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !5310, file: !73, line: 306, baseType: !23, size: 32, offset: 224)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !5310, file: !73, line: 307, baseType: !23, size: 32, offset: 256)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !5310, file: !73, line: 308, baseType: !23, size: 32, offset: 288)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !5310, file: !73, line: 309, baseType: !23, size: 32, offset: 320)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5310, file: !73, line: 310, baseType: !23, size: 32, offset: 352)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !5310, file: !73, line: 311, baseType: !23, size: 32, offset: 384)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !5310, file: !73, line: 312, baseType: !23, size: 32, offset: 416)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !5310, file: !73, line: 313, baseType: !23, size: 32, offset: 448)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !5310, file: !73, line: 314, baseType: !23, size: 32, offset: 480)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !5310, file: !73, line: 315, baseType: !23, size: 32, offset: 512)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !5310, file: !73, line: 316, baseType: !23, size: 32, offset: 544)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !5310, file: !73, line: 317, baseType: !23, size: 32, offset: 576)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !5310, file: !73, line: 318, baseType: !23, size: 32, offset: 608)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !5310, file: !73, line: 319, baseType: !23, size: 32, offset: 640)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !5310, file: !73, line: 320, baseType: !23, size: 32, offset: 672)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !5310, file: !73, line: 321, baseType: !23, size: 32, offset: 704)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !5310, file: !73, line: 322, baseType: !23, size: 32, offset: 736)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !5310, file: !73, line: 323, baseType: !23, size: 32, offset: 768)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !5310, file: !73, line: 325, baseType: !306, size: 16, offset: 800)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !5310, file: !73, line: 326, baseType: !306, size: 16, offset: 816)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !5310, file: !73, line: 327, baseType: !306, size: 16, offset: 832)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !5310, file: !73, line: 329, baseType: !207, size: 8, offset: 848)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !5310, file: !73, line: 330, baseType: !207, size: 8, offset: 856)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !5310, file: !73, line: 331, baseType: !207, size: 8, offset: 864)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !5310, file: !73, line: 332, baseType: !181, size: 32, offset: 896)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !5310, file: !73, line: 339, baseType: !23, size: 32, offset: 928)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !248, file: !73, line: 485, baseType: !23, size: 32, offset: 4032)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !248, file: !73, line: 487, baseType: !105, size: 32, offset: 4064)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !248, file: !73, line: 489, baseType: !5345, size: 64, offset: 4096)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !73, line: 31, flags: DIFlagFwdDecl)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !248, file: !73, line: 494, baseType: !380, size: 64, offset: 4160)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !248, file: !73, line: 495, baseType: !309, size: 128, offset: 4224)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !248, file: !73, line: 497, baseType: !309, size: 128, offset: 4352)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !248, file: !73, line: 498, baseType: !266, size: 32, offset: 4480)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !248, file: !73, line: 499, baseType: !317, size: 704, offset: 4544)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !248, file: !73, line: 501, baseType: !842, size: 256, offset: 5248)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !248, file: !73, line: 502, baseType: !842, size: 256, offset: 5504)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !248, file: !73, line: 508, baseType: !309, size: 128, offset: 5760)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !248, file: !73, line: 509, baseType: !266, size: 32, offset: 5888)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !248, file: !73, line: 511, baseType: !105, size: 32, offset: 5920)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !248, file: !73, line: 517, baseType: !1051, size: 128, align: 64, offset: 5952)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !248, file: !73, line: 518, baseType: !443, size: 192, offset: 6080)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !248, file: !73, line: 523, baseType: !842, size: 256, offset: 6272)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !248, file: !73, line: 525, baseType: !105, size: 32, offset: 6528)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !248, file: !73, line: 527, baseType: !5240, size: 64, offset: 6592)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !248, file: !73, line: 528, baseType: !309, size: 128, offset: 6656)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !248, file: !73, line: 530, baseType: !621, size: 64, offset: 6784)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !248, file: !73, line: 531, baseType: !621, size: 64, offset: 6848)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !248, file: !73, line: 532, baseType: !621, size: 64, offset: 6912)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !248, file: !73, line: 536, baseType: !842, size: 256, offset: 6976)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !248, file: !73, line: 538, baseType: !391, size: 8, offset: 7232)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !241, file: !187, line: 108, baseType: !309, size: 128, offset: 128)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "same_target_siblings", scope: !241, file: !187, line: 109, baseType: !309, size: 128, offset: 256)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "budget_map", scope: !241, file: !187, line: 111, baseType: !384, size: 256, offset: 384)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "device_blocked", scope: !241, file: !187, line: 112, baseType: !286, size: 32, offset: 640)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "restarts", scope: !241, file: !187, line: 114, baseType: !286, size: 32, offset: 672)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !241, file: !187, line: 115, baseType: !266, size: 32, offset: 704)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "starved_entry", scope: !241, file: !187, line: 116, baseType: !309, size: 128, offset: 768)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !241, file: !187, line: 117, baseType: !306, size: 16, offset: 896)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "max_queue_depth", scope: !241, file: !187, line: 118, baseType: !306, size: 16, offset: 912)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_depth", scope: !241, file: !187, line: 119, baseType: !306, size: 16, offset: 928)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_count", scope: !241, file: !187, line: 120, baseType: !306, size: 16, offset: 944)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_time", scope: !241, file: !187, line: 121, baseType: !315, size: 64, offset: 960)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ramp_up_period", scope: !241, file: !187, line: 122, baseType: !315, size: 64, offset: 1024)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_ramp_up", scope: !241, file: !187, line: 125, baseType: !315, size: 64, offset: 1088)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !241, file: !187, line: 127, baseType: !23, size: 32, offset: 1152)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !241, file: !187, line: 127, baseType: !23, size: 32, offset: 1184)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !241, file: !187, line: 128, baseType: !657, size: 64, offset: 1216)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !241, file: !187, line: 129, baseType: !23, size: 32, offset: 1280)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "sector_size", scope: !241, file: !187, line: 131, baseType: !23, size: 32, offset: 1312)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !241, file: !187, line: 133, baseType: !235, size: 64, offset: 1344)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !187, line: 134, baseType: !207, size: 8, offset: 1408)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !241, file: !187, line: 135, baseType: !4, size: 8, offset: 1416)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "inq_periph_qual", scope: !241, file: !187, line: 136, baseType: !4, size: 8, offset: 1424)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_mutex", scope: !241, file: !187, line: 137, baseType: !842, size: 256, offset: 1472)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_len", scope: !241, file: !187, line: 138, baseType: !207, size: 8, offset: 1728)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry", scope: !241, file: !187, line: 139, baseType: !5394, size: 64, offset: 1792)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !241, file: !187, line: 140, baseType: !470, size: 64, offset: 1856)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !241, file: !187, line: 141, baseType: !470, size: 64, offset: 1920)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !241, file: !187, line: 142, baseType: !470, size: 64, offset: 1984)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg0", scope: !241, file: !187, line: 145, baseType: !5399, size: 64, offset: 2048)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_vpd", file: !187, line: 97, size: 192, elements: !5401)
!5401 = !{!5402, !5403, !5404}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5400, file: !187, line: 98, baseType: !1051, size: 128, align: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5400, file: !187, line: 99, baseType: !105, size: 32, offset: 128)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5400, file: !187, line: 100, baseType: !5405, offset: 160)
!5405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !1778)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg83", scope: !241, file: !187, line: 146, baseType: !5399, size: 64, offset: 2112)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg80", scope: !241, file: !187, line: 147, baseType: !5399, size: 64, offset: 2176)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg89", scope: !241, file: !187, line: 148, baseType: !5399, size: 64, offset: 2240)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pgb0", scope: !241, file: !187, line: 149, baseType: !5399, size: 64, offset: 2304)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pgb1", scope: !241, file: !187, line: 150, baseType: !5399, size: 64, offset: 2368)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pgb2", scope: !241, file: !187, line: 151, baseType: !5399, size: 64, offset: 2432)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_target", scope: !241, file: !187, line: 153, baseType: !5413, size: 64, offset: 2496)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_target", file: !187, line: 334, size: 6528, align: 64, elements: !5415)
!5415 = !{!5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "starget_sdev_user", scope: !5414, file: !187, line: 335, baseType: !240, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !5414, file: !187, line: 336, baseType: !309, size: 128, offset: 64)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !5414, file: !187, line: 337, baseType: !309, size: 128, offset: 192)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5414, file: !187, line: 338, baseType: !2722, size: 5824, offset: 320)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "reap_ref", scope: !5414, file: !187, line: 339, baseType: !5085, size: 32, offset: 6144)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5414, file: !187, line: 340, baseType: !23, size: 32, offset: 6176)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5414, file: !187, line: 341, baseType: !23, size: 32, offset: 6208)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !5414, file: !187, line: 343, baseType: !23, size: 1, offset: 6240, flags: DIFlagBitField, extraData: i64 6240)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "single_lun", scope: !5414, file: !187, line: 344, baseType: !23, size: 1, offset: 6241, flags: DIFlagBitField, extraData: i64 6240)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "pdt_1f_for_no_lun", scope: !5414, file: !187, line: 347, baseType: !23, size: 1, offset: 6242, flags: DIFlagBitField, extraData: i64 6240)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_luns", scope: !5414, file: !187, line: 349, baseType: !23, size: 1, offset: 6243, flags: DIFlagBitField, extraData: i64 6240)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_lun_change", scope: !5414, file: !187, line: 351, baseType: !23, size: 1, offset: 6244, flags: DIFlagBitField, extraData: i64 6240)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "target_busy", scope: !5414, file: !187, line: 355, baseType: !286, size: 32, offset: 6272)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "target_blocked", scope: !5414, file: !187, line: 356, baseType: !286, size: 32, offset: 6304)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !5414, file: !187, line: 362, baseType: !23, size: 32, offset: 6336)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "max_target_blocked", scope: !5414, file: !187, line: 363, baseType: !23, size: 32, offset: 6368)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !5414, file: !187, line: 366, baseType: !4, size: 8, offset: 6400)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5414, file: !187, line: 367, baseType: !186, size: 32, offset: 6432)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !5414, file: !187, line: 368, baseType: !235, size: 64, offset: 6464)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "starget_data", scope: !5414, file: !187, line: 369, baseType: !2336, offset: 6528)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_bflags", scope: !241, file: !187, line: 155, baseType: !5437, size: 64, offset: 2560)
!5437 = !DIDerivedType(tag: DW_TAG_typedef, name: "blist_flags_t", file: !187, line: 20, baseType: !658)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "eh_timeout", scope: !241, file: !187, line: 159, baseType: !23, size: 32, offset: 2624)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "manage_system_start_stop", scope: !241, file: !187, line: 166, baseType: !23, size: 1, offset: 2656, flags: DIFlagBitField, extraData: i64 2656)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "manage_runtime_start_stop", scope: !241, file: !187, line: 172, baseType: !23, size: 1, offset: 2657, flags: DIFlagBitField, extraData: i64 2656)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "manage_shutdown", scope: !241, file: !187, line: 178, baseType: !23, size: 1, offset: 2658, flags: DIFlagBitField, extraData: i64 2656)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "force_runtime_start_on_system_start", scope: !241, file: !187, line: 184, baseType: !23, size: 1, offset: 2659, flags: DIFlagBitField, extraData: i64 2656)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !241, file: !187, line: 186, baseType: !23, size: 1, offset: 2660, flags: DIFlagBitField, extraData: i64 2656)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !241, file: !187, line: 187, baseType: !23, size: 1, offset: 2661, flags: DIFlagBitField, extraData: i64 2656)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !241, file: !187, line: 188, baseType: !23, size: 1, offset: 2662, flags: DIFlagBitField, extraData: i64 2656)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "lockable", scope: !241, file: !187, line: 189, baseType: !23, size: 1, offset: 2663, flags: DIFlagBitField, extraData: i64 2656)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !241, file: !187, line: 190, baseType: !23, size: 1, offset: 2664, flags: DIFlagBitField, extraData: i64 2656)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "borken", scope: !241, file: !187, line: 191, baseType: !23, size: 1, offset: 2665, flags: DIFlagBitField, extraData: i64 2656)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !241, file: !187, line: 193, baseType: !23, size: 1, offset: 2666, flags: DIFlagBitField, extraData: i64 2656)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "soft_reset", scope: !241, file: !187, line: 194, baseType: !23, size: 1, offset: 2667, flags: DIFlagBitField, extraData: i64 2656)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "sdtr", scope: !241, file: !187, line: 195, baseType: !23, size: 1, offset: 2668, flags: DIFlagBitField, extraData: i64 2656)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "wdtr", scope: !241, file: !187, line: 196, baseType: !23, size: 1, offset: 2669, flags: DIFlagBitField, extraData: i64 2656)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "ppr", scope: !241, file: !187, line: 197, baseType: !23, size: 1, offset: 2670, flags: DIFlagBitField, extraData: i64 2656)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_supported", scope: !241, file: !187, line: 198, baseType: !23, size: 1, offset: 2671, flags: DIFlagBitField, extraData: i64 2656)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "simple_tags", scope: !241, file: !187, line: 199, baseType: !23, size: 1, offset: 2672, flags: DIFlagBitField, extraData: i64 2656)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "was_reset", scope: !241, file: !187, line: 200, baseType: !23, size: 1, offset: 2673, flags: DIFlagBitField, extraData: i64 2656)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_cc_ua", scope: !241, file: !187, line: 202, baseType: !23, size: 1, offset: 2674, flags: DIFlagBitField, extraData: i64 2656)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_rw", scope: !241, file: !187, line: 204, baseType: !23, size: 1, offset: 2675, flags: DIFlagBitField, extraData: i64 2656)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_ms", scope: !241, file: !187, line: 205, baseType: !23, size: 1, offset: 2676, flags: DIFlagBitField, extraData: i64 2656)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "set_dbd_for_ms", scope: !241, file: !187, line: 206, baseType: !23, size: 1, offset: 2677, flags: DIFlagBitField, extraData: i64 2656)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "read_before_ms", scope: !241, file: !187, line: 207, baseType: !23, size: 1, offset: 2678, flags: DIFlagBitField, extraData: i64 2656)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_opcodes", scope: !241, file: !187, line: 208, baseType: !23, size: 1, offset: 2679, flags: DIFlagBitField, extraData: i64 2656)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !241, file: !187, line: 209, baseType: !23, size: 1, offset: 2680, flags: DIFlagBitField, extraData: i64 2656)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "use_16_for_rw", scope: !241, file: !187, line: 210, baseType: !23, size: 1, offset: 2681, flags: DIFlagBitField, extraData: i64 2656)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "use_16_for_sync", scope: !241, file: !187, line: 211, baseType: !23, size: 1, offset: 2682, flags: DIFlagBitField, extraData: i64 2656)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_8", scope: !241, file: !187, line: 212, baseType: !23, size: 1, offset: 2683, flags: DIFlagBitField, extraData: i64 2656)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_3f", scope: !241, file: !187, line: 213, baseType: !23, size: 1, offset: 2684, flags: DIFlagBitField, extraData: i64 2656)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vpd_pages", scope: !241, file: !187, line: 214, baseType: !23, size: 1, offset: 2685, flags: DIFlagBitField, extraData: i64 2656)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "try_vpd_pages", scope: !241, file: !187, line: 215, baseType: !23, size: 1, offset: 2686, flags: DIFlagBitField, extraData: i64 2656)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "use_192_bytes_for_3f", scope: !241, file: !187, line: 216, baseType: !23, size: 1, offset: 2687, flags: DIFlagBitField, extraData: i64 2656)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "no_start_on_add", scope: !241, file: !187, line: 217, baseType: !23, size: 1, offset: 2688, flags: DIFlagBitField, extraData: i64 2656)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "allow_restart", scope: !241, file: !187, line: 218, baseType: !23, size: 1, offset: 2689, flags: DIFlagBitField, extraData: i64 2656)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "start_stop_pwr_cond", scope: !241, file: !187, line: 219, baseType: !23, size: 1, offset: 2690, flags: DIFlagBitField, extraData: i64 2656)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "no_uld_attach", scope: !241, file: !187, line: 220, baseType: !23, size: 1, offset: 2691, flags: DIFlagBitField, extraData: i64 2656)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "select_no_atn", scope: !241, file: !187, line: 221, baseType: !23, size: 1, offset: 2692, flags: DIFlagBitField, extraData: i64 2656)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "fix_capacity", scope: !241, file: !187, line: 222, baseType: !23, size: 1, offset: 2693, flags: DIFlagBitField, extraData: i64 2656)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "guess_capacity", scope: !241, file: !187, line: 223, baseType: !23, size: 1, offset: 2694, flags: DIFlagBitField, extraData: i64 2656)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "retry_hwerror", scope: !241, file: !187, line: 224, baseType: !23, size: 1, offset: 2695, flags: DIFlagBitField, extraData: i64 2656)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "last_sector_bug", scope: !241, file: !187, line: 225, baseType: !23, size: 1, offset: 2696, flags: DIFlagBitField, extraData: i64 2656)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_disc_info", scope: !241, file: !187, line: 227, baseType: !23, size: 1, offset: 2697, flags: DIFlagBitField, extraData: i64 2656)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_capacity_16", scope: !241, file: !187, line: 228, baseType: !23, size: 1, offset: 2698, flags: DIFlagBitField, extraData: i64 2656)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "try_rc_10_first", scope: !241, file: !187, line: 229, baseType: !23, size: 1, offset: 2699, flags: DIFlagBitField, extraData: i64 2656)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "security_supported", scope: !241, file: !187, line: 230, baseType: !23, size: 1, offset: 2700, flags: DIFlagBitField, extraData: i64 2656)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !241, file: !187, line: 231, baseType: !23, size: 1, offset: 2701, flags: DIFlagBitField, extraData: i64 2656)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "wce_default_on", scope: !241, file: !187, line: 232, baseType: !23, size: 1, offset: 2702, flags: DIFlagBitField, extraData: i64 2656)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "no_dif", scope: !241, file: !187, line: 233, baseType: !23, size: 1, offset: 2703, flags: DIFlagBitField, extraData: i64 2656)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "broken_fua", scope: !241, file: !187, line: 234, baseType: !23, size: 1, offset: 2704, flags: DIFlagBitField, extraData: i64 2656)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "lun_in_cdb", scope: !241, file: !187, line: 235, baseType: !23, size: 1, offset: 2705, flags: DIFlagBitField, extraData: i64 2656)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_limit_for_ws", scope: !241, file: !187, line: 236, baseType: !23, size: 1, offset: 2706, flags: DIFlagBitField, extraData: i64 2656)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_autosuspend", scope: !241, file: !187, line: 237, baseType: !23, size: 1, offset: 2707, flags: DIFlagBitField, extraData: i64 2656)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_media_change", scope: !241, file: !187, line: 239, baseType: !23, size: 1, offset: 2708, flags: DIFlagBitField, extraData: i64 2656)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "silence_suspend", scope: !241, file: !187, line: 240, baseType: !23, size: 1, offset: 2709, flags: DIFlagBitField, extraData: i64 2656)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "no_vpd_size", scope: !241, file: !187, line: 241, baseType: !23, size: 1, offset: 2710, flags: DIFlagBitField, extraData: i64 2656)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "cdl_supported", scope: !241, file: !187, line: 243, baseType: !23, size: 1, offset: 2711, flags: DIFlagBitField, extraData: i64 2656)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "cdl_enable", scope: !241, file: !187, line: 244, baseType: !23, size: 1, offset: 2712, flags: DIFlagBitField, extraData: i64 2656)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "queue_stopped", scope: !241, file: !187, line: 246, baseType: !23, size: 32, offset: 2720)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "offline_already", scope: !241, file: !187, line: 247, baseType: !391, size: 8, offset: 2752)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "disk_events_disable_depth", scope: !241, file: !187, line: 249, baseType: !286, size: 32, offset: 2784)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "supported_events", scope: !241, file: !187, line: 251, baseType: !371, size: 64, offset: 2816)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "pending_events", scope: !241, file: !187, line: 252, baseType: !371, size: 64, offset: 2880)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !241, file: !187, line: 253, baseType: !309, size: 128, offset: 2944)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "event_work", scope: !241, file: !187, line: 254, baseType: !321, size: 256, offset: 3072)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "max_device_blocked", scope: !241, file: !187, line: 256, baseType: !23, size: 32, offset: 3328)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "iorequest_cnt", scope: !241, file: !187, line: 259, baseType: !286, size: 32, offset: 3360)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "iodone_cnt", scope: !241, file: !187, line: 260, baseType: !286, size: 32, offset: 3392)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "ioerr_cnt", scope: !241, file: !187, line: 261, baseType: !286, size: 32, offset: 3424)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "iotmo_cnt", scope: !241, file: !187, line: 262, baseType: !286, size: 32, offset: 3456)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_gendev", scope: !241, file: !187, line: 264, baseType: !2722, size: 5824, offset: 3520)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_dev", scope: !241, file: !187, line: 265, baseType: !2722, size: 5824, offset: 9344)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !241, file: !187, line: 267, baseType: !321, size: 256, offset: 15168)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !241, file: !187, line: 269, baseType: !5512, size: 64, offset: 15424)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device_handler", file: !187, line: 269, flags: DIFlagFwdDecl)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !241, file: !187, line: 270, baseType: !235, size: 64, offset: 15488)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_len", scope: !241, file: !187, line: 272, baseType: !554, size: 64, offset: 15552)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_buf", scope: !241, file: !187, line: 273, baseType: !235, size: 64, offset: 15616)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !241, file: !187, line: 275, baseType: !23, size: 32, offset: 15680)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !241, file: !187, line: 276, baseType: !23, size: 32, offset: 15712)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !241, file: !187, line: 278, baseType: !5520, size: 64, offset: 15744)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_device", file: !187, line: 13, flags: DIFlagFwdDecl)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "access_state", scope: !241, file: !187, line: 279, baseType: !207, size: 8, offset: 15808)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "state_mutex", scope: !241, file: !187, line: 280, baseType: !842, size: 256, offset: 15872)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_state", scope: !241, file: !187, line: 281, baseType: !194, size: 32, offset: 16128)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "quiesced_by", scope: !241, file: !187, line: 282, baseType: !3349, size: 64, offset: 16192)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_data", scope: !241, file: !187, line: 283, baseType: !2336, offset: 16256)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "eh_entry", scope: !237, file: !206, line: 76, baseType: !309, size: 128, offset: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "abort_work", scope: !237, file: !206, line: 77, baseType: !317, size: 704, offset: 192)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !237, file: !206, line: 79, baseType: !1051, size: 128, align: 64, offset: 896)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "eh_eflags", scope: !237, file: !206, line: 81, baseType: !105, size: 32, offset: 1024)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "budget_token", scope: !237, file: !206, line: 83, baseType: !105, size: 32, offset: 1056)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "jiffies_at_alloc", scope: !237, file: !206, line: 90, baseType: !315, size: 64, offset: 1088)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !237, file: !206, line: 92, baseType: !105, size: 32, offset: 1152)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !237, file: !206, line: 93, baseType: !105, size: 32, offset: 1184)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "prot_op", scope: !237, file: !206, line: 95, baseType: !207, size: 8, offset: 1216)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "prot_type", scope: !237, file: !206, line: 96, baseType: !207, size: 8, offset: 1224)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "prot_flags", scope: !237, file: !206, line: 97, baseType: !207, size: 8, offset: 1232)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "submitter", scope: !237, file: !206, line: 98, baseType: !205, size: 8, offset: 1240)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_len", scope: !237, file: !206, line: 100, baseType: !306, size: 16, offset: 1248)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "sc_data_direction", scope: !237, file: !206, line: 101, baseType: !212, size: 32, offset: 1280)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd", scope: !237, file: !206, line: 103, baseType: !665, size: 256, offset: 1312)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "sdb", scope: !237, file: !206, line: 106, baseType: !5543, size: 192, offset: 1600)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_data_buffer", file: !206, line: 30, size: 192, elements: !5544)
!5544 = !{!5545, !5562}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !5543, file: !206, line: 31, baseType: !5546, size: 128)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !5547, line: 39, size: 128, elements: !5548)
!5547 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5548 = !{!5549, !5560, !5561}
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5546, file: !5547, line: 40, baseType: !5550, size: 64)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5547, line: 11, size: 256, elements: !5552)
!5552 = !{!5553, !5554, !5555, !5556, !5558, !5559}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5551, file: !5547, line: 12, baseType: !315, size: 64)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5551, file: !5547, line: 13, baseType: !23, size: 32, offset: 64)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5551, file: !5547, line: 14, baseType: !23, size: 32, offset: 96)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5551, file: !5547, line: 15, baseType: !5557, size: 64, offset: 128)
!5557 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !287, line: 149, baseType: !657)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5551, file: !5547, line: 17, baseType: !23, size: 32, offset: 192)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5551, file: !5547, line: 20, baseType: !23, size: 32, offset: 224)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !5546, file: !5547, line: 41, baseType: !23, size: 32, offset: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !5546, file: !5547, line: 42, baseType: !23, size: 32, offset: 96)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5543, file: !206, line: 32, baseType: !23, size: 32, offset: 128)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "prot_sdb", scope: !237, file: !206, line: 107, baseType: !5564, size: 64, offset: 1792)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5543, size: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "underflow", scope: !237, file: !206, line: 109, baseType: !23, size: 32, offset: 1856)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "transfersize", scope: !237, file: !206, line: 112, baseType: !23, size: 32, offset: 1888)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "resid_len", scope: !237, file: !206, line: 117, baseType: !23, size: 32, offset: 1920)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "sense_len", scope: !237, file: !206, line: 118, baseType: !23, size: 32, offset: 1952)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "sense_buffer", scope: !237, file: !206, line: 119, baseType: !5394, size: 64, offset: 1984)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !206, line: 125, baseType: !105, size: 32, offset: 2048)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !237, file: !206, line: 126, baseType: !315, size: 64, offset: 2112)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !237, file: !206, line: 128, baseType: !23, size: 32, offset: 2176)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "host_scribble", scope: !237, file: !206, line: 135, baseType: !5394, size: 64, offset: 2240)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !237, file: !206, line: 143, baseType: !105, size: 32, offset: 2304)
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_varlen_cdb_hdr", file: !5577, line: 185, size: 80, elements: !5578)
!5577 = !DIFile(filename: "./include/scsi/scsi_proto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "77cf2b62faf3e11ee8f23d341eca254d")
!5578 = !{!5579, !5580, !5581, !5585, !5586}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !5576, file: !5577, line: 186, baseType: !297, size: 8)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !5576, file: !5577, line: 187, baseType: !297, size: 8, offset: 8)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !5576, file: !5577, line: 188, baseType: !5582, size: 40, offset: 16)
!5582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 40, elements: !5583)
!5583 = !{!5584}
!5584 = !DISubrange(count: 5)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "additional_cdb_length", scope: !5576, file: !5577, line: 189, baseType: !297, size: 8, offset: 56)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "service_action", scope: !5576, file: !5577, line: 190, baseType: !5587, size: 16, offset: 64)
!5587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !2110, line: 37, baseType: !305)
!5588 = !{!0, !7, !12, !17, !5589, !5591, !5593, !5595, !5597, !5600, !5602, !5605, !5607, !5609, !5611, !5613, !5615, !5618, !5621, !5626, !5631, !5636, !5638, !5643, !5645, !5647, !5652, !5654, !5659, !5661, !5666, !5668, !5670, !5672, !5674, !5676, !5678, !5683, !5688, !5693, !5696, !5698, !5700}
!5589 = !DIGlobalVariableExpression(var: !5590, expr: !DIExpression())
!5590 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scmd_printk349", scope: !19, file: !2, line: 106, type: !235, isLocal: true, isDefinition: true)
!5591 = !DIGlobalVariableExpression(var: !5592, expr: !DIExpression())
!5592 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !3, isLocal: true, isDefinition: true)
!5593 = !DIGlobalVariableExpression(var: !5594, expr: !DIExpression())
!5594 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___scsi_format_command350", scope: !19, file: !2, line: 178, type: !235, isLocal: true, isDefinition: true)
!5595 = !DIGlobalVariableExpression(var: !5596, expr: !DIExpression())
!5596 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !3, isLocal: true, isDefinition: true)
!5597 = !DIGlobalVariableExpression(var: !5598, expr: !DIExpression())
!5598 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !5599, isLocal: true, isDefinition: true)
!5599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !950)
!5600 = !DIGlobalVariableExpression(var: !5601, expr: !DIExpression())
!5601 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !14, isLocal: true, isDefinition: true)
!5602 = !DIGlobalVariableExpression(var: !5603, expr: !DIExpression())
!5603 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !5604, isLocal: true, isDefinition: true)
!5604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !4354)
!5605 = !DIGlobalVariableExpression(var: !5606, expr: !DIExpression())
!5606 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !5599, isLocal: true, isDefinition: true)
!5607 = !DIGlobalVariableExpression(var: !5608, expr: !DIExpression())
!5608 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_print_command353", scope: !19, file: !2, line: 237, type: !235, isLocal: true, isDefinition: true)
!5609 = !DIGlobalVariableExpression(var: !5610, expr: !DIExpression())
!5610 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_print_sense_hdr356", scope: !19, file: !2, line: 363, type: !235, isLocal: true, isDefinition: true)
!5611 = !DIGlobalVariableExpression(var: !5612, expr: !DIExpression())
!5612 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___scsi_print_sense357", scope: !19, file: !2, line: 371, type: !235, isLocal: true, isDefinition: true)
!5613 = !DIGlobalVariableExpression(var: !5614, expr: !DIExpression())
!5614 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_print_sense358", scope: !19, file: !2, line: 380, type: !235, isLocal: true, isDefinition: true)
!5615 = !DIGlobalVariableExpression(var: !5616, expr: !DIExpression())
!5616 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !5617, isLocal: true, isDefinition: true)
!5617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5583)
!5618 = !DIGlobalVariableExpression(var: !5619, expr: !DIExpression())
!5619 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !5620, isLocal: true, isDefinition: true)
!5620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !1061)
!5621 = !DIGlobalVariableExpression(var: !5622, expr: !DIExpression())
!5622 = distinct !DIGlobalVariable(scope: null, file: !2, line: 412, type: !5623, isLocal: true, isDefinition: true)
!5623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5624)
!5624 = !{!5625}
!5625 = !DISubrange(count: 17)
!5626 = !DIGlobalVariableExpression(var: !5627, expr: !DIExpression())
!5627 = distinct !DIGlobalVariable(scope: null, file: !2, line: 416, type: !5628, isLocal: true, isDefinition: true)
!5628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5629)
!5629 = !{!5630}
!5630 = !DISubrange(count: 9)
!5631 = !DIGlobalVariableExpression(var: !5632, expr: !DIExpression())
!5632 = distinct !DIGlobalVariable(scope: null, file: !2, line: 422, type: !5633, isLocal: true, isDefinition: true)
!5633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5634)
!5634 = !{!5635}
!5635 = !DISubrange(count: 13)
!5636 = !DIGlobalVariableExpression(var: !5637, expr: !DIExpression())
!5637 = distinct !DIGlobalVariable(scope: null, file: !2, line: 425, type: !5623, isLocal: true, isDefinition: true)
!5638 = !DIGlobalVariableExpression(var: !5639, expr: !DIExpression())
!5639 = distinct !DIGlobalVariable(scope: null, file: !2, line: 430, type: !5640, isLocal: true, isDefinition: true)
!5640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5641)
!5641 = !{!5642}
!5642 = !DISubrange(count: 22)
!5643 = !DIGlobalVariableExpression(var: !5644, expr: !DIExpression())
!5644 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !5633, isLocal: true, isDefinition: true)
!5645 = !DIGlobalVariableExpression(var: !5646, expr: !DIExpression())
!5646 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_print_result359", scope: !19, file: !2, line: 439, type: !235, isLocal: true, isDefinition: true)
!5647 = !DIGlobalVariableExpression(var: !5648, expr: !DIExpression())
!5648 = distinct !DIGlobalVariable(scope: null, file: !225, line: 480, type: !5649, isLocal: true, isDefinition: true)
!5649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5650)
!5650 = !{!5651}
!5651 = !DISubrange(count: 21)
!5652 = !DIGlobalVariableExpression(var: !5653, expr: !DIExpression())
!5653 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !4021, isLocal: true, isDefinition: true)
!5654 = !DIGlobalVariableExpression(var: !5655, expr: !DIExpression())
!5655 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !5656, isLocal: true, isDefinition: true)
!5656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !5657)
!5657 = !{!5658}
!5658 = !DISubrange(count: 38)
!5659 = !DIGlobalVariableExpression(var: !5660, expr: !DIExpression())
!5660 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !5604, isLocal: true, isDefinition: true)
!5661 = !DIGlobalVariableExpression(var: !5662, expr: !DIExpression())
!5662 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !5663, isLocal: true, isDefinition: true)
!5663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5664)
!5664 = !{!5665}
!5665 = !DISubrange(count: 10)
!5666 = !DIGlobalVariableExpression(var: !5667, expr: !DIExpression())
!5667 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !5604, isLocal: true, isDefinition: true)
!5668 = !DIGlobalVariableExpression(var: !5669, expr: !DIExpression())
!5669 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !5604, isLocal: true, isDefinition: true)
!5670 = !DIGlobalVariableExpression(var: !5671, expr: !DIExpression())
!5671 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !5649, isLocal: true, isDefinition: true)
!5672 = !DIGlobalVariableExpression(var: !5673, expr: !DIExpression())
!5673 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !5633, isLocal: true, isDefinition: true)
!5674 = !DIGlobalVariableExpression(var: !5675, expr: !DIExpression())
!5675 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !3, isLocal: true, isDefinition: true)
!5676 = !DIGlobalVariableExpression(var: !5677, expr: !DIExpression())
!5677 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !5604, isLocal: true, isDefinition: true)
!5678 = !DIGlobalVariableExpression(var: !5679, expr: !DIExpression())
!5679 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !5680, isLocal: true, isDefinition: true)
!5680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5681)
!5681 = !{!5682}
!5682 = !DISubrange(count: 11)
!5683 = !DIGlobalVariableExpression(var: !5684, expr: !DIExpression())
!5684 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !5685, isLocal: true, isDefinition: true)
!5685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5686)
!5686 = !{!5687}
!5687 = !DISubrange(count: 14)
!5688 = !DIGlobalVariableExpression(var: !5689, expr: !DIExpression())
!5689 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !5690, isLocal: true, isDefinition: true)
!5690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5691)
!5691 = !{!5692}
!5692 = !DISubrange(count: 15)
!5693 = !DIGlobalVariableExpression(var: !5694, expr: !DIExpression())
!5694 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !5695, isLocal: true, isDefinition: true)
!5695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !952)
!5696 = !DIGlobalVariableExpression(var: !5697, expr: !DIExpression())
!5697 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !5680, isLocal: true, isDefinition: true)
!5698 = !DIGlobalVariableExpression(var: !5699, expr: !DIExpression())
!5699 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !5663, isLocal: true, isDefinition: true)
!5700 = !DIGlobalVariableExpression(var: !5701, expr: !DIExpression())
!5701 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !5680, isLocal: true, isDefinition: true)
!5702 = !{i32 7, !"Dwarf Version", i32 5}
!5703 = !{i32 2, !"Debug Info Version", i32 3}
!5704 = !{i32 1, !"wchar_size", i32 2}
!5705 = !{i32 8, !"cf-protection-branch", i32 1}
!5706 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5707 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5708 = !{i32 1, !"Code Model", i32 2}
!5709 = !{i32 1, !"override-stack-alignment", i32 8}
!5710 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5711 = distinct !DISubprogram(name: "sdev_prefix_printk", scope: !2, file: !2, line: 56, type: !5712, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5716)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{null, !470, !5714, !470, !470, null}
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!5716 = !{!5717, !5718, !5719, !5720, !5721, !5732, !5733, !5734, !5735, !5738}
!5717 = !DILocalVariable(name: "level", arg: 1, scope: !5711, file: !2, line: 56, type: !470)
!5718 = !DILocalVariable(name: "sdev", arg: 2, scope: !5711, file: !2, line: 56, type: !5714)
!5719 = !DILocalVariable(name: "name", arg: 3, scope: !5711, file: !2, line: 57, type: !470)
!5720 = !DILocalVariable(name: "fmt", arg: 4, scope: !5711, file: !2, line: 57, type: !470)
!5721 = !DILocalVariable(name: "args", scope: !5711, file: !2, line: 59, type: !5722)
!5722 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5723, line: 5, baseType: !5724)
!5723 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !5725)
!5725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5726, size: 192, elements: !372)
!5726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5727)
!5727 = !{!5728, !5729, !5730, !5731}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5726, file: !2, line: 59, baseType: !23, size: 32)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5726, file: !2, line: 59, baseType: !23, size: 32, offset: 32)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5726, file: !2, line: 59, baseType: !235, size: 64, offset: 64)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5726, file: !2, line: 59, baseType: !235, size: 64, offset: 128)
!5732 = !DILocalVariable(name: "logbuf", scope: !5711, file: !2, line: 60, type: !509)
!5733 = !DILocalVariable(name: "off", scope: !5711, file: !2, line: 61, type: !554)
!5734 = !DILocalVariable(name: "logbuf_len", scope: !5711, file: !2, line: 61, type: !554)
!5735 = !DILocalVariable(name: "__ret_warn_on", scope: !5736, file: !2, line: 73, type: !105)
!5736 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 73, column: 7)
!5737 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 73, column: 6)
!5738 = !DILocalVariable(name: "__flags", scope: !5739, file: !2, line: 73, type: !105)
!5739 = distinct !DILexicalBlock(scope: !5740, file: !2, line: 73, column: 7)
!5740 = distinct !DILexicalBlock(scope: !5736, file: !2, line: 73, column: 7)
!5741 = !DILocation(line: 56, column: 37, scope: !5711)
!5742 = !DILocation(line: 56, column: 70, scope: !5711)
!5743 = !DILocation(line: 57, column: 16, scope: !5711)
!5744 = !DILocation(line: 57, column: 34, scope: !5711)
!5745 = !DILocation(line: 59, column: 2, scope: !5711)
!5746 = !DILocation(line: 59, column: 10, scope: !5711)
!5747 = !DILocation(line: 60, column: 2, scope: !5711)
!5748 = !DILocation(line: 60, column: 8, scope: !5711)
!5749 = !DILocation(line: 61, column: 2, scope: !5711)
!5750 = !DILocation(line: 61, column: 9, scope: !5711)
!5751 = !DILocation(line: 61, column: 18, scope: !5711)
!5752 = !DILocation(line: 63, column: 7, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 63, column: 6)
!5754 = !DILocation(line: 63, column: 6, scope: !5711)
!5755 = !DILocation(line: 64, column: 3, scope: !5753)
!5756 = !DILocation(line: 66, column: 11, scope: !5711)
!5757 = !DILocation(line: 66, column: 9, scope: !5711)
!5758 = !DILocation(line: 67, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 67, column: 6)
!5760 = !DILocation(line: 67, column: 6, scope: !5711)
!5761 = !DILocation(line: 68, column: 3, scope: !5759)
!5762 = !DILocation(line: 70, column: 6, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 70, column: 6)
!5764 = !DILocation(line: 70, column: 6, scope: !5711)
!5765 = !DILocation(line: 71, column: 20, scope: !5763)
!5766 = !DILocation(line: 71, column: 29, scope: !5763)
!5767 = !DILocation(line: 71, column: 27, scope: !5763)
!5768 = !DILocation(line: 71, column: 34, scope: !5763)
!5769 = !DILocation(line: 71, column: 47, scope: !5763)
!5770 = !DILocation(line: 71, column: 45, scope: !5763)
!5771 = !DILocation(line: 72, column: 15, scope: !5763)
!5772 = !DILocation(line: 71, column: 10, scope: !5763)
!5773 = !DILocation(line: 71, column: 7, scope: !5763)
!5774 = !DILocation(line: 71, column: 3, scope: !5763)
!5775 = !DILocation(line: 73, column: 7, scope: !5736)
!5776 = !DILocation(line: 73, column: 7, scope: !5740)
!5777 = !DILocation(line: 73, column: 7, scope: !5739)
!5778 = !DILocation(line: 73, column: 7, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5739, file: !2, line: 73, column: 7)
!5780 = !DILocation(line: 73, column: 7, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5739, file: !2, line: 73, column: 7)
!5782 = !{i64 2156038134, i64 2156038163, i64 2156038209, i64 2156038267, i64 2156038321, i64 2156038375, i64 2156038430, i64 2156038461, i64 2156038769, i64 2156038775, i64 2156038822, i64 2156038845, i64 2156038871}
!5783 = !DILocation(line: 73, column: 7, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5739, file: !2, line: 73, column: 7)
!5785 = !DILocation(line: 73, column: 7, scope: !5737)
!5786 = !DILocation(line: 73, column: 6, scope: !5711)
!5787 = !DILocation(line: 74, column: 3, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 73, column: 35)
!5789 = !DILocation(line: 75, column: 21, scope: !5788)
!5790 = !DILocation(line: 75, column: 30, scope: !5788)
!5791 = !DILocation(line: 75, column: 28, scope: !5788)
!5792 = !DILocation(line: 75, column: 35, scope: !5788)
!5793 = !DILocation(line: 75, column: 48, scope: !5788)
!5794 = !DILocation(line: 75, column: 46, scope: !5788)
!5795 = !DILocation(line: 75, column: 53, scope: !5788)
!5796 = !DILocation(line: 75, column: 58, scope: !5788)
!5797 = !DILocation(line: 75, column: 10, scope: !5788)
!5798 = !DILocation(line: 75, column: 7, scope: !5788)
!5799 = !DILocation(line: 76, column: 3, scope: !5788)
!5800 = !DILocation(line: 77, column: 2, scope: !5788)
!5801 = !DILocation(line: 78, column: 2, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 78, column: 2)
!5803 = !DILocation(line: 78, column: 2, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5802, file: !2, line: 78, column: 2)
!5805 = !DILocation(line: 79, column: 26, scope: !5711)
!5806 = !DILocation(line: 79, column: 2, scope: !5711)
!5807 = !DILocation(line: 80, column: 1, scope: !5711)
!5808 = distinct !DISubprogram(name: "scsi_log_reserve_buffer", scope: !2, file: !2, line: 18, type: !5809, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5812)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{!509, !5811}
!5811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!5812 = !{!5813}
!5813 = !DILocalVariable(name: "len", arg: 1, scope: !5808, file: !2, line: 18, type: !5811)
!5814 = !DILocation(line: 18, column: 46, scope: !5808)
!5815 = !DILocation(line: 20, column: 3, scope: !5808)
!5816 = !DILocation(line: 20, column: 7, scope: !5808)
!5817 = !DILocation(line: 21, column: 18, scope: !5808)
!5818 = !DILocation(line: 21, column: 17, scope: !5808)
!5819 = !DILocation(line: 21, column: 9, scope: !5808)
!5820 = !DILocation(line: 21, column: 2, scope: !5808)
!5821 = !DISubprogram(name: "scnprintf", scope: !5822, file: !5822, line: 14, type: !5823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5822 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!105, !509, !554, !470, null}
!5825 = !DISubprogram(name: "vscnprintf", scope: !5822, file: !5822, line: 15, type: !5826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!105, !509, !554, !470, !5828}
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5726, size: 64)
!5829 = !DISubprogram(name: "_dev_printk", scope: !5830, file: !5830, line: 41, type: !5831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5830 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5831 = !DISubroutineType(types: !5832)
!5832 = !{null, !470, !2742, !470, null}
!5833 = distinct !DISubprogram(name: "scsi_log_release_buffer", scope: !2, file: !2, line: 24, type: !5834, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5836)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{null, !509}
!5836 = !{!5837}
!5837 = !DILocalVariable(name: "bufptr", arg: 1, scope: !5833, file: !2, line: 24, type: !509)
!5838 = !DILocation(line: 24, column: 43, scope: !5833)
!5839 = !DILocation(line: 26, column: 8, scope: !5833)
!5840 = !DILocation(line: 26, column: 2, scope: !5833)
!5841 = !DILocation(line: 27, column: 1, scope: !5833)
!5842 = distinct !DISubprogram(name: "scmd_printk", scope: !2, file: !2, line: 83, type: !5843, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5847)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{null, !470, !5845, !470, null}
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5846, size: 64)
!5846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!5847 = !{!5848, !5849, !5850, !5851, !5852, !5853, !5854}
!5848 = !DILocalVariable(name: "level", arg: 1, scope: !5842, file: !2, line: 83, type: !470)
!5849 = !DILocalVariable(name: "scmd", arg: 2, scope: !5842, file: !2, line: 83, type: !5845)
!5850 = !DILocalVariable(name: "fmt", arg: 3, scope: !5842, file: !2, line: 84, type: !470)
!5851 = !DILocalVariable(name: "args", scope: !5842, file: !2, line: 86, type: !5722)
!5852 = !DILocalVariable(name: "logbuf", scope: !5842, file: !2, line: 87, type: !509)
!5853 = !DILocalVariable(name: "off", scope: !5842, file: !2, line: 88, type: !554)
!5854 = !DILocalVariable(name: "logbuf_len", scope: !5842, file: !2, line: 88, type: !554)
!5855 = !DILocation(line: 83, column: 30, scope: !5842)
!5856 = !DILocation(line: 83, column: 61, scope: !5842)
!5857 = !DILocation(line: 84, column: 15, scope: !5842)
!5858 = !DILocation(line: 86, column: 2, scope: !5842)
!5859 = !DILocation(line: 86, column: 10, scope: !5842)
!5860 = !DILocation(line: 87, column: 2, scope: !5842)
!5861 = !DILocation(line: 87, column: 8, scope: !5842)
!5862 = !DILocation(line: 88, column: 2, scope: !5842)
!5863 = !DILocation(line: 88, column: 9, scope: !5842)
!5864 = !DILocation(line: 88, column: 18, scope: !5842)
!5865 = !DILocation(line: 90, column: 7, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 90, column: 6)
!5867 = !DILocation(line: 90, column: 6, scope: !5842)
!5868 = !DILocation(line: 91, column: 3, scope: !5866)
!5869 = !DILocation(line: 93, column: 11, scope: !5842)
!5870 = !DILocation(line: 93, column: 9, scope: !5842)
!5871 = !DILocation(line: 94, column: 7, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 94, column: 6)
!5873 = !DILocation(line: 94, column: 6, scope: !5842)
!5874 = !DILocation(line: 95, column: 3, scope: !5872)
!5875 = !DILocation(line: 96, column: 27, scope: !5842)
!5876 = !DILocation(line: 96, column: 35, scope: !5842)
!5877 = !DILocation(line: 96, column: 57, scope: !5842)
!5878 = !DILocation(line: 96, column: 47, scope: !5842)
!5879 = !DILocation(line: 97, column: 41, scope: !5842)
!5880 = !DILocation(line: 97, column: 6, scope: !5842)
!5881 = !DILocation(line: 97, column: 48, scope: !5842)
!5882 = !DILocation(line: 96, column: 8, scope: !5842)
!5883 = !DILocation(line: 96, column: 6, scope: !5842)
!5884 = !DILocation(line: 98, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 98, column: 6)
!5886 = !DILocation(line: 98, column: 12, scope: !5885)
!5887 = !DILocation(line: 98, column: 10, scope: !5885)
!5888 = !DILocation(line: 98, column: 6, scope: !5842)
!5889 = !DILocation(line: 99, column: 3, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5885, file: !2, line: 98, column: 24)
!5891 = !DILocation(line: 100, column: 21, scope: !5890)
!5892 = !DILocation(line: 100, column: 30, scope: !5890)
!5893 = !DILocation(line: 100, column: 28, scope: !5890)
!5894 = !DILocation(line: 100, column: 35, scope: !5890)
!5895 = !DILocation(line: 100, column: 48, scope: !5890)
!5896 = !DILocation(line: 100, column: 46, scope: !5890)
!5897 = !DILocation(line: 100, column: 53, scope: !5890)
!5898 = !DILocation(line: 100, column: 58, scope: !5890)
!5899 = !DILocation(line: 100, column: 10, scope: !5890)
!5900 = !DILocation(line: 100, column: 7, scope: !5890)
!5901 = !DILocation(line: 101, column: 3, scope: !5890)
!5902 = !DILocation(line: 102, column: 2, scope: !5890)
!5903 = !DILocation(line: 103, column: 2, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5842, file: !2, line: 103, column: 2)
!5905 = !DILocation(line: 103, column: 2, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5904, file: !2, line: 103, column: 2)
!5907 = !DILocation(line: 104, column: 26, scope: !5842)
!5908 = !DILocation(line: 104, column: 2, scope: !5842)
!5909 = !DILocation(line: 105, column: 1, scope: !5842)
!5910 = distinct !DISubprogram(name: "sdev_format_header", scope: !2, file: !2, line: 38, type: !5911, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5913)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!554, !509, !554, !470, !105}
!5913 = !{!5914, !5915, !5916, !5917, !5918, !5919, !5922}
!5914 = !DILocalVariable(name: "logbuf", arg: 1, scope: !5910, file: !2, line: 38, type: !509)
!5915 = !DILocalVariable(name: "logbuf_len", arg: 2, scope: !5910, file: !2, line: 38, type: !554)
!5916 = !DILocalVariable(name: "name", arg: 3, scope: !5910, file: !2, line: 39, type: !470)
!5917 = !DILocalVariable(name: "tag", arg: 4, scope: !5910, file: !2, line: 39, type: !105)
!5918 = !DILocalVariable(name: "off", scope: !5910, file: !2, line: 41, type: !554)
!5919 = !DILocalVariable(name: "__ret_warn_on", scope: !5920, file: !2, line: 47, type: !105)
!5920 = distinct !DILexicalBlock(scope: !5921, file: !2, line: 47, column: 6)
!5921 = distinct !DILexicalBlock(scope: !5910, file: !2, line: 47, column: 6)
!5922 = !DILocalVariable(name: "__flags", scope: !5923, file: !2, line: 47, type: !105)
!5923 = distinct !DILexicalBlock(scope: !5924, file: !2, line: 47, column: 6)
!5924 = distinct !DILexicalBlock(scope: !5920, file: !2, line: 47, column: 6)
!5925 = !DILocation(line: 38, column: 40, scope: !5910)
!5926 = !DILocation(line: 38, column: 55, scope: !5910)
!5927 = !DILocation(line: 39, column: 18, scope: !5910)
!5928 = !DILocation(line: 39, column: 28, scope: !5910)
!5929 = !DILocation(line: 41, column: 2, scope: !5910)
!5930 = !DILocation(line: 41, column: 9, scope: !5910)
!5931 = !DILocation(line: 43, column: 6, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5910, file: !2, line: 43, column: 6)
!5933 = !DILocation(line: 43, column: 6, scope: !5910)
!5934 = !DILocation(line: 44, column: 20, scope: !5932)
!5935 = !DILocation(line: 44, column: 29, scope: !5932)
!5936 = !DILocation(line: 44, column: 27, scope: !5932)
!5937 = !DILocation(line: 44, column: 34, scope: !5932)
!5938 = !DILocation(line: 44, column: 47, scope: !5932)
!5939 = !DILocation(line: 44, column: 45, scope: !5932)
!5940 = !DILocation(line: 45, column: 15, scope: !5932)
!5941 = !DILocation(line: 44, column: 10, scope: !5932)
!5942 = !DILocation(line: 44, column: 7, scope: !5932)
!5943 = !DILocation(line: 44, column: 3, scope: !5932)
!5944 = !DILocation(line: 47, column: 6, scope: !5920)
!5945 = !DILocation(line: 47, column: 6, scope: !5924)
!5946 = !DILocation(line: 47, column: 6, scope: !5923)
!5947 = !DILocation(line: 47, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5923, file: !2, line: 47, column: 6)
!5949 = !DILocation(line: 47, column: 6, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5923, file: !2, line: 47, column: 6)
!5951 = !{i64 2156036627, i64 2156036656, i64 2156036702, i64 2156036760, i64 2156036814, i64 2156036868, i64 2156036923, i64 2156036954, i64 2156037262, i64 2156037268, i64 2156037315, i64 2156037338, i64 2156037364}
!5952 = !DILocation(line: 47, column: 6, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5923, file: !2, line: 47, column: 6)
!5954 = !DILocation(line: 47, column: 6, scope: !5921)
!5955 = !DILocation(line: 47, column: 6, scope: !5910)
!5956 = !DILocation(line: 48, column: 10, scope: !5921)
!5957 = !DILocation(line: 48, column: 3, scope: !5921)
!5958 = !DILocation(line: 50, column: 6, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5910, file: !2, line: 50, column: 6)
!5960 = !DILocation(line: 50, column: 10, scope: !5959)
!5961 = !DILocation(line: 50, column: 6, scope: !5910)
!5962 = !DILocation(line: 51, column: 20, scope: !5959)
!5963 = !DILocation(line: 51, column: 29, scope: !5959)
!5964 = !DILocation(line: 51, column: 27, scope: !5959)
!5965 = !DILocation(line: 51, column: 34, scope: !5959)
!5966 = !DILocation(line: 51, column: 47, scope: !5959)
!5967 = !DILocation(line: 51, column: 45, scope: !5959)
!5968 = !DILocation(line: 52, column: 17, scope: !5959)
!5969 = !DILocation(line: 51, column: 10, scope: !5959)
!5970 = !DILocation(line: 51, column: 7, scope: !5959)
!5971 = !DILocation(line: 51, column: 3, scope: !5959)
!5972 = !DILocation(line: 53, column: 9, scope: !5910)
!5973 = !DILocation(line: 53, column: 2, scope: !5910)
!5974 = !DILocation(line: 54, column: 1, scope: !5910)
!5975 = distinct !DISubprogram(name: "scmd_name", scope: !2, file: !2, line: 29, type: !5976, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5978)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!470, !5845}
!5978 = !{!5979, !5980}
!5979 = !DILocalVariable(name: "scmd", arg: 1, scope: !5975, file: !2, line: 29, type: !5845)
!5980 = !DILocalVariable(name: "rq", scope: !5975, file: !2, line: 31, type: !251)
!5981 = !DILocation(line: 29, column: 61, scope: !5975)
!5982 = !DILocation(line: 31, column: 2, scope: !5975)
!5983 = !DILocation(line: 31, column: 18, scope: !5975)
!5984 = !DILocation(line: 31, column: 58, scope: !5975)
!5985 = !DILocation(line: 31, column: 23, scope: !5975)
!5986 = !DILocation(line: 33, column: 7, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5975, file: !2, line: 33, column: 6)
!5988 = !DILocation(line: 33, column: 11, scope: !5987)
!5989 = !DILocation(line: 33, column: 13, scope: !5987)
!5990 = !DILocation(line: 33, column: 17, scope: !5987)
!5991 = !DILocation(line: 33, column: 21, scope: !5987)
!5992 = !DILocation(line: 33, column: 24, scope: !5987)
!5993 = !DILocation(line: 33, column: 6, scope: !5975)
!5994 = !DILocation(line: 34, column: 3, scope: !5987)
!5995 = !DILocation(line: 35, column: 9, scope: !5975)
!5996 = !DILocation(line: 35, column: 13, scope: !5975)
!5997 = !DILocation(line: 35, column: 16, scope: !5975)
!5998 = !DILocation(line: 35, column: 22, scope: !5975)
!5999 = !DILocation(line: 35, column: 2, scope: !5975)
!6000 = !DILocation(line: 36, column: 1, scope: !5975)
!6001 = distinct !DISubprogram(name: "scsi_cmd_to_rq", scope: !206, file: !206, line: 147, type: !6002, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6004)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!251, !236}
!6004 = !{!6005}
!6005 = !DILocalVariable(name: "scmd", arg: 1, scope: !6001, file: !206, line: 147, type: !236)
!6006 = !DILocation(line: 147, column: 64, scope: !6001)
!6007 = !DILocation(line: 149, column: 28, scope: !6001)
!6008 = !DILocation(line: 149, column: 9, scope: !6001)
!6009 = !DILocation(line: 149, column: 2, scope: !6001)
!6010 = distinct !DISubprogram(name: "__scsi_format_command", scope: !2, file: !2, line: 157, type: !6011, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6013)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!554, !509, !554, !661, !554}
!6013 = !{!6014, !6015, !6016, !6017, !6018, !6019, !6020}
!6014 = !DILocalVariable(name: "logbuf", arg: 1, scope: !6010, file: !2, line: 157, type: !509)
!6015 = !DILocalVariable(name: "logbuf_len", arg: 2, scope: !6010, file: !2, line: 157, type: !554)
!6016 = !DILocalVariable(name: "cdb", arg: 3, scope: !6010, file: !2, line: 158, type: !661)
!6017 = !DILocalVariable(name: "cdb_len", arg: 4, scope: !6010, file: !2, line: 158, type: !554)
!6018 = !DILocalVariable(name: "len", scope: !6010, file: !2, line: 160, type: !105)
!6019 = !DILocalVariable(name: "k", scope: !6010, file: !2, line: 160, type: !105)
!6020 = !DILocalVariable(name: "off", scope: !6010, file: !2, line: 161, type: !554)
!6021 = !DILocation(line: 157, column: 36, scope: !6010)
!6022 = !DILocation(line: 157, column: 51, scope: !6010)
!6023 = !DILocation(line: 158, column: 30, scope: !6010)
!6024 = !DILocation(line: 158, column: 42, scope: !6010)
!6025 = !DILocation(line: 160, column: 2, scope: !6010)
!6026 = !DILocation(line: 160, column: 6, scope: !6010)
!6027 = !DILocation(line: 160, column: 11, scope: !6010)
!6028 = !DILocation(line: 161, column: 2, scope: !6010)
!6029 = !DILocation(line: 161, column: 9, scope: !6010)
!6030 = !DILocation(line: 163, column: 32, scope: !6010)
!6031 = !DILocation(line: 163, column: 40, scope: !6010)
!6032 = !DILocation(line: 163, column: 52, scope: !6010)
!6033 = !DILocation(line: 163, column: 8, scope: !6010)
!6034 = !DILocation(line: 163, column: 6, scope: !6010)
!6035 = !DILocation(line: 164, column: 6, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 164, column: 6)
!6037 = !DILocation(line: 164, column: 13, scope: !6036)
!6038 = !DILocation(line: 164, column: 10, scope: !6036)
!6039 = !DILocation(line: 164, column: 6, scope: !6010)
!6040 = !DILocation(line: 165, column: 10, scope: !6036)
!6041 = !DILocation(line: 165, column: 3, scope: !6036)
!6042 = !DILocation(line: 166, column: 26, scope: !6010)
!6043 = !DILocation(line: 166, column: 8, scope: !6010)
!6044 = !DILocation(line: 166, column: 6, scope: !6010)
!6045 = !DILocation(line: 167, column: 6, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 167, column: 6)
!6047 = !DILocation(line: 167, column: 16, scope: !6046)
!6048 = !DILocation(line: 167, column: 14, scope: !6046)
!6049 = !DILocation(line: 167, column: 6, scope: !6010)
!6050 = !DILocation(line: 168, column: 9, scope: !6046)
!6051 = !DILocation(line: 168, column: 7, scope: !6046)
!6052 = !DILocation(line: 168, column: 3, scope: !6046)
!6053 = !DILocation(line: 170, column: 9, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 170, column: 2)
!6055 = !DILocation(line: 170, column: 7, scope: !6054)
!6056 = !DILocation(line: 170, column: 14, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6054, file: !2, line: 170, column: 2)
!6058 = !DILocation(line: 170, column: 18, scope: !6057)
!6059 = !DILocation(line: 170, column: 16, scope: !6057)
!6060 = !DILocation(line: 170, column: 2, scope: !6054)
!6061 = !DILocation(line: 171, column: 7, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6063, file: !2, line: 171, column: 7)
!6063 = distinct !DILexicalBlock(scope: !6057, file: !2, line: 170, column: 28)
!6064 = !DILocation(line: 171, column: 13, scope: !6062)
!6065 = !DILocation(line: 171, column: 24, scope: !6062)
!6066 = !DILocation(line: 171, column: 11, scope: !6062)
!6067 = !DILocation(line: 171, column: 7, scope: !6063)
!6068 = !DILocation(line: 172, column: 4, scope: !6062)
!6069 = !DILocation(line: 173, column: 20, scope: !6063)
!6070 = !DILocation(line: 173, column: 29, scope: !6063)
!6071 = !DILocation(line: 173, column: 27, scope: !6063)
!6072 = !DILocation(line: 173, column: 34, scope: !6063)
!6073 = !DILocation(line: 173, column: 47, scope: !6063)
!6074 = !DILocation(line: 173, column: 45, scope: !6063)
!6075 = !DILocation(line: 174, column: 15, scope: !6063)
!6076 = !DILocation(line: 174, column: 19, scope: !6063)
!6077 = !DILocation(line: 173, column: 10, scope: !6063)
!6078 = !DILocation(line: 173, column: 7, scope: !6063)
!6079 = !DILocation(line: 175, column: 2, scope: !6063)
!6080 = !DILocation(line: 170, column: 23, scope: !6057)
!6081 = !DILocation(line: 170, column: 2, scope: !6057)
!6082 = distinct !{!6082, !6060, !6083, !6084, !6085}
!6083 = !DILocation(line: 175, column: 2, scope: !6054)
!6084 = !{!"llvm.loop.mustprogress"}
!6085 = !{!"llvm.loop.unroll.disable"}
!6086 = !DILocation(line: 176, column: 9, scope: !6010)
!6087 = !DILocation(line: 176, column: 2, scope: !6010)
!6088 = !DILocation(line: 177, column: 1, scope: !6010)
!6089 = distinct !DISubprogram(name: "scsi_format_opcode_name", scope: !2, file: !2, line: 108, type: !6090, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6092)
!6090 = !DISubroutineType(types: !6091)
!6091 = !{!554, !509, !554, !661}
!6092 = !{!6093, !6094, !6095, !6096, !6097, !6098, !6099, !6100, !6101, !6104, !6111, !6114, !6116}
!6093 = !DILocalVariable(name: "buffer", arg: 1, scope: !6089, file: !2, line: 108, type: !509)
!6094 = !DILocalVariable(name: "buf_len", arg: 2, scope: !6089, file: !2, line: 108, type: !554)
!6095 = !DILocalVariable(name: "cdbp", arg: 3, scope: !6089, file: !2, line: 109, type: !661)
!6096 = !DILocalVariable(name: "sa", scope: !6089, file: !2, line: 111, type: !105)
!6097 = !DILocalVariable(name: "cdb0", scope: !6089, file: !2, line: 111, type: !105)
!6098 = !DILocalVariable(name: "cdb_name", scope: !6089, file: !2, line: 112, type: !470)
!6099 = !DILocalVariable(name: "sa_name", scope: !6089, file: !2, line: 112, type: !470)
!6100 = !DILocalVariable(name: "off", scope: !6089, file: !2, line: 113, type: !554)
!6101 = !DILocalVariable(name: "len", scope: !6102, file: !2, line: 117, type: !105)
!6102 = distinct !DILexicalBlock(scope: !6103, file: !2, line: 116, column: 35)
!6103 = distinct !DILexicalBlock(scope: !6089, file: !2, line: 116, column: 6)
!6104 = !DILocalVariable(name: "__ret_warn_on", scope: !6105, file: !2, line: 134, type: !105)
!6105 = distinct !DILexicalBlock(scope: !6106, file: !2, line: 134, column: 8)
!6106 = distinct !DILexicalBlock(scope: !6107, file: !2, line: 134, column: 8)
!6107 = distinct !DILexicalBlock(scope: !6108, file: !2, line: 132, column: 8)
!6108 = distinct !DILexicalBlock(scope: !6109, file: !2, line: 130, column: 7)
!6109 = distinct !DILexicalBlock(scope: !6110, file: !2, line: 129, column: 59)
!6110 = distinct !DILexicalBlock(scope: !6089, file: !2, line: 129, column: 6)
!6111 = !DILocalVariable(name: "__flags", scope: !6112, file: !2, line: 134, type: !105)
!6112 = distinct !DILexicalBlock(scope: !6113, file: !2, line: 134, column: 8)
!6113 = distinct !DILexicalBlock(scope: !6105, file: !2, line: 134, column: 8)
!6114 = !DILocalVariable(name: "__ret_warn_on", scope: !6115, file: !2, line: 153, type: !105)
!6115 = distinct !DILexicalBlock(scope: !6089, file: !2, line: 153, column: 2)
!6116 = !DILocalVariable(name: "__flags", scope: !6117, file: !2, line: 153, type: !105)
!6117 = distinct !DILexicalBlock(scope: !6118, file: !2, line: 153, column: 2)
!6118 = distinct !DILexicalBlock(scope: !6115, file: !2, line: 153, column: 2)
!6119 = !DILocation(line: 108, column: 45, scope: !6089)
!6120 = !DILocation(line: 108, column: 60, scope: !6089)
!6121 = !DILocation(line: 109, column: 32, scope: !6089)
!6122 = !DILocation(line: 111, column: 2, scope: !6089)
!6123 = !DILocation(line: 111, column: 6, scope: !6089)
!6124 = !DILocation(line: 111, column: 10, scope: !6089)
!6125 = !DILocation(line: 112, column: 2, scope: !6089)
!6126 = !DILocation(line: 112, column: 14, scope: !6089)
!6127 = !DILocation(line: 112, column: 32, scope: !6089)
!6128 = !DILocation(line: 113, column: 2, scope: !6089)
!6129 = !DILocation(line: 113, column: 9, scope: !6089)
!6130 = !DILocation(line: 115, column: 9, scope: !6089)
!6131 = !DILocation(line: 115, column: 7, scope: !6089)
!6132 = !DILocation(line: 116, column: 6, scope: !6103)
!6133 = !DILocation(line: 116, column: 11, scope: !6103)
!6134 = !DILocation(line: 116, column: 6, scope: !6089)
!6135 = !DILocation(line: 117, column: 3, scope: !6102)
!6136 = !DILocation(line: 117, column: 7, scope: !6102)
!6137 = !DILocation(line: 117, column: 36, scope: !6102)
!6138 = !DILocation(line: 117, column: 13, scope: !6102)
!6139 = !DILocation(line: 119, column: 7, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6102, file: !2, line: 119, column: 7)
!6141 = !DILocation(line: 119, column: 11, scope: !6140)
!6142 = !DILocation(line: 119, column: 7, scope: !6102)
!6143 = !DILocation(line: 120, column: 20, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6140, file: !2, line: 119, column: 17)
!6145 = !DILocation(line: 120, column: 28, scope: !6144)
!6146 = !DILocation(line: 122, column: 6, scope: !6144)
!6147 = !DILocation(line: 120, column: 10, scope: !6144)
!6148 = !DILocation(line: 120, column: 8, scope: !6144)
!6149 = !DILocation(line: 123, column: 11, scope: !6144)
!6150 = !DILocation(line: 123, column: 4, scope: !6144)
!6151 = !DILocation(line: 125, column: 9, scope: !6102)
!6152 = !DILocation(line: 125, column: 17, scope: !6102)
!6153 = !DILocation(line: 125, column: 25, scope: !6102)
!6154 = !DILocation(line: 125, column: 23, scope: !6102)
!6155 = !DILocation(line: 125, column: 6, scope: !6102)
!6156 = !DILocation(line: 126, column: 2, scope: !6103)
!6157 = !DILocation(line: 126, column: 2, scope: !6102)
!6158 = !DILocation(line: 127, column: 8, scope: !6103)
!6159 = !DILocation(line: 127, column: 16, scope: !6103)
!6160 = !DILocation(line: 127, column: 6, scope: !6103)
!6161 = !DILocation(line: 129, column: 27, scope: !6110)
!6162 = !DILocation(line: 129, column: 33, scope: !6110)
!6163 = !DILocation(line: 129, column: 7, scope: !6110)
!6164 = !DILocation(line: 129, column: 6, scope: !6089)
!6165 = !DILocation(line: 130, column: 7, scope: !6108)
!6166 = !DILocation(line: 130, column: 7, scope: !6109)
!6167 = !DILocation(line: 131, column: 20, scope: !6108)
!6168 = !DILocation(line: 131, column: 28, scope: !6108)
!6169 = !DILocation(line: 131, column: 43, scope: !6108)
!6170 = !DILocation(line: 131, column: 10, scope: !6108)
!6171 = !DILocation(line: 131, column: 8, scope: !6108)
!6172 = !DILocation(line: 131, column: 4, scope: !6108)
!6173 = !DILocation(line: 133, column: 20, scope: !6107)
!6174 = !DILocation(line: 133, column: 28, scope: !6107)
!6175 = !DILocation(line: 133, column: 52, scope: !6107)
!6176 = !DILocation(line: 133, column: 10, scope: !6107)
!6177 = !DILocation(line: 133, column: 8, scope: !6107)
!6178 = !DILocation(line: 134, column: 8, scope: !6105)
!6179 = !DILocation(line: 134, column: 8, scope: !6113)
!6180 = !DILocation(line: 134, column: 8, scope: !6112)
!6181 = !DILocation(line: 134, column: 8, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6112, file: !2, line: 134, column: 8)
!6183 = !DILocation(line: 134, column: 8, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6112, file: !2, line: 134, column: 8)
!6185 = !{i64 2156043814, i64 2156043843, i64 2156043889, i64 2156043947, i64 2156044001, i64 2156044055, i64 2156044110, i64 2156044141, i64 2156044449, i64 2156044455, i64 2156044502, i64 2156044525, i64 2156044551}
!6186 = !DILocation(line: 134, column: 8, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6112, file: !2, line: 134, column: 8)
!6188 = !DILocation(line: 134, column: 8, scope: !6106)
!6189 = !DILocation(line: 134, column: 8, scope: !6107)
!6190 = !DILocation(line: 135, column: 12, scope: !6106)
!6191 = !DILocation(line: 135, column: 5, scope: !6106)
!6192 = !DILocation(line: 136, column: 8, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6107, file: !2, line: 136, column: 8)
!6194 = !DILocation(line: 136, column: 13, scope: !6193)
!6195 = !DILocation(line: 136, column: 8, scope: !6107)
!6196 = !DILocation(line: 137, column: 22, scope: !6193)
!6197 = !DILocation(line: 137, column: 31, scope: !6193)
!6198 = !DILocation(line: 137, column: 29, scope: !6193)
!6199 = !DILocation(line: 137, column: 36, scope: !6193)
!6200 = !DILocation(line: 137, column: 46, scope: !6193)
!6201 = !DILocation(line: 137, column: 44, scope: !6193)
!6202 = !DILocation(line: 137, column: 12, scope: !6193)
!6203 = !DILocation(line: 137, column: 9, scope: !6193)
!6204 = !DILocation(line: 137, column: 5, scope: !6193)
!6205 = !DILocation(line: 139, column: 13, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6193, file: !2, line: 139, column: 13)
!6207 = !DILocation(line: 139, column: 18, scope: !6206)
!6208 = !DILocation(line: 139, column: 26, scope: !6206)
!6209 = !DILocation(line: 139, column: 29, scope: !6206)
!6210 = !DILocation(line: 139, column: 34, scope: !6206)
!6211 = !DILocation(line: 139, column: 13, scope: !6193)
!6212 = !DILocation(line: 140, column: 22, scope: !6206)
!6213 = !DILocation(line: 140, column: 31, scope: !6206)
!6214 = !DILocation(line: 140, column: 29, scope: !6206)
!6215 = !DILocation(line: 140, column: 36, scope: !6206)
!6216 = !DILocation(line: 140, column: 46, scope: !6206)
!6217 = !DILocation(line: 140, column: 44, scope: !6206)
!6218 = !DILocation(line: 140, column: 12, scope: !6206)
!6219 = !DILocation(line: 140, column: 9, scope: !6206)
!6220 = !DILocation(line: 140, column: 5, scope: !6206)
!6221 = !DILocation(line: 143, column: 2, scope: !6109)
!6222 = !DILocation(line: 144, column: 7, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6224, file: !2, line: 144, column: 7)
!6224 = distinct !DILexicalBlock(scope: !6110, file: !2, line: 143, column: 9)
!6225 = !DILocation(line: 144, column: 7, scope: !6224)
!6226 = !DILocation(line: 145, column: 20, scope: !6223)
!6227 = !DILocation(line: 145, column: 28, scope: !6223)
!6228 = !DILocation(line: 145, column: 43, scope: !6223)
!6229 = !DILocation(line: 145, column: 10, scope: !6223)
!6230 = !DILocation(line: 145, column: 8, scope: !6223)
!6231 = !DILocation(line: 145, column: 4, scope: !6223)
!6232 = !DILocation(line: 146, column: 12, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6223, file: !2, line: 146, column: 12)
!6234 = !DILocation(line: 146, column: 12, scope: !6223)
!6235 = !DILocation(line: 147, column: 20, scope: !6233)
!6236 = !DILocation(line: 147, column: 28, scope: !6233)
!6237 = !DILocation(line: 148, column: 6, scope: !6233)
!6238 = !DILocation(line: 148, column: 16, scope: !6233)
!6239 = !DILocation(line: 147, column: 10, scope: !6233)
!6240 = !DILocation(line: 147, column: 8, scope: !6233)
!6241 = !DILocation(line: 147, column: 4, scope: !6233)
!6242 = !DILocation(line: 150, column: 20, scope: !6233)
!6243 = !DILocation(line: 150, column: 28, scope: !6233)
!6244 = !DILocation(line: 151, column: 30, scope: !6233)
!6245 = !DILocation(line: 151, column: 36, scope: !6233)
!6246 = !DILocation(line: 150, column: 10, scope: !6233)
!6247 = !DILocation(line: 150, column: 8, scope: !6233)
!6248 = !DILocation(line: 153, column: 2, scope: !6115)
!6249 = !DILocation(line: 153, column: 2, scope: !6118)
!6250 = !DILocation(line: 153, column: 2, scope: !6117)
!6251 = !DILocation(line: 153, column: 2, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6117, file: !2, line: 153, column: 2)
!6253 = !DILocation(line: 153, column: 2, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6117, file: !2, line: 153, column: 2)
!6255 = !{i64 2156045324, i64 2156045353, i64 2156045399, i64 2156045457, i64 2156045511, i64 2156045565, i64 2156045620, i64 2156045651, i64 2156045959, i64 2156045965, i64 2156046012, i64 2156046035, i64 2156046061}
!6256 = !DILocation(line: 153, column: 2, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6117, file: !2, line: 153, column: 2)
!6258 = !DILocation(line: 153, column: 2, scope: !6089)
!6259 = !DILocation(line: 154, column: 9, scope: !6089)
!6260 = !DILocation(line: 154, column: 2, scope: !6089)
!6261 = !DILocation(line: 155, column: 1, scope: !6089)
!6262 = distinct !DISubprogram(name: "scsi_command_size", scope: !6263, file: !6263, line: 35, type: !6264, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6266)
!6263 = !DIFile(filename: "./include/scsi/scsi_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b8b3b24b57e553caf051ea243d77c221")
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!23, !661}
!6266 = !{!6267}
!6267 = !DILocalVariable(name: "cmnd", arg: 1, scope: !6262, file: !6263, line: 35, type: !661)
!6268 = !DILocation(line: 35, column: 40, scope: !6262)
!6269 = !DILocation(line: 37, column: 10, scope: !6262)
!6270 = !DILocation(line: 37, column: 18, scope: !6262)
!6271 = !DILocation(line: 37, column: 9, scope: !6262)
!6272 = !DILocation(line: 38, column: 26, scope: !6262)
!6273 = !DILocation(line: 38, column: 3, scope: !6262)
!6274 = !DILocation(line: 38, column: 34, scope: !6262)
!6275 = !DILocation(line: 37, column: 2, scope: !6262)
!6276 = distinct !DISubprogram(name: "scsi_print_command", scope: !2, file: !2, line: 180, type: !6277, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6279)
!6277 = !DISubroutineType(types: !6278)
!6278 = !{null, !236}
!6279 = !{!6280, !6281, !6282, !6283, !6284, !6285, !6288, !6291, !6297, !6299, !6300, !6303, !6306, !6309, !6312, !6313}
!6280 = !DILocalVariable(name: "cmd", arg: 1, scope: !6276, file: !2, line: 180, type: !236)
!6281 = !DILocalVariable(name: "k", scope: !6276, file: !2, line: 182, type: !105)
!6282 = !DILocalVariable(name: "logbuf", scope: !6276, file: !2, line: 183, type: !509)
!6283 = !DILocalVariable(name: "off", scope: !6276, file: !2, line: 184, type: !554)
!6284 = !DILocalVariable(name: "logbuf_len", scope: !6276, file: !2, line: 184, type: !554)
!6285 = !DILocalVariable(name: "__ret_warn_on", scope: !6286, file: !2, line: 195, type: !105)
!6286 = distinct !DILexicalBlock(scope: !6287, file: !2, line: 195, column: 6)
!6287 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 195, column: 6)
!6288 = !DILocalVariable(name: "__flags", scope: !6289, file: !2, line: 195, type: !105)
!6289 = distinct !DILexicalBlock(scope: !6290, file: !2, line: 195, column: 6)
!6290 = distinct !DILexicalBlock(scope: !6286, file: !2, line: 195, column: 6)
!6291 = !DILocalVariable(name: "linelen", scope: !6292, file: !2, line: 209, type: !554)
!6292 = distinct !DILexicalBlock(scope: !6293, file: !2, line: 208, column: 42)
!6293 = distinct !DILexicalBlock(scope: !6294, file: !2, line: 208, column: 3)
!6294 = distinct !DILexicalBlock(scope: !6295, file: !2, line: 208, column: 3)
!6295 = distinct !DILexicalBlock(scope: !6296, file: !2, line: 204, column: 25)
!6296 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 204, column: 6)
!6297 = !DILocalVariable(name: "__UNIQUE_ID___x351", scope: !6298, file: !2, line: 209, type: !105)
!6298 = distinct !DILexicalBlock(scope: !6292, file: !2, line: 209, column: 21)
!6299 = !DILocalVariable(name: "__UNIQUE_ID___y352", scope: !6298, file: !2, line: 209, type: !105)
!6300 = !DILocalVariable(name: "__ret_warn_on", scope: !6301, file: !2, line: 214, type: !105)
!6301 = distinct !DILexicalBlock(scope: !6302, file: !2, line: 214, column: 9)
!6302 = distinct !DILexicalBlock(scope: !6292, file: !2, line: 214, column: 8)
!6303 = !DILocalVariable(name: "__flags", scope: !6304, file: !2, line: 214, type: !105)
!6304 = distinct !DILexicalBlock(scope: !6305, file: !2, line: 214, column: 9)
!6305 = distinct !DILexicalBlock(scope: !6301, file: !2, line: 214, column: 9)
!6306 = !DILocalVariable(name: "__ret_warn_on", scope: !6307, file: !2, line: 226, type: !105)
!6307 = distinct !DILexicalBlock(scope: !6308, file: !2, line: 226, column: 7)
!6308 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 226, column: 6)
!6309 = !DILocalVariable(name: "__flags", scope: !6310, file: !2, line: 226, type: !105)
!6310 = distinct !DILexicalBlock(scope: !6311, file: !2, line: 226, column: 7)
!6311 = distinct !DILexicalBlock(scope: !6307, file: !2, line: 226, column: 7)
!6312 = !DILabel(scope: !6276, name: "out_printk", file: !2, line: 232)
!6313 = !DILabel(scope: !6276, name: "out", file: !2, line: 234)
!6314 = !DILocation(line: 180, column: 43, scope: !6276)
!6315 = !DILocation(line: 182, column: 2, scope: !6276)
!6316 = !DILocation(line: 182, column: 6, scope: !6276)
!6317 = !DILocation(line: 183, column: 2, scope: !6276)
!6318 = !DILocation(line: 183, column: 8, scope: !6276)
!6319 = !DILocation(line: 184, column: 2, scope: !6276)
!6320 = !DILocation(line: 184, column: 9, scope: !6276)
!6321 = !DILocation(line: 184, column: 14, scope: !6276)
!6322 = !DILocation(line: 186, column: 11, scope: !6276)
!6323 = !DILocation(line: 186, column: 9, scope: !6276)
!6324 = !DILocation(line: 187, column: 7, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 187, column: 6)
!6326 = !DILocation(line: 187, column: 6, scope: !6276)
!6327 = !DILocation(line: 188, column: 3, scope: !6325)
!6328 = !DILocation(line: 190, column: 27, scope: !6276)
!6329 = !DILocation(line: 190, column: 35, scope: !6276)
!6330 = !DILocation(line: 191, column: 16, scope: !6276)
!6331 = !DILocation(line: 191, column: 6, scope: !6276)
!6332 = !DILocation(line: 191, column: 37, scope: !6276)
!6333 = !DILocation(line: 191, column: 22, scope: !6276)
!6334 = !DILocation(line: 191, column: 43, scope: !6276)
!6335 = !DILocation(line: 190, column: 8, scope: !6276)
!6336 = !DILocation(line: 190, column: 6, scope: !6276)
!6337 = !DILocation(line: 192, column: 6, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 192, column: 6)
!6339 = !DILocation(line: 192, column: 13, scope: !6338)
!6340 = !DILocation(line: 192, column: 10, scope: !6338)
!6341 = !DILocation(line: 192, column: 6, scope: !6276)
!6342 = !DILocation(line: 193, column: 3, scope: !6338)
!6343 = !DILocation(line: 194, column: 19, scope: !6276)
!6344 = !DILocation(line: 194, column: 28, scope: !6276)
!6345 = !DILocation(line: 194, column: 26, scope: !6276)
!6346 = !DILocation(line: 194, column: 33, scope: !6276)
!6347 = !DILocation(line: 194, column: 46, scope: !6276)
!6348 = !DILocation(line: 194, column: 44, scope: !6276)
!6349 = !DILocation(line: 194, column: 9, scope: !6276)
!6350 = !DILocation(line: 194, column: 6, scope: !6276)
!6351 = !DILocation(line: 195, column: 6, scope: !6286)
!6352 = !DILocation(line: 195, column: 6, scope: !6290)
!6353 = !DILocation(line: 195, column: 6, scope: !6289)
!6354 = !DILocation(line: 195, column: 6, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6289, file: !2, line: 195, column: 6)
!6356 = !DILocation(line: 195, column: 6, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6289, file: !2, line: 195, column: 6)
!6358 = !{i64 2156048716, i64 2156048745, i64 2156048791, i64 2156048849, i64 2156048903, i64 2156048957, i64 2156049012, i64 2156049043, i64 2156049351, i64 2156049357, i64 2156049404, i64 2156049427, i64 2156049453}
!6359 = !DILocation(line: 195, column: 6, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6289, file: !2, line: 195, column: 6)
!6361 = !DILocation(line: 195, column: 6, scope: !6287)
!6362 = !DILocation(line: 195, column: 6, scope: !6276)
!6363 = !DILocation(line: 196, column: 3, scope: !6287)
!6364 = !DILocation(line: 198, column: 33, scope: !6276)
!6365 = !DILocation(line: 198, column: 42, scope: !6276)
!6366 = !DILocation(line: 198, column: 40, scope: !6276)
!6367 = !DILocation(line: 198, column: 47, scope: !6276)
!6368 = !DILocation(line: 198, column: 60, scope: !6276)
!6369 = !DILocation(line: 198, column: 58, scope: !6276)
!6370 = !DILocation(line: 199, column: 12, scope: !6276)
!6371 = !DILocation(line: 199, column: 17, scope: !6276)
!6372 = !DILocation(line: 198, column: 9, scope: !6276)
!6373 = !DILocation(line: 198, column: 6, scope: !6276)
!6374 = !DILocation(line: 200, column: 6, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 200, column: 6)
!6376 = !DILocation(line: 200, column: 13, scope: !6375)
!6377 = !DILocation(line: 200, column: 10, scope: !6375)
!6378 = !DILocation(line: 200, column: 6, scope: !6276)
!6379 = !DILocation(line: 201, column: 3, scope: !6375)
!6380 = !DILocation(line: 204, column: 6, scope: !6296)
!6381 = !DILocation(line: 204, column: 11, scope: !6296)
!6382 = !DILocation(line: 204, column: 19, scope: !6296)
!6383 = !DILocation(line: 204, column: 6, scope: !6276)
!6384 = !DILocation(line: 206, column: 20, scope: !6295)
!6385 = !DILocation(line: 206, column: 29, scope: !6295)
!6386 = !DILocation(line: 206, column: 27, scope: !6295)
!6387 = !DILocation(line: 206, column: 34, scope: !6295)
!6388 = !DILocation(line: 206, column: 47, scope: !6295)
!6389 = !DILocation(line: 206, column: 45, scope: !6295)
!6390 = !DILocation(line: 206, column: 10, scope: !6295)
!6391 = !DILocation(line: 206, column: 7, scope: !6295)
!6392 = !DILocation(line: 207, column: 3, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6295, file: !2, line: 207, column: 3)
!6394 = !DILocation(line: 207, column: 3, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6393, file: !2, line: 207, column: 3)
!6396 = !DILocation(line: 208, column: 10, scope: !6294)
!6397 = !DILocation(line: 208, column: 8, scope: !6294)
!6398 = !DILocation(line: 208, column: 15, scope: !6293)
!6399 = !DILocation(line: 208, column: 19, scope: !6293)
!6400 = !DILocation(line: 208, column: 24, scope: !6293)
!6401 = !DILocation(line: 208, column: 17, scope: !6293)
!6402 = !DILocation(line: 208, column: 3, scope: !6294)
!6403 = !DILocation(line: 209, column: 4, scope: !6292)
!6404 = !DILocation(line: 209, column: 11, scope: !6292)
!6405 = !DILocation(line: 209, column: 21, scope: !6298)
!6406 = !DILocation(line: 209, column: 21, scope: !6292)
!6407 = !DILocation(line: 211, column: 29, scope: !6292)
!6408 = !DILocation(line: 211, column: 37, scope: !6292)
!6409 = !DILocation(line: 212, column: 18, scope: !6292)
!6410 = !DILocation(line: 212, column: 8, scope: !6292)
!6411 = !DILocation(line: 213, column: 23, scope: !6292)
!6412 = !DILocation(line: 213, column: 8, scope: !6292)
!6413 = !DILocation(line: 213, column: 29, scope: !6292)
!6414 = !DILocation(line: 211, column: 10, scope: !6292)
!6415 = !DILocation(line: 211, column: 8, scope: !6292)
!6416 = !DILocation(line: 214, column: 9, scope: !6301)
!6417 = !DILocation(line: 214, column: 9, scope: !6305)
!6418 = !DILocation(line: 214, column: 9, scope: !6304)
!6419 = !DILocation(line: 214, column: 9, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6304, file: !2, line: 214, column: 9)
!6421 = !DILocation(line: 214, column: 9, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6304, file: !2, line: 214, column: 9)
!6423 = !{i64 2156058683, i64 2156058712, i64 2156058758, i64 2156058816, i64 2156058870, i64 2156058924, i64 2156058979, i64 2156059010, i64 2156059318, i64 2156059324, i64 2156059371, i64 2156059394, i64 2156059420}
!6424 = !DILocation(line: 214, column: 9, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6304, file: !2, line: 214, column: 9)
!6426 = !DILocation(line: 214, column: 9, scope: !6302)
!6427 = !DILocation(line: 214, column: 8, scope: !6292)
!6428 = !DILocation(line: 215, column: 22, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6302, file: !2, line: 214, column: 41)
!6430 = !DILocation(line: 215, column: 31, scope: !6429)
!6431 = !DILocation(line: 215, column: 29, scope: !6429)
!6432 = !DILocation(line: 215, column: 36, scope: !6429)
!6433 = !DILocation(line: 215, column: 49, scope: !6429)
!6434 = !DILocation(line: 215, column: 47, scope: !6429)
!6435 = !DILocation(line: 216, column: 23, scope: !6429)
!6436 = !DILocation(line: 215, column: 12, scope: !6429)
!6437 = !DILocation(line: 215, column: 9, scope: !6429)
!6438 = !DILocation(line: 217, column: 25, scope: !6429)
!6439 = !DILocation(line: 217, column: 30, scope: !6429)
!6440 = !DILocation(line: 217, column: 35, scope: !6429)
!6441 = !DILocation(line: 217, column: 39, scope: !6429)
!6442 = !DILocation(line: 218, column: 17, scope: !6429)
!6443 = !DILocation(line: 218, column: 26, scope: !6429)
!6444 = !DILocation(line: 218, column: 24, scope: !6429)
!6445 = !DILocation(line: 219, column: 10, scope: !6429)
!6446 = !DILocation(line: 219, column: 23, scope: !6429)
!6447 = !DILocation(line: 219, column: 21, scope: !6429)
!6448 = !DILocation(line: 217, column: 5, scope: !6429)
!6449 = !DILocation(line: 220, column: 4, scope: !6429)
!6450 = !DILocation(line: 221, column: 4, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6292, file: !2, line: 221, column: 4)
!6452 = !DILocation(line: 221, column: 4, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6451, file: !2, line: 221, column: 4)
!6454 = !DILocation(line: 223, column: 3, scope: !6293)
!6455 = !DILocation(line: 223, column: 3, scope: !6292)
!6456 = !DILocation(line: 208, column: 35, scope: !6293)
!6457 = !DILocation(line: 208, column: 3, scope: !6293)
!6458 = distinct !{!6458, !6402, !6459, !6084, !6085}
!6459 = !DILocation(line: 223, column: 3, scope: !6294)
!6460 = !DILocation(line: 224, column: 3, scope: !6295)
!6461 = !DILocation(line: 226, column: 7, scope: !6307)
!6462 = !DILocation(line: 226, column: 7, scope: !6311)
!6463 = !DILocation(line: 226, column: 7, scope: !6310)
!6464 = !DILocation(line: 226, column: 7, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6310, file: !2, line: 226, column: 7)
!6466 = !DILocation(line: 226, column: 7, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6310, file: !2, line: 226, column: 7)
!6468 = !{i64 2156060544, i64 2156060573, i64 2156060619, i64 2156060677, i64 2156060731, i64 2156060785, i64 2156060840, i64 2156060871, i64 2156061179, i64 2156061185, i64 2156061232, i64 2156061255, i64 2156061281}
!6469 = !DILocation(line: 226, column: 7, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6310, file: !2, line: 226, column: 7)
!6471 = !DILocation(line: 226, column: 7, scope: !6308)
!6472 = !DILocation(line: 226, column: 6, scope: !6276)
!6473 = !DILocation(line: 227, column: 20, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6308, file: !2, line: 226, column: 39)
!6475 = !DILocation(line: 227, column: 29, scope: !6474)
!6476 = !DILocation(line: 227, column: 27, scope: !6474)
!6477 = !DILocation(line: 227, column: 34, scope: !6474)
!6478 = !DILocation(line: 227, column: 47, scope: !6474)
!6479 = !DILocation(line: 227, column: 45, scope: !6474)
!6480 = !DILocation(line: 227, column: 10, scope: !6474)
!6481 = !DILocation(line: 227, column: 7, scope: !6474)
!6482 = !DILocation(line: 228, column: 22, scope: !6474)
!6483 = !DILocation(line: 228, column: 27, scope: !6474)
!6484 = !DILocation(line: 228, column: 33, scope: !6474)
!6485 = !DILocation(line: 228, column: 38, scope: !6474)
!6486 = !DILocation(line: 229, column: 8, scope: !6474)
!6487 = !DILocation(line: 229, column: 17, scope: !6474)
!6488 = !DILocation(line: 229, column: 15, scope: !6474)
!6489 = !DILocation(line: 229, column: 22, scope: !6474)
!6490 = !DILocation(line: 229, column: 35, scope: !6474)
!6491 = !DILocation(line: 229, column: 33, scope: !6474)
!6492 = !DILocation(line: 228, column: 3, scope: !6474)
!6493 = !DILocation(line: 231, column: 2, scope: !6474)
!6494 = !DILocation(line: 232, column: 1, scope: !6276)
!6495 = !DILocation(line: 233, column: 2, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 233, column: 2)
!6497 = !DILocation(line: 233, column: 2, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6496, file: !2, line: 233, column: 2)
!6499 = !DILocation(line: 233, column: 2, scope: !6276)
!6500 = !DILocation(line: 234, column: 1, scope: !6276)
!6501 = !DILocation(line: 235, column: 26, scope: !6276)
!6502 = !DILocation(line: 235, column: 2, scope: !6276)
!6503 = !DILocation(line: 236, column: 1, scope: !6276)
!6504 = !DISubprogram(name: "hex_dump_to_buffer", scope: !6505, file: !6505, line: 709, type: !6506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6505 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6506 = !DISubroutineType(types: !6507)
!6507 = !{!105, !2298, !554, !105, !105, !509, !554, !391}
!6508 = distinct !DISubprogram(name: "scsi_print_sense_hdr", scope: !2, file: !2, line: 358, type: !6509, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6523)
!6509 = !DISubroutineType(types: !6510)
!6510 = !{null, !5714, !470, !6511}
!6511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6512, size: 64)
!6512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6513)
!6513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_sense_hdr", file: !6263, line: 63, size: 64, elements: !6514)
!6514 = !{!6515, !6516, !6517, !6518, !6519, !6520, !6521, !6522}
!6515 = !DIDerivedType(tag: DW_TAG_member, name: "response_code", scope: !6513, file: !6263, line: 64, baseType: !295, size: 8)
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "sense_key", scope: !6513, file: !6263, line: 65, baseType: !295, size: 8, offset: 8)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "asc", scope: !6513, file: !6263, line: 66, baseType: !295, size: 8, offset: 16)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "ascq", scope: !6513, file: !6263, line: 67, baseType: !295, size: 8, offset: 24)
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "byte4", scope: !6513, file: !6263, line: 68, baseType: !295, size: 8, offset: 32)
!6520 = !DIDerivedType(tag: DW_TAG_member, name: "byte5", scope: !6513, file: !6263, line: 69, baseType: !295, size: 8, offset: 40)
!6521 = !DIDerivedType(tag: DW_TAG_member, name: "byte6", scope: !6513, file: !6263, line: 70, baseType: !295, size: 8, offset: 48)
!6522 = !DIDerivedType(tag: DW_TAG_member, name: "additional_length", scope: !6513, file: !6263, line: 71, baseType: !295, size: 8, offset: 56)
!6523 = !{!6524, !6525, !6526}
!6524 = !DILocalVariable(name: "sdev", arg: 1, scope: !6508, file: !2, line: 358, type: !5714)
!6525 = !DILocalVariable(name: "name", arg: 2, scope: !6508, file: !2, line: 358, type: !470)
!6526 = !DILocalVariable(name: "sshdr", arg: 3, scope: !6508, file: !2, line: 359, type: !6511)
!6527 = !DILocation(line: 358, column: 48, scope: !6508)
!6528 = !DILocation(line: 358, column: 66, scope: !6508)
!6529 = !DILocation(line: 359, column: 37, scope: !6508)
!6530 = !DILocation(line: 361, column: 27, scope: !6508)
!6531 = !DILocation(line: 361, column: 33, scope: !6508)
!6532 = !DILocation(line: 361, column: 43, scope: !6508)
!6533 = !DILocation(line: 361, column: 2, scope: !6508)
!6534 = !DILocation(line: 362, column: 1, scope: !6508)
!6535 = distinct !DISubprogram(name: "scsi_log_print_sense_hdr", scope: !2, file: !2, line: 318, type: !6536, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6538)
!6536 = !DISubroutineType(types: !6537)
!6537 = !{null, !5714, !470, !105, !6511}
!6538 = !{!6539, !6540, !6541, !6542, !6543, !6544, !6545}
!6539 = !DILocalVariable(name: "sdev", arg: 1, scope: !6535, file: !2, line: 318, type: !5714)
!6540 = !DILocalVariable(name: "name", arg: 2, scope: !6535, file: !2, line: 318, type: !470)
!6541 = !DILocalVariable(name: "tag", arg: 3, scope: !6535, file: !2, line: 319, type: !105)
!6542 = !DILocalVariable(name: "sshdr", arg: 4, scope: !6535, file: !2, line: 319, type: !6511)
!6543 = !DILocalVariable(name: "logbuf", scope: !6535, file: !2, line: 321, type: !509)
!6544 = !DILocalVariable(name: "off", scope: !6535, file: !2, line: 322, type: !554)
!6545 = !DILocalVariable(name: "logbuf_len", scope: !6535, file: !2, line: 322, type: !554)
!6546 = !DILocation(line: 318, column: 52, scope: !6535)
!6547 = !DILocation(line: 318, column: 70, scope: !6535)
!6548 = !DILocation(line: 319, column: 9, scope: !6535)
!6549 = !DILocation(line: 319, column: 43, scope: !6535)
!6550 = !DILocation(line: 321, column: 2, scope: !6535)
!6551 = !DILocation(line: 321, column: 8, scope: !6535)
!6552 = !DILocation(line: 322, column: 2, scope: !6535)
!6553 = !DILocation(line: 322, column: 9, scope: !6535)
!6554 = !DILocation(line: 322, column: 14, scope: !6535)
!6555 = !DILocation(line: 324, column: 11, scope: !6535)
!6556 = !DILocation(line: 324, column: 9, scope: !6535)
!6557 = !DILocation(line: 325, column: 7, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6535, file: !2, line: 325, column: 6)
!6559 = !DILocation(line: 325, column: 6, scope: !6535)
!6560 = !DILocation(line: 326, column: 3, scope: !6558)
!6561 = !DILocation(line: 327, column: 27, scope: !6535)
!6562 = !DILocation(line: 327, column: 35, scope: !6535)
!6563 = !DILocation(line: 327, column: 47, scope: !6535)
!6564 = !DILocation(line: 327, column: 53, scope: !6535)
!6565 = !DILocation(line: 327, column: 8, scope: !6535)
!6566 = !DILocation(line: 327, column: 6, scope: !6535)
!6567 = !DILocation(line: 328, column: 31, scope: !6535)
!6568 = !DILocation(line: 328, column: 40, scope: !6535)
!6569 = !DILocation(line: 328, column: 38, scope: !6535)
!6570 = !DILocation(line: 328, column: 45, scope: !6535)
!6571 = !DILocation(line: 328, column: 58, scope: !6535)
!6572 = !DILocation(line: 328, column: 56, scope: !6535)
!6573 = !DILocation(line: 328, column: 63, scope: !6535)
!6574 = !DILocation(line: 328, column: 9, scope: !6535)
!6575 = !DILocation(line: 328, column: 6, scope: !6535)
!6576 = !DILocation(line: 329, column: 2, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6535, file: !2, line: 329, column: 2)
!6578 = !DILocation(line: 329, column: 2, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6577, file: !2, line: 329, column: 2)
!6580 = !DILocation(line: 330, column: 26, scope: !6535)
!6581 = !DILocation(line: 330, column: 2, scope: !6535)
!6582 = !DILocation(line: 332, column: 11, scope: !6535)
!6583 = !DILocation(line: 332, column: 9, scope: !6535)
!6584 = !DILocation(line: 333, column: 7, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6535, file: !2, line: 333, column: 6)
!6586 = !DILocation(line: 333, column: 6, scope: !6535)
!6587 = !DILocation(line: 334, column: 3, scope: !6585)
!6588 = !DILocation(line: 335, column: 27, scope: !6535)
!6589 = !DILocation(line: 335, column: 35, scope: !6535)
!6590 = !DILocation(line: 335, column: 47, scope: !6535)
!6591 = !DILocation(line: 335, column: 53, scope: !6535)
!6592 = !DILocation(line: 335, column: 8, scope: !6535)
!6593 = !DILocation(line: 335, column: 6, scope: !6535)
!6594 = !DILocation(line: 336, column: 32, scope: !6535)
!6595 = !DILocation(line: 336, column: 41, scope: !6535)
!6596 = !DILocation(line: 336, column: 39, scope: !6535)
!6597 = !DILocation(line: 336, column: 46, scope: !6535)
!6598 = !DILocation(line: 336, column: 59, scope: !6535)
!6599 = !DILocation(line: 336, column: 57, scope: !6535)
!6600 = !DILocation(line: 337, column: 11, scope: !6535)
!6601 = !DILocation(line: 337, column: 18, scope: !6535)
!6602 = !DILocation(line: 337, column: 23, scope: !6535)
!6603 = !DILocation(line: 337, column: 30, scope: !6535)
!6604 = !DILocation(line: 336, column: 9, scope: !6535)
!6605 = !DILocation(line: 336, column: 6, scope: !6535)
!6606 = !DILocation(line: 338, column: 2, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6535, file: !2, line: 338, column: 2)
!6608 = !DILocation(line: 338, column: 2, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6607, file: !2, line: 338, column: 2)
!6610 = !DILocation(line: 339, column: 26, scope: !6535)
!6611 = !DILocation(line: 339, column: 2, scope: !6535)
!6612 = !DILocation(line: 340, column: 1, scope: !6535)
!6613 = distinct !DISubprogram(name: "__scsi_print_sense", scope: !2, file: !2, line: 366, type: !6614, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6616)
!6614 = !DISubroutineType(types: !6615)
!6615 = !{null, !5714, !470, !661, !105}
!6616 = !{!6617, !6618, !6619, !6620}
!6617 = !DILocalVariable(name: "sdev", arg: 1, scope: !6613, file: !2, line: 366, type: !5714)
!6618 = !DILocalVariable(name: "name", arg: 2, scope: !6613, file: !2, line: 366, type: !470)
!6619 = !DILocalVariable(name: "sense_buffer", arg: 3, scope: !6613, file: !2, line: 367, type: !661)
!6620 = !DILocalVariable(name: "sense_len", arg: 4, scope: !6613, file: !2, line: 367, type: !105)
!6621 = !DILocation(line: 366, column: 51, scope: !6613)
!6622 = !DILocation(line: 366, column: 69, scope: !6613)
!6623 = !DILocation(line: 367, column: 25, scope: !6613)
!6624 = !DILocation(line: 367, column: 43, scope: !6613)
!6625 = !DILocation(line: 369, column: 23, scope: !6613)
!6626 = !DILocation(line: 369, column: 29, scope: !6613)
!6627 = !DILocation(line: 369, column: 39, scope: !6613)
!6628 = !DILocation(line: 369, column: 53, scope: !6613)
!6629 = !DILocation(line: 369, column: 2, scope: !6613)
!6630 = !DILocation(line: 370, column: 1, scope: !6613)
!6631 = distinct !DISubprogram(name: "scsi_log_print_sense", scope: !2, file: !2, line: 343, type: !6632, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6634)
!6632 = !DISubroutineType(types: !6633)
!6633 = !{null, !5714, !470, !105, !661, !105}
!6634 = !{!6635, !6636, !6637, !6638, !6639, !6640}
!6635 = !DILocalVariable(name: "sdev", arg: 1, scope: !6631, file: !2, line: 343, type: !5714)
!6636 = !DILocalVariable(name: "name", arg: 2, scope: !6631, file: !2, line: 343, type: !470)
!6637 = !DILocalVariable(name: "tag", arg: 3, scope: !6631, file: !2, line: 343, type: !105)
!6638 = !DILocalVariable(name: "sense_buffer", arg: 4, scope: !6631, file: !2, line: 344, type: !661)
!6639 = !DILocalVariable(name: "sense_len", arg: 5, scope: !6631, file: !2, line: 344, type: !105)
!6640 = !DILocalVariable(name: "sshdr", scope: !6631, file: !2, line: 346, type: !6513)
!6641 = !DILocation(line: 343, column: 48, scope: !6631)
!6642 = !DILocation(line: 343, column: 66, scope: !6631)
!6643 = !DILocation(line: 343, column: 76, scope: !6631)
!6644 = !DILocation(line: 344, column: 29, scope: !6631)
!6645 = !DILocation(line: 344, column: 47, scope: !6631)
!6646 = !DILocation(line: 346, column: 2, scope: !6631)
!6647 = !DILocation(line: 346, column: 24, scope: !6631)
!6648 = !DILocation(line: 348, column: 27, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6631, file: !2, line: 348, column: 6)
!6650 = !DILocation(line: 348, column: 41, scope: !6649)
!6651 = !DILocation(line: 348, column: 6, scope: !6649)
!6652 = !DILocation(line: 348, column: 6, scope: !6631)
!6653 = !DILocation(line: 349, column: 28, scope: !6649)
!6654 = !DILocation(line: 349, column: 34, scope: !6649)
!6655 = !DILocation(line: 349, column: 40, scope: !6649)
!6656 = !DILocation(line: 349, column: 3, scope: !6649)
!6657 = !DILocation(line: 351, column: 23, scope: !6649)
!6658 = !DILocation(line: 351, column: 29, scope: !6649)
!6659 = !DILocation(line: 351, column: 35, scope: !6649)
!6660 = !DILocation(line: 351, column: 40, scope: !6649)
!6661 = !DILocation(line: 351, column: 54, scope: !6649)
!6662 = !DILocation(line: 351, column: 3, scope: !6649)
!6663 = !DILocation(line: 352, column: 1, scope: !6631)
!6664 = distinct !DISubprogram(name: "scsi_print_sense", scope: !2, file: !2, line: 374, type: !6665, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6667)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{null, !5845}
!6667 = !{!6668}
!6668 = !DILocalVariable(name: "cmd", arg: 1, scope: !6664, file: !2, line: 374, type: !5845)
!6669 = !DILocation(line: 374, column: 47, scope: !6664)
!6670 = !DILocation(line: 376, column: 23, scope: !6664)
!6671 = !DILocation(line: 376, column: 28, scope: !6664)
!6672 = !DILocation(line: 376, column: 46, scope: !6664)
!6673 = !DILocation(line: 376, column: 36, scope: !6664)
!6674 = !DILocation(line: 377, column: 44, scope: !6664)
!6675 = !DILocation(line: 377, column: 9, scope: !6664)
!6676 = !DILocation(line: 377, column: 50, scope: !6664)
!6677 = !DILocation(line: 378, column: 9, scope: !6664)
!6678 = !DILocation(line: 378, column: 14, scope: !6664)
!6679 = !DILocation(line: 376, column: 2, scope: !6664)
!6680 = !DILocation(line: 379, column: 1, scope: !6664)
!6681 = distinct !DISubprogram(name: "scsi_print_result", scope: !2, file: !2, line: 382, type: !6682, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6684)
!6682 = !DISubroutineType(types: !6683)
!6683 = !{null, !5845, !470, !105}
!6684 = !{!6685, !6686, !6687, !6688, !6689, !6690, !6691, !6692, !6693, !6694, !6699, !6702, !6705, !6708, !6711, !6714, !6717, !6720}
!6685 = !DILocalVariable(name: "cmd", arg: 1, scope: !6681, file: !2, line: 382, type: !5845)
!6686 = !DILocalVariable(name: "msg", arg: 2, scope: !6681, file: !2, line: 382, type: !470)
!6687 = !DILocalVariable(name: "disposition", arg: 3, scope: !6681, file: !2, line: 383, type: !105)
!6688 = !DILocalVariable(name: "logbuf", scope: !6681, file: !2, line: 385, type: !509)
!6689 = !DILocalVariable(name: "off", scope: !6681, file: !2, line: 386, type: !554)
!6690 = !DILocalVariable(name: "logbuf_len", scope: !6681, file: !2, line: 386, type: !554)
!6691 = !DILocalVariable(name: "mlret_string", scope: !6681, file: !2, line: 387, type: !470)
!6692 = !DILocalVariable(name: "hb_string", scope: !6681, file: !2, line: 388, type: !470)
!6693 = !DILocalVariable(name: "cmd_age", scope: !6681, file: !2, line: 389, type: !315)
!6694 = !DILocalVariable(name: "__ret_warn_on", scope: !6695, file: !2, line: 404, type: !105)
!6695 = distinct !DILexicalBlock(scope: !6696, file: !2, line: 404, column: 7)
!6696 = distinct !DILexicalBlock(scope: !6697, file: !2, line: 404, column: 7)
!6697 = distinct !DILexicalBlock(scope: !6698, file: !2, line: 401, column: 11)
!6698 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 401, column: 6)
!6699 = !DILocalVariable(name: "__flags", scope: !6700, file: !2, line: 404, type: !105)
!6700 = distinct !DILexicalBlock(scope: !6701, file: !2, line: 404, column: 7)
!6701 = distinct !DILexicalBlock(scope: !6695, file: !2, line: 404, column: 7)
!6702 = !DILocalVariable(name: "__ret_warn_on", scope: !6703, file: !2, line: 413, type: !105)
!6703 = distinct !DILexicalBlock(scope: !6704, file: !2, line: 413, column: 6)
!6704 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 413, column: 6)
!6705 = !DILocalVariable(name: "__flags", scope: !6706, file: !2, line: 413, type: !105)
!6706 = distinct !DILexicalBlock(scope: !6707, file: !2, line: 413, column: 6)
!6707 = distinct !DILexicalBlock(scope: !6703, file: !2, line: 413, column: 6)
!6708 = !DILocalVariable(name: "__ret_warn_on", scope: !6709, file: !2, line: 417, type: !105)
!6709 = distinct !DILexicalBlock(scope: !6710, file: !2, line: 417, column: 6)
!6710 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 417, column: 6)
!6711 = !DILocalVariable(name: "__flags", scope: !6712, file: !2, line: 417, type: !105)
!6712 = distinct !DILexicalBlock(scope: !6713, file: !2, line: 417, column: 6)
!6713 = distinct !DILexicalBlock(scope: !6709, file: !2, line: 417, column: 6)
!6714 = !DILocalVariable(name: "__ret_warn_on", scope: !6715, file: !2, line: 426, type: !105)
!6715 = distinct !DILexicalBlock(scope: !6716, file: !2, line: 426, column: 6)
!6716 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 426, column: 6)
!6717 = !DILocalVariable(name: "__flags", scope: !6718, file: !2, line: 426, type: !105)
!6718 = distinct !DILexicalBlock(scope: !6719, file: !2, line: 426, column: 6)
!6719 = distinct !DILexicalBlock(scope: !6715, file: !2, line: 426, column: 6)
!6720 = !DILabel(scope: !6681, name: "out_printk", file: !2, line: 435)
!6721 = !DILocation(line: 382, column: 48, scope: !6681)
!6722 = !DILocation(line: 382, column: 65, scope: !6681)
!6723 = !DILocation(line: 383, column: 14, scope: !6681)
!6724 = !DILocation(line: 385, column: 2, scope: !6681)
!6725 = !DILocation(line: 385, column: 8, scope: !6681)
!6726 = !DILocation(line: 386, column: 2, scope: !6681)
!6727 = !DILocation(line: 386, column: 9, scope: !6681)
!6728 = !DILocation(line: 386, column: 14, scope: !6681)
!6729 = !DILocation(line: 387, column: 2, scope: !6681)
!6730 = !DILocation(line: 387, column: 14, scope: !6681)
!6731 = !DILocation(line: 387, column: 50, scope: !6681)
!6732 = !DILocation(line: 387, column: 29, scope: !6681)
!6733 = !DILocation(line: 388, column: 2, scope: !6681)
!6734 = !DILocation(line: 388, column: 14, scope: !6681)
!6735 = !DILocation(line: 388, column: 47, scope: !6681)
!6736 = !DILocation(line: 388, column: 52, scope: !6681)
!6737 = !DILocation(line: 388, column: 26, scope: !6681)
!6738 = !DILocation(line: 389, column: 2, scope: !6681)
!6739 = !DILocation(line: 389, column: 16, scope: !6681)
!6740 = !DILocation(line: 389, column: 27, scope: !6681)
!6741 = !DILocation(line: 389, column: 37, scope: !6681)
!6742 = !DILocation(line: 389, column: 42, scope: !6681)
!6743 = !DILocation(line: 389, column: 35, scope: !6681)
!6744 = !DILocation(line: 389, column: 60, scope: !6681)
!6745 = !DILocation(line: 391, column: 11, scope: !6681)
!6746 = !DILocation(line: 391, column: 9, scope: !6681)
!6747 = !DILocation(line: 392, column: 7, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 392, column: 6)
!6749 = !DILocation(line: 392, column: 6, scope: !6681)
!6750 = !DILocation(line: 393, column: 3, scope: !6748)
!6751 = !DILocation(line: 395, column: 27, scope: !6681)
!6752 = !DILocation(line: 395, column: 35, scope: !6681)
!6753 = !DILocation(line: 395, column: 57, scope: !6681)
!6754 = !DILocation(line: 395, column: 47, scope: !6681)
!6755 = !DILocation(line: 396, column: 41, scope: !6681)
!6756 = !DILocation(line: 396, column: 6, scope: !6681)
!6757 = !DILocation(line: 396, column: 47, scope: !6681)
!6758 = !DILocation(line: 395, column: 8, scope: !6681)
!6759 = !DILocation(line: 395, column: 6, scope: !6681)
!6760 = !DILocation(line: 398, column: 6, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 398, column: 6)
!6762 = !DILocation(line: 398, column: 13, scope: !6761)
!6763 = !DILocation(line: 398, column: 10, scope: !6761)
!6764 = !DILocation(line: 398, column: 6, scope: !6681)
!6765 = !DILocation(line: 399, column: 3, scope: !6761)
!6766 = !DILocation(line: 401, column: 6, scope: !6698)
!6767 = !DILocation(line: 401, column: 6, scope: !6681)
!6768 = !DILocation(line: 402, column: 20, scope: !6697)
!6769 = !DILocation(line: 402, column: 29, scope: !6697)
!6770 = !DILocation(line: 402, column: 27, scope: !6697)
!6771 = !DILocation(line: 402, column: 34, scope: !6697)
!6772 = !DILocation(line: 402, column: 47, scope: !6697)
!6773 = !DILocation(line: 402, column: 45, scope: !6697)
!6774 = !DILocation(line: 403, column: 14, scope: !6697)
!6775 = !DILocation(line: 402, column: 10, scope: !6697)
!6776 = !DILocation(line: 402, column: 7, scope: !6697)
!6777 = !DILocation(line: 404, column: 7, scope: !6695)
!6778 = !DILocation(line: 404, column: 7, scope: !6701)
!6779 = !DILocation(line: 404, column: 7, scope: !6700)
!6780 = !DILocation(line: 404, column: 7, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6700, file: !2, line: 404, column: 7)
!6782 = !DILocation(line: 404, column: 7, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6700, file: !2, line: 404, column: 7)
!6784 = !{i64 2156078556, i64 2156078585, i64 2156078631, i64 2156078689, i64 2156078743, i64 2156078797, i64 2156078852, i64 2156078883, i64 2156079191, i64 2156079197, i64 2156079244, i64 2156079267, i64 2156079293}
!6785 = !DILocation(line: 404, column: 7, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6700, file: !2, line: 404, column: 7)
!6787 = !DILocation(line: 404, column: 7, scope: !6696)
!6788 = !DILocation(line: 404, column: 7, scope: !6697)
!6789 = !DILocation(line: 405, column: 4, scope: !6696)
!6790 = !DILocation(line: 406, column: 2, scope: !6697)
!6791 = !DILocation(line: 407, column: 6, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 407, column: 6)
!6793 = !DILocation(line: 407, column: 6, scope: !6681)
!6794 = !DILocation(line: 408, column: 20, scope: !6792)
!6795 = !DILocation(line: 408, column: 29, scope: !6792)
!6796 = !DILocation(line: 408, column: 27, scope: !6792)
!6797 = !DILocation(line: 408, column: 34, scope: !6792)
!6798 = !DILocation(line: 408, column: 47, scope: !6792)
!6799 = !DILocation(line: 408, column: 45, scope: !6792)
!6800 = !DILocation(line: 409, column: 13, scope: !6792)
!6801 = !DILocation(line: 408, column: 10, scope: !6792)
!6802 = !DILocation(line: 408, column: 7, scope: !6792)
!6803 = !DILocation(line: 408, column: 3, scope: !6792)
!6804 = !DILocation(line: 411, column: 20, scope: !6792)
!6805 = !DILocation(line: 411, column: 29, scope: !6792)
!6806 = !DILocation(line: 411, column: 27, scope: !6792)
!6807 = !DILocation(line: 411, column: 34, scope: !6792)
!6808 = !DILocation(line: 411, column: 47, scope: !6792)
!6809 = !DILocation(line: 411, column: 45, scope: !6792)
!6810 = !DILocation(line: 412, column: 26, scope: !6792)
!6811 = !DILocation(line: 411, column: 10, scope: !6792)
!6812 = !DILocation(line: 411, column: 7, scope: !6792)
!6813 = !DILocation(line: 413, column: 6, scope: !6703)
!6814 = !DILocation(line: 413, column: 6, scope: !6707)
!6815 = !DILocation(line: 413, column: 6, scope: !6706)
!6816 = !DILocation(line: 413, column: 6, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6706, file: !2, line: 413, column: 6)
!6818 = !DILocation(line: 413, column: 6, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6706, file: !2, line: 413, column: 6)
!6820 = !{i64 2156080064, i64 2156080093, i64 2156080139, i64 2156080197, i64 2156080251, i64 2156080305, i64 2156080360, i64 2156080391, i64 2156080699, i64 2156080705, i64 2156080752, i64 2156080775, i64 2156080801}
!6821 = !DILocation(line: 413, column: 6, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6706, file: !2, line: 413, column: 6)
!6823 = !DILocation(line: 413, column: 6, scope: !6704)
!6824 = !DILocation(line: 413, column: 6, scope: !6681)
!6825 = !DILocation(line: 414, column: 3, scope: !6704)
!6826 = !DILocation(line: 416, column: 19, scope: !6681)
!6827 = !DILocation(line: 416, column: 28, scope: !6681)
!6828 = !DILocation(line: 416, column: 26, scope: !6681)
!6829 = !DILocation(line: 416, column: 33, scope: !6681)
!6830 = !DILocation(line: 416, column: 46, scope: !6681)
!6831 = !DILocation(line: 416, column: 44, scope: !6681)
!6832 = !DILocation(line: 416, column: 9, scope: !6681)
!6833 = !DILocation(line: 416, column: 6, scope: !6681)
!6834 = !DILocation(line: 417, column: 6, scope: !6709)
!6835 = !DILocation(line: 417, column: 6, scope: !6713)
!6836 = !DILocation(line: 417, column: 6, scope: !6712)
!6837 = !DILocation(line: 417, column: 6, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6712, file: !2, line: 417, column: 6)
!6839 = !DILocation(line: 417, column: 6, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !6712, file: !2, line: 417, column: 6)
!6841 = !{i64 2156081572, i64 2156081601, i64 2156081647, i64 2156081705, i64 2156081759, i64 2156081813, i64 2156081868, i64 2156081899, i64 2156082207, i64 2156082213, i64 2156082260, i64 2156082283, i64 2156082309}
!6842 = !DILocation(line: 417, column: 6, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6712, file: !2, line: 417, column: 6)
!6844 = !DILocation(line: 417, column: 6, scope: !6710)
!6845 = !DILocation(line: 417, column: 6, scope: !6681)
!6846 = !DILocation(line: 418, column: 3, scope: !6710)
!6847 = !DILocation(line: 420, column: 6, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 420, column: 6)
!6849 = !DILocation(line: 420, column: 6, scope: !6681)
!6850 = !DILocation(line: 421, column: 20, scope: !6848)
!6851 = !DILocation(line: 421, column: 29, scope: !6848)
!6852 = !DILocation(line: 421, column: 27, scope: !6848)
!6853 = !DILocation(line: 421, column: 34, scope: !6848)
!6854 = !DILocation(line: 421, column: 47, scope: !6848)
!6855 = !DILocation(line: 421, column: 45, scope: !6848)
!6856 = !DILocation(line: 422, column: 22, scope: !6848)
!6857 = !DILocation(line: 421, column: 10, scope: !6848)
!6858 = !DILocation(line: 421, column: 7, scope: !6848)
!6859 = !DILocation(line: 421, column: 3, scope: !6848)
!6860 = !DILocation(line: 424, column: 20, scope: !6848)
!6861 = !DILocation(line: 424, column: 29, scope: !6848)
!6862 = !DILocation(line: 424, column: 27, scope: !6848)
!6863 = !DILocation(line: 424, column: 34, scope: !6848)
!6864 = !DILocation(line: 424, column: 47, scope: !6848)
!6865 = !DILocation(line: 424, column: 45, scope: !6848)
!6866 = !DILocation(line: 425, column: 26, scope: !6848)
!6867 = !DILocation(line: 424, column: 10, scope: !6848)
!6868 = !DILocation(line: 424, column: 7, scope: !6848)
!6869 = !DILocation(line: 426, column: 6, scope: !6715)
!6870 = !DILocation(line: 426, column: 6, scope: !6719)
!6871 = !DILocation(line: 426, column: 6, scope: !6718)
!6872 = !DILocation(line: 426, column: 6, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6718, file: !2, line: 426, column: 6)
!6874 = !DILocation(line: 426, column: 6, scope: !6875)
!6875 = distinct !DILexicalBlock(scope: !6718, file: !2, line: 426, column: 6)
!6876 = !{i64 2156083118, i64 2156083147, i64 2156083193, i64 2156083251, i64 2156083305, i64 2156083359, i64 2156083414, i64 2156083445, i64 2156083753, i64 2156083759, i64 2156083806, i64 2156083829, i64 2156083855}
!6877 = !DILocation(line: 426, column: 6, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6718, file: !2, line: 426, column: 6)
!6879 = !DILocation(line: 426, column: 6, scope: !6716)
!6880 = !DILocation(line: 426, column: 6, scope: !6681)
!6881 = !DILocation(line: 427, column: 3, scope: !6716)
!6882 = !DILocation(line: 429, column: 19, scope: !6681)
!6883 = !DILocation(line: 429, column: 28, scope: !6681)
!6884 = !DILocation(line: 429, column: 26, scope: !6681)
!6885 = !DILocation(line: 429, column: 33, scope: !6681)
!6886 = !DILocation(line: 429, column: 46, scope: !6681)
!6887 = !DILocation(line: 429, column: 44, scope: !6681)
!6888 = !DILocation(line: 429, column: 9, scope: !6681)
!6889 = !DILocation(line: 429, column: 6, scope: !6681)
!6890 = !DILocation(line: 432, column: 19, scope: !6681)
!6891 = !DILocation(line: 432, column: 28, scope: !6681)
!6892 = !DILocation(line: 432, column: 26, scope: !6681)
!6893 = !DILocation(line: 432, column: 33, scope: !6681)
!6894 = !DILocation(line: 432, column: 46, scope: !6681)
!6895 = !DILocation(line: 432, column: 44, scope: !6681)
!6896 = !DILocation(line: 433, column: 21, scope: !6681)
!6897 = !DILocation(line: 432, column: 9, scope: !6681)
!6898 = !DILocation(line: 432, column: 6, scope: !6681)
!6899 = !DILocation(line: 432, column: 2, scope: !6681)
!6900 = !DILocation(line: 435, column: 1, scope: !6681)
!6901 = !DILocation(line: 436, column: 2, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 436, column: 2)
!6903 = !DILocation(line: 436, column: 2, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6902, file: !2, line: 436, column: 2)
!6905 = !DILocation(line: 437, column: 26, scope: !6681)
!6906 = !DILocation(line: 437, column: 2, scope: !6681)
!6907 = !DILocation(line: 438, column: 1, scope: !6681)
!6908 = !DISubprogram(name: "scsi_mlreturn_string", scope: !6909, file: !6909, line: 25, type: !6910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6909 = !DIFile(filename: "./include/scsi/scsi_dbg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1520c419193172896ba6f38dc77cc556")
!6910 = !DISubroutineType(types: !6911)
!6911 = !{!470, !105}
!6912 = !DISubprogram(name: "scsi_hostbyte_string", scope: !6909, file: !6909, line: 26, type: !6910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6913 = distinct !DISubprogram(name: "kmalloc", scope: !225, file: !225, line: 591, type: !6914, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6916)
!6914 = !DISubroutineType(types: !6915)
!6915 = !{!235, !554, !1309}
!6916 = !{!6917, !6918, !6919}
!6917 = !DILocalVariable(name: "size", arg: 1, scope: !6913, file: !225, line: 591, type: !554)
!6918 = !DILocalVariable(name: "flags", arg: 2, scope: !6913, file: !225, line: 591, type: !1309)
!6919 = !DILocalVariable(name: "index", scope: !6920, file: !225, line: 594, type: !23)
!6920 = distinct !DILexicalBlock(scope: !6921, file: !225, line: 593, column: 42)
!6921 = distinct !DILexicalBlock(scope: !6913, file: !225, line: 593, column: 6)
!6922 = !DILocation(line: 591, column: 61, scope: !6913)
!6923 = !DILocation(line: 591, column: 73, scope: !6913)
!6924 = !DILocation(line: 593, column: 27, scope: !6921)
!6925 = !DILocation(line: 593, column: 6, scope: !6921)
!6926 = !DILocation(line: 593, column: 33, scope: !6921)
!6927 = !DILocation(line: 593, column: 36, scope: !6921)
!6928 = !DILocation(line: 593, column: 6, scope: !6913)
!6929 = !DILocation(line: 594, column: 3, scope: !6920)
!6930 = !DILocation(line: 594, column: 16, scope: !6920)
!6931 = !DILocation(line: 596, column: 7, scope: !6932)
!6932 = distinct !DILexicalBlock(scope: !6920, file: !225, line: 596, column: 7)
!6933 = !DILocation(line: 596, column: 12, scope: !6932)
!6934 = !DILocation(line: 596, column: 7, scope: !6920)
!6935 = !DILocation(line: 597, column: 25, scope: !6932)
!6936 = !DILocation(line: 597, column: 31, scope: !6932)
!6937 = !DILocation(line: 597, column: 11, scope: !6932)
!6938 = !DILocation(line: 597, column: 4, scope: !6932)
!6939 = !DILocation(line: 599, column: 11, scope: !6920)
!6940 = !DILocation(line: 599, column: 9, scope: !6920)
!6941 = !DILocation(line: 601, column: 33, scope: !6920)
!6942 = !DILocation(line: 601, column: 40, scope: !6920)
!6943 = !DILocation(line: 601, column: 20, scope: !6920)
!6944 = !DILocation(line: 601, column: 5, scope: !6920)
!6945 = !DILocation(line: 601, column: 51, scope: !6920)
!6946 = !DILocation(line: 602, column: 5, scope: !6920)
!6947 = !DILocation(line: 602, column: 12, scope: !6920)
!6948 = !DILocation(line: 600, column: 10, scope: !6920)
!6949 = !DILocation(line: 600, column: 3, scope: !6920)
!6950 = !DILocation(line: 603, column: 2, scope: !6921)
!6951 = !DILocation(line: 604, column: 19, scope: !6913)
!6952 = !DILocation(line: 604, column: 25, scope: !6913)
!6953 = !DILocation(line: 604, column: 9, scope: !6913)
!6954 = !DILocation(line: 604, column: 2, scope: !6913)
!6955 = !DILocation(line: 605, column: 1, scope: !6913)
!6956 = !DISubprogram(name: "kmalloc_large", scope: !225, file: !225, line: 531, type: !6914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6957 = distinct !DISubprogram(name: "__kmalloc_index", scope: !225, file: !225, line: 444, type: !6958, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6960)
!6958 = !DISubroutineType(types: !6959)
!6959 = !{!23, !554, !391}
!6960 = !{!6961, !6962}
!6961 = !DILocalVariable(name: "size", arg: 1, scope: !6957, file: !225, line: 444, type: !554)
!6962 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6957, file: !225, line: 445, type: !391)
!6963 = !DILocation(line: 444, column: 60, scope: !6957)
!6964 = !DILocation(line: 445, column: 16, scope: !6957)
!6965 = !DILocation(line: 447, column: 7, scope: !6966)
!6966 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 447, column: 6)
!6967 = !DILocation(line: 447, column: 6, scope: !6957)
!6968 = !DILocation(line: 448, column: 3, scope: !6966)
!6969 = !DILocation(line: 450, column: 6, scope: !6970)
!6970 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 450, column: 6)
!6971 = !DILocation(line: 450, column: 11, scope: !6970)
!6972 = !DILocation(line: 450, column: 6, scope: !6957)
!6973 = !DILocation(line: 451, column: 3, scope: !6970)
!6974 = !DILocation(line: 453, column: 32, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 453, column: 6)
!6976 = !DILocation(line: 453, column: 37, scope: !6975)
!6977 = !DILocation(line: 453, column: 42, scope: !6975)
!6978 = !DILocation(line: 453, column: 45, scope: !6975)
!6979 = !DILocation(line: 453, column: 50, scope: !6975)
!6980 = !DILocation(line: 453, column: 6, scope: !6957)
!6981 = !DILocation(line: 454, column: 3, scope: !6975)
!6982 = !DILocation(line: 455, column: 32, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 455, column: 6)
!6984 = !DILocation(line: 455, column: 37, scope: !6983)
!6985 = !DILocation(line: 455, column: 43, scope: !6983)
!6986 = !DILocation(line: 455, column: 46, scope: !6983)
!6987 = !DILocation(line: 455, column: 51, scope: !6983)
!6988 = !DILocation(line: 455, column: 6, scope: !6957)
!6989 = !DILocation(line: 456, column: 3, scope: !6983)
!6990 = !DILocation(line: 457, column: 6, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 457, column: 6)
!6992 = !DILocation(line: 457, column: 11, scope: !6991)
!6993 = !DILocation(line: 457, column: 6, scope: !6957)
!6994 = !DILocation(line: 457, column: 26, scope: !6991)
!6995 = !DILocation(line: 458, column: 6, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 458, column: 6)
!6997 = !DILocation(line: 458, column: 11, scope: !6996)
!6998 = !DILocation(line: 458, column: 6, scope: !6957)
!6999 = !DILocation(line: 458, column: 26, scope: !6996)
!7000 = !DILocation(line: 459, column: 6, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 459, column: 6)
!7002 = !DILocation(line: 459, column: 11, scope: !7001)
!7003 = !DILocation(line: 459, column: 6, scope: !6957)
!7004 = !DILocation(line: 459, column: 26, scope: !7001)
!7005 = !DILocation(line: 460, column: 6, scope: !7006)
!7006 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 460, column: 6)
!7007 = !DILocation(line: 460, column: 11, scope: !7006)
!7008 = !DILocation(line: 460, column: 6, scope: !6957)
!7009 = !DILocation(line: 460, column: 26, scope: !7006)
!7010 = !DILocation(line: 461, column: 6, scope: !7011)
!7011 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 461, column: 6)
!7012 = !DILocation(line: 461, column: 11, scope: !7011)
!7013 = !DILocation(line: 461, column: 6, scope: !6957)
!7014 = !DILocation(line: 461, column: 26, scope: !7011)
!7015 = !DILocation(line: 462, column: 6, scope: !7016)
!7016 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 462, column: 6)
!7017 = !DILocation(line: 462, column: 11, scope: !7016)
!7018 = !DILocation(line: 462, column: 6, scope: !6957)
!7019 = !DILocation(line: 462, column: 26, scope: !7016)
!7020 = !DILocation(line: 463, column: 6, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 463, column: 6)
!7022 = !DILocation(line: 463, column: 11, scope: !7021)
!7023 = !DILocation(line: 463, column: 6, scope: !6957)
!7024 = !DILocation(line: 463, column: 26, scope: !7021)
!7025 = !DILocation(line: 464, column: 6, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 464, column: 6)
!7027 = !DILocation(line: 464, column: 11, scope: !7026)
!7028 = !DILocation(line: 464, column: 6, scope: !6957)
!7029 = !DILocation(line: 464, column: 26, scope: !7026)
!7030 = !DILocation(line: 465, column: 6, scope: !7031)
!7031 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 465, column: 6)
!7032 = !DILocation(line: 465, column: 11, scope: !7031)
!7033 = !DILocation(line: 465, column: 6, scope: !6957)
!7034 = !DILocation(line: 465, column: 26, scope: !7031)
!7035 = !DILocation(line: 466, column: 6, scope: !7036)
!7036 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 466, column: 6)
!7037 = !DILocation(line: 466, column: 11, scope: !7036)
!7038 = !DILocation(line: 466, column: 6, scope: !6957)
!7039 = !DILocation(line: 466, column: 26, scope: !7036)
!7040 = !DILocation(line: 467, column: 6, scope: !7041)
!7041 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 467, column: 6)
!7042 = !DILocation(line: 467, column: 11, scope: !7041)
!7043 = !DILocation(line: 467, column: 6, scope: !6957)
!7044 = !DILocation(line: 467, column: 26, scope: !7041)
!7045 = !DILocation(line: 468, column: 6, scope: !7046)
!7046 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 468, column: 6)
!7047 = !DILocation(line: 468, column: 11, scope: !7046)
!7048 = !DILocation(line: 468, column: 6, scope: !6957)
!7049 = !DILocation(line: 468, column: 26, scope: !7046)
!7050 = !DILocation(line: 469, column: 6, scope: !7051)
!7051 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 469, column: 6)
!7052 = !DILocation(line: 469, column: 11, scope: !7051)
!7053 = !DILocation(line: 469, column: 6, scope: !6957)
!7054 = !DILocation(line: 469, column: 26, scope: !7051)
!7055 = !DILocation(line: 470, column: 6, scope: !7056)
!7056 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 470, column: 6)
!7057 = !DILocation(line: 470, column: 11, scope: !7056)
!7058 = !DILocation(line: 470, column: 6, scope: !6957)
!7059 = !DILocation(line: 470, column: 26, scope: !7056)
!7060 = !DILocation(line: 471, column: 6, scope: !7061)
!7061 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 471, column: 6)
!7062 = !DILocation(line: 471, column: 11, scope: !7061)
!7063 = !DILocation(line: 471, column: 6, scope: !6957)
!7064 = !DILocation(line: 471, column: 26, scope: !7061)
!7065 = !DILocation(line: 472, column: 6, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 472, column: 6)
!7067 = !DILocation(line: 472, column: 11, scope: !7066)
!7068 = !DILocation(line: 472, column: 6, scope: !6957)
!7069 = !DILocation(line: 472, column: 26, scope: !7066)
!7070 = !DILocation(line: 473, column: 6, scope: !7071)
!7071 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 473, column: 6)
!7072 = !DILocation(line: 473, column: 11, scope: !7071)
!7073 = !DILocation(line: 473, column: 6, scope: !6957)
!7074 = !DILocation(line: 473, column: 26, scope: !7071)
!7075 = !DILocation(line: 474, column: 6, scope: !7076)
!7076 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 474, column: 6)
!7077 = !DILocation(line: 474, column: 11, scope: !7076)
!7078 = !DILocation(line: 474, column: 6, scope: !6957)
!7079 = !DILocation(line: 474, column: 27, scope: !7076)
!7080 = !DILocation(line: 475, column: 6, scope: !7081)
!7081 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 475, column: 6)
!7082 = !DILocation(line: 475, column: 11, scope: !7081)
!7083 = !DILocation(line: 475, column: 6, scope: !6957)
!7084 = !DILocation(line: 475, column: 32, scope: !7081)
!7085 = !DILocation(line: 477, column: 50, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !6957, file: !225, line: 477, column: 6)
!7087 = !{i8 0, i8 2}
!7088 = !DILocation(line: 477, column: 6, scope: !6957)
!7089 = !DILocation(line: 478, column: 3, scope: !7086)
!7090 = !DILocation(line: 478, column: 3, scope: !7091)
!7091 = distinct !DILexicalBlock(scope: !7092, file: !225, line: 478, column: 3)
!7092 = distinct !DILexicalBlock(scope: !7086, file: !225, line: 478, column: 3)
!7093 = !{i32 -2142297423}
!7094 = !DILocation(line: 478, column: 3, scope: !7092)
!7095 = !DILocation(line: 480, column: 3, scope: !7086)
!7096 = !DILocation(line: 480, column: 3, scope: !7097)
!7097 = distinct !DILexicalBlock(scope: !7086, file: !225, line: 480, column: 3)
!7098 = !DILocation(line: 480, column: 3, scope: !7099)
!7099 = distinct !DILexicalBlock(scope: !7097, file: !225, line: 480, column: 3)
!7100 = !DILocation(line: 480, column: 3, scope: !7101)
!7101 = distinct !DILexicalBlock(scope: !7097, file: !225, line: 480, column: 3)
!7102 = !{i64 2152670076, i64 2152670105, i64 2152670151, i64 2152670209, i64 2152670263, i64 2152670317, i64 2152670372, i64 2152670403}
!7103 = !DILocation(line: 483, column: 2, scope: !6957)
!7104 = !DILocation(line: 484, column: 1, scope: !6957)
!7105 = !DISubprogram(name: "kmalloc_trace", scope: !225, file: !225, line: 525, type: !7106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7106 = !DISubroutineType(types: !7107)
!7107 = !{!235, !2507, !1309, !554}
!7108 = distinct !DISubprogram(name: "kmalloc_type", scope: !225, file: !225, line: 401, type: !7109, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7111)
!7109 = !DISubroutineType(types: !7110)
!7110 = !{!224, !1309, !315}
!7111 = !{!7112, !7113}
!7112 = !DILocalVariable(name: "flags", arg: 1, scope: !7108, file: !225, line: 401, type: !1309)
!7113 = !DILocalVariable(name: "caller", arg: 2, scope: !7108, file: !225, line: 401, type: !315)
!7114 = !DILocation(line: 401, column: 67, scope: !7108)
!7115 = !DILocation(line: 401, column: 88, scope: !7108)
!7116 = !DILocation(line: 407, column: 6, scope: !7117)
!7117 = distinct !DILexicalBlock(scope: !7108, file: !225, line: 407, column: 6)
!7118 = !DILocation(line: 407, column: 6, scope: !7108)
!7119 = !DILocation(line: 413, column: 3, scope: !7117)
!7120 = !DILocation(line: 423, column: 38, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !7108, file: !225, line: 423, column: 6)
!7122 = !DILocation(line: 423, column: 44, scope: !7121)
!7123 = !DILocation(line: 423, column: 6, scope: !7108)
!7124 = !DILocation(line: 424, column: 3, scope: !7121)
!7125 = !DILocation(line: 426, column: 3, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7108, file: !225, line: 425, column: 6)
!7127 = !DILocation(line: 429, column: 1, scope: !7108)
!7128 = !DISubprogram(name: "__kmalloc", scope: !225, file: !225, line: 488, type: !6914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7129 = !DISubprogram(name: "__compiletime_assert_206", scope: !225, file: !225, line: 478, type: !1160, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7130 = !DISubprogram(name: "kfree", scope: !225, file: !225, line: 227, type: !7131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7131 = !DISubroutineType(types: !7132)
!7132 = !{null, !2298}
!7133 = distinct !DISubprogram(name: "blk_mq_rq_from_pdu", scope: !164, file: !164, line: 933, type: !7134, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7136)
!7134 = !DISubroutineType(types: !7135)
!7135 = !{!251, !235}
!7136 = !{!7137}
!7137 = !DILocalVariable(name: "pdu", arg: 1, scope: !7133, file: !164, line: 933, type: !235)
!7138 = !DILocation(line: 933, column: 56, scope: !7133)
!7139 = !DILocation(line: 935, column: 9, scope: !7133)
!7140 = !DILocation(line: 935, column: 13, scope: !7133)
!7141 = !DILocation(line: 935, column: 2, scope: !7133)
!7142 = distinct !DISubprogram(name: "scsi_varlen_cdb_length", scope: !6263, file: !6263, line: 26, type: !7143, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7145)
!7143 = !DISubroutineType(types: !7144)
!7144 = !{!23, !2298}
!7145 = !{!7146}
!7146 = !DILocalVariable(name: "hdr", arg: 1, scope: !7142, file: !6263, line: 26, type: !2298)
!7147 = !DILocation(line: 26, column: 36, scope: !7142)
!7148 = !DILocation(line: 28, column: 40, scope: !7142)
!7149 = !DILocation(line: 28, column: 46, scope: !7142)
!7150 = !DILocation(line: 28, column: 9, scope: !7142)
!7151 = !DILocation(line: 28, column: 68, scope: !7142)
!7152 = !DILocation(line: 28, column: 2, scope: !7142)
!7153 = !DISubprogram(name: "scsi_opcode_sa_name", scope: !6909, file: !6909, line: 21, type: !7154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7154 = !DISubroutineType(types: !7155)
!7155 = !{!391, !105, !105, !1132, !1132}
!7156 = distinct !DISubprogram(name: "scsi_format_sense_hdr", scope: !2, file: !2, line: 269, type: !7157, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7159)
!7157 = !DISubroutineType(types: !7158)
!7158 = !{!554, !509, !554, !6511}
!7159 = !{!7160, !7161, !7162, !7163, !7164}
!7160 = !DILocalVariable(name: "buffer", arg: 1, scope: !7156, file: !2, line: 269, type: !509)
!7161 = !DILocalVariable(name: "buf_len", arg: 2, scope: !7156, file: !2, line: 269, type: !554)
!7162 = !DILocalVariable(name: "sshdr", arg: 3, scope: !7156, file: !2, line: 270, type: !6511)
!7163 = !DILocalVariable(name: "sense_txt", scope: !7156, file: !2, line: 272, type: !470)
!7164 = !DILocalVariable(name: "off", scope: !7156, file: !2, line: 273, type: !554)
!7165 = !DILocation(line: 269, column: 29, scope: !7156)
!7166 = !DILocation(line: 269, column: 44, scope: !7156)
!7167 = !DILocation(line: 270, column: 38, scope: !7156)
!7168 = !DILocation(line: 272, column: 2, scope: !7156)
!7169 = !DILocation(line: 272, column: 14, scope: !7156)
!7170 = !DILocation(line: 273, column: 2, scope: !7156)
!7171 = !DILocation(line: 273, column: 9, scope: !7156)
!7172 = !DILocation(line: 275, column: 18, scope: !7156)
!7173 = !DILocation(line: 275, column: 26, scope: !7156)
!7174 = !DILocation(line: 275, column: 8, scope: !7156)
!7175 = !DILocation(line: 275, column: 6, scope: !7156)
!7176 = !DILocation(line: 276, column: 36, scope: !7156)
!7177 = !DILocation(line: 276, column: 43, scope: !7156)
!7178 = !DILocation(line: 276, column: 14, scope: !7156)
!7179 = !DILocation(line: 276, column: 12, scope: !7156)
!7180 = !DILocation(line: 277, column: 6, scope: !7181)
!7181 = distinct !DILexicalBlock(scope: !7156, file: !2, line: 277, column: 6)
!7182 = !DILocation(line: 277, column: 6, scope: !7156)
!7183 = !DILocation(line: 278, column: 20, scope: !7181)
!7184 = !DILocation(line: 278, column: 29, scope: !7181)
!7185 = !DILocation(line: 278, column: 27, scope: !7181)
!7186 = !DILocation(line: 278, column: 34, scope: !7181)
!7187 = !DILocation(line: 278, column: 44, scope: !7181)
!7188 = !DILocation(line: 278, column: 42, scope: !7181)
!7189 = !DILocation(line: 279, column: 13, scope: !7181)
!7190 = !DILocation(line: 278, column: 10, scope: !7181)
!7191 = !DILocation(line: 278, column: 7, scope: !7181)
!7192 = !DILocation(line: 278, column: 3, scope: !7181)
!7193 = !DILocation(line: 281, column: 20, scope: !7181)
!7194 = !DILocation(line: 281, column: 29, scope: !7181)
!7195 = !DILocation(line: 281, column: 27, scope: !7181)
!7196 = !DILocation(line: 281, column: 34, scope: !7181)
!7197 = !DILocation(line: 281, column: 44, scope: !7181)
!7198 = !DILocation(line: 281, column: 42, scope: !7181)
!7199 = !DILocation(line: 282, column: 15, scope: !7181)
!7200 = !DILocation(line: 282, column: 22, scope: !7181)
!7201 = !DILocation(line: 281, column: 10, scope: !7181)
!7202 = !DILocation(line: 281, column: 7, scope: !7181)
!7203 = !DILocation(line: 283, column: 19, scope: !7156)
!7204 = !DILocation(line: 283, column: 28, scope: !7156)
!7205 = !DILocation(line: 283, column: 26, scope: !7156)
!7206 = !DILocation(line: 283, column: 33, scope: !7156)
!7207 = !DILocation(line: 283, column: 43, scope: !7156)
!7208 = !DILocation(line: 283, column: 41, scope: !7156)
!7209 = !DILocation(line: 284, column: 26, scope: !7156)
!7210 = !DILocation(line: 284, column: 3, scope: !7156)
!7211 = !DILocation(line: 283, column: 9, scope: !7156)
!7212 = !DILocation(line: 283, column: 6, scope: !7156)
!7213 = !DILocation(line: 286, column: 6, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7156, file: !2, line: 286, column: 6)
!7215 = !DILocation(line: 286, column: 13, scope: !7214)
!7216 = !DILocation(line: 286, column: 27, scope: !7214)
!7217 = !DILocation(line: 286, column: 6, scope: !7156)
!7218 = !DILocation(line: 287, column: 20, scope: !7214)
!7219 = !DILocation(line: 287, column: 29, scope: !7214)
!7220 = !DILocation(line: 287, column: 27, scope: !7214)
!7221 = !DILocation(line: 287, column: 34, scope: !7214)
!7222 = !DILocation(line: 287, column: 44, scope: !7214)
!7223 = !DILocation(line: 287, column: 42, scope: !7214)
!7224 = !DILocation(line: 287, column: 10, scope: !7214)
!7225 = !DILocation(line: 287, column: 7, scope: !7214)
!7226 = !DILocation(line: 287, column: 3, scope: !7214)
!7227 = !DILocation(line: 288, column: 9, scope: !7156)
!7228 = !DILocation(line: 289, column: 1, scope: !7156)
!7229 = !DILocation(line: 288, column: 2, scope: !7156)
!7230 = distinct !DISubprogram(name: "scsi_format_extd_sense", scope: !2, file: !2, line: 240, type: !7231, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7233)
!7231 = !DISubroutineType(types: !7232)
!7232 = !{!554, !509, !554, !207, !207}
!7233 = !{!7234, !7235, !7236, !7237, !7238, !7239, !7240}
!7234 = !DILocalVariable(name: "buffer", arg: 1, scope: !7230, file: !2, line: 240, type: !509)
!7235 = !DILocalVariable(name: "buf_len", arg: 2, scope: !7230, file: !2, line: 240, type: !554)
!7236 = !DILocalVariable(name: "asc", arg: 3, scope: !7230, file: !2, line: 241, type: !207)
!7237 = !DILocalVariable(name: "ascq", arg: 4, scope: !7230, file: !2, line: 241, type: !207)
!7238 = !DILocalVariable(name: "off", scope: !7230, file: !2, line: 243, type: !554)
!7239 = !DILocalVariable(name: "extd_sense_fmt", scope: !7230, file: !2, line: 244, type: !470)
!7240 = !DILocalVariable(name: "extd_sense_str", scope: !7230, file: !2, line: 245, type: !470)
!7241 = !DILocation(line: 240, column: 30, scope: !7230)
!7242 = !DILocation(line: 240, column: 45, scope: !7230)
!7243 = !DILocation(line: 241, column: 24, scope: !7230)
!7244 = !DILocation(line: 241, column: 43, scope: !7230)
!7245 = !DILocation(line: 243, column: 2, scope: !7230)
!7246 = !DILocation(line: 243, column: 9, scope: !7230)
!7247 = !DILocation(line: 244, column: 2, scope: !7230)
!7248 = !DILocation(line: 244, column: 14, scope: !7230)
!7249 = !DILocation(line: 245, column: 2, scope: !7230)
!7250 = !DILocation(line: 245, column: 14, scope: !7230)
!7251 = !DILocation(line: 245, column: 54, scope: !7230)
!7252 = !DILocation(line: 245, column: 59, scope: !7230)
!7253 = !DILocation(line: 245, column: 31, scope: !7230)
!7254 = !DILocation(line: 248, column: 6, scope: !7255)
!7255 = distinct !DILexicalBlock(scope: !7230, file: !2, line: 248, column: 6)
!7256 = !DILocation(line: 248, column: 6, scope: !7230)
!7257 = !DILocation(line: 249, column: 19, scope: !7258)
!7258 = distinct !DILexicalBlock(scope: !7255, file: !2, line: 248, column: 22)
!7259 = !DILocation(line: 249, column: 27, scope: !7258)
!7260 = !DILocation(line: 250, column: 5, scope: !7258)
!7261 = !DILocation(line: 249, column: 9, scope: !7258)
!7262 = !DILocation(line: 249, column: 7, scope: !7258)
!7263 = !DILocation(line: 251, column: 7, scope: !7264)
!7264 = distinct !DILexicalBlock(scope: !7258, file: !2, line: 251, column: 7)
!7265 = !DILocation(line: 251, column: 7, scope: !7258)
!7266 = !DILocation(line: 252, column: 21, scope: !7264)
!7267 = !DILocation(line: 252, column: 30, scope: !7264)
!7268 = !DILocation(line: 252, column: 28, scope: !7264)
!7269 = !DILocation(line: 252, column: 35, scope: !7264)
!7270 = !DILocation(line: 252, column: 45, scope: !7264)
!7271 = !DILocation(line: 252, column: 43, scope: !7264)
!7272 = !DILocation(line: 253, column: 17, scope: !7264)
!7273 = !DILocation(line: 253, column: 33, scope: !7264)
!7274 = !DILocation(line: 252, column: 11, scope: !7264)
!7275 = !DILocation(line: 252, column: 8, scope: !7264)
!7276 = !DILocation(line: 252, column: 4, scope: !7264)
!7277 = !DILocation(line: 254, column: 2, scope: !7258)
!7278 = !DILocation(line: 255, column: 7, scope: !7279)
!7279 = distinct !DILexicalBlock(scope: !7280, file: !2, line: 255, column: 7)
!7280 = distinct !DILexicalBlock(scope: !7255, file: !2, line: 254, column: 9)
!7281 = !DILocation(line: 255, column: 11, scope: !7279)
!7282 = !DILocation(line: 255, column: 7, scope: !7280)
!7283 = !DILocation(line: 256, column: 20, scope: !7279)
!7284 = !DILocation(line: 256, column: 28, scope: !7279)
!7285 = !DILocation(line: 256, column: 10, scope: !7279)
!7286 = !DILocation(line: 256, column: 8, scope: !7279)
!7287 = !DILocation(line: 256, column: 4, scope: !7279)
!7288 = !DILocation(line: 257, column: 20, scope: !7280)
!7289 = !DILocation(line: 257, column: 29, scope: !7280)
!7290 = !DILocation(line: 257, column: 27, scope: !7280)
!7291 = !DILocation(line: 257, column: 34, scope: !7280)
!7292 = !DILocation(line: 257, column: 44, scope: !7280)
!7293 = !DILocation(line: 257, column: 42, scope: !7280)
!7294 = !DILocation(line: 258, column: 19, scope: !7280)
!7295 = !DILocation(line: 257, column: 10, scope: !7280)
!7296 = !DILocation(line: 257, column: 7, scope: !7280)
!7297 = !DILocation(line: 259, column: 7, scope: !7298)
!7298 = distinct !DILexicalBlock(scope: !7280, file: !2, line: 259, column: 7)
!7299 = !DILocation(line: 259, column: 12, scope: !7298)
!7300 = !DILocation(line: 259, column: 7, scope: !7280)
!7301 = !DILocation(line: 260, column: 21, scope: !7298)
!7302 = !DILocation(line: 260, column: 30, scope: !7298)
!7303 = !DILocation(line: 260, column: 28, scope: !7298)
!7304 = !DILocation(line: 260, column: 35, scope: !7298)
!7305 = !DILocation(line: 260, column: 45, scope: !7298)
!7306 = !DILocation(line: 260, column: 43, scope: !7298)
!7307 = !DILocation(line: 260, column: 11, scope: !7298)
!7308 = !DILocation(line: 260, column: 8, scope: !7298)
!7309 = !DILocation(line: 260, column: 4, scope: !7298)
!7310 = !DILocation(line: 262, column: 20, scope: !7280)
!7311 = !DILocation(line: 262, column: 29, scope: !7280)
!7312 = !DILocation(line: 262, column: 27, scope: !7280)
!7313 = !DILocation(line: 262, column: 34, scope: !7280)
!7314 = !DILocation(line: 262, column: 44, scope: !7280)
!7315 = !DILocation(line: 262, column: 42, scope: !7280)
!7316 = !DILocation(line: 263, column: 20, scope: !7280)
!7317 = !DILocation(line: 262, column: 10, scope: !7280)
!7318 = !DILocation(line: 262, column: 7, scope: !7280)
!7319 = !DILocation(line: 265, column: 9, scope: !7230)
!7320 = !DILocation(line: 266, column: 1, scope: !7230)
!7321 = !DILocation(line: 265, column: 2, scope: !7230)
!7322 = !DISubprogram(name: "scsi_sense_key_string", scope: !6909, file: !6909, line: 22, type: !7323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7323 = !DISubroutineType(types: !7324)
!7324 = !{!470, !207}
!7325 = distinct !DISubprogram(name: "scsi_sense_is_deferred", scope: !7326, file: !7326, line: 22, type: !7327, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7329)
!7326 = !DIFile(filename: "./include/scsi/scsi_eh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "88324ec9a8b5eb8710bc2debfc15ffd2")
!7327 = !DISubroutineType(types: !7328)
!7328 = !{!391, !6511}
!7329 = !{!7330}
!7330 = !DILocalVariable(name: "sshdr", arg: 1, scope: !7325, file: !7326, line: 22, type: !6511)
!7331 = !DILocation(line: 22, column: 72, scope: !7325)
!7332 = !DILocation(line: 24, column: 11, scope: !7325)
!7333 = !DILocation(line: 24, column: 18, scope: !7325)
!7334 = !DILocation(line: 24, column: 32, scope: !7325)
!7335 = !DILocation(line: 24, column: 41, scope: !7325)
!7336 = !DILocation(line: 24, column: 45, scope: !7325)
!7337 = !DILocation(line: 24, column: 52, scope: !7325)
!7338 = !DILocation(line: 24, column: 66, scope: !7325)
!7339 = !DILocation(line: 0, scope: !7325)
!7340 = !DILocation(line: 24, column: 2, scope: !7325)
!7341 = !DISubprogram(name: "scsi_extd_sense_format", scope: !6909, file: !6909, line: 23, type: !7342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7342 = !DISubroutineType(types: !7343)
!7343 = !{!470, !207, !207, !1132}
!7344 = !DISubprogram(name: "scsi_normalize_sense", scope: !6263, file: !6263, line: 82, type: !7345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7345 = !DISubroutineType(types: !7346)
!7346 = !{!391, !7347, !105, !7349}
!7347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7348, size: 64)
!7348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!7349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6513, size: 64)
!7350 = distinct !DISubprogram(name: "scsi_log_dump_sense", scope: !2, file: !2, line: 292, type: !6632, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7351)
!7351 = !{!7352, !7353, !7354, !7355, !7356, !7357, !7358, !7359, !7360, !7364, !7366, !7367}
!7352 = !DILocalVariable(name: "sdev", arg: 1, scope: !7350, file: !2, line: 292, type: !5714)
!7353 = !DILocalVariable(name: "name", arg: 2, scope: !7350, file: !2, line: 292, type: !470)
!7354 = !DILocalVariable(name: "tag", arg: 3, scope: !7350, file: !2, line: 292, type: !105)
!7355 = !DILocalVariable(name: "sense_buffer", arg: 4, scope: !7350, file: !2, line: 293, type: !661)
!7356 = !DILocalVariable(name: "sense_len", arg: 5, scope: !7350, file: !2, line: 293, type: !105)
!7357 = !DILocalVariable(name: "logbuf", scope: !7350, file: !2, line: 295, type: !509)
!7358 = !DILocalVariable(name: "logbuf_len", scope: !7350, file: !2, line: 296, type: !554)
!7359 = !DILocalVariable(name: "i", scope: !7350, file: !2, line: 297, type: !105)
!7360 = !DILocalVariable(name: "len", scope: !7361, file: !2, line: 304, type: !105)
!7361 = distinct !DILexicalBlock(scope: !7362, file: !2, line: 303, column: 38)
!7362 = distinct !DILexicalBlock(scope: !7363, file: !2, line: 303, column: 2)
!7363 = distinct !DILexicalBlock(scope: !7350, file: !2, line: 303, column: 2)
!7364 = !DILocalVariable(name: "__UNIQUE_ID___x354", scope: !7365, file: !2, line: 304, type: !105)
!7365 = distinct !DILexicalBlock(scope: !7361, file: !2, line: 304, column: 13)
!7366 = !DILocalVariable(name: "__UNIQUE_ID___y355", scope: !7365, file: !2, line: 304, type: !105)
!7367 = !DILocalVariable(name: "off", scope: !7361, file: !2, line: 305, type: !554)
!7368 = !DILocation(line: 292, column: 47, scope: !7350)
!7369 = !DILocation(line: 292, column: 65, scope: !7350)
!7370 = !DILocation(line: 292, column: 75, scope: !7350)
!7371 = !DILocation(line: 293, column: 28, scope: !7350)
!7372 = !DILocation(line: 293, column: 46, scope: !7350)
!7373 = !DILocation(line: 295, column: 2, scope: !7350)
!7374 = !DILocation(line: 295, column: 8, scope: !7350)
!7375 = !DILocation(line: 296, column: 2, scope: !7350)
!7376 = !DILocation(line: 296, column: 9, scope: !7350)
!7377 = !DILocation(line: 297, column: 2, scope: !7350)
!7378 = !DILocation(line: 297, column: 6, scope: !7350)
!7379 = !DILocation(line: 299, column: 11, scope: !7350)
!7380 = !DILocation(line: 299, column: 9, scope: !7350)
!7381 = !DILocation(line: 300, column: 7, scope: !7382)
!7382 = distinct !DILexicalBlock(scope: !7350, file: !2, line: 300, column: 6)
!7383 = !DILocation(line: 300, column: 6, scope: !7350)
!7384 = !DILocation(line: 301, column: 3, scope: !7382)
!7385 = !DILocation(line: 303, column: 9, scope: !7363)
!7386 = !DILocation(line: 303, column: 7, scope: !7363)
!7387 = !DILocation(line: 303, column: 14, scope: !7362)
!7388 = !DILocation(line: 303, column: 18, scope: !7362)
!7389 = !DILocation(line: 303, column: 16, scope: !7362)
!7390 = !DILocation(line: 303, column: 2, scope: !7363)
!7391 = !DILocation(line: 304, column: 3, scope: !7361)
!7392 = !DILocation(line: 304, column: 7, scope: !7361)
!7393 = !DILocation(line: 304, column: 13, scope: !7365)
!7394 = !DILocation(line: 304, column: 13, scope: !7361)
!7395 = !DILocation(line: 305, column: 3, scope: !7361)
!7396 = !DILocation(line: 305, column: 10, scope: !7361)
!7397 = !DILocation(line: 307, column: 28, scope: !7361)
!7398 = !DILocation(line: 307, column: 36, scope: !7361)
!7399 = !DILocation(line: 308, column: 7, scope: !7361)
!7400 = !DILocation(line: 308, column: 13, scope: !7361)
!7401 = !DILocation(line: 307, column: 9, scope: !7361)
!7402 = !DILocation(line: 307, column: 7, scope: !7361)
!7403 = !DILocation(line: 309, column: 23, scope: !7361)
!7404 = !DILocation(line: 309, column: 36, scope: !7361)
!7405 = !DILocation(line: 309, column: 40, scope: !7361)
!7406 = !DILocation(line: 310, column: 8, scope: !7361)
!7407 = !DILocation(line: 310, column: 17, scope: !7361)
!7408 = !DILocation(line: 310, column: 15, scope: !7361)
!7409 = !DILocation(line: 310, column: 22, scope: !7361)
!7410 = !DILocation(line: 310, column: 35, scope: !7361)
!7411 = !DILocation(line: 310, column: 33, scope: !7361)
!7412 = !DILocation(line: 309, column: 3, scope: !7361)
!7413 = !DILocation(line: 312, column: 3, scope: !7414)
!7414 = distinct !DILexicalBlock(scope: !7361, file: !2, line: 312, column: 3)
!7415 = !DILocation(line: 312, column: 3, scope: !7416)
!7416 = distinct !DILexicalBlock(scope: !7414, file: !2, line: 312, column: 3)
!7417 = !DILocation(line: 313, column: 2, scope: !7362)
!7418 = !DILocation(line: 313, column: 2, scope: !7361)
!7419 = !DILocation(line: 303, column: 31, scope: !7362)
!7420 = !DILocation(line: 303, column: 2, scope: !7362)
!7421 = distinct !{!7421, !7390, !7422, !6084, !6085}
!7422 = !DILocation(line: 313, column: 2, scope: !7363)
!7423 = !DILocation(line: 314, column: 26, scope: !7350)
!7424 = !DILocation(line: 314, column: 2, scope: !7350)
!7425 = !DILocation(line: 315, column: 1, scope: !7350)
