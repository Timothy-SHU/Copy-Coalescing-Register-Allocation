; ModuleID = 'drivers/tty/tty_ldisc.c'
source_filename = "drivers/tty/tty_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_register_ldisc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_register_ldisc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_unregister_ldisc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_unregister_ldisc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_ldisc_ref_wait: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_ldisc_ref_wait ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_ldisc_ref: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_ldisc_ref ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_ldisc_deref: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_ldisc_deref ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_ldisc_flush: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_ldisc_flush ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_set_ldisc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_set_ldisc ; .previous"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, %struct.ld_semaphore, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, i32, %struct.winsize, %struct.anon.16, %struct.anon.17, i8, i8, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, ptr, %struct.list_head, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.16 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.17 = type { ptr, ptr, %struct.spinlock, i8, i8, [0 x i64] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.tty_ldisc = type { ptr, ptr }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@tty_ldiscs_lock = internal global %struct.raw_spinlock zeroinitializer, align 4, !dbg !0
@tty_ldiscs = internal global [31 x ptr] zeroinitializer, align 16, !dbg !5027
@__UNIQUE_ID___addressable_tty_register_ldisc287 = internal global ptr @tty_register_ldisc, section ".discard.addressable", align 8, !dbg !179
@__UNIQUE_ID___addressable_tty_unregister_ldisc288 = internal global ptr @tty_unregister_ldisc, section ".discard.addressable", align 8, !dbg !181
@tty_ldisc_autoload = hidden global i32 1, align 4, !dbg !183
@tty_ldiscs_seq_ops = hidden constant %struct.seq_operations { ptr @tty_ldiscs_seq_start, ptr @tty_ldiscs_seq_stop, ptr @tty_ldiscs_seq_next, ptr @tty_ldiscs_seq_show }, align 8, !dbg !185
@__UNIQUE_ID___addressable_tty_ldisc_ref_wait289 = internal global ptr @tty_ldisc_ref_wait, section ".discard.addressable", align 8, !dbg !5012
@__UNIQUE_ID___addressable_tty_ldisc_ref290 = internal global ptr @tty_ldisc_ref, section ".discard.addressable", align 8, !dbg !5014
@__UNIQUE_ID___addressable_tty_ldisc_deref291 = internal global ptr @tty_ldisc_deref, section ".discard.addressable", align 8, !dbg !5016
@__UNIQUE_ID___addressable_tty_ldisc_flush292 = internal global ptr @tty_ldisc_flush, section ".discard.addressable", align 8, !dbg !5018
@__UNIQUE_ID___addressable_tty_set_ldisc293 = internal global ptr @tty_set_ldisc, section ".discard.addressable", align 8, !dbg !5020
@.str = private unnamed_addr constant [24 x i8] c"drivers/tty/tty_ldisc.c\00", align 1, !dbg !5022
@.str.1 = private unnamed_addr constant [11 x i8] c"%-10s %2d\0A\00", align 1, !dbg !5032
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1, !dbg !5037
@.str.3 = private unnamed_addr constant [13 x i8] c"tty-ldisc-%d\00", align 1, !dbg !5040
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5045
@.str.5 = private unnamed_addr constant [30 x i8] c"\014Falling back ldisc for %s.\0A\00", align 1, !dbg !5050
@.str.6 = private unnamed_addr constant [35 x i8] c"Couldn't open N_NULL ldisc for %s.\00", align 1, !dbg !5055
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_tty_register_ldisc287, ptr @__UNIQUE_ID___addressable_tty_unregister_ldisc288, ptr @__UNIQUE_ID___addressable_tty_ldisc_ref_wait289, ptr @__UNIQUE_ID___addressable_tty_ldisc_ref290, ptr @__UNIQUE_ID___addressable_tty_ldisc_deref291, ptr @__UNIQUE_ID___addressable_tty_ldisc_flush292, ptr @__UNIQUE_ID___addressable_tty_set_ldisc293], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_register_ldisc(ptr noundef %new_ldisc) #0 align 16 !dbg !5069 {
entry:
  %retval = alloca i32, align 4
  %new_ldisc.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store ptr %new_ldisc, ptr %new_ldisc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_ldisc.addr, metadata !5073, metadata !DIExpression()), !dbg !5083
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5084
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5074, metadata !DIExpression()), !dbg !5085
  %0 = load ptr, ptr %new_ldisc.addr, align 8, !dbg !5086
  %num = getelementptr inbounds %struct.tty_ldisc_ops, ptr %0, i32 0, i32 1, !dbg !5088
  %1 = load i32, ptr %num, align 8, !dbg !5088
  %cmp = icmp slt i32 %1, 0, !dbg !5089
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5090

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %new_ldisc.addr, align 8, !dbg !5091
  %num1 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %2, i32 0, i32 1, !dbg !5092
  %3 = load i32, ptr %num1, align 8, !dbg !5092
  %cmp2 = icmp sge i32 %3, 31, !dbg !5093
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5094

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5095

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !5096

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5097
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5075, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5097
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5078, metadata !DIExpression()), !dbg !5097
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !5097
  %conv = zext i1 %cmp3 to i32, !dbg !5097
  store i32 1, ptr %tmp, align 4, !dbg !5097
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5098
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5098
  %4 = load i32, ptr %tmp, align 4, !dbg !5097
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tty_ldiscs_lock) #17, !dbg !5098
  store i64 %call, ptr %flags, align 8, !dbg !5098
  br label %do.cond, !dbg !5098

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5098

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %new_ldisc.addr, align 8, !dbg !5099
  %6 = load ptr, ptr %new_ldisc.addr, align 8, !dbg !5100
  %num4 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %6, i32 0, i32 1, !dbg !5101
  %7 = load i32, ptr %num4, align 8, !dbg !5101
  %idxprom = sext i32 %7 to i64, !dbg !5102
  %arrayidx = getelementptr [31 x ptr], ptr @tty_ldiscs, i64 0, i64 %idxprom, !dbg !5102
  store ptr %5, ptr %arrayidx, align 8, !dbg !5103
  br label %do.body5, !dbg !5104

do.body5:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #16, !dbg !5105
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !5079, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #16, !dbg !5105
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !5082, metadata !DIExpression()), !dbg !5105
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !5105
  %conv9 = zext i1 %cmp8 to i32, !dbg !5105
  store i32 1, ptr %tmp10, align 4, !dbg !5105
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #16, !dbg !5106
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #16, !dbg !5106
  %8 = load i32, ptr %tmp10, align 4, !dbg !5105
  %9 = load i64, ptr %flags, align 8, !dbg !5106
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tty_ldiscs_lock, i64 noundef %9) #17, !dbg !5106
  br label %do.cond11, !dbg !5106

do.cond11:                                        ; preds = %do.body5
  br label %do.end12, !dbg !5106

do.end12:                                         ; preds = %do.cond11
  store i32 0, ptr %retval, align 4, !dbg !5107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5107

cleanup:                                          ; preds = %do.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5108
  %10 = load i32, ptr %retval, align 4, !dbg !5108
  ret i32 %10, !dbg !5108
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5109 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5114 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_unregister_ldisc(ptr noundef %ldisc) #0 align 16 !dbg !5117 {
entry:
  %ldisc.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  store ptr %ldisc, ptr %ldisc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ldisc.addr, metadata !5121, metadata !DIExpression()), !dbg !5131
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5122, metadata !DIExpression()), !dbg !5133
  br label %do.body, !dbg !5134

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5135
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5123, metadata !DIExpression()), !dbg !5135
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5135
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5126, metadata !DIExpression()), !dbg !5135
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5135
  %conv = zext i1 %cmp to i32, !dbg !5135
  store i32 1, ptr %tmp, align 4, !dbg !5135
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5136
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5136
  %0 = load i32, ptr %tmp, align 4, !dbg !5135
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tty_ldiscs_lock) #17, !dbg !5136
  store i64 %call, ptr %flags, align 8, !dbg !5136
  br label %do.cond, !dbg !5136

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5136

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %ldisc.addr, align 8, !dbg !5137
  %num = getelementptr inbounds %struct.tty_ldisc_ops, ptr %1, i32 0, i32 1, !dbg !5138
  %2 = load i32, ptr %num, align 8, !dbg !5138
  %idxprom = sext i32 %2 to i64, !dbg !5139
  %arrayidx = getelementptr [31 x ptr], ptr @tty_ldiscs, i64 0, i64 %idxprom, !dbg !5139
  store ptr null, ptr %arrayidx, align 8, !dbg !5140
  br label %do.body1, !dbg !5141

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #16, !dbg !5142
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !5127, metadata !DIExpression()), !dbg !5142
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #16, !dbg !5142
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !5130, metadata !DIExpression()), !dbg !5142
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !5142
  %conv6 = zext i1 %cmp5 to i32, !dbg !5142
  store i32 1, ptr %tmp7, align 4, !dbg !5142
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #16, !dbg !5143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #16, !dbg !5143
  %3 = load i32, ptr %tmp7, align 4, !dbg !5142
  %4 = load i64, ptr %flags, align 8, !dbg !5143
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tty_ldiscs_lock, i64 noundef %4) #17, !dbg !5143
  br label %do.cond8, !dbg !5143

do.cond8:                                         ; preds = %do.body1
  br label %do.end9, !dbg !5143

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5144
  ret void, !dbg !5144
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tty_ldiscs_seq_start(ptr noundef %m, ptr noundef %pos) #0 align 16 !dbg !5145 {
entry:
  %m.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5147, metadata !DIExpression()), !dbg !5149
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5148, metadata !DIExpression()), !dbg !5150
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !5151
  %1 = load i64, ptr %0, align 8, !dbg !5152
  %cmp = icmp slt i64 %1, 31, !dbg !5153
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5154

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !5155
  br label %cond.end, !dbg !5154

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ], !dbg !5154
  ret ptr %cond, !dbg !5156
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_ldiscs_seq_stop(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !5157 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5159, metadata !DIExpression()), !dbg !5161
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5160, metadata !DIExpression()), !dbg !5162
  ret void, !dbg !5163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tty_ldiscs_seq_next(ptr noundef %m, ptr noundef %v, ptr noundef %pos) #0 align 16 !dbg !5164 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5166, metadata !DIExpression()), !dbg !5169
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5167, metadata !DIExpression()), !dbg !5170
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5168, metadata !DIExpression()), !dbg !5171
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !5172
  %1 = load i64, ptr %0, align 8, !dbg !5173
  %inc = add i64 %1, 1, !dbg !5173
  store i64 %inc, ptr %0, align 8, !dbg !5173
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !5174
  %3 = load i64, ptr %2, align 8, !dbg !5175
  %cmp = icmp slt i64 %3, 31, !dbg !5176
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5177

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %pos.addr, align 8, !dbg !5178
  br label %cond.end, !dbg !5177

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !5177
  ret ptr %cond, !dbg !5179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tty_ldiscs_seq_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !5180 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ldops = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5182, metadata !DIExpression()), !dbg !5186
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5183, metadata !DIExpression()), !dbg !5187
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5184, metadata !DIExpression()), !dbg !5189
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5190
  %1 = load i64, ptr %0, align 8, !dbg !5191
  %conv = trunc i64 %1 to i32, !dbg !5191
  store i32 %conv, ptr %i, align 4, !dbg !5189
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldops) #16, !dbg !5192
  call void @llvm.dbg.declare(metadata ptr %ldops, metadata !5185, metadata !DIExpression()), !dbg !5193
  %2 = load i32, ptr %i, align 4, !dbg !5194
  %call = call ptr @get_ldops(i32 noundef %2) #17, !dbg !5195
  store ptr %call, ptr %ldops, align 8, !dbg !5196
  %3 = load ptr, ptr %ldops, align 8, !dbg !5197
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #17, !dbg !5199
  br i1 %call1, label %if.then, label %if.end, !dbg !5200

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5201

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %m.addr, align 8, !dbg !5202
  %5 = load ptr, ptr %ldops, align 8, !dbg !5203
  %name = getelementptr inbounds %struct.tty_ldisc_ops, ptr %5, i32 0, i32 0, !dbg !5204
  %6 = load ptr, ptr %name, align 8, !dbg !5204
  %tobool = icmp ne ptr %6, null, !dbg !5203
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5203

cond.true:                                        ; preds = %if.end
  %7 = load ptr, ptr %ldops, align 8, !dbg !5205
  %name2 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %7, i32 0, i32 0, !dbg !5206
  %8 = load ptr, ptr %name2, align 8, !dbg !5206
  br label %cond.end, !dbg !5203

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5203

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ @.str.2, %cond.false ], !dbg !5203
  %9 = load i32, ptr %i, align 4, !dbg !5207
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef @.str.1, ptr noundef %cond, i32 noundef %9) #17, !dbg !5208
  %10 = load ptr, ptr %ldops, align 8, !dbg !5209
  call void @put_ldops(ptr noundef %10) #17, !dbg !5210
  store i32 0, ptr %retval, align 4, !dbg !5211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5211

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldops) #16, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5212
  %11 = load i32, ptr %retval, align 4, !dbg !5212
  ret i32 %11, !dbg !5212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tty_ldisc_ref_wait(ptr noundef %tty) #0 align 16 !dbg !5213 {
entry:
  %tty.addr = alloca ptr, align 8
  %ld = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5217, metadata !DIExpression()), !dbg !5219
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !5220
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !5218, metadata !DIExpression()), !dbg !5221
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5222
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7, !dbg !5223
  %call = call i32 @ldsem_down_read(ptr noundef %ldisc_sem, i64 noundef 9223372036854775807) #17, !dbg !5224
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5225
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 6, !dbg !5226
  %2 = load ptr, ptr %ldisc, align 8, !dbg !5226
  store ptr %2, ptr %ld, align 8, !dbg !5227
  %3 = load ptr, ptr %ld, align 8, !dbg !5228
  %tobool = icmp ne ptr %3, null, !dbg !5228
  br i1 %tobool, label %if.end, label %if.then, !dbg !5230

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5231
  %ldisc_sem1 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 7, !dbg !5232
  call void @ldsem_up_read(ptr noundef %ldisc_sem1) #17, !dbg !5233
  br label %if.end, !dbg !5233

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %ld, align 8, !dbg !5234
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !5235
  ret ptr %5, !dbg !5236
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5237 dso_local i32 @ldsem_down_read(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5241 dso_local void @ldsem_up_read(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tty_ldisc_ref(ptr noundef %tty) #0 align 16 !dbg !5244 {
entry:
  %tty.addr = alloca ptr, align 8
  %ld = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5246, metadata !DIExpression()), !dbg !5248
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !5247, metadata !DIExpression()), !dbg !5250
  store ptr null, ptr %ld, align 8, !dbg !5250
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5251
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7, !dbg !5253
  %call = call i32 @ldsem_down_read_trylock(ptr noundef %ldisc_sem) #17, !dbg !5254
  %tobool = icmp ne i32 %call, 0, !dbg !5254
  br i1 %tobool, label %if.then, label %if.end4, !dbg !5255

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5256
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 6, !dbg !5258
  %2 = load ptr, ptr %ldisc, align 8, !dbg !5258
  store ptr %2, ptr %ld, align 8, !dbg !5259
  %3 = load ptr, ptr %ld, align 8, !dbg !5260
  %tobool1 = icmp ne ptr %3, null, !dbg !5260
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !5262

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5263
  %ldisc_sem3 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 7, !dbg !5264
  call void @ldsem_up_read(ptr noundef %ldisc_sem3) #17, !dbg !5265
  br label %if.end, !dbg !5265

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end4, !dbg !5266

if.end4:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %ld, align 8, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !5268
  ret ptr %5, !dbg !5269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5270 dso_local i32 @ldsem_down_read_trylock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_ldisc_deref(ptr noundef %ld) #0 align 16 !dbg !5273 {
entry:
  %ld.addr = alloca ptr, align 8
  store ptr %ld, ptr %ld.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ld.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  %0 = load ptr, ptr %ld.addr, align 8, !dbg !5279
  %tty = getelementptr inbounds %struct.tty_ldisc, ptr %0, i32 0, i32 1, !dbg !5280
  %1 = load ptr, ptr %tty, align 8, !dbg !5280
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 7, !dbg !5281
  call void @ldsem_up_read(ptr noundef %ldisc_sem) #17, !dbg !5282
  ret void, !dbg !5283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_ldisc_lock(ptr noundef %tty, i64 noundef %timeout) #0 align 16 !dbg !5284 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5288, metadata !DIExpression()), !dbg !5291
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5289, metadata !DIExpression()), !dbg !5292
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5293
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5290, metadata !DIExpression()), !dbg !5294
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5295
  %flags = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16, !dbg !5296
  call void @set_bit(i64 noundef 20, ptr noundef %flags) #17, !dbg !5297
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5298
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 28, !dbg !5298
  %call = call i32 @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #17, !dbg !5298
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5299
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 27, !dbg !5299
  %call1 = call i32 @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #17, !dbg !5299
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5300
  %4 = load i64, ptr %timeout.addr, align 8, !dbg !5301
  %call2 = call i32 @__tty_ldisc_lock(ptr noundef %3, i64 noundef %4) #17, !dbg !5302
  store i32 %call2, ptr %ret, align 4, !dbg !5303
  %5 = load i32, ptr %ret, align 4, !dbg !5304
  %tobool = icmp ne i32 %5, 0, !dbg !5304
  br i1 %tobool, label %if.end, label %if.then, !dbg !5306

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !5307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5307

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5308
  %flags3 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16, !dbg !5309
  call void @set_bit(i64 noundef 22, ptr noundef %flags3) #17, !dbg !5310
  store i32 0, ptr %retval, align 4, !dbg !5311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5311

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5312
  %7 = load i32, ptr %retval, align 4, !dbg !5312
  ret i32 %7, !dbg !5312
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5313 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5320, metadata !DIExpression()), !dbg !5322
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5321, metadata !DIExpression()), !dbg !5323
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5324
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5325
  %div = sdiv i64 %1, 64, !dbg !5325
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5326
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5327
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5328
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5329
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5330
  ret void, !dbg !5331
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5332 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__tty_ldisc_lock(ptr noundef %tty, i64 noundef %timeout) #5 align 16 !dbg !5336 {
entry:
  %tty.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5338, metadata !DIExpression()), !dbg !5340
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5339, metadata !DIExpression()), !dbg !5341
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5342
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7, !dbg !5343
  %1 = load i64, ptr %timeout.addr, align 8, !dbg !5344
  %call = call i32 @ldsem_down_write(ptr noundef %ldisc_sem, i64 noundef %1) #17, !dbg !5345
  ret i32 %call, !dbg !5346
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_ldisc_unlock(ptr noundef %tty) #0 align 16 !dbg !5347 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5351
  %flags = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16, !dbg !5352
  call void @clear_bit(i64 noundef 22, ptr noundef %flags) #17, !dbg !5353
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5354
  %flags1 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16, !dbg !5355
  call void @clear_bit(i64 noundef 20, ptr noundef %flags1) #17, !dbg !5356
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5357
  call void @__tty_ldisc_unlock(ptr noundef %2) #17, !dbg !5358
  ret void, !dbg !5359
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5360 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5362, metadata !DIExpression()), !dbg !5364
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5363, metadata !DIExpression()), !dbg !5365
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5366
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5367
  %div = sdiv i64 %1, 64, !dbg !5367
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5368
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5369
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5370
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5371
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5372
  ret void, !dbg !5373
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__tty_ldisc_unlock(ptr noundef %tty) #5 align 16 !dbg !5374 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5378
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7, !dbg !5379
  call void @ldsem_up_write(ptr noundef %ldisc_sem) #17, !dbg !5380
  ret void, !dbg !5381
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_ldisc_flush(ptr noundef %tty) #0 align 16 !dbg !5382 {
entry:
  %tty.addr = alloca ptr, align 8
  %ld = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5384, metadata !DIExpression()), !dbg !5386
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !5387
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !5385, metadata !DIExpression()), !dbg !5388
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5389
  %call = call ptr @tty_ldisc_ref(ptr noundef %0) #17, !dbg !5390
  store ptr %call, ptr %ld, align 8, !dbg !5388
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5391
  %2 = load ptr, ptr %ld, align 8, !dbg !5392
  call void @tty_buffer_flush(ptr noundef %1, ptr noundef %2) #17, !dbg !5393
  %3 = load ptr, ptr %ld, align 8, !dbg !5394
  %tobool = icmp ne ptr %3, null, !dbg !5394
  br i1 %tobool, label %if.then, label %if.end, !dbg !5396

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ld, align 8, !dbg !5397
  call void @tty_ldisc_deref(ptr noundef %4) #17, !dbg !5398
  br label %if.end, !dbg !5398

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !5399
  ret void, !dbg !5399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5400 dso_local void @tty_buffer_flush(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_set_ldisc(ptr noundef %tty, i32 noundef %disc) #0 align 16 !dbg !5404 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %disc.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %old_ldisc = alloca ptr, align 8
  %new_ldisc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5406, metadata !DIExpression()), !dbg !5413
  store i32 %disc, ptr %disc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %disc.addr, metadata !5407, metadata !DIExpression()), !dbg !5414
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5408, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_ldisc) #16, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %old_ldisc, metadata !5409, metadata !DIExpression()), !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ldisc) #16, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %new_ldisc, metadata !5410, metadata !DIExpression()), !dbg !5419
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5420
  %1 = load i32, ptr %disc.addr, align 4, !dbg !5421
  %call = call ptr @tty_ldisc_get(ptr noundef %0, i32 noundef %1) #17, !dbg !5422
  store ptr %call, ptr %new_ldisc, align 8, !dbg !5423
  %2 = load ptr, ptr %new_ldisc, align 8, !dbg !5424
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %2) #17, !dbg !5426
  br i1 %call2, label %if.then, label %if.end, !dbg !5427

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %new_ldisc, align 8, !dbg !5428
  %call3 = call i64 @PTR_ERR(ptr noundef %3) #17, !dbg !5429
  %conv = trunc i64 %call3 to i32, !dbg !5429
  store i32 %conv, ptr %retval, align 4, !dbg !5430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5430

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5431
  call void @tty_lock(ptr noundef %4) #17, !dbg !5432
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5433
  %call4 = call i32 @tty_ldisc_lock(ptr noundef %5, i64 noundef 5000) #17, !dbg !5434
  store i32 %call4, ptr %retval1, align 4, !dbg !5435
  %6 = load i32, ptr %retval1, align 4, !dbg !5436
  %tobool = icmp ne i32 %6, 0, !dbg !5436
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5438

if.then5:                                         ; preds = %if.end
  br label %err, !dbg !5439

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !5440
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 6, !dbg !5442
  %8 = load ptr, ptr %ldisc, align 8, !dbg !5442
  %tobool7 = icmp ne ptr %8, null, !dbg !5440
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5443

if.then8:                                         ; preds = %if.end6
  store i32 -5, ptr %retval1, align 4, !dbg !5444
  br label %out, !dbg !5446

if.end9:                                          ; preds = %if.end6
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5447
  %ldisc10 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 6, !dbg !5449
  %10 = load ptr, ptr %ldisc10, align 8, !dbg !5449
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %10, i32 0, i32 0, !dbg !5450
  %11 = load ptr, ptr %ops, align 8, !dbg !5450
  %num = getelementptr inbounds %struct.tty_ldisc_ops, ptr %11, i32 0, i32 1, !dbg !5451
  %12 = load i32, ptr %num, align 8, !dbg !5451
  %13 = load i32, ptr %disc.addr, align 4, !dbg !5452
  %cmp = icmp eq i32 %12, %13, !dbg !5453
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !5454

if.then12:                                        ; preds = %if.end9
  br label %out, !dbg !5455

if.end13:                                         ; preds = %if.end9
  %14 = load ptr, ptr %tty.addr, align 8, !dbg !5456
  %flags = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 16, !dbg !5456
  %15 = ptrtoint ptr %flags to i64, !dbg !5456
  %cmp14 = icmp ne i64 %15, 0, !dbg !5456
  %conv15 = zext i1 %cmp14 to i32, !dbg !5456
  %16 = call i1 @llvm.is.constant.i32(i32 %conv15), !dbg !5456
  br i1 %16, label %land.lhs.true, label %cond.false, !dbg !5456

land.lhs.true:                                    ; preds = %if.end13
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !5456
  %flags16 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 16, !dbg !5456
  %18 = ptrtoint ptr %flags16 to i64, !dbg !5456
  %cmp17 = icmp ne i64 %18, 0, !dbg !5456
  br i1 %cmp17, label %land.lhs.true19, label %cond.false, !dbg !5456

land.lhs.true19:                                  ; preds = %land.lhs.true
  %19 = load ptr, ptr %tty.addr, align 8, !dbg !5456
  %flags20 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 16, !dbg !5456
  %20 = load i64, ptr %flags20, align 8, !dbg !5456
  %21 = call i1 @llvm.is.constant.i64(i64 %20), !dbg !5456
  br i1 %21, label %cond.true, label %cond.false, !dbg !5458

cond.true:                                        ; preds = %land.lhs.true19
  %22 = load ptr, ptr %tty.addr, align 8, !dbg !5456
  %flags21 = getelementptr inbounds %struct.tty_struct, ptr %22, i32 0, i32 16, !dbg !5456
  %call22 = call zeroext i1 @const_test_bit(i64 noundef 18, ptr noundef %flags21) #17, !dbg !5456
  br i1 %call22, label %if.then27, label %if.end28, !dbg !5456

cond.false:                                       ; preds = %land.lhs.true19, %land.lhs.true, %if.end13
  %23 = load ptr, ptr %tty.addr, align 8, !dbg !5456
  %flags24 = getelementptr inbounds %struct.tty_struct, ptr %23, i32 0, i32 16, !dbg !5456
  %call25 = call zeroext i1 @_test_bit(i64 noundef 18, ptr noundef %flags24) #17, !dbg !5456
  br i1 %call25, label %if.then27, label %if.end28, !dbg !5458

if.then27:                                        ; preds = %cond.false, %cond.true
  store i32 -5, ptr %retval1, align 4, !dbg !5459
  br label %out, !dbg !5461

if.end28:                                         ; preds = %cond.false, %cond.true
  %24 = load ptr, ptr %tty.addr, align 8, !dbg !5462
  %ops29 = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 5, !dbg !5464
  %25 = load ptr, ptr %ops29, align 8, !dbg !5464
  %ldisc_ok = getelementptr inbounds %struct.tty_operations, ptr %25, i32 0, i32 22, !dbg !5465
  %26 = load ptr, ptr %ldisc_ok, align 8, !dbg !5465
  %tobool30 = icmp ne ptr %26, null, !dbg !5462
  br i1 %tobool30, label %if.then31, label %if.end38, !dbg !5466

if.then31:                                        ; preds = %if.end28
  %27 = load ptr, ptr %tty.addr, align 8, !dbg !5467
  %ops32 = getelementptr inbounds %struct.tty_struct, ptr %27, i32 0, i32 5, !dbg !5469
  %28 = load ptr, ptr %ops32, align 8, !dbg !5469
  %ldisc_ok33 = getelementptr inbounds %struct.tty_operations, ptr %28, i32 0, i32 22, !dbg !5470
  %29 = load ptr, ptr %ldisc_ok33, align 8, !dbg !5470
  %30 = load ptr, ptr %tty.addr, align 8, !dbg !5471
  %31 = load i32, ptr %disc.addr, align 4, !dbg !5472
  %call34 = call i32 %29(ptr noundef %30, i32 noundef %31) #17, !dbg !5467
  store i32 %call34, ptr %retval1, align 4, !dbg !5473
  %32 = load i32, ptr %retval1, align 4, !dbg !5474
  %tobool35 = icmp ne i32 %32, 0, !dbg !5474
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5476

if.then36:                                        ; preds = %if.then31
  br label %out, !dbg !5477

if.end37:                                         ; preds = %if.then31
  br label %if.end38, !dbg !5478

if.end38:                                         ; preds = %if.end37, %if.end28
  %33 = load ptr, ptr %tty.addr, align 8, !dbg !5479
  %ldisc39 = getelementptr inbounds %struct.tty_struct, ptr %33, i32 0, i32 6, !dbg !5480
  %34 = load ptr, ptr %ldisc39, align 8, !dbg !5480
  store ptr %34, ptr %old_ldisc, align 8, !dbg !5481
  %35 = load ptr, ptr %tty.addr, align 8, !dbg !5482
  %36 = load ptr, ptr %old_ldisc, align 8, !dbg !5483
  call void @tty_ldisc_close(ptr noundef %35, ptr noundef %36) #17, !dbg !5484
  %37 = load ptr, ptr %new_ldisc, align 8, !dbg !5485
  %38 = load ptr, ptr %tty.addr, align 8, !dbg !5486
  %ldisc40 = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 6, !dbg !5487
  store ptr %37, ptr %ldisc40, align 8, !dbg !5488
  %39 = load ptr, ptr %tty.addr, align 8, !dbg !5489
  %40 = load i32, ptr %disc.addr, align 4, !dbg !5490
  call void @tty_set_termios_ldisc(ptr noundef %39, i32 noundef %40) #17, !dbg !5491
  %41 = load ptr, ptr %tty.addr, align 8, !dbg !5492
  %42 = load ptr, ptr %new_ldisc, align 8, !dbg !5493
  %call41 = call i32 @tty_ldisc_open(ptr noundef %41, ptr noundef %42) #17, !dbg !5494
  store i32 %call41, ptr %retval1, align 4, !dbg !5495
  %43 = load i32, ptr %retval1, align 4, !dbg !5496
  %cmp42 = icmp slt i32 %43, 0, !dbg !5498
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !5499

if.then44:                                        ; preds = %if.end38
  %44 = load ptr, ptr %new_ldisc, align 8, !dbg !5500
  call void @tty_ldisc_put(ptr noundef %44) #17, !dbg !5502
  %45 = load ptr, ptr %tty.addr, align 8, !dbg !5503
  %46 = load ptr, ptr %old_ldisc, align 8, !dbg !5504
  call void @tty_ldisc_restore(ptr noundef %45, ptr noundef %46) #17, !dbg !5505
  br label %if.end45, !dbg !5506

if.end45:                                         ; preds = %if.then44, %if.end38
  %47 = load ptr, ptr %tty.addr, align 8, !dbg !5507
  %ldisc46 = getelementptr inbounds %struct.tty_struct, ptr %47, i32 0, i32 6, !dbg !5509
  %48 = load ptr, ptr %ldisc46, align 8, !dbg !5509
  %ops47 = getelementptr inbounds %struct.tty_ldisc, ptr %48, i32 0, i32 0, !dbg !5510
  %49 = load ptr, ptr %ops47, align 8, !dbg !5510
  %num48 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %49, i32 0, i32 1, !dbg !5511
  %50 = load i32, ptr %num48, align 8, !dbg !5511
  %51 = load ptr, ptr %old_ldisc, align 8, !dbg !5512
  %ops49 = getelementptr inbounds %struct.tty_ldisc, ptr %51, i32 0, i32 0, !dbg !5513
  %52 = load ptr, ptr %ops49, align 8, !dbg !5513
  %num50 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %52, i32 0, i32 1, !dbg !5514
  %53 = load i32, ptr %num50, align 8, !dbg !5514
  %cmp51 = icmp ne i32 %50, %53, !dbg !5515
  br i1 %cmp51, label %land.lhs.true53, label %if.end60, !dbg !5516

land.lhs.true53:                                  ; preds = %if.end45
  %54 = load ptr, ptr %tty.addr, align 8, !dbg !5517
  %ops54 = getelementptr inbounds %struct.tty_struct, ptr %54, i32 0, i32 5, !dbg !5518
  %55 = load ptr, ptr %ops54, align 8, !dbg !5518
  %set_ldisc = getelementptr inbounds %struct.tty_operations, ptr %55, i32 0, i32 23, !dbg !5519
  %56 = load ptr, ptr %set_ldisc, align 8, !dbg !5519
  %tobool55 = icmp ne ptr %56, null, !dbg !5517
  br i1 %tobool55, label %if.then56, label %if.end60, !dbg !5520

if.then56:                                        ; preds = %land.lhs.true53
  %57 = load ptr, ptr %tty.addr, align 8, !dbg !5521
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %57, i32 0, i32 11, !dbg !5523
  call void @down_read(ptr noundef %termios_rwsem) #17, !dbg !5524
  %58 = load ptr, ptr %tty.addr, align 8, !dbg !5525
  %ops57 = getelementptr inbounds %struct.tty_struct, ptr %58, i32 0, i32 5, !dbg !5526
  %59 = load ptr, ptr %ops57, align 8, !dbg !5526
  %set_ldisc58 = getelementptr inbounds %struct.tty_operations, ptr %59, i32 0, i32 23, !dbg !5527
  %60 = load ptr, ptr %set_ldisc58, align 8, !dbg !5527
  %61 = load ptr, ptr %tty.addr, align 8, !dbg !5528
  call void %60(ptr noundef %61) #17, !dbg !5525
  %62 = load ptr, ptr %tty.addr, align 8, !dbg !5529
  %termios_rwsem59 = getelementptr inbounds %struct.tty_struct, ptr %62, i32 0, i32 11, !dbg !5530
  call void @up_read(ptr noundef %termios_rwsem59) #17, !dbg !5531
  br label %if.end60, !dbg !5532

if.end60:                                         ; preds = %if.then56, %land.lhs.true53, %if.end45
  %63 = load ptr, ptr %old_ldisc, align 8, !dbg !5533
  store ptr %63, ptr %new_ldisc, align 8, !dbg !5534
  br label %out, !dbg !5535

out:                                              ; preds = %if.end60, %if.then36, %if.then27, %if.then12, %if.then8
  call void @llvm.dbg.label(metadata !5411), !dbg !5536
  %64 = load ptr, ptr %tty.addr, align 8, !dbg !5537
  call void @tty_ldisc_unlock(ptr noundef %64) #17, !dbg !5538
  %65 = load ptr, ptr %tty.addr, align 8, !dbg !5539
  %port = getelementptr inbounds %struct.tty_struct, ptr %65, i32 0, i32 4, !dbg !5540
  %66 = load ptr, ptr %port, align 8, !dbg !5540
  %call61 = call zeroext i1 @tty_buffer_restart_work(ptr noundef %66) #17, !dbg !5541
  br label %err, !dbg !5541

err:                                              ; preds = %out, %if.then5
  call void @llvm.dbg.label(metadata !5412), !dbg !5542
  %67 = load ptr, ptr %new_ldisc, align 8, !dbg !5543
  call void @tty_ldisc_put(ptr noundef %67) #17, !dbg !5544
  %68 = load ptr, ptr %tty.addr, align 8, !dbg !5545
  call void @tty_unlock(ptr noundef %68) #17, !dbg !5546
  %69 = load i32, ptr %retval1, align 4, !dbg !5547
  store i32 %69, ptr %retval, align 4, !dbg !5548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5548

cleanup:                                          ; preds = %err, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ldisc) #16, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_ldisc) #16, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !5549
  %70 = load i32, ptr %retval, align 4, !dbg !5549
  ret i32 %70, !dbg !5549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tty_ldisc_get(ptr noundef %tty, i32 noundef %disc) #0 align 16 !dbg !5550 {
entry:
  %retval = alloca ptr, align 8
  %tty.addr = alloca ptr, align 8
  %disc.addr = alloca i32, align 4
  %ld = alloca ptr, align 8
  %ldops = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5554, metadata !DIExpression()), !dbg !5558
  store i32 %disc, ptr %disc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %disc.addr, metadata !5555, metadata !DIExpression()), !dbg !5559
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !5560
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !5556, metadata !DIExpression()), !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldops) #16, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %ldops, metadata !5557, metadata !DIExpression()), !dbg !5563
  %0 = load i32, ptr %disc.addr, align 4, !dbg !5564
  %cmp = icmp slt i32 %0, 0, !dbg !5566
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5567

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %disc.addr, align 4, !dbg !5568
  %cmp1 = icmp sge i32 %1, 31, !dbg !5569
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5570

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @ERR_PTR(i64 noundef -22) #17, !dbg !5571
  store ptr %call, ptr %retval, align 8, !dbg !5572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5572

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %disc.addr, align 4, !dbg !5573
  %call2 = call ptr @get_ldops(i32 noundef %2) #17, !dbg !5574
  store ptr %call2, ptr %ldops, align 8, !dbg !5575
  %3 = load ptr, ptr %ldops, align 8, !dbg !5576
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %3) #17, !dbg !5578
  br i1 %call3, label %if.then4, label %if.end15, !dbg !5579

if.then4:                                         ; preds = %if.end
  %call5 = call zeroext i1 @capable(i32 noundef 16) #17, !dbg !5580
  br i1 %call5, label %if.end8, label %land.lhs.true, !dbg !5583

land.lhs.true:                                    ; preds = %if.then4
  %4 = load i32, ptr @tty_ldisc_autoload, align 4, !dbg !5584
  %tobool = icmp ne i32 %4, 0, !dbg !5584
  br i1 %tobool, label %if.end8, label %if.then6, !dbg !5585

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call ptr @ERR_PTR(i64 noundef -1) #17, !dbg !5586
  store ptr %call7, ptr %retval, align 8, !dbg !5587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5587

if.end8:                                          ; preds = %land.lhs.true, %if.then4
  %5 = load i32, ptr %disc.addr, align 4, !dbg !5588
  %call9 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.3, i32 noundef %5) #17, !dbg !5588
  %6 = load i32, ptr %disc.addr, align 4, !dbg !5589
  %call10 = call ptr @get_ldops(i32 noundef %6) #17, !dbg !5590
  store ptr %call10, ptr %ldops, align 8, !dbg !5591
  %7 = load ptr, ptr %ldops, align 8, !dbg !5592
  %call11 = call zeroext i1 @IS_ERR(ptr noundef %7) #17, !dbg !5594
  br i1 %call11, label %if.then12, label %if.end14, !dbg !5595

if.then12:                                        ; preds = %if.end8
  %8 = load ptr, ptr %ldops, align 8, !dbg !5596
  %call13 = call ptr @ERR_CAST(ptr noundef %8) #17, !dbg !5597
  store ptr %call13, ptr %retval, align 8, !dbg !5598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5598

if.end14:                                         ; preds = %if.end8
  br label %if.end15, !dbg !5599

if.end15:                                         ; preds = %if.end14, %if.end
  %call16 = call noalias ptr @kmalloc(i64 noundef 16, i32 noundef 36032) #18, !dbg !5600
  store ptr %call16, ptr %ld, align 8, !dbg !5601
  %9 = load ptr, ptr %ldops, align 8, !dbg !5602
  %10 = load ptr, ptr %ld, align 8, !dbg !5603
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %10, i32 0, i32 0, !dbg !5604
  store ptr %9, ptr %ops, align 8, !dbg !5605
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5606
  %12 = load ptr, ptr %ld, align 8, !dbg !5607
  %tty17 = getelementptr inbounds %struct.tty_ldisc, ptr %12, i32 0, i32 1, !dbg !5608
  store ptr %11, ptr %tty17, align 8, !dbg !5609
  %13 = load ptr, ptr %ld, align 8, !dbg !5610
  store ptr %13, ptr %retval, align 8, !dbg !5611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5611

cleanup:                                          ; preds = %if.end15, %if.then12, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldops) #16, !dbg !5612
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !5612
  %14 = load ptr, ptr %retval, align 8, !dbg !5612
  ret ptr %14, !dbg !5612
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !5613 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5618, metadata !DIExpression()), !dbg !5619
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5620
  %1 = ptrtoint ptr %0 to i64, !dbg !5620
  %2 = inttoptr i64 %1 to ptr, !dbg !5620
  %3 = ptrtoint ptr %2 to i64, !dbg !5620
  %cmp = icmp uge i64 %3, -4095, !dbg !5620
  %lnot = xor i1 %cmp, true, !dbg !5620
  %lnot1 = xor i1 %lnot, true, !dbg !5620
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5620
  %conv = sext i32 %lnot.ext to i64, !dbg !5620
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5620
  %tobool = icmp ne i64 %expval, 0, !dbg !5620
  ret i1 %tobool, !dbg !5621
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !5622 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5628
  %1 = ptrtoint ptr %0 to i64, !dbg !5629
  ret i64 %1, !dbg !5630
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5631 dso_local void @tty_lock(ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5632 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5639, metadata !DIExpression()), !dbg !5644
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5640, metadata !DIExpression()), !dbg !5645
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5646
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5641, metadata !DIExpression()), !dbg !5647
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5648
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5649
  %div = udiv i64 %1, 64, !dbg !5649
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5650
  store ptr %add.ptr, ptr %p, align 8, !dbg !5647
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5651
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5642, metadata !DIExpression()), !dbg !5652
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5653
  %rem = urem i64 %2, 64, !dbg !5653
  %shl = shl i64 1, %rem, !dbg !5653
  store i64 %shl, ptr %mask, align 8, !dbg !5652
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !5654
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5643, metadata !DIExpression()), !dbg !5655
  %3 = load ptr, ptr %p, align 8, !dbg !5656
  %4 = load i64, ptr %3, align 8, !dbg !5657
  store i64 %4, ptr %val, align 8, !dbg !5655
  %5 = load i64, ptr %val, align 8, !dbg !5658
  %6 = load i64, ptr %mask, align 8, !dbg !5659
  %and = and i64 %5, %6, !dbg !5660
  %tobool = icmp ne i64 %and, 0, !dbg !5661
  %lnot = xor i1 %tobool, true, !dbg !5661
  %lnot1 = xor i1 %lnot, true, !dbg !5662
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !5663
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5663
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5663
  ret i1 %lnot1, !dbg !5664
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5665 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5668, metadata !DIExpression()), !dbg !5670
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5669, metadata !DIExpression()), !dbg !5671
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5672
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5673
  %div = udiv i64 %1, 64, !dbg !5673
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5674
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5675
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5676
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5677
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5678
  ret i1 %call, !dbg !5679
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_ldisc_close(ptr noundef %tty, ptr noundef %ld) #0 align 16 !dbg !5680 {
entry:
  %tty.addr = alloca ptr, align 8
  %ld.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5682, metadata !DIExpression()), !dbg !5689
  store ptr %ld, ptr %ld.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ld.addr, metadata !5683, metadata !DIExpression()), !dbg !5690
  br label %do.body, !dbg !5691

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5692
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7, !dbg !5692
  br label %do.end, !dbg !5692

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5694
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5684, metadata !DIExpression()), !dbg !5694
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5694
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16, !dbg !5694
  %2 = ptrtoint ptr %flags to i64, !dbg !5694
  %cmp = icmp ne i64 %2, 0, !dbg !5694
  %conv = zext i1 %cmp to i32, !dbg !5694
  %3 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5694
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !5694

land.lhs.true:                                    ; preds = %do.end
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5694
  %flags1 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 16, !dbg !5694
  %5 = ptrtoint ptr %flags1 to i64, !dbg !5694
  %cmp2 = icmp ne i64 %5, 0, !dbg !5694
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5694

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5694
  %flags5 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16, !dbg !5694
  %7 = load i64, ptr %flags5, align 8, !dbg !5694
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5694
  br i1 %8, label %cond.true, label %cond.false, !dbg !5694

cond.true:                                        ; preds = %land.lhs.true4
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5694
  %flags6 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 16, !dbg !5694
  %call = call zeroext i1 @const_test_bit(i64 noundef 11, ptr noundef %flags6) #17, !dbg !5694
  %conv7 = zext i1 %call to i32, !dbg !5694
  br label %cond.end, !dbg !5694

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %do.end
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5694
  %flags8 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 16, !dbg !5694
  %call9 = call zeroext i1 @_test_bit(i64 noundef 11, ptr noundef %flags8) #17, !dbg !5694
  %conv10 = zext i1 %call9 to i32, !dbg !5694
  br label %cond.end, !dbg !5694

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !5694
  %tobool = icmp ne i32 %cond, 0, !dbg !5694
  %lnot = xor i1 %tobool, true, !dbg !5694
  %lnot11 = xor i1 %lnot, true, !dbg !5694
  %lnot12 = xor i1 %lnot11, true, !dbg !5694
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !5694
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5694
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !5695
  %tobool13 = icmp ne i32 %11, 0, !dbg !5695
  %lnot14 = xor i1 %tobool13, true, !dbg !5695
  %lnot16 = xor i1 %lnot14, true, !dbg !5695
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5695
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !5695
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !5695
  %tobool19 = icmp ne i64 %expval, 0, !dbg !5695
  br i1 %tobool19, label %if.then, label %if.end, !dbg !5694

if.then:                                          ; preds = %cond.end
  br label %do.body20, !dbg !5695

do.body20:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5696
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5686, metadata !DIExpression()), !dbg !5696
  store i32 2305, ptr %__flags, align 4, !dbg !5696
  br label %do.body21, !dbg !5696

do.body21:                                        ; preds = %do.body20
  br label %do.cond, !dbg !5697

do.cond:                                          ; preds = %do.body21
  br label %do.end22, !dbg !5697

do.end22:                                         ; preds = %do.cond
  br label %do.body23, !dbg !5696

do.body23:                                        ; preds = %do.end22
  %12 = load i32, ptr %__flags, align 4, !dbg !5699
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 452, i32 %12, i64 12) #16, !dbg !5699, !srcloc !5701
  br label %do.cond24, !dbg !5699

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5699

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !5696

do.body26:                                        ; preds = %do.end25
  br label %do.cond27, !dbg !5702

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !5702

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5695
  br label %do.cond29, !dbg !5696

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !5696

do.end30:                                         ; preds = %do.cond29
  br label %if.end, !dbg !5696

if.end:                                           ; preds = %do.end30, %cond.end
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !5694
  %tobool31 = icmp ne i32 %13, 0, !dbg !5694
  %lnot32 = xor i1 %tobool31, true, !dbg !5694
  %lnot34 = xor i1 %lnot32, true, !dbg !5694
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !5694
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !5694
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !5694
  store i64 %expval37, ptr %tmp, align 8, !dbg !5695
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5704
  %14 = load i64, ptr %tmp, align 8, !dbg !5694
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !5705
  %flags38 = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 16, !dbg !5706
  call void @clear_bit(i64 noundef 11, ptr noundef %flags38) #17, !dbg !5707
  %16 = load ptr, ptr %ld.addr, align 8, !dbg !5708
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %16, i32 0, i32 0, !dbg !5710
  %17 = load ptr, ptr %ops, align 8, !dbg !5710
  %close = getelementptr inbounds %struct.tty_ldisc_ops, ptr %17, i32 0, i32 3, !dbg !5711
  %18 = load ptr, ptr %close, align 8, !dbg !5711
  %tobool39 = icmp ne ptr %18, null, !dbg !5708
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !5712

if.then40:                                        ; preds = %if.end
  %19 = load ptr, ptr %ld.addr, align 8, !dbg !5713
  %ops41 = getelementptr inbounds %struct.tty_ldisc, ptr %19, i32 0, i32 0, !dbg !5714
  %20 = load ptr, ptr %ops41, align 8, !dbg !5714
  %close42 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %20, i32 0, i32 3, !dbg !5715
  %21 = load ptr, ptr %close42, align 8, !dbg !5715
  %22 = load ptr, ptr %tty.addr, align 8, !dbg !5716
  call void %21(ptr noundef %22) #17, !dbg !5713
  br label %if.end43, !dbg !5713

if.end43:                                         ; preds = %if.then40, %if.end
  ret void, !dbg !5717
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_set_termios_ldisc(ptr noundef %tty, i32 noundef %disc) #0 align 16 !dbg !5718 {
entry:
  %tty.addr = alloca ptr, align 8
  %disc.addr = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5720, metadata !DIExpression()), !dbg !5722
  store i32 %disc, ptr %disc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %disc.addr, metadata !5721, metadata !DIExpression()), !dbg !5723
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5724
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11, !dbg !5725
  call void @down_write(ptr noundef %termios_rwsem) #17, !dbg !5726
  %1 = load i32, ptr %disc.addr, align 4, !dbg !5727
  %conv = trunc i32 %1 to i8, !dbg !5727
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5728
  %termios = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 13, !dbg !5729
  %c_line = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 4, !dbg !5730
  store i8 %conv, ptr %c_line, align 8, !dbg !5731
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5732
  %termios_rwsem1 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 11, !dbg !5733
  call void @up_write(ptr noundef %termios_rwsem1) #17, !dbg !5734
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5735
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 30, !dbg !5736
  store ptr null, ptr %disc_data, align 8, !dbg !5737
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5738
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 18, !dbg !5739
  store i32 0, ptr %receive_room, align 4, !dbg !5740
  ret void, !dbg !5741
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tty_ldisc_open(ptr noundef %tty, ptr noundef %ld) #0 align 16 !dbg !5742 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %ld.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5746, metadata !DIExpression()), !dbg !5756
  store ptr %ld, ptr %ld.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ld.addr, metadata !5747, metadata !DIExpression()), !dbg !5757
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5758
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5748, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5758
  %flags = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16, !dbg !5758
  %call = call zeroext i1 @test_and_set_bit(i64 noundef 11, ptr noundef %flags) #17, !dbg !5758
  %lnot = xor i1 %call, true, !dbg !5758
  %lnot1 = xor i1 %lnot, true, !dbg !5758
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5758
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5758
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5759
  %tobool = icmp ne i32 %1, 0, !dbg !5759
  %lnot2 = xor i1 %tobool, true, !dbg !5759
  %lnot4 = xor i1 %lnot2, true, !dbg !5759
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5759
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5759
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5759
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5759
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5758

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5759

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5750, metadata !DIExpression()), !dbg !5760
  store i32 2305, ptr %__flags, align 4, !dbg !5760
  br label %do.body7, !dbg !5760

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5761

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5761

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5760

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5763
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 428, i32 %2, i64 12) #16, !dbg !5763, !srcloc !5765
  br label %do.cond9, !dbg !5763

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5763

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5760

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5766

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5766

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5759
  br label %do.cond14, !dbg !5760

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5760

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5760

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5758
  %tobool16 = icmp ne i32 %3, 0, !dbg !5758
  %lnot17 = xor i1 %tobool16, true, !dbg !5758
  %lnot19 = xor i1 %lnot17, true, !dbg !5758
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5758
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5758
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5758
  store i64 %expval22, ptr %tmp, align 8, !dbg !5759
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5768
  %4 = load i64, ptr %tmp, align 8, !dbg !5758
  %5 = load ptr, ptr %ld.addr, align 8, !dbg !5769
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %5, i32 0, i32 0, !dbg !5770
  %6 = load ptr, ptr %ops, align 8, !dbg !5770
  %open = getelementptr inbounds %struct.tty_ldisc_ops, ptr %6, i32 0, i32 2, !dbg !5771
  %7 = load ptr, ptr %open, align 8, !dbg !5771
  %tobool23 = icmp ne ptr %7, null, !dbg !5769
  br i1 %tobool23, label %if.then24, label %if.end32, !dbg !5772

if.then24:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5773
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5753, metadata !DIExpression()), !dbg !5774
  %8 = load ptr, ptr %ld.addr, align 8, !dbg !5775
  %ops25 = getelementptr inbounds %struct.tty_ldisc, ptr %8, i32 0, i32 0, !dbg !5776
  %9 = load ptr, ptr %ops25, align 8, !dbg !5776
  %open26 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %9, i32 0, i32 2, !dbg !5777
  %10 = load ptr, ptr %open26, align 8, !dbg !5777
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5778
  %call27 = call i32 %10(ptr noundef %11) #17, !dbg !5775
  store i32 %call27, ptr %ret, align 4, !dbg !5779
  %12 = load i32, ptr %ret, align 4, !dbg !5780
  %tobool28 = icmp ne i32 %12, 0, !dbg !5780
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !5782

if.then29:                                        ; preds = %if.then24
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !5783
  %flags30 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 16, !dbg !5784
  call void @clear_bit(i64 noundef 11, ptr noundef %flags30) #17, !dbg !5785
  br label %if.end31, !dbg !5785

if.end31:                                         ; preds = %if.then29, %if.then24
  %14 = load i32, ptr %ret, align 4, !dbg !5786
  store i32 %14, ptr %retval, align 4, !dbg !5787
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5788
  br label %return

if.end32:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5789
  br label %return, !dbg !5789

return:                                           ; preds = %if.end32, %if.end31
  %15 = load i32, ptr %retval, align 4, !dbg !5790
  ret i32 %15, !dbg !5790
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_ldisc_put(ptr noundef %ld) #0 align 16 !dbg !5791 {
entry:
  %ld.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ld, ptr %ld.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ld.addr, metadata !5793, metadata !DIExpression()), !dbg !5800
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5801
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5794, metadata !DIExpression()), !dbg !5801
  %0 = load ptr, ptr %ld.addr, align 8, !dbg !5801
  %tobool = icmp ne ptr %0, null, !dbg !5801
  %lnot = xor i1 %tobool, true, !dbg !5801
  %lnot1 = xor i1 %lnot, true, !dbg !5801
  %lnot2 = xor i1 %lnot1, true, !dbg !5801
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5801
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5801
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5802
  %tobool3 = icmp ne i32 %1, 0, !dbg !5802
  %lnot4 = xor i1 %tobool3, true, !dbg !5802
  %lnot6 = xor i1 %lnot4, true, !dbg !5802
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5802
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5802
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5802
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5802
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5801

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5802

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5797, metadata !DIExpression()), !dbg !5803
  store i32 2307, ptr %__flags, align 4, !dbg !5803
  br label %do.body9, !dbg !5803

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5804

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5804

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5803

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5806
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 180, i32 %2, i64 12) #16, !dbg !5806, !srcloc !5808
  br label %do.cond11, !dbg !5806

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5806

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5803

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5809

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5809

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5802
  br label %do.cond16, !dbg !5803

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5803

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5803

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5801
  %tobool18 = icmp ne i32 %3, 0, !dbg !5801
  %lnot19 = xor i1 %tobool18, true, !dbg !5801
  %lnot21 = xor i1 %lnot19, true, !dbg !5801
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5801
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5801
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5801
  store i64 %expval24, ptr %tmp, align 8, !dbg !5802
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5811
  %4 = load i64, ptr %tmp, align 8, !dbg !5801
  %tobool25 = icmp ne i64 %4, 0, !dbg !5811
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5812

if.then26:                                        ; preds = %if.end
  br label %return, !dbg !5813

if.end27:                                         ; preds = %if.end
  %5 = load ptr, ptr %ld.addr, align 8, !dbg !5814
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %5, i32 0, i32 0, !dbg !5815
  %6 = load ptr, ptr %ops, align 8, !dbg !5815
  call void @put_ldops(ptr noundef %6) #17, !dbg !5816
  %7 = load ptr, ptr %ld.addr, align 8, !dbg !5817
  call void @kfree(ptr noundef %7) #17, !dbg !5818
  br label %return, !dbg !5819

return:                                           ; preds = %if.end27, %if.then26
  ret void, !dbg !5819
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_ldisc_restore(ptr noundef %tty, ptr noundef %old) #0 align 16 !dbg !5820 {
entry:
  %tty.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5822, metadata !DIExpression()), !dbg !5827
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5823, metadata !DIExpression()), !dbg !5828
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5829
  %1 = load ptr, ptr %old.addr, align 8, !dbg !5830
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %1, i32 0, i32 0, !dbg !5831
  %2 = load ptr, ptr %ops, align 8, !dbg !5831
  %num = getelementptr inbounds %struct.tty_ldisc_ops, ptr %2, i32 0, i32 1, !dbg !5832
  %3 = load i32, ptr %num, align 8, !dbg !5832
  %call = call i32 @tty_ldisc_failto(ptr noundef %0, i32 noundef %3) #17, !dbg !5833
  %cmp = icmp slt i32 %call, 0, !dbg !5834
  br i1 %cmp, label %if.then, label %if.end8, !dbg !5835

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #16, !dbg !5836
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5824, metadata !DIExpression()), !dbg !5837
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5838
  %call1 = call ptr @tty_name(ptr noundef %4) #17, !dbg !5839
  store ptr %call1, ptr %name, align 8, !dbg !5837
  br label %do.body, !dbg !5840

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5842

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5842

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %name, align 8, !dbg !5840
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %5) #19, !dbg !5840
  store i32 %call2, ptr %tmp, align 4, !dbg !5842
  %6 = load i32, ptr %tmp, align 4, !dbg !5840
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !5844
  %call3 = call i32 @tty_ldisc_failto(ptr noundef %7, i32 noundef 0) #17, !dbg !5846
  %cmp4 = icmp slt i32 %call3, 0, !dbg !5847
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !5848

land.lhs.true:                                    ; preds = %do.end
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5849
  %call5 = call i32 @tty_ldisc_failto(ptr noundef %8, i32 noundef 27) #17, !dbg !5850
  %cmp6 = icmp slt i32 %call5, 0, !dbg !5851
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !5852

if.then7:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %name, align 8, !dbg !5853
  call void (ptr, ...) @panic(ptr noundef @.str.6, ptr noundef %9) #20, !dbg !5854
  unreachable, !dbg !5854

if.end:                                           ; preds = %land.lhs.true, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #16, !dbg !5855
  br label %if.end8, !dbg !5856

if.end8:                                          ; preds = %if.end, %entry
  ret void, !dbg !5857
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5858 dso_local void @down_read(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5862 dso_local void @up_read(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5863 dso_local zeroext i1 @tty_buffer_restart_work(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5864 dso_local void @tty_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_ldisc_reinit(ptr noundef %tty, i32 noundef %disc) #0 align 16 !dbg !5865 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %disc.addr = alloca i32, align 4
  %ld = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5867, metadata !DIExpression()), !dbg !5871
  store i32 %disc, ptr %disc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %disc.addr, metadata !5868, metadata !DIExpression()), !dbg !5872
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !5873
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !5869, metadata !DIExpression()), !dbg !5874
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !5875
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5870, metadata !DIExpression()), !dbg !5876
  br label %do.body, !dbg !5877

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5878
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7, !dbg !5878
  br label %do.cond, !dbg !5878

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5878

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5880
  %2 = load i32, ptr %disc.addr, align 4, !dbg !5881
  %call = call ptr @tty_ldisc_get(ptr noundef %1, i32 noundef %2) #17, !dbg !5882
  store ptr %call, ptr %ld, align 8, !dbg !5883
  %3 = load ptr, ptr %ld, align 8, !dbg !5884
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %3) #17, !dbg !5886
  br i1 %call2, label %if.then, label %if.end19, !dbg !5887

if.then:                                          ; preds = %do.end
  br label %do.body3, !dbg !5888

do.body3:                                         ; preds = %if.then
  %4 = load i32, ptr %disc.addr, align 4, !dbg !5890
  %cmp = icmp eq i32 %4, 0, !dbg !5890
  %lnot = xor i1 %cmp, true, !dbg !5890
  %lnot4 = xor i1 %lnot, true, !dbg !5890
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5890
  %conv = sext i32 %lnot.ext to i64, !dbg !5890
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5890
  %tobool = icmp ne i64 %expval, 0, !dbg !5890
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5893

if.then5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !5890

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !5894

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !5896

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5896

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !5894

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 655, i32 0, i64 12) #16, !dbg !5898, !srcloc !5900
  br label %do.cond11, !dbg !5898

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5898

do.end12:                                         ; preds = %do.cond11
  unreachable, !dbg !5894

do.cond13:                                        ; No predecessors!
  br label %do.end14, !dbg !5894

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !5894

if.end:                                           ; preds = %do.end14, %do.body3
  br label %do.cond15, !dbg !5893

do.cond15:                                        ; preds = %if.end
  br label %do.end16, !dbg !5893

do.end16:                                         ; preds = %do.cond15
  %5 = load ptr, ptr %ld, align 8, !dbg !5901
  %call17 = call i64 @PTR_ERR(ptr noundef %5) #17, !dbg !5902
  %conv18 = trunc i64 %call17 to i32, !dbg !5902
  store i32 %conv18, ptr %retval, align 4, !dbg !5903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5903

if.end19:                                         ; preds = %do.end
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5904
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 6, !dbg !5906
  %7 = load ptr, ptr %ldisc, align 8, !dbg !5906
  %tobool20 = icmp ne ptr %7, null, !dbg !5904
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !5907

if.then21:                                        ; preds = %if.end19
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5908
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5910
  %ldisc22 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 6, !dbg !5911
  %10 = load ptr, ptr %ldisc22, align 8, !dbg !5911
  call void @tty_ldisc_close(ptr noundef %8, ptr noundef %10) #17, !dbg !5912
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5913
  %ldisc23 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 6, !dbg !5914
  %12 = load ptr, ptr %ldisc23, align 8, !dbg !5914
  call void @tty_ldisc_put(ptr noundef %12) #17, !dbg !5915
  br label %if.end24, !dbg !5916

if.end24:                                         ; preds = %if.then21, %if.end19
  %13 = load ptr, ptr %ld, align 8, !dbg !5917
  %14 = load ptr, ptr %tty.addr, align 8, !dbg !5918
  %ldisc25 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 6, !dbg !5919
  store ptr %13, ptr %ldisc25, align 8, !dbg !5920
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !5921
  %16 = load i32, ptr %disc.addr, align 4, !dbg !5922
  call void @tty_set_termios_ldisc(ptr noundef %15, i32 noundef %16) #17, !dbg !5923
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !5924
  %18 = load ptr, ptr %tty.addr, align 8, !dbg !5925
  %ldisc26 = getelementptr inbounds %struct.tty_struct, ptr %18, i32 0, i32 6, !dbg !5926
  %19 = load ptr, ptr %ldisc26, align 8, !dbg !5926
  %call27 = call i32 @tty_ldisc_open(ptr noundef %17, ptr noundef %19) #17, !dbg !5927
  store i32 %call27, ptr %retval1, align 4, !dbg !5928
  %20 = load i32, ptr %retval1, align 4, !dbg !5929
  %tobool28 = icmp ne i32 %20, 0, !dbg !5929
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !5931

if.then29:                                        ; preds = %if.end24
  %21 = load ptr, ptr %tty.addr, align 8, !dbg !5932
  %ldisc30 = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 6, !dbg !5934
  %22 = load ptr, ptr %ldisc30, align 8, !dbg !5934
  call void @tty_ldisc_put(ptr noundef %22) #17, !dbg !5935
  %23 = load ptr, ptr %tty.addr, align 8, !dbg !5936
  %ldisc31 = getelementptr inbounds %struct.tty_struct, ptr %23, i32 0, i32 6, !dbg !5937
  store ptr null, ptr %ldisc31, align 8, !dbg !5938
  br label %if.end32, !dbg !5939

if.end32:                                         ; preds = %if.then29, %if.end24
  %24 = load i32, ptr %retval1, align 4, !dbg !5940
  store i32 %24, ptr %retval, align 4, !dbg !5941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5941

cleanup:                                          ; preds = %if.end32, %do.end16
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !5942
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !5942
  %25 = load i32, ptr %retval, align 4, !dbg !5942
  ret i32 %25, !dbg !5942
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_ldisc_hangup(ptr noundef %tty, i1 noundef zeroext %reinit) #0 align 16 !dbg !5943 {
entry:
  %tty.addr = alloca ptr, align 8
  %reinit.addr = alloca i8, align 1
  %ld = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5945, metadata !DIExpression()), !dbg !5958
  %frombool = zext i1 %reinit to i8
  store i8 %frombool, ptr %reinit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %reinit.addr, metadata !5946, metadata !DIExpression()), !dbg !5959
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !5960
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !5947, metadata !DIExpression()), !dbg !5961
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5962
  %call = call ptr @tty_ldisc_ref(ptr noundef %0) #17, !dbg !5963
  store ptr %call, ptr %ld, align 8, !dbg !5964
  %1 = load ptr, ptr %ld, align 8, !dbg !5965
  %cmp = icmp ne ptr %1, null, !dbg !5967
  br i1 %cmp, label %if.then, label %if.end29, !dbg !5968

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ld, align 8, !dbg !5969
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %2, i32 0, i32 0, !dbg !5972
  %3 = load ptr, ptr %ops, align 8, !dbg !5972
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, ptr %3, i32 0, i32 4, !dbg !5973
  %4 = load ptr, ptr %flush_buffer, align 8, !dbg !5973
  %tobool = icmp ne ptr %4, null, !dbg !5969
  br i1 %tobool, label %if.then1, label %if.end, !dbg !5974

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %ld, align 8, !dbg !5975
  %ops2 = getelementptr inbounds %struct.tty_ldisc, ptr %5, i32 0, i32 0, !dbg !5976
  %6 = load ptr, ptr %ops2, align 8, !dbg !5976
  %flush_buffer3 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %6, i32 0, i32 4, !dbg !5977
  %7 = load ptr, ptr %flush_buffer3, align 8, !dbg !5977
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5978
  call void %7(ptr noundef %8) #17, !dbg !5975
  br label %if.end, !dbg !5975

if.end:                                           ; preds = %if.then1, %if.then
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5979
  call void @tty_driver_flush_buffer(ptr noundef %9) #17, !dbg !5980
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5981
  %flags = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 16, !dbg !5981
  %11 = ptrtoint ptr %flags to i64, !dbg !5981
  %cmp4 = icmp ne i64 %11, 0, !dbg !5981
  %conv = zext i1 %cmp4 to i32, !dbg !5981
  %12 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5981
  br i1 %12, label %land.lhs.true, label %cond.false, !dbg !5981

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %tty.addr, align 8, !dbg !5981
  %flags5 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 16, !dbg !5981
  %14 = ptrtoint ptr %flags5 to i64, !dbg !5981
  %cmp6 = icmp ne i64 %14, 0, !dbg !5981
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !5981

land.lhs.true8:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !5981
  %flags9 = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 16, !dbg !5981
  %16 = load i64, ptr %flags9, align 8, !dbg !5981
  %17 = call i1 @llvm.is.constant.i64(i64 %16), !dbg !5981
  br i1 %17, label %cond.true, label %cond.false, !dbg !5983

cond.true:                                        ; preds = %land.lhs.true8
  %18 = load ptr, ptr %tty.addr, align 8, !dbg !5981
  %flags10 = getelementptr inbounds %struct.tty_struct, ptr %18, i32 0, i32 16, !dbg !5981
  %call11 = call zeroext i1 @const_test_bit(i64 noundef 5, ptr noundef %flags10) #17, !dbg !5981
  br i1 %call11, label %land.lhs.true16, label %if.end22, !dbg !5981

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true, %if.end
  %19 = load ptr, ptr %tty.addr, align 8, !dbg !5981
  %flags13 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 16, !dbg !5981
  %call14 = call zeroext i1 @_test_bit(i64 noundef 5, ptr noundef %flags13) #17, !dbg !5981
  br i1 %call14, label %land.lhs.true16, label %if.end22, !dbg !5983

land.lhs.true16:                                  ; preds = %cond.false, %cond.true
  %20 = load ptr, ptr %ld, align 8, !dbg !5984
  %ops17 = getelementptr inbounds %struct.tty_ldisc, ptr %20, i32 0, i32 0, !dbg !5985
  %21 = load ptr, ptr %ops17, align 8, !dbg !5985
  %write_wakeup = getelementptr inbounds %struct.tty_ldisc_ops, ptr %21, i32 0, i32 13, !dbg !5986
  %22 = load ptr, ptr %write_wakeup, align 8, !dbg !5986
  %tobool18 = icmp ne ptr %22, null, !dbg !5984
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !5987

if.then19:                                        ; preds = %land.lhs.true16
  %23 = load ptr, ptr %ld, align 8, !dbg !5988
  %ops20 = getelementptr inbounds %struct.tty_ldisc, ptr %23, i32 0, i32 0, !dbg !5989
  %24 = load ptr, ptr %ops20, align 8, !dbg !5989
  %write_wakeup21 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %24, i32 0, i32 13, !dbg !5990
  %25 = load ptr, ptr %write_wakeup21, align 8, !dbg !5990
  %26 = load ptr, ptr %tty.addr, align 8, !dbg !5991
  call void %25(ptr noundef %26) #17, !dbg !5988
  br label %if.end22, !dbg !5988

if.end22:                                         ; preds = %if.then19, %land.lhs.true16, %cond.false, %cond.true
  %27 = load ptr, ptr %ld, align 8, !dbg !5992
  %ops23 = getelementptr inbounds %struct.tty_ldisc, ptr %27, i32 0, i32 0, !dbg !5994
  %28 = load ptr, ptr %ops23, align 8, !dbg !5994
  %hangup = getelementptr inbounds %struct.tty_ldisc_ops, ptr %28, i32 0, i32 11, !dbg !5995
  %29 = load ptr, ptr %hangup, align 8, !dbg !5995
  %tobool24 = icmp ne ptr %29, null, !dbg !5992
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !5996

if.then25:                                        ; preds = %if.end22
  %30 = load ptr, ptr %ld, align 8, !dbg !5997
  %ops26 = getelementptr inbounds %struct.tty_ldisc, ptr %30, i32 0, i32 0, !dbg !5998
  %31 = load ptr, ptr %ops26, align 8, !dbg !5998
  %hangup27 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %31, i32 0, i32 11, !dbg !5999
  %32 = load ptr, ptr %hangup27, align 8, !dbg !5999
  %33 = load ptr, ptr %tty.addr, align 8, !dbg !6000
  call void %32(ptr noundef %33) #17, !dbg !5997
  br label %if.end28, !dbg !5997

if.end28:                                         ; preds = %if.then25, %if.end22
  %34 = load ptr, ptr %ld, align 8, !dbg !6001
  call void @tty_ldisc_deref(ptr noundef %34) #17, !dbg !6002
  br label %if.end29, !dbg !6003

if.end29:                                         ; preds = %if.end28, %entry
  %35 = load ptr, ptr %tty.addr, align 8, !dbg !6004
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 27, !dbg !6004
  %call30 = call i32 @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef inttoptr (i64 4 to ptr)) #17, !dbg !6004
  %36 = load ptr, ptr %tty.addr, align 8, !dbg !6005
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %36, i32 0, i32 28, !dbg !6005
  %call31 = call i32 @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef inttoptr (i64 1 to ptr)) #17, !dbg !6005
  %37 = load ptr, ptr %tty.addr, align 8, !dbg !6006
  %call32 = call i32 @tty_ldisc_lock(ptr noundef %37, i64 noundef 9223372036854775807) #17, !dbg !6007
  %38 = load ptr, ptr %tty.addr, align 8, !dbg !6008
  %driver = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 3, !dbg !6010
  %39 = load ptr, ptr %driver, align 8, !dbg !6010
  %flags33 = getelementptr inbounds %struct.tty_driver, ptr %39, i32 0, i32 12, !dbg !6011
  %40 = load i64, ptr %flags33, align 8, !dbg !6011
  %and = and i64 %40, 2, !dbg !6012
  %tobool34 = icmp ne i64 %and, 0, !dbg !6012
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !6013

if.then35:                                        ; preds = %if.end29
  %41 = load ptr, ptr %tty.addr, align 8, !dbg !6014
  call void @tty_reset_termios(ptr noundef %41) #17, !dbg !6015
  br label %if.end36, !dbg !6015

if.end36:                                         ; preds = %if.then35, %if.end29
  %42 = load ptr, ptr %tty.addr, align 8, !dbg !6016
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %42, i32 0, i32 6, !dbg !6017
  %43 = load ptr, ptr %ldisc, align 8, !dbg !6017
  %tobool37 = icmp ne ptr %43, null, !dbg !6016
  br i1 %tobool37, label %if.then38, label %if.end81, !dbg !6018

if.then38:                                        ; preds = %if.end36
  %44 = load i8, ptr %reinit.addr, align 1, !dbg !6019, !range !6020, !noundef !1215
  %tobool39 = trunc i8 %44 to i1, !dbg !6019
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !6021

if.then40:                                        ; preds = %if.then38
  %45 = load ptr, ptr %tty.addr, align 8, !dbg !6022
  %46 = load ptr, ptr %tty.addr, align 8, !dbg !6023
  %termios = getelementptr inbounds %struct.tty_struct, ptr %46, i32 0, i32 13, !dbg !6024
  %c_line = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 4, !dbg !6025
  %47 = load i8, ptr %c_line, align 8, !dbg !6025
  %conv41 = zext i8 %47 to i32, !dbg !6023
  %call42 = call i32 @tty_ldisc_reinit(ptr noundef %45, i32 noundef %conv41) #17, !dbg !6026
  %cmp43 = icmp slt i32 %call42, 0, !dbg !6027
  br i1 %cmp43, label %land.lhs.true45, label %if.end79, !dbg !6028

land.lhs.true45:                                  ; preds = %if.then40
  %48 = load ptr, ptr %tty.addr, align 8, !dbg !6029
  %call46 = call i32 @tty_ldisc_reinit(ptr noundef %48, i32 noundef 0) #17, !dbg !6030
  %cmp47 = icmp slt i32 %call46, 0, !dbg !6031
  br i1 %cmp47, label %if.then49, label %if.end79, !dbg !6032

if.then49:                                        ; preds = %land.lhs.true45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5948, metadata !DIExpression()), !dbg !6033
  %49 = load ptr, ptr %tty.addr, align 8, !dbg !6033
  %call50 = call i32 @tty_ldisc_reinit(ptr noundef %49, i32 noundef 27) #17, !dbg !6033
  %cmp51 = icmp slt i32 %call50, 0, !dbg !6033
  %lnot = xor i1 %cmp51, true, !dbg !6033
  %lnot53 = xor i1 %lnot, true, !dbg !6033
  %lnot.ext = zext i1 %lnot53 to i32, !dbg !6033
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6033
  %50 = load i32, ptr %__ret_warn_on, align 4, !dbg !6034
  %tobool54 = icmp ne i32 %50, 0, !dbg !6034
  %lnot55 = xor i1 %tobool54, true, !dbg !6034
  %lnot57 = xor i1 %lnot55, true, !dbg !6034
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !6034
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !6034
  %expval = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !6034
  %tobool60 = icmp ne i64 %expval, 0, !dbg !6034
  br i1 %tobool60, label %if.then61, label %if.end71, !dbg !6033

if.then61:                                        ; preds = %if.then49
  br label %do.body, !dbg !6034

do.body:                                          ; preds = %if.then61
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6035
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5955, metadata !DIExpression()), !dbg !6035
  store i32 2305, ptr %__flags, align 4, !dbg !6035
  br label %do.body62, !dbg !6035

do.body62:                                        ; preds = %do.body
  br label %do.cond, !dbg !6036

do.cond:                                          ; preds = %do.body62
  br label %do.end, !dbg !6036

do.end:                                           ; preds = %do.cond
  br label %do.body63, !dbg !6035

do.body63:                                        ; preds = %do.end
  %51 = load i32, ptr %__flags, align 4, !dbg !6038
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 727, i32 %51, i64 12) #16, !dbg !6038, !srcloc !6040
  br label %do.cond64, !dbg !6038

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !6038

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !6035

do.body66:                                        ; preds = %do.end65
  br label %do.cond67, !dbg !6041

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !6041

do.end68:                                         ; preds = %do.cond67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6034
  br label %do.cond69, !dbg !6035

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !6035

do.end70:                                         ; preds = %do.cond69
  br label %if.end71, !dbg !6035

if.end71:                                         ; preds = %do.end70, %if.then49
  %52 = load i32, ptr %__ret_warn_on, align 4, !dbg !6033
  %tobool72 = icmp ne i32 %52, 0, !dbg !6033
  %lnot73 = xor i1 %tobool72, true, !dbg !6033
  %lnot75 = xor i1 %lnot73, true, !dbg !6033
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !6033
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !6033
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 0), !dbg !6033
  store i64 %expval78, ptr %tmp, align 8, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6043
  %53 = load i64, ptr %tmp, align 8, !dbg !6033
  br label %if.end79, !dbg !6043

if.end79:                                         ; preds = %if.end71, %land.lhs.true45, %if.then40
  br label %if.end80, !dbg !6044

if.else:                                          ; preds = %if.then38
  %54 = load ptr, ptr %tty.addr, align 8, !dbg !6045
  call void @tty_ldisc_kill(ptr noundef %54) #17, !dbg !6046
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.end79
  br label %if.end81, !dbg !6047

if.end81:                                         ; preds = %if.end80, %if.end36
  %55 = load ptr, ptr %tty.addr, align 8, !dbg !6048
  call void @tty_ldisc_unlock(ptr noundef %55) #17, !dbg !6049
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !6050
  ret void, !dbg !6050
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6051 dso_local void @tty_driver_flush_buffer(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_reset_termios(ptr noundef %tty) #0 align 16 !dbg !6052 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6056
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11, !dbg !6057
  call void @down_write(ptr noundef %termios_rwsem) #17, !dbg !6058
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !6059
  %termios = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, !dbg !6060
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !6061
  %driver = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 3, !dbg !6062
  %3 = load ptr, ptr %driver, align 8, !dbg !6062
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 11, !dbg !6063
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %termios, ptr align 4 %init_termios, i64 44, i1 false), !dbg !6063
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !6064
  %termios1 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 13, !dbg !6065
  %call = call i32 @tty_termios_input_baud_rate(ptr noundef %termios1) #17, !dbg !6066
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !6067
  %termios2 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 13, !dbg !6068
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %termios2, i32 0, i32 6, !dbg !6069
  store i32 %call, ptr %c_ispeed, align 4, !dbg !6070
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !6071
  %termios3 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 13, !dbg !6072
  %call4 = call i32 @tty_termios_baud_rate(ptr noundef %termios3) #17, !dbg !6073
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !6074
  %termios5 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 13, !dbg !6075
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %termios5, i32 0, i32 7, !dbg !6076
  store i32 %call4, ptr %c_ospeed, align 8, !dbg !6077
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !6078
  %termios_rwsem6 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 11, !dbg !6079
  call void @up_write(ptr noundef %termios_rwsem6) #17, !dbg !6080
  ret void, !dbg !6081
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_ldisc_kill(ptr noundef %tty) #0 align 16 !dbg !6082 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  br label %do.body, !dbg !6086

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6087
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7, !dbg !6087
  br label %do.end, !dbg !6087

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !6089
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 6, !dbg !6091
  %2 = load ptr, ptr %ldisc, align 8, !dbg !6091
  %tobool = icmp ne ptr %2, null, !dbg !6089
  br i1 %tobool, label %if.end, label %if.then, !dbg !6092

if.then:                                          ; preds = %do.end
  br label %return, !dbg !6093

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !6094
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !6095
  %ldisc1 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 6, !dbg !6096
  %5 = load ptr, ptr %ldisc1, align 8, !dbg !6096
  call void @tty_ldisc_close(ptr noundef %3, ptr noundef %5) #17, !dbg !6097
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !6098
  %ldisc2 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 6, !dbg !6099
  %7 = load ptr, ptr %ldisc2, align 8, !dbg !6099
  call void @tty_ldisc_put(ptr noundef %7) #17, !dbg !6100
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !6101
  %ldisc3 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 6, !dbg !6102
  store ptr null, ptr %ldisc3, align 8, !dbg !6103
  br label %return, !dbg !6104

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_ldisc_setup(ptr noundef %tty, ptr noundef %o_tty) #0 align 16 !dbg !6105 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %o_tty.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6109, metadata !DIExpression()), !dbg !6112
  store ptr %o_tty, ptr %o_tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %o_tty.addr, metadata !6110, metadata !DIExpression()), !dbg !6113
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !6114
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6111, metadata !DIExpression()), !dbg !6115
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6116
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !6117
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 6, !dbg !6118
  %2 = load ptr, ptr %ldisc, align 8, !dbg !6118
  %call = call i32 @tty_ldisc_open(ptr noundef %0, ptr noundef %2) #17, !dbg !6119
  store i32 %call, ptr %retval1, align 4, !dbg !6115
  %3 = load i32, ptr %retval1, align 4, !dbg !6120
  %tobool = icmp ne i32 %3, 0, !dbg !6120
  br i1 %tobool, label %if.then, label %if.end, !dbg !6122

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %retval1, align 4, !dbg !6123
  store i32 %4, ptr %retval, align 4, !dbg !6124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6124

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %o_tty.addr, align 8, !dbg !6125
  %tobool2 = icmp ne ptr %5, null, !dbg !6125
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !6127

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %o_tty.addr, align 8, !dbg !6128
  %7 = load ptr, ptr %o_tty.addr, align 8, !dbg !6130
  %ldisc4 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 6, !dbg !6131
  %8 = load ptr, ptr %ldisc4, align 8, !dbg !6131
  %call5 = call i32 @tty_ldisc_open(ptr noundef %6, ptr noundef %8) #17, !dbg !6132
  store i32 %call5, ptr %retval1, align 4, !dbg !6133
  %9 = load i32, ptr %retval1, align 4, !dbg !6134
  %tobool6 = icmp ne i32 %9, 0, !dbg !6134
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !6136

if.then7:                                         ; preds = %if.then3
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !6137
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !6139
  %ldisc8 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 6, !dbg !6140
  %12 = load ptr, ptr %ldisc8, align 8, !dbg !6140
  call void @tty_ldisc_close(ptr noundef %10, ptr noundef %12) #17, !dbg !6141
  %13 = load i32, ptr %retval1, align 4, !dbg !6142
  store i32 %13, ptr %retval, align 4, !dbg !6143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6143

if.end9:                                          ; preds = %if.then3
  br label %if.end10, !dbg !6144

if.end10:                                         ; preds = %if.end9, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6145

cleanup:                                          ; preds = %if.end10, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !6146
  %14 = load i32, ptr %retval, align 4, !dbg !6146
  ret i32 %14, !dbg !6146
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_ldisc_release(ptr noundef %tty) #0 align 16 !dbg !6147 {
entry:
  %tty.addr = alloca ptr, align 8
  %o_tty = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6149, metadata !DIExpression()), !dbg !6151
  call void @llvm.lifetime.start.p0(i64 8, ptr %o_tty) #16, !dbg !6152
  call void @llvm.dbg.declare(metadata ptr %o_tty, metadata !6150, metadata !DIExpression()), !dbg !6153
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6154
  %link = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25, !dbg !6155
  %1 = load ptr, ptr %link, align 8, !dbg !6155
  store ptr %1, ptr %o_tty, align 8, !dbg !6153
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !6156
  %3 = load ptr, ptr %o_tty, align 8, !dbg !6157
  call void @tty_ldisc_lock_pair(ptr noundef %2, ptr noundef %3) #17, !dbg !6158
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !6159
  call void @tty_ldisc_kill(ptr noundef %4) #17, !dbg !6160
  %5 = load ptr, ptr %o_tty, align 8, !dbg !6161
  %tobool = icmp ne ptr %5, null, !dbg !6161
  br i1 %tobool, label %if.then, label %if.end, !dbg !6163

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %o_tty, align 8, !dbg !6164
  call void @tty_ldisc_kill(ptr noundef %6) #17, !dbg !6165
  br label %if.end, !dbg !6165

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !6166
  %8 = load ptr, ptr %o_tty, align 8, !dbg !6167
  call void @tty_ldisc_unlock_pair(ptr noundef %7, ptr noundef %8) #17, !dbg !6168
  call void @llvm.lifetime.end.p0(i64 8, ptr %o_tty) #16, !dbg !6169
  ret void, !dbg !6169
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_ldisc_lock_pair(ptr noundef %tty, ptr noundef %tty2) #0 align 16 !dbg !6170 {
entry:
  %tty.addr = alloca ptr, align 8
  %tty2.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6174, metadata !DIExpression()), !dbg !6176
  store ptr %tty2, ptr %tty2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty2.addr, metadata !6175, metadata !DIExpression()), !dbg !6177
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6178
  %1 = load ptr, ptr %tty2.addr, align 8, !dbg !6179
  %call = call i32 @tty_ldisc_lock_pair_timeout(ptr noundef %0, ptr noundef %1, i64 noundef 9223372036854775807) #17, !dbg !6180
  ret void, !dbg !6181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_ldisc_unlock_pair(ptr noundef %tty, ptr noundef %tty2) #0 align 16 !dbg !6182 {
entry:
  %tty.addr = alloca ptr, align 8
  %tty2.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6184, metadata !DIExpression()), !dbg !6186
  store ptr %tty2, ptr %tty2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty2.addr, metadata !6185, metadata !DIExpression()), !dbg !6187
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6188
  call void @__tty_ldisc_unlock(ptr noundef %0) #17, !dbg !6189
  %1 = load ptr, ptr %tty2.addr, align 8, !dbg !6190
  %tobool = icmp ne ptr %1, null, !dbg !6190
  br i1 %tobool, label %if.then, label %if.end, !dbg !6192

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tty2.addr, align 8, !dbg !6193
  call void @__tty_ldisc_unlock(ptr noundef %2) #17, !dbg !6194
  br label %if.end, !dbg !6194

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_ldisc_init(ptr noundef %tty) #0 align 16 !dbg !6196 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %ld = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6198, metadata !DIExpression()), !dbg !6200
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #16, !dbg !6201
  call void @llvm.dbg.declare(metadata ptr %ld, metadata !6199, metadata !DIExpression()), !dbg !6202
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6203
  %call = call ptr @tty_ldisc_get(ptr noundef %0, i32 noundef 0) #17, !dbg !6204
  store ptr %call, ptr %ld, align 8, !dbg !6202
  %1 = load ptr, ptr %ld, align 8, !dbg !6205
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #17, !dbg !6207
  br i1 %call1, label %if.then, label %if.end, !dbg !6208

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ld, align 8, !dbg !6209
  %call2 = call i64 @PTR_ERR(ptr noundef %2) #17, !dbg !6210
  %conv = trunc i64 %call2 to i32, !dbg !6210
  store i32 %conv, ptr %retval, align 4, !dbg !6211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6211

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ld, align 8, !dbg !6212
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !6213
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 6, !dbg !6214
  store ptr %3, ptr %ldisc, align 8, !dbg !6215
  store i32 0, ptr %retval, align 4, !dbg !6216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6216

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #16, !dbg !6217
  %5 = load i32, ptr %retval, align 4, !dbg !6217
  ret i32 %5, !dbg !6217
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_ldisc_deinit(ptr noundef %tty) #0 align 16 !dbg !6218 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6220, metadata !DIExpression()), !dbg !6221
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6222
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6, !dbg !6224
  %1 = load ptr, ptr %ldisc, align 8, !dbg !6224
  %tobool = icmp ne ptr %1, null, !dbg !6222
  br i1 %tobool, label %if.then, label %if.end, !dbg !6225

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !6226
  %ldisc1 = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 6, !dbg !6227
  %3 = load ptr, ptr %ldisc1, align 8, !dbg !6227
  call void @tty_ldisc_put(ptr noundef %3) #17, !dbg !6228
  br label %if.end, !dbg !6228

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !6229
  %ldisc2 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 6, !dbg !6230
  store ptr null, ptr %ldisc2, align 8, !dbg !6231
  ret void, !dbg !6232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_ldops(i32 noundef %disc) #0 align 16 !dbg !6233 {
entry:
  %disc.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ldops = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store i32 %disc, ptr %disc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %disc.addr, metadata !6237, metadata !DIExpression()), !dbg !6249
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6250
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6238, metadata !DIExpression()), !dbg !6251
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldops) #16, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %ldops, metadata !6239, metadata !DIExpression()), !dbg !6253
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6240, metadata !DIExpression()), !dbg !6254
  br label %do.body, !dbg !6255

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6241, metadata !DIExpression()), !dbg !6256
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6244, metadata !DIExpression()), !dbg !6256
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6256
  %conv = zext i1 %cmp to i32, !dbg !6256
  store i32 1, ptr %tmp, align 4, !dbg !6256
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6257
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6257
  %0 = load i32, ptr %tmp, align 4, !dbg !6256
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tty_ldiscs_lock) #17, !dbg !6257
  store i64 %call, ptr %flags, align 8, !dbg !6257
  br label %do.cond, !dbg !6257

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6257

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @ERR_PTR(i64 noundef -22) #17, !dbg !6258
  store ptr %call1, ptr %ret, align 8, !dbg !6259
  %1 = load i32, ptr %disc.addr, align 4, !dbg !6260
  %idxprom = sext i32 %1 to i64, !dbg !6261
  %arrayidx = getelementptr [31 x ptr], ptr @tty_ldiscs, i64 0, i64 %idxprom, !dbg !6261
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !6261
  store ptr %2, ptr %ldops, align 8, !dbg !6262
  %3 = load ptr, ptr %ldops, align 8, !dbg !6263
  %tobool = icmp ne ptr %3, null, !dbg !6263
  br i1 %tobool, label %if.then, label %if.end5, !dbg !6265

if.then:                                          ; preds = %do.end
  %call2 = call ptr @ERR_PTR(i64 noundef -11) #17, !dbg !6266
  store ptr %call2, ptr %ret, align 8, !dbg !6268
  %4 = load ptr, ptr %ldops, align 8, !dbg !6269
  %owner = getelementptr inbounds %struct.tty_ldisc_ops, ptr %4, i32 0, i32 17, !dbg !6271
  %5 = load ptr, ptr %owner, align 8, !dbg !6271
  %call3 = call zeroext i1 @try_module_get(ptr noundef %5) #17, !dbg !6272
  br i1 %call3, label %if.then4, label %if.end, !dbg !6273

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %ldops, align 8, !dbg !6274
  store ptr %6, ptr %ret, align 8, !dbg !6275
  br label %if.end, !dbg !6276

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5, !dbg !6277

if.end5:                                          ; preds = %if.end, %do.end
  br label %do.body6, !dbg !6278

do.body6:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy7) #16, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %__dummy7, metadata !6245, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy28) #16, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %__dummy28, metadata !6248, metadata !DIExpression()), !dbg !6279
  %cmp9 = icmp eq ptr %__dummy7, %__dummy28, !dbg !6279
  %conv10 = zext i1 %cmp9 to i32, !dbg !6279
  store i32 1, ptr %tmp11, align 4, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy28) #16, !dbg !6280
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy7) #16, !dbg !6280
  %7 = load i32, ptr %tmp11, align 4, !dbg !6279
  %8 = load i64, ptr %flags, align 8, !dbg !6280
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tty_ldiscs_lock, i64 noundef %8) #17, !dbg !6280
  br label %do.cond12, !dbg !6280

do.cond12:                                        ; preds = %do.body6
  br label %do.end13, !dbg !6280

do.end13:                                         ; preds = %do.cond12
  %9 = load ptr, ptr %ret, align 8, !dbg !6281
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !6282
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldops) #16, !dbg !6282
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6282
  ret ptr %9, !dbg !6283
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6284 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_ldops(ptr noundef %ldops) #0 align 16 !dbg !6287 {
entry:
  %ldops.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  store ptr %ldops, ptr %ldops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ldops.addr, metadata !6289, metadata !DIExpression()), !dbg !6299
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6290, metadata !DIExpression()), !dbg !6301
  br label %do.body, !dbg !6302

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6291, metadata !DIExpression()), !dbg !6303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6294, metadata !DIExpression()), !dbg !6303
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6303
  %conv = zext i1 %cmp to i32, !dbg !6303
  store i32 1, ptr %tmp, align 4, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6304
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6304
  %0 = load i32, ptr %tmp, align 4, !dbg !6303
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @tty_ldiscs_lock) #17, !dbg !6304
  store i64 %call, ptr %flags, align 8, !dbg !6304
  br label %do.cond, !dbg !6304

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6304

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %ldops.addr, align 8, !dbg !6305
  %owner = getelementptr inbounds %struct.tty_ldisc_ops, ptr %1, i32 0, i32 17, !dbg !6306
  %2 = load ptr, ptr %owner, align 8, !dbg !6306
  call void @module_put(ptr noundef %2) #17, !dbg !6307
  br label %do.body1, !dbg !6308

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #16, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !6295, metadata !DIExpression()), !dbg !6309
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #16, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !6298, metadata !DIExpression()), !dbg !6309
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !6309
  %conv6 = zext i1 %cmp5 to i32, !dbg !6309
  store i32 1, ptr %tmp7, align 4, !dbg !6309
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #16, !dbg !6310
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #16, !dbg !6310
  %3 = load i32, ptr %tmp7, align 4, !dbg !6309
  %4 = load i64, ptr %flags, align 8, !dbg !6310
  call void @_raw_spin_unlock_irqrestore(ptr noundef @tty_ldiscs_lock, i64 noundef %4) #17, !dbg !6310
  br label %do.cond8, !dbg !6310

do.cond8:                                         ; preds = %do.body1
  br label %do.end9, !dbg !6310

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6311
  ret void, !dbg !6311
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !6312 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  %0 = load i64, ptr %error.addr, align 8, !dbg !6318
  %1 = inttoptr i64 %0 to ptr, !dbg !6319
  ret ptr %1, !dbg !6320
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6321 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6324 dso_local void @module_put(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6325 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6333, metadata !DIExpression()), !dbg !6335
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6334, metadata !DIExpression()), !dbg !6336
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6337
  %1 = load i64, ptr %size.addr, align 8, !dbg !6338
  %conv = trunc i64 %1 to i32, !dbg !6338
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6339
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6340
  %3 = load i64, ptr %size.addr, align 8, !dbg !6340
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6340
  ret void, !dbg !6341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6342 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6345, metadata !DIExpression()), !dbg !6347
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6346, metadata !DIExpression()), !dbg !6348
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6349
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6351
  br i1 %1, label %if.then, label %if.else, !dbg !6352

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6353
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6353
  %shr = ashr i64 %3, 3, !dbg !6353
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6353
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6355
  %and = and i64 %4, 7, !dbg !6355
  %sh_prom = trunc i64 %and to i32, !dbg !6355
  %shl = shl i32 1, %sh_prom, !dbg !6355
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !6356, !srcloc !6357
  br label %if.end, !dbg !6358

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6359
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6361
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !6362, !srcloc !6363
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6364
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6365 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6370, metadata !DIExpression()), !dbg !6372
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6371, metadata !DIExpression()), !dbg !6373
  ret i1 true, !dbg !6374
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6375 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6380, metadata !DIExpression()), !dbg !6383
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6381, metadata !DIExpression()), !dbg !6384
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6382, metadata !DIExpression()), !dbg !6385
  ret void, !dbg !6386
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6387 dso_local i32 @ldsem_down_write(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6388 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6390, metadata !DIExpression()), !dbg !6392
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6391, metadata !DIExpression()), !dbg !6393
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6394
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6396
  br i1 %1, label %if.then, label %if.else, !dbg !6397

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6398
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6398
  %shr = ashr i64 %3, 3, !dbg !6398
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6398
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6400
  %and = and i64 %4, 7, !dbg !6400
  %sh_prom = trunc i64 %and to i32, !dbg !6400
  %shl = shl i32 1, %sh_prom, !dbg !6400
  %not = xor i32 %shl, -1, !dbg !6401
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #16, !dbg !6402, !srcloc !6403
  br label %if.end, !dbg !6404

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6405
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6407
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !6408, !srcloc !6409
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6410
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6411 dso_local void @ldsem_up_write(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6412 dso_local zeroext i1 @capable(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6415 dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #5 align 16 !dbg !6419 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6423, metadata !DIExpression()), !dbg !6424
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6425
  ret ptr %0, !dbg !6426
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6427 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6431, metadata !DIExpression()), !dbg !6436
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6432, metadata !DIExpression()), !dbg !6437
  %0 = load i64, ptr %size.addr, align 8, !dbg !6438
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6439
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6440

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6441
  %tobool = icmp ne i64 %2, 0, !dbg !6441
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6442

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6443
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6433, metadata !DIExpression()), !dbg !6444
  %3 = load i64, ptr %size.addr, align 8, !dbg !6445
  %cmp = icmp ugt i64 %3, 8192, !dbg !6447
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6448

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6449
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6450
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6451
  store ptr %call, ptr %retval, align 8, !dbg !6452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6452

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6453
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6453
  store i32 %call2, ptr %index, align 4, !dbg !6454
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6455
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6456
  %9 = ptrtoint ptr %8 to i64, !dbg !6456
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6457
  %idxprom = zext i32 %call3 to i64, !dbg !6458
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6458
  %10 = load i32, ptr %index, align 4, !dbg !6459
  %idxprom4 = zext i32 %10 to i64, !dbg !6458
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6458
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6458
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6460
  %13 = load i64, ptr %size.addr, align 8, !dbg !6461
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6462
  store ptr %call6, ptr %retval, align 8, !dbg !6463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6463

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6464
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6465
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6466
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6467
  store ptr %call8, ptr %retval, align 8, !dbg !6468
  br label %return, !dbg !6468

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6469
  ret ptr %16, !dbg !6469
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6470 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6471 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6475, metadata !DIExpression()), !dbg !6477
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6476, metadata !DIExpression()), !dbg !6478
  %0 = load i64, ptr %size.addr, align 8, !dbg !6479
  %tobool = icmp ne i64 %0, 0, !dbg !6479
  br i1 %tobool, label %if.end, label %if.then, !dbg !6481

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6482
  br label %return, !dbg !6482

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6483
  %cmp = icmp ule i64 %1, 8, !dbg !6485
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6486

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6487
  br label %return, !dbg !6487

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6488
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6490
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6491

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6492
  %cmp4 = icmp ule i64 %3, 96, !dbg !6493
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6494

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6495
  br label %return, !dbg !6495

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6496
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6498
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6499

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6500
  %cmp9 = icmp ule i64 %5, 192, !dbg !6501
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6502

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6503
  br label %return, !dbg !6503

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6504
  %cmp12 = icmp ule i64 %6, 8, !dbg !6506
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6507

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6508
  br label %return, !dbg !6508

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6509
  %cmp15 = icmp ule i64 %7, 16, !dbg !6511
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6512

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6513
  br label %return, !dbg !6513

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6514
  %cmp18 = icmp ule i64 %8, 32, !dbg !6516
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6517

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6518
  br label %return, !dbg !6518

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6519
  %cmp21 = icmp ule i64 %9, 64, !dbg !6521
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6522

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6523
  br label %return, !dbg !6523

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6524
  %cmp24 = icmp ule i64 %10, 128, !dbg !6526
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6527

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6528
  br label %return, !dbg !6528

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6529
  %cmp27 = icmp ule i64 %11, 256, !dbg !6531
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6532

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6533
  br label %return, !dbg !6533

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6534
  %cmp30 = icmp ule i64 %12, 512, !dbg !6536
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6537

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6538
  br label %return, !dbg !6538

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6539
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6541
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6542

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6543
  br label %return, !dbg !6543

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6544
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6546
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6547

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6548
  br label %return, !dbg !6548

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6549
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6551
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6552

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6553
  br label %return, !dbg !6553

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6554
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6556
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6557

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6558
  br label %return, !dbg !6558

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6559
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6561
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6562

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6563
  br label %return, !dbg !6563

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6564
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6566
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6567

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6568
  br label %return, !dbg !6568

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6569
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6571
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6572

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6573
  br label %return, !dbg !6573

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6574
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6576
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6577

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6578
  br label %return, !dbg !6578

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6579
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6581
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6582

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6583
  br label %return, !dbg !6583

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6584
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6586
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6587

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6588
  br label %return, !dbg !6588

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6589
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6591
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6592

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6593
  br label %return, !dbg !6593

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6594
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6596
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6597

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6598
  br label %return, !dbg !6598

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6599, !range !6020, !noundef !1215
  %tobool69 = trunc i8 %25 to i1, !dbg !6599
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6601

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6602

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #22, !dbg !6603, !srcloc !6606
  unreachable, !dbg !6603

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6607

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6608

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6609

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6611

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6609

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #16, !dbg !6613, !srcloc !6615
  br label %do.end75, !dbg !6613

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6609

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6616
  br label %return, !dbg !6616

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6617
  ret i32 %26, !dbg !6617
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6618 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6624 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6628, metadata !DIExpression()), !dbg !6630
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6629, metadata !DIExpression()), !dbg !6631
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6632
  %and = and i32 %0, 17, !dbg !6632
  %cmp = icmp eq i32 %and, 0, !dbg !6632
  %lnot = xor i1 %cmp, true, !dbg !6632
  %lnot1 = xor i1 %lnot, true, !dbg !6632
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6632
  %conv = sext i32 %lnot.ext to i64, !dbg !6632
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6632
  %tobool = icmp ne i64 %expval, 0, !dbg !6632
  br i1 %tobool, label %if.then, label %if.end, !dbg !6634

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6635
  br label %return, !dbg !6635

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6636
  %and2 = and i32 %1, 1, !dbg !6638
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6638
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6639

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6640
  br label %return, !dbg !6640

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6641
  br label %return, !dbg !6641

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6643
  ret i32 %2, !dbg !6643
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6644 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6645 dso_local void @__compiletime_assert_245() #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6646 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6648, metadata !DIExpression()), !dbg !6650
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6649, metadata !DIExpression()), !dbg !6651
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6652
  %1 = load i64, ptr %size.addr, align 8, !dbg !6653
  %conv = trunc i64 %1 to i32, !dbg !6653
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6654
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6655
  %3 = load i64, ptr %size.addr, align 8, !dbg !6655
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6655
  ret void, !dbg !6656
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6657 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6659, metadata !DIExpression()), !dbg !6661
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6660, metadata !DIExpression()), !dbg !6662
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6663
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6664
  br i1 %1, label %cond.true, label %cond.false, !dbg !6664

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6665
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6666
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6667
  %conv = zext i1 %call to i32, !dbg !6667
  br label %cond.end, !dbg !6664

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6668
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6669
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !6670
  %conv2 = zext i1 %call1 to i32, !dbg !6670
  br label %cond.end, !dbg !6664

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6664
  %tobool = icmp ne i32 %cond, 0, !dbg !6664
  ret i1 %tobool, !dbg !6671
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6672 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6674, metadata !DIExpression()), !dbg !6676
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6675, metadata !DIExpression()), !dbg !6677
  ret i1 true, !dbg !6678
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6679 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6683, metadata !DIExpression()), !dbg !6685
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6684, metadata !DIExpression()), !dbg !6686
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6687
  %and = and i64 %0, 63, !dbg !6688
  %shl = shl i64 1, %and, !dbg !6689
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6690
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6691
  %shr = ashr i64 %2, 6, !dbg !6692
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6690
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6690
  %and1 = and i64 %shl, %3, !dbg !6693
  %cmp = icmp ne i64 %and1, 0, !dbg !6694
  ret i1 %cmp, !dbg !6695
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6696 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6698, metadata !DIExpression()), !dbg !6701
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6699, metadata !DIExpression()), !dbg !6702
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !6703
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6700, metadata !DIExpression()), !dbg !6704
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6705
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6706
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6707, !srcloc !6708
  %3 = icmp ult i8 %2, 2, !dbg !6707
  call void @llvm.assume(i1 %3), !dbg !6707
  store i8 %2, ptr %oldbit, align 1, !dbg !6707
  %4 = load i8, ptr %oldbit, align 1, !dbg !6709, !range !6020, !noundef !1215
  %tobool = trunc i8 %4 to i1, !dbg !6709
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !6710
  ret i1 %tobool, !dbg !6711
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6712 dso_local void @down_write(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6713 dso_local void @up_write(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6714 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6718, metadata !DIExpression()), !dbg !6720
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6719, metadata !DIExpression()), !dbg !6721
  br label %do.body, !dbg !6722

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6723

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6725
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6726
  %div = sdiv i64 %1, 64, !dbg !6726
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6727
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6728
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6729
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6730
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6731
  ret i1 %call, !dbg !6732
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6733 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6735, metadata !DIExpression()), !dbg !6737
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6736, metadata !DIExpression()), !dbg !6738
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6739
  %1 = load i64, ptr %size.addr, align 8, !dbg !6740
  %conv = trunc i64 %1 to i32, !dbg !6740
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6741
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6742
  %3 = load i64, ptr %size.addr, align 8, !dbg !6742
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !6742
  ret void, !dbg !6743
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6744 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6746, metadata !DIExpression()), !dbg !6750
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6747, metadata !DIExpression()), !dbg !6751
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !6752
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6748, metadata !DIExpression()), !dbg !6752
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6752
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6752
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #16, !dbg !6752, !srcloc !6753
  %3 = icmp ult i8 %2, 2, !dbg !6752
  call void @llvm.assume(i1 %3), !dbg !6752
  store i8 %2, ptr %c, align 1, !dbg !6752
  %4 = load i8, ptr %c, align 1, !dbg !6752, !range !6020, !noundef !1215
  %tobool = trunc i8 %4 to i1, !dbg !6752
  %frombool = zext i1 %tobool to i8, !dbg !6752
  store i8 %frombool, ptr %tmp, align 1, !dbg !6752
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !6754
  %5 = load i8, ptr %tmp, align 1, !dbg !6752, !range !6020, !noundef !1215
  %tobool1 = trunc i8 %5 to i1, !dbg !6752
  ret i1 %tobool1, !dbg !6755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6756 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tty_ldisc_failto(ptr noundef %tty, i32 noundef %ld) #0 align 16 !dbg !6759 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %ld.addr = alloca i32, align 4
  %disc = alloca ptr, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6761, metadata !DIExpression()), !dbg !6765
  store i32 %ld, ptr %ld.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ld.addr, metadata !6762, metadata !DIExpression()), !dbg !6766
  call void @llvm.lifetime.start.p0(i64 8, ptr %disc) #16, !dbg !6767
  call void @llvm.dbg.declare(metadata ptr %disc, metadata !6763, metadata !DIExpression()), !dbg !6768
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6769
  %1 = load i32, ptr %ld.addr, align 4, !dbg !6770
  %call = call ptr @tty_ldisc_get(ptr noundef %0, i32 noundef %1) #17, !dbg !6771
  store ptr %call, ptr %disc, align 8, !dbg !6768
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6764, metadata !DIExpression()), !dbg !6773
  br label %do.body, !dbg !6774

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !6775
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 7, !dbg !6775
  br label %do.cond, !dbg !6775

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6775

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %disc, align 8, !dbg !6777
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #17, !dbg !6779
  br i1 %call1, label %if.then, label %if.end, !dbg !6780

if.then:                                          ; preds = %do.end
  %4 = load ptr, ptr %disc, align 8, !dbg !6781
  %call2 = call i64 @PTR_ERR(ptr noundef %4) #17, !dbg !6782
  %conv = trunc i64 %call2 to i32, !dbg !6782
  store i32 %conv, ptr %retval, align 4, !dbg !6783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6783

if.end:                                           ; preds = %do.end
  %5 = load ptr, ptr %disc, align 8, !dbg !6784
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !6785
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 6, !dbg !6786
  store ptr %5, ptr %ldisc, align 8, !dbg !6787
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !6788
  %8 = load i32, ptr %ld.addr, align 4, !dbg !6789
  call void @tty_set_termios_ldisc(ptr noundef %7, i32 noundef %8) #17, !dbg !6790
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !6791
  %10 = load ptr, ptr %disc, align 8, !dbg !6792
  %call3 = call i32 @tty_ldisc_open(ptr noundef %9, ptr noundef %10) #17, !dbg !6793
  store i32 %call3, ptr %r, align 4, !dbg !6794
  %11 = load i32, ptr %r, align 4, !dbg !6795
  %cmp = icmp slt i32 %11, 0, !dbg !6797
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !6798

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %disc, align 8, !dbg !6799
  call void @tty_ldisc_put(ptr noundef %12) #17, !dbg !6800
  br label %if.end6, !dbg !6800

if.end6:                                          ; preds = %if.then5, %if.end
  %13 = load i32, ptr %r, align 4, !dbg !6801
  store i32 %13, ptr %retval, align 4, !dbg !6802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6802

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !6803
  call void @llvm.lifetime.end.p0(i64 8, ptr %disc) #16, !dbg !6803
  %14 = load i32, ptr %retval, align 4, !dbg !6803
  ret i32 %14, !dbg !6803
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6804 dso_local ptr @tty_name(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6809 dso_local i32 @_printk(ptr noundef, ...) #13

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !6813 dso_local void @panic(ptr noundef, ...) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6817 dso_local i32 @tty_termios_input_baud_rate(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6820 dso_local i32 @tty_termios_baud_rate(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tty_ldisc_lock_pair_timeout(ptr noundef %tty, ptr noundef %tty2, i64 noundef %timeout) #0 align 16 !dbg !6821 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %tty2.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6825, metadata !DIExpression()), !dbg !6836
  store ptr %tty2, ptr %tty2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty2.addr, metadata !6826, metadata !DIExpression()), !dbg !6837
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !6827, metadata !DIExpression()), !dbg !6838
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6839
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6828, metadata !DIExpression()), !dbg !6840
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6841
  %1 = load ptr, ptr %tty2.addr, align 8, !dbg !6842
  %cmp = icmp ult ptr %0, %1, !dbg !6843
  br i1 %cmp, label %if.then, label %if.else, !dbg !6844

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !6845
  %3 = load i64, ptr %timeout.addr, align 8, !dbg !6847
  %call = call i32 @__tty_ldisc_lock(ptr noundef %2, i64 noundef %3) #17, !dbg !6848
  store i32 %call, ptr %ret, align 4, !dbg !6849
  %4 = load i32, ptr %ret, align 4, !dbg !6850
  %tobool = icmp ne i32 %4, 0, !dbg !6850
  br i1 %tobool, label %if.then1, label %if.end5, !dbg !6852

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %tty2.addr, align 8, !dbg !6853
  %6 = load i64, ptr %timeout.addr, align 8, !dbg !6855
  %call2 = call i32 @__tty_ldisc_lock_nested(ptr noundef %5, i64 noundef %6) #17, !dbg !6856
  store i32 %call2, ptr %ret, align 4, !dbg !6857
  %7 = load i32, ptr %ret, align 4, !dbg !6858
  %tobool3 = icmp ne i32 %7, 0, !dbg !6858
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !6860

if.then4:                                         ; preds = %if.then1
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !6861
  call void @__tty_ldisc_unlock(ptr noundef %8) #17, !dbg !6862
  br label %if.end, !dbg !6862

if.end:                                           ; preds = %if.then4, %if.then1
  br label %if.end5, !dbg !6863

if.end5:                                          ; preds = %if.end, %if.then
  br label %if.end47, !dbg !6864

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6865
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6829, metadata !DIExpression()), !dbg !6865
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !6865
  %10 = load ptr, ptr %tty2.addr, align 8, !dbg !6865
  %cmp6 = icmp eq ptr %9, %10, !dbg !6865
  %lnot = xor i1 %cmp6, true, !dbg !6865
  %lnot7 = xor i1 %lnot, true, !dbg !6865
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6865
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6865
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !6866
  %tobool8 = icmp ne i32 %11, 0, !dbg !6866
  %lnot9 = xor i1 %tobool8, true, !dbg !6866
  %lnot11 = xor i1 %lnot9, true, !dbg !6866
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6866
  %conv = sext i32 %lnot.ext12 to i64, !dbg !6866
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6866
  %tobool13 = icmp ne i64 %expval, 0, !dbg !6866
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !6865

if.then14:                                        ; preds = %if.else
  br label %do.body, !dbg !6866

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6867
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6833, metadata !DIExpression()), !dbg !6867
  store i32 2307, ptr %__flags, align 4, !dbg !6867
  br label %do.body15, !dbg !6867

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !6868

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !6868

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !6867

do.body16:                                        ; preds = %do.end
  %12 = load i32, ptr %__flags, align 4, !dbg !6870
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 343, i32 %12, i64 12) #16, !dbg !6870, !srcloc !6872
  br label %do.cond17, !dbg !6870

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6870

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !6867

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !6873

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6873

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6866
  br label %do.cond22, !dbg !6867

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !6867

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !6867

if.end24:                                         ; preds = %do.end23, %if.else
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !6865
  %tobool25 = icmp ne i32 %13, 0, !dbg !6865
  %lnot26 = xor i1 %tobool25, true, !dbg !6865
  %lnot28 = xor i1 %lnot26, true, !dbg !6865
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !6865
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !6865
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !6865
  store i64 %expval31, ptr %tmp, align 8, !dbg !6866
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6875
  %14 = load i64, ptr %tmp, align 8, !dbg !6865
  %15 = load ptr, ptr %tty2.addr, align 8, !dbg !6876
  %tobool32 = icmp ne ptr %15, null, !dbg !6876
  br i1 %tobool32, label %land.lhs.true, label %if.else44, !dbg !6878

land.lhs.true:                                    ; preds = %if.end24
  %16 = load ptr, ptr %tty.addr, align 8, !dbg !6879
  %17 = load ptr, ptr %tty2.addr, align 8, !dbg !6880
  %cmp33 = icmp ne ptr %16, %17, !dbg !6881
  br i1 %cmp33, label %if.then35, label %if.else44, !dbg !6882

if.then35:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %tty2.addr, align 8, !dbg !6883
  %19 = load i64, ptr %timeout.addr, align 8, !dbg !6885
  %call36 = call i32 @__tty_ldisc_lock(ptr noundef %18, i64 noundef %19) #17, !dbg !6886
  store i32 %call36, ptr %ret, align 4, !dbg !6887
  %20 = load i32, ptr %ret, align 4, !dbg !6888
  %tobool37 = icmp ne i32 %20, 0, !dbg !6888
  br i1 %tobool37, label %if.then38, label %if.end43, !dbg !6890

if.then38:                                        ; preds = %if.then35
  %21 = load ptr, ptr %tty.addr, align 8, !dbg !6891
  %22 = load i64, ptr %timeout.addr, align 8, !dbg !6893
  %call39 = call i32 @__tty_ldisc_lock_nested(ptr noundef %21, i64 noundef %22) #17, !dbg !6894
  store i32 %call39, ptr %ret, align 4, !dbg !6895
  %23 = load i32, ptr %ret, align 4, !dbg !6896
  %tobool40 = icmp ne i32 %23, 0, !dbg !6896
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !6898

if.then41:                                        ; preds = %if.then38
  %24 = load ptr, ptr %tty2.addr, align 8, !dbg !6899
  call void @__tty_ldisc_unlock(ptr noundef %24) #17, !dbg !6900
  br label %if.end42, !dbg !6900

if.end42:                                         ; preds = %if.then41, %if.then38
  br label %if.end43, !dbg !6901

if.end43:                                         ; preds = %if.end42, %if.then35
  br label %if.end46, !dbg !6902

if.else44:                                        ; preds = %land.lhs.true, %if.end24
  %25 = load ptr, ptr %tty.addr, align 8, !dbg !6903
  %26 = load i64, ptr %timeout.addr, align 8, !dbg !6904
  %call45 = call i32 @__tty_ldisc_lock(ptr noundef %25, i64 noundef %26) #17, !dbg !6905
  store i32 %call45, ptr %ret, align 4, !dbg !6906
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.end43
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end5
  %27 = load i32, ptr %ret, align 4, !dbg !6907
  %tobool48 = icmp ne i32 %27, 0, !dbg !6907
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !6909

if.then49:                                        ; preds = %if.end47
  store i32 -16, ptr %retval, align 4, !dbg !6910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6910

if.end50:                                         ; preds = %if.end47
  %28 = load ptr, ptr %tty.addr, align 8, !dbg !6911
  %flags = getelementptr inbounds %struct.tty_struct, ptr %28, i32 0, i32 16, !dbg !6912
  call void @set_bit(i64 noundef 22, ptr noundef %flags) #17, !dbg !6913
  %29 = load ptr, ptr %tty2.addr, align 8, !dbg !6914
  %tobool51 = icmp ne ptr %29, null, !dbg !6914
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !6916

if.then52:                                        ; preds = %if.end50
  %30 = load ptr, ptr %tty2.addr, align 8, !dbg !6917
  %flags53 = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 16, !dbg !6918
  call void @set_bit(i64 noundef 22, ptr noundef %flags53) #17, !dbg !6919
  br label %if.end54, !dbg !6919

if.end54:                                         ; preds = %if.then52, %if.end50
  store i32 0, ptr %retval, align 4, !dbg !6920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6920

cleanup:                                          ; preds = %if.end54, %if.then49
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6921
  %31 = load i32, ptr %retval, align 4, !dbg !6921
  ret i32 %31, !dbg !6921
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__tty_ldisc_lock_nested(ptr noundef %tty, i64 noundef %timeout) #5 align 16 !dbg !6922 {
entry:
  %tty.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6924, metadata !DIExpression()), !dbg !6926
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !6925, metadata !DIExpression()), !dbg !6927
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6928
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7, !dbg !6928
  %1 = load i64, ptr %timeout.addr, align 8, !dbg !6928
  %call = call i32 @ldsem_down_write(ptr noundef %ldisc_sem, i64 noundef %1) #17, !dbg !6928
  ret i32 %call, !dbg !6929
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { cold noredzone noreturn }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067}
!llvm.ident = !{!5068}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tty_ldiscs_lock", scope: !2, file: !3, line: 45, type: !225, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/.tty_ldisc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/tty_ldisc\22 -D KBUILD_BASENAME=\22tty_ldisc\22 -D KBUILD_MODNAME=\22tty_ldisc\22 -D __KBUILD_MODNAME=kmod_tty_ldisc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/tty_ldisc.ll drivers/tty/tty_ldisc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !178, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/tty_ldisc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee64c4a170f3b1010fc675ec6812021b")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !147, line: 364, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!150 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!151 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!152 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!153 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!154 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!155 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!156 = !{!157, !158, !159, !162, !164, !166, !171, !174, !176, !161, !177}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!158 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !160, line: 42, baseType: !161)
!160 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !165, line: 59, baseType: !7)
!165 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !160, line: 52, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !169, line: 88, baseType: !170)
!169 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!170 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !173)
!173 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !160, line: 154, baseType: !7)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!178 = !{!179, !181, !183, !185, !5012, !5014, !5016, !5018, !5020, !5022, !5027, !0, !5032, !5037, !5040, !5045, !5050, !5055}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_register_ldisc287", scope: !2, file: !3, line: 71, type: !157, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_unregister_ldisc288", scope: !2, file: !3, line: 91, type: !157, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "tty_ldisc_autoload", scope: !2, file: !3, line: 119, type: !109, isLocal: false, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "tty_ldiscs_seq_ops", scope: !2, file: !3, line: 215, type: !187, isLocal: false, isDefinition: true)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !189, line: 32, size: 256, elements: !190)
!189 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!190 = !{!191, !5009, !5010, !5011}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !188, file: !189, line: 33, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!157, !195, !166}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !189, line: 17, size: 960, elements: !197)
!197 = !{!198, !200, !204, !205, !206, !207, !208, !209, !269, !271, !272, !5008}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !196, file: !189, line: 18, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !196, file: !189, line: 19, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 61, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !169, line: 72, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !169, line: 16, baseType: !161)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !196, file: !189, line: 20, baseType: !201, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !196, file: !189, line: 21, baseType: !201, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !196, file: !189, line: 22, baseType: !201, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !196, file: !189, line: 23, baseType: !167, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !196, file: !189, line: 24, baseType: !167, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !196, file: !189, line: 25, baseType: !210, size: 256, offset: 448)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !211, line: 66, size: 256, elements: !212)
!211 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!212 = !{!213, !224, !258, !263}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !210, file: !211, line: 67, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !215, line: 13, baseType: !216)
!215 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !160, line: 181, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 179, size: 64, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !217, file: !160, line: 180, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !221, line: 22, baseType: !222)
!221 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !223, line: 30, baseType: !170)
!223 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!224 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !210, file: !211, line: 68, baseType: !225, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !226, line: 23, baseType: !227)
!226 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !226, line: 14, size: 32, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !227, file: !226, line: 15, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !231, line: 44, baseType: !232)
!231 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !231, line: 14, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !231, line: 15, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !231, line: 15, size: 32, elements: !236)
!236 = !{!237, !242, !250}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !235, file: !231, line: 16, baseType: !238, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !160, line: 174, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 172, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !239, file: !160, line: 173, baseType: !109, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !231, line: 24, baseType: !243, size: 16)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !231, line: 24, size: 16, elements: !244)
!244 = !{!245, !249}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !243, file: !231, line: 25, baseType: !246, size: 8)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !221, line: 17, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !223, line: 21, baseType: !248)
!248 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !243, file: !231, line: 26, baseType: !246, size: 8, offset: 8)
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !231, line: 28, baseType: !251, size: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !231, line: 28, size: 32, elements: !252)
!252 = !{!253, !257}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !251, file: !231, line: 29, baseType: !254, size: 16)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !221, line: 19, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !223, line: 24, baseType: !256)
!256 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !251, file: !231, line: 30, baseType: !254, size: 16, offset: 16)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !210, file: !211, line: 70, baseType: !259, size: 32, offset: 96)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !260, line: 15, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !259, file: !260, line: 20, baseType: !238, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !210, file: !211, line: 72, baseType: !264, size: 128, offset: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !160, line: 190, size: 128, elements: !265)
!265 = !{!266, !268}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !160, line: 191, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !264, file: !160, line: 191, baseType: !267, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !196, file: !189, line: 26, baseType: !270, size: 64, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !196, file: !189, line: 27, baseType: !109, size: 32, offset: 768)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !196, file: !189, line: 28, baseType: !273, size: 64, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !276)
!276 = !{!277, !296, !305, !307, !308, !309, !310, !311, !392, !617, !626, !4998, !4999, !5000, !5001, !5002, !5003, !5005, !5006, !5007}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !14, line: 995, baseType: !278, size: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !14, line: 995, size: 128, elements: !279)
!279 = !{!280, !286, !295}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !278, file: !14, line: 996, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !282, line: 60, size: 64, elements: !283)
!282 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !282, line: 61, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !278, file: !14, line: 997, baseType: !287, size: 128, align: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !160, line: 232, size: 128, align: 64, elements: !288)
!288 = !{!289, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !160, line: 233, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !287, file: !160, line: 234, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !290}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !278, file: !14, line: 998, baseType: !7, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !275, file: !14, line: 1005, baseType: !297, size: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !298, line: 29, baseType: !299)
!298 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !298, line: 17, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !298, line: 18, baseType: !302, size: 32)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !298, line: 18, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !302, file: !298, line: 19, baseType: !227, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !275, file: !14, line: 1006, baseType: !306, size: 32, offset: 160)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !160, line: 156, baseType: !7)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !275, file: !14, line: 1007, baseType: !214, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !275, file: !14, line: 1008, baseType: !210, size: 256, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !275, file: !14, line: 1009, baseType: !167, size: 64, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !275, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !275, file: !14, line: 1011, baseType: !312, size: 256, offset: 640)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !313)
!313 = !{!314, !337, !381, !382, !390, !391}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !312, file: !14, line: 949, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !316, line: 34, baseType: !317)
!316 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 25, size: 64, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !317, file: !316, line: 26, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !321, line: 27, baseType: !322)
!321 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !321, line: 13, size: 64, elements: !323)
!323 = !{!324, !336}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !321, line: 14, baseType: !325, size: 32)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !321, line: 14, size: 32, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !325, file: !321, line: 15, baseType: !238, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 16, baseType: !329, size: 32)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 16, size: 32, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !329, file: !321, line: 18, baseType: !246, size: 8)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !329, file: !321, line: 19, baseType: !333, size: 24, offset: 8)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 24, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 3)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !322, file: !321, line: 26, baseType: !230, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !312, file: !14, line: 950, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !340)
!340 = !{!341, !347, !348, !349, !362, !363, !370, !371}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !339, file: !19, line: 61, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !343, line: 113, baseType: !344)
!343 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !343, line: 111, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !344, file: !343, line: 112, baseType: !238, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !339, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !339, file: !19, line: 63, baseType: !297, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !339, file: !19, line: 65, baseType: !350, size: 256, offset: 128)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 256, elements: !360)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !160, line: 194, size: 64, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !351, file: !160, line: 195, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !160, line: 198, size: 128, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !160, line: 199, baseType: !354, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !355, file: !160, line: 199, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!360 = !{!361}
!361 = !DISubrange(count: 4)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !339, file: !19, line: 66, baseType: !351, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !339, file: !19, line: 68, baseType: !364, size: 192, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !365, line: 41, baseType: !366)
!365 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !365, line: 37, size: 192, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !366, file: !365, line: 38, baseType: !297, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !366, file: !365, line: 39, baseType: !264, size: 128, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !339, file: !19, line: 69, baseType: !287, size: 128, align: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !339, file: !19, line: 70, baseType: !372, offset: 768)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, elements: !379)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !373, file: !19, line: 55, baseType: !109, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !373, file: !19, line: 56, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!379 = !{!380}
!380 = !DISubrange(count: -1)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !312, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !312, file: !14, line: 952, baseType: !383, size: 32, offset: 160)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !384, line: 23, baseType: !385)
!384 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 21, size: 32, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !385, file: !384, line: 22, baseType: !388, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !160, line: 37, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !169, line: 49, baseType: !7)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !312, file: !14, line: 952, baseType: !383, size: 32, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !312, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !275, file: !14, line: 1012, baseType: !393, size: 64, offset: 896)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !396, line: 110, size: 1472, elements: !397)
!396 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!397 = !{!398, !399, !400, !407, !408, !409, !410, !411, !412, !413, !414, !423, !424, !425, !426, !427, !428, !562, !563, !564, !565, !566, !597, !600, !604, !612}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !395, file: !396, line: 111, baseType: !214, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !395, file: !396, line: 112, baseType: !383, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !395, file: !396, line: 113, baseType: !401, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !384, line: 28, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 26, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !402, file: !384, line: 27, baseType: !405, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !160, line: 38, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !169, line: 50, baseType: !7)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !395, file: !396, line: 114, baseType: !383, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !395, file: !396, line: 115, baseType: !401, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !395, file: !396, line: 116, baseType: !383, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !395, file: !396, line: 117, baseType: !401, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !395, file: !396, line: 118, baseType: !383, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !395, file: !396, line: 119, baseType: !401, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !395, file: !396, line: 120, baseType: !7, size: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !395, file: !396, line: 121, baseType: !415, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !416, line: 24, baseType: !417)
!416 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 24, size: 64, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !417, file: !416, line: 24, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !221, line: 23, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !223, line: 31, baseType: !422)
!422 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !395, file: !396, line: 122, baseType: !415, size: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !395, file: !396, line: 123, baseType: !415, size: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !395, file: !396, line: 124, baseType: !415, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !395, file: !396, line: 125, baseType: !415, size: 64, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !395, file: !396, line: 127, baseType: !248, size: 8, offset: 704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !395, file: !396, line: 129, baseType: !429, size: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !431, line: 195, size: 1728, elements: !432)
!431 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!432 = !{!433, !434, !439, !451, !460, !463, !464, !471, !472, !473, !474, !479, !480, !481, !483, !484, !526, !547}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !430, file: !431, line: 196, baseType: !342, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !430, file: !431, line: 197, baseType: !435, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !431, line: 28, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !160, line: 104, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !221, line: 20, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !223, line: 26, baseType: !109)
!439 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !431, line: 198, baseType: !440, size: 192, offset: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !431, line: 198, size: 192, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !440, file: !431, line: 199, baseType: !264, size: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !440, file: !431, line: 200, baseType: !444, size: 192, align: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !445, line: 5, size: 192, align: 64, elements: !446)
!445 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!446 = !{!447, !448, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !444, file: !445, line: 6, baseType: !161, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !444, file: !445, line: 7, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !444, file: !445, line: 8, baseType: !449, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !430, file: !431, line: 205, baseType: !452, size: 320, offset: 256)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !453, line: 48, size: 320, elements: !454)
!453 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!454 = !{!455, !456, !457, !458, !459}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !452, file: !453, line: 49, baseType: !214, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !452, file: !453, line: 55, baseType: !214, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !452, file: !453, line: 57, baseType: !259, size: 32, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !452, file: !453, line: 59, baseType: !225, size: 32, offset: 160)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !452, file: !453, line: 60, baseType: !264, size: 128, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !430, file: !431, line: 206, baseType: !461, size: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !431, line: 206, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !430, file: !431, line: 207, baseType: !157, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !431, line: 208, baseType: !465, size: 64, offset: 704)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !431, line: 208, size: 64, elements: !466)
!466 = !{!467, !470}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !465, file: !431, line: 209, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !469, line: 8, baseType: !222)
!469 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!470 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !465, file: !431, line: 210, baseType: !468, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !430, file: !431, line: 212, baseType: !468, size: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !430, file: !431, line: 213, baseType: !383, size: 32, offset: 832)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !430, file: !431, line: 214, baseType: !401, size: 32, offset: 864)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !430, file: !431, line: 215, baseType: !475, size: 32, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !431, line: 31, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !160, line: 110, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !221, line: 21, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !223, line: 27, baseType: !7)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !430, file: !431, line: 216, baseType: !256, size: 16, offset: 928)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !430, file: !431, line: 217, baseType: !256, size: 16, offset: 944)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !430, file: !431, line: 221, baseType: !482, size: 16, offset: 960)
!482 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !431, line: 228, baseType: !161, size: 64, offset: 1024)
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !431, line: 245, baseType: !485, size: 320, offset: 1088)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !431, line: 245, size: 320, elements: !486)
!486 = !{!487, !518}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !485, file: !431, line: 246, baseType: !488, size: 320)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !431, line: 114, size: 320, elements: !489)
!489 = !{!490, !491, !503, !506, !515}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !488, file: !431, line: 116, baseType: !161, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !431, line: 117, baseType: !492, size: 64, offset: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !431, line: 117, size: 64, elements: !493)
!493 = !{!494, !502}
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !431, line: 118, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !492, file: !431, line: 118, size: 64, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !495, file: !431, line: 120, baseType: !254, size: 16)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !495, file: !431, line: 121, baseType: !499, size: 48, offset: 16)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 48, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 6)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !492, file: !431, line: 127, baseType: !161, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !431, line: 129, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !431, line: 102, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !488, file: !431, line: 130, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !431, line: 108, size: 192, elements: !509)
!509 = !{!510, !511, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !508, file: !431, line: 109, baseType: !287, size: 128, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !508, file: !431, line: 110, baseType: !342, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !508, file: !431, line: 111, baseType: !513, size: 8, offset: 160)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !160, line: 35, baseType: !514)
!514 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !488, file: !431, line: 131, baseType: !516, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !431, line: 247, baseType: !519, size: 320)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !431, line: 247, size: 320, elements: !520)
!520 = !{!521, !522, !523, !524, !525}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !519, file: !431, line: 248, baseType: !161, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !519, file: !431, line: 249, baseType: !161, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !431, line: 250, baseType: !504, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !519, file: !431, line: 251, baseType: !507, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !519, file: !431, line: 252, baseType: !199, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !431, line: 260, baseType: !527, size: 256, offset: 1408)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !431, line: 260, size: 256, elements: !528)
!528 = !{!529, !535}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !527, file: !431, line: 261, baseType: !530, size: 256)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !431, line: 134, size: 256, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !530, file: !431, line: 135, baseType: !157, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !530, file: !431, line: 136, baseType: !534, size: 256)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !360)
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !431, line: 262, baseType: !536, size: 256)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !527, file: !431, line: 262, size: 256, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !536, file: !431, line: 264, baseType: !264, size: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !536, file: !431, line: 265, baseType: !540, size: 128, offset: 128)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !541, line: 22, size: 128, elements: !542)
!541 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!542 = !{!543, !546}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !540, file: !541, line: 23, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !541, line: 23, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !540, file: !541, line: 24, baseType: !161, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !430, file: !431, line: 280, baseType: !548, size: 64, offset: 1664)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !431, line: 176, size: 192, elements: !550)
!550 = !{!551, !560, !561}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !549, file: !431, line: 177, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !431, line: 171, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!109, !429, !556, !558, !429}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !549, file: !431, line: 178, baseType: !429, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !549, file: !431, line: 179, baseType: !504, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !395, file: !396, line: 130, baseType: !429, size: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !395, file: !396, line: 131, baseType: !429, size: 64, offset: 896)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !395, file: !396, line: 132, baseType: !429, size: 64, offset: 960)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !395, file: !396, line: 135, baseType: !157, size: 64, offset: 1024)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !395, file: !396, line: 137, baseType: !567, size: 64, offset: 1088)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !569, line: 14, size: 1088, elements: !570)
!569 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!570 = !{!571, !572, !581, !582, !583, !584, !585, !586}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !568, file: !569, line: 15, baseType: !342, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !568, file: !569, line: 17, baseType: !573, size: 320, offset: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !574, line: 22, size: 320, elements: !575)
!574 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!575 = !{!576, !577, !578, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !573, file: !574, line: 23, baseType: !225, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !573, file: !574, line: 24, baseType: !220, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !573, file: !574, line: 26, baseType: !264, size: 128, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !573, file: !574, line: 28, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !568, file: !569, line: 19, baseType: !161, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !568, file: !569, line: 20, baseType: !214, size: 64, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !568, file: !569, line: 23, baseType: !355, size: 128, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !568, file: !569, line: 24, baseType: !383, size: 32, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !568, file: !569, line: 29, baseType: !214, size: 64, offset: 704)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !568, file: !569, line: 36, baseType: !587, size: 320, offset: 768)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !588, line: 15, size: 320, elements: !589)
!588 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!589 = !{!590, !591, !592, !593, !594, !595, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !587, file: !588, line: 16, baseType: !225, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !587, file: !588, line: 18, baseType: !109, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !587, file: !588, line: 19, baseType: !109, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !587, file: !588, line: 20, baseType: !109, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !587, file: !588, line: 21, baseType: !109, size: 32, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !587, file: !588, line: 22, baseType: !161, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !588, line: 23, baseType: !161, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !395, file: !396, line: 138, baseType: !598, size: 64, offset: 1152)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !27, line: 901, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !395, file: !396, line: 139, baseType: !601, size: 64, offset: 1216)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !603, line: 16, flags: DIFlagFwdDecl)
!603 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !395, file: !396, line: 140, baseType: !605, size: 64, offset: 1280)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !396, line: 25, size: 64, elements: !607)
!607 = !{!608, !609, !610}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !606, file: !396, line: 26, baseType: !238, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !606, file: !396, line: 27, baseType: !109, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !606, file: !396, line: 28, baseType: !611, offset: 64)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, elements: !379)
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !396, line: 142, baseType: !613, size: 128, offset: 1344)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !396, line: 142, size: 128, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !613, file: !396, line: 143, baseType: !109, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !613, file: !396, line: 144, baseType: !287, size: 128, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !275, file: !14, line: 1013, baseType: !618, size: 256, offset: 960)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !618, file: !14, line: 971, baseType: !161, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !618, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !618, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !618, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !618, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !618, file: !14, line: 976, baseType: !167, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !275, file: !14, line: 1014, baseType: !627, size: 128, offset: 1216)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !628, line: 8, size: 128, elements: !629)
!628 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!629 = !{!630, !4997}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !627, file: !628, line: 9, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !633, line: 70, size: 256, elements: !634)
!633 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!634 = !{!635, !4994, !4995, !4996}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !632, file: !633, line: 71, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !638, line: 82, size: 1536, elements: !639)
!638 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!639 = !{!640, !641, !651, !659, !660, !675, !4962, !4964, !4977, !4978, !4979, !4980, !4981, !4986, !4987, !4988}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !637, file: !638, line: 84, baseType: !7, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !637, file: !638, line: 85, baseType: !642, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !643, line: 275, baseType: !644)
!643 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !643, line: 275, size: 32, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !644, file: !643, line: 275, baseType: !647, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !643, line: 69, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !643, line: 64, size: 32, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !648, file: !643, line: 65, baseType: !7, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !637, file: !638, line: 86, baseType: !652, size: 128, offset: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !653, line: 38, size: 128, elements: !654)
!653 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!654 = !{!655, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !652, file: !653, line: 39, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !652, file: !653, line: 39, baseType: !658, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !637, file: !638, line: 87, baseType: !636, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !637, file: !638, line: 88, baseType: !661, size: 128, offset: 256)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !638, line: 49, size: 128, elements: !662)
!662 = !{!663, !672}
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !638, line: 50, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !638, line: 50, size: 64, elements: !665)
!665 = !{!666, !671}
!666 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !638, line: 51, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !664, file: !638, line: 51, size: 64, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !667, file: !638, line: 52, baseType: !477, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !667, file: !638, line: 52, baseType: !477, size: 32, offset: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !664, file: !638, line: 54, baseType: !420, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !638, line: 56, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !637, file: !638, line: 89, baseType: !676, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !678)
!678 = !{!679, !681, !682, !683, !684, !685, !686, !689, !690, !884, !4903, !4904, !4905, !4906, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4946, !4949, !4950, !4951, !4958, !4959, !4960, !4961}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !677, file: !14, line: 642, baseType: !680, size: 16)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !160, line: 24, baseType: !256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !677, file: !14, line: 643, baseType: !256, size: 16, offset: 16)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !677, file: !14, line: 644, baseType: !383, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !677, file: !14, line: 645, baseType: !264, size: 128, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !677, file: !14, line: 646, baseType: !401, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !677, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !677, file: !14, line: 650, baseType: !687, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !677, file: !14, line: 651, baseType: !687, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !677, file: !14, line: 654, baseType: !691, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !694)
!694 = !{!695, !699, !712, !718, !722, !726, !730, !734, !738, !742, !746, !747, !753, !757, !795, !826, !833, !839, !843, !847, !851, !855, !859, !865, !869}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !693, file: !14, line: 1967, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!636, !676, !636, !7}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !693, file: !14, line: 1968, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!516, !636, !676, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !705, line: 10, size: 128, elements: !706)
!705 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!706 = !{!707, !711}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !704, file: !705, line: 11, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !157}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !704, file: !705, line: 12, baseType: !157, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !693, file: !14, line: 1969, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!109, !716, !676, !109}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !416, line: 42, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !693, file: !14, line: 1970, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!687, !676, !109, !513}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !693, file: !14, line: 1972, baseType: !723, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!109, !636, !199, !109}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !693, file: !14, line: 1974, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!109, !716, !676, !636, !680, !513}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !693, file: !14, line: 1976, baseType: !731, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!109, !636, !676, !636}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !693, file: !14, line: 1977, baseType: !735, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!109, !676, !636}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !693, file: !14, line: 1978, baseType: !739, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!109, !716, !676, !636, !516}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !693, file: !14, line: 1980, baseType: !743, size: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!109, !716, !676, !636, !680}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !693, file: !14, line: 1982, baseType: !735, size: 64, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !693, file: !14, line: 1983, baseType: !748, size: 64, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!109, !716, !676, !636, !680, !751}
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !160, line: 21, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !160, line: 18, baseType: !477)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !693, file: !14, line: 1985, baseType: !754, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!109, !716, !676, !636, !676, !636, !7}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !693, file: !14, line: 1987, baseType: !758, size: 64, offset: 832)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!109, !716, !636, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !763)
!763 = !{!764, !765, !766, !776, !785, !786, !791, !792, !793}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !762, file: !14, line: 227, baseType: !7, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !762, file: !14, line: 228, baseType: !680, size: 16, offset: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !14, line: 241, baseType: !767, size: 32, offset: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !14, line: 241, size: 32, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !767, file: !14, line: 242, baseType: !383, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !767, file: !14, line: 243, baseType: !771, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !772, line: 16, baseType: !773)
!772 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !772, line: 14, size: 32, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !773, file: !772, line: 15, baseType: !388, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !14, line: 245, baseType: !777, size: 32, offset: 96)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !14, line: 245, size: 32, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !777, file: !14, line: 246, baseType: !401, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !777, file: !14, line: 247, baseType: !781, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !772, line: 20, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !772, line: 18, size: 32, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !782, file: !772, line: 19, baseType: !405, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !762, file: !14, line: 249, baseType: !167, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !762, file: !14, line: 250, baseType: !787, size: 128, offset: 192)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !469, line: 13, size: 128, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !787, file: !469, line: 14, baseType: !468, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !787, file: !469, line: 15, baseType: !158, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !762, file: !14, line: 251, baseType: !787, size: 128, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !762, file: !14, line: 252, baseType: !787, size: 128, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !762, file: !14, line: 259, baseType: !794, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !693, file: !14, line: 1988, baseType: !796, size: 64, offset: 896)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!109, !716, !799, !801, !477, !7}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !803, line: 22, size: 1280, elements: !804)
!803 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !802, file: !803, line: 23, baseType: !477, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !802, file: !803, line: 24, baseType: !680, size: 16, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !802, file: !803, line: 25, baseType: !7, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !802, file: !803, line: 26, baseType: !476, size: 32, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !802, file: !803, line: 27, baseType: !420, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !802, file: !803, line: 28, baseType: !420, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !802, file: !803, line: 41, baseType: !420, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !802, file: !803, line: 42, baseType: !751, size: 32, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !802, file: !803, line: 43, baseType: !751, size: 32, offset: 352)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !802, file: !803, line: 44, baseType: !383, size: 32, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !802, file: !803, line: 45, baseType: !401, size: 32, offset: 416)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !802, file: !803, line: 46, baseType: !167, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !802, file: !803, line: 47, baseType: !787, size: 128, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !802, file: !803, line: 48, baseType: !787, size: 128, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !802, file: !803, line: 49, baseType: !787, size: 128, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !802, file: !803, line: 50, baseType: !787, size: 128, offset: 896)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !802, file: !803, line: 51, baseType: !420, size: 64, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !802, file: !803, line: 52, baseType: !420, size: 64, offset: 1088)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !802, file: !803, line: 53, baseType: !477, size: 32, offset: 1152)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !802, file: !803, line: 54, baseType: !477, size: 32, offset: 1184)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !802, file: !803, line: 55, baseType: !420, size: 64, offset: 1216)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !693, file: !14, line: 1990, baseType: !827, size: 64, offset: 960)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!830, !636, !199, !201}
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !160, line: 66, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !169, line: 73, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !169, line: 15, baseType: !158)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !693, file: !14, line: 1991, baseType: !834, size: 64, offset: 1024)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!109, !676, !837, !420, !420}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !693, file: !14, line: 1993, baseType: !840, size: 64, offset: 1088)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!109, !676, !109}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !693, file: !14, line: 1994, baseType: !844, size: 64, offset: 1152)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!109, !676, !636, !794, !7, !680}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !693, file: !14, line: 1997, baseType: !848, size: 64, offset: 1216)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!109, !716, !676, !794, !680}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !693, file: !14, line: 1999, baseType: !852, size: 64, offset: 1280)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!687, !716, !636, !109}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !693, file: !14, line: 2001, baseType: !856, size: 64, offset: 1344)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!109, !716, !636, !687, !109}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !693, file: !14, line: 2003, baseType: !860, size: 64, offset: 1408)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!109, !716, !636, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !693, file: !14, line: 2005, baseType: !866, size: 64, offset: 1472)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!109, !636, !863}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !693, file: !14, line: 2006, baseType: !870, size: 64, offset: 1536)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!873, !676}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !875)
!875 = !{!876, !883}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !874, file: !14, line: 3193, baseType: !877, size: 128)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !878, line: 296, size: 128, elements: !879)
!878 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!879 = !{!880, !881, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !877, file: !878, line: 297, baseType: !297, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !877, file: !878, line: 299, baseType: !176, size: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !877, file: !878, line: 300, baseType: !157, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !874, file: !14, line: 3194, baseType: !477, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !677, file: !14, line: 655, baseType: !885, size: 64, offset: 448)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !887)
!887 = !{!888, !889, !890, !891, !892, !893, !2244, !2376, !2416, !2499, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2516, !2520, !2521, !2524, !2527, !2530, !2533, !2534, !2535, !2576, !4778, !4779, !4780, !4781, !4782, !4783, !4786, !4788, !4795, !4796, !4797, !4798, !4857, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !886, file: !14, line: 1191, baseType: !264, size: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !886, file: !14, line: 1192, baseType: !751, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !886, file: !14, line: 1193, baseType: !248, size: 8, offset: 160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !886, file: !14, line: 1194, baseType: !161, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !886, file: !14, line: 1195, baseType: !167, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !886, file: !14, line: 1196, baseType: !894, size: 64, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !896)
!896 = !{!897, !898, !899, !905, !909, !913, !917, !2232, !2233, !2234, !2236, !2237, !2238, !2240, !2241, !2242, !2243}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !895, file: !14, line: 2367, baseType: !516, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !895, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !895, file: !14, line: 2376, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!109, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !633, line: 21, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !895, file: !14, line: 2377, baseType: !906, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !895, file: !14, line: 2378, baseType: !910, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!636, !894, !109, !516, !157}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !895, file: !14, line: 2380, baseType: !914, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !885}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !895, file: !14, line: 2381, baseType: !918, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !920)
!920 = !{!921, !922, !923, !927, !1889, !1915, !1916, !1917, !1918, !1922, !1925, !1926, !1927, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1995, !1999, !2019, !2037, !2038, !2039, !2040, !2049, !2072, !2073, !2076, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2090, !2091, !2191, !2199, !2200, !2201, !2203, !2207, !2208, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2225, !2226, !2227, !2231}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !919, file: !6, line: 403, baseType: !5, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !919, file: !6, line: 406, baseType: !264, size: 128, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !919, file: !6, line: 409, baseType: !924, size: 448, offset: 192)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 448, elements: !925)
!925 = !{!926}
!926 = !DISubrange(count: 56)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !919, file: !6, line: 417, baseType: !928, size: 768, offset: 640)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !929)
!929 = !{!930, !1882, !1883, !1884, !1887}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !928, file: !6, line: 46, baseType: !931, size: 512)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !932, line: 64, size: 512, elements: !933)
!932 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!933 = !{!934, !935, !936, !938, !982, !1760, !1872, !1877, !1878, !1879, !1880, !1881}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !931, file: !932, line: 65, baseType: !516, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !931, file: !932, line: 66, baseType: !264, size: 128, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !931, file: !932, line: 67, baseType: !937, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !931, file: !932, line: 68, baseType: !939, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !932, line: 168, size: 768, elements: !941)
!941 = !{!942, !943, !944, !945}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !940, file: !932, line: 169, baseType: !264, size: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !940, file: !932, line: 170, baseType: !297, size: 32, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !940, file: !932, line: 171, baseType: !931, size: 512, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !940, file: !932, line: 172, baseType: !946, size: 64, offset: 704)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !932, line: 133, size: 192, elements: !949)
!949 = !{!950, !957, !962}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !948, file: !932, line: 134, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!109, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !948, file: !932, line: 135, baseType: !958, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!516, !955}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !948, file: !932, line: 136, baseType: !963, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!109, !955, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !932, line: 125, size: 20736, elements: !969)
!969 = !{!970, !972, !976, !977, !981}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !968, file: !932, line: 126, baseType: !971, size: 192)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 192, elements: !334)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !968, file: !932, line: 127, baseType: !973, size: 4096, offset: 192)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 4096, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !968, file: !932, line: 128, baseType: !109, size: 32, offset: 4288)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !968, file: !932, line: 129, baseType: !978, size: 16384, offset: 4320)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 16384, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 2048)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !968, file: !932, line: 130, baseType: !109, size: 32, offset: 20704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !931, file: !932, line: 69, baseType: !983, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !932, line: 116, size: 384, elements: !986)
!986 = !{!987, !991, !1010, !1722, !1750, !1754}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !985, file: !932, line: 117, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !937}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !985, file: !932, line: 118, baseType: !992, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !995, line: 254, size: 128, elements: !996)
!995 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!996 = !{!997, !1006}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !994, file: !995, line: 255, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!830, !937, !1001, !199}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !995, line: 30, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1002, file: !995, line: 31, baseType: !516, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1002, file: !995, line: 32, baseType: !680, size: 16, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !994, file: !995, line: 256, baseType: !1007, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!830, !937, !1001, !516, !201}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !985, file: !932, line: 119, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !995, line: 84, size: 320, elements: !1015)
!1015 = !{!1016, !1017, !1021, !1718, !1720}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1014, file: !995, line: 85, baseType: !516, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1014, file: !995, line: 86, baseType: !1018, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!680, !937, !1001, !109}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1014, file: !995, line: 88, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!680, !937, !1025, !109}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !995, line: 175, size: 512, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1709, !1713, !1714}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1026, file: !995, line: 176, baseType: !1002, size: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1026, file: !995, line: 177, baseType: !201, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1026, file: !995, line: 178, baseType: !157, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1026, file: !995, line: 179, baseType: !1032, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1051, !1052, !1053, !1701, !1702, !1703, !1706, !1707, !1708}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1036, file: !14, line: 473, baseType: !676, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1036, file: !14, line: 474, baseType: !877, size: 128, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1036, file: !14, line: 475, baseType: !452, size: 320, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1036, file: !14, line: 476, baseType: !176, size: 32, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1036, file: !14, line: 477, baseType: !238, size: 32, offset: 544)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1036, file: !14, line: 482, baseType: !1044, size: 128, offset: 576)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !445, line: 26, size: 128, elements: !1045)
!1045 = !{!1046, !1050}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1044, file: !445, line: 27, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !445, line: 12, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1047, file: !445, line: 13, baseType: !449, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1044, file: !445, line: 28, baseType: !449, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1036, file: !14, line: 483, baseType: !161, size: 64, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1036, file: !14, line: 484, baseType: !161, size: 64, offset: 768)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1036, file: !14, line: 485, baseType: !1054, size: 64, offset: 832)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1057)
!1057 = !{!1058, !1526, !1596, !1600, !1604, !1610, !1616, !1620, !1625, !1629, !1633, !1637, !1665, !1669, !1673, !1677, !1682, !1686, !1693, !1697}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1056, file: !14, line: 405, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!109, !1062, !1524}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1064)
!1064 = !{!1065, !1066, !1518, !1523}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !27, line: 75, baseType: !161, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !27, line: 83, baseType: !1067, size: 320, offset: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1063, file: !27, line: 83, size: 320, elements: !1068)
!1068 = !{!1069, !1090, !1104, !1108, !1517}
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !27, line: 84, baseType: !1070, size: 320)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1067, file: !27, line: 84, size: 320, elements: !1071)
!1071 = !{!1072, !1083, !1084, !1089}
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !27, line: 90, baseType: !1073, size: 128)
!1073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !27, line: 90, size: 128, elements: !1074)
!1074 = !{!1075, !1076, !1081, !1082}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1073, file: !27, line: 91, baseType: !264, size: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !27, line: 94, baseType: !1077, size: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !27, line: 94, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1077, file: !27, line: 96, baseType: !157, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1077, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1073, file: !27, line: 102, baseType: !264, size: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1073, file: !27, line: 103, baseType: !264, size: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1070, file: !27, line: 106, baseType: !1035, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !27, line: 107, baseType: !1085, size: 64, offset: 192)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !27, line: 107, size: 64, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1085, file: !27, line: 108, baseType: !161, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1085, file: !27, line: 109, baseType: !161, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1070, file: !27, line: 117, baseType: !161, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !27, line: 119, baseType: !1091, size: 320)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1067, file: !27, line: 119, size: 320, elements: !1092)
!1092 = !{!1093, !1094, !1097, !1098, !1099}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1091, file: !27, line: 124, baseType: !161, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1091, file: !27, line: 125, baseType: !1095, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1091, file: !27, line: 126, baseType: !161, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1091, file: !27, line: 127, baseType: !161, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !27, line: 128, baseType: !1100, size: 64, offset: 256)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !27, line: 128, size: 64, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1100, file: !27, line: 133, baseType: !161, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1100, file: !27, line: 138, baseType: !214, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !27, line: 141, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1067, file: !27, line: 141, size: 64, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1105, file: !27, line: 142, baseType: !161, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !27, line: 144, baseType: !1109, size: 128)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1067, file: !27, line: 144, size: 128, elements: !1110)
!1110 = !{!1111, !1516}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1109, file: !27, line: 146, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1114)
!1114 = !{!1115, !1124, !1145, !1156, !1157, !1158, !1159, !1498, !1499, !1500}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1113, file: !43, line: 127, baseType: !1116, size: 384)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1116, file: !43, line: 22, baseType: !161, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1116, file: !43, line: 23, baseType: !163, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1116, file: !43, line: 24, baseType: !163, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1116, file: !43, line: 25, baseType: !161, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1116, file: !43, line: 26, baseType: !161, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1116, file: !43, line: 27, baseType: !161, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1113, file: !43, line: 128, baseType: !1125, size: 128, offset: 384)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1126, line: 105, size: 128, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1125, file: !1126, line: 110, baseType: !161, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1125, file: !1126, line: 118, baseType: !1130, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1126, line: 95, size: 448, elements: !1132)
!1132 = !{!1133, !1134, !1140, !1141, !1142, !1143, !1144}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1131, file: !1126, line: 96, baseType: !214, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1131, file: !1126, line: 97, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1126, line: 60, baseType: !1137)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1131, file: !1126, line: 98, baseType: !1135, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1131, file: !1126, line: 99, baseType: !513, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1131, file: !1126, line: 100, baseType: !513, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1131, file: !1126, line: 101, baseType: !287, size: 128, align: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1131, file: !1126, line: 102, baseType: !1139, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1113, file: !43, line: 129, baseType: !1146, size: 256, offset: 512)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1147, line: 26, size: 256, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1146, file: !1147, line: 27, baseType: !7, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1146, file: !1147, line: 28, baseType: !1151, size: 192, offset: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1152, line: 43, size: 192, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1151, file: !1152, line: 44, baseType: !225, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1151, file: !1152, line: 45, baseType: !264, size: 128, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1113, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1113, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1113, file: !43, line: 132, baseType: !161, size: 64, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1113, file: !43, line: 133, baseType: !1160, size: 64, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !1163)
!1163 = !{!1164, !1168, !1494}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1162, file: !43, line: 83, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !1062}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1162, file: !43, line: 89, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1175, line: 512, size: 896, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1176 = !{!1177, !1461, !1462, !1469, !1476, !1486, !1487, !1488, !1490, !1492}
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !1175, line: 513, baseType: !1178, size: 320)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !1175, line: 513, size: 320, elements: !1179)
!1179 = !{!1180, !1457, !1458, !1459, !1460}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1178, file: !1175, line: 514, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1183)
!1183 = !{!1184, !1193, !1362, !1368, !1375, !1376, !1381, !1382, !1387, !1388, !1391, !1450, !1451, !1452, !1453, !1454, !1455}
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !27, line: 628, baseType: !1185, size: 128)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !27, line: 628, size: 128, elements: !1186)
!1186 = !{!1187, !1192}
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !27, line: 629, baseType: !1188, size: 128)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1185, file: !27, line: 629, size: 128, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1188, file: !27, line: 631, baseType: !161, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1188, file: !27, line: 632, baseType: !161, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1185, file: !27, line: 635, baseType: !287, size: 128, align: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1182, file: !27, line: 639, baseType: !1194, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1196)
!1196 = !{!1197, !1360}
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !27, line: 734, baseType: !1198, size: 10240)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1195, file: !27, line: 734, size: 10240, elements: !1199)
!1199 = !{!1200, !1204, !1218, !1222, !1223, !1224, !1225, !1226, !1227, !1236, !1237, !1238, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1277, !1279, !1282, !1329, !1330, !1331, !1334, !1335, !1336, !1339, !1340, !1341, !1347, !1348}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !27, line: 739, baseType: !1201, size: 512, align: 512)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !27, line: 739, size: 512, align: 512, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1201, file: !27, line: 747, baseType: !238, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1198, file: !27, line: 750, baseType: !1205, size: 128, offset: 512)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1206, line: 218, size: 128, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1207 = !{!1208, !1216, !1217}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1206, line: 219, baseType: !1209, size: 32)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1206, line: 219, size: 32, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1209, file: !1206, line: 220, baseType: !297, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1209, file: !1206, line: 221, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1206, line: 197, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1206, line: 197, elements: !1215)
!1215 = !{}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1205, file: !1206, line: 223, baseType: !7, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1205, file: !1206, line: 224, baseType: !157, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1198, file: !27, line: 752, baseType: !1219, size: 64, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!161, !794, !161, !161, !161, !161}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1198, file: !27, line: 756, baseType: !161, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1198, file: !27, line: 757, baseType: !161, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1198, file: !27, line: 760, baseType: !161, size: 64, offset: 832)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1198, file: !27, line: 761, baseType: !161, size: 64, offset: 896)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1198, file: !27, line: 763, baseType: !161, size: 64, offset: 960)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1198, file: !27, line: 764, baseType: !1228, size: 64, offset: 1024)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1230, line: 299, baseType: !1231)
!1230 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1230, line: 299, size: 64, elements: !1232)
!1232 = !{!1233}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1231, file: !1230, line: 299, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1235, line: 18, baseType: !161)
!1235 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1198, file: !27, line: 773, baseType: !238, size: 32, offset: 1088)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1198, file: !27, line: 785, baseType: !238, size: 32, offset: 1120)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1198, file: !27, line: 795, baseType: !1239, size: 64, offset: 1152)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1240, file: !27, line: 727, baseType: !420, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1240, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1198, file: !27, line: 801, baseType: !161, size: 64, offset: 1216)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1198, file: !27, line: 804, baseType: !214, size: 64, offset: 1280)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1198, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1198, file: !27, line: 808, baseType: !297, size: 32, offset: 1376)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1198, file: !27, line: 823, baseType: !452, size: 320, offset: 1408)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1198, file: !27, line: 825, baseType: !264, size: 128, offset: 1728)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1198, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1198, file: !27, line: 849, baseType: !161, size: 64, offset: 1920)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1198, file: !27, line: 850, baseType: !161, size: 64, offset: 1984)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1198, file: !27, line: 852, baseType: !161, size: 64, offset: 2048)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1198, file: !27, line: 853, baseType: !161, size: 64, offset: 2112)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1198, file: !27, line: 854, baseType: !216, size: 64, offset: 2176)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1198, file: !27, line: 855, baseType: !161, size: 64, offset: 2240)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1198, file: !27, line: 856, baseType: !161, size: 64, offset: 2304)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1198, file: !27, line: 857, baseType: !161, size: 64, offset: 2368)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1198, file: !27, line: 858, baseType: !161, size: 64, offset: 2432)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1198, file: !27, line: 865, baseType: !647, size: 32, offset: 2496)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1198, file: !27, line: 867, baseType: !297, size: 32, offset: 2528)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1198, file: !27, line: 869, baseType: !161, size: 64, offset: 2560)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1198, file: !27, line: 869, baseType: !161, size: 64, offset: 2624)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1198, file: !27, line: 869, baseType: !161, size: 64, offset: 2688)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1198, file: !27, line: 869, baseType: !161, size: 64, offset: 2752)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1198, file: !27, line: 870, baseType: !161, size: 64, offset: 2816)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1198, file: !27, line: 870, baseType: !161, size: 64, offset: 2880)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1198, file: !27, line: 870, baseType: !161, size: 64, offset: 2944)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1198, file: !27, line: 871, baseType: !161, size: 64, offset: 3008)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1198, file: !27, line: 871, baseType: !161, size: 64, offset: 3072)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1198, file: !27, line: 871, baseType: !161, size: 64, offset: 3136)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1198, file: !27, line: 871, baseType: !161, size: 64, offset: 3200)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1198, file: !27, line: 873, baseType: !1274, size: 3328, offset: 3264)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 3328, elements: !1275)
!1275 = !{!1276}
!1276 = !DISubrange(count: 52)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1198, file: !27, line: 875, baseType: !1278, size: 1280, offset: 6592)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 1280, elements: !360)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1198, file: !27, line: 877, baseType: !1280, size: 64, offset: 7872)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1198, file: !27, line: 880, baseType: !1283, size: 1088, offset: 7936)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1284, line: 72, baseType: !1285)
!1284 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 23, size: 1088, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1294, !1295, !1296, !1297, !1324, !1325, !1326}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1285, file: !1284, line: 28, baseType: !420, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1285, file: !1284, line: 38, baseType: !216, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1285, file: !1284, line: 40, baseType: !161, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1285, file: !1284, line: 43, baseType: !452, size: 320, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1285, file: !1284, line: 44, baseType: !1292, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1284, line: 44, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !1284, line: 48, baseType: !161, size: 64, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1285, file: !1284, line: 59, baseType: !210, size: 256, offset: 640)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1285, file: !1284, line: 60, baseType: !157, size: 64, offset: 896)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1285, file: !1284, line: 61, baseType: !1298, size: 64, offset: 960)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1301, line: 13, size: 1216, elements: !1302)
!1301 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1300, file: !1301, line: 14, baseType: !157, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1300, file: !1301, line: 15, baseType: !161, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1300, file: !1301, line: 17, baseType: !161, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1300, file: !1301, line: 17, baseType: !161, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1300, file: !1301, line: 18, baseType: !161, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1300, file: !1301, line: 18, baseType: !161, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1300, file: !1301, line: 19, baseType: !1310, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1300, file: !1301, line: 21, baseType: !158, size: 64, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1300, file: !1301, line: 23, baseType: !158, size: 64, offset: 512)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1300, file: !1301, line: 24, baseType: !158, size: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1300, file: !1301, line: 25, baseType: !158, size: 64, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1300, file: !1301, line: 26, baseType: !158, size: 64, offset: 704)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1300, file: !1301, line: 27, baseType: !158, size: 64, offset: 768)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1300, file: !1301, line: 28, baseType: !158, size: 64, offset: 832)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1300, file: !1301, line: 29, baseType: !158, size: 64, offset: 896)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1300, file: !1301, line: 30, baseType: !158, size: 64, offset: 960)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1300, file: !1301, line: 31, baseType: !158, size: 64, offset: 1024)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1300, file: !1301, line: 32, baseType: !158, size: 64, offset: 1088)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1300, file: !1301, line: 33, baseType: !158, size: 64, offset: 1152)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1285, file: !1284, line: 63, baseType: !238, size: 32, offset: 1024)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1285, file: !1284, line: 69, baseType: !254, size: 16, offset: 1056)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1285, file: !1284, line: 70, baseType: !1327, size: 16, offset: 1072)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !221, line: 18, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !223, line: 23, baseType: !482)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1198, file: !27, line: 882, baseType: !161, size: 64, offset: 9024)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1198, file: !27, line: 885, baseType: !297, size: 32, offset: 9088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1198, file: !27, line: 886, baseType: !1332, size: 64, offset: 9152)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1198, file: !27, line: 901, baseType: !598, size: 64, offset: 9216)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1198, file: !27, line: 904, baseType: !794, size: 64, offset: 9280)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1198, file: !27, line: 906, baseType: !1337, size: 64, offset: 9344)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1198, file: !27, line: 930, baseType: !238, size: 32, offset: 9408)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1198, file: !27, line: 933, baseType: !238, size: 32, offset: 9440)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1198, file: !27, line: 935, baseType: !1342, size: 64, offset: 9472)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1342, file: !68, line: 104, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1198, file: !27, line: 940, baseType: !214, size: 64, offset: 9536)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1198, file: !27, line: 942, baseType: !1349, size: 256, offset: 9600)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1350, line: 98, size: 256, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1349, file: !1350, line: 99, baseType: !214, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1349, file: !1350, line: 100, baseType: !264, size: 128, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1349, file: !1350, line: 101, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1350, line: 21, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1195, file: !27, line: 986, baseType: !1361, offset: 10240)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !379)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1182, file: !27, line: 640, baseType: !1363, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1230, line: 297, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1230, line: 297, size: 64, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1364, file: !1230, line: 297, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1235, line: 19, baseType: !161)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !27, line: 646, baseType: !1369, size: 64, offset: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !27, line: 646, size: 64, elements: !1370)
!1370 = !{!1371, !1374}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1369, file: !27, line: 647, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !161)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1369, file: !27, line: 648, baseType: !1373, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1182, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1182, file: !27, line: 667, baseType: !1377, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1378, file: !27, line: 580, baseType: !452, size: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1182, file: !27, line: 670, baseType: !513, size: 8, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1182, file: !27, line: 681, baseType: !1383, size: 256, offset: 512)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !27, line: 678, size: 256, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1383, file: !27, line: 679, baseType: !444, size: 192, align: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1383, file: !27, line: 680, baseType: !161, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1182, file: !27, line: 689, baseType: !264, size: 128, offset: 768)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1182, file: !27, line: 691, baseType: !1389, size: 64, offset: 896)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1182, file: !27, line: 694, baseType: !1392, size: 64, offset: 960)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1175, line: 563, size: 1024, elements: !1395)
!1395 = !{!1396, !1400, !1401, !1405, !1409, !1413, !1414, !1418, !1422, !1426, !1427, !1428, !1432, !1436, !1442, !1446}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1394, file: !1175, line: 564, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !1181}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1394, file: !1175, line: 569, baseType: !1397, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1394, file: !1175, line: 571, baseType: !1402, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!109, !1181, !161}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1394, file: !1175, line: 572, baseType: !1406, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!109, !1181}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1394, file: !1175, line: 578, baseType: !1410, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!109, !1181, !161, !161, !161}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1394, file: !1175, line: 580, baseType: !1169, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1394, file: !1175, line: 581, baseType: !1415, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1172, !1173, !7}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1394, file: !1175, line: 582, baseType: !1419, size: 64, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1172, !1173, !161, !161}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1394, file: !1175, line: 584, baseType: !1423, size: 64, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!161, !1181}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1394, file: !1175, line: 588, baseType: !1169, size: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1394, file: !1175, line: 591, baseType: !1169, size: 64, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1394, file: !1175, line: 597, baseType: !1429, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!109, !1181, !161, !157, !109, !109}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1394, file: !1175, line: 603, baseType: !1433, size: 64, offset: 768)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!516, !1181}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1394, file: !1175, line: 613, baseType: !1437, size: 64, offset: 832)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!109, !1181, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1394, file: !1175, line: 625, baseType: !1443, size: 64, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!1440, !1181, !161}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1394, file: !1175, line: 633, baseType: !1447, size: 64, offset: 960)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1062, !1181, !161}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1182, file: !27, line: 697, baseType: !161, size: 64, offset: 1024)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1182, file: !27, line: 699, baseType: !794, size: 64, offset: 1088)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1182, file: !27, line: 700, baseType: !157, size: 64, offset: 1152)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1182, file: !27, line: 711, baseType: !214, size: 64, offset: 1216)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1182, file: !27, line: 717, baseType: !1440, size: 64, offset: 1280)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1182, file: !27, line: 722, baseType: !1456, offset: 1344)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !1215)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1178, file: !1175, line: 515, baseType: !176, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1178, file: !1175, line: 516, baseType: !161, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1178, file: !1175, line: 517, baseType: !161, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1178, file: !1175, line: 518, baseType: !161, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1174, file: !1175, line: 520, baseType: !26, size: 32, offset: 320)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1174, file: !1175, line: 522, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1235, line: 22, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1235, line: 22, size: 64, elements: !1466)
!1466 = !{!1467}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1465, file: !1235, line: 22, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1235, line: 15, baseType: !161)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1174, file: !1175, line: 524, baseType: !1470, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1230, line: 372, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1230, line: 372, size: 64, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1472, file: !1230, line: 372, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1235, line: 16, baseType: !161)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !1175, line: 527, baseType: !1477, size: 64, offset: 512)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !1175, line: 527, size: 64, elements: !1478)
!1478 = !{!1479, !1485}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1477, file: !1175, line: 528, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1235, line: 21, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1235, line: 21, size: 64, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1481, file: !1235, line: 21, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1235, line: 14, baseType: !161)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1477, file: !1175, line: 529, baseType: !1464, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1174, file: !1175, line: 534, baseType: !1062, size: 64, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1174, file: !1175, line: 535, baseType: !1062, size: 64, offset: 640)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1174, file: !1175, line: 541, baseType: !1489, size: 64, offset: 704)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1174, file: !1175, line: 545, baseType: !1491, size: 64, offset: 768)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1174, file: !1175, line: 549, baseType: !1493, size: 64, offset: 832)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1230, line: 520, baseType: !1062)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1162, file: !43, line: 100, baseType: !1495, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!109, !1112, !161, !161, !109}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1113, file: !43, line: 134, baseType: !157, size: 64, offset: 960)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1113, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !43, line: 136, baseType: !1501, size: 128, offset: 1088)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !43, line: 136, size: 128, elements: !1502)
!1502 = !{!1503, !1509}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1501, file: !43, line: 137, baseType: !1504, size: 128)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1505, line: 6, size: 128, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1504, file: !1505, line: 7, baseType: !420, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1504, file: !1505, line: 8, baseType: !420, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !43, line: 138, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !43, line: 138, elements: !1511)
!1511 = !{!1512, !1514}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1510, file: !43, line: 138, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1510, file: !43, line: 138, elements: !1215)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1510, file: !43, line: 138, baseType: !1515)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, elements: !379)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1109, file: !27, line: 147, baseType: !157, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1067, file: !27, line: 161, baseType: !287, size: 128, align: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !27, line: 164, baseType: !1519, size: 32, offset: 384)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1063, file: !27, line: 164, size: 32, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1519, file: !27, line: 169, baseType: !238, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1519, file: !27, line: 177, baseType: !7, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1063, file: !27, line: 181, baseType: !238, size: 32, offset: 416)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1056, file: !14, line: 406, baseType: !1527, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!109, !794, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !1532)
!1532 = !{!1533, !1563, !1577}
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1531, file: !27, line: 295, baseType: !1534, size: 512)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1531, file: !27, line: 295, size: 512, elements: !1535)
!1535 = !{!1536, !1562}
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !27, line: 296, baseType: !1537, size: 448)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !27, line: 296, size: 448, elements: !1538)
!1538 = !{!1539, !1540, !1549, !1550, !1551, !1560, !1561}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1537, file: !27, line: 298, baseType: !161, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !27, line: 299, baseType: !1541, size: 128, offset: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1537, file: !27, line: 299, size: 128, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1541, file: !27, line: 300, baseType: !264, size: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !27, line: 302, baseType: !1545, size: 128)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1541, file: !27, line: 302, size: 128, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1545, file: !27, line: 303, baseType: !157, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1545, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1537, file: !27, line: 310, baseType: !1035, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1537, file: !27, line: 311, baseType: !161, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !27, line: 312, baseType: !1552, size: 64, offset: 320)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1537, file: !27, line: 312, size: 64, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1552, file: !27, line: 313, baseType: !157, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1552, file: !27, line: 314, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1557, file: !27, line: 256, baseType: !161, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1537, file: !27, line: 316, baseType: !238, size: 32, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1537, file: !27, line: 317, baseType: !238, size: 32, offset: 416)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1534, file: !27, line: 323, baseType: !1063, size: 512, align: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1531, file: !27, line: 325, baseType: !1564, size: 512, offset: 512)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1531, file: !27, line: 325, size: 512, elements: !1565)
!1565 = !{!1566, !1576}
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !27, line: 326, baseType: !1567, size: 320)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1564, file: !27, line: 326, size: 320, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1567, file: !27, line: 327, baseType: !161, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1567, file: !27, line: 328, baseType: !161, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1567, file: !27, line: 329, baseType: !161, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1567, file: !27, line: 331, baseType: !238, size: 32, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1567, file: !27, line: 332, baseType: !238, size: 32, offset: 224)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1567, file: !27, line: 333, baseType: !238, size: 32, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1567, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1564, file: !27, line: 339, baseType: !1063, size: 512, align: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1531, file: !27, line: 341, baseType: !1578, size: 512, offset: 1024)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1531, file: !27, line: 341, size: 512, elements: !1579)
!1579 = !{!1580, !1589, !1595}
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !27, line: 342, baseType: !1581, size: 384)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !27, line: 342, size: 384, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1581, file: !27, line: 343, baseType: !161, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1581, file: !27, line: 344, baseType: !161, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1581, file: !27, line: 346, baseType: !157, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1581, file: !27, line: 347, baseType: !157, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1581, file: !27, line: 348, baseType: !157, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1581, file: !27, line: 349, baseType: !157, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !27, line: 352, baseType: !1590, size: 256)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !27, line: 352, size: 256, elements: !1591)
!1591 = !{!1592, !1593, !1594}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1590, file: !27, line: 353, baseType: !161, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1590, file: !27, line: 354, baseType: !161, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1590, file: !27, line: 356, baseType: !264, size: 128, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1578, file: !27, line: 359, baseType: !1063, size: 512, align: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1056, file: !14, line: 409, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!109, !1035, !1524}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1056, file: !14, line: 412, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!513, !1035, !1530}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1056, file: !14, line: 414, baseType: !1605, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1608}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1056, file: !14, line: 416, baseType: !1611, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!109, !794, !1035, !167, !7, !1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1056, file: !14, line: 419, baseType: !1617, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!109, !794, !1035, !167, !7, !7, !1062, !157}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1056, file: !14, line: 424, baseType: !1621, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1624, !1035, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !160, line: 131, baseType: !420)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1056, file: !14, line: 425, baseType: !1626, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !1530, !201, !201}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1056, file: !14, line: 426, baseType: !1630, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!513, !1530, !176}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1056, file: !14, line: 427, baseType: !1634, size: 64, offset: 640)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !1530}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1056, file: !14, line: 428, baseType: !1638, size: 64, offset: 704)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!830, !1641, !1663}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1643)
!1643 = !{!1644, !1645, !1646, !1650, !1651, !1652, !1653}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1642, file: !14, line: 374, baseType: !794, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1642, file: !14, line: 375, baseType: !167, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1642, file: !14, line: 376, baseType: !1647, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !1641, !158}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1642, file: !14, line: 377, baseType: !157, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1642, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1642, file: !14, line: 379, baseType: !254, size: 16, offset: 288)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !14, line: 380, baseType: !1654, size: 64, offset: 320)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1642, file: !14, line: 380, size: 64, elements: !1655)
!1655 = !{!1656, !1659}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1654, file: !14, line: 386, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1654, file: !14, line: 395, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!830, !157}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1056, file: !14, line: 433, baseType: !1666, size: 64, offset: 768)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!109, !1035, !1530, !1530, !74}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1056, file: !14, line: 435, baseType: !1670, size: 64, offset: 832)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!109, !1530}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1056, file: !14, line: 436, baseType: !1674, size: 64, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!513, !1530, !201, !201}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1056, file: !14, line: 438, baseType: !1678, size: 64, offset: 960)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1530, !1681, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1056, file: !14, line: 439, baseType: !1683, size: 64, offset: 1024)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!109, !1035, !1062}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1056, file: !14, line: 442, baseType: !1687, size: 64, offset: 1088)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!109, !1690, !794, !1692}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1056, file: !14, line: 444, baseType: !1694, size: 64, offset: 1152)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !794}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1056, file: !14, line: 445, baseType: !1698, size: 64, offset: 1216)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!109, !1641, !1663}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1036, file: !14, line: 486, baseType: !161, size: 64, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1036, file: !14, line: 487, baseType: !452, size: 320, offset: 960)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1036, file: !14, line: 488, baseType: !1704, size: 32, offset: 1280)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1705, line: 8, baseType: !477)
!1705 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1036, file: !14, line: 489, baseType: !297, size: 32, offset: 1312)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1036, file: !14, line: 490, baseType: !264, size: 128, offset: 1344)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1036, file: !14, line: 491, baseType: !157, size: 64, offset: 1472)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1026, file: !995, line: 180, baseType: !1710, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!830, !794, !937, !1025, !199, !167, !201}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1026, file: !995, line: 182, baseType: !1710, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1026, file: !995, line: 184, baseType: !1715, size: 64, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!109, !794, !937, !1025, !1181}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1014, file: !995, line: 90, baseType: !1719, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1014, file: !995, line: 91, baseType: !1721, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !985, file: !932, line: 120, baseType: !1723, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!1726, !955}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1729)
!1729 = !{!1730, !1731, !1735, !1739, !1745, !1749}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1728, file: !82, line: 40, baseType: !81, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1728, file: !82, line: 41, baseType: !1732, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!513}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1728, file: !82, line: 42, baseType: !1736, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!157}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1728, file: !82, line: 43, baseType: !1740, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1310, !1743}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1728, file: !82, line: 44, baseType: !1746, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1310}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1728, file: !82, line: 45, baseType: !708, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !985, file: !932, line: 121, baseType: !1751, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!1310, !955}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !985, file: !932, line: 122, baseType: !1755, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !955, !1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !931, file: !932, line: 70, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1763, line: 190, size: 1152, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1764 = !{!1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1864, !1865, !1866, !1867, !1868, !1871}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1762, file: !1763, line: 191, baseType: !238, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1762, file: !1763, line: 192, baseType: !238, size: 32, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1762, file: !1763, line: 202, baseType: !1761, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1762, file: !1763, line: 203, baseType: !516, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1762, file: !1763, line: 205, baseType: !444, size: 192, align: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1762, file: !1763, line: 207, baseType: !1310, size: 64, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1762, file: !1763, line: 208, baseType: !7, size: 32, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !1763, line: 209, baseType: !1773, size: 256, offset: 512)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !1763, line: 209, size: 256, elements: !1774)
!1774 = !{!1775, !1784, !1788}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1773, file: !1763, line: 210, baseType: !1776, size: 256)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1763, line: 153, size: 256, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1783}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1776, file: !1763, line: 154, baseType: !161, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1776, file: !1763, line: 156, baseType: !1047, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1776, file: !1763, line: 162, baseType: !1781, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1763, line: 162, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1776, file: !1763, line: 167, baseType: !161, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1773, file: !1763, line: 211, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1763, line: 170, size: 64, elements: !1786)
!1786 = !{!1787}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1785, file: !1763, line: 171, baseType: !1761, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1773, file: !1763, line: 212, baseType: !1789, size: 256)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1763, line: 174, size: 256, elements: !1790)
!1790 = !{!1791, !1859, !1862, !1863}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1789, file: !1763, line: 175, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1763, line: 271, size: 768, elements: !1795)
!1795 = !{!1796, !1816, !1820, !1824, !1825, !1829, !1833, !1837, !1838, !1839, !1840, !1855}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1794, file: !1763, line: 276, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!109, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1763, line: 251, size: 1216, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1801, file: !1763, line: 253, baseType: !1761, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1801, file: !1763, line: 254, baseType: !794, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1801, file: !1763, line: 255, baseType: !195, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1801, file: !1763, line: 256, baseType: !157, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1801, file: !1763, line: 259, baseType: !210, size: 256, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1801, file: !1763, line: 260, baseType: !210, size: 256, offset: 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1801, file: !1763, line: 261, baseType: !109, size: 32, offset: 768)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1801, file: !1763, line: 262, baseType: !264, size: 128, offset: 832)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1801, file: !1763, line: 263, baseType: !199, size: 64, offset: 960)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1801, file: !1763, line: 265, baseType: !201, size: 64, offset: 1024)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1801, file: !1763, line: 266, baseType: !513, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1801, file: !1763, line: 267, baseType: !513, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1801, file: !1763, line: 268, baseType: !1392, size: 64, offset: 1152)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1794, file: !1763, line: 277, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1800}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1794, file: !1763, line: 290, baseType: !1821, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!109, !195, !157}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1794, file: !1763, line: 292, baseType: !192, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1794, file: !1763, line: 293, baseType: !1826, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!157, !195, !157, !166}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1794, file: !1763, line: 294, baseType: !1830, size: 64, offset: 320)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !195, !157}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1794, file: !1763, line: 296, baseType: !1834, size: 64, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!830, !1800, !199, !201, !167}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1794, file: !1763, line: 306, baseType: !201, size: 64, offset: 448)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1794, file: !1763, line: 313, baseType: !513, size: 8, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1794, file: !1763, line: 314, baseType: !1834, size: 64, offset: 576)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1794, file: !1763, line: 317, baseType: !1841, size: 64, offset: 640)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!164, !1800, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1846, line: 37, size: 128, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1847 = !{!1848, !1854}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1845, file: !1846, line: 38, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1846, line: 31, baseType: !1850)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !794, !1853, !1844}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1845, file: !1846, line: 39, baseType: !164, size: 32, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1794, file: !1763, line: 320, baseType: !1856, size: 64, offset: 704)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!109, !1800, !1181}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1789, file: !1763, line: 176, baseType: !1860, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1763, line: 35, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1789, file: !1763, line: 177, baseType: !167, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1789, file: !1763, line: 178, baseType: !1761, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1762, file: !1763, line: 215, baseType: !157, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1762, file: !1763, line: 221, baseType: !420, size: 64, offset: 832)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1762, file: !1763, line: 223, baseType: !256, size: 16, offset: 896)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1762, file: !1763, line: 224, baseType: !680, size: 16, offset: 912)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1762, file: !1763, line: 225, baseType: !1869, size: 64, offset: 960)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1763, line: 36, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1762, file: !1763, line: 227, baseType: !287, size: 128, align: 64, offset: 1024)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !931, file: !932, line: 71, baseType: !1873, size: 32, offset: 448)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1874, line: 19, size: 32, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1875 = !{!1876}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1873, file: !1874, line: 20, baseType: !342, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !931, file: !932, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !931, file: !932, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !931, file: !932, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !931, file: !932, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !931, file: !932, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !928, file: !6, line: 47, baseType: !918, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !928, file: !6, line: 48, baseType: !937, size: 64, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !928, file: !6, line: 49, baseType: !1885, size: 64, offset: 640)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !928, file: !6, line: 50, baseType: !1888, size: 64, offset: 704)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !919, file: !6, line: 418, baseType: !1890, size: 64, offset: 1408)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1892)
!1892 = !{!1893, !1894, !1899, !1903, !1907, !1911}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1891, file: !6, line: 54, baseType: !1002, size: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1891, file: !6, line: 55, baseType: !1895, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!830, !1890, !1898, !199}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1891, file: !6, line: 57, baseType: !1900, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!830, !1890, !1898, !516, !201}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1891, file: !6, line: 59, baseType: !1904, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !918, !516}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1891, file: !6, line: 60, baseType: !1908, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!109, !918}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1891, file: !6, line: 61, baseType: !1912, size: 64, offset: 384)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !918}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !919, file: !6, line: 419, baseType: !516, size: 64, offset: 1472)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !919, file: !6, line: 420, baseType: !516, size: 64, offset: 1536)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !919, file: !6, line: 421, baseType: !937, size: 64, offset: 1600)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !919, file: !6, line: 424, baseType: !1919, size: 64, offset: 1664)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !919, file: !6, line: 425, baseType: !1923, size: 64, offset: 1728)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !919, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !919, file: !6, line: 435, baseType: !210, size: 256, offset: 1856)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !919, file: !6, line: 437, baseType: !1928, size: 64, offset: 2112)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1930, line: 69, size: 320, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1931 = !{!1932, !1933, !1934, !1951, !1953, !1957, !1958}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1929, file: !1930, line: 70, baseType: !516, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1929, file: !1930, line: 71, baseType: !918, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1929, file: !1930, line: 72, baseType: !1935, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1930, line: 47, size: 256, elements: !1938)
!1938 = !{!1939, !1940, !1946, !1950}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1937, file: !1930, line: 49, baseType: !7, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1937, file: !1930, line: 51, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!109, !516, !1944}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1937, file: !1930, line: 53, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!109, !199, !1944}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1937, file: !1930, line: 55, baseType: !708, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1929, file: !1930, line: 73, baseType: !1952, size: 16, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1929, file: !1930, line: 74, baseType: !1954, size: 8, offset: 208)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !221, line: 16, baseType: !1955)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !223, line: 20, baseType: !1956)
!1956 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1929, file: !1930, line: 75, baseType: !246, size: 8, offset: 216)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1929, file: !1930, line: 76, baseType: !1959, size: 64, offset: 256)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1929, file: !1930, line: 76, size: 64, elements: !1960)
!1960 = !{!1961, !1962, !1969}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1959, file: !1930, line: 77, baseType: !157, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1959, file: !1930, line: 78, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1930, line: 86, size: 128, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1965, file: !1930, line: 87, baseType: !7, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1965, file: !1930, line: 88, baseType: !199, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1959, file: !1930, line: 79, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1930, line: 92, size: 256, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1978, !1979}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1972, file: !1930, line: 94, baseType: !7, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1972, file: !1930, line: 95, baseType: !7, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1972, file: !1930, line: 96, baseType: !1977, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1972, file: !1930, line: 97, baseType: !1935, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1972, file: !1930, line: 98, baseType: !157, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !919, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !919, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !919, file: !6, line: 442, baseType: !1919, size: 64, offset: 2240)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !919, file: !6, line: 443, baseType: !1923, size: 64, offset: 2304)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !919, file: !6, line: 444, baseType: !513, size: 8, offset: 2368)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !919, file: !6, line: 451, baseType: !513, size: 8, offset: 2376)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !919, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !919, file: !6, line: 455, baseType: !1988, size: 64, offset: 2432)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1990, line: 23, size: 96, elements: !1991)
!1990 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1991 = !{!1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1989, file: !1990, line: 24, baseType: !109, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1989, file: !1990, line: 24, baseType: !109, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1989, file: !1990, line: 24, baseType: !109, size: 32, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !919, file: !6, line: 458, baseType: !1996, size: 64, offset: 2496)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!109}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !919, file: !6, line: 460, baseType: !2000, size: 4032, align: 512, offset: 2560)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2001, size: 4032, elements: !2017)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2001, file: !6, line: 363, baseType: !157, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2001, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2001, file: !6, line: 367, baseType: !2006, size: 448, offset: 128)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2006, file: !6, line: 320, baseType: !918, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2006, file: !6, line: 321, baseType: !2010, size: 384, offset: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2011, line: 40, size: 384, elements: !2012)
!2011 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2010, file: !2011, line: 41, baseType: !2014, size: 384, align: 64)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 384, align: 64, elements: !2015)
!2015 = !{!2016}
!2016 = !DISubrange(count: 2)
!2017 = !{!2018}
!2018 = !DISubrange(count: 7)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !919, file: !6, line: 463, baseType: !2020, size: 192, offset: 6592)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2021, line: 8, size: 192, elements: !2022)
!2021 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2022 = !{!2023, !2024, !2026}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2020, file: !2021, line: 10, baseType: !7, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2020, file: !2021, line: 11, baseType: !2025, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2020, file: !2021, line: 12, baseType: !2027, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2029, line: 59, size: 48, elements: !2030)
!2029 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2030 = !{!2031, !2032, !2033, !2034, !2035, !2036}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2028, file: !2029, line: 60, baseType: !1327, size: 16)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2028, file: !2029, line: 61, baseType: !1327, size: 16, offset: 16)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2028, file: !2029, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2028, file: !2029, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2028, file: !2029, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2028, file: !2029, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !919, file: !6, line: 465, baseType: !161, size: 64, offset: 6784)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !919, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !919, file: !6, line: 470, baseType: !264, size: 128, offset: 6912)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !919, file: !6, line: 471, baseType: !2041, size: 64, offset: 7040)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2043, line: 33, size: 96, elements: !2044)
!2043 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2042, file: !2043, line: 37, baseType: !109, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2042, file: !2043, line: 43, baseType: !109, size: 32, offset: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2042, file: !2043, line: 45, baseType: !256, size: 16, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !2043, line: 47, baseType: !256, size: 16, offset: 80)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !919, file: !6, line: 476, baseType: !2050, size: 64, offset: 7104)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2052)
!2052 = !{!2053, !2069, !2070, !2071}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2051, file: !6, line: 379, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2056, line: 204, baseType: !2057)
!2056 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2056, line: 197, size: 192, elements: !2058)
!2058 = !{!2059, !2061, !2062, !2063, !2065, !2067}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2057, file: !2056, line: 198, baseType: !2060, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2056, line: 21, baseType: !478)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2057, file: !2056, line: 199, baseType: !248, size: 8, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2057, file: !2056, line: 200, baseType: !248, size: 8, offset: 40)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2057, file: !2056, line: 201, baseType: !2064, size: 16, offset: 48)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2056, line: 17, baseType: !255)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2057, file: !2056, line: 202, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2056, line: 16, baseType: !421)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2057, file: !2056, line: 203, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2056, line: 22, baseType: !421)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2051, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2051, file: !6, line: 381, baseType: !199, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2051, file: !6, line: 382, baseType: !199, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !919, file: !6, line: 477, baseType: !2051, size: 256, offset: 7168)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !919, file: !6, line: 480, baseType: !2074, size: 64, offset: 7424)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !919, file: !6, line: 483, baseType: !2077, size: 64, offset: 7488)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !919, file: !6, line: 488, baseType: !199, size: 64, offset: 7552)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !919, file: !6, line: 492, baseType: !157, size: 64, offset: 7616)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !919, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !919, file: !6, line: 495, baseType: !157, size: 64, offset: 7744)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !919, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !919, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !919, file: !6, line: 500, baseType: !2086, size: 64, offset: 7872)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2088, line: 45, baseType: !2089)
!2088 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !919, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !919, file: !6, line: 504, baseType: !2092, size: 64, offset: 8000)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2095, line: 96, size: 192, elements: !2096)
!2095 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2096 = !{!2097, !2098, !2152, !2155}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2094, file: !2095, line: 97, baseType: !7, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2094, file: !2095, line: 98, baseType: !2099, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2095, line: 24, size: 3072, elements: !2101)
!2101 = !{!2102, !2104, !2105, !2106, !2107, !2121, !2122, !2123, !2124, !2136, !2137, !2138, !2149, !2150, !2151}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2100, file: !2095, line: 26, baseType: !2103, size: 128)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 128, elements: !2015)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2100, file: !2095, line: 27, baseType: !2103, size: 128, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2100, file: !2095, line: 28, baseType: !109, size: 32, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2100, file: !2095, line: 31, baseType: !297, size: 32, align: 512, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2100, file: !2095, line: 32, baseType: !2108, size: 960, offset: 576)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2109, line: 206, size: 960, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2110 = !{!2111, !2112, !2115, !2117, !2118, !2120}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2108, file: !2109, line: 207, baseType: !290, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2108, file: !2109, line: 208, baseType: !2113, size: 256, offset: 64)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2114, size: 256, elements: !360)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2108, file: !2109, line: 209, baseType: !2116, size: 256, offset: 320)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !360)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2108, file: !2109, line: 213, baseType: !158, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2108, file: !2109, line: 215, baseType: !2119, size: 256, offset: 640)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 256, elements: !360)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !2109, line: 216, baseType: !246, size: 8, offset: 896)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2100, file: !2095, line: 33, baseType: !161, size: 64, offset: 1536)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2100, file: !2095, line: 34, baseType: !161, size: 64, offset: 1600)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2100, file: !2095, line: 35, baseType: !513, size: 8, offset: 1664)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2100, file: !2095, line: 36, baseType: !2125, size: 320, offset: 1728)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2126, line: 11, size: 320, elements: !2127)
!2126 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2127 = !{!2128, !2129, !2130, !2135}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2125, file: !2126, line: 16, baseType: !355, size: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2125, file: !2126, line: 17, baseType: !161, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2125, file: !2126, line: 18, baseType: !2131, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2125, file: !2126, line: 19, baseType: !477, size: 32, offset: 256)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2100, file: !2095, line: 37, baseType: !1349, size: 256, offset: 2048)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2100, file: !2095, line: 38, baseType: !287, size: 128, align: 64, offset: 2304)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2100, file: !2095, line: 39, baseType: !2139, size: 64, offset: 2432)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2095, line: 49, size: 768, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2140, file: !2095, line: 50, baseType: !297, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2140, file: !2095, line: 51, baseType: !2116, size: 256, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2140, file: !2095, line: 53, baseType: !2116, size: 256, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2140, file: !2095, line: 54, baseType: !161, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2140, file: !2095, line: 55, baseType: !2139, size: 64, offset: 640)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2140, file: !2095, line: 56, baseType: !109, size: 32, offset: 704)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2140, file: !2095, line: 57, baseType: !109, size: 32, offset: 736)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2100, file: !2095, line: 40, baseType: !161, size: 64, offset: 2496)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2100, file: !2095, line: 42, baseType: !109, size: 32, offset: 2560)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2100, file: !2095, line: 43, baseType: !2093, size: 64, offset: 2624)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2094, file: !2095, line: 99, baseType: !2153, offset: 128)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2154, line: 211, elements: !1215)
!2154 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2094, file: !2095, line: 100, baseType: !2156, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2095, line: 63, size: 3008, elements: !2158)
!2158 = !{!2159, !2160, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2190}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2157, file: !2095, line: 64, baseType: !2139, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2157, file: !2095, line: 65, baseType: !2161, size: 192, offset: 64)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2139, size: 192, elements: !334)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2157, file: !2095, line: 67, baseType: !109, size: 32, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2157, file: !2095, line: 68, baseType: !210, size: 256, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2157, file: !2095, line: 69, baseType: !297, size: 32, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2157, file: !2095, line: 70, baseType: !210, size: 256, offset: 640)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2157, file: !2095, line: 71, baseType: !161, size: 64, offset: 896)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2157, file: !2095, line: 72, baseType: !161, size: 64, offset: 960)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2157, file: !2095, line: 73, baseType: !161, size: 64, offset: 1024)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2157, file: !2095, line: 74, baseType: !161, size: 64, offset: 1088)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2157, file: !2095, line: 75, baseType: !161, size: 64, offset: 1152)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2157, file: !2095, line: 76, baseType: !161, size: 64, offset: 1216)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2157, file: !2095, line: 77, baseType: !161, size: 64, offset: 1280)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2157, file: !2095, line: 78, baseType: !161, size: 64, offset: 1344)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2157, file: !2095, line: 79, baseType: !513, size: 8, offset: 1408)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2157, file: !2095, line: 80, baseType: !161, size: 64, offset: 1472)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2157, file: !2095, line: 81, baseType: !210, size: 256, offset: 1536)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2157, file: !2095, line: 82, baseType: !1146, size: 256, offset: 1792)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2157, file: !2095, line: 84, baseType: !238, size: 32, offset: 2048)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2157, file: !2095, line: 87, baseType: !161, size: 64, offset: 2112)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2157, file: !2095, line: 88, baseType: !161, size: 64, offset: 2176)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2157, file: !2095, line: 89, baseType: !2182, size: 704, offset: 2240)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1350, line: 111, size: 704, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2189}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2182, file: !1350, line: 112, baseType: !1349, size: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2182, file: !1350, line: 113, baseType: !2125, size: 320, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2182, file: !1350, line: 116, baseType: !2187, size: 64, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1350, line: 18, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2182, file: !1350, line: 117, baseType: !109, size: 32, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2157, file: !2095, line: 90, baseType: !2093, size: 64, offset: 2944)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !919, file: !6, line: 515, baseType: !2192, size: 64, offset: 8064)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2194, line: 117, size: 128, elements: !2195)
!2194 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2195 = !{!2196, !2197, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2193, file: !2194, line: 118, baseType: !437, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2193, file: !2194, line: 119, baseType: !437, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2193, file: !2194, line: 120, baseType: !158, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !919, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !919, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !919, file: !6, line: 520, baseType: !2202, size: 64, offset: 8192)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !919, file: !6, line: 523, baseType: !2204, size: 64, offset: 8256)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !919, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !919, file: !6, line: 525, baseType: !2209, size: 64, offset: 8384)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !919, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !919, file: !6, line: 533, baseType: !157, size: 64, offset: 8512)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !919, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !919, file: !6, line: 535, baseType: !177, size: 64, offset: 8640)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !919, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !919, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !919, file: !6, line: 540, baseType: !2219, size: 64, offset: 8768)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2221, line: 32, size: 64, elements: !2222)
!2221 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2222 = !{!2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2220, file: !2221, line: 33, baseType: !437, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2220, file: !2221, line: 34, baseType: !437, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !919, file: !6, line: 563, baseType: !264, size: 128, offset: 8832)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !919, file: !6, line: 565, baseType: !264, size: 128, offset: 8960)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !919, file: !6, line: 568, baseType: !2228, size: 64, offset: 9088)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !919, file: !6, line: 570, baseType: !238, size: 32, offset: 9152)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !895, file: !14, line: 2382, baseType: !894, size: 64, offset: 448)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !895, file: !14, line: 2383, baseType: !351, size: 64, offset: 512)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !895, file: !14, line: 2385, baseType: !2235, offset: 576)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2154, line: 206, elements: !1215)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !895, file: !14, line: 2386, baseType: !2235, offset: 576)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !895, file: !14, line: 2387, baseType: !2235, offset: 576)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !895, file: !14, line: 2388, baseType: !2239, offset: 576)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2235, elements: !334)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !895, file: !14, line: 2390, baseType: !2235, offset: 576)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !895, file: !14, line: 2391, baseType: !2235, offset: 576)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !895, file: !14, line: 2392, baseType: !2235, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !895, file: !14, line: 2393, baseType: !2235, offset: 576)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !886, file: !14, line: 1197, baseType: !2245, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2248)
!2248 = !{!2249, !2253, !2257, !2258, !2262, !2266, !2270, !2271, !2272, !2276, !2280, !2284, !2285, !2286, !2292, !2296, !2297, !2301, !2302, !2303, !2304, !2308, !2312, !2359, !2374, !2375}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2247, file: !14, line: 2058, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!676, !885}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2247, file: !14, line: 2059, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !676}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2247, file: !14, line: 2060, baseType: !2254, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2247, file: !14, line: 2062, baseType: !2259, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !676, !109}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2247, file: !14, line: 2063, baseType: !2263, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!109, !676, !1524}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2247, file: !14, line: 2064, baseType: !2267, size: 64, offset: 320)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!109, !676}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2247, file: !14, line: 2065, baseType: !2254, size: 64, offset: 384)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2247, file: !14, line: 2066, baseType: !914, size: 64, offset: 448)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2247, file: !14, line: 2067, baseType: !2273, size: 64, offset: 512)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!109, !885, !109}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2247, file: !14, line: 2068, baseType: !2277, size: 64, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!109, !885, !13}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2247, file: !14, line: 2069, baseType: !2281, size: 64, offset: 640)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!109, !885}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2247, file: !14, line: 2070, baseType: !2277, size: 64, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2247, file: !14, line: 2071, baseType: !2281, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2247, file: !14, line: 2072, baseType: !2287, size: 64, offset: 832)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!109, !636, !2290}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2247, file: !14, line: 2073, baseType: !2293, size: 64, offset: 896)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!109, !885, !2025, !199}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2247, file: !14, line: 2074, baseType: !914, size: 64, offset: 960)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2247, file: !14, line: 2076, baseType: !2298, size: 64, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!109, !195, !636}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2247, file: !14, line: 2077, baseType: !2298, size: 64, offset: 1088)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2247, file: !14, line: 2078, baseType: !2298, size: 64, offset: 1152)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2247, file: !14, line: 2079, baseType: !2298, size: 64, offset: 1216)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2247, file: !14, line: 2081, baseType: !2305, size: 64, offset: 1280)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!830, !885, !109, !199, !201, !167}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2247, file: !14, line: 2082, baseType: !2309, size: 64, offset: 1344)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!830, !885, !109, !516, !201, !167}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2247, file: !14, line: 2083, baseType: !2313, size: 64, offset: 1408)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!2316, !676}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2344, !2345, !2346}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2318, file: !51, line: 297, baseType: !355, size: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2318, file: !51, line: 298, baseType: !264, size: 128, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2318, file: !51, line: 299, baseType: !264, size: 128, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2318, file: !51, line: 300, baseType: !264, size: 128, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2318, file: !51, line: 301, baseType: !210, size: 256, offset: 512)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2318, file: !51, line: 302, baseType: !297, size: 32, offset: 768)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2318, file: !51, line: 303, baseType: !238, size: 32, offset: 800)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2318, file: !51, line: 304, baseType: !885, size: 64, offset: 832)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2318, file: !51, line: 305, baseType: !2329, size: 64, offset: 896)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2330)
!2330 = !{!2331, !2343}
!2331 = !DIDerivedType(tag: DW_TAG_member, scope: !2329, file: !51, line: 69, baseType: !2332, size: 32)
!2332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2329, file: !51, line: 69, size: 32, elements: !2333)
!2333 = !{!2334, !2335, !2336}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2332, file: !51, line: 70, baseType: !383, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2332, file: !51, line: 71, baseType: !401, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2332, file: !51, line: 72, baseType: !2337, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2338, line: 24, baseType: !2339)
!2338 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2338, line: 22, size: 32, elements: !2340)
!2340 = !{!2341}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2339, file: !2338, line: 23, baseType: !2342, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2338, line: 20, baseType: !389)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2329, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2318, file: !51, line: 306, baseType: !167, size: 64, offset: 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2318, file: !51, line: 307, baseType: !161, size: 64, offset: 1024)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2318, file: !51, line: 308, baseType: !2347, size: 576, offset: 1088)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2348)
!2348 = !{!2349, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2347, file: !51, line: 206, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !170)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2347, file: !51, line: 207, baseType: !2350, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2347, file: !51, line: 208, baseType: !2350, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2347, file: !51, line: 209, baseType: !2350, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2347, file: !51, line: 210, baseType: !2350, size: 64, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2347, file: !51, line: 211, baseType: !2350, size: 64, offset: 320)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2347, file: !51, line: 212, baseType: !2350, size: 64, offset: 384)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2347, file: !51, line: 213, baseType: !468, size: 64, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2347, file: !51, line: 214, baseType: !468, size: 64, offset: 512)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2247, file: !14, line: 2085, baseType: !2360, size: 64, offset: 1472)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!158, !885, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2365, line: 15, size: 256, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2366 = !{!2367, !2368, !2369, !2370, !2371}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2364, file: !2365, line: 16, baseType: !176, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2364, file: !2365, line: 19, baseType: !109, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2364, file: !2365, line: 26, baseType: !161, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2364, file: !2365, line: 33, baseType: !161, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2364, file: !2365, line: 36, baseType: !2372, size: 64, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2247, file: !14, line: 2087, baseType: !2360, size: 64, offset: 1536)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2247, file: !14, line: 2089, baseType: !914, size: 64, offset: 1600)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !886, file: !14, line: 1198, baseType: !2377, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2380)
!2380 = !{!2381, !2385, !2389, !2393, !2394, !2395, !2396, !2397, !2402, !2407, !2411}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2379, file: !51, line: 325, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!109, !2317}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2379, file: !51, line: 326, baseType: !2386, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!2317, !885, !109}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2379, file: !51, line: 327, baseType: !2390, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !2317}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2379, file: !51, line: 328, baseType: !2382, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2379, file: !51, line: 329, baseType: !2382, size: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2379, file: !51, line: 330, baseType: !2382, size: 64, offset: 320)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2379, file: !51, line: 331, baseType: !2273, size: 64, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2379, file: !51, line: 334, baseType: !2398, size: 64, offset: 448)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!2401, !676}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2379, file: !51, line: 335, baseType: !2403, size: 64, offset: 512)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!109, !676, !2406}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2379, file: !51, line: 337, baseType: !2408, size: 64, offset: 576)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!109, !676, !2401}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2379, file: !51, line: 339, baseType: !2412, size: 64, offset: 640)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!109, !885, !2415}
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !886, file: !14, line: 1199, baseType: !2417, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2420)
!2420 = !{!2421, !2425, !2426, !2430, !2431, !2432, !2447, !2470, !2474, !2475, !2498}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2419, file: !51, line: 431, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!109, !885, !109, !109, !799}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2419, file: !51, line: 432, baseType: !2273, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2419, file: !51, line: 433, baseType: !2427, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!109, !885, !7}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2419, file: !51, line: 434, baseType: !2427, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2419, file: !51, line: 435, baseType: !2273, size: 64, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2419, file: !51, line: 436, baseType: !2433, size: 64, offset: 320)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!109, !885, !109, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2437, file: !51, line: 418, baseType: !109, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2437, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2437, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2437, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2437, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2437, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2437, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2437, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2419, file: !51, line: 437, baseType: !2448, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!109, !885, !2329, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2452, file: !51, line: 346, baseType: !109, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2452, file: !51, line: 347, baseType: !420, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2452, file: !51, line: 348, baseType: !420, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2452, file: !51, line: 349, baseType: !420, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2452, file: !51, line: 350, baseType: !420, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2452, file: !51, line: 351, baseType: !420, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2452, file: !51, line: 352, baseType: !420, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2452, file: !51, line: 353, baseType: !220, size: 64, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2452, file: !51, line: 355, baseType: !220, size: 64, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2452, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2452, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2452, file: !51, line: 358, baseType: !420, size: 64, offset: 640)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2452, file: !51, line: 359, baseType: !420, size: 64, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2452, file: !51, line: 360, baseType: !420, size: 64, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2452, file: !51, line: 361, baseType: !220, size: 64, offset: 832)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2452, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2419, file: !51, line: 438, baseType: !2471, size: 64, offset: 448)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!109, !885, !2415, !2451}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2419, file: !51, line: 440, baseType: !2448, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2419, file: !51, line: 441, baseType: !2476, size: 64, offset: 576)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!109, !885, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2481)
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2480, file: !51, line: 412, baseType: !7, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2480, file: !51, line: 413, baseType: !2484, size: 1344, offset: 64)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2485, size: 1344, elements: !334)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2486)
!2486 = !{!2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2497}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2485, file: !51, line: 398, baseType: !7, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2485, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2485, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2485, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2485, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2485, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2485, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2485, file: !51, line: 406, baseType: !422, size: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2485, file: !51, line: 407, baseType: !2496, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !160, line: 132, baseType: !420)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2485, file: !51, line: 408, baseType: !2496, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2419, file: !51, line: 442, baseType: !2427, size: 64, offset: 640)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !886, file: !14, line: 1200, baseType: !2500, size: 64, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2502)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !886, file: !14, line: 1201, baseType: !161, size: 64, offset: 640)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !886, file: !14, line: 1202, baseType: !161, size: 64, offset: 704)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !886, file: !14, line: 1203, baseType: !161, size: 64, offset: 768)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !886, file: !14, line: 1204, baseType: !636, size: 64, offset: 832)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !886, file: !14, line: 1205, baseType: !452, size: 320, offset: 896)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !886, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !886, file: !14, line: 1207, baseType: !238, size: 32, offset: 1248)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !886, file: !14, line: 1209, baseType: !157, size: 64, offset: 1280)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !886, file: !14, line: 1211, baseType: !2512, size: 64, offset: 1344)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !886, file: !14, line: 1223, baseType: !2517, size: 64, offset: 1408)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !653, line: 34, size: 64, elements: !2518)
!2518 = !{!2519}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2517, file: !653, line: 35, baseType: !656, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !886, file: !14, line: 1224, baseType: !264, size: 128, offset: 1472)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !886, file: !14, line: 1225, baseType: !2522, size: 64, offset: 1600)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !886, file: !14, line: 1226, baseType: !2525, size: 64, offset: 1664)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !886, file: !14, line: 1227, baseType: !2528, size: 64, offset: 1728)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !886, file: !14, line: 1228, baseType: !2531, size: 64, offset: 1792)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !886, file: !14, line: 1229, baseType: !355, size: 128, offset: 1856)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !886, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !886, file: !14, line: 1231, baseType: !2536, size: 2496, offset: 2048)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2537)
!2537 = !{!2538, !2539, !2540, !2542, !2574}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2536, file: !51, line: 522, baseType: !7, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2536, file: !51, line: 523, baseType: !452, size: 320, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2536, file: !51, line: 524, baseType: !2541, size: 192, offset: 384)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 192, elements: !334)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2536, file: !51, line: 525, baseType: !2543, size: 1728, offset: 576)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2544, size: 1728, elements: !334)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2545)
!2545 = !{!2546, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2544, file: !51, line: 223, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2549)
!2549 = !{!2550, !2551, !2564, !2565}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2548, file: !51, line: 446, baseType: !109, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2548, file: !51, line: 447, baseType: !2552, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2554)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2554, file: !51, line: 313, baseType: !2273, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2554, file: !51, line: 314, baseType: !2273, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2554, file: !51, line: 315, baseType: !2273, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2554, file: !51, line: 316, baseType: !2273, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2554, file: !51, line: 317, baseType: !2382, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2554, file: !51, line: 318, baseType: !2382, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2554, file: !51, line: 319, baseType: !2382, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2554, file: !51, line: 320, baseType: !2412, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2548, file: !51, line: 448, baseType: !918, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2548, file: !51, line: 449, baseType: !2547, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2544, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2544, file: !51, line: 226, baseType: !264, size: 128, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2544, file: !51, line: 227, baseType: !161, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2544, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2544, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2544, file: !51, line: 230, baseType: !2350, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2544, file: !51, line: 231, baseType: !2350, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2544, file: !51, line: 232, baseType: !157, size: 64, offset: 512)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2536, file: !51, line: 526, baseType: !2575, size: 192, offset: 2304)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2552, size: 192, elements: !334)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !886, file: !14, line: 1233, baseType: !2577, size: 2368, offset: 4544)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2578)
!2578 = !{!2579, !2580, !2581}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2577, file: !14, line: 1185, baseType: !256, size: 16)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2577, file: !14, line: 1186, baseType: !256, size: 16, offset: 16)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2577, file: !14, line: 1187, baseType: !2582, size: 2304, offset: 64)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2583, size: 2304, elements: !334)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2584, line: 12, size: 768, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2585 = !{!2586, !2594, !2595, !4776, !4777}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2583, file: !2584, line: 13, baseType: !2587, size: 384)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2588, line: 17, size: 384, elements: !2589)
!2588 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2589 = !{!2590, !2591, !2592, !2593}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2587, file: !2588, line: 18, baseType: !109, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2587, file: !2588, line: 19, baseType: !109, size: 32, offset: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2587, file: !2588, line: 20, baseType: !364, size: 192, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2587, file: !2588, line: 22, baseType: !287, size: 128, align: 64, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2583, file: !2584, line: 14, baseType: !1977, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2583, file: !2584, line: 15, baseType: !2596, size: 64, offset: 448)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2597, line: 16, size: 64, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2598 = !{!2599}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2596, file: !2597, line: 17, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2602, line: 746, size: 58368, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2603 = !{!2604, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2684, !2695, !2783, !2787, !2790, !2821, !2822, !2823, !2824, !2835, !2837, !2838, !2839, !2840, !2841, !2842, !2853, !2854, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2871, !2872, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2965, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3013, !3019, !3020, !3021, !3022, !3023, !3027, !3030, !3037, !3042, !3045, !3048, !3051, !3055, !4180, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4218, !4219, !4220, !4229, !4237, !4238, !4239, !4240, !4241, !4246, !4247, !4248, !4251, !4252, !4255, !4258, !4261, !4269, !4272, !4273, !4359, !4360, !4361, !4362, !4363, !4369, !4370, !4371, !4372, !4375, !4376, !4379, !4382, !4383, !4386, !4387, !4388, !4391, !4392, !4393, !4394, !4395, !4396, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4428, !4429, !4435, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4447, !4519, !4521, !4522, !4523, !4524, !4525, !4526, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2601, file: !2602, line: 752, baseType: !2605, size: 192)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2606, line: 56, size: 192, elements: !2607)
!2606 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2607 = !{!2608, !2609, !2610, !2611}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2605, file: !2606, line: 57, baseType: !161, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2605, file: !2606, line: 58, baseType: !161, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2605, file: !2606, line: 59, baseType: !477, size: 32, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2605, file: !2606, line: 61, baseType: !477, size: 32, offset: 160)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2601, file: !2602, line: 754, baseType: !7, size: 32, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2601, file: !2602, line: 767, baseType: !157, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2601, file: !2602, line: 768, baseType: !342, size: 32, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2601, file: !2602, line: 770, baseType: !7, size: 32, offset: 352)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2601, file: !2602, line: 771, baseType: !7, size: 32, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2601, file: !2602, line: 774, baseType: !109, size: 32, offset: 416)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2601, file: !2602, line: 775, baseType: !2619, size: 128, offset: 448)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2620, line: 58, size: 128, elements: !2621)
!2620 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2621 = !{!2622, !2623, !2628, !2629}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2619, file: !2620, line: 59, baseType: !281, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, scope: !2619, file: !2620, line: 60, baseType: !2624, size: 32, offset: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2619, file: !2620, line: 60, size: 32, elements: !2625)
!2625 = !{!2626, !2627}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2624, file: !2620, line: 61, baseType: !7, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2624, file: !2620, line: 62, baseType: !238, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2619, file: !2620, line: 65, baseType: !254, size: 16, offset: 96)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2619, file: !2620, line: 65, baseType: !254, size: 16, offset: 112)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2601, file: !2602, line: 776, baseType: !7, size: 32, offset: 576)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2601, file: !2602, line: 777, baseType: !161, size: 64, offset: 640)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2601, file: !2602, line: 778, baseType: !2600, size: 64, offset: 704)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2601, file: !2602, line: 787, baseType: !109, size: 32, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2601, file: !2602, line: 788, baseType: !109, size: 32, offset: 800)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2601, file: !2602, line: 790, baseType: !109, size: 32, offset: 832)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2601, file: !2602, line: 792, baseType: !109, size: 32, offset: 864)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2601, file: !2602, line: 793, baseType: !109, size: 32, offset: 896)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2601, file: !2602, line: 794, baseType: !109, size: 32, offset: 928)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2601, file: !2602, line: 795, baseType: !7, size: 32, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2601, file: !2602, line: 797, baseType: !2641, size: 2048, offset: 1024)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2602, line: 551, size: 2048, elements: !2642)
!2642 = !{!2643, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2663, !2666, !2667, !2668}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2641, file: !2602, line: 553, baseType: !2644, size: 128)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2602, line: 411, size: 128, elements: !2645)
!2645 = !{!2646, !2647}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2644, file: !2602, line: 412, baseType: !161, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2644, file: !2602, line: 413, baseType: !477, size: 32, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2641, file: !2602, line: 554, baseType: !444, size: 192, align: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2641, file: !2602, line: 555, baseType: !420, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2641, file: !2602, line: 556, baseType: !420, size: 64, offset: 384)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2641, file: !2602, line: 558, baseType: !264, size: 128, offset: 448)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2641, file: !2602, line: 559, baseType: !7, size: 32, offset: 576)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2641, file: !2602, line: 561, baseType: !420, size: 64, offset: 640)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2641, file: !2602, line: 562, baseType: !420, size: 64, offset: 704)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2641, file: !2602, line: 563, baseType: !420, size: 64, offset: 768)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2641, file: !2602, line: 564, baseType: !420, size: 64, offset: 832)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2641, file: !2602, line: 565, baseType: !220, size: 64, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2641, file: !2602, line: 566, baseType: !420, size: 64, offset: 960)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2641, file: !2602, line: 568, baseType: !420, size: 64, offset: 1024)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2641, file: !2602, line: 571, baseType: !109, size: 32, offset: 1088)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2641, file: !2602, line: 572, baseType: !2662, size: 64, offset: 1152)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2641, file: !2602, line: 574, baseType: !2664, size: 64, offset: 1216)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2602, line: 49, flags: DIFlagFwdDecl)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2641, file: !2602, line: 576, baseType: !2664, size: 64, offset: 1280)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2641, file: !2602, line: 578, baseType: !161, size: 64, offset: 1344)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2641, file: !2602, line: 588, baseType: !2669, size: 512, align: 512, offset: 1536)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2602, line: 497, size: 512, align: 512, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2669, file: !2602, line: 498, baseType: !420, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2669, file: !2602, line: 499, baseType: !420, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2669, file: !2602, line: 500, baseType: !420, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2669, file: !2602, line: 501, baseType: !477, size: 32, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2669, file: !2602, line: 502, baseType: !477, size: 32, offset: 224)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2669, file: !2602, line: 503, baseType: !161, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2669, file: !2602, line: 504, baseType: !161, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2669, file: !2602, line: 505, baseType: !161, size: 64, offset: 384)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2669, file: !2602, line: 506, baseType: !2680, size: 64, align: 64, offset: 448)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2602, line: 445, size: 64, align: 64, elements: !2681)
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2680, file: !2602, line: 446, baseType: !7, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2680, file: !2602, line: 447, baseType: !7, size: 32, offset: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2601, file: !2602, line: 798, baseType: !2685, size: 384, offset: 3072)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2602, line: 592, size: 384, elements: !2686)
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692, !2693}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2685, file: !2602, line: 593, baseType: !264, size: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2685, file: !2602, line: 594, baseType: !161, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2685, file: !2602, line: 595, baseType: !161, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2685, file: !2602, line: 596, baseType: !7, size: 32, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2685, file: !2602, line: 597, baseType: !256, size: 16, offset: 288)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2685, file: !2602, line: 598, baseType: !256, size: 16, offset: 304)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2685, file: !2602, line: 600, baseType: !2694, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2601, file: !2602, line: 799, baseType: !2696, size: 1792, offset: 3456)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2602, line: 610, size: 1792, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2780, !2781}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2696, file: !2602, line: 611, baseType: !444, size: 192, align: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2696, file: !2602, line: 618, baseType: !420, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2696, file: !2602, line: 619, baseType: !420, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2696, file: !2602, line: 620, baseType: !420, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2696, file: !2602, line: 621, baseType: !420, size: 64, offset: 384)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2696, file: !2602, line: 622, baseType: !420, size: 64, offset: 448)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2696, file: !2602, line: 629, baseType: !220, size: 64, offset: 512)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2696, file: !2602, line: 630, baseType: !420, size: 64, offset: 576)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2696, file: !2602, line: 631, baseType: !7, size: 32, offset: 640)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2696, file: !2602, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2696, file: !2602, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2696, file: !2602, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2696, file: !2602, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2696, file: !2602, line: 662, baseType: !2712, size: 512, offset: 704)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2713)
!2713 = !{!2714, !2722, !2723, !2728, !2776, !2777, !2778, !2779}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2712, file: !57, line: 119, baseType: !2715, size: 256)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2716, line: 9, size: 256, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2717 = !{!2718, !2719}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2715, file: !2716, line: 10, baseType: !444, size: 192, align: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2715, file: !2716, line: 11, baseType: !2720, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2721, line: 29, baseType: !220)
!2721 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2712, file: !57, line: 120, baseType: !2720, size: 64, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2712, file: !57, line: 121, baseType: !2724, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!56, !2727}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2712, file: !57, line: 122, baseType: !2729, size: 64, offset: 384)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2731)
!2731 = !{!2732, !2757, !2758, !2761, !2766, !2767, !2771, !2775}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2730, file: !57, line: 160, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2734, file: !57, line: 216, baseType: !225, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2734, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2734, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2734, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2734, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2734, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2734, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2734, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2734, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2734, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2734, file: !57, line: 227, baseType: !256, size: 16, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2734, file: !57, line: 228, baseType: !256, size: 16, offset: 208)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2734, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2734, file: !57, line: 235, baseType: !2720, size: 64, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2734, file: !57, line: 236, baseType: !2727, size: 64, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2734, file: !57, line: 237, baseType: !2720, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2734, file: !57, line: 238, baseType: !2727, size: 64, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2734, file: !57, line: 239, baseType: !2754, size: 4096, align: 512, offset: 512)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2730, size: 4096, align: 512, elements: !2755)
!2755 = !{!2756}
!2756 = !DISubrange(count: 8)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2730, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2730, file: !57, line: 162, baseType: !2759, size: 32, offset: 96)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !160, line: 32, baseType: !2760)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !169, line: 96, baseType: !109)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2730, file: !57, line: 163, baseType: !2762, size: 32, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !643, line: 274, baseType: !2763)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !643, line: 274, size: 32, elements: !2764)
!2764 = !{!2765}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2763, file: !643, line: 274, baseType: !647, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2730, file: !57, line: 164, baseType: !2727, size: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2730, file: !57, line: 165, baseType: !2768, size: 128, offset: 256)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2716, line: 14, size: 128, elements: !2769)
!2769 = !{!2770}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2768, file: !2716, line: 15, baseType: !1044, size: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2730, file: !57, line: 166, baseType: !2772, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!2720}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2730, file: !57, line: 167, baseType: !2720, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2712, file: !57, line: 123, baseType: !246, size: 8, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2712, file: !57, line: 124, baseType: !246, size: 8, offset: 456)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2712, file: !57, line: 125, baseType: !246, size: 8, offset: 464)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2712, file: !57, line: 126, baseType: !246, size: 8, offset: 472)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2696, file: !2602, line: 671, baseType: !2712, size: 512, offset: 1216)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2696, file: !2602, line: 679, baseType: !2782, size: 64, offset: 1728)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2601, file: !2602, line: 800, baseType: !2784, size: 64, offset: 5248)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2602, line: 800, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2601, file: !2602, line: 809, baseType: !2788, size: 64, offset: 5312)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2602, line: 70, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2601, file: !2602, line: 825, baseType: !2791, size: 2048, align: 512, offset: 5632)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2602, line: 509, size: 2048, align: 512, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2791, file: !2602, line: 511, baseType: !420, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2791, file: !2602, line: 512, baseType: !420, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2791, file: !2602, line: 513, baseType: !420, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2791, file: !2602, line: 514, baseType: !420, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2791, file: !2602, line: 515, baseType: !420, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2791, file: !2602, line: 516, baseType: !420, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2791, file: !2602, line: 518, baseType: !420, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2791, file: !2602, line: 519, baseType: !420, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2791, file: !2602, line: 520, baseType: !220, size: 64, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2791, file: !2602, line: 522, baseType: !420, size: 64, offset: 576)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2791, file: !2602, line: 523, baseType: !420, size: 64, offset: 640)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2791, file: !2602, line: 524, baseType: !220, size: 64, offset: 704)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2791, file: !2602, line: 526, baseType: !220, size: 64, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2791, file: !2602, line: 527, baseType: !420, size: 64, offset: 832)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2791, file: !2602, line: 529, baseType: !420, size: 64, offset: 896)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2791, file: !2602, line: 530, baseType: !420, size: 64, offset: 960)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2791, file: !2602, line: 531, baseType: !420, size: 64, offset: 1024)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2791, file: !2602, line: 532, baseType: !420, size: 64, offset: 1088)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2791, file: !2602, line: 533, baseType: !420, size: 64, offset: 1152)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2791, file: !2602, line: 535, baseType: !420, size: 64, offset: 1216)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2791, file: !2602, line: 536, baseType: !420, size: 64, offset: 1280)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2791, file: !2602, line: 537, baseType: !420, size: 64, offset: 1344)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2791, file: !2602, line: 538, baseType: !420, size: 64, offset: 1408)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2791, file: !2602, line: 539, baseType: !420, size: 64, offset: 1472)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2791, file: !2602, line: 540, baseType: !420, size: 64, offset: 1536)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2791, file: !2602, line: 541, baseType: !420, size: 64, offset: 1600)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2791, file: !2602, line: 542, baseType: !420, size: 64, offset: 1664)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2791, file: !2602, line: 543, baseType: !420, size: 64, offset: 1728)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2601, file: !2602, line: 833, baseType: !7, size: 32, offset: 7680)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2601, file: !2602, line: 836, baseType: !7, size: 32, offset: 7712)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2601, file: !2602, line: 837, baseType: !109, size: 32, offset: 7744)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2601, file: !2602, line: 838, baseType: !2825, size: 64, offset: 7808)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2827)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2828, line: 19, baseType: !2829)
!2828 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2828, line: 19, size: 64, elements: !2830)
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2829, file: !2828, line: 19, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 64, elements: !2833)
!2833 = !{!2834}
!2834 = !DISubrange(count: 1)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2601, file: !2602, line: 839, baseType: !2836, size: 64, offset: 7872)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2601, file: !2602, line: 840, baseType: !2827, size: 64, offset: 7936)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2601, file: !2602, line: 841, baseType: !157, size: 64, offset: 8000)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2601, file: !2602, line: 843, baseType: !256, size: 16, offset: 8064)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2601, file: !2602, line: 845, baseType: !256, size: 16, offset: 8080)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2601, file: !2602, line: 848, baseType: !109, size: 32, offset: 8096)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2601, file: !2602, line: 849, baseType: !2843, size: 32, offset: 8128)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2602, line: 718, size: 32, elements: !2844)
!2844 = !{!2845, !2852}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2843, file: !2602, line: 724, baseType: !2846, size: 32)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2843, file: !2602, line: 719, size: 32, elements: !2847)
!2847 = !{!2848, !2849, !2850, !2851}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2846, file: !2602, line: 720, baseType: !246, size: 8)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2846, file: !2602, line: 721, baseType: !246, size: 8, offset: 8)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2846, file: !2602, line: 722, baseType: !246, size: 8, offset: 16)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2846, file: !2602, line: 723, baseType: !246, size: 8, offset: 24)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2843, file: !2602, line: 725, baseType: !477, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2601, file: !2602, line: 850, baseType: !264, size: 128, offset: 8192)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2601, file: !2602, line: 851, baseType: !2855, size: 64, offset: 8320)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2602, line: 60, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2601, file: !2602, line: 855, baseType: !161, size: 64, offset: 8384)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2601, file: !2602, line: 856, baseType: !246, size: 8, offset: 8448)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2601, file: !2602, line: 857, baseType: !246, size: 8, offset: 8456)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2601, file: !2602, line: 858, baseType: !109, size: 32, offset: 8480)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2601, file: !2602, line: 859, baseType: !264, size: 128, offset: 8512)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2601, file: !2602, line: 860, baseType: !109, size: 32, offset: 8640)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2601, file: !2602, line: 861, baseType: !264, size: 128, offset: 8704)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2601, file: !2602, line: 873, baseType: !2865, size: 256, offset: 8832)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2602, line: 376, size: 256, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2870}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2865, file: !2602, line: 381, baseType: !161, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2865, file: !2602, line: 384, baseType: !422, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2865, file: !2602, line: 389, baseType: !422, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2865, file: !2602, line: 392, baseType: !422, size: 64, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2601, file: !2602, line: 875, baseType: !264, size: 128, offset: 9088)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2601, file: !2602, line: 877, baseType: !2873, size: 320, offset: 9216)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2874, line: 86, size: 320, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2875 = !{!2876, !2877, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2873, file: !2874, line: 87, baseType: !109, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2873, file: !2874, line: 88, baseType: !264, size: 128, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2873, file: !2874, line: 89, baseType: !264, size: 128, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2601, file: !2602, line: 878, baseType: !444, size: 192, align: 64, offset: 9536)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2601, file: !2602, line: 881, baseType: !1194, size: 64, offset: 9728)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2601, file: !2602, line: 882, baseType: !1194, size: 64, offset: 9792)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2601, file: !2602, line: 884, baseType: !109, size: 32, offset: 9856)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2601, file: !2602, line: 885, baseType: !109, size: 32, offset: 9888)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2601, file: !2602, line: 886, baseType: !109, size: 32, offset: 9920)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2601, file: !2602, line: 888, baseType: !109, size: 32, offset: 9952)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2601, file: !2602, line: 890, baseType: !161, size: 64, offset: 9984)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2601, file: !2602, line: 893, baseType: !7, size: 32, offset: 10048)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2601, file: !2602, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2601, file: !2602, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2601, file: !2602, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2601, file: !2602, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2601, file: !2602, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2601, file: !2602, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2601, file: !2602, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2601, file: !2602, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2601, file: !2602, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2601, file: !2602, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2601, file: !2602, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2601, file: !2602, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2601, file: !2602, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2601, file: !2602, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2601, file: !2602, line: 969, baseType: !161, size: 64, offset: 10176)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2601, file: !2602, line: 971, baseType: !2904, size: 448, offset: 10240)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2905)
!2905 = !{!2906, !2907, !2912}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2904, file: !62, line: 26, baseType: !161, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2904, file: !62, line: 27, baseType: !2908, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!158, !2911}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !62, line: 28, baseType: !2913, size: 320, offset: 128)
!2913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !62, line: 28, size: 320, elements: !2914)
!2914 = !{!2915, !2925, !2950}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2913, file: !62, line: 37, baseType: !2916, size: 320)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2913, file: !62, line: 30, size: 320, elements: !2917)
!2917 = !{!2918, !2920, !2921, !2922, !2923, !2924}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2916, file: !62, line: 31, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2916, file: !62, line: 32, baseType: !477, size: 32, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2916, file: !62, line: 33, baseType: !477, size: 32, offset: 96)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2916, file: !62, line: 34, baseType: !477, size: 32, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2916, file: !62, line: 35, baseType: !420, size: 64, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2916, file: !62, line: 36, baseType: !2919, size: 64, offset: 256)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2913, file: !62, line: 47, baseType: !2926, size: 192)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2913, file: !62, line: 39, size: 192, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2949}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2926, file: !62, line: 40, baseType: !2759, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2926, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !62, line: 42, baseType: !2931, size: 64, offset: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2926, file: !62, line: 42, size: 64, elements: !2932)
!2932 = !{!2933, !2941}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2931, file: !62, line: 43, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2936, line: 7, size: 128, elements: !2937)
!2936 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2937 = !{!2938, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2935, file: !2936, line: 8, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !169, line: 93, baseType: !170)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2935, file: !2936, line: 9, baseType: !170, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2931, file: !62, line: 44, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2944, line: 7, size: 64, elements: !2945)
!2944 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2945 = !{!2946, !2948}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2943, file: !2944, line: 8, baseType: !2947, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2944, line: 5, baseType: !437)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2943, file: !2944, line: 9, baseType: !437, size: 32, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2926, file: !62, line: 46, baseType: !420, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2913, file: !62, line: 55, baseType: !2951, size: 256)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2913, file: !62, line: 49, size: 256, elements: !2952)
!2952 = !{!2953, !2961, !2962, !2963, !2964}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2951, file: !62, line: 50, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2956, line: 36, size: 64, elements: !2957)
!2956 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2957 = !{!2958, !2959, !2960}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2955, file: !2956, line: 37, baseType: !109, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2955, file: !2956, line: 38, baseType: !482, size: 16, offset: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2955, file: !2956, line: 39, baseType: !482, size: 16, offset: 48)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2951, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2951, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2951, file: !62, line: 53, baseType: !161, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2951, file: !62, line: 54, baseType: !161, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2601, file: !2602, line: 973, baseType: !2966, size: 32, offset: 10688)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !160, line: 27, baseType: !2967)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !169, line: 28, baseType: !109)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2601, file: !2602, line: 974, baseType: !2966, size: 32, offset: 10720)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2601, file: !2602, line: 978, baseType: !161, size: 64, offset: 10752)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2601, file: !2602, line: 987, baseType: !2600, size: 64, offset: 10816)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2601, file: !2602, line: 990, baseType: !2600, size: 64, offset: 10880)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2601, file: !2602, line: 995, baseType: !264, size: 128, offset: 10944)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2601, file: !2602, line: 996, baseType: !264, size: 128, offset: 11072)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2601, file: !2602, line: 997, baseType: !2600, size: 64, offset: 11200)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2601, file: !2602, line: 1005, baseType: !264, size: 128, offset: 11264)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2601, file: !2602, line: 1006, baseType: !264, size: 128, offset: 11392)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2601, file: !2602, line: 1009, baseType: !338, size: 64, offset: 11520)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2601, file: !2602, line: 1010, baseType: !2979, size: 512, offset: 11584)
!2979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 512, elements: !360)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2601, file: !2602, line: 1011, baseType: !264, size: 128, offset: 12096)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2601, file: !2602, line: 1012, baseType: !264, size: 128, offset: 12224)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2601, file: !2602, line: 1014, baseType: !1888, size: 64, offset: 12352)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2601, file: !2602, line: 1017, baseType: !2025, size: 64, offset: 12416)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2601, file: !2602, line: 1020, baseType: !2025, size: 64, offset: 12480)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2601, file: !2602, line: 1023, baseType: !157, size: 64, offset: 12544)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2601, file: !2602, line: 1025, baseType: !420, size: 64, offset: 12608)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2601, file: !2602, line: 1026, baseType: !420, size: 64, offset: 12672)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2601, file: !2602, line: 1031, baseType: !420, size: 64, offset: 12736)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2601, file: !2602, line: 1032, baseType: !2990, size: 192, offset: 12800)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2602, line: 324, size: 192, elements: !2991)
!2991 = !{!2992, !2993, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2990, file: !2602, line: 326, baseType: !420, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2990, file: !2602, line: 327, baseType: !420, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2990, file: !2602, line: 328, baseType: !225, size: 32, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2601, file: !2602, line: 1041, baseType: !161, size: 64, offset: 12992)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2601, file: !2602, line: 1042, baseType: !161, size: 64, offset: 13056)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2601, file: !2602, line: 1045, baseType: !420, size: 64, offset: 13120)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2601, file: !2602, line: 1048, baseType: !420, size: 64, offset: 13184)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2601, file: !2602, line: 1051, baseType: !161, size: 64, offset: 13248)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2601, file: !2602, line: 1052, baseType: !161, size: 64, offset: 13312)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2601, file: !2602, line: 1055, baseType: !3002, size: 640, offset: 13376)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3003, line: 132, size: 640, elements: !3004)
!3003 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3004 = !{!3005, !3011, !3012}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3002, file: !3003, line: 133, baseType: !3006, size: 576)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3007, size: 576, elements: !334)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3003, line: 117, size: 192, elements: !3008)
!3008 = !{!3009, !3010}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3007, file: !3003, line: 118, baseType: !420, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3007, file: !3003, line: 119, baseType: !2768, size: 128, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3002, file: !3003, line: 134, baseType: !7, size: 32, offset: 576)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3002, file: !3003, line: 135, baseType: !7, size: 32, offset: 608)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2601, file: !2602, line: 1058, baseType: !3014, size: 448, offset: 14016)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3003, line: 144, size: 448, elements: !3015)
!3015 = !{!3016, !3017, !3018}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3014, file: !3003, line: 145, baseType: !287, size: 128, align: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3014, file: !3003, line: 146, baseType: !210, size: 256, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3014, file: !3003, line: 147, baseType: !7, size: 32, offset: 384)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2601, file: !2602, line: 1064, baseType: !393, size: 64, offset: 14464)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2601, file: !2602, line: 1067, baseType: !393, size: 64, offset: 14528)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2601, file: !2602, line: 1070, baseType: !393, size: 64, offset: 14592)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2601, file: !2602, line: 1074, baseType: !429, size: 64, offset: 14656)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2601, file: !2602, line: 1084, baseType: !3024, size: 128, offset: 14720)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !3025)
!3025 = !{!3026}
!3026 = !DISubrange(count: 16)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2601, file: !2602, line: 1086, baseType: !3028, size: 64, offset: 14848)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2602, line: 55, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2601, file: !2602, line: 1089, baseType: !3031, size: 64, offset: 14912)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3032, line: 12, size: 64, elements: !3033)
!3032 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3033 = !{!3034}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3031, file: !3032, line: 13, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3032, line: 8, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2601, file: !2602, line: 1090, baseType: !3038, size: 128, offset: 14976)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3039, line: 13, size: 128, elements: !3040)
!3039 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3040 = !{!3041}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3038, file: !3039, line: 14, baseType: !264, size: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2601, file: !2602, line: 1097, baseType: !3043, size: 64, offset: 15104)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2602, line: 50, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2601, file: !2602, line: 1100, baseType: !3046, size: 64, offset: 15168)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2602, line: 1100, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2601, file: !2602, line: 1103, baseType: !3049, size: 64, offset: 15232)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2602, line: 53, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2601, file: !2602, line: 1107, baseType: !3052, size: 64, offset: 15296)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3054, line: 35, flags: DIFlagFwdDecl)
!3054 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2601, file: !2602, line: 1110, baseType: !3056, size: 64, offset: 15360)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3058, line: 93, size: 8768, elements: !3059)
!3058 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3107, !3116, !3117, !3119, !3120, !3121, !4111, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4149, !4150, !4157, !4167, !4170, !4171, !4174, !4175, !4176, !4177, !4178, !4179}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3057, file: !3058, line: 94, baseType: !342, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3057, file: !3058, line: 95, baseType: !238, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3057, file: !3058, line: 96, baseType: !109, size: 32, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3057, file: !3058, line: 97, baseType: !109, size: 32, offset: 96)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3057, file: !3058, line: 98, baseType: !264, size: 128, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3057, file: !3058, line: 100, baseType: !364, size: 192, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3057, file: !3058, line: 103, baseType: !2600, size: 64, offset: 448)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3057, file: !3058, line: 106, baseType: !3068, size: 192, offset: 512)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !603, line: 32, size: 192, elements: !3069)
!3069 = !{!3070, !3071}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3068, file: !603, line: 33, baseType: !264, size: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3068, file: !603, line: 34, baseType: !3072, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3073, line: 25, baseType: !3074)
!3073 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3073, line: 23, size: 64, elements: !3075)
!3075 = !{!3076}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3074, file: !3073, line: 24, baseType: !2832, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3057, file: !3058, line: 109, baseType: !351, size: 64, offset: 704)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3057, file: !3058, line: 112, baseType: !109, size: 32, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3057, file: !3058, line: 114, baseType: !109, size: 32, offset: 800)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3057, file: !3058, line: 115, baseType: !2600, size: 64, offset: 832)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3057, file: !3058, line: 118, baseType: !109, size: 32, offset: 896)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3057, file: !3058, line: 119, baseType: !7, size: 32, offset: 928)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3057, file: !3058, line: 121, baseType: !3084, size: 64, offset: 960)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3058, line: 80, size: 448, elements: !3086)
!3086 = !{!3087, !3088, !3094}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3085, file: !3058, line: 81, baseType: !238, size: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3085, file: !3058, line: 82, baseType: !3089, size: 128, offset: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3058, line: 75, size: 128, elements: !3090)
!3090 = !{!3091, !3092}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3089, file: !3058, line: 76, baseType: !2600, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3089, file: !3058, line: 77, baseType: !3093, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3085, file: !3058, line: 83, baseType: !1146, size: 256, offset: 192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3057, file: !3058, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3057, file: !3058, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3057, file: !3058, line: 138, baseType: !7, size: 32, offset: 1056)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3057, file: !3058, line: 139, baseType: !264, size: 128, offset: 1088)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3057, file: !3058, line: 142, baseType: !2712, size: 512, offset: 1216)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3057, file: !3058, line: 143, baseType: !2720, size: 64, offset: 1728)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3057, file: !3058, line: 150, baseType: !3102, size: 256, offset: 1792)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3103, size: 256, elements: !2015)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3058, line: 38, size: 128, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3103, file: !3058, line: 39, baseType: !420, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3103, file: !3058, line: 40, baseType: !420, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3057, file: !3058, line: 156, baseType: !3108, size: 192, offset: 2048)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3058, line: 66, size: 192, elements: !3109)
!3109 = !{!3110}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3108, file: !3058, line: 67, baseType: !3111, size: 192)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3058, line: 47, size: 192, elements: !3112)
!3112 = !{!3113, !3114, !3115}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3111, file: !3058, line: 48, baseType: !216, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3111, file: !3058, line: 49, baseType: !216, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3111, file: !3058, line: 50, baseType: !216, size: 64, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3057, file: !3058, line: 160, baseType: !3002, size: 640, offset: 2240)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3057, file: !3058, line: 163, baseType: !3118, size: 256, offset: 2880)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !360)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3057, file: !3058, line: 169, baseType: !338, size: 64, offset: 3136)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3057, file: !3058, line: 172, baseType: !109, size: 32, offset: 3200)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3057, file: !3058, line: 174, baseType: !3122, size: 64, offset: 3264)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3124, line: 193, size: 5248, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3125 = !{!3126, !3127, !3128, !3579, !4000, !4001, !4002, !4049, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4066, !4067, !4068, !4069, !4070, !4078, !4087, !4088, !4089, !4090, !4091, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3123, file: !3124, line: 194, baseType: !1873, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3123, file: !3124, line: 195, baseType: !109, size: 32, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3123, file: !3124, line: 196, baseType: !3129, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3137, !3138, !3191, !3261, !3262, !3263, !3264, !3265, !3272, !3364, !3377, !3387, !3391, !3393, !3394, !3395, !3399, !3406, !3407, !3410, !3413, !3417, !3521, !3522, !3523, !3524, !3525, !3526, !3556, !3557, !3558, !3561, !3564, !3573, !3574, !3575, !3576, !3577, !3578}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3130, file: !94, line: 706, baseType: !931, size: 512)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3130, file: !94, line: 707, baseType: !3129, size: 64, offset: 512)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3130, file: !94, line: 709, baseType: !3135, size: 64, offset: 576)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3130, file: !94, line: 711, baseType: !516, size: 64, offset: 640)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3130, file: !94, line: 712, baseType: !3139, size: 64, offset: 704)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3141)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !3142)
!3142 = !{!3143, !3144, !3145, !3151, !3156, !3160}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3141, file: !94, line: 90, baseType: !516, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3141, file: !94, line: 91, baseType: !1011, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3141, file: !94, line: 92, baseType: !3146, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!109, !3149, !967}
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3130)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3141, file: !94, line: 93, baseType: !3152, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!199, !3149, !3155, !1758, !1759}
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3141, file: !94, line: 95, baseType: !3157, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !3129}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3141, file: !94, line: 97, baseType: !3161, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3163)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !3164)
!3164 = !{!3165, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3163, file: !101, line: 287, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!109, !3129}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3163, file: !101, line: 288, baseType: !3157, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3163, file: !101, line: 289, baseType: !3166, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3163, file: !101, line: 290, baseType: !3166, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3163, file: !101, line: 291, baseType: !3166, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3163, file: !101, line: 292, baseType: !3166, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3163, file: !101, line: 293, baseType: !3166, size: 64, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3163, file: !101, line: 294, baseType: !3166, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3163, file: !101, line: 295, baseType: !3166, size: 64, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3163, file: !101, line: 296, baseType: !3166, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3163, file: !101, line: 297, baseType: !3166, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3163, file: !101, line: 298, baseType: !3166, size: 64, offset: 704)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3163, file: !101, line: 299, baseType: !3166, size: 64, offset: 768)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3163, file: !101, line: 300, baseType: !3166, size: 64, offset: 832)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3163, file: !101, line: 301, baseType: !3166, size: 64, offset: 896)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3163, file: !101, line: 302, baseType: !3166, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3163, file: !101, line: 303, baseType: !3166, size: 64, offset: 1024)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3163, file: !101, line: 304, baseType: !3166, size: 64, offset: 1088)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3163, file: !101, line: 305, baseType: !3166, size: 64, offset: 1152)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3163, file: !101, line: 306, baseType: !3166, size: 64, offset: 1216)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3163, file: !101, line: 307, baseType: !3166, size: 64, offset: 1280)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3163, file: !101, line: 308, baseType: !3166, size: 64, offset: 1344)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3163, file: !101, line: 309, baseType: !3166, size: 64, offset: 1408)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3130, file: !94, line: 714, baseType: !3192, size: 64, offset: 768)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3195, line: 80, size: 1344, elements: !3196)
!3195 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3260}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3194, file: !3195, line: 81, baseType: !516, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3194, file: !3195, line: 82, baseType: !516, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3194, file: !3195, line: 83, baseType: !1011, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3194, file: !3195, line: 84, baseType: !1011, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3194, file: !3195, line: 85, baseType: !1011, size: 64, offset: 256)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3194, file: !3195, line: 87, baseType: !3203, size: 64, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!109, !3129, !3206}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !3208)
!3208 = !{!3209, !3210, !3211, !3212, !3213, !3214, !3215, !3219, !3223, !3224, !3225, !3226, !3227, !3235, !3236, !3237, !3238, !3239, !3240}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3207, file: !88, line: 97, baseType: !516, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3207, file: !88, line: 98, baseType: !3192, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3207, file: !88, line: 100, baseType: !918, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3207, file: !88, line: 101, baseType: !516, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3207, file: !88, line: 103, baseType: !513, size: 8, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3207, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3207, file: !88, line: 106, baseType: !3216, size: 64, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3218)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3207, file: !88, line: 107, baseType: !3220, size: 64, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3222)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3207, file: !88, line: 109, baseType: !3166, size: 64, offset: 448)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3207, file: !88, line: 110, baseType: !3157, size: 64, offset: 512)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3207, file: !88, line: 111, baseType: !3166, size: 64, offset: 576)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3207, file: !88, line: 112, baseType: !3157, size: 64, offset: 640)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3207, file: !88, line: 113, baseType: !3228, size: 64, offset: 704)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!109, !3129, !3231}
!3231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !3232)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !3233)
!3233 = !{!3234}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3232, file: !101, line: 59, baseType: !109, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3207, file: !88, line: 114, baseType: !3166, size: 64, offset: 768)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3207, file: !88, line: 115, baseType: !1011, size: 64, offset: 832)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3207, file: !88, line: 116, baseType: !1011, size: 64, offset: 896)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3207, file: !88, line: 118, baseType: !3161, size: 64, offset: 960)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3207, file: !88, line: 119, baseType: !3157, size: 64, offset: 1024)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3207, file: !88, line: 121, baseType: !3241, size: 64, offset: 1088)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3194, file: !3195, line: 88, baseType: !3146, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3194, file: !3195, line: 89, baseType: !3166, size: 64, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3194, file: !3195, line: 90, baseType: !3157, size: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3194, file: !3195, line: 91, baseType: !3157, size: 64, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3194, file: !3195, line: 92, baseType: !3157, size: 64, offset: 640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3194, file: !3195, line: 94, baseType: !3166, size: 64, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3194, file: !3195, line: 95, baseType: !3166, size: 64, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3194, file: !3195, line: 97, baseType: !3228, size: 64, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3194, file: !3195, line: 98, baseType: !3166, size: 64, offset: 896)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3194, file: !3195, line: 100, baseType: !3166, size: 64, offset: 960)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3194, file: !3195, line: 102, baseType: !3166, size: 64, offset: 1024)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3194, file: !3195, line: 103, baseType: !3157, size: 64, offset: 1088)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3194, file: !3195, line: 105, baseType: !3161, size: 64, offset: 1152)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3194, file: !3195, line: 107, baseType: !3257, size: 64, offset: 1216)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3259)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3195, line: 107, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3194, file: !3195, line: 109, baseType: !513, size: 8, offset: 1280)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3130, file: !94, line: 715, baseType: !3206, size: 64, offset: 832)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3130, file: !94, line: 717, baseType: !157, size: 64, offset: 896)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3130, file: !94, line: 719, baseType: !157, size: 64, offset: 960)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3130, file: !94, line: 721, baseType: !210, size: 256, offset: 1024)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3130, file: !94, line: 725, baseType: !3266, size: 448, offset: 1280)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !3267)
!3267 = !{!3268, !3269, !3270, !3271}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3266, file: !94, line: 518, baseType: !264, size: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3266, file: !94, line: 519, baseType: !264, size: 128, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3266, file: !94, line: 520, baseType: !264, size: 128, offset: 256)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3266, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3130, file: !94, line: 726, baseType: !3273, size: 2496, offset: 1728)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3357, !3361}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3273, file: !101, line: 664, baseType: !3231, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3273, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3273, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3273, file: !101, line: 667, baseType: !513, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3273, file: !101, line: 668, baseType: !513, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3273, file: !101, line: 669, baseType: !513, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3273, file: !101, line: 670, baseType: !513, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3273, file: !101, line: 671, baseType: !513, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3273, file: !101, line: 672, baseType: !513, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3273, file: !101, line: 673, baseType: !513, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3273, file: !101, line: 674, baseType: !513, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3273, file: !101, line: 675, baseType: !477, size: 32, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3273, file: !101, line: 676, baseType: !297, size: 32, offset: 96)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3273, file: !101, line: 678, baseType: !264, size: 128, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3273, file: !101, line: 679, baseType: !1146, size: 256, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3273, file: !101, line: 680, baseType: !3291, size: 64, offset: 512)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3293, line: 43, size: 1536, elements: !3294)
!3293 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3294 = !{!3295, !3296, !3297, !3298, !3299, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3292, file: !3293, line: 44, baseType: !516, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3292, file: !3293, line: 45, baseType: !109, size: 32, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3292, file: !3293, line: 46, baseType: !264, size: 128, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3292, file: !3293, line: 47, baseType: !297, size: 32, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3292, file: !3293, line: 48, baseType: !3300, size: 64, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3292, file: !3293, line: 49, baseType: !2125, size: 320, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3292, file: !3293, line: 50, baseType: !161, size: 64, offset: 704)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3292, file: !3293, line: 51, baseType: !2720, size: 64, offset: 768)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3292, file: !3293, line: 52, baseType: !2720, size: 64, offset: 832)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3292, file: !3293, line: 53, baseType: !2720, size: 64, offset: 896)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3292, file: !3293, line: 54, baseType: !2720, size: 64, offset: 960)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3292, file: !3293, line: 55, baseType: !2720, size: 64, offset: 1024)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3292, file: !3293, line: 56, baseType: !161, size: 64, offset: 1088)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3292, file: !3293, line: 57, baseType: !161, size: 64, offset: 1152)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3292, file: !3293, line: 58, baseType: !161, size: 64, offset: 1216)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3292, file: !3293, line: 59, baseType: !161, size: 64, offset: 1280)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3292, file: !3293, line: 60, baseType: !161, size: 64, offset: 1344)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3292, file: !3293, line: 61, baseType: !3129, size: 64, offset: 1408)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3292, file: !3293, line: 62, baseType: !513, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3292, file: !3293, line: 63, baseType: !513, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3273, file: !101, line: 681, baseType: !513, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3273, file: !101, line: 682, baseType: !513, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3273, file: !101, line: 683, baseType: !513, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3273, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3273, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3273, file: !101, line: 690, baseType: !2712, size: 512, offset: 640)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3273, file: !101, line: 691, baseType: !420, size: 64, offset: 1152)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3273, file: !101, line: 692, baseType: !1349, size: 256, offset: 1216)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3273, file: !101, line: 693, baseType: !364, size: 192, offset: 1472)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3273, file: !101, line: 694, baseType: !3300, size: 64, offset: 1664)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3273, file: !101, line: 695, baseType: !238, size: 32, offset: 1728)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3273, file: !101, line: 696, baseType: !238, size: 32, offset: 1760)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3273, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3273, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3273, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3273, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3273, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3273, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3273, file: !101, line: 703, baseType: !513, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3273, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3273, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3273, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3273, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3273, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3273, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3273, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3273, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3273, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3273, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3273, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3273, file: !101, line: 715, baseType: !420, size: 64, offset: 2048)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3273, file: !101, line: 716, baseType: !420, size: 64, offset: 2112)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3273, file: !101, line: 717, baseType: !420, size: 64, offset: 2176)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3273, file: !101, line: 718, baseType: !420, size: 64, offset: 2240)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3273, file: !101, line: 720, baseType: !3352, size: 64, offset: 2304)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !3354)
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3353, file: !101, line: 633, baseType: !297, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3353, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3273, file: !101, line: 721, baseType: !3358, size: 64, offset: 2368)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{null, !3129, !437}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3273, file: !101, line: 722, baseType: !3362, size: 64, offset: 2432)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3130, file: !94, line: 727, baseType: !3365, size: 64, offset: 4224)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !3367)
!3367 = !{!3368, !3369, !3370, !3374, !3375, !3376}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3366, file: !101, line: 743, baseType: !3163, size: 1472)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3366, file: !101, line: 744, baseType: !3166, size: 64, offset: 1472)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3366, file: !101, line: 745, baseType: !3371, size: 64, offset: 1536)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !3129, !513}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3366, file: !101, line: 746, baseType: !3166, size: 64, offset: 1600)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3366, file: !101, line: 747, baseType: !3157, size: 64, offset: 1664)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3366, file: !101, line: 748, baseType: !3157, size: 64, offset: 1728)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3130, file: !94, line: 736, baseType: !3378, size: 128, offset: 4288)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !3379)
!3379 = !{!3380, !3384}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3378, file: !94, line: 531, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3383, line: 13, flags: DIFlagFwdDecl)
!3383 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3378, file: !94, line: 532, baseType: !3385, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3130, file: !94, line: 738, baseType: !3388, size: 64, offset: 4416)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3390)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3130, file: !94, line: 740, baseType: !3392, size: 64, offset: 4480)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3130, file: !94, line: 741, baseType: !420, size: 64, offset: 4544)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3130, file: !94, line: 746, baseType: !420, size: 64, offset: 4608)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3130, file: !94, line: 747, baseType: !3396, size: 64, offset: 4672)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3398)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3130, file: !94, line: 749, baseType: !3400, size: 64, offset: 4736)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !3402)
!3402 = !{!3403, !3404, !3405}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3401, file: !94, line: 433, baseType: !7, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3401, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3401, file: !94, line: 435, baseType: !161, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3130, file: !94, line: 751, baseType: !264, size: 128, offset: 4800)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3130, file: !94, line: 762, baseType: !3408, size: 64, offset: 4928)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3130, file: !94, line: 770, baseType: !3411, offset: 4992)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3412, line: 5, elements: !1215)
!3412 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3130, file: !94, line: 772, baseType: !3414, size: 64, offset: 4992)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3416, line: 18, flags: DIFlagFwdDecl)
!3416 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3130, file: !94, line: 773, baseType: !3418, size: 64, offset: 5056)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3420, line: 41, size: 512, elements: !3421)
!3420 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3421 = !{!3422, !3423, !3517, !3518, !3519, !3520}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3419, file: !3420, line: 42, baseType: !3418, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3419, file: !3420, line: 43, baseType: !3424, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3420, line: 125, size: 1408, elements: !3427)
!3427 = !{!3428, !3432, !3436, !3442, !3446, !3447, !3452, !3456, !3460, !3464, !3468, !3469, !3473, !3477, !3481, !3492, !3493, !3494, !3495, !3505, !3509, !3513}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3426, file: !3420, line: 126, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!3418, !3418}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3426, file: !3420, line: 127, baseType: !3433, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !3418}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3426, file: !3420, line: 128, baseType: !3437, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!513, !3440}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3419)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3426, file: !3420, line: 129, baseType: !3443, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!1310, !3440, !3149}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3426, file: !3420, line: 131, baseType: !3437, size: 64, offset: 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3426, file: !3420, line: 133, baseType: !3448, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!3451, !3440}
!3451 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3420, line: 132, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3426, file: !3420, line: 134, baseType: !3453, size: 64, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!513, !3440, !516}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3426, file: !3420, line: 136, baseType: !3457, size: 64, offset: 448)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!109, !3440, !516, !7, !157, !201}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3426, file: !3420, line: 141, baseType: !3461, size: 64, offset: 512)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!109, !3440, !516, !2202, !201}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3426, file: !3420, line: 144, baseType: !3465, size: 64, offset: 576)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!516, !3440}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3426, file: !3420, line: 145, baseType: !3465, size: 64, offset: 640)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3426, file: !3420, line: 146, baseType: !3470, size: 64, offset: 704)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!3418, !3440}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3426, file: !3420, line: 148, baseType: !3474, size: 64, offset: 768)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!3418, !3440, !3418}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3426, file: !3420, line: 151, baseType: !3478, size: 64, offset: 832)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!3418, !3440, !516}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3426, file: !3420, line: 153, baseType: !3482, size: 64, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!109, !3440, !516, !516, !7, !7, !3485}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3420, line: 94, size: 640, elements: !3487)
!3487 = !{!3488, !3489, !3490}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3486, file: !3420, line: 95, baseType: !3418, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3486, file: !3420, line: 96, baseType: !7, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3486, file: !3420, line: 97, baseType: !3491, size: 512, offset: 128)
!3491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 512, elements: !2755)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3426, file: !3420, line: 158, baseType: !3474, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3426, file: !3420, line: 161, baseType: !3470, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3426, file: !3420, line: 163, baseType: !3429, size: 64, offset: 1088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3426, file: !3420, line: 164, baseType: !3496, size: 64, offset: 1152)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!109, !3440, !3499}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3420, line: 73, size: 128, elements: !3501)
!3501 = !{!3502, !3503, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3500, file: !3420, line: 74, baseType: !7, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3500, file: !3420, line: 75, baseType: !7, size: 32, offset: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3500, file: !3420, line: 76, baseType: !3440, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3426, file: !3420, line: 166, baseType: !3506, size: 64, offset: 1216)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!157, !3418, !109}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3426, file: !3420, line: 167, baseType: !3510, size: 64, offset: 1280)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!109, !3440, !7}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3426, file: !3420, line: 168, baseType: !3514, size: 64, offset: 1344)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!109, !3418}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3419, file: !3420, line: 44, baseType: !3129, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3419, file: !3420, line: 45, baseType: !264, size: 128, offset: 192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3419, file: !3420, line: 46, baseType: !264, size: 128, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3419, file: !3420, line: 47, baseType: !246, size: 8, offset: 448)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3130, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3130, file: !94, line: 778, baseType: !751, size: 32, offset: 5152)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3130, file: !94, line: 779, baseType: !477, size: 32, offset: 5184)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3130, file: !94, line: 781, baseType: !297, size: 32, offset: 5216)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3130, file: !94, line: 782, baseType: !264, size: 128, offset: 5248)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3130, file: !94, line: 784, baseType: !3527, size: 64, offset: 5376)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3529)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3530, line: 52, size: 768, elements: !3531)
!3530 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3540, !3544, !3545, !3546, !3547, !3551, !3555}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3529, file: !3530, line: 53, baseType: !516, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3529, file: !3530, line: 55, baseType: !1011, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3529, file: !3530, line: 56, baseType: !1011, size: 64, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3529, file: !3530, line: 58, baseType: !3146, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3529, file: !3530, line: 59, baseType: !3537, size: 64, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!199, !3149, !3155}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3529, file: !3530, line: 61, baseType: !3541, size: 64, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{null, !3527}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3529, file: !3530, line: 62, baseType: !3157, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3529, file: !3530, line: 64, baseType: !3166, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3529, file: !3530, line: 66, baseType: !1726, size: 64, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3529, file: !3530, line: 67, baseType: !3548, size: 64, offset: 576)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!1310, !3149}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3529, file: !3530, line: 69, baseType: !3552, size: 64, offset: 640)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3149, !1758, !1759}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3529, file: !3530, line: 71, baseType: !3161, size: 64, offset: 704)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3130, file: !94, line: 785, baseType: !1011, size: 64, offset: 5440)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3130, file: !94, line: 787, baseType: !3157, size: 64, offset: 5504)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3130, file: !94, line: 788, baseType: !3559, size: 64, offset: 5568)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3130, file: !94, line: 789, baseType: !3562, size: 64, offset: 5632)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3130, file: !94, line: 791, baseType: !3565, size: 64, offset: 5696)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !3567)
!3567 = !{!3568, !3569, !3570, !3571, !3572}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3566, file: !94, line: 598, baseType: !116, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3566, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3566, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3566, file: !94, line: 601, baseType: !513, size: 8, offset: 96)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3566, file: !94, line: 602, baseType: !513, size: 8, offset: 104)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3130, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3130, file: !94, line: 795, baseType: !513, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3130, file: !94, line: 796, baseType: !513, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3130, file: !94, line: 797, baseType: !513, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3130, file: !94, line: 798, baseType: !513, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3130, file: !94, line: 799, baseType: !513, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3123, file: !3124, line: 197, baseType: !3580, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3582, line: 441, size: 1472, elements: !3583)
!3582 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!3583 = !{!3584, !3585, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3750, !3751, !3755, !3756, !3758, !3879, !3882, !3883, !3999}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3581, file: !3582, line: 442, baseType: !1873, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3581, file: !3582, line: 443, baseType: !3586, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3589, line: 14, size: 832, elements: !3590)
!3589 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3590 = !{!3591, !3592, !3593, !3719, !3720, !3721}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3588, file: !3589, line: 15, baseType: !931, size: 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3588, file: !3589, line: 16, baseType: !918, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3588, file: !3589, line: 17, baseType: !3594, size: 64, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3596)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3597)
!3597 = !{!3598, !3599, !3603, !3607, !3611, !3612, !3613, !3619, !3632, !3636, !3640, !3641, !3645, !3646, !3650, !3655, !3656, !3660, !3664, !3670, !3671, !3675, !3676, !3682, !3686, !3687, !3692, !3696, !3700, !3704, !3708, !3709, !3715}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3596, file: !14, line: 1915, baseType: !918, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3596, file: !14, line: 1916, baseType: !3600, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!167, !794, !167, !109}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3596, file: !14, line: 1917, baseType: !3604, size: 64, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!830, !794, !199, !201, !166}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3596, file: !14, line: 1918, baseType: !3608, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!830, !794, !516, !201, !166}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3596, file: !14, line: 1919, baseType: !1638, size: 64, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3596, file: !14, line: 1920, baseType: !1638, size: 64, offset: 320)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3596, file: !14, line: 1921, baseType: !3614, size: 64, offset: 384)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!109, !1641, !3617, !7}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3596, file: !14, line: 1923, baseType: !3620, size: 64, offset: 448)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!109, !794, !3623}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3625)
!3625 = !{!3626, !3631}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3624, file: !14, line: 1859, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3628)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!513, !3623, !516, !109, !167, !420, !7}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3624, file: !14, line: 1860, baseType: !167, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3596, file: !14, line: 1924, baseType: !3633, size: 64, offset: 512)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!164, !794, !1844}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3596, file: !14, line: 1925, baseType: !3637, size: 64, offset: 576)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!158, !794, !7, !161}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3596, file: !14, line: 1926, baseType: !3637, size: 64, offset: 640)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3596, file: !14, line: 1927, baseType: !3642, size: 64, offset: 704)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!109, !794, !1181}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3596, file: !14, line: 1928, baseType: !161, size: 64, offset: 768)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3596, file: !14, line: 1929, baseType: !3647, size: 64, offset: 832)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!109, !676, !794}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3596, file: !14, line: 1930, baseType: !3651, size: 64, offset: 896)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!109, !794, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !157)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3596, file: !14, line: 1931, baseType: !3647, size: 64, offset: 960)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3596, file: !14, line: 1932, baseType: !3657, size: 64, offset: 1024)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!109, !794, !167, !167, !109}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3596, file: !14, line: 1933, baseType: !3661, size: 64, offset: 1088)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!109, !109, !794, !109}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3596, file: !14, line: 1934, baseType: !3665, size: 64, offset: 1152)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!109, !794, !109, !3668}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3596, file: !14, line: 1935, baseType: !1219, size: 64, offset: 1216)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3596, file: !14, line: 1936, baseType: !3672, size: 64, offset: 1280)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!109, !109}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3596, file: !14, line: 1937, baseType: !3665, size: 64, offset: 1344)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3596, file: !14, line: 1938, baseType: !3677, size: 64, offset: 1408)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!830, !3680, !794, !166, !201, !7}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2602, line: 59, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3596, file: !14, line: 1939, baseType: !3683, size: 64, offset: 1472)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!830, !794, !166, !3680, !201, !7}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3596, file: !14, line: 1940, baseType: !1694, size: 64, offset: 1536)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3596, file: !14, line: 1941, baseType: !3688, size: 64, offset: 1600)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!109, !794, !109, !3691, !1615}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3596, file: !14, line: 1942, baseType: !3693, size: 64, offset: 1664)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!158, !794, !109, !167, !167}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3596, file: !14, line: 1944, baseType: !3697, size: 64, offset: 1728)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !195, !794}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3596, file: !14, line: 1948, baseType: !3701, size: 64, offset: 1792)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!830, !794, !167, !794, !167, !201, !7}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3596, file: !14, line: 1950, baseType: !3705, size: 64, offset: 1856)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!167, !794, !167, !794, !167, !167, !7}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3596, file: !14, line: 1953, baseType: !3657, size: 64, offset: 1920)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3596, file: !14, line: 1954, baseType: !3710, size: 64, offset: 1984)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!109, !3713, !7}
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3596, file: !14, line: 1955, baseType: !3716, size: 64, offset: 2048)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!109, !3713, !3617, !7}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3588, file: !3589, line: 18, baseType: !264, size: 128, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3588, file: !3589, line: 19, baseType: !751, size: 32, offset: 768)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3588, file: !3589, line: 20, baseType: !7, size: 32, offset: 800)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3581, file: !3582, line: 444, baseType: !918, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3581, file: !3582, line: 445, baseType: !516, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3581, file: !3582, line: 446, baseType: !516, size: 64, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3581, file: !3582, line: 447, baseType: !109, size: 32, offset: 320)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3581, file: !3582, line: 448, baseType: !109, size: 32, offset: 352)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3581, file: !3582, line: 449, baseType: !109, size: 32, offset: 384)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3581, file: !3582, line: 450, baseType: !7, size: 32, offset: 416)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3581, file: !3582, line: 451, baseType: !482, size: 16, offset: 448)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3581, file: !3582, line: 452, baseType: !482, size: 16, offset: 464)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3581, file: !3582, line: 453, baseType: !3732, size: 352, offset: 480)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3733, line: 30, size: 352, elements: !3734)
!3733 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!3734 = !{!3735, !3737, !3738, !3739, !3740, !3743, !3747, !3749}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3732, file: !3733, line: 31, baseType: !3736, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3733, line: 7, baseType: !7)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3732, file: !3733, line: 32, baseType: !3736, size: 32, offset: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3732, file: !3733, line: 33, baseType: !3736, size: 32, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3732, file: !3733, line: 34, baseType: !3736, size: 32, offset: 96)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3732, file: !3733, line: 35, baseType: !3741, size: 8, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3742, line: 5, baseType: !248)
!3742 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3732, file: !3733, line: 36, baseType: !3744, size: 152, offset: 136)
!3744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3741, size: 152, elements: !3745)
!3745 = !{!3746}
!3746 = !DISubrange(count: 19)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3732, file: !3733, line: 37, baseType: !3748, size: 32, offset: 288)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3742, line: 6, baseType: !7)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3732, file: !3733, line: 38, baseType: !3748, size: 32, offset: 320)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3581, file: !3582, line: 454, baseType: !161, size: 64, offset: 832)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3581, file: !3582, line: 455, baseType: !3752, size: 64, offset: 896)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3754, line: 131, flags: DIFlagFwdDecl)
!3754 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3581, file: !3582, line: 456, baseType: !3580, size: 64, offset: 960)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3581, file: !3582, line: 461, baseType: !3757, size: 64, offset: 1024)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3581, file: !3582, line: 462, baseType: !3759, size: 64, offset: 1088)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !3762, line: 101, size: 3008, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!3763 = !{!3764, !3796, !3797, !3798, !3820, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3848, !3874, !3875, !3876, !3877, !3878}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3761, file: !3762, line: 102, baseType: !3765, size: 1088)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !3766, line: 35, size: 1088, elements: !3767)
!3766 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!3767 = !{!3768, !3785, !3786, !3787, !3788, !3789, !3793, !3794, !3795}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3765, file: !3766, line: 36, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !3766, line: 10, size: 256, elements: !3771)
!3771 = !{!3772, !3777, !3778, !3779, !3780, !3781, !3782, !3783}
!3772 = !DIDerivedType(tag: DW_TAG_member, scope: !3770, file: !3766, line: 11, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3770, file: !3766, line: 11, size: 64, elements: !3774)
!3774 = !{!3775, !3776}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3773, file: !3766, line: 12, baseType: !3769, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3773, file: !3766, line: 13, baseType: !281, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3770, file: !3766, line: 15, baseType: !7, size: 32, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3770, file: !3766, line: 16, baseType: !7, size: 32, offset: 96)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3770, file: !3766, line: 17, baseType: !7, size: 32, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3770, file: !3766, line: 18, baseType: !7, size: 32, offset: 160)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3770, file: !3766, line: 19, baseType: !7, size: 32, offset: 192)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3770, file: !3766, line: 20, baseType: !513, size: 8, offset: 224)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3770, file: !3766, line: 22, baseType: !3784, align: 64, offset: 256)
!3784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, elements: !379)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3765, file: !3766, line: 37, baseType: !1349, size: 256, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3765, file: !3766, line: 38, baseType: !210, size: 256, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3765, file: !3766, line: 39, baseType: !238, size: 32, offset: 576)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3765, file: !3766, line: 40, baseType: !3770, size: 256, offset: 640)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3765, file: !3766, line: 41, baseType: !3790, size: 64, offset: 896)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !282, line: 56, size: 64, elements: !3791)
!3791 = !{!3792}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3790, file: !282, line: 57, baseType: !285, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3765, file: !3766, line: 42, baseType: !238, size: 32, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3765, file: !3766, line: 43, baseType: !109, size: 32, offset: 992)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3765, file: !3766, line: 44, baseType: !3769, size: 64, offset: 1024)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3761, file: !3762, line: 103, baseType: !3122, size: 64, offset: 1088)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3761, file: !3762, line: 104, baseType: !3122, size: 64, offset: 1152)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3761, file: !3762, line: 105, baseType: !3799, size: 64, offset: 1216)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3801)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !3762, line: 33, size: 320, elements: !3802)
!3802 = !{!3803, !3807, !3811, !3815, !3819}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !3801, file: !3762, line: 34, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!513, !3760}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !3801, file: !3762, line: 35, baseType: !3808, size: 64, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3760, !513}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3801, file: !3762, line: 36, baseType: !3812, size: 64, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !3760}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3801, file: !3762, line: 37, baseType: !3816, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!109, !3760, !3122}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !3801, file: !3762, line: 38, baseType: !3812, size: 64, offset: 256)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3761, file: !3762, line: 106, baseType: !3821, size: 64, offset: 1280)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3823)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !3762, line: 41, size: 192, elements: !3824)
!3824 = !{!3825, !3831, !3835}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3823, file: !3762, line: 42, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!201, !3760, !3829, !3829, !201}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !3823, file: !3762, line: 44, baseType: !3832, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !3760, !3829, !3829, !201}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3823, file: !3762, line: 46, baseType: !3812, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3761, file: !3762, line: 107, baseType: !297, size: 32, offset: 1344)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3761, file: !3762, line: 108, baseType: !109, size: 32, offset: 1376)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3761, file: !3762, line: 109, baseType: !109, size: 32, offset: 1408)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3761, file: !3762, line: 110, baseType: !364, size: 192, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3761, file: !3762, line: 111, baseType: !364, size: 192, offset: 1664)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3761, file: !3762, line: 112, baseType: !161, size: 64, offset: 1856)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3761, file: !3762, line: 113, baseType: !161, size: 64, offset: 1920)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3761, file: !3762, line: 114, baseType: !248, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3761, file: !3762, line: 115, baseType: !210, size: 256, offset: 2048)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3761, file: !3762, line: 116, baseType: !210, size: 256, offset: 2304)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3761, file: !3762, line: 117, baseType: !3847, size: 64, offset: 2560)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !3761, file: !3762, line: 118, baseType: !3849, size: 192, offset: 2624)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3761, file: !3762, line: 118, size: 192, elements: !3850)
!3850 = !{!3851, !3872}
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !3849, file: !3762, line: 118, baseType: !3852, size: 192)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3849, file: !3762, line: 118, size: 192, elements: !3853)
!3853 = !{!3854, !3863, !3864, !3865, !3870, !3871}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !3852, file: !3762, line: 118, baseType: !3855, size: 192)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !3856, line: 44, size: 192, elements: !3857)
!3856 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!3857 = !{!3858, !3859, !3860, !3861, !3862}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !3855, file: !3856, line: 45, baseType: !7, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !3855, file: !3856, line: 46, baseType: !7, size: 32, offset: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3855, file: !3856, line: 47, baseType: !7, size: 32, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !3855, file: !3856, line: 48, baseType: !7, size: 32, offset: 96)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3855, file: !3856, line: 49, baseType: !157, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3852, file: !3762, line: 118, baseType: !3847, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !3852, file: !3762, line: 118, baseType: !673, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !3852, file: !3762, line: 118, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, elements: !3868)
!3868 = !{!3869}
!3869 = !DISubrange(count: 0)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3852, file: !3762, line: 118, baseType: !3847, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !3852, file: !3762, line: 118, baseType: !673, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3849, file: !3762, line: 118, baseType: !3873, offset: 192)
!3873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, elements: !3868)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3761, file: !3762, line: 119, baseType: !7, size: 32, offset: 2816)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3761, file: !3762, line: 120, baseType: !7, size: 32, offset: 2848)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3761, file: !3762, line: 121, baseType: !109, size: 32, offset: 2880)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3761, file: !3762, line: 122, baseType: !1873, size: 32, offset: 2912)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3761, file: !3762, line: 123, baseType: !157, size: 64, offset: 2944)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3581, file: !3582, line: 463, baseType: !3880, size: 64, offset: 1152)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3581, file: !3582, line: 464, baseType: !157, size: 64, offset: 1216)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3581, file: !3582, line: 470, baseType: !3884, size: 64, offset: 1280)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3582, line: 357, size: 2176, elements: !3887)
!3887 = !{!3888, !3892, !3896, !3900, !3904, !3908, !3912, !3913, !3917, !3921, !3922, !3926, !3927, !3931, !3935, !3941, !3942, !3943, !3944, !3945, !3946, !3950, !3951, !3952, !3953, !3957, !3961, !3965, !3969, !3981, !3987, !3993, !3994, !3998}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3886, file: !3582, line: 358, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!3122, !3580, !794, !109}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3886, file: !3582, line: 360, baseType: !3893, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!109, !3580, !3122}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3886, file: !3582, line: 361, baseType: !3897, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3580, !3122}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3886, file: !3582, line: 362, baseType: !3901, size: 64, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!109, !3122, !794}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3886, file: !3582, line: 363, baseType: !3905, size: 64, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !3122, !794}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3886, file: !3582, line: 364, baseType: !3909, size: 64, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !3122}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3886, file: !3582, line: 365, baseType: !3909, size: 64, offset: 384)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3886, file: !3582, line: 366, baseType: !3914, size: 64, offset: 448)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!830, !3122, !3829, !201}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3886, file: !3582, line: 367, baseType: !3918, size: 64, offset: 512)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!109, !3122, !246}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3886, file: !3582, line: 368, baseType: !3909, size: 64, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3886, file: !3582, line: 369, baseType: !3923, size: 64, offset: 640)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!7, !3122}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3886, file: !3582, line: 370, baseType: !3923, size: 64, offset: 704)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3886, file: !3582, line: 371, baseType: !3928, size: 64, offset: 768)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!109, !3122, !7, !161}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3886, file: !3582, line: 373, baseType: !3932, size: 64, offset: 832)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!158, !3122, !7, !161}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3886, file: !3582, line: 375, baseType: !3936, size: 64, offset: 896)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !3122, !3939}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3886, file: !3582, line: 376, baseType: !3909, size: 64, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3886, file: !3582, line: 377, baseType: !3909, size: 64, offset: 1024)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3886, file: !3582, line: 378, baseType: !3909, size: 64, offset: 1088)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3886, file: !3582, line: 379, baseType: !3909, size: 64, offset: 1152)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3886, file: !3582, line: 380, baseType: !3909, size: 64, offset: 1216)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3886, file: !3582, line: 381, baseType: !3947, size: 64, offset: 1280)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!109, !3122, !109}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3886, file: !3582, line: 382, baseType: !3909, size: 64, offset: 1344)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !3886, file: !3582, line: 383, baseType: !3947, size: 64, offset: 1408)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3886, file: !3582, line: 384, baseType: !3909, size: 64, offset: 1472)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3886, file: !3582, line: 385, baseType: !3954, size: 64, offset: 1536)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{null, !3122, !109}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3886, file: !3582, line: 386, baseType: !3958, size: 64, offset: 1600)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{null, !3122, !173}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3886, file: !3582, line: 387, baseType: !3962, size: 64, offset: 1664)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!109, !3122}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3886, file: !3582, line: 388, baseType: !3966, size: 64, offset: 1728)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!109, !3122, !7, !7}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3886, file: !3582, line: 390, baseType: !3970, size: 64, offset: 1792)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!109, !3122, !3973}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3975, line: 15, size: 64, elements: !3976)
!3975 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!3976 = !{!3977, !3978, !3979, !3980}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3974, file: !3975, line: 16, baseType: !256, size: 16)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3974, file: !3975, line: 17, baseType: !256, size: 16, offset: 16)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3974, file: !3975, line: 18, baseType: !256, size: 16, offset: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3974, file: !3975, line: 19, baseType: !256, size: 16, offset: 48)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3886, file: !3582, line: 391, baseType: !3982, size: 64, offset: 1856)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!109, !3122, !3985}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3582, line: 16, flags: DIFlagFwdDecl)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3886, file: !3582, line: 393, baseType: !3988, size: 64, offset: 1920)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!109, !3122, !3991}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3582, line: 17, flags: DIFlagFwdDecl)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3886, file: !3582, line: 394, baseType: !3988, size: 64, offset: 1984)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3886, file: !3582, line: 395, baseType: !3995, size: 64, offset: 2048)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !3122, !195}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3886, file: !3582, line: 401, baseType: !1821, size: 64, offset: 2112)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3581, file: !3582, line: 471, baseType: !264, size: 128, offset: 1344)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3123, file: !3124, line: 198, baseType: !3760, size: 64, offset: 192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3123, file: !3124, line: 199, baseType: !3884, size: 64, offset: 256)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3123, file: !3124, line: 201, baseType: !4003, size: 64, offset: 320)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4005, line: 269, size: 128, elements: !4006)
!4005 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4006 = !{!4007, !4048}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4004, file: !4005, line: 270, baseType: !4008, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4005, line: 231, size: 1152, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4014, !4015, !4016, !4021, !4025, !4026, !4027, !4028, !4032, !4033, !4037, !4038, !4042, !4046, !4047}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4009, file: !4005, line: 232, baseType: !199, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4009, file: !4005, line: 233, baseType: !109, size: 32, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4009, file: !4005, line: 238, baseType: !3962, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4009, file: !4005, line: 239, baseType: !3909, size: 64, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4009, file: !4005, line: 240, baseType: !3909, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4009, file: !4005, line: 241, baseType: !4017, size: 64, offset: 320)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!830, !3122, !794, !4020, !201, !1615, !161}
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4009, file: !4005, line: 243, baseType: !4022, size: 64, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!830, !3122, !794, !3829, !201}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4009, file: !4005, line: 245, baseType: !3928, size: 64, offset: 448)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4009, file: !4005, line: 247, baseType: !3928, size: 64, offset: 512)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4009, file: !4005, line: 249, baseType: !3936, size: 64, offset: 576)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4009, file: !4005, line: 250, baseType: !4029, size: 64, offset: 640)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!164, !3122, !794, !1844}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4009, file: !4005, line: 252, baseType: !3909, size: 64, offset: 704)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4009, file: !4005, line: 257, baseType: !4034, size: 64, offset: 768)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{null, !3122, !3829, !3829, !201}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4009, file: !4005, line: 259, baseType: !3909, size: 64, offset: 832)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4009, file: !4005, line: 260, baseType: !4039, size: 64, offset: 896)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !3122, !513}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4009, file: !4005, line: 261, baseType: !4043, size: 64, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!201, !3122, !3829, !3829, !201}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4009, file: !4005, line: 263, baseType: !4034, size: 64, offset: 1024)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4009, file: !4005, line: 266, baseType: !918, size: 64, offset: 1088)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4004, file: !4005, line: 271, baseType: !3122, size: 64, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3123, file: !3124, line: 202, baseType: !4050, size: 384, offset: 384)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4005, line: 17, size: 384, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4050, file: !4005, line: 18, baseType: !214, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4050, file: !4005, line: 19, baseType: !225, size: 32, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4050, file: !4005, line: 20, baseType: !7, size: 32, offset: 96)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4050, file: !4005, line: 21, baseType: !264, size: 128, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4050, file: !4005, line: 22, baseType: !264, size: 128, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3123, file: !3124, line: 204, baseType: !210, size: 256, offset: 768)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3123, file: !3124, line: 205, baseType: !210, size: 256, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3123, file: !3124, line: 206, baseType: !210, size: 256, offset: 1280)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3123, file: !3124, line: 207, baseType: !452, size: 320, offset: 1536)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3123, file: !3124, line: 208, baseType: !210, size: 256, offset: 1856)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3123, file: !3124, line: 209, baseType: !3732, size: 352, offset: 2112)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3123, file: !3124, line: 209, baseType: !3732, size: 352, offset: 2464)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3123, file: !3124, line: 210, baseType: !4065, size: 512, offset: 2816)
!4065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 512, elements: !974)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3123, file: !3124, line: 211, baseType: !161, size: 64, offset: 3328)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3123, file: !3124, line: 212, baseType: !109, size: 32, offset: 3392)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3123, file: !3124, line: 213, baseType: !7, size: 32, offset: 3424)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3123, file: !3124, line: 214, baseType: !3974, size: 64, offset: 3456)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3123, file: !3124, line: 221, baseType: !4071, size: 64, align: 64, offset: 3520)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3123, file: !3124, line: 216, size: 64, align: 64, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4071, file: !3124, line: 217, baseType: !297, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4071, file: !3124, line: 218, baseType: !513, size: 8, offset: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4071, file: !3124, line: 219, baseType: !513, size: 8, offset: 40)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4071, file: !3124, line: 220, baseType: !4077, offset: 64)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !3868)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3123, file: !3124, line: 230, baseType: !4079, size: 192, align: 64, offset: 3584)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3123, file: !3124, line: 223, size: 192, align: 64, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084, !4085, !4086}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4079, file: !3124, line: 224, baseType: !338, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4079, file: !3124, line: 225, baseType: !338, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4079, file: !3124, line: 226, baseType: !297, size: 32, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4079, file: !3124, line: 227, baseType: !248, size: 8, offset: 160)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4079, file: !3124, line: 228, baseType: !513, size: 8, offset: 168)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4079, file: !3124, line: 229, baseType: !4077, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3123, file: !3124, line: 232, baseType: !513, size: 8, offset: 3776)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3123, file: !3124, line: 233, baseType: !513, size: 8, offset: 3784)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3123, file: !3124, line: 234, baseType: !109, size: 32, offset: 3808)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3123, file: !3124, line: 236, baseType: !3122, size: 64, offset: 3840)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3123, file: !3124, line: 237, baseType: !4092, size: 64, offset: 3904)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4093, file: !14, line: 1084, baseType: !315, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4093, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4093, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4093, file: !14, line: 1087, baseType: !4092, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4093, file: !14, line: 1088, baseType: !794, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4093, file: !14, line: 1089, baseType: !287, size: 128, align: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3123, file: !3124, line: 238, baseType: !364, size: 192, offset: 3968)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3123, file: !3124, line: 239, baseType: !364, size: 192, offset: 4160)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3123, file: !3124, line: 240, baseType: !1349, size: 256, offset: 4352)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3123, file: !3124, line: 241, baseType: !157, size: 64, offset: 4608)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3123, file: !3124, line: 242, baseType: !157, size: 64, offset: 4672)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3123, file: !3124, line: 243, baseType: !297, size: 32, offset: 4736)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3123, file: !3124, line: 244, baseType: !109, size: 32, offset: 4768)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3123, file: !3124, line: 245, baseType: !3847, size: 64, offset: 4800)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3123, file: !3124, line: 247, baseType: !264, size: 128, offset: 4864)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3123, file: !3124, line: 250, baseType: !1349, size: 256, offset: 4992)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3057, file: !3058, line: 185, baseType: !4112, size: 64, offset: 3328)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !643, line: 860, baseType: !4113)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !643, line: 853, size: 64, elements: !4114)
!4114 = !{!4115, !4116}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4113, file: !643, line: 858, baseType: !642, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4113, file: !643, line: 859, baseType: !297, size: 32, offset: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3057, file: !3058, line: 186, baseType: !420, size: 64, offset: 3392)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3057, file: !3058, line: 186, baseType: !420, size: 64, offset: 3456)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3057, file: !3058, line: 186, baseType: !420, size: 64, offset: 3520)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3057, file: !3058, line: 186, baseType: !420, size: 64, offset: 3584)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3057, file: !3058, line: 187, baseType: !420, size: 64, offset: 3648)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3057, file: !3058, line: 188, baseType: !420, size: 64, offset: 3712)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3057, file: !3058, line: 189, baseType: !2990, size: 192, offset: 3776)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3057, file: !3058, line: 190, baseType: !161, size: 64, offset: 3968)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3057, file: !3058, line: 190, baseType: !161, size: 64, offset: 4032)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3057, file: !3058, line: 190, baseType: !161, size: 64, offset: 4096)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3057, file: !3058, line: 190, baseType: !161, size: 64, offset: 4160)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3057, file: !3058, line: 191, baseType: !161, size: 64, offset: 4224)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3057, file: !3058, line: 191, baseType: !161, size: 64, offset: 4288)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3057, file: !3058, line: 191, baseType: !161, size: 64, offset: 4352)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3057, file: !3058, line: 191, baseType: !161, size: 64, offset: 4416)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3057, file: !3058, line: 192, baseType: !161, size: 64, offset: 4480)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3057, file: !3058, line: 192, baseType: !161, size: 64, offset: 4544)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3057, file: !3058, line: 192, baseType: !161, size: 64, offset: 4608)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3057, file: !3058, line: 192, baseType: !161, size: 64, offset: 4672)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3057, file: !3058, line: 193, baseType: !161, size: 64, offset: 4736)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3057, file: !3058, line: 193, baseType: !161, size: 64, offset: 4800)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3057, file: !3058, line: 194, baseType: !4139, size: 448, offset: 4864)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4140, line: 12, size: 448, elements: !4141)
!4140 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147, !4148}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4139, file: !4140, line: 15, baseType: !420, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4139, file: !4140, line: 17, baseType: !420, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4139, file: !4140, line: 19, baseType: !420, size: 64, offset: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4139, file: !4140, line: 21, baseType: !420, size: 64, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4139, file: !4140, line: 29, baseType: !420, size: 64, offset: 256)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4139, file: !4140, line: 35, baseType: !420, size: 64, offset: 320)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4139, file: !4140, line: 44, baseType: !420, size: 64, offset: 384)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3057, file: !3058, line: 202, baseType: !422, size: 64, offset: 5312)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3057, file: !3058, line: 213, baseType: !4151, size: 2048, offset: 5376)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4152, size: 2048, elements: !3025)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4153, line: 43, size: 128, elements: !4154)
!4153 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4154 = !{!4155, !4156}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4152, file: !4153, line: 44, baseType: !203, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4152, file: !4153, line: 45, baseType: !203, size: 64, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3057, file: !3058, line: 216, baseType: !4158, size: 448, offset: 7424)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3058, line: 30, size: 448, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4158, file: !3058, line: 31, baseType: !109, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4158, file: !3058, line: 32, baseType: !158, size: 64, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4158, file: !3058, line: 33, baseType: !161, size: 64, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4158, file: !3058, line: 34, baseType: !420, size: 64, offset: 192)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4158, file: !3058, line: 34, baseType: !420, size: 64, offset: 256)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4158, file: !3058, line: 35, baseType: !161, size: 64, offset: 320)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4158, file: !3058, line: 35, baseType: !161, size: 64, offset: 384)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3057, file: !3058, line: 219, baseType: !4168, size: 64, offset: 7872)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3058, line: 219, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3057, file: !3058, line: 222, baseType: !7, size: 32, offset: 7936)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3057, file: !3058, line: 223, baseType: !4172, size: 64, offset: 8000)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3058, line: 223, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3057, file: !3058, line: 230, baseType: !513, size: 8, offset: 8064)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3057, file: !3058, line: 231, baseType: !482, size: 16, offset: 8080)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3057, file: !3058, line: 232, baseType: !482, size: 16, offset: 8096)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3057, file: !3058, line: 234, baseType: !1194, size: 64, offset: 8128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3057, file: !3058, line: 237, baseType: !210, size: 256, offset: 8192)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3057, file: !3058, line: 243, baseType: !452, size: 320, offset: 8448)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2601, file: !2602, line: 1111, baseType: !4181, size: 64, offset: 15424)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3058, line: 20, size: 16640, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4182, file: !3058, line: 21, baseType: !297, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4182, file: !3058, line: 22, baseType: !342, size: 32, offset: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4182, file: !3058, line: 23, baseType: !364, size: 192, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4182, file: !3058, line: 24, baseType: !4188, size: 16384, offset: 256)
!4188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4189, size: 16384, elements: !974)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !603, line: 51, size: 256, elements: !4190)
!4190 = !{!4191}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4189, file: !603, line: 52, baseType: !4192, size: 256)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !603, line: 37, size: 256, elements: !4193)
!4193 = !{!4194, !4201, !4202, !4206}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4192, file: !603, line: 39, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4196, line: 83, baseType: !4197)
!4196 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4196, line: 82, baseType: !4199)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !109}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4192, file: !603, line: 40, baseType: !161, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4192, file: !603, line: 46, baseType: !4203, size: 64, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4196, line: 86, baseType: !4204)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4196, line: 85, baseType: !2229)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4192, file: !603, line: 48, baseType: !3072, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2601, file: !2602, line: 1112, baseType: !3072, size: 64, offset: 15488)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2601, file: !2602, line: 1113, baseType: !3072, size: 64, offset: 15552)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2601, file: !2602, line: 1115, baseType: !3072, size: 64, offset: 15616)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2601, file: !2602, line: 1116, baseType: !3068, size: 192, offset: 15680)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2601, file: !2602, line: 1117, baseType: !161, size: 64, offset: 15872)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2601, file: !2602, line: 1118, baseType: !201, size: 64, offset: 15936)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2601, file: !2602, line: 1119, baseType: !7, size: 32, offset: 16000)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2601, file: !2602, line: 1121, baseType: !290, size: 64, offset: 16064)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2601, file: !2602, line: 1125, baseType: !4216, size: 64, offset: 16128)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2602, line: 43, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2601, file: !2602, line: 1127, baseType: !383, size: 32, offset: 16192)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2601, file: !2602, line: 1128, baseType: !7, size: 32, offset: 16224)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2601, file: !2602, line: 1130, baseType: !4221, size: 128, offset: 16256)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4222, line: 37, size: 128, elements: !4223)
!4222 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4223 = !{!4224, !4225, !4226}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4221, file: !4222, line: 38, baseType: !109, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4221, file: !4222, line: 39, baseType: !238, size: 32, offset: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4221, file: !4222, line: 40, baseType: !4227, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4222, line: 24, flags: DIFlagFwdDecl)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2601, file: !2602, line: 1131, baseType: !4230, size: 256, offset: 16384)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4231, line: 12, size: 256, elements: !4232)
!4231 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4232 = !{!4233, !4234, !4235, !4236}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4230, file: !4231, line: 13, baseType: !199, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4230, file: !4231, line: 14, baseType: !161, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4230, file: !4231, line: 15, baseType: !161, size: 64, offset: 128)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4230, file: !4231, line: 16, baseType: !513, size: 8, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2601, file: !2602, line: 1134, baseType: !420, size: 64, offset: 16640)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2601, file: !2602, line: 1135, baseType: !420, size: 64, offset: 16704)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2601, file: !2602, line: 1138, baseType: !297, size: 32, offset: 16768)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2601, file: !2602, line: 1141, baseType: !225, size: 32, offset: 16800)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2601, file: !2602, line: 1143, baseType: !4242, size: 64, offset: 16832)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2602, line: 735, size: 64, elements: !4243)
!4243 = !{!4244}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4242, file: !2602, line: 736, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2601, file: !2602, line: 1147, baseType: !1044, size: 128, offset: 16896)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2601, file: !2602, line: 1149, baseType: !2600, size: 64, offset: 17024)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2601, file: !2602, line: 1151, baseType: !4249, size: 64, offset: 17088)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2602, line: 1151, flags: DIFlagFwdDecl)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2601, file: !2602, line: 1188, baseType: !157, size: 64, offset: 17152)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2601, file: !2602, line: 1191, baseType: !4253, size: 64, offset: 17216)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2602, line: 44, flags: DIFlagFwdDecl)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2601, file: !2602, line: 1194, baseType: !4256, size: 64, offset: 17280)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2602, line: 45, flags: DIFlagFwdDecl)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2601, file: !2602, line: 1197, baseType: !4259, size: 64, offset: 17344)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2602, line: 61, flags: DIFlagFwdDecl)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2601, file: !2602, line: 1199, baseType: !4262, size: 64, offset: 17408)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4264, line: 99, size: 128, elements: !4265)
!4264 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4265 = !{!4266, !4267, !4268}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4263, file: !4264, line: 100, baseType: !214, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4263, file: !4264, line: 101, baseType: !238, size: 32, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4263, file: !4264, line: 103, baseType: !256, size: 16, offset: 96)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2601, file: !2602, line: 1202, baseType: !4270, size: 64, offset: 17472)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2602, line: 48, flags: DIFlagFwdDecl)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2601, file: !2602, line: 1205, baseType: !161, size: 64, offset: 17536)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2601, file: !2602, line: 1206, baseType: !4274, size: 64, offset: 17600)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !603, line: 14, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !603, line: 12, size: 384, elements: !4277)
!4277 = !{!4278}
!4278 = !DIDerivedType(tag: DW_TAG_member, scope: !4276, file: !603, line: 13, baseType: !4279, size: 384)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4276, file: !603, line: 13, size: 384, elements: !4280)
!4280 = !{!4281, !4282, !4283, !4284}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4279, file: !603, line: 13, baseType: !109, size: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4279, file: !603, line: 13, baseType: !109, size: 32, offset: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4279, file: !603, line: 13, baseType: !109, size: 32, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4279, file: !603, line: 13, baseType: !4285, size: 256, offset: 128)
!4285 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4286, line: 37, size: 256, elements: !4287)
!4286 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4287 = !{!4288, !4293, !4306, !4312, !4321, !4348, !4353}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4285, file: !4286, line: 42, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !4286, line: 39, size: 64, elements: !4290)
!4290 = !{!4291, !4292}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4289, file: !4286, line: 40, baseType: !2967, size: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4289, file: !4286, line: 41, baseType: !389, size: 32, offset: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4285, file: !4286, line: 50, baseType: !4294, size: 192)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !4286, line: 45, size: 192, elements: !4295)
!4295 = !{!4296, !4298, !4299, !4305}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4294, file: !4286, line: 46, baseType: !4297, size: 32)
!4297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !169, line: 95, baseType: !109)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4294, file: !4286, line: 47, baseType: !109, size: 32, offset: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4294, file: !4286, line: 48, baseType: !4300, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4286, line: 11, baseType: !4301)
!4301 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4286, line: 8, size: 64, elements: !4302)
!4302 = !{!4303, !4304}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4301, file: !4286, line: 9, baseType: !109, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4301, file: !4286, line: 10, baseType: !157, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4294, file: !4286, line: 49, baseType: !109, size: 32, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4285, file: !4286, line: 57, baseType: !4307, size: 128)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !4286, line: 53, size: 128, elements: !4308)
!4308 = !{!4309, !4310, !4311}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4307, file: !4286, line: 54, baseType: !2967, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4307, file: !4286, line: 55, baseType: !389, size: 32, offset: 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4307, file: !4286, line: 56, baseType: !4300, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4285, file: !4286, line: 66, baseType: !4313, size: 256)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !4286, line: 60, size: 256, elements: !4314)
!4314 = !{!4315, !4316, !4317, !4318, !4320}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4313, file: !4286, line: 61, baseType: !2967, size: 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4313, file: !4286, line: 62, baseType: !389, size: 32, offset: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4313, file: !4286, line: 63, baseType: !109, size: 32, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4313, file: !4286, line: 64, baseType: !4319, size: 64, offset: 128)
!4319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !169, line: 94, baseType: !832)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4313, file: !4286, line: 65, baseType: !4319, size: 64, offset: 192)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4285, file: !4286, line: 105, baseType: !4322, size: 256)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !4286, line: 69, size: 256, elements: !4323)
!4323 = !{!4324, !4325}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4322, file: !4286, line: 70, baseType: !157, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, scope: !4322, file: !4286, line: 79, baseType: !4326, size: 192, offset: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4322, file: !4286, line: 79, size: 192, elements: !4327)
!4327 = !{!4328, !4329, !4330, !4337, !4342}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4326, file: !4286, line: 81, baseType: !109, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4326, file: !4286, line: 86, baseType: !482, size: 16)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4326, file: !4286, line: 92, baseType: !4331, size: 192)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4326, file: !4286, line: 88, size: 192, elements: !4332)
!4332 = !{!4333, !4335, !4336}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4331, file: !4286, line: 89, baseType: !4334, size: 64)
!4334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 64, elements: !2755)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4331, file: !4286, line: 90, baseType: !157, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4331, file: !4286, line: 91, baseType: !157, size: 64, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4326, file: !4286, line: 97, baseType: !4338, size: 96)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4326, file: !4286, line: 94, size: 96, elements: !4339)
!4339 = !{!4340, !4341}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4338, file: !4286, line: 95, baseType: !4334, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4338, file: !4286, line: 96, baseType: !478, size: 32, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4326, file: !4286, line: 103, baseType: !4343, size: 128)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4326, file: !4286, line: 99, size: 128, elements: !4344)
!4344 = !{!4345, !4346, !4347}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4343, file: !4286, line: 100, baseType: !161, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4343, file: !4286, line: 101, baseType: !478, size: 32, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4343, file: !4286, line: 102, baseType: !478, size: 32, offset: 96)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4285, file: !4286, line: 111, baseType: !4349, size: 128)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !4286, line: 108, size: 128, elements: !4350)
!4350 = !{!4351, !4352}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4349, file: !4286, line: 109, baseType: !158, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4349, file: !4286, line: 110, baseType: !109, size: 32, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4285, file: !4286, line: 118, baseType: !4354, size: 128)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !4286, line: 114, size: 128, elements: !4355)
!4355 = !{!4356, !4357, !4358}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4354, file: !4286, line: 115, baseType: !157, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4354, file: !4286, line: 116, baseType: !109, size: 32, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4354, file: !4286, line: 117, baseType: !7, size: 32, offset: 96)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2601, file: !2602, line: 1208, baseType: !4139, size: 448, offset: 17664)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2601, file: !2602, line: 1215, baseType: !420, size: 64, offset: 18112)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2601, file: !2602, line: 1217, baseType: !420, size: 64, offset: 18176)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2601, file: !2602, line: 1219, baseType: !420, size: 64, offset: 18240)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2601, file: !2602, line: 1223, baseType: !4364, size: 64, offset: 18304)
!4364 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4365, line: 99, baseType: !4366)
!4365 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4365, line: 99, size: 64, elements: !4367)
!4367 = !{!4368}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4366, file: !4365, line: 99, baseType: !2832, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2601, file: !2602, line: 1225, baseType: !642, size: 32, offset: 18368)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2601, file: !2602, line: 1226, baseType: !109, size: 32, offset: 18400)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2601, file: !2602, line: 1227, baseType: !109, size: 32, offset: 18432)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2601, file: !2602, line: 1231, baseType: !4373, size: 64, offset: 18496)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2602, line: 1231, flags: DIFlagFwdDecl)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2601, file: !2602, line: 1233, baseType: !264, size: 128, offset: 18560)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2601, file: !2602, line: 1240, baseType: !4377, size: 64, offset: 18688)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2602, line: 62, flags: DIFlagFwdDecl)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2601, file: !2602, line: 1242, baseType: !4380, size: 64, offset: 18752)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2602, line: 1242, flags: DIFlagFwdDecl)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2601, file: !2602, line: 1244, baseType: !264, size: 128, offset: 18816)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2601, file: !2602, line: 1245, baseType: !4384, size: 64, offset: 18944)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2602, line: 51, flags: DIFlagFwdDecl)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2601, file: !2602, line: 1246, baseType: !210, size: 256, offset: 19008)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2601, file: !2602, line: 1247, baseType: !7, size: 32, offset: 19264)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2601, file: !2602, line: 1250, baseType: !4389, size: 64, offset: 19328)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2602, line: 57, flags: DIFlagFwdDecl)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2601, file: !2602, line: 1251, baseType: !210, size: 256, offset: 19392)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2601, file: !2602, line: 1252, baseType: !264, size: 128, offset: 19648)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2601, file: !2602, line: 1259, baseType: !1440, size: 64, offset: 19776)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2601, file: !2602, line: 1260, baseType: !482, size: 16, offset: 19840)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2601, file: !2602, line: 1261, baseType: !482, size: 16, offset: 19856)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2601, file: !2602, line: 1314, baseType: !4397, size: 64, offset: 19904)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4399, line: 62, size: 256, align: 256, elements: !4400)
!4399 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4406, !4407}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4398, file: !4399, line: 75, baseType: !478, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4398, file: !4399, line: 90, baseType: !478, size: 32, offset: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4398, file: !4399, line: 112, baseType: !421, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4398, file: !4399, line: 132, baseType: !478, size: 32, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4398, file: !4399, line: 140, baseType: !478, size: 32, offset: 160)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4398, file: !4399, line: 149, baseType: !478, size: 32, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4398, file: !4399, line: 154, baseType: !4408, offset: 224)
!4408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, elements: !379)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2601, file: !2602, line: 1315, baseType: !477, size: 32, offset: 19968)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2601, file: !2602, line: 1316, baseType: !477, size: 32, offset: 20000)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2601, file: !2602, line: 1321, baseType: !161, size: 64, offset: 20032)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2601, file: !2602, line: 1325, baseType: !109, size: 32, offset: 20096)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2601, file: !2602, line: 1326, baseType: !109, size: 32, offset: 20128)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2601, file: !2602, line: 1327, baseType: !109, size: 32, offset: 20160)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2601, file: !2602, line: 1328, baseType: !109, size: 32, offset: 20192)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2601, file: !2602, line: 1329, baseType: !287, size: 128, align: 64, offset: 20224)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2601, file: !2602, line: 1332, baseType: !4418, size: 128, offset: 20352)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4419, line: 51, size: 128, elements: !4420)
!4419 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4420 = !{!4421, !4426, !4427}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4418, file: !4419, line: 60, baseType: !4422, size: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4423, line: 7, size: 64, elements: !4424)
!4423 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4424 = !{!4425}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4422, file: !4423, line: 12, baseType: !2829, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4418, file: !4419, line: 63, baseType: !513, size: 8, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4418, file: !4419, line: 70, baseType: !513, size: 8, offset: 72)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2601, file: !2602, line: 1335, baseType: !3680, size: 64, offset: 20480)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2601, file: !2602, line: 1337, baseType: !4430, size: 128, offset: 20544)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4419, line: 39, size: 128, elements: !4431)
!4431 = !{!4432, !4433, !4434}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4430, file: !4419, line: 40, baseType: !1062, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4430, file: !4419, line: 42, baseType: !478, size: 32, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4430, file: !4419, line: 43, baseType: !478, size: 32, offset: 96)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2601, file: !2602, line: 1340, baseType: !4436, size: 64, offset: 20672)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2602, line: 69, flags: DIFlagFwdDecl)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2601, file: !2602, line: 1351, baseType: !109, size: 32, offset: 20736)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2601, file: !2602, line: 1352, baseType: !109, size: 32, offset: 20768)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2601, file: !2602, line: 1354, baseType: !161, size: 64, offset: 20800)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2601, file: !2602, line: 1364, baseType: !420, size: 64, offset: 20864)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2601, file: !2602, line: 1365, baseType: !420, size: 64, offset: 20928)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2601, file: !2602, line: 1412, baseType: !161, size: 64, offset: 20992)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2601, file: !2602, line: 1453, baseType: !4445, size: 64, offset: 21056)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2602, line: 1453, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2601, file: !2602, line: 1457, baseType: !4448, size: 64, offset: 21120)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !4450)
!4450 = !{!4451, !4452, !4471, !4474, !4475, !4508, !4518}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4449, file: !68, line: 62, baseType: !67, size: 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, scope: !4449, file: !68, line: 64, baseType: !4453, size: 192, offset: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4449, file: !68, line: 64, size: 192, elements: !4454)
!4454 = !{!4455, !4466}
!4455 = !DIDerivedType(tag: DW_TAG_member, scope: !4453, file: !68, line: 65, baseType: !4456, size: 192)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4453, file: !68, line: 65, size: 192, elements: !4457)
!4457 = !{!4458, !4465}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4456, file: !68, line: 66, baseType: !4459, size: 128)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4460, line: 50, size: 128, elements: !4461)
!4460 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4461 = !{!4462, !4463, !4464}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4459, file: !4460, line: 52, baseType: !161, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4459, file: !4460, line: 54, baseType: !7, size: 32, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4459, file: !4460, line: 55, baseType: !7, size: 32, offset: 96)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4456, file: !68, line: 67, baseType: !161, size: 64, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, scope: !4453, file: !68, line: 70, baseType: !4467, size: 192)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4453, file: !68, line: 70, size: 192, elements: !4468)
!4468 = !{!4469, !4470}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4467, file: !68, line: 71, baseType: !287, size: 128, align: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4467, file: !68, line: 72, baseType: !161, size: 64, offset: 128)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4449, file: !68, line: 76, baseType: !4472, size: 64, offset: 256)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4449, file: !68, line: 77, baseType: !161, size: 64, offset: 320)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4449, file: !68, line: 79, baseType: !4476, size: 64, offset: 384)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4460, line: 25, size: 256, elements: !4478)
!4478 = !{!4479, !4485, !4489}
!4479 = !DIDerivedType(tag: DW_TAG_member, scope: !4477, file: !4460, line: 26, baseType: !4480, size: 128)
!4480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4477, file: !4460, line: 26, size: 128, elements: !4481)
!4481 = !{!4482, !4484}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4480, file: !4460, line: 27, baseType: !4483, size: 128)
!4483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, elements: !3025)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4480, file: !4460, line: 28, baseType: !4483, size: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4477, file: !4460, line: 31, baseType: !4486, size: 64, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4488)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4460, line: 23, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, scope: !4477, file: !4460, line: 33, baseType: !4490, size: 64, offset: 192)
!4490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4477, file: !4460, line: 33, size: 64, elements: !4491)
!4491 = !{!4492, !4498, !4503}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4490, file: !4460, line: 38, baseType: !4493, size: 64)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4490, file: !4460, line: 34, size: 64, elements: !4494)
!4494 = !{!4495, !4496, !4497}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4493, file: !4460, line: 35, baseType: !437, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4493, file: !4460, line: 36, baseType: !246, size: 8, offset: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4493, file: !4460, line: 37, baseType: !246, size: 8, offset: 40)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4490, file: !4460, line: 42, baseType: !4499, size: 16)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4490, file: !4460, line: 39, size: 16, elements: !4500)
!4500 = !{!4501, !4502}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4499, file: !4460, line: 40, baseType: !246, size: 8)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4499, file: !4460, line: 41, baseType: !246, size: 8, offset: 8)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4490, file: !4460, line: 46, baseType: !4504, size: 16)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4490, file: !4460, line: 43, size: 16, elements: !4505)
!4505 = !{!4506, !4507}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4504, file: !4460, line: 44, baseType: !246, size: 8)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4504, file: !4460, line: 45, baseType: !246, size: 8, offset: 8)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4449, file: !68, line: 81, baseType: !4509, size: 64, offset: 448)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !4511)
!4511 = !{!4512, !4513, !4514, !4515, !4516, !4517}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4510, file: !68, line: 86, baseType: !4472, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4510, file: !68, line: 87, baseType: !161, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4510, file: !68, line: 88, baseType: !161, size: 64, offset: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4510, file: !68, line: 89, baseType: !161, size: 64, offset: 192)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4510, file: !68, line: 90, baseType: !513, size: 8, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4510, file: !68, line: 92, baseType: !4509, size: 64, offset: 320)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4449, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2601, file: !2602, line: 1463, baseType: !4520, offset: 21184)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2602, line: 739, elements: !1215)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2601, file: !2602, line: 1470, baseType: !287, size: 128, align: 64, offset: 21184)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2601, file: !2602, line: 1471, baseType: !342, size: 32, offset: 21312)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2601, file: !2602, line: 1472, baseType: !109, size: 32, offset: 21344)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2601, file: !2602, line: 1474, baseType: !2600, size: 64, offset: 21376)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2601, file: !2602, line: 1475, baseType: !2125, size: 320, offset: 21440)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2601, file: !2602, line: 1478, baseType: !4527, size: 64, offset: 21760)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4529, line: 49, size: 512, elements: !4530)
!4529 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4530 = !{!4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4540}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4528, file: !4529, line: 50, baseType: !4527, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4528, file: !4529, line: 51, baseType: !157, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4528, file: !4529, line: 52, baseType: !161, size: 64, offset: 128)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4528, file: !4529, line: 53, baseType: !161, size: 64, offset: 192)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4528, file: !4529, line: 54, baseType: !1614, size: 64, offset: 256)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4528, file: !4529, line: 56, baseType: !7, size: 32, offset: 320)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4528, file: !4529, line: 58, baseType: !7, size: 32, offset: 352)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4528, file: !4529, line: 59, baseType: !4539, size: 64, offset: 384)
!4539 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !160, line: 159, baseType: !420)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4528, file: !4529, line: 60, baseType: !1310, size: 64, offset: 448)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2601, file: !2602, line: 1482, baseType: !342, size: 32, offset: 21824)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2601, file: !2602, line: 1489, baseType: !157, size: 64, offset: 21888)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2601, file: !2602, line: 1504, baseType: !157, size: 64, offset: 21952)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2601, file: !2602, line: 1505, baseType: !421, size: 64, offset: 22016)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2601, file: !2602, line: 1506, baseType: !420, size: 64, offset: 22080)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2601, file: !2602, line: 1507, baseType: !421, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2601, file: !2602, line: 1508, baseType: !421, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2601, file: !2602, line: 1509, baseType: !421, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2601, file: !2602, line: 1510, baseType: !287, size: 128, align: 64, offset: 22208)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2601, file: !2602, line: 1511, baseType: !109, size: 32, offset: 22336)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2601, file: !2602, line: 1515, baseType: !3790, size: 64, offset: 22400)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2601, file: !2602, line: 1518, baseType: !3790, size: 64, offset: 22464)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2601, file: !2602, line: 1528, baseType: !287, size: 128, align: 64, offset: 22528)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2601, file: !2602, line: 1552, baseType: !4555, size: 35328, offset: 23040)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4556, line: 430, size: 35328, elements: !4557)
!4556 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4557 = !{!4558, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4587, !4588, !4589, !4590, !4591, !4592, !4595, !4596, !4597, !4598}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4555, file: !4556, line: 432, baseType: !4559, size: 192)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4560, size: 192, elements: !334)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4561, line: 16, size: 64, elements: !4562)
!4561 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4562 = !{!4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4560, file: !4561, line: 17, baseType: !254, size: 16)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4560, file: !4561, line: 18, baseType: !254, size: 16, offset: 16)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4560, file: !4561, line: 19, baseType: !254, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4560, file: !4561, line: 19, baseType: !254, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4560, file: !4561, line: 19, baseType: !254, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4560, file: !4561, line: 19, baseType: !254, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4560, file: !4561, line: 19, baseType: !254, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4560, file: !4561, line: 20, baseType: !254, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4560, file: !4561, line: 20, baseType: !254, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4560, file: !4561, line: 20, baseType: !254, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4560, file: !4561, line: 20, baseType: !254, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4560, file: !4561, line: 20, baseType: !254, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4560, file: !4561, line: 20, baseType: !254, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4555, file: !4556, line: 436, baseType: !161, size: 64, offset: 192)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4555, file: !4556, line: 440, baseType: !256, size: 16, offset: 256)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4555, file: !4556, line: 441, baseType: !256, size: 16, offset: 272)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4555, file: !4556, line: 442, baseType: !256, size: 16, offset: 288)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4555, file: !4556, line: 443, baseType: !256, size: 16, offset: 304)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4555, file: !4556, line: 447, baseType: !161, size: 64, offset: 320)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4555, file: !4556, line: 448, baseType: !161, size: 64, offset: 384)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4555, file: !4556, line: 459, baseType: !4584, size: 256, offset: 448)
!4584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4585, size: 256, elements: !360)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4556, line: 428, flags: DIFlagFwdDecl)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4555, file: !4556, line: 461, baseType: !161, size: 64, offset: 704)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4555, file: !4556, line: 463, baseType: !161, size: 64, offset: 768)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4555, file: !4556, line: 465, baseType: !161, size: 64, offset: 832)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4555, file: !4556, line: 466, baseType: !161, size: 64, offset: 896)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4555, file: !4556, line: 467, baseType: !161, size: 64, offset: 960)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4555, file: !4556, line: 473, baseType: !4593, size: 64, offset: 1024)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4556, line: 10, flags: DIFlagFwdDecl)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4555, file: !4556, line: 480, baseType: !161, size: 64, offset: 1088)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4555, file: !4556, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4555, file: !4556, line: 491, baseType: !477, size: 32, offset: 1184)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4555, file: !4556, line: 501, baseType: !4599, size: 33792, offset: 1536)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4600, line: 448, size: 33792, elements: !4601)
!4600 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4601 = !{!4602, !4603, !4604, !4767, !4768, !4774, !4775}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4599, file: !4600, line: 461, baseType: !7, size: 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4599, file: !4600, line: 468, baseType: !161, size: 64, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4599, file: !4600, line: 476, baseType: !4605, size: 64, offset: 128)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4600, line: 356, size: 33280, align: 512, elements: !4607)
!4607 = !{!4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4606, file: !4600, line: 358, baseType: !7, size: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4606, file: !4600, line: 361, baseType: !7, size: 32, offset: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4606, file: !4600, line: 364, baseType: !420, size: 64, offset: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4606, file: !4600, line: 367, baseType: !420, size: 64, offset: 128)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4606, file: !4600, line: 370, baseType: !420, size: 64, offset: 192)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4606, file: !4600, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4606, file: !4600, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4606, file: !4600, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4606, file: !4600, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4606, file: !4600, line: 397, baseType: !4618, size: 32768, offset: 512)
!4618 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4600, line: 348, size: 32768, elements: !4619)
!4619 = !{!4620, !4635, !4674, !4751, !4763}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4618, file: !4600, line: 349, baseType: !4621, size: 896)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4600, line: 12, size: 896, elements: !4622)
!4622 = !{!4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4634}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4621, file: !4600, line: 13, baseType: !477, size: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4621, file: !4600, line: 14, baseType: !477, size: 32, offset: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4621, file: !4600, line: 15, baseType: !477, size: 32, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4621, file: !4600, line: 16, baseType: !477, size: 32, offset: 96)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4621, file: !4600, line: 17, baseType: !477, size: 32, offset: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4621, file: !4600, line: 18, baseType: !477, size: 32, offset: 160)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4621, file: !4600, line: 19, baseType: !477, size: 32, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4621, file: !4600, line: 22, baseType: !4631, size: 640, offset: 224)
!4631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 640, elements: !4632)
!4632 = !{!4633}
!4633 = !DISubrange(count: 20)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4621, file: !4600, line: 25, baseType: !477, size: 32, offset: 864)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4618, file: !4600, line: 350, baseType: !4636, size: 4096, align: 128)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4600, line: 34, size: 4096, align: 128, elements: !4637)
!4637 = !{!4638, !4639, !4640, !4641, !4642, !4657, !4658, !4659, !4663, !4665, !4669}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4636, file: !4600, line: 35, baseType: !254, size: 16)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4636, file: !4600, line: 36, baseType: !254, size: 16, offset: 16)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4636, file: !4600, line: 37, baseType: !254, size: 16, offset: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4636, file: !4600, line: 38, baseType: !254, size: 16, offset: 48)
!4642 = !DIDerivedType(tag: DW_TAG_member, scope: !4636, file: !4600, line: 39, baseType: !4643, size: 128, offset: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4636, file: !4600, line: 39, size: 128, elements: !4644)
!4644 = !{!4645, !4650}
!4645 = !DIDerivedType(tag: DW_TAG_member, scope: !4643, file: !4600, line: 40, baseType: !4646, size: 128)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4643, file: !4600, line: 40, size: 128, elements: !4647)
!4647 = !{!4648, !4649}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4646, file: !4600, line: 41, baseType: !420, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4646, file: !4600, line: 42, baseType: !420, size: 64, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, scope: !4643, file: !4600, line: 44, baseType: !4651, size: 128)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4643, file: !4600, line: 44, size: 128, elements: !4652)
!4652 = !{!4653, !4654, !4655, !4656}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4651, file: !4600, line: 45, baseType: !477, size: 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4651, file: !4600, line: 46, baseType: !477, size: 32, offset: 32)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4651, file: !4600, line: 47, baseType: !477, size: 32, offset: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4651, file: !4600, line: 48, baseType: !477, size: 32, offset: 96)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4636, file: !4600, line: 51, baseType: !477, size: 32, offset: 192)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4636, file: !4600, line: 52, baseType: !477, size: 32, offset: 224)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4636, file: !4600, line: 55, baseType: !4660, size: 1024, offset: 256)
!4660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 1024, elements: !4661)
!4661 = !{!4662}
!4662 = !DISubrange(count: 32)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4636, file: !4600, line: 58, baseType: !4664, size: 2048, offset: 1280)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 2048, elements: !974)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4636, file: !4600, line: 60, baseType: !4666, size: 384, offset: 3328)
!4666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 384, elements: !4667)
!4667 = !{!4668}
!4668 = !DISubrange(count: 12)
!4669 = !DIDerivedType(tag: DW_TAG_member, scope: !4636, file: !4600, line: 62, baseType: !4670, size: 384, offset: 3712)
!4670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4636, file: !4600, line: 62, size: 384, elements: !4671)
!4671 = !{!4672, !4673}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4670, file: !4600, line: 63, baseType: !4666, size: 384)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4670, file: !4600, line: 64, baseType: !4666, size: 384)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4618, file: !4600, line: 351, baseType: !4675, size: 1088)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4600, line: 79, size: 1088, elements: !4676)
!4676 = !{!4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4750}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4675, file: !4600, line: 80, baseType: !477, size: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4675, file: !4600, line: 81, baseType: !477, size: 32, offset: 32)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4675, file: !4600, line: 82, baseType: !477, size: 32, offset: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4675, file: !4600, line: 83, baseType: !477, size: 32, offset: 96)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4675, file: !4600, line: 84, baseType: !477, size: 32, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4675, file: !4600, line: 85, baseType: !477, size: 32, offset: 160)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4675, file: !4600, line: 86, baseType: !477, size: 32, offset: 192)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4675, file: !4600, line: 88, baseType: !4631, size: 640, offset: 224)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4675, file: !4600, line: 89, baseType: !246, size: 8, offset: 864)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4675, file: !4600, line: 90, baseType: !246, size: 8, offset: 872)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4675, file: !4600, line: 91, baseType: !246, size: 8, offset: 880)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4675, file: !4600, line: 92, baseType: !246, size: 8, offset: 888)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4675, file: !4600, line: 93, baseType: !246, size: 8, offset: 896)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4675, file: !4600, line: 94, baseType: !246, size: 8, offset: 904)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4675, file: !4600, line: 95, baseType: !4692, size: 64, offset: 960)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4694, line: 11, size: 128, elements: !4695)
!4694 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4695 = !{!4696, !4697}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4693, file: !4694, line: 12, baseType: !158, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4693, file: !4694, line: 13, baseType: !4698, size: 64, offset: 64)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4700, line: 103, size: 1344, elements: !4701)
!4700 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4701 = !{!4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4730, !4731, !4732}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4699, file: !4700, line: 109, baseType: !161, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4699, file: !4700, line: 110, baseType: !161, size: 64, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4699, file: !4700, line: 111, baseType: !161, size: 64, offset: 128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4699, file: !4700, line: 112, baseType: !161, size: 64, offset: 192)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4699, file: !4700, line: 113, baseType: !161, size: 64, offset: 256)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4699, file: !4700, line: 114, baseType: !161, size: 64, offset: 320)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4699, file: !4700, line: 117, baseType: !161, size: 64, offset: 384)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4699, file: !4700, line: 118, baseType: !161, size: 64, offset: 448)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4699, file: !4700, line: 119, baseType: !161, size: 64, offset: 512)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4699, file: !4700, line: 120, baseType: !161, size: 64, offset: 576)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4699, file: !4700, line: 121, baseType: !161, size: 64, offset: 640)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4699, file: !4700, line: 122, baseType: !161, size: 64, offset: 704)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4699, file: !4700, line: 123, baseType: !161, size: 64, offset: 768)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4699, file: !4700, line: 124, baseType: !161, size: 64, offset: 832)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4699, file: !4700, line: 125, baseType: !161, size: 64, offset: 896)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4699, file: !4700, line: 139, baseType: !161, size: 64, offset: 960)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4699, file: !4700, line: 142, baseType: !161, size: 64, offset: 1024)
!4719 = !DIDerivedType(tag: DW_TAG_member, scope: !4699, file: !4700, line: 144, baseType: !4720, size: 64, offset: 1088)
!4720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4699, file: !4700, line: 144, size: 64, elements: !4721)
!4721 = !{!4722, !4723, !4724}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4720, file: !4700, line: 146, baseType: !254, size: 16)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4720, file: !4700, line: 148, baseType: !420, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4720, file: !4700, line: 150, baseType: !4725, size: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4700, line: 59, size: 64, elements: !4726)
!4726 = !{!4727, !4728, !4729}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4725, file: !4700, line: 61, baseType: !420, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4725, file: !4700, line: 63, baseType: !420, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4725, file: !4700, line: 65, baseType: !420, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4699, file: !4700, line: 153, baseType: !161, size: 64, offset: 1152)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4699, file: !4700, line: 154, baseType: !161, size: 64, offset: 1216)
!4732 = !DIDerivedType(tag: DW_TAG_member, scope: !4699, file: !4700, line: 156, baseType: !4733, size: 64, offset: 1280)
!4733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4699, file: !4700, line: 156, size: 64, elements: !4734)
!4734 = !{!4735, !4736, !4737}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4733, file: !4700, line: 158, baseType: !254, size: 16)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4733, file: !4700, line: 160, baseType: !420, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4733, file: !4700, line: 162, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4700, line: 69, size: 64, elements: !4739)
!4739 = !{!4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4738, file: !4700, line: 71, baseType: !420, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4738, file: !4700, line: 73, baseType: !420, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4738, file: !4700, line: 75, baseType: !420, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4738, file: !4700, line: 77, baseType: !420, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4738, file: !4700, line: 80, baseType: !420, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4738, file: !4700, line: 83, baseType: !420, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4738, file: !4700, line: 86, baseType: !420, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4738, file: !4700, line: 88, baseType: !420, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4738, file: !4700, line: 93, baseType: !420, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4738, file: !4700, line: 100, baseType: !420, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4675, file: !4600, line: 96, baseType: !477, size: 32, offset: 1024)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4618, file: !4600, line: 352, baseType: !4752, size: 4608, align: 512)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4600, line: 333, size: 4608, align: 512, elements: !4753)
!4753 = !{!4754, !4755, !4762}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4752, file: !4600, line: 334, baseType: !4636, size: 4096, align: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4752, file: !4600, line: 335, baseType: !4756, size: 512, offset: 4096)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4600, line: 312, size: 512, elements: !4757)
!4757 = !{!4758, !4759, !4760}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4756, file: !4600, line: 313, baseType: !420, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4756, file: !4600, line: 314, baseType: !420, size: 64, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4756, file: !4600, line: 315, baseType: !4761, size: 384, offset: 128)
!4761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 384, elements: !500)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4752, file: !4600, line: 336, baseType: !3784, offset: 4608)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4618, file: !4600, line: 353, baseType: !4764, size: 32768)
!4764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 32768, elements: !4765)
!4765 = !{!4766}
!4766 = !DISubrange(count: 4096)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4599, file: !4600, line: 484, baseType: !4605, size: 64, offset: 192)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4599, file: !4600, line: 491, baseType: !4769, size: 128, offset: 256)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4600, line: 404, size: 128, elements: !4770)
!4770 = !{!4771, !4772, !4773}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4769, file: !4600, line: 424, baseType: !420, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4769, file: !4600, line: 432, baseType: !7, size: 32, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4769, file: !4600, line: 440, baseType: !7, size: 32, offset: 96)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4599, file: !4600, line: 498, baseType: !4769, size: 128, offset: 384)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4599, file: !4600, line: 508, baseType: !4606, size: 33280, align: 512, offset: 512)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2583, file: !2584, line: 16, baseType: !364, size: 192, offset: 512)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2583, file: !2584, line: 17, baseType: !238, size: 32, offset: 704)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !886, file: !14, line: 1240, baseType: !157, size: 64, offset: 6912)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !886, file: !14, line: 1243, baseType: !477, size: 32, offset: 6976)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !886, file: !14, line: 1245, baseType: !468, size: 64, offset: 7040)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !886, file: !14, line: 1246, baseType: !468, size: 64, offset: 7104)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !886, file: !14, line: 1248, baseType: !478, size: 32, offset: 7168)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !886, file: !14, line: 1249, baseType: !4784, size: 64, offset: 7232)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !886, file: !14, line: 1252, baseType: !4787, size: 256, offset: 7296)
!4787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 256, elements: !4661)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !886, file: !14, line: 1253, baseType: !4789, size: 128, offset: 7552)
!4789 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4790, line: 21, baseType: !4791)
!4790 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4790, line: 19, size: 128, elements: !4792)
!4792 = !{!4793}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4791, file: !4790, line: 20, baseType: !4794, size: 128)
!4794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 128, elements: !3025)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !886, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !886, file: !14, line: 1261, baseType: !210, size: 256, offset: 7744)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !886, file: !14, line: 1267, baseType: !516, size: 64, offset: 8000)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !886, file: !14, line: 1269, baseType: !4799, size: 64, offset: 8064)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4801)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !638, line: 128, size: 1024, align: 512, elements: !4802)
!4802 = !{!4803, !4807, !4808, !4815, !4821, !4825, !4829, !4833, !4834, !4838, !4842, !4847, !4851}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4801, file: !638, line: 129, baseType: !4804, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!109, !636, !7}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4801, file: !638, line: 130, baseType: !4804, size: 64, offset: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4801, file: !638, line: 131, baseType: !4809, size: 64, offset: 128)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!109, !4812, !4814}
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4801, file: !638, line: 132, baseType: !4816, size: 64, offset: 192)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!109, !4812, !7, !516, !4819}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4801, file: !638, line: 134, baseType: !4822, size: 64, offset: 256)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!109, !4812}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4801, file: !638, line: 135, baseType: !4826, size: 64, offset: 320)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!109, !636}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4801, file: !638, line: 136, baseType: !4830, size: 64, offset: 384)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{null, !636}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4801, file: !638, line: 137, baseType: !4830, size: 64, offset: 448)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4801, file: !638, line: 138, baseType: !4835, size: 64, offset: 512)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{null, !636, !676}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4801, file: !638, line: 139, baseType: !4839, size: 64, offset: 576)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!199, !636, !199, !109}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4801, file: !638, line: 140, baseType: !4843, size: 64, offset: 640)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!631, !4846}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4801, file: !638, line: 141, baseType: !4848, size: 64, offset: 704)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!109, !799, !513}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4801, file: !638, line: 142, baseType: !4852, size: 64, offset: 768)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!636, !636, !4855}
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !886, file: !14, line: 1271, baseType: !4858, size: 448, offset: 8128)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2365, line: 63, size: 448, elements: !4859)
!4859 = !{!4860, !4865, !4866, !4867, !4868, !4869, !4870}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4858, file: !2365, line: 64, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!161, !4864, !2363}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4858, file: !2365, line: 66, baseType: !4861, size: 64, offset: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4858, file: !2365, line: 69, baseType: !158, size: 64, offset: 128)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4858, file: !2365, line: 70, baseType: !109, size: 32, offset: 192)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4858, file: !2365, line: 71, baseType: !7, size: 32, offset: 224)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4858, file: !2365, line: 74, baseType: !264, size: 128, offset: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4858, file: !2365, line: 85, baseType: !4871, size: 64, offset: 384)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !886, file: !14, line: 1274, baseType: !214, size: 64, offset: 8576)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !886, file: !14, line: 1280, baseType: !214, size: 64, offset: 8640)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !886, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !886, file: !14, line: 1286, baseType: !1704, size: 32, offset: 8736)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !886, file: !14, line: 1289, baseType: !2187, size: 64, offset: 8768)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !886, file: !14, line: 1290, baseType: !351, size: 64, offset: 8832)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !886, file: !14, line: 1297, baseType: !598, size: 64, offset: 8896)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !886, file: !14, line: 1304, baseType: !4880, size: 64, offset: 8960)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4881, line: 49, size: 64, elements: !4882)
!4881 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4882 = !{!4883}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4880, file: !4881, line: 50, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4881, line: 41, size: 512, align: 512, elements: !4886)
!4886 = !{!4887, !4888, !4893}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4885, file: !4881, line: 43, baseType: !297, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4885, file: !4881, line: 45, baseType: !4889, size: 192, offset: 64)
!4889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4881, line: 29, size: 192, elements: !4890)
!4890 = !{!4891, !4892}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4889, file: !4881, line: 30, baseType: !264, size: 128)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4889, file: !4881, line: 32, baseType: !158, size: 64, offset: 128)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4885, file: !4881, line: 46, baseType: !158, size: 64, offset: 256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !886, file: !14, line: 1305, baseType: !4880, size: 64, offset: 9024)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !886, file: !14, line: 1306, baseType: !287, size: 128, align: 64, offset: 9088)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !886, file: !14, line: 1307, baseType: !1349, size: 256, offset: 9216)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !886, file: !14, line: 1309, baseType: !210, size: 256, offset: 9472)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !886, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !886, file: !14, line: 1317, baseType: !297, size: 32, align: 512, offset: 10240)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !886, file: !14, line: 1318, baseType: !264, size: 128, offset: 10304)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !886, file: !14, line: 1320, baseType: !297, size: 32, offset: 10432)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !886, file: !14, line: 1321, baseType: !264, size: 128, offset: 10496)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !677, file: !14, line: 656, baseType: !1035, size: 64, offset: 512)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !677, file: !14, line: 659, baseType: !157, size: 64, offset: 576)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !677, file: !14, line: 663, baseType: !161, size: 64, offset: 640)
!4906 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !14, line: 671, baseType: !4907, size: 32, offset: 704)
!4907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !14, line: 671, size: 32, elements: !4908)
!4908 = !{!4909, !4911}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4907, file: !14, line: 672, baseType: !4910, size: 32)
!4910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4907, file: !14, line: 673, baseType: !7, size: 32)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !677, file: !14, line: 675, baseType: !751, size: 32, offset: 736)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !677, file: !14, line: 676, baseType: !167, size: 64, offset: 768)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !677, file: !14, line: 677, baseType: !787, size: 128, offset: 832)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !677, file: !14, line: 678, baseType: !787, size: 128, offset: 960)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !677, file: !14, line: 679, baseType: !787, size: 128, offset: 1088)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !677, file: !14, line: 680, baseType: !297, size: 32, offset: 1216)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !677, file: !14, line: 681, baseType: !256, size: 16, offset: 1248)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !677, file: !14, line: 682, baseType: !246, size: 8, offset: 1264)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !677, file: !14, line: 683, baseType: !246, size: 8, offset: 1272)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !677, file: !14, line: 684, baseType: !2496, size: 64, offset: 1280)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !677, file: !14, line: 691, baseType: !161, size: 64, offset: 1344)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !677, file: !14, line: 692, baseType: !452, size: 320, offset: 1408)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !677, file: !14, line: 694, baseType: !161, size: 64, offset: 1728)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !677, file: !14, line: 695, baseType: !161, size: 64, offset: 1792)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !677, file: !14, line: 697, baseType: !355, size: 128, offset: 1856)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !677, file: !14, line: 698, baseType: !264, size: 128, offset: 1984)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !677, file: !14, line: 707, baseType: !264, size: 128, offset: 2112)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !677, file: !14, line: 708, baseType: !264, size: 128, offset: 2240)
!4930 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !14, line: 709, baseType: !4931, size: 128, offset: 2368)
!4931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !14, line: 709, size: 128, elements: !4932)
!4932 = !{!4933, !4934}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4931, file: !14, line: 710, baseType: !351, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4931, file: !14, line: 711, baseType: !287, size: 128, align: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !677, file: !14, line: 713, baseType: !216, size: 64, offset: 2496)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !677, file: !14, line: 714, baseType: !216, size: 64, offset: 2560)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !677, file: !14, line: 715, baseType: !238, size: 32, offset: 2624)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !677, file: !14, line: 716, baseType: !238, size: 32, offset: 2656)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !677, file: !14, line: 717, baseType: !238, size: 32, offset: 2688)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !677, file: !14, line: 719, baseType: !238, size: 32, offset: 2720)
!4941 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !14, line: 721, baseType: !4942, size: 64, offset: 2752)
!4942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !14, line: 721, size: 64, elements: !4943)
!4943 = !{!4944, !4945}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4942, file: !14, line: 722, baseType: !3594, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4942, file: !14, line: 723, baseType: !2254, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !677, file: !14, line: 725, baseType: !4947, size: 64, offset: 2816)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !677, file: !14, line: 726, baseType: !1036, size: 1536, align: 64, offset: 2880)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !677, file: !14, line: 727, baseType: !264, size: 128, offset: 4416)
!4951 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !14, line: 728, baseType: !4952, size: 64, offset: 4544)
!4952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !14, line: 728, size: 64, elements: !4953)
!4953 = !{!4954, !4955, !4956, !4957}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4952, file: !14, line: 729, baseType: !3680, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4952, file: !14, line: 730, baseType: !3587, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4952, file: !14, line: 731, baseType: !199, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4952, file: !14, line: 732, baseType: !7, size: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !677, file: !14, line: 735, baseType: !478, size: 32, offset: 4608)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !677, file: !14, line: 738, baseType: !478, size: 32, offset: 4640)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !677, file: !14, line: 739, baseType: !4784, size: 64, offset: 4672)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !677, file: !14, line: 750, baseType: !157, size: 64, offset: 4736)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !637, file: !638, line: 91, baseType: !4963, size: 256, offset: 448)
!4963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !4661)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !637, file: !638, line: 94, baseType: !4965, size: 64, offset: 704)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4966, line: 25, size: 64, elements: !4967)
!4966 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4967 = !{!4968}
!4968 = !DIDerivedType(tag: DW_TAG_member, scope: !4965, file: !4966, line: 26, baseType: !4969, size: 64)
!4969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4965, file: !4966, line: 26, size: 64, elements: !4970)
!4970 = !{!4971, !4972}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4969, file: !4966, line: 28, baseType: !421, size: 64, align: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, scope: !4969, file: !4966, line: 30, baseType: !4973, size: 64)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4969, file: !4966, line: 30, size: 64, elements: !4974)
!4974 = !{!4975, !4976}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4973, file: !4966, line: 31, baseType: !297, size: 32)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4973, file: !4966, line: 32, baseType: !109, size: 32, offset: 32)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !637, file: !638, line: 95, baseType: !4799, size: 64, offset: 768)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !637, file: !638, line: 96, baseType: !885, size: 64, offset: 832)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !637, file: !638, line: 97, baseType: !161, size: 64, offset: 896)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !637, file: !638, line: 98, baseType: !157, size: 64, offset: 960)
!4981 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !638, line: 100, baseType: !4982, size: 128, offset: 1024)
!4982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !638, line: 100, size: 128, elements: !4983)
!4983 = !{!4984, !4985}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4982, file: !638, line: 101, baseType: !264, size: 128)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4982, file: !638, line: 102, baseType: !1853, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !637, file: !638, line: 104, baseType: !264, size: 128, offset: 1152)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !637, file: !638, line: 105, baseType: !264, size: 128, offset: 1280)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !637, file: !638, line: 113, baseType: !4989, size: 128, offset: 1408)
!4989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !638, line: 109, size: 128, elements: !4990)
!4990 = !{!4991, !4992, !4993}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4989, file: !638, line: 110, baseType: !355, size: 128)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4989, file: !638, line: 111, baseType: !652, size: 128)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4989, file: !638, line: 112, baseType: !287, size: 128, align: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !632, file: !633, line: 72, baseType: !885, size: 64, offset: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !632, file: !633, line: 73, baseType: !109, size: 32, offset: 128)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !632, file: !633, line: 74, baseType: !716, size: 64, offset: 192)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !627, file: !628, line: 10, baseType: !636, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !275, file: !14, line: 1015, baseType: !676, size: 64, offset: 1344)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !275, file: !14, line: 1016, baseType: !3594, size: 64, offset: 1408)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !275, file: !14, line: 1018, baseType: !420, size: 64, offset: 1472)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !275, file: !14, line: 1020, baseType: !157, size: 64, offset: 1536)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !275, file: !14, line: 1023, baseType: !157, size: 64, offset: 1600)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !275, file: !14, line: 1027, baseType: !5004, size: 64, offset: 1664)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !275, file: !14, line: 1029, baseType: !1035, size: 64, offset: 1728)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !275, file: !14, line: 1030, baseType: !1704, size: 32, offset: 1792)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !275, file: !14, line: 1031, baseType: !1704, size: 32, offset: 1824)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !196, file: !189, line: 29, baseType: !157, size: 64, offset: 896)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !188, file: !189, line: 34, baseType: !1830, size: 64, offset: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !189, line: 35, baseType: !1826, size: 64, offset: 128)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !188, file: !189, line: 36, baseType: !1821, size: 64, offset: 192)
!5012 = !DIGlobalVariableExpression(var: !5013, expr: !DIExpression())
!5013 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_ldisc_ref_wait289", scope: !2, file: !3, line: 249, type: !157, isLocal: true, isDefinition: true)
!5014 = !DIGlobalVariableExpression(var: !5015, expr: !DIExpression())
!5015 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_ldisc_ref290", scope: !2, file: !3, line: 270, type: !157, isLocal: true, isDefinition: true)
!5016 = !DIGlobalVariableExpression(var: !5017, expr: !DIExpression())
!5017 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_ldisc_deref291", scope: !2, file: !3, line: 283, type: !157, isLocal: true, isDefinition: true)
!5018 = !DIGlobalVariableExpression(var: !5019, expr: !DIExpression())
!5019 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_ldisc_flush292", scope: !2, file: !3, line: 392, type: !157, isLocal: true, isDefinition: true)
!5020 = !DIGlobalVariableExpression(var: !5021, expr: !DIExpression())
!5021 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_set_ldisc293", scope: !2, file: !3, line: 597, type: !157, isLocal: true, isDefinition: true)
!5022 = !DIGlobalVariableExpression(var: !5023, expr: !DIExpression())
!5023 = distinct !DIGlobalVariable(scope: null, file: !3, line: 655, type: !5024, isLocal: true, isDefinition: true)
!5024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, elements: !5025)
!5025 = !{!5026}
!5026 = !DISubrange(count: 24)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(name: "tty_ldiscs", scope: !2, file: !3, line: 47, type: !5029, isLocal: true, isDefinition: true)
!5029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4008, size: 1984, elements: !5030)
!5030 = !{!5031}
!5031 = !DISubrange(count: 31)
!5032 = !DIGlobalVariableExpression(var: !5033, expr: !DIExpression())
!5033 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !5034, isLocal: true, isDefinition: true)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 88, elements: !5035)
!5035 = !{!5036}
!5036 = !DISubrange(count: 11)
!5037 = !DIGlobalVariableExpression(var: !5038, expr: !DIExpression())
!5038 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !5039, isLocal: true, isDefinition: true)
!5039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 32, elements: !360)
!5040 = !DIGlobalVariableExpression(var: !5041, expr: !DIExpression())
!5041 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !5042, isLocal: true, isDefinition: true)
!5042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 104, elements: !5043)
!5043 = !{!5044}
!5044 = !DISubrange(count: 13)
!5045 = !DIGlobalVariableExpression(var: !5046, expr: !DIExpression())
!5046 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !5047, isLocal: true, isDefinition: true)
!5047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 168, elements: !5048)
!5048 = !{!5049}
!5049 = !DISubrange(count: 21)
!5050 = !DIGlobalVariableExpression(var: !5051, expr: !DIExpression())
!5051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !5052, isLocal: true, isDefinition: true)
!5052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 240, elements: !5053)
!5053 = !{!5054}
!5054 = !DISubrange(count: 30)
!5055 = !DIGlobalVariableExpression(var: !5056, expr: !DIExpression())
!5056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 505, type: !5057, isLocal: true, isDefinition: true)
!5057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 280, elements: !5058)
!5058 = !{!5059}
!5059 = !DISubrange(count: 35)
!5060 = !{i32 7, !"Dwarf Version", i32 5}
!5061 = !{i32 2, !"Debug Info Version", i32 3}
!5062 = !{i32 1, !"wchar_size", i32 2}
!5063 = !{i32 8, !"cf-protection-branch", i32 1}
!5064 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5065 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5066 = !{i32 1, !"Code Model", i32 2}
!5067 = !{i32 1, !"override-stack-alignment", i32 8}
!5068 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5069 = distinct !DISubprogram(name: "tty_register_ldisc", scope: !3, file: !3, line: 58, type: !5070, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5072)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!109, !4008}
!5072 = !{!5073, !5074, !5075, !5078, !5079, !5082}
!5073 = !DILocalVariable(name: "new_ldisc", arg: 1, scope: !5069, file: !3, line: 58, type: !4008)
!5074 = !DILocalVariable(name: "flags", scope: !5069, file: !3, line: 60, type: !161)
!5075 = !DILocalVariable(name: "__dummy", scope: !5076, file: !3, line: 65, type: !161)
!5076 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 65, column: 2)
!5077 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 65, column: 2)
!5078 = !DILocalVariable(name: "__dummy2", scope: !5076, file: !3, line: 65, type: !161)
!5079 = !DILocalVariable(name: "__dummy", scope: !5080, file: !3, line: 67, type: !161)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 67, column: 2)
!5081 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 67, column: 2)
!5082 = !DILocalVariable(name: "__dummy2", scope: !5080, file: !3, line: 67, type: !161)
!5083 = !DILocation(line: 58, column: 46, scope: !5069)
!5084 = !DILocation(line: 60, column: 2, scope: !5069)
!5085 = !DILocation(line: 60, column: 16, scope: !5069)
!5086 = !DILocation(line: 62, column: 6, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 62, column: 6)
!5088 = !DILocation(line: 62, column: 17, scope: !5087)
!5089 = !DILocation(line: 62, column: 21, scope: !5087)
!5090 = !DILocation(line: 62, column: 29, scope: !5087)
!5091 = !DILocation(line: 62, column: 32, scope: !5087)
!5092 = !DILocation(line: 62, column: 43, scope: !5087)
!5093 = !DILocation(line: 62, column: 47, scope: !5087)
!5094 = !DILocation(line: 62, column: 6, scope: !5069)
!5095 = !DILocation(line: 63, column: 3, scope: !5087)
!5096 = !DILocation(line: 65, column: 2, scope: !5069)
!5097 = !DILocation(line: 65, column: 2, scope: !5076)
!5098 = !DILocation(line: 65, column: 2, scope: !5077)
!5099 = !DILocation(line: 66, column: 31, scope: !5069)
!5100 = !DILocation(line: 66, column: 13, scope: !5069)
!5101 = !DILocation(line: 66, column: 24, scope: !5069)
!5102 = !DILocation(line: 66, column: 2, scope: !5069)
!5103 = !DILocation(line: 66, column: 29, scope: !5069)
!5104 = !DILocation(line: 67, column: 2, scope: !5069)
!5105 = !DILocation(line: 67, column: 2, scope: !5080)
!5106 = !DILocation(line: 67, column: 2, scope: !5081)
!5107 = !DILocation(line: 69, column: 2, scope: !5069)
!5108 = !DILocation(line: 70, column: 1, scope: !5069)
!5109 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5110, file: !5110, line: 32, type: !5111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5110 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!161, !5113}
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!5114 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5110, file: !5110, line: 43, type: !5115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{null, !5113, !161}
!5117 = distinct !DISubprogram(name: "tty_unregister_ldisc", scope: !3, file: !3, line: 83, type: !5118, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5120)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{null, !4008}
!5120 = !{!5121, !5122, !5123, !5126, !5127, !5130}
!5121 = !DILocalVariable(name: "ldisc", arg: 1, scope: !5117, file: !3, line: 83, type: !4008)
!5122 = !DILocalVariable(name: "flags", scope: !5117, file: !3, line: 85, type: !161)
!5123 = !DILocalVariable(name: "__dummy", scope: !5124, file: !3, line: 87, type: !161)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 87, column: 2)
!5125 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 87, column: 2)
!5126 = !DILocalVariable(name: "__dummy2", scope: !5124, file: !3, line: 87, type: !161)
!5127 = !DILocalVariable(name: "__dummy", scope: !5128, file: !3, line: 89, type: !161)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !3, line: 89, column: 2)
!5129 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 89, column: 2)
!5130 = !DILocalVariable(name: "__dummy2", scope: !5128, file: !3, line: 89, type: !161)
!5131 = !DILocation(line: 83, column: 49, scope: !5117)
!5132 = !DILocation(line: 85, column: 2, scope: !5117)
!5133 = !DILocation(line: 85, column: 16, scope: !5117)
!5134 = !DILocation(line: 87, column: 2, scope: !5117)
!5135 = !DILocation(line: 87, column: 2, scope: !5124)
!5136 = !DILocation(line: 87, column: 2, scope: !5125)
!5137 = !DILocation(line: 88, column: 13, scope: !5117)
!5138 = !DILocation(line: 88, column: 20, scope: !5117)
!5139 = !DILocation(line: 88, column: 2, scope: !5117)
!5140 = !DILocation(line: 88, column: 25, scope: !5117)
!5141 = !DILocation(line: 89, column: 2, scope: !5117)
!5142 = !DILocation(line: 89, column: 2, scope: !5128)
!5143 = !DILocation(line: 89, column: 2, scope: !5129)
!5144 = !DILocation(line: 90, column: 1, scope: !5117)
!5145 = distinct !DISubprogram(name: "tty_ldiscs_seq_start", scope: !3, file: !3, line: 187, type: !193, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5146)
!5146 = !{!5147, !5148}
!5147 = !DILocalVariable(name: "m", arg: 1, scope: !5145, file: !3, line: 187, type: !195)
!5148 = !DILocalVariable(name: "pos", arg: 2, scope: !5145, file: !3, line: 187, type: !166)
!5149 = !DILocation(line: 187, column: 52, scope: !5145)
!5150 = !DILocation(line: 187, column: 63, scope: !5145)
!5151 = !DILocation(line: 189, column: 11, scope: !5145)
!5152 = !DILocation(line: 189, column: 10, scope: !5145)
!5153 = !DILocation(line: 189, column: 15, scope: !5145)
!5154 = !DILocation(line: 189, column: 9, scope: !5145)
!5155 = !DILocation(line: 189, column: 30, scope: !5145)
!5156 = !DILocation(line: 189, column: 2, scope: !5145)
!5157 = distinct !DISubprogram(name: "tty_ldiscs_seq_stop", scope: !3, file: !3, line: 198, type: !1831, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5158)
!5158 = !{!5159, !5160}
!5159 = !DILocalVariable(name: "m", arg: 1, scope: !5157, file: !3, line: 198, type: !195)
!5160 = !DILocalVariable(name: "v", arg: 2, scope: !5157, file: !3, line: 198, type: !157)
!5161 = !DILocation(line: 198, column: 50, scope: !5157)
!5162 = !DILocation(line: 198, column: 59, scope: !5157)
!5163 = !DILocation(line: 200, column: 1, scope: !5157)
!5164 = distinct !DISubprogram(name: "tty_ldiscs_seq_next", scope: !3, file: !3, line: 192, type: !1827, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5165)
!5165 = !{!5166, !5167, !5168}
!5166 = !DILocalVariable(name: "m", arg: 1, scope: !5164, file: !3, line: 192, type: !195)
!5167 = !DILocalVariable(name: "v", arg: 2, scope: !5164, file: !3, line: 192, type: !157)
!5168 = !DILocalVariable(name: "pos", arg: 3, scope: !5164, file: !3, line: 192, type: !166)
!5169 = !DILocation(line: 192, column: 51, scope: !5164)
!5170 = !DILocation(line: 192, column: 60, scope: !5164)
!5171 = !DILocation(line: 192, column: 71, scope: !5164)
!5172 = !DILocation(line: 194, column: 4, scope: !5164)
!5173 = !DILocation(line: 194, column: 8, scope: !5164)
!5174 = !DILocation(line: 195, column: 11, scope: !5164)
!5175 = !DILocation(line: 195, column: 10, scope: !5164)
!5176 = !DILocation(line: 195, column: 15, scope: !5164)
!5177 = !DILocation(line: 195, column: 9, scope: !5164)
!5178 = !DILocation(line: 195, column: 30, scope: !5164)
!5179 = !DILocation(line: 195, column: 2, scope: !5164)
!5180 = distinct !DISubprogram(name: "tty_ldiscs_seq_show", scope: !3, file: !3, line: 202, type: !1822, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5181)
!5181 = !{!5182, !5183, !5184, !5185}
!5182 = !DILocalVariable(name: "m", arg: 1, scope: !5180, file: !3, line: 202, type: !195)
!5183 = !DILocalVariable(name: "v", arg: 2, scope: !5180, file: !3, line: 202, type: !157)
!5184 = !DILocalVariable(name: "i", scope: !5180, file: !3, line: 204, type: !109)
!5185 = !DILocalVariable(name: "ldops", scope: !5180, file: !3, line: 205, type: !4008)
!5186 = !DILocation(line: 202, column: 49, scope: !5180)
!5187 = !DILocation(line: 202, column: 58, scope: !5180)
!5188 = !DILocation(line: 204, column: 2, scope: !5180)
!5189 = !DILocation(line: 204, column: 6, scope: !5180)
!5190 = !DILocation(line: 204, column: 21, scope: !5180)
!5191 = !DILocation(line: 204, column: 10, scope: !5180)
!5192 = !DILocation(line: 205, column: 2, scope: !5180)
!5193 = !DILocation(line: 205, column: 24, scope: !5180)
!5194 = !DILocation(line: 207, column: 20, scope: !5180)
!5195 = !DILocation(line: 207, column: 10, scope: !5180)
!5196 = !DILocation(line: 207, column: 8, scope: !5180)
!5197 = !DILocation(line: 208, column: 13, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 208, column: 6)
!5199 = !DILocation(line: 208, column: 6, scope: !5198)
!5200 = !DILocation(line: 208, column: 6, scope: !5180)
!5201 = !DILocation(line: 209, column: 3, scope: !5198)
!5202 = !DILocation(line: 210, column: 13, scope: !5180)
!5203 = !DILocation(line: 210, column: 31, scope: !5180)
!5204 = !DILocation(line: 210, column: 38, scope: !5180)
!5205 = !DILocation(line: 210, column: 45, scope: !5180)
!5206 = !DILocation(line: 210, column: 52, scope: !5180)
!5207 = !DILocation(line: 210, column: 66, scope: !5180)
!5208 = !DILocation(line: 210, column: 2, scope: !5180)
!5209 = !DILocation(line: 211, column: 12, scope: !5180)
!5210 = !DILocation(line: 211, column: 2, scope: !5180)
!5211 = !DILocation(line: 212, column: 2, scope: !5180)
!5212 = !DILocation(line: 213, column: 1, scope: !5180)
!5213 = distinct !DISubprogram(name: "tty_ldisc_ref_wait", scope: !3, file: !3, line: 239, type: !5214, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5216)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!4003, !3122}
!5216 = !{!5217, !5218}
!5217 = !DILocalVariable(name: "tty", arg: 1, scope: !5213, file: !3, line: 239, type: !3122)
!5218 = !DILocalVariable(name: "ld", scope: !5213, file: !3, line: 241, type: !4003)
!5219 = !DILocation(line: 239, column: 57, scope: !5213)
!5220 = !DILocation(line: 241, column: 2, scope: !5213)
!5221 = !DILocation(line: 241, column: 20, scope: !5213)
!5222 = !DILocation(line: 243, column: 19, scope: !5213)
!5223 = !DILocation(line: 243, column: 24, scope: !5213)
!5224 = !DILocation(line: 243, column: 2, scope: !5213)
!5225 = !DILocation(line: 244, column: 7, scope: !5213)
!5226 = !DILocation(line: 244, column: 12, scope: !5213)
!5227 = !DILocation(line: 244, column: 5, scope: !5213)
!5228 = !DILocation(line: 245, column: 7, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 245, column: 6)
!5230 = !DILocation(line: 245, column: 6, scope: !5213)
!5231 = !DILocation(line: 246, column: 18, scope: !5229)
!5232 = !DILocation(line: 246, column: 23, scope: !5229)
!5233 = !DILocation(line: 246, column: 3, scope: !5229)
!5234 = !DILocation(line: 247, column: 9, scope: !5213)
!5235 = !DILocation(line: 248, column: 1, scope: !5213)
!5236 = !DILocation(line: 247, column: 2, scope: !5213)
!5237 = !DISubprogram(name: "ldsem_down_read", scope: !4005, file: !4005, line: 39, type: !5238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!109, !5240, !158}
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!5241 = !DISubprogram(name: "ldsem_up_read", scope: !4005, file: !4005, line: 43, type: !5242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{null, !5240}
!5244 = distinct !DISubprogram(name: "tty_ldisc_ref", scope: !3, file: !3, line: 259, type: !5214, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5245)
!5245 = !{!5246, !5247}
!5246 = !DILocalVariable(name: "tty", arg: 1, scope: !5244, file: !3, line: 259, type: !3122)
!5247 = !DILocalVariable(name: "ld", scope: !5244, file: !3, line: 261, type: !4003)
!5248 = !DILocation(line: 259, column: 52, scope: !5244)
!5249 = !DILocation(line: 261, column: 2, scope: !5244)
!5250 = !DILocation(line: 261, column: 20, scope: !5244)
!5251 = !DILocation(line: 263, column: 31, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 263, column: 6)
!5253 = !DILocation(line: 263, column: 36, scope: !5252)
!5254 = !DILocation(line: 263, column: 6, scope: !5252)
!5255 = !DILocation(line: 263, column: 6, scope: !5244)
!5256 = !DILocation(line: 264, column: 8, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 263, column: 48)
!5258 = !DILocation(line: 264, column: 13, scope: !5257)
!5259 = !DILocation(line: 264, column: 6, scope: !5257)
!5260 = !DILocation(line: 265, column: 8, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 265, column: 7)
!5262 = !DILocation(line: 265, column: 7, scope: !5257)
!5263 = !DILocation(line: 266, column: 19, scope: !5261)
!5264 = !DILocation(line: 266, column: 24, scope: !5261)
!5265 = !DILocation(line: 266, column: 4, scope: !5261)
!5266 = !DILocation(line: 267, column: 2, scope: !5257)
!5267 = !DILocation(line: 268, column: 9, scope: !5244)
!5268 = !DILocation(line: 269, column: 1, scope: !5244)
!5269 = !DILocation(line: 268, column: 2, scope: !5244)
!5270 = !DISubprogram(name: "ldsem_down_read_trylock", scope: !4005, file: !4005, line: 40, type: !5271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!109, !5240}
!5273 = distinct !DISubprogram(name: "tty_ldisc_deref", scope: !3, file: !3, line: 279, type: !5274, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5276)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{null, !4003}
!5276 = !{!5277}
!5277 = !DILocalVariable(name: "ld", arg: 1, scope: !5273, file: !3, line: 279, type: !4003)
!5278 = !DILocation(line: 279, column: 40, scope: !5273)
!5279 = !DILocation(line: 281, column: 17, scope: !5273)
!5280 = !DILocation(line: 281, column: 21, scope: !5273)
!5281 = !DILocation(line: 281, column: 26, scope: !5273)
!5282 = !DILocation(line: 281, column: 2, scope: !5273)
!5283 = !DILocation(line: 282, column: 1, scope: !5273)
!5284 = distinct !DISubprogram(name: "tty_ldisc_lock", scope: !3, file: !3, line: 304, type: !5285, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5287)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{!109, !3122, !161}
!5287 = !{!5288, !5289, !5290}
!5288 = !DILocalVariable(name: "tty", arg: 1, scope: !5284, file: !3, line: 304, type: !3122)
!5289 = !DILocalVariable(name: "timeout", arg: 2, scope: !5284, file: !3, line: 304, type: !161)
!5290 = !DILocalVariable(name: "ret", scope: !5284, file: !3, line: 306, type: !109)
!5291 = !DILocation(line: 304, column: 39, scope: !5284)
!5292 = !DILocation(line: 304, column: 58, scope: !5284)
!5293 = !DILocation(line: 306, column: 2, scope: !5284)
!5294 = !DILocation(line: 306, column: 6, scope: !5284)
!5295 = !DILocation(line: 309, column: 31, scope: !5284)
!5296 = !DILocation(line: 309, column: 36, scope: !5284)
!5297 = !DILocation(line: 309, column: 2, scope: !5284)
!5298 = !DILocation(line: 310, column: 2, scope: !5284)
!5299 = !DILocation(line: 311, column: 2, scope: !5284)
!5300 = !DILocation(line: 313, column: 25, scope: !5284)
!5301 = !DILocation(line: 313, column: 30, scope: !5284)
!5302 = !DILocation(line: 313, column: 8, scope: !5284)
!5303 = !DILocation(line: 313, column: 6, scope: !5284)
!5304 = !DILocation(line: 314, column: 7, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 314, column: 6)
!5306 = !DILocation(line: 314, column: 6, scope: !5284)
!5307 = !DILocation(line: 315, column: 3, scope: !5305)
!5308 = !DILocation(line: 316, column: 29, scope: !5284)
!5309 = !DILocation(line: 316, column: 34, scope: !5284)
!5310 = !DILocation(line: 316, column: 2, scope: !5284)
!5311 = !DILocation(line: 317, column: 2, scope: !5284)
!5312 = !DILocation(line: 318, column: 1, scope: !5284)
!5313 = distinct !DISubprogram(name: "set_bit", scope: !5314, file: !5314, line: 26, type: !5315, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5319)
!5314 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5315 = !DISubroutineType(types: !5316)
!5316 = !{null, !158, !5317}
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !161)
!5319 = !{!5320, !5321}
!5320 = !DILocalVariable(name: "nr", arg: 1, scope: !5313, file: !5314, line: 26, type: !158)
!5321 = !DILocalVariable(name: "addr", arg: 2, scope: !5313, file: !5314, line: 26, type: !5317)
!5322 = !DILocation(line: 26, column: 42, scope: !5313)
!5323 = !DILocation(line: 26, column: 70, scope: !5313)
!5324 = !DILocation(line: 28, column: 26, scope: !5313)
!5325 = !DILocation(line: 28, column: 33, scope: !5313)
!5326 = !DILocation(line: 28, column: 31, scope: !5313)
!5327 = !DILocation(line: 28, column: 2, scope: !5313)
!5328 = !DILocation(line: 29, column: 15, scope: !5313)
!5329 = !DILocation(line: 29, column: 19, scope: !5313)
!5330 = !DILocation(line: 29, column: 2, scope: !5313)
!5331 = !DILocation(line: 30, column: 1, scope: !5313)
!5332 = !DISubprogram(name: "__wake_up", scope: !365, file: !365, line: 212, type: !5333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!109, !5335, !7, !109, !157}
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!5336 = distinct !DISubprogram(name: "__tty_ldisc_lock", scope: !3, file: !3, line: 287, type: !5285, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5337)
!5337 = !{!5338, !5339}
!5338 = !DILocalVariable(name: "tty", arg: 1, scope: !5336, file: !3, line: 287, type: !3122)
!5339 = !DILocalVariable(name: "timeout", arg: 2, scope: !5336, file: !3, line: 287, type: !161)
!5340 = !DILocation(line: 287, column: 37, scope: !5336)
!5341 = !DILocation(line: 287, column: 56, scope: !5336)
!5342 = !DILocation(line: 289, column: 27, scope: !5336)
!5343 = !DILocation(line: 289, column: 32, scope: !5336)
!5344 = !DILocation(line: 289, column: 43, scope: !5336)
!5345 = !DILocation(line: 289, column: 9, scope: !5336)
!5346 = !DILocation(line: 289, column: 2, scope: !5336)
!5347 = distinct !DISubprogram(name: "tty_ldisc_unlock", scope: !3, file: !3, line: 320, type: !3910, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5348)
!5348 = !{!5349}
!5349 = !DILocalVariable(name: "tty", arg: 1, scope: !5347, file: !3, line: 320, type: !3122)
!5350 = !DILocation(line: 320, column: 42, scope: !5347)
!5351 = !DILocation(line: 322, column: 31, scope: !5347)
!5352 = !DILocation(line: 322, column: 36, scope: !5347)
!5353 = !DILocation(line: 322, column: 2, scope: !5347)
!5354 = !DILocation(line: 324, column: 33, scope: !5347)
!5355 = !DILocation(line: 324, column: 38, scope: !5347)
!5356 = !DILocation(line: 324, column: 2, scope: !5347)
!5357 = !DILocation(line: 325, column: 21, scope: !5347)
!5358 = !DILocation(line: 325, column: 2, scope: !5347)
!5359 = !DILocation(line: 326, column: 1, scope: !5347)
!5360 = distinct !DISubprogram(name: "clear_bit", scope: !5314, file: !5314, line: 39, type: !5315, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5361 = !{!5362, !5363}
!5362 = !DILocalVariable(name: "nr", arg: 1, scope: !5360, file: !5314, line: 39, type: !158)
!5363 = !DILocalVariable(name: "addr", arg: 2, scope: !5360, file: !5314, line: 39, type: !5317)
!5364 = !DILocation(line: 39, column: 44, scope: !5360)
!5365 = !DILocation(line: 39, column: 72, scope: !5360)
!5366 = !DILocation(line: 41, column: 26, scope: !5360)
!5367 = !DILocation(line: 41, column: 33, scope: !5360)
!5368 = !DILocation(line: 41, column: 31, scope: !5360)
!5369 = !DILocation(line: 41, column: 2, scope: !5360)
!5370 = !DILocation(line: 42, column: 17, scope: !5360)
!5371 = !DILocation(line: 42, column: 21, scope: !5360)
!5372 = !DILocation(line: 42, column: 2, scope: !5360)
!5373 = !DILocation(line: 43, column: 1, scope: !5360)
!5374 = distinct !DISubprogram(name: "__tty_ldisc_unlock", scope: !3, file: !3, line: 299, type: !3910, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5375)
!5375 = !{!5376}
!5376 = !DILocalVariable(name: "tty", arg: 1, scope: !5374, file: !3, line: 299, type: !3122)
!5377 = !DILocation(line: 299, column: 58, scope: !5374)
!5378 = !DILocation(line: 301, column: 18, scope: !5374)
!5379 = !DILocation(line: 301, column: 23, scope: !5374)
!5380 = !DILocation(line: 301, column: 2, scope: !5374)
!5381 = !DILocation(line: 302, column: 1, scope: !5374)
!5382 = distinct !DISubprogram(name: "tty_ldisc_flush", scope: !3, file: !3, line: 384, type: !3910, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5383)
!5383 = !{!5384, !5385}
!5384 = !DILocalVariable(name: "tty", arg: 1, scope: !5382, file: !3, line: 384, type: !3122)
!5385 = !DILocalVariable(name: "ld", scope: !5382, file: !3, line: 386, type: !4003)
!5386 = !DILocation(line: 384, column: 41, scope: !5382)
!5387 = !DILocation(line: 386, column: 2, scope: !5382)
!5388 = !DILocation(line: 386, column: 20, scope: !5382)
!5389 = !DILocation(line: 386, column: 39, scope: !5382)
!5390 = !DILocation(line: 386, column: 25, scope: !5382)
!5391 = !DILocation(line: 388, column: 19, scope: !5382)
!5392 = !DILocation(line: 388, column: 24, scope: !5382)
!5393 = !DILocation(line: 388, column: 2, scope: !5382)
!5394 = !DILocation(line: 389, column: 6, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 389, column: 6)
!5396 = !DILocation(line: 389, column: 6, scope: !5382)
!5397 = !DILocation(line: 390, column: 19, scope: !5395)
!5398 = !DILocation(line: 390, column: 3, scope: !5395)
!5399 = !DILocation(line: 391, column: 1, scope: !5382)
!5400 = !DISubprogram(name: "tty_buffer_flush", scope: !5401, file: !5401, line: 72, type: !5402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5401 = !DIFile(filename: "drivers/tty/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d8857947502225b017f036ab4ca6cb4")
!5402 = !DISubroutineType(types: !5403)
!5403 = !{null, !3122, !4003}
!5404 = distinct !DISubprogram(name: "tty_set_ldisc", scope: !3, file: !3, line: 519, type: !3948, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5405)
!5405 = !{!5406, !5407, !5408, !5409, !5410, !5411, !5412}
!5406 = !DILocalVariable(name: "tty", arg: 1, scope: !5404, file: !3, line: 519, type: !3122)
!5407 = !DILocalVariable(name: "disc", arg: 2, scope: !5404, file: !3, line: 519, type: !109)
!5408 = !DILocalVariable(name: "retval", scope: !5404, file: !3, line: 521, type: !109)
!5409 = !DILocalVariable(name: "old_ldisc", scope: !5404, file: !3, line: 522, type: !4003)
!5410 = !DILocalVariable(name: "new_ldisc", scope: !5404, file: !3, line: 522, type: !4003)
!5411 = !DILabel(scope: !5404, name: "out", file: !3, line: 584)
!5412 = !DILabel(scope: !5404, name: "err", file: !3, line: 592)
!5413 = !DILocation(line: 519, column: 38, scope: !5404)
!5414 = !DILocation(line: 519, column: 47, scope: !5404)
!5415 = !DILocation(line: 521, column: 2, scope: !5404)
!5416 = !DILocation(line: 521, column: 6, scope: !5404)
!5417 = !DILocation(line: 522, column: 2, scope: !5404)
!5418 = !DILocation(line: 522, column: 20, scope: !5404)
!5419 = !DILocation(line: 522, column: 32, scope: !5404)
!5420 = !DILocation(line: 524, column: 28, scope: !5404)
!5421 = !DILocation(line: 524, column: 33, scope: !5404)
!5422 = !DILocation(line: 524, column: 14, scope: !5404)
!5423 = !DILocation(line: 524, column: 12, scope: !5404)
!5424 = !DILocation(line: 525, column: 13, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 525, column: 6)
!5426 = !DILocation(line: 525, column: 6, scope: !5425)
!5427 = !DILocation(line: 525, column: 6, scope: !5404)
!5428 = !DILocation(line: 526, column: 18, scope: !5425)
!5429 = !DILocation(line: 526, column: 10, scope: !5425)
!5430 = !DILocation(line: 526, column: 3, scope: !5425)
!5431 = !DILocation(line: 528, column: 11, scope: !5404)
!5432 = !DILocation(line: 528, column: 2, scope: !5404)
!5433 = !DILocation(line: 529, column: 26, scope: !5404)
!5434 = !DILocation(line: 529, column: 11, scope: !5404)
!5435 = !DILocation(line: 529, column: 9, scope: !5404)
!5436 = !DILocation(line: 530, column: 6, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 530, column: 6)
!5438 = !DILocation(line: 530, column: 6, scope: !5404)
!5439 = !DILocation(line: 531, column: 3, scope: !5437)
!5440 = !DILocation(line: 533, column: 7, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 533, column: 6)
!5442 = !DILocation(line: 533, column: 12, scope: !5441)
!5443 = !DILocation(line: 533, column: 6, scope: !5404)
!5444 = !DILocation(line: 534, column: 10, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 533, column: 19)
!5446 = !DILocation(line: 535, column: 3, scope: !5445)
!5447 = !DILocation(line: 539, column: 6, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 539, column: 6)
!5449 = !DILocation(line: 539, column: 11, scope: !5448)
!5450 = !DILocation(line: 539, column: 18, scope: !5448)
!5451 = !DILocation(line: 539, column: 23, scope: !5448)
!5452 = !DILocation(line: 539, column: 30, scope: !5448)
!5453 = !DILocation(line: 539, column: 27, scope: !5448)
!5454 = !DILocation(line: 539, column: 6, scope: !5404)
!5455 = !DILocation(line: 540, column: 3, scope: !5448)
!5456 = !DILocation(line: 542, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 542, column: 6)
!5458 = !DILocation(line: 542, column: 6, scope: !5404)
!5459 = !DILocation(line: 544, column: 10, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 542, column: 41)
!5461 = !DILocation(line: 545, column: 3, scope: !5460)
!5462 = !DILocation(line: 548, column: 6, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 548, column: 6)
!5464 = !DILocation(line: 548, column: 11, scope: !5463)
!5465 = !DILocation(line: 548, column: 16, scope: !5463)
!5466 = !DILocation(line: 548, column: 6, scope: !5404)
!5467 = !DILocation(line: 549, column: 12, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 548, column: 26)
!5469 = !DILocation(line: 549, column: 17, scope: !5468)
!5470 = !DILocation(line: 549, column: 22, scope: !5468)
!5471 = !DILocation(line: 549, column: 31, scope: !5468)
!5472 = !DILocation(line: 549, column: 36, scope: !5468)
!5473 = !DILocation(line: 549, column: 10, scope: !5468)
!5474 = !DILocation(line: 550, column: 7, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 550, column: 7)
!5476 = !DILocation(line: 550, column: 7, scope: !5468)
!5477 = !DILocation(line: 551, column: 4, scope: !5475)
!5478 = !DILocation(line: 552, column: 2, scope: !5468)
!5479 = !DILocation(line: 554, column: 14, scope: !5404)
!5480 = !DILocation(line: 554, column: 19, scope: !5404)
!5481 = !DILocation(line: 554, column: 12, scope: !5404)
!5482 = !DILocation(line: 557, column: 18, scope: !5404)
!5483 = !DILocation(line: 557, column: 23, scope: !5404)
!5484 = !DILocation(line: 557, column: 2, scope: !5404)
!5485 = !DILocation(line: 560, column: 15, scope: !5404)
!5486 = !DILocation(line: 560, column: 2, scope: !5404)
!5487 = !DILocation(line: 560, column: 7, scope: !5404)
!5488 = !DILocation(line: 560, column: 13, scope: !5404)
!5489 = !DILocation(line: 561, column: 24, scope: !5404)
!5490 = !DILocation(line: 561, column: 29, scope: !5404)
!5491 = !DILocation(line: 561, column: 2, scope: !5404)
!5492 = !DILocation(line: 563, column: 26, scope: !5404)
!5493 = !DILocation(line: 563, column: 31, scope: !5404)
!5494 = !DILocation(line: 563, column: 11, scope: !5404)
!5495 = !DILocation(line: 563, column: 9, scope: !5404)
!5496 = !DILocation(line: 564, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 564, column: 6)
!5498 = !DILocation(line: 564, column: 13, scope: !5497)
!5499 = !DILocation(line: 564, column: 6, scope: !5404)
!5500 = !DILocation(line: 566, column: 17, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 564, column: 18)
!5502 = !DILocation(line: 566, column: 3, scope: !5501)
!5503 = !DILocation(line: 567, column: 21, scope: !5501)
!5504 = !DILocation(line: 567, column: 26, scope: !5501)
!5505 = !DILocation(line: 567, column: 3, scope: !5501)
!5506 = !DILocation(line: 568, column: 2, scope: !5501)
!5507 = !DILocation(line: 570, column: 6, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 570, column: 6)
!5509 = !DILocation(line: 570, column: 11, scope: !5508)
!5510 = !DILocation(line: 570, column: 18, scope: !5508)
!5511 = !DILocation(line: 570, column: 23, scope: !5508)
!5512 = !DILocation(line: 570, column: 30, scope: !5508)
!5513 = !DILocation(line: 570, column: 41, scope: !5508)
!5514 = !DILocation(line: 570, column: 46, scope: !5508)
!5515 = !DILocation(line: 570, column: 27, scope: !5508)
!5516 = !DILocation(line: 570, column: 50, scope: !5508)
!5517 = !DILocation(line: 570, column: 53, scope: !5508)
!5518 = !DILocation(line: 570, column: 58, scope: !5508)
!5519 = !DILocation(line: 570, column: 63, scope: !5508)
!5520 = !DILocation(line: 570, column: 6, scope: !5404)
!5521 = !DILocation(line: 571, column: 14, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 570, column: 74)
!5523 = !DILocation(line: 571, column: 19, scope: !5522)
!5524 = !DILocation(line: 571, column: 3, scope: !5522)
!5525 = !DILocation(line: 572, column: 3, scope: !5522)
!5526 = !DILocation(line: 572, column: 8, scope: !5522)
!5527 = !DILocation(line: 572, column: 13, scope: !5522)
!5528 = !DILocation(line: 572, column: 23, scope: !5522)
!5529 = !DILocation(line: 573, column: 12, scope: !5522)
!5530 = !DILocation(line: 573, column: 17, scope: !5522)
!5531 = !DILocation(line: 573, column: 3, scope: !5522)
!5532 = !DILocation(line: 574, column: 2, scope: !5522)
!5533 = !DILocation(line: 583, column: 14, scope: !5404)
!5534 = !DILocation(line: 583, column: 12, scope: !5404)
!5535 = !DILocation(line: 583, column: 2, scope: !5404)
!5536 = !DILocation(line: 584, column: 1, scope: !5404)
!5537 = !DILocation(line: 585, column: 19, scope: !5404)
!5538 = !DILocation(line: 585, column: 2, scope: !5404)
!5539 = !DILocation(line: 591, column: 26, scope: !5404)
!5540 = !DILocation(line: 591, column: 31, scope: !5404)
!5541 = !DILocation(line: 591, column: 2, scope: !5404)
!5542 = !DILocation(line: 592, column: 1, scope: !5404)
!5543 = !DILocation(line: 593, column: 16, scope: !5404)
!5544 = !DILocation(line: 593, column: 2, scope: !5404)
!5545 = !DILocation(line: 594, column: 13, scope: !5404)
!5546 = !DILocation(line: 594, column: 2, scope: !5404)
!5547 = !DILocation(line: 595, column: 9, scope: !5404)
!5548 = !DILocation(line: 595, column: 2, scope: !5404)
!5549 = !DILocation(line: 596, column: 1, scope: !5404)
!5550 = distinct !DISubprogram(name: "tty_ldisc_get", scope: !3, file: !3, line: 139, type: !5551, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5553)
!5551 = !DISubroutineType(types: !5552)
!5552 = !{!4003, !3122, !109}
!5553 = !{!5554, !5555, !5556, !5557}
!5554 = !DILocalVariable(name: "tty", arg: 1, scope: !5550, file: !3, line: 139, type: !3122)
!5555 = !DILocalVariable(name: "disc", arg: 2, scope: !5550, file: !3, line: 139, type: !109)
!5556 = !DILocalVariable(name: "ld", scope: !5550, file: !3, line: 141, type: !4003)
!5557 = !DILocalVariable(name: "ldops", scope: !5550, file: !3, line: 142, type: !4008)
!5558 = !DILocation(line: 139, column: 59, scope: !5550)
!5559 = !DILocation(line: 139, column: 68, scope: !5550)
!5560 = !DILocation(line: 141, column: 2, scope: !5550)
!5561 = !DILocation(line: 141, column: 20, scope: !5550)
!5562 = !DILocation(line: 142, column: 2, scope: !5550)
!5563 = !DILocation(line: 142, column: 24, scope: !5550)
!5564 = !DILocation(line: 144, column: 6, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 144, column: 6)
!5566 = !DILocation(line: 144, column: 11, scope: !5565)
!5567 = !DILocation(line: 144, column: 19, scope: !5565)
!5568 = !DILocation(line: 144, column: 22, scope: !5565)
!5569 = !DILocation(line: 144, column: 27, scope: !5565)
!5570 = !DILocation(line: 144, column: 6, scope: !5550)
!5571 = !DILocation(line: 145, column: 10, scope: !5565)
!5572 = !DILocation(line: 145, column: 3, scope: !5565)
!5573 = !DILocation(line: 151, column: 20, scope: !5550)
!5574 = !DILocation(line: 151, column: 10, scope: !5550)
!5575 = !DILocation(line: 151, column: 8, scope: !5550)
!5576 = !DILocation(line: 152, column: 13, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 152, column: 6)
!5578 = !DILocation(line: 152, column: 6, scope: !5577)
!5579 = !DILocation(line: 152, column: 6, scope: !5550)
!5580 = !DILocation(line: 153, column: 8, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 153, column: 7)
!5582 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 152, column: 21)
!5583 = !DILocation(line: 153, column: 32, scope: !5581)
!5584 = !DILocation(line: 153, column: 36, scope: !5581)
!5585 = !DILocation(line: 153, column: 7, scope: !5582)
!5586 = !DILocation(line: 154, column: 11, scope: !5581)
!5587 = !DILocation(line: 154, column: 4, scope: !5581)
!5588 = !DILocation(line: 155, column: 3, scope: !5582)
!5589 = !DILocation(line: 156, column: 21, scope: !5582)
!5590 = !DILocation(line: 156, column: 11, scope: !5582)
!5591 = !DILocation(line: 156, column: 9, scope: !5582)
!5592 = !DILocation(line: 157, column: 14, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 157, column: 7)
!5594 = !DILocation(line: 157, column: 7, scope: !5593)
!5595 = !DILocation(line: 157, column: 7, scope: !5582)
!5596 = !DILocation(line: 158, column: 20, scope: !5593)
!5597 = !DILocation(line: 158, column: 11, scope: !5593)
!5598 = !DILocation(line: 158, column: 4, scope: !5593)
!5599 = !DILocation(line: 159, column: 2, scope: !5582)
!5600 = !DILocation(line: 165, column: 7, scope: !5550)
!5601 = !DILocation(line: 165, column: 5, scope: !5550)
!5602 = !DILocation(line: 166, column: 12, scope: !5550)
!5603 = !DILocation(line: 166, column: 2, scope: !5550)
!5604 = !DILocation(line: 166, column: 6, scope: !5550)
!5605 = !DILocation(line: 166, column: 10, scope: !5550)
!5606 = !DILocation(line: 167, column: 12, scope: !5550)
!5607 = !DILocation(line: 167, column: 2, scope: !5550)
!5608 = !DILocation(line: 167, column: 6, scope: !5550)
!5609 = !DILocation(line: 167, column: 10, scope: !5550)
!5610 = !DILocation(line: 169, column: 9, scope: !5550)
!5611 = !DILocation(line: 169, column: 2, scope: !5550)
!5612 = !DILocation(line: 170, column: 1, scope: !5550)
!5613 = distinct !DISubprogram(name: "IS_ERR", scope: !5614, file: !5614, line: 59, type: !5615, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5617)
!5614 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!513, !1310}
!5617 = !{!5618}
!5618 = !DILocalVariable(name: "ptr", arg: 1, scope: !5613, file: !5614, line: 59, type: !1310)
!5619 = !DILocation(line: 59, column: 60, scope: !5613)
!5620 = !DILocation(line: 61, column: 9, scope: !5613)
!5621 = !DILocation(line: 61, column: 2, scope: !5613)
!5622 = distinct !DISubprogram(name: "PTR_ERR", scope: !5614, file: !5614, line: 49, type: !5623, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5625)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{!158, !1310}
!5625 = !{!5626}
!5626 = !DILocalVariable(name: "ptr", arg: 1, scope: !5622, file: !5614, line: 49, type: !1310)
!5627 = !DILocation(line: 49, column: 61, scope: !5622)
!5628 = !DILocation(line: 51, column: 16, scope: !5622)
!5629 = !DILocation(line: 51, column: 9, scope: !5622)
!5630 = !DILocation(line: 51, column: 2, scope: !5622)
!5631 = !DISubprogram(name: "tty_lock", scope: !3124, file: !3124, line: 511, type: !3910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5632 = distinct !DISubprogram(name: "const_test_bit", scope: !5633, file: !5633, line: 166, type: !5634, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5638)
!5633 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5634 = !DISubroutineType(types: !5635)
!5635 = !{!513, !161, !5636}
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5318)
!5638 = !{!5639, !5640, !5641, !5642, !5643}
!5639 = !DILocalVariable(name: "nr", arg: 1, scope: !5632, file: !5633, line: 166, type: !161)
!5640 = !DILocalVariable(name: "addr", arg: 2, scope: !5632, file: !5633, line: 166, type: !5636)
!5641 = !DILocalVariable(name: "p", scope: !5632, file: !5633, line: 168, type: !162)
!5642 = !DILocalVariable(name: "mask", scope: !5632, file: !5633, line: 169, type: !161)
!5643 = !DILocalVariable(name: "val", scope: !5632, file: !5633, line: 170, type: !161)
!5644 = !DILocation(line: 166, column: 30, scope: !5632)
!5645 = !DILocation(line: 166, column: 64, scope: !5632)
!5646 = !DILocation(line: 168, column: 2, scope: !5632)
!5647 = !DILocation(line: 168, column: 23, scope: !5632)
!5648 = !DILocation(line: 168, column: 50, scope: !5632)
!5649 = !DILocation(line: 168, column: 57, scope: !5632)
!5650 = !DILocation(line: 168, column: 55, scope: !5632)
!5651 = !DILocation(line: 169, column: 2, scope: !5632)
!5652 = !DILocation(line: 169, column: 16, scope: !5632)
!5653 = !DILocation(line: 169, column: 23, scope: !5632)
!5654 = !DILocation(line: 170, column: 2, scope: !5632)
!5655 = !DILocation(line: 170, column: 16, scope: !5632)
!5656 = !DILocation(line: 170, column: 23, scope: !5632)
!5657 = !DILocation(line: 170, column: 22, scope: !5632)
!5658 = !DILocation(line: 172, column: 12, scope: !5632)
!5659 = !DILocation(line: 172, column: 18, scope: !5632)
!5660 = !DILocation(line: 172, column: 16, scope: !5632)
!5661 = !DILocation(line: 172, column: 10, scope: !5632)
!5662 = !DILocation(line: 172, column: 9, scope: !5632)
!5663 = !DILocation(line: 173, column: 1, scope: !5632)
!5664 = !DILocation(line: 172, column: 2, scope: !5632)
!5665 = distinct !DISubprogram(name: "_test_bit", scope: !5666, file: !5666, line: 139, type: !5634, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5667)
!5666 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5667 = !{!5668, !5669}
!5668 = !DILocalVariable(name: "nr", arg: 1, scope: !5665, file: !5666, line: 139, type: !161)
!5669 = !DILocalVariable(name: "addr", arg: 2, scope: !5665, file: !5666, line: 139, type: !5636)
!5670 = !DILocation(line: 139, column: 25, scope: !5665)
!5671 = !DILocation(line: 139, column: 59, scope: !5665)
!5672 = !DILocation(line: 141, column: 25, scope: !5665)
!5673 = !DILocation(line: 141, column: 32, scope: !5665)
!5674 = !DILocation(line: 141, column: 30, scope: !5665)
!5675 = !DILocation(line: 141, column: 2, scope: !5665)
!5676 = !DILocation(line: 142, column: 23, scope: !5665)
!5677 = !DILocation(line: 142, column: 27, scope: !5665)
!5678 = !DILocation(line: 142, column: 9, scope: !5665)
!5679 = !DILocation(line: 142, column: 2, scope: !5665)
!5680 = distinct !DISubprogram(name: "tty_ldisc_close", scope: !3, file: !3, line: 449, type: !5402, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5681)
!5681 = !{!5682, !5683, !5684, !5686}
!5682 = !DILocalVariable(name: "tty", arg: 1, scope: !5680, file: !3, line: 449, type: !3122)
!5683 = !DILocalVariable(name: "ld", arg: 2, scope: !5680, file: !3, line: 449, type: !4003)
!5684 = !DILocalVariable(name: "__ret_warn_on", scope: !5685, file: !3, line: 452, type: !109)
!5685 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 452, column: 2)
!5686 = !DILocalVariable(name: "__flags", scope: !5687, file: !3, line: 452, type: !109)
!5687 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 452, column: 2)
!5688 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 452, column: 2)
!5689 = !DILocation(line: 449, column: 48, scope: !5680)
!5690 = !DILocation(line: 449, column: 71, scope: !5680)
!5691 = !DILocation(line: 451, column: 2, scope: !5680)
!5692 = !DILocation(line: 451, column: 2, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 451, column: 2)
!5694 = !DILocation(line: 452, column: 2, scope: !5685)
!5695 = !DILocation(line: 452, column: 2, scope: !5688)
!5696 = !DILocation(line: 452, column: 2, scope: !5687)
!5697 = !DILocation(line: 452, column: 2, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 452, column: 2)
!5699 = !DILocation(line: 452, column: 2, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 452, column: 2)
!5701 = !{i64 2154801449, i64 2154801478, i64 2154801524, i64 2154801582, i64 2154801636, i64 2154801690, i64 2154801745, i64 2154801776, i64 2154802084, i64 2154802090, i64 2154802137, i64 2154802160, i64 2154802186}
!5702 = !DILocation(line: 452, column: 2, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 452, column: 2)
!5704 = !DILocation(line: 452, column: 2, scope: !5680)
!5705 = !DILocation(line: 453, column: 29, scope: !5680)
!5706 = !DILocation(line: 453, column: 34, scope: !5680)
!5707 = !DILocation(line: 453, column: 2, scope: !5680)
!5708 = !DILocation(line: 454, column: 6, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 454, column: 6)
!5710 = !DILocation(line: 454, column: 10, scope: !5709)
!5711 = !DILocation(line: 454, column: 15, scope: !5709)
!5712 = !DILocation(line: 454, column: 6, scope: !5680)
!5713 = !DILocation(line: 455, column: 3, scope: !5709)
!5714 = !DILocation(line: 455, column: 7, scope: !5709)
!5715 = !DILocation(line: 455, column: 12, scope: !5709)
!5716 = !DILocation(line: 455, column: 18, scope: !5709)
!5717 = !DILocation(line: 457, column: 1, scope: !5680)
!5718 = distinct !DISubprogram(name: "tty_set_termios_ldisc", scope: !3, file: !3, line: 407, type: !3955, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5719)
!5719 = !{!5720, !5721}
!5720 = !DILocalVariable(name: "tty", arg: 1, scope: !5718, file: !3, line: 407, type: !3122)
!5721 = !DILocalVariable(name: "disc", arg: 2, scope: !5718, file: !3, line: 407, type: !109)
!5722 = !DILocation(line: 407, column: 54, scope: !5718)
!5723 = !DILocation(line: 407, column: 63, scope: !5718)
!5724 = !DILocation(line: 409, column: 14, scope: !5718)
!5725 = !DILocation(line: 409, column: 19, scope: !5718)
!5726 = !DILocation(line: 409, column: 2, scope: !5718)
!5727 = !DILocation(line: 410, column: 24, scope: !5718)
!5728 = !DILocation(line: 410, column: 2, scope: !5718)
!5729 = !DILocation(line: 410, column: 7, scope: !5718)
!5730 = !DILocation(line: 410, column: 15, scope: !5718)
!5731 = !DILocation(line: 410, column: 22, scope: !5718)
!5732 = !DILocation(line: 411, column: 12, scope: !5718)
!5733 = !DILocation(line: 411, column: 17, scope: !5718)
!5734 = !DILocation(line: 411, column: 2, scope: !5718)
!5735 = !DILocation(line: 413, column: 2, scope: !5718)
!5736 = !DILocation(line: 413, column: 7, scope: !5718)
!5737 = !DILocation(line: 413, column: 17, scope: !5718)
!5738 = !DILocation(line: 414, column: 2, scope: !5718)
!5739 = !DILocation(line: 414, column: 7, scope: !5718)
!5740 = !DILocation(line: 414, column: 20, scope: !5718)
!5741 = !DILocation(line: 415, column: 1, scope: !5718)
!5742 = distinct !DISubprogram(name: "tty_ldisc_open", scope: !3, file: !3, line: 426, type: !5743, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5745)
!5743 = !DISubroutineType(types: !5744)
!5744 = !{!109, !3122, !4003}
!5745 = !{!5746, !5747, !5748, !5750, !5753}
!5746 = !DILocalVariable(name: "tty", arg: 1, scope: !5742, file: !3, line: 426, type: !3122)
!5747 = !DILocalVariable(name: "ld", arg: 2, scope: !5742, file: !3, line: 426, type: !4003)
!5748 = !DILocalVariable(name: "__ret_warn_on", scope: !5749, file: !3, line: 428, type: !109)
!5749 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 428, column: 2)
!5750 = !DILocalVariable(name: "__flags", scope: !5751, file: !3, line: 428, type: !109)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 428, column: 2)
!5752 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 428, column: 2)
!5753 = !DILocalVariable(name: "ret", scope: !5754, file: !3, line: 430, type: !109)
!5754 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 429, column: 21)
!5755 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 429, column: 6)
!5756 = !DILocation(line: 426, column: 46, scope: !5742)
!5757 = !DILocation(line: 426, column: 69, scope: !5742)
!5758 = !DILocation(line: 428, column: 2, scope: !5749)
!5759 = !DILocation(line: 428, column: 2, scope: !5752)
!5760 = !DILocation(line: 428, column: 2, scope: !5751)
!5761 = !DILocation(line: 428, column: 2, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 428, column: 2)
!5763 = !DILocation(line: 428, column: 2, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 428, column: 2)
!5765 = !{i64 2154799167, i64 2154799196, i64 2154799242, i64 2154799300, i64 2154799354, i64 2154799408, i64 2154799463, i64 2154799494, i64 2154799802, i64 2154799808, i64 2154799855, i64 2154799878, i64 2154799904}
!5766 = !DILocation(line: 428, column: 2, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 428, column: 2)
!5768 = !DILocation(line: 428, column: 2, scope: !5742)
!5769 = !DILocation(line: 429, column: 6, scope: !5755)
!5770 = !DILocation(line: 429, column: 10, scope: !5755)
!5771 = !DILocation(line: 429, column: 15, scope: !5755)
!5772 = !DILocation(line: 429, column: 6, scope: !5742)
!5773 = !DILocation(line: 430, column: 3, scope: !5754)
!5774 = !DILocation(line: 430, column: 7, scope: !5754)
!5775 = !DILocation(line: 432, column: 9, scope: !5754)
!5776 = !DILocation(line: 432, column: 13, scope: !5754)
!5777 = !DILocation(line: 432, column: 18, scope: !5754)
!5778 = !DILocation(line: 432, column: 23, scope: !5754)
!5779 = !DILocation(line: 432, column: 7, scope: !5754)
!5780 = !DILocation(line: 433, column: 7, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 433, column: 7)
!5782 = !DILocation(line: 433, column: 7, scope: !5754)
!5783 = !DILocation(line: 434, column: 31, scope: !5781)
!5784 = !DILocation(line: 434, column: 36, scope: !5781)
!5785 = !DILocation(line: 434, column: 4, scope: !5781)
!5786 = !DILocation(line: 437, column: 10, scope: !5754)
!5787 = !DILocation(line: 437, column: 3, scope: !5754)
!5788 = !DILocation(line: 438, column: 2, scope: !5755)
!5789 = !DILocation(line: 439, column: 2, scope: !5742)
!5790 = !DILocation(line: 440, column: 1, scope: !5742)
!5791 = distinct !DISubprogram(name: "tty_ldisc_put", scope: !3, file: !3, line: 178, type: !5274, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5792)
!5792 = !{!5793, !5794, !5797}
!5793 = !DILocalVariable(name: "ld", arg: 1, scope: !5791, file: !3, line: 178, type: !4003)
!5794 = !DILocalVariable(name: "__ret_warn_on", scope: !5795, file: !3, line: 180, type: !109)
!5795 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 180, column: 6)
!5796 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 180, column: 6)
!5797 = !DILocalVariable(name: "__flags", scope: !5798, file: !3, line: 180, type: !109)
!5798 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 180, column: 6)
!5799 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 180, column: 6)
!5800 = !DILocation(line: 178, column: 45, scope: !5791)
!5801 = !DILocation(line: 180, column: 6, scope: !5795)
!5802 = !DILocation(line: 180, column: 6, scope: !5799)
!5803 = !DILocation(line: 180, column: 6, scope: !5798)
!5804 = !DILocation(line: 180, column: 6, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 180, column: 6)
!5806 = !DILocation(line: 180, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 180, column: 6)
!5808 = !{i64 2154788280, i64 2154788309, i64 2154788355, i64 2154788413, i64 2154788467, i64 2154788521, i64 2154788576, i64 2154788607, i64 2154788915, i64 2154788921, i64 2154788968, i64 2154788991, i64 2154789017}
!5809 = !DILocation(line: 180, column: 6, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 180, column: 6)
!5811 = !DILocation(line: 180, column: 6, scope: !5796)
!5812 = !DILocation(line: 180, column: 6, scope: !5791)
!5813 = !DILocation(line: 181, column: 3, scope: !5796)
!5814 = !DILocation(line: 183, column: 12, scope: !5791)
!5815 = !DILocation(line: 183, column: 16, scope: !5791)
!5816 = !DILocation(line: 183, column: 2, scope: !5791)
!5817 = !DILocation(line: 184, column: 8, scope: !5791)
!5818 = !DILocation(line: 184, column: 2, scope: !5791)
!5819 = !DILocation(line: 185, column: 1, scope: !5791)
!5820 = distinct !DISubprogram(name: "tty_ldisc_restore", scope: !3, file: !3, line: 491, type: !5402, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5821)
!5821 = !{!5822, !5823, !5824}
!5822 = !DILocalVariable(name: "tty", arg: 1, scope: !5820, file: !3, line: 491, type: !3122)
!5823 = !DILocalVariable(name: "old", arg: 2, scope: !5820, file: !3, line: 491, type: !4003)
!5824 = !DILocalVariable(name: "name", scope: !5825, file: !3, line: 495, type: !516)
!5825 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 494, column: 48)
!5826 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 494, column: 6)
!5827 = !DILocation(line: 491, column: 50, scope: !5820)
!5828 = !DILocation(line: 491, column: 73, scope: !5820)
!5829 = !DILocation(line: 494, column: 23, scope: !5826)
!5830 = !DILocation(line: 494, column: 28, scope: !5826)
!5831 = !DILocation(line: 494, column: 33, scope: !5826)
!5832 = !DILocation(line: 494, column: 38, scope: !5826)
!5833 = !DILocation(line: 494, column: 6, scope: !5826)
!5834 = !DILocation(line: 494, column: 43, scope: !5826)
!5835 = !DILocation(line: 494, column: 6, scope: !5820)
!5836 = !DILocation(line: 495, column: 3, scope: !5825)
!5837 = !DILocation(line: 495, column: 15, scope: !5825)
!5838 = !DILocation(line: 495, column: 31, scope: !5825)
!5839 = !DILocation(line: 495, column: 22, scope: !5825)
!5840 = !DILocation(line: 497, column: 3, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 497, column: 3)
!5842 = !DILocation(line: 497, column: 3, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 497, column: 3)
!5844 = !DILocation(line: 503, column: 24, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 503, column: 7)
!5846 = !DILocation(line: 503, column: 7, scope: !5845)
!5847 = !DILocation(line: 503, column: 36, scope: !5845)
!5848 = !DILocation(line: 503, column: 40, scope: !5845)
!5849 = !DILocation(line: 504, column: 24, scope: !5845)
!5850 = !DILocation(line: 504, column: 7, scope: !5845)
!5851 = !DILocation(line: 504, column: 37, scope: !5845)
!5852 = !DILocation(line: 503, column: 7, scope: !5825)
!5853 = !DILocation(line: 505, column: 48, scope: !5845)
!5854 = !DILocation(line: 505, column: 4, scope: !5845)
!5855 = !DILocation(line: 506, column: 2, scope: !5826)
!5856 = !DILocation(line: 506, column: 2, scope: !5825)
!5857 = !DILocation(line: 507, column: 1, scope: !5820)
!5858 = !DISubprogram(name: "down_read", scope: !453, file: !453, line: 175, type: !5859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5859 = !DISubroutineType(types: !5860)
!5860 = !{null, !5861}
!5861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!5862 = !DISubprogram(name: "up_read", scope: !453, file: !453, line: 198, type: !5859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5863 = !DISubprogram(name: "tty_buffer_restart_work", scope: !5401, file: !5401, line: 75, type: !3805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5864 = !DISubprogram(name: "tty_unlock", scope: !3124, file: !3124, line: 513, type: !3910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5865 = distinct !DISubprogram(name: "tty_ldisc_reinit", scope: !3, file: !3, line: 647, type: !3948, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5866)
!5866 = !{!5867, !5868, !5869, !5870}
!5867 = !DILocalVariable(name: "tty", arg: 1, scope: !5865, file: !3, line: 647, type: !3122)
!5868 = !DILocalVariable(name: "disc", arg: 2, scope: !5865, file: !3, line: 647, type: !109)
!5869 = !DILocalVariable(name: "ld", scope: !5865, file: !3, line: 649, type: !4003)
!5870 = !DILocalVariable(name: "retval", scope: !5865, file: !3, line: 650, type: !109)
!5871 = !DILocation(line: 647, column: 41, scope: !5865)
!5872 = !DILocation(line: 647, column: 50, scope: !5865)
!5873 = !DILocation(line: 649, column: 2, scope: !5865)
!5874 = !DILocation(line: 649, column: 20, scope: !5865)
!5875 = !DILocation(line: 650, column: 2, scope: !5865)
!5876 = !DILocation(line: 650, column: 6, scope: !5865)
!5877 = !DILocation(line: 652, column: 2, scope: !5865)
!5878 = !DILocation(line: 652, column: 2, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 652, column: 2)
!5880 = !DILocation(line: 653, column: 21, scope: !5865)
!5881 = !DILocation(line: 653, column: 26, scope: !5865)
!5882 = !DILocation(line: 653, column: 7, scope: !5865)
!5883 = !DILocation(line: 653, column: 5, scope: !5865)
!5884 = !DILocation(line: 654, column: 13, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 654, column: 6)
!5886 = !DILocation(line: 654, column: 6, scope: !5885)
!5887 = !DILocation(line: 654, column: 6, scope: !5865)
!5888 = !DILocation(line: 655, column: 3, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 654, column: 18)
!5890 = !DILocation(line: 655, column: 3, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 655, column: 3)
!5892 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 655, column: 3)
!5893 = !DILocation(line: 655, column: 3, scope: !5892)
!5894 = !DILocation(line: 655, column: 3, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 655, column: 3)
!5896 = !DILocation(line: 655, column: 3, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 655, column: 3)
!5898 = !DILocation(line: 655, column: 3, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 655, column: 3)
!5900 = !{i64 2154805428, i64 2154805457, i64 2154805503, i64 2154805561, i64 2154805615, i64 2154805669, i64 2154805724, i64 2154805755}
!5901 = !DILocation(line: 656, column: 18, scope: !5889)
!5902 = !DILocation(line: 656, column: 10, scope: !5889)
!5903 = !DILocation(line: 656, column: 3, scope: !5889)
!5904 = !DILocation(line: 659, column: 6, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 659, column: 6)
!5906 = !DILocation(line: 659, column: 11, scope: !5905)
!5907 = !DILocation(line: 659, column: 6, scope: !5865)
!5908 = !DILocation(line: 660, column: 19, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 659, column: 18)
!5910 = !DILocation(line: 660, column: 24, scope: !5909)
!5911 = !DILocation(line: 660, column: 29, scope: !5909)
!5912 = !DILocation(line: 660, column: 3, scope: !5909)
!5913 = !DILocation(line: 661, column: 17, scope: !5909)
!5914 = !DILocation(line: 661, column: 22, scope: !5909)
!5915 = !DILocation(line: 661, column: 3, scope: !5909)
!5916 = !DILocation(line: 662, column: 2, scope: !5909)
!5917 = !DILocation(line: 665, column: 15, scope: !5865)
!5918 = !DILocation(line: 665, column: 2, scope: !5865)
!5919 = !DILocation(line: 665, column: 7, scope: !5865)
!5920 = !DILocation(line: 665, column: 13, scope: !5865)
!5921 = !DILocation(line: 666, column: 24, scope: !5865)
!5922 = !DILocation(line: 666, column: 29, scope: !5865)
!5923 = !DILocation(line: 666, column: 2, scope: !5865)
!5924 = !DILocation(line: 667, column: 26, scope: !5865)
!5925 = !DILocation(line: 667, column: 31, scope: !5865)
!5926 = !DILocation(line: 667, column: 36, scope: !5865)
!5927 = !DILocation(line: 667, column: 11, scope: !5865)
!5928 = !DILocation(line: 667, column: 9, scope: !5865)
!5929 = !DILocation(line: 668, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 668, column: 6)
!5931 = !DILocation(line: 668, column: 6, scope: !5865)
!5932 = !DILocation(line: 669, column: 17, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 668, column: 14)
!5934 = !DILocation(line: 669, column: 22, scope: !5933)
!5935 = !DILocation(line: 669, column: 3, scope: !5933)
!5936 = !DILocation(line: 670, column: 3, scope: !5933)
!5937 = !DILocation(line: 670, column: 8, scope: !5933)
!5938 = !DILocation(line: 670, column: 14, scope: !5933)
!5939 = !DILocation(line: 671, column: 2, scope: !5933)
!5940 = !DILocation(line: 672, column: 9, scope: !5865)
!5941 = !DILocation(line: 672, column: 2, scope: !5865)
!5942 = !DILocation(line: 673, column: 1, scope: !5865)
!5943 = distinct !DISubprogram(name: "tty_ldisc_hangup", scope: !3, file: !3, line: 690, type: !4040, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5944)
!5944 = !{!5945, !5946, !5947, !5948, !5955}
!5945 = !DILocalVariable(name: "tty", arg: 1, scope: !5943, file: !3, line: 690, type: !3122)
!5946 = !DILocalVariable(name: "reinit", arg: 2, scope: !5943, file: !3, line: 690, type: !513)
!5947 = !DILocalVariable(name: "ld", scope: !5943, file: !3, line: 692, type: !4003)
!5948 = !DILocalVariable(name: "__ret_warn_on", scope: !5949, file: !3, line: 727, type: !109)
!5949 = distinct !DILexicalBlock(scope: !5950, file: !3, line: 727, column: 5)
!5950 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 725, column: 8)
!5951 = distinct !DILexicalBlock(scope: !5952, file: !3, line: 724, column: 15)
!5952 = distinct !DILexicalBlock(scope: !5953, file: !3, line: 724, column: 7)
!5953 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 723, column: 18)
!5954 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 723, column: 6)
!5955 = !DILocalVariable(name: "__flags", scope: !5956, file: !3, line: 727, type: !109)
!5956 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 727, column: 5)
!5957 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 727, column: 5)
!5958 = !DILocation(line: 690, column: 42, scope: !5943)
!5959 = !DILocation(line: 690, column: 52, scope: !5943)
!5960 = !DILocation(line: 692, column: 2, scope: !5943)
!5961 = !DILocation(line: 692, column: 20, scope: !5943)
!5962 = !DILocation(line: 696, column: 21, scope: !5943)
!5963 = !DILocation(line: 696, column: 7, scope: !5943)
!5964 = !DILocation(line: 696, column: 5, scope: !5943)
!5965 = !DILocation(line: 697, column: 6, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 697, column: 6)
!5967 = !DILocation(line: 697, column: 9, scope: !5966)
!5968 = !DILocation(line: 697, column: 6, scope: !5943)
!5969 = !DILocation(line: 698, column: 7, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 698, column: 7)
!5971 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 697, column: 18)
!5972 = !DILocation(line: 698, column: 11, scope: !5970)
!5973 = !DILocation(line: 698, column: 16, scope: !5970)
!5974 = !DILocation(line: 698, column: 7, scope: !5971)
!5975 = !DILocation(line: 699, column: 4, scope: !5970)
!5976 = !DILocation(line: 699, column: 8, scope: !5970)
!5977 = !DILocation(line: 699, column: 13, scope: !5970)
!5978 = !DILocation(line: 699, column: 26, scope: !5970)
!5979 = !DILocation(line: 700, column: 27, scope: !5971)
!5980 = !DILocation(line: 700, column: 3, scope: !5971)
!5981 = !DILocation(line: 701, column: 8, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 701, column: 7)
!5983 = !DILocation(line: 701, column: 52, scope: !5982)
!5984 = !DILocation(line: 702, column: 7, scope: !5982)
!5985 = !DILocation(line: 702, column: 11, scope: !5982)
!5986 = !DILocation(line: 702, column: 16, scope: !5982)
!5987 = !DILocation(line: 701, column: 7, scope: !5971)
!5988 = !DILocation(line: 703, column: 4, scope: !5982)
!5989 = !DILocation(line: 703, column: 8, scope: !5982)
!5990 = !DILocation(line: 703, column: 13, scope: !5982)
!5991 = !DILocation(line: 703, column: 26, scope: !5982)
!5992 = !DILocation(line: 704, column: 7, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 704, column: 7)
!5994 = !DILocation(line: 704, column: 11, scope: !5993)
!5995 = !DILocation(line: 704, column: 16, scope: !5993)
!5996 = !DILocation(line: 704, column: 7, scope: !5971)
!5997 = !DILocation(line: 705, column: 4, scope: !5993)
!5998 = !DILocation(line: 705, column: 8, scope: !5993)
!5999 = !DILocation(line: 705, column: 13, scope: !5993)
!6000 = !DILocation(line: 705, column: 20, scope: !5993)
!6001 = !DILocation(line: 706, column: 19, scope: !5971)
!6002 = !DILocation(line: 706, column: 3, scope: !5971)
!6003 = !DILocation(line: 707, column: 2, scope: !5971)
!6004 = !DILocation(line: 709, column: 2, scope: !5943)
!6005 = !DILocation(line: 710, column: 2, scope: !5943)
!6006 = !DILocation(line: 718, column: 17, scope: !5943)
!6007 = !DILocation(line: 718, column: 2, scope: !5943)
!6008 = !DILocation(line: 720, column: 6, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 720, column: 6)
!6010 = !DILocation(line: 720, column: 11, scope: !6009)
!6011 = !DILocation(line: 720, column: 19, scope: !6009)
!6012 = !DILocation(line: 720, column: 25, scope: !6009)
!6013 = !DILocation(line: 720, column: 6, scope: !5943)
!6014 = !DILocation(line: 721, column: 21, scope: !6009)
!6015 = !DILocation(line: 721, column: 3, scope: !6009)
!6016 = !DILocation(line: 723, column: 6, scope: !5954)
!6017 = !DILocation(line: 723, column: 11, scope: !5954)
!6018 = !DILocation(line: 723, column: 6, scope: !5943)
!6019 = !DILocation(line: 724, column: 7, scope: !5952)
!6020 = !{i8 0, i8 2}
!6021 = !DILocation(line: 724, column: 7, scope: !5953)
!6022 = !DILocation(line: 725, column: 25, scope: !5950)
!6023 = !DILocation(line: 725, column: 30, scope: !5950)
!6024 = !DILocation(line: 725, column: 35, scope: !5950)
!6025 = !DILocation(line: 725, column: 43, scope: !5950)
!6026 = !DILocation(line: 725, column: 8, scope: !5950)
!6027 = !DILocation(line: 725, column: 51, scope: !5950)
!6028 = !DILocation(line: 725, column: 55, scope: !5950)
!6029 = !DILocation(line: 726, column: 25, scope: !5950)
!6030 = !DILocation(line: 726, column: 8, scope: !5950)
!6031 = !DILocation(line: 726, column: 37, scope: !5950)
!6032 = !DILocation(line: 725, column: 8, scope: !5951)
!6033 = !DILocation(line: 727, column: 5, scope: !5949)
!6034 = !DILocation(line: 727, column: 5, scope: !5957)
!6035 = !DILocation(line: 727, column: 5, scope: !5956)
!6036 = !DILocation(line: 727, column: 5, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 727, column: 5)
!6038 = !DILocation(line: 727, column: 5, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 727, column: 5)
!6040 = !{i64 2154807572, i64 2154807601, i64 2154807647, i64 2154807705, i64 2154807759, i64 2154807813, i64 2154807868, i64 2154807899, i64 2154808207, i64 2154808213, i64 2154808260, i64 2154808283, i64 2154808309}
!6041 = !DILocation(line: 727, column: 5, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 727, column: 5)
!6043 = !DILocation(line: 727, column: 5, scope: !5950)
!6044 = !DILocation(line: 728, column: 3, scope: !5951)
!6045 = !DILocation(line: 729, column: 19, scope: !5952)
!6046 = !DILocation(line: 729, column: 4, scope: !5952)
!6047 = !DILocation(line: 730, column: 2, scope: !5953)
!6048 = !DILocation(line: 731, column: 19, scope: !5943)
!6049 = !DILocation(line: 731, column: 2, scope: !5943)
!6050 = !DILocation(line: 732, column: 1, scope: !5943)
!6051 = !DISubprogram(name: "tty_driver_flush_buffer", scope: !3124, file: !3124, line: 417, type: !3910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6052 = distinct !DISubprogram(name: "tty_reset_termios", scope: !3, file: !3, line: 625, type: !3910, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6053)
!6053 = !{!6054}
!6054 = !DILocalVariable(name: "tty", arg: 1, scope: !6052, file: !3, line: 625, type: !3122)
!6055 = !DILocation(line: 625, column: 50, scope: !6052)
!6056 = !DILocation(line: 627, column: 14, scope: !6052)
!6057 = !DILocation(line: 627, column: 19, scope: !6052)
!6058 = !DILocation(line: 627, column: 2, scope: !6052)
!6059 = !DILocation(line: 628, column: 2, scope: !6052)
!6060 = !DILocation(line: 628, column: 7, scope: !6052)
!6061 = !DILocation(line: 628, column: 17, scope: !6052)
!6062 = !DILocation(line: 628, column: 22, scope: !6052)
!6063 = !DILocation(line: 628, column: 30, scope: !6052)
!6064 = !DILocation(line: 629, column: 55, scope: !6052)
!6065 = !DILocation(line: 629, column: 60, scope: !6052)
!6066 = !DILocation(line: 629, column: 26, scope: !6052)
!6067 = !DILocation(line: 629, column: 2, scope: !6052)
!6068 = !DILocation(line: 629, column: 7, scope: !6052)
!6069 = !DILocation(line: 629, column: 15, scope: !6052)
!6070 = !DILocation(line: 629, column: 24, scope: !6052)
!6071 = !DILocation(line: 630, column: 49, scope: !6052)
!6072 = !DILocation(line: 630, column: 54, scope: !6052)
!6073 = !DILocation(line: 630, column: 26, scope: !6052)
!6074 = !DILocation(line: 630, column: 2, scope: !6052)
!6075 = !DILocation(line: 630, column: 7, scope: !6052)
!6076 = !DILocation(line: 630, column: 15, scope: !6052)
!6077 = !DILocation(line: 630, column: 24, scope: !6052)
!6078 = !DILocation(line: 631, column: 12, scope: !6052)
!6079 = !DILocation(line: 631, column: 17, scope: !6052)
!6080 = !DILocation(line: 631, column: 2, scope: !6052)
!6081 = !DILocation(line: 632, column: 1, scope: !6052)
!6082 = distinct !DISubprogram(name: "tty_ldisc_kill", scope: !3, file: !3, line: 605, type: !3910, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6083)
!6083 = !{!6084}
!6084 = !DILocalVariable(name: "tty", arg: 1, scope: !6082, file: !3, line: 605, type: !3122)
!6085 = !DILocation(line: 605, column: 47, scope: !6082)
!6086 = !DILocation(line: 607, column: 2, scope: !6082)
!6087 = !DILocation(line: 607, column: 2, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 607, column: 2)
!6089 = !DILocation(line: 608, column: 7, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 608, column: 6)
!6091 = !DILocation(line: 608, column: 12, scope: !6090)
!6092 = !DILocation(line: 608, column: 6, scope: !6082)
!6093 = !DILocation(line: 609, column: 3, scope: !6090)
!6094 = !DILocation(line: 613, column: 18, scope: !6082)
!6095 = !DILocation(line: 613, column: 23, scope: !6082)
!6096 = !DILocation(line: 613, column: 28, scope: !6082)
!6097 = !DILocation(line: 613, column: 2, scope: !6082)
!6098 = !DILocation(line: 614, column: 16, scope: !6082)
!6099 = !DILocation(line: 614, column: 21, scope: !6082)
!6100 = !DILocation(line: 614, column: 2, scope: !6082)
!6101 = !DILocation(line: 616, column: 2, scope: !6082)
!6102 = !DILocation(line: 616, column: 7, scope: !6082)
!6103 = !DILocation(line: 616, column: 13, scope: !6082)
!6104 = !DILocation(line: 617, column: 1, scope: !6082)
!6105 = distinct !DISubprogram(name: "tty_ldisc_setup", scope: !3, file: !3, line: 743, type: !6106, scopeLine: 744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6108)
!6106 = !DISubroutineType(types: !6107)
!6107 = !{!109, !3122, !3122}
!6108 = !{!6109, !6110, !6111}
!6109 = !DILocalVariable(name: "tty", arg: 1, scope: !6105, file: !3, line: 743, type: !3122)
!6110 = !DILocalVariable(name: "o_tty", arg: 2, scope: !6105, file: !3, line: 743, type: !3122)
!6111 = !DILocalVariable(name: "retval", scope: !6105, file: !3, line: 745, type: !109)
!6112 = !DILocation(line: 743, column: 40, scope: !6105)
!6113 = !DILocation(line: 743, column: 64, scope: !6105)
!6114 = !DILocation(line: 745, column: 2, scope: !6105)
!6115 = !DILocation(line: 745, column: 6, scope: !6105)
!6116 = !DILocation(line: 745, column: 30, scope: !6105)
!6117 = !DILocation(line: 745, column: 35, scope: !6105)
!6118 = !DILocation(line: 745, column: 40, scope: !6105)
!6119 = !DILocation(line: 745, column: 15, scope: !6105)
!6120 = !DILocation(line: 747, column: 6, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 747, column: 6)
!6122 = !DILocation(line: 747, column: 6, scope: !6105)
!6123 = !DILocation(line: 748, column: 10, scope: !6121)
!6124 = !DILocation(line: 748, column: 3, scope: !6121)
!6125 = !DILocation(line: 750, column: 6, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 750, column: 6)
!6127 = !DILocation(line: 750, column: 6, scope: !6105)
!6128 = !DILocation(line: 755, column: 27, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 750, column: 13)
!6130 = !DILocation(line: 755, column: 34, scope: !6129)
!6131 = !DILocation(line: 755, column: 41, scope: !6129)
!6132 = !DILocation(line: 755, column: 12, scope: !6129)
!6133 = !DILocation(line: 755, column: 10, scope: !6129)
!6134 = !DILocation(line: 756, column: 7, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 756, column: 7)
!6136 = !DILocation(line: 756, column: 7, scope: !6129)
!6137 = !DILocation(line: 757, column: 20, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6135, file: !3, line: 756, column: 15)
!6139 = !DILocation(line: 757, column: 25, scope: !6138)
!6140 = !DILocation(line: 757, column: 30, scope: !6138)
!6141 = !DILocation(line: 757, column: 4, scope: !6138)
!6142 = !DILocation(line: 758, column: 11, scope: !6138)
!6143 = !DILocation(line: 758, column: 4, scope: !6138)
!6144 = !DILocation(line: 760, column: 2, scope: !6129)
!6145 = !DILocation(line: 761, column: 2, scope: !6105)
!6146 = !DILocation(line: 762, column: 1, scope: !6105)
!6147 = distinct !DISubprogram(name: "tty_ldisc_release", scope: !3, file: !3, line: 771, type: !3910, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6148)
!6148 = !{!6149, !6150}
!6149 = !DILocalVariable(name: "tty", arg: 1, scope: !6147, file: !3, line: 771, type: !3122)
!6150 = !DILocalVariable(name: "o_tty", scope: !6147, file: !3, line: 773, type: !3122)
!6151 = !DILocation(line: 771, column: 43, scope: !6147)
!6152 = !DILocation(line: 773, column: 2, scope: !6147)
!6153 = !DILocation(line: 773, column: 21, scope: !6147)
!6154 = !DILocation(line: 773, column: 29, scope: !6147)
!6155 = !DILocation(line: 773, column: 34, scope: !6147)
!6156 = !DILocation(line: 780, column: 22, scope: !6147)
!6157 = !DILocation(line: 780, column: 27, scope: !6147)
!6158 = !DILocation(line: 780, column: 2, scope: !6147)
!6159 = !DILocation(line: 781, column: 17, scope: !6147)
!6160 = !DILocation(line: 781, column: 2, scope: !6147)
!6161 = !DILocation(line: 782, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 782, column: 6)
!6163 = !DILocation(line: 782, column: 6, scope: !6147)
!6164 = !DILocation(line: 783, column: 18, scope: !6162)
!6165 = !DILocation(line: 783, column: 3, scope: !6162)
!6166 = !DILocation(line: 784, column: 24, scope: !6147)
!6167 = !DILocation(line: 784, column: 29, scope: !6147)
!6168 = !DILocation(line: 784, column: 2, scope: !6147)
!6169 = !DILocation(line: 792, column: 1, scope: !6147)
!6170 = distinct !DISubprogram(name: "tty_ldisc_lock_pair", scope: !3, file: !3, line: 364, type: !6171, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6173)
!6171 = !DISubroutineType(types: !6172)
!6172 = !{null, !3122, !3122}
!6173 = !{!6174, !6175}
!6174 = !DILocalVariable(name: "tty", arg: 1, scope: !6170, file: !3, line: 364, type: !3122)
!6175 = !DILocalVariable(name: "tty2", arg: 2, scope: !6170, file: !3, line: 364, type: !3122)
!6176 = !DILocation(line: 364, column: 52, scope: !6170)
!6177 = !DILocation(line: 364, column: 76, scope: !6170)
!6178 = !DILocation(line: 366, column: 30, scope: !6170)
!6179 = !DILocation(line: 366, column: 35, scope: !6170)
!6180 = !DILocation(line: 366, column: 2, scope: !6170)
!6181 = !DILocation(line: 367, column: 1, scope: !6170)
!6182 = distinct !DISubprogram(name: "tty_ldisc_unlock_pair", scope: !3, file: !3, line: 369, type: !6171, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6183)
!6183 = !{!6184, !6185}
!6184 = !DILocalVariable(name: "tty", arg: 1, scope: !6182, file: !3, line: 369, type: !3122)
!6185 = !DILocalVariable(name: "tty2", arg: 2, scope: !6182, file: !3, line: 370, type: !3122)
!6186 = !DILocation(line: 369, column: 54, scope: !6182)
!6187 = !DILocation(line: 370, column: 26, scope: !6182)
!6188 = !DILocation(line: 372, column: 21, scope: !6182)
!6189 = !DILocation(line: 372, column: 2, scope: !6182)
!6190 = !DILocation(line: 373, column: 6, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 373, column: 6)
!6192 = !DILocation(line: 373, column: 6, scope: !6182)
!6193 = !DILocation(line: 374, column: 22, scope: !6191)
!6194 = !DILocation(line: 374, column: 3, scope: !6191)
!6195 = !DILocation(line: 375, column: 1, scope: !6182)
!6196 = distinct !DISubprogram(name: "tty_ldisc_init", scope: !3, file: !3, line: 801, type: !3963, scopeLine: 802, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6197)
!6197 = !{!6198, !6199}
!6198 = !DILocalVariable(name: "tty", arg: 1, scope: !6196, file: !3, line: 801, type: !3122)
!6199 = !DILocalVariable(name: "ld", scope: !6196, file: !3, line: 803, type: !4003)
!6200 = !DILocation(line: 801, column: 39, scope: !6196)
!6201 = !DILocation(line: 803, column: 2, scope: !6196)
!6202 = !DILocation(line: 803, column: 20, scope: !6196)
!6203 = !DILocation(line: 803, column: 39, scope: !6196)
!6204 = !DILocation(line: 803, column: 25, scope: !6196)
!6205 = !DILocation(line: 805, column: 13, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 805, column: 6)
!6207 = !DILocation(line: 805, column: 6, scope: !6206)
!6208 = !DILocation(line: 805, column: 6, scope: !6196)
!6209 = !DILocation(line: 806, column: 18, scope: !6206)
!6210 = !DILocation(line: 806, column: 10, scope: !6206)
!6211 = !DILocation(line: 806, column: 3, scope: !6206)
!6212 = !DILocation(line: 807, column: 15, scope: !6196)
!6213 = !DILocation(line: 807, column: 2, scope: !6196)
!6214 = !DILocation(line: 807, column: 7, scope: !6196)
!6215 = !DILocation(line: 807, column: 13, scope: !6196)
!6216 = !DILocation(line: 808, column: 2, scope: !6196)
!6217 = !DILocation(line: 809, column: 1, scope: !6196)
!6218 = distinct !DISubprogram(name: "tty_ldisc_deinit", scope: !3, file: !3, line: 818, type: !3910, scopeLine: 819, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6219)
!6219 = !{!6220}
!6220 = !DILocalVariable(name: "tty", arg: 1, scope: !6218, file: !3, line: 818, type: !3122)
!6221 = !DILocation(line: 818, column: 42, scope: !6218)
!6222 = !DILocation(line: 821, column: 6, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 821, column: 6)
!6224 = !DILocation(line: 821, column: 11, scope: !6223)
!6225 = !DILocation(line: 821, column: 6, scope: !6218)
!6226 = !DILocation(line: 822, column: 17, scope: !6223)
!6227 = !DILocation(line: 822, column: 22, scope: !6223)
!6228 = !DILocation(line: 822, column: 3, scope: !6223)
!6229 = !DILocation(line: 823, column: 2, scope: !6218)
!6230 = !DILocation(line: 823, column: 7, scope: !6218)
!6231 = !DILocation(line: 823, column: 13, scope: !6218)
!6232 = !DILocation(line: 824, column: 1, scope: !6218)
!6233 = distinct !DISubprogram(name: "get_ldops", scope: !3, file: !3, line: 93, type: !6234, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6236)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!4008, !109}
!6236 = !{!6237, !6238, !6239, !6240, !6241, !6244, !6245, !6248}
!6237 = !DILocalVariable(name: "disc", arg: 1, scope: !6233, file: !3, line: 93, type: !109)
!6238 = !DILocalVariable(name: "flags", scope: !6233, file: !3, line: 95, type: !161)
!6239 = !DILocalVariable(name: "ldops", scope: !6233, file: !3, line: 96, type: !4008)
!6240 = !DILocalVariable(name: "ret", scope: !6233, file: !3, line: 96, type: !4008)
!6241 = !DILocalVariable(name: "__dummy", scope: !6242, file: !3, line: 98, type: !161)
!6242 = distinct !DILexicalBlock(scope: !6243, file: !3, line: 98, column: 2)
!6243 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 98, column: 2)
!6244 = !DILocalVariable(name: "__dummy2", scope: !6242, file: !3, line: 98, type: !161)
!6245 = !DILocalVariable(name: "__dummy", scope: !6246, file: !3, line: 106, type: !161)
!6246 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 106, column: 2)
!6247 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 106, column: 2)
!6248 = !DILocalVariable(name: "__dummy2", scope: !6246, file: !3, line: 106, type: !161)
!6249 = !DILocation(line: 93, column: 44, scope: !6233)
!6250 = !DILocation(line: 95, column: 2, scope: !6233)
!6251 = !DILocation(line: 95, column: 16, scope: !6233)
!6252 = !DILocation(line: 96, column: 2, scope: !6233)
!6253 = !DILocation(line: 96, column: 24, scope: !6233)
!6254 = !DILocation(line: 96, column: 32, scope: !6233)
!6255 = !DILocation(line: 98, column: 2, scope: !6233)
!6256 = !DILocation(line: 98, column: 2, scope: !6242)
!6257 = !DILocation(line: 98, column: 2, scope: !6243)
!6258 = !DILocation(line: 99, column: 8, scope: !6233)
!6259 = !DILocation(line: 99, column: 6, scope: !6233)
!6260 = !DILocation(line: 100, column: 21, scope: !6233)
!6261 = !DILocation(line: 100, column: 10, scope: !6233)
!6262 = !DILocation(line: 100, column: 8, scope: !6233)
!6263 = !DILocation(line: 101, column: 6, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 101, column: 6)
!6265 = !DILocation(line: 101, column: 6, scope: !6233)
!6266 = !DILocation(line: 102, column: 9, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 101, column: 13)
!6268 = !DILocation(line: 102, column: 7, scope: !6267)
!6269 = !DILocation(line: 103, column: 22, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 103, column: 7)
!6271 = !DILocation(line: 103, column: 29, scope: !6270)
!6272 = !DILocation(line: 103, column: 7, scope: !6270)
!6273 = !DILocation(line: 103, column: 7, scope: !6267)
!6274 = !DILocation(line: 104, column: 10, scope: !6270)
!6275 = !DILocation(line: 104, column: 8, scope: !6270)
!6276 = !DILocation(line: 104, column: 4, scope: !6270)
!6277 = !DILocation(line: 105, column: 2, scope: !6267)
!6278 = !DILocation(line: 106, column: 2, scope: !6233)
!6279 = !DILocation(line: 106, column: 2, scope: !6246)
!6280 = !DILocation(line: 106, column: 2, scope: !6247)
!6281 = !DILocation(line: 107, column: 9, scope: !6233)
!6282 = !DILocation(line: 108, column: 1, scope: !6233)
!6283 = !DILocation(line: 107, column: 2, scope: !6233)
!6284 = !DISubprogram(name: "seq_printf", scope: !189, file: !189, line: 119, type: !6285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6285 = !DISubroutineType(types: !6286)
!6286 = !{null, !195, !516, null}
!6287 = distinct !DISubprogram(name: "put_ldops", scope: !3, file: !3, line: 110, type: !5118, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6288)
!6288 = !{!6289, !6290, !6291, !6294, !6295, !6298}
!6289 = !DILocalVariable(name: "ldops", arg: 1, scope: !6287, file: !3, line: 110, type: !4008)
!6290 = !DILocalVariable(name: "flags", scope: !6287, file: !3, line: 112, type: !161)
!6291 = !DILocalVariable(name: "__dummy", scope: !6292, file: !3, line: 114, type: !161)
!6292 = distinct !DILexicalBlock(scope: !6293, file: !3, line: 114, column: 2)
!6293 = distinct !DILexicalBlock(scope: !6287, file: !3, line: 114, column: 2)
!6294 = !DILocalVariable(name: "__dummy2", scope: !6292, file: !3, line: 114, type: !161)
!6295 = !DILocalVariable(name: "__dummy", scope: !6296, file: !3, line: 116, type: !161)
!6296 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 116, column: 2)
!6297 = distinct !DILexicalBlock(scope: !6287, file: !3, line: 116, column: 2)
!6298 = !DILocalVariable(name: "__dummy2", scope: !6296, file: !3, line: 116, type: !161)
!6299 = !DILocation(line: 110, column: 45, scope: !6287)
!6300 = !DILocation(line: 112, column: 2, scope: !6287)
!6301 = !DILocation(line: 112, column: 16, scope: !6287)
!6302 = !DILocation(line: 114, column: 2, scope: !6287)
!6303 = !DILocation(line: 114, column: 2, scope: !6292)
!6304 = !DILocation(line: 114, column: 2, scope: !6293)
!6305 = !DILocation(line: 115, column: 13, scope: !6287)
!6306 = !DILocation(line: 115, column: 20, scope: !6287)
!6307 = !DILocation(line: 115, column: 2, scope: !6287)
!6308 = !DILocation(line: 116, column: 2, scope: !6287)
!6309 = !DILocation(line: 116, column: 2, scope: !6296)
!6310 = !DILocation(line: 116, column: 2, scope: !6297)
!6311 = !DILocation(line: 117, column: 1, scope: !6287)
!6312 = distinct !DISubprogram(name: "ERR_PTR", scope: !5614, file: !5614, line: 39, type: !6313, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6315)
!6313 = !DISubroutineType(types: !6314)
!6314 = !{!157, !158}
!6315 = !{!6316}
!6316 = !DILocalVariable(name: "error", arg: 1, scope: !6312, file: !5614, line: 39, type: !158)
!6317 = !DILocation(line: 39, column: 48, scope: !6312)
!6318 = !DILocation(line: 41, column: 18, scope: !6312)
!6319 = !DILocation(line: 41, column: 9, scope: !6312)
!6320 = !DILocation(line: 41, column: 2, scope: !6312)
!6321 = !DISubprogram(name: "try_module_get", scope: !6, file: !6, line: 696, type: !6322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!513, !918}
!6324 = !DISubprogram(name: "module_put", scope: !6, file: !6, line: 706, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6325 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6326, file: !6326, line: 80, type: !6327, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6332)
!6326 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6327 = !DISubroutineType(types: !6328)
!6328 = !{null, !6329, !201}
!6329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6330, size: 64)
!6330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6331)
!6331 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6332 = !{!6333, !6334}
!6333 = !DILocalVariable(name: "v", arg: 1, scope: !6325, file: !6326, line: 80, type: !6329)
!6334 = !DILocalVariable(name: "size", arg: 2, scope: !6325, file: !6326, line: 80, type: !201)
!6335 = !DILocation(line: 80, column: 74, scope: !6325)
!6336 = !DILocation(line: 80, column: 84, scope: !6325)
!6337 = !DILocation(line: 82, column: 20, scope: !6325)
!6338 = !DILocation(line: 82, column: 23, scope: !6325)
!6339 = !DILocation(line: 82, column: 2, scope: !6325)
!6340 = !DILocation(line: 83, column: 2, scope: !6325)
!6341 = !DILocation(line: 84, column: 1, scope: !6325)
!6342 = distinct !DISubprogram(name: "arch_set_bit", scope: !6343, file: !6343, line: 52, type: !5315, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6344)
!6343 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6344 = !{!6345, !6346}
!6345 = !DILocalVariable(name: "nr", arg: 1, scope: !6342, file: !6343, line: 52, type: !158)
!6346 = !DILocalVariable(name: "addr", arg: 2, scope: !6342, file: !6343, line: 52, type: !5317)
!6347 = !DILocation(line: 52, column: 19, scope: !6342)
!6348 = !DILocation(line: 52, column: 47, scope: !6342)
!6349 = !DILocation(line: 54, column: 27, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6342, file: !6343, line: 54, column: 6)
!6351 = !DILocation(line: 54, column: 6, scope: !6350)
!6352 = !DILocation(line: 54, column: 6, scope: !6342)
!6353 = !DILocation(line: 56, column: 6, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6350, file: !6343, line: 54, column: 32)
!6355 = !DILocation(line: 57, column: 12, scope: !6354)
!6356 = !DILocation(line: 55, column: 3, scope: !6354)
!6357 = !{i64 2148075726, i64 2148075765, i64 2148075786, i64 2148075823, i64 2148075846, i64 2148075716}
!6358 = !DILocation(line: 59, column: 2, scope: !6354)
!6359 = !DILocation(line: 61, column: 8, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6350, file: !6343, line: 59, column: 9)
!6361 = !DILocation(line: 61, column: 32, scope: !6360)
!6362 = !DILocation(line: 60, column: 3, scope: !6360)
!6363 = !{i64 2148076011, i64 2148076050, i64 2148076071, i64 2148076108, i64 2148076131, i64 2148076001}
!6364 = !DILocation(line: 63, column: 1, scope: !6342)
!6365 = distinct !DISubprogram(name: "kasan_check_write", scope: !6366, file: !6366, line: 44, type: !6367, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6369)
!6366 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6367 = !DISubroutineType(types: !6368)
!6368 = !{!513, !6329, !7}
!6369 = !{!6370, !6371}
!6370 = !DILocalVariable(name: "p", arg: 1, scope: !6365, file: !6366, line: 44, type: !6329)
!6371 = !DILocalVariable(name: "size", arg: 2, scope: !6365, file: !6366, line: 44, type: !7)
!6372 = !DILocation(line: 44, column: 59, scope: !6365)
!6373 = !DILocation(line: 44, column: 75, scope: !6365)
!6374 = !DILocation(line: 46, column: 2, scope: !6365)
!6375 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6376, file: !6376, line: 229, type: !6377, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6379)
!6376 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6377 = !DISubroutineType(types: !6378)
!6378 = !{null, !6329, !201, !109}
!6379 = !{!6380, !6381, !6382}
!6380 = !DILocalVariable(name: "ptr", arg: 1, scope: !6375, file: !6376, line: 229, type: !6329)
!6381 = !DILocalVariable(name: "size", arg: 2, scope: !6375, file: !6376, line: 229, type: !201)
!6382 = !DILocalVariable(name: "type", arg: 3, scope: !6375, file: !6376, line: 230, type: !109)
!6383 = !DILocation(line: 229, column: 60, scope: !6375)
!6384 = !DILocation(line: 229, column: 72, scope: !6375)
!6385 = !DILocation(line: 230, column: 15, scope: !6375)
!6386 = !DILocation(line: 230, column: 23, scope: !6375)
!6387 = !DISubprogram(name: "ldsem_down_write", scope: !4005, file: !4005, line: 41, type: !5238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6388 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6343, file: !6343, line: 72, type: !5315, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6389 = !{!6390, !6391}
!6390 = !DILocalVariable(name: "nr", arg: 1, scope: !6388, file: !6343, line: 72, type: !158)
!6391 = !DILocalVariable(name: "addr", arg: 2, scope: !6388, file: !6343, line: 72, type: !5317)
!6392 = !DILocation(line: 72, column: 21, scope: !6388)
!6393 = !DILocation(line: 72, column: 49, scope: !6388)
!6394 = !DILocation(line: 74, column: 27, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6388, file: !6343, line: 74, column: 6)
!6396 = !DILocation(line: 74, column: 6, scope: !6395)
!6397 = !DILocation(line: 74, column: 6, scope: !6388)
!6398 = !DILocation(line: 76, column: 6, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6395, file: !6343, line: 74, column: 32)
!6400 = !DILocation(line: 77, column: 13, scope: !6399)
!6401 = !DILocation(line: 77, column: 12, scope: !6399)
!6402 = !DILocation(line: 75, column: 3, scope: !6399)
!6403 = !{i64 2148077014, i64 2148077053, i64 2148077074, i64 2148077111, i64 2148077134, i64 2148077004}
!6404 = !DILocation(line: 78, column: 2, scope: !6399)
!6405 = !DILocation(line: 80, column: 8, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6395, file: !6343, line: 78, column: 9)
!6407 = !DILocation(line: 80, column: 32, scope: !6406)
!6408 = !DILocation(line: 79, column: 3, scope: !6406)
!6409 = !{i64 2148077299, i64 2148077338, i64 2148077359, i64 2148077396, i64 2148077419, i64 2148077289}
!6410 = !DILocation(line: 82, column: 1, scope: !6388)
!6411 = !DISubprogram(name: "ldsem_up_write", scope: !4005, file: !4005, line: 44, type: !5242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6412 = !DISubprogram(name: "capable", scope: !416, file: !416, line: 148, type: !6413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6413 = !DISubroutineType(types: !6414)
!6414 = !{!513, !109}
!6415 = !DISubprogram(name: "__request_module", scope: !6416, file: !6416, line: 24, type: !6417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6416 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6022a92e643474d91bec12d05ea4184")
!6417 = !DISubroutineType(types: !6418)
!6418 = !{!109, !513, !516, null}
!6419 = distinct !DISubprogram(name: "ERR_CAST", scope: !5614, file: !5614, line: 82, type: !6420, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6422)
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!157, !1310}
!6422 = !{!6423}
!6423 = !DILocalVariable(name: "ptr", arg: 1, scope: !6419, file: !5614, line: 82, type: !1310)
!6424 = !DILocation(line: 82, column: 64, scope: !6419)
!6425 = !DILocation(line: 85, column: 18, scope: !6419)
!6426 = !DILocation(line: 85, column: 2, scope: !6419)
!6427 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !6428, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6430)
!6428 = !DISubroutineType(types: !6429)
!6429 = !{!157, !201, !176}
!6430 = !{!6431, !6432, !6433}
!6431 = !DILocalVariable(name: "size", arg: 1, scope: !6427, file: !147, line: 591, type: !201)
!6432 = !DILocalVariable(name: "flags", arg: 2, scope: !6427, file: !147, line: 591, type: !176)
!6433 = !DILocalVariable(name: "index", scope: !6434, file: !147, line: 594, type: !7)
!6434 = distinct !DILexicalBlock(scope: !6435, file: !147, line: 593, column: 42)
!6435 = distinct !DILexicalBlock(scope: !6427, file: !147, line: 593, column: 6)
!6436 = !DILocation(line: 591, column: 61, scope: !6427)
!6437 = !DILocation(line: 591, column: 73, scope: !6427)
!6438 = !DILocation(line: 593, column: 27, scope: !6435)
!6439 = !DILocation(line: 593, column: 6, scope: !6435)
!6440 = !DILocation(line: 593, column: 33, scope: !6435)
!6441 = !DILocation(line: 593, column: 36, scope: !6435)
!6442 = !DILocation(line: 593, column: 6, scope: !6427)
!6443 = !DILocation(line: 594, column: 3, scope: !6434)
!6444 = !DILocation(line: 594, column: 16, scope: !6434)
!6445 = !DILocation(line: 596, column: 7, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6434, file: !147, line: 596, column: 7)
!6447 = !DILocation(line: 596, column: 12, scope: !6446)
!6448 = !DILocation(line: 596, column: 7, scope: !6434)
!6449 = !DILocation(line: 597, column: 25, scope: !6446)
!6450 = !DILocation(line: 597, column: 31, scope: !6446)
!6451 = !DILocation(line: 597, column: 11, scope: !6446)
!6452 = !DILocation(line: 597, column: 4, scope: !6446)
!6453 = !DILocation(line: 599, column: 11, scope: !6434)
!6454 = !DILocation(line: 599, column: 9, scope: !6434)
!6455 = !DILocation(line: 601, column: 33, scope: !6434)
!6456 = !DILocation(line: 601, column: 40, scope: !6434)
!6457 = !DILocation(line: 601, column: 20, scope: !6434)
!6458 = !DILocation(line: 601, column: 5, scope: !6434)
!6459 = !DILocation(line: 601, column: 51, scope: !6434)
!6460 = !DILocation(line: 602, column: 5, scope: !6434)
!6461 = !DILocation(line: 602, column: 12, scope: !6434)
!6462 = !DILocation(line: 600, column: 10, scope: !6434)
!6463 = !DILocation(line: 600, column: 3, scope: !6434)
!6464 = !DILocation(line: 603, column: 2, scope: !6435)
!6465 = !DILocation(line: 604, column: 19, scope: !6427)
!6466 = !DILocation(line: 604, column: 25, scope: !6427)
!6467 = !DILocation(line: 604, column: 9, scope: !6427)
!6468 = !DILocation(line: 604, column: 2, scope: !6427)
!6469 = !DILocation(line: 605, column: 1, scope: !6427)
!6470 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !6428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6471 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !6472, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6474)
!6472 = !DISubroutineType(types: !6473)
!6473 = !{!7, !201, !513}
!6474 = !{!6475, !6476}
!6475 = !DILocalVariable(name: "size", arg: 1, scope: !6471, file: !147, line: 444, type: !201)
!6476 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6471, file: !147, line: 445, type: !513)
!6477 = !DILocation(line: 444, column: 60, scope: !6471)
!6478 = !DILocation(line: 445, column: 16, scope: !6471)
!6479 = !DILocation(line: 447, column: 7, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 447, column: 6)
!6481 = !DILocation(line: 447, column: 6, scope: !6471)
!6482 = !DILocation(line: 448, column: 3, scope: !6480)
!6483 = !DILocation(line: 450, column: 6, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 450, column: 6)
!6485 = !DILocation(line: 450, column: 11, scope: !6484)
!6486 = !DILocation(line: 450, column: 6, scope: !6471)
!6487 = !DILocation(line: 451, column: 3, scope: !6484)
!6488 = !DILocation(line: 453, column: 32, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 453, column: 6)
!6490 = !DILocation(line: 453, column: 37, scope: !6489)
!6491 = !DILocation(line: 453, column: 42, scope: !6489)
!6492 = !DILocation(line: 453, column: 45, scope: !6489)
!6493 = !DILocation(line: 453, column: 50, scope: !6489)
!6494 = !DILocation(line: 453, column: 6, scope: !6471)
!6495 = !DILocation(line: 454, column: 3, scope: !6489)
!6496 = !DILocation(line: 455, column: 32, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 455, column: 6)
!6498 = !DILocation(line: 455, column: 37, scope: !6497)
!6499 = !DILocation(line: 455, column: 43, scope: !6497)
!6500 = !DILocation(line: 455, column: 46, scope: !6497)
!6501 = !DILocation(line: 455, column: 51, scope: !6497)
!6502 = !DILocation(line: 455, column: 6, scope: !6471)
!6503 = !DILocation(line: 456, column: 3, scope: !6497)
!6504 = !DILocation(line: 457, column: 6, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 457, column: 6)
!6506 = !DILocation(line: 457, column: 11, scope: !6505)
!6507 = !DILocation(line: 457, column: 6, scope: !6471)
!6508 = !DILocation(line: 457, column: 26, scope: !6505)
!6509 = !DILocation(line: 458, column: 6, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 458, column: 6)
!6511 = !DILocation(line: 458, column: 11, scope: !6510)
!6512 = !DILocation(line: 458, column: 6, scope: !6471)
!6513 = !DILocation(line: 458, column: 26, scope: !6510)
!6514 = !DILocation(line: 459, column: 6, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 459, column: 6)
!6516 = !DILocation(line: 459, column: 11, scope: !6515)
!6517 = !DILocation(line: 459, column: 6, scope: !6471)
!6518 = !DILocation(line: 459, column: 26, scope: !6515)
!6519 = !DILocation(line: 460, column: 6, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 460, column: 6)
!6521 = !DILocation(line: 460, column: 11, scope: !6520)
!6522 = !DILocation(line: 460, column: 6, scope: !6471)
!6523 = !DILocation(line: 460, column: 26, scope: !6520)
!6524 = !DILocation(line: 461, column: 6, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 461, column: 6)
!6526 = !DILocation(line: 461, column: 11, scope: !6525)
!6527 = !DILocation(line: 461, column: 6, scope: !6471)
!6528 = !DILocation(line: 461, column: 26, scope: !6525)
!6529 = !DILocation(line: 462, column: 6, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 462, column: 6)
!6531 = !DILocation(line: 462, column: 11, scope: !6530)
!6532 = !DILocation(line: 462, column: 6, scope: !6471)
!6533 = !DILocation(line: 462, column: 26, scope: !6530)
!6534 = !DILocation(line: 463, column: 6, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 463, column: 6)
!6536 = !DILocation(line: 463, column: 11, scope: !6535)
!6537 = !DILocation(line: 463, column: 6, scope: !6471)
!6538 = !DILocation(line: 463, column: 26, scope: !6535)
!6539 = !DILocation(line: 464, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 464, column: 6)
!6541 = !DILocation(line: 464, column: 11, scope: !6540)
!6542 = !DILocation(line: 464, column: 6, scope: !6471)
!6543 = !DILocation(line: 464, column: 26, scope: !6540)
!6544 = !DILocation(line: 465, column: 6, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 465, column: 6)
!6546 = !DILocation(line: 465, column: 11, scope: !6545)
!6547 = !DILocation(line: 465, column: 6, scope: !6471)
!6548 = !DILocation(line: 465, column: 26, scope: !6545)
!6549 = !DILocation(line: 466, column: 6, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 466, column: 6)
!6551 = !DILocation(line: 466, column: 11, scope: !6550)
!6552 = !DILocation(line: 466, column: 6, scope: !6471)
!6553 = !DILocation(line: 466, column: 26, scope: !6550)
!6554 = !DILocation(line: 467, column: 6, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 467, column: 6)
!6556 = !DILocation(line: 467, column: 11, scope: !6555)
!6557 = !DILocation(line: 467, column: 6, scope: !6471)
!6558 = !DILocation(line: 467, column: 26, scope: !6555)
!6559 = !DILocation(line: 468, column: 6, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 468, column: 6)
!6561 = !DILocation(line: 468, column: 11, scope: !6560)
!6562 = !DILocation(line: 468, column: 6, scope: !6471)
!6563 = !DILocation(line: 468, column: 26, scope: !6560)
!6564 = !DILocation(line: 469, column: 6, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 469, column: 6)
!6566 = !DILocation(line: 469, column: 11, scope: !6565)
!6567 = !DILocation(line: 469, column: 6, scope: !6471)
!6568 = !DILocation(line: 469, column: 26, scope: !6565)
!6569 = !DILocation(line: 470, column: 6, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 470, column: 6)
!6571 = !DILocation(line: 470, column: 11, scope: !6570)
!6572 = !DILocation(line: 470, column: 6, scope: !6471)
!6573 = !DILocation(line: 470, column: 26, scope: !6570)
!6574 = !DILocation(line: 471, column: 6, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 471, column: 6)
!6576 = !DILocation(line: 471, column: 11, scope: !6575)
!6577 = !DILocation(line: 471, column: 6, scope: !6471)
!6578 = !DILocation(line: 471, column: 26, scope: !6575)
!6579 = !DILocation(line: 472, column: 6, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 472, column: 6)
!6581 = !DILocation(line: 472, column: 11, scope: !6580)
!6582 = !DILocation(line: 472, column: 6, scope: !6471)
!6583 = !DILocation(line: 472, column: 26, scope: !6580)
!6584 = !DILocation(line: 473, column: 6, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 473, column: 6)
!6586 = !DILocation(line: 473, column: 11, scope: !6585)
!6587 = !DILocation(line: 473, column: 6, scope: !6471)
!6588 = !DILocation(line: 473, column: 26, scope: !6585)
!6589 = !DILocation(line: 474, column: 6, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 474, column: 6)
!6591 = !DILocation(line: 474, column: 11, scope: !6590)
!6592 = !DILocation(line: 474, column: 6, scope: !6471)
!6593 = !DILocation(line: 474, column: 27, scope: !6590)
!6594 = !DILocation(line: 475, column: 6, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 475, column: 6)
!6596 = !DILocation(line: 475, column: 11, scope: !6595)
!6597 = !DILocation(line: 475, column: 6, scope: !6471)
!6598 = !DILocation(line: 475, column: 32, scope: !6595)
!6599 = !DILocation(line: 477, column: 50, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6471, file: !147, line: 477, column: 6)
!6601 = !DILocation(line: 477, column: 6, scope: !6471)
!6602 = !DILocation(line: 478, column: 3, scope: !6600)
!6603 = !DILocation(line: 478, column: 3, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6605, file: !147, line: 478, column: 3)
!6605 = distinct !DILexicalBlock(scope: !6600, file: !147, line: 478, column: 3)
!6606 = !{i32 -2141591148}
!6607 = !DILocation(line: 478, column: 3, scope: !6605)
!6608 = !DILocation(line: 480, column: 3, scope: !6600)
!6609 = !DILocation(line: 480, column: 3, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6600, file: !147, line: 480, column: 3)
!6611 = !DILocation(line: 480, column: 3, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6610, file: !147, line: 480, column: 3)
!6613 = !DILocation(line: 480, column: 3, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6610, file: !147, line: 480, column: 3)
!6615 = !{i64 2153376351, i64 2153376380, i64 2153376426, i64 2153376484, i64 2153376538, i64 2153376592, i64 2153376647, i64 2153376678}
!6616 = !DILocation(line: 483, column: 2, scope: !6471)
!6617 = !DILocation(line: 484, column: 1, scope: !6471)
!6618 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !6619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6619 = !DISubroutineType(types: !6620)
!6620 = !{!157, !6621, !176, !201}
!6621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6622, size: 64)
!6622 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6623, line: 325, flags: DIFlagFwdDecl)
!6623 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6624 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !6625, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6627)
!6625 = !DISubroutineType(types: !6626)
!6626 = !{!146, !176, !161}
!6627 = !{!6628, !6629}
!6628 = !DILocalVariable(name: "flags", arg: 1, scope: !6624, file: !147, line: 401, type: !176)
!6629 = !DILocalVariable(name: "caller", arg: 2, scope: !6624, file: !147, line: 401, type: !161)
!6630 = !DILocation(line: 401, column: 67, scope: !6624)
!6631 = !DILocation(line: 401, column: 88, scope: !6624)
!6632 = !DILocation(line: 407, column: 6, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6624, file: !147, line: 407, column: 6)
!6634 = !DILocation(line: 407, column: 6, scope: !6624)
!6635 = !DILocation(line: 413, column: 3, scope: !6633)
!6636 = !DILocation(line: 423, column: 38, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6624, file: !147, line: 423, column: 6)
!6638 = !DILocation(line: 423, column: 44, scope: !6637)
!6639 = !DILocation(line: 423, column: 6, scope: !6624)
!6640 = !DILocation(line: 424, column: 3, scope: !6637)
!6641 = !DILocation(line: 426, column: 3, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6624, file: !147, line: 425, column: 6)
!6643 = !DILocation(line: 429, column: 1, scope: !6624)
!6644 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !6428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6645 = !DISubprogram(name: "__compiletime_assert_245", scope: !147, file: !147, line: 478, type: !2229, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6646 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6326, file: !6326, line: 66, type: !6327, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6647)
!6647 = !{!6648, !6649}
!6648 = !DILocalVariable(name: "v", arg: 1, scope: !6646, file: !6326, line: 66, type: !6329)
!6649 = !DILocalVariable(name: "size", arg: 2, scope: !6646, file: !6326, line: 66, type: !201)
!6650 = !DILocation(line: 66, column: 73, scope: !6646)
!6651 = !DILocation(line: 66, column: 83, scope: !6646)
!6652 = !DILocation(line: 68, column: 19, scope: !6646)
!6653 = !DILocation(line: 68, column: 22, scope: !6646)
!6654 = !DILocation(line: 68, column: 2, scope: !6646)
!6655 = !DILocation(line: 69, column: 2, scope: !6646)
!6656 = !DILocation(line: 70, column: 1, scope: !6646)
!6657 = distinct !DISubprogram(name: "arch_test_bit", scope: !6343, file: !6343, line: 237, type: !5634, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6658)
!6658 = !{!6659, !6660}
!6659 = !DILocalVariable(name: "nr", arg: 1, scope: !6657, file: !6343, line: 237, type: !161)
!6660 = !DILocalVariable(name: "addr", arg: 2, scope: !6657, file: !6343, line: 237, type: !5636)
!6661 = !DILocation(line: 237, column: 29, scope: !6657)
!6662 = !DILocation(line: 237, column: 63, scope: !6657)
!6663 = !DILocation(line: 239, column: 30, scope: !6657)
!6664 = !DILocation(line: 239, column: 9, scope: !6657)
!6665 = !DILocation(line: 239, column: 54, scope: !6657)
!6666 = !DILocation(line: 239, column: 58, scope: !6657)
!6667 = !DILocation(line: 239, column: 36, scope: !6657)
!6668 = !DILocation(line: 240, column: 26, scope: !6657)
!6669 = !DILocation(line: 240, column: 30, scope: !6657)
!6670 = !DILocation(line: 240, column: 8, scope: !6657)
!6671 = !DILocation(line: 239, column: 2, scope: !6657)
!6672 = distinct !DISubprogram(name: "kasan_check_read", scope: !6366, file: !6366, line: 40, type: !6367, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6673)
!6673 = !{!6674, !6675}
!6674 = !DILocalVariable(name: "p", arg: 1, scope: !6672, file: !6366, line: 40, type: !6329)
!6675 = !DILocalVariable(name: "size", arg: 2, scope: !6672, file: !6366, line: 40, type: !7)
!6676 = !DILocation(line: 40, column: 58, scope: !6672)
!6677 = !DILocation(line: 40, column: 74, scope: !6672)
!6678 = !DILocation(line: 42, column: 2, scope: !6672)
!6679 = distinct !DISubprogram(name: "constant_test_bit", scope: !6343, file: !6343, line: 204, type: !6680, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6682)
!6680 = !DISubroutineType(types: !6681)
!6681 = !{!513, !158, !5636}
!6682 = !{!6683, !6684}
!6683 = !DILocalVariable(name: "nr", arg: 1, scope: !6679, file: !6343, line: 204, type: !158)
!6684 = !DILocalVariable(name: "addr", arg: 2, scope: !6679, file: !6343, line: 204, type: !5636)
!6685 = !DILocation(line: 204, column: 52, scope: !6679)
!6686 = !DILocation(line: 204, column: 86, scope: !6679)
!6687 = !DILocation(line: 206, column: 19, scope: !6679)
!6688 = !DILocation(line: 206, column: 22, scope: !6679)
!6689 = !DILocation(line: 206, column: 15, scope: !6679)
!6690 = !DILocation(line: 207, column: 4, scope: !6679)
!6691 = !DILocation(line: 207, column: 9, scope: !6679)
!6692 = !DILocation(line: 207, column: 12, scope: !6679)
!6693 = !DILocation(line: 206, column: 44, scope: !6679)
!6694 = !DILocation(line: 207, column: 37, scope: !6679)
!6695 = !DILocation(line: 206, column: 2, scope: !6679)
!6696 = distinct !DISubprogram(name: "variable_test_bit", scope: !6343, file: !6343, line: 224, type: !6680, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6697)
!6697 = !{!6698, !6699, !6700}
!6698 = !DILocalVariable(name: "nr", arg: 1, scope: !6696, file: !6343, line: 224, type: !158)
!6699 = !DILocalVariable(name: "addr", arg: 2, scope: !6696, file: !6343, line: 224, type: !5636)
!6700 = !DILocalVariable(name: "oldbit", scope: !6696, file: !6343, line: 226, type: !513)
!6701 = !DILocation(line: 224, column: 52, scope: !6696)
!6702 = !DILocation(line: 224, column: 86, scope: !6696)
!6703 = !DILocation(line: 226, column: 2, scope: !6696)
!6704 = !DILocation(line: 226, column: 7, scope: !6696)
!6705 = !DILocation(line: 231, column: 33, scope: !6696)
!6706 = !DILocation(line: 231, column: 46, scope: !6696)
!6707 = !DILocation(line: 228, column: 2, scope: !6696)
!6708 = !{i64 2148089338, i64 2148089412}
!6709 = !DILocation(line: 233, column: 9, scope: !6696)
!6710 = !DILocation(line: 234, column: 1, scope: !6696)
!6711 = !DILocation(line: 233, column: 2, scope: !6696)
!6712 = !DISubprogram(name: "down_write", scope: !453, file: !453, line: 187, type: !5859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6713 = !DISubprogram(name: "up_write", scope: !453, file: !453, line: 203, type: !5859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6714 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5314, file: !5314, line: 68, type: !6715, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6717)
!6715 = !DISubroutineType(types: !6716)
!6716 = !{!513, !158, !5317}
!6717 = !{!6718, !6719}
!6718 = !DILocalVariable(name: "nr", arg: 1, scope: !6714, file: !5314, line: 68, type: !158)
!6719 = !DILocalVariable(name: "addr", arg: 2, scope: !6714, file: !5314, line: 68, type: !5317)
!6720 = !DILocation(line: 68, column: 51, scope: !6714)
!6721 = !DILocation(line: 68, column: 79, scope: !6714)
!6722 = !DILocation(line: 70, column: 2, scope: !6714)
!6723 = !DILocation(line: 70, column: 2, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6714, file: !5314, line: 70, column: 2)
!6725 = !DILocation(line: 71, column: 31, scope: !6714)
!6726 = !DILocation(line: 71, column: 38, scope: !6714)
!6727 = !DILocation(line: 71, column: 36, scope: !6714)
!6728 = !DILocation(line: 71, column: 2, scope: !6714)
!6729 = !DILocation(line: 72, column: 31, scope: !6714)
!6730 = !DILocation(line: 72, column: 35, scope: !6714)
!6731 = !DILocation(line: 72, column: 9, scope: !6714)
!6732 = !DILocation(line: 72, column: 2, scope: !6714)
!6733 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6326, file: !6326, line: 94, type: !6327, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6734)
!6734 = !{!6735, !6736}
!6735 = !DILocalVariable(name: "v", arg: 1, scope: !6733, file: !6326, line: 94, type: !6329)
!6736 = !DILocalVariable(name: "size", arg: 2, scope: !6733, file: !6326, line: 94, type: !201)
!6737 = !DILocation(line: 94, column: 79, scope: !6733)
!6738 = !DILocation(line: 94, column: 89, scope: !6733)
!6739 = !DILocation(line: 96, column: 20, scope: !6733)
!6740 = !DILocation(line: 96, column: 23, scope: !6733)
!6741 = !DILocation(line: 96, column: 2, scope: !6733)
!6742 = !DILocation(line: 97, column: 2, scope: !6733)
!6743 = !DILocation(line: 98, column: 1, scope: !6733)
!6744 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !6343, file: !6343, line: 136, type: !6715, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6745)
!6745 = !{!6746, !6747, !6748}
!6746 = !DILocalVariable(name: "nr", arg: 1, scope: !6744, file: !6343, line: 136, type: !158)
!6747 = !DILocalVariable(name: "addr", arg: 2, scope: !6744, file: !6343, line: 136, type: !5317)
!6748 = !DILocalVariable(name: "c", scope: !6749, file: !6343, line: 138, type: !513)
!6749 = distinct !DILexicalBlock(scope: !6744, file: !6343, line: 138, column: 9)
!6750 = !DILocation(line: 136, column: 28, scope: !6744)
!6751 = !DILocation(line: 136, column: 56, scope: !6744)
!6752 = !DILocation(line: 138, column: 9, scope: !6749)
!6753 = !{i64 2148082177, i64 2148082216, i64 2148082237, i64 2148082274, i64 2148082297, i64 2148082306, i64 2148082409}
!6754 = !DILocation(line: 138, column: 9, scope: !6744)
!6755 = !DILocation(line: 138, column: 2, scope: !6744)
!6756 = !DISubprogram(name: "kfree", scope: !147, file: !147, line: 227, type: !6757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6757 = !DISubroutineType(types: !6758)
!6758 = !{null, !1310}
!6759 = distinct !DISubprogram(name: "tty_ldisc_failto", scope: !3, file: !3, line: 467, type: !3948, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6760)
!6760 = !{!6761, !6762, !6763, !6764}
!6761 = !DILocalVariable(name: "tty", arg: 1, scope: !6759, file: !3, line: 467, type: !3122)
!6762 = !DILocalVariable(name: "ld", arg: 2, scope: !6759, file: !3, line: 467, type: !109)
!6763 = !DILocalVariable(name: "disc", scope: !6759, file: !3, line: 469, type: !4003)
!6764 = !DILocalVariable(name: "r", scope: !6759, file: !3, line: 470, type: !109)
!6765 = !DILocation(line: 467, column: 48, scope: !6759)
!6766 = !DILocation(line: 467, column: 57, scope: !6759)
!6767 = !DILocation(line: 469, column: 2, scope: !6759)
!6768 = !DILocation(line: 469, column: 20, scope: !6759)
!6769 = !DILocation(line: 469, column: 41, scope: !6759)
!6770 = !DILocation(line: 469, column: 46, scope: !6759)
!6771 = !DILocation(line: 469, column: 27, scope: !6759)
!6772 = !DILocation(line: 470, column: 2, scope: !6759)
!6773 = !DILocation(line: 470, column: 6, scope: !6759)
!6774 = !DILocation(line: 472, column: 2, scope: !6759)
!6775 = !DILocation(line: 472, column: 2, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6759, file: !3, line: 472, column: 2)
!6777 = !DILocation(line: 473, column: 13, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6759, file: !3, line: 473, column: 6)
!6779 = !DILocation(line: 473, column: 6, scope: !6778)
!6780 = !DILocation(line: 473, column: 6, scope: !6759)
!6781 = !DILocation(line: 474, column: 18, scope: !6778)
!6782 = !DILocation(line: 474, column: 10, scope: !6778)
!6783 = !DILocation(line: 474, column: 3, scope: !6778)
!6784 = !DILocation(line: 475, column: 15, scope: !6759)
!6785 = !DILocation(line: 475, column: 2, scope: !6759)
!6786 = !DILocation(line: 475, column: 7, scope: !6759)
!6787 = !DILocation(line: 475, column: 13, scope: !6759)
!6788 = !DILocation(line: 476, column: 24, scope: !6759)
!6789 = !DILocation(line: 476, column: 29, scope: !6759)
!6790 = !DILocation(line: 476, column: 2, scope: !6759)
!6791 = !DILocation(line: 477, column: 21, scope: !6759)
!6792 = !DILocation(line: 477, column: 26, scope: !6759)
!6793 = !DILocation(line: 477, column: 6, scope: !6759)
!6794 = !DILocation(line: 477, column: 4, scope: !6759)
!6795 = !DILocation(line: 478, column: 6, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6759, file: !3, line: 478, column: 6)
!6797 = !DILocation(line: 478, column: 8, scope: !6796)
!6798 = !DILocation(line: 478, column: 6, scope: !6759)
!6799 = !DILocation(line: 479, column: 17, scope: !6796)
!6800 = !DILocation(line: 479, column: 3, scope: !6796)
!6801 = !DILocation(line: 480, column: 9, scope: !6759)
!6802 = !DILocation(line: 480, column: 2, scope: !6759)
!6803 = !DILocation(line: 481, column: 1, scope: !6759)
!6804 = !DISubprogram(name: "tty_name", scope: !3124, file: !3124, line: 353, type: !6805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6805 = !DISubroutineType(types: !6806)
!6806 = !{!516, !6807}
!6807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6808, size: 64)
!6808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3123)
!6809 = !DISubprogram(name: "_printk", scope: !6810, file: !6810, line: 153, type: !6811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6810 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6811 = !DISubroutineType(types: !6812)
!6812 = !{!109, !516, null}
!6813 = !DISubprogram(name: "panic", scope: !6814, file: !6814, line: 12, type: !6815, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6814 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!6815 = !DISubroutineType(types: !6816)
!6816 = !{null, !516, null}
!6817 = !DISubprogram(name: "tty_termios_input_baud_rate", scope: !5401, file: !5401, line: 78, type: !6818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6818 = !DISubroutineType(types: !6819)
!6819 = !{!3748, !3939}
!6820 = !DISubprogram(name: "tty_termios_baud_rate", scope: !3124, file: !3124, line: 431, type: !6818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6821 = distinct !DISubprogram(name: "tty_ldisc_lock_pair_timeout", scope: !3, file: !3, line: 329, type: !6822, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6824)
!6822 = !DISubroutineType(types: !6823)
!6823 = !{!109, !3122, !3122, !161}
!6824 = !{!6825, !6826, !6827, !6828, !6829, !6833}
!6825 = !DILocalVariable(name: "tty", arg: 1, scope: !6821, file: !3, line: 329, type: !3122)
!6826 = !DILocalVariable(name: "tty2", arg: 2, scope: !6821, file: !3, line: 329, type: !3122)
!6827 = !DILocalVariable(name: "timeout", arg: 3, scope: !6821, file: !3, line: 330, type: !161)
!6828 = !DILocalVariable(name: "ret", scope: !6821, file: !3, line: 332, type: !109)
!6829 = !DILocalVariable(name: "__ret_warn_on", scope: !6830, file: !3, line: 343, type: !109)
!6830 = distinct !DILexicalBlock(scope: !6831, file: !3, line: 343, column: 3)
!6831 = distinct !DILexicalBlock(scope: !6832, file: !3, line: 341, column: 9)
!6832 = distinct !DILexicalBlock(scope: !6821, file: !3, line: 334, column: 6)
!6833 = !DILocalVariable(name: "__flags", scope: !6834, file: !3, line: 343, type: !109)
!6834 = distinct !DILexicalBlock(scope: !6835, file: !3, line: 343, column: 3)
!6835 = distinct !DILexicalBlock(scope: !6830, file: !3, line: 343, column: 3)
!6836 = !DILocation(line: 329, column: 48, scope: !6821)
!6837 = !DILocation(line: 329, column: 72, scope: !6821)
!6838 = !DILocation(line: 330, column: 22, scope: !6821)
!6839 = !DILocation(line: 332, column: 2, scope: !6821)
!6840 = !DILocation(line: 332, column: 6, scope: !6821)
!6841 = !DILocation(line: 334, column: 6, scope: !6832)
!6842 = !DILocation(line: 334, column: 12, scope: !6832)
!6843 = !DILocation(line: 334, column: 10, scope: !6832)
!6844 = !DILocation(line: 334, column: 6, scope: !6821)
!6845 = !DILocation(line: 335, column: 26, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6832, file: !3, line: 334, column: 18)
!6847 = !DILocation(line: 335, column: 31, scope: !6846)
!6848 = !DILocation(line: 335, column: 9, scope: !6846)
!6849 = !DILocation(line: 335, column: 7, scope: !6846)
!6850 = !DILocation(line: 336, column: 7, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6846, file: !3, line: 336, column: 7)
!6852 = !DILocation(line: 336, column: 7, scope: !6846)
!6853 = !DILocation(line: 337, column: 34, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6851, file: !3, line: 336, column: 12)
!6855 = !DILocation(line: 337, column: 40, scope: !6854)
!6856 = !DILocation(line: 337, column: 10, scope: !6854)
!6857 = !DILocation(line: 337, column: 8, scope: !6854)
!6858 = !DILocation(line: 338, column: 9, scope: !6859)
!6859 = distinct !DILexicalBlock(scope: !6854, file: !3, line: 338, column: 8)
!6860 = !DILocation(line: 338, column: 8, scope: !6854)
!6861 = !DILocation(line: 339, column: 24, scope: !6859)
!6862 = !DILocation(line: 339, column: 5, scope: !6859)
!6863 = !DILocation(line: 340, column: 3, scope: !6854)
!6864 = !DILocation(line: 341, column: 2, scope: !6846)
!6865 = !DILocation(line: 343, column: 3, scope: !6830)
!6866 = !DILocation(line: 343, column: 3, scope: !6835)
!6867 = !DILocation(line: 343, column: 3, scope: !6834)
!6868 = !DILocation(line: 343, column: 3, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 343, column: 3)
!6870 = !DILocation(line: 343, column: 3, scope: !6871)
!6871 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 343, column: 3)
!6872 = !{i64 2154795852, i64 2154795881, i64 2154795927, i64 2154795985, i64 2154796039, i64 2154796093, i64 2154796148, i64 2154796179, i64 2154796487, i64 2154796493, i64 2154796540, i64 2154796563, i64 2154796589}
!6873 = !DILocation(line: 343, column: 3, scope: !6874)
!6874 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 343, column: 3)
!6875 = !DILocation(line: 343, column: 3, scope: !6831)
!6876 = !DILocation(line: 344, column: 7, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6831, file: !3, line: 344, column: 7)
!6878 = !DILocation(line: 344, column: 12, scope: !6877)
!6879 = !DILocation(line: 344, column: 15, scope: !6877)
!6880 = !DILocation(line: 344, column: 22, scope: !6877)
!6881 = !DILocation(line: 344, column: 19, scope: !6877)
!6882 = !DILocation(line: 344, column: 7, scope: !6831)
!6883 = !DILocation(line: 345, column: 27, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6877, file: !3, line: 344, column: 28)
!6885 = !DILocation(line: 345, column: 33, scope: !6884)
!6886 = !DILocation(line: 345, column: 10, scope: !6884)
!6887 = !DILocation(line: 345, column: 8, scope: !6884)
!6888 = !DILocation(line: 346, column: 8, scope: !6889)
!6889 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 346, column: 8)
!6890 = !DILocation(line: 346, column: 8, scope: !6884)
!6891 = !DILocation(line: 347, column: 35, scope: !6892)
!6892 = distinct !DILexicalBlock(scope: !6889, file: !3, line: 346, column: 13)
!6893 = !DILocation(line: 347, column: 40, scope: !6892)
!6894 = !DILocation(line: 347, column: 11, scope: !6892)
!6895 = !DILocation(line: 347, column: 9, scope: !6892)
!6896 = !DILocation(line: 348, column: 10, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6892, file: !3, line: 348, column: 9)
!6898 = !DILocation(line: 348, column: 9, scope: !6892)
!6899 = !DILocation(line: 349, column: 25, scope: !6897)
!6900 = !DILocation(line: 349, column: 6, scope: !6897)
!6901 = !DILocation(line: 350, column: 4, scope: !6892)
!6902 = !DILocation(line: 351, column: 3, scope: !6884)
!6903 = !DILocation(line: 352, column: 27, scope: !6877)
!6904 = !DILocation(line: 352, column: 32, scope: !6877)
!6905 = !DILocation(line: 352, column: 10, scope: !6877)
!6906 = !DILocation(line: 352, column: 8, scope: !6877)
!6907 = !DILocation(line: 355, column: 7, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6821, file: !3, line: 355, column: 6)
!6909 = !DILocation(line: 355, column: 6, scope: !6821)
!6910 = !DILocation(line: 356, column: 3, scope: !6908)
!6911 = !DILocation(line: 358, column: 29, scope: !6821)
!6912 = !DILocation(line: 358, column: 34, scope: !6821)
!6913 = !DILocation(line: 358, column: 2, scope: !6821)
!6914 = !DILocation(line: 359, column: 6, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6821, file: !3, line: 359, column: 6)
!6916 = !DILocation(line: 359, column: 6, scope: !6821)
!6917 = !DILocation(line: 360, column: 30, scope: !6915)
!6918 = !DILocation(line: 360, column: 36, scope: !6915)
!6919 = !DILocation(line: 360, column: 3, scope: !6915)
!6920 = !DILocation(line: 361, column: 2, scope: !6821)
!6921 = !DILocation(line: 362, column: 1, scope: !6821)
!6922 = distinct !DISubprogram(name: "__tty_ldisc_lock_nested", scope: !3, file: !3, line: 293, type: !5285, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6923)
!6923 = !{!6924, !6925}
!6924 = !DILocalVariable(name: "tty", arg: 1, scope: !6922, file: !3, line: 293, type: !3122)
!6925 = !DILocalVariable(name: "timeout", arg: 2, scope: !6922, file: !3, line: 293, type: !161)
!6926 = !DILocation(line: 293, column: 44, scope: !6922)
!6927 = !DILocation(line: 293, column: 63, scope: !6922)
!6928 = !DILocation(line: 295, column: 9, scope: !6922)
!6929 = !DILocation(line: 295, column: 2, scope: !6922)
