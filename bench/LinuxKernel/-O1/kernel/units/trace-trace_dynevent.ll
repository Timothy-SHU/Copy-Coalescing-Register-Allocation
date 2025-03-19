; ModuleID = 'kernel/trace/trace_dynevent.c'
source_filename = "kernel/trace/trace_dynevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init..kmod_trace_dynevent__320_271_init_dynamic_event\22, \22a\22\09\09"
module asm "__initcall__kmod_trace_dynevent__320_271_init_dynamic_event5:\09\09\09"
module asm ".long\09__initstub__kmod_trace_dynevent__320_271_init_dynamic_event5 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dynevent_create: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dynevent_create ; .previous"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.19, %struct.trace_event, ptr, ptr, %union.anon.20, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.19 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.20 = type { ptr }
%struct.dyn_event_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.dyn_event = type { %struct.list_head, ptr }
%struct.dynevent_cmd = type { %struct.seq_buf, ptr, i32, i32, ptr, ptr }
%struct.seq_buf = type { ptr, i64, i64 }
%struct.dynevent_arg = type { ptr, i8 }
%struct.dynevent_arg_pair = type { ptr, ptr, i8, i8 }
%struct.file = type { %union.anon.21, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.22, %struct.qspinlock }
%union.anon.22 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }

@.str = private unnamed_addr constant [30 x i8] c"kernel/trace/trace_dynevent.c\00", align 1, !dbg !0
@trace_event_sem = external dso_local global %struct.rw_semaphore, align 8
@ftrace_events = external dso_local global %struct.list_head, align 8
@dyn_event_ops_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dyn_event_ops_mutex, i64 16), ptr getelementptr (i8, ptr @dyn_event_ops_mutex, i64 16) } }, align 8, !dbg !7
@dyn_event_ops_list = internal global %struct.list_head { ptr @dyn_event_ops_list, ptr @dyn_event_ops_list }, align 8, !dbg !6230
@event_mutex = external dso_local global %struct.mutex, align 8
@dyn_event_list = hidden global %struct.list_head { ptr @dyn_event_list, ptr @dyn_event_list }, align 8, !dbg !6204
@__UNIQUE_ID___addressable___initstub__kmod_trace_dynevent__320_271_init_dynamic_event5321 = internal global ptr @__initstub__kmod_trace_dynevent__320_271_init_dynamic_event5, section ".discard.addressable", align 8, !dbg !6206
@.str.1 = private unnamed_addr constant [6 x i8] c" %s%c\00", align 1, !dbg !6208
@.str.2 = private unnamed_addr constant [28 x i8] c"\013String is too long: %s%c\0A\00", align 1, !dbg !6210
@.str.3 = private unnamed_addr constant [10 x i8] c" %s%c%s%c\00", align 1, !dbg !6215
@.str.4 = private unnamed_addr constant [38 x i8] c"\013field string is too long: %s%c%s%c\0A\00", align 1, !dbg !6218
@.str.5 = private unnamed_addr constant [26 x i8] c"\013String is too long: %s\0A\00", align 1, !dbg !6223
@__UNIQUE_ID___addressable_dynevent_create322 = internal global ptr @dynevent_create, section ".discard.addressable", align 8, !dbg !6228
@.str.6 = private unnamed_addr constant [15 x i8] c"dynamic_events\00", align 1, !dbg !6232
@dynamic_events_ops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @dyn_event_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @dyn_event_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6237
@dyn_event_seq_op = internal constant %struct.seq_operations { ptr @dyn_event_seq_start, ptr @dyn_event_seq_stop, ptr @dyn_event_seq_next, ptr @dyn_event_seq_show }, align 8, !dbg !6239
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_trace_dynevent__320_271_init_dynamic_event5321, ptr @__UNIQUE_ID___addressable_dynevent_create322], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %dyn_call) #0 align 16 !dbg !6250 {
entry:
  %retval = alloca i1, align 1
  %dyn_call.addr = alloca ptr, align 8
  %call = alloca ptr, align 8
  %ret = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  %__mptr36 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  store ptr %dyn_call, ptr %dyn_call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dyn_call.addr, metadata !6254, metadata !DIExpression()), !dbg !6269
  call void @llvm.lifetime.start.p0(i64 8, ptr %call) #10, !dbg !6270
  call void @llvm.dbg.declare(metadata ptr %call, metadata !6255, metadata !DIExpression()), !dbg !6271
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #10, !dbg !6272
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6256, metadata !DIExpression()), !dbg !6273
  store i8 0, ptr %ret, align 1, !dbg !6273
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6274
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6257, metadata !DIExpression()), !dbg !6274
  %0 = load ptr, ptr %dyn_call.addr, align 8, !dbg !6274
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8, !dbg !6274
  %1 = load i32, ptr %flags, align 8, !dbg !6274
  %and = and i32 %1, 32, !dbg !6274
  %tobool = icmp ne i32 %and, 0, !dbg !6274
  %lnot = xor i1 %tobool, true, !dbg !6274
  %lnot1 = xor i1 %lnot, true, !dbg !6274
  %lnot2 = xor i1 %lnot1, true, !dbg !6274
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6274
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6274
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6275
  %tobool3 = icmp ne i32 %2, 0, !dbg !6275
  %lnot4 = xor i1 %tobool3, true, !dbg !6275
  %lnot6 = xor i1 %lnot4, true, !dbg !6275
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6275
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6275
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6275
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6275
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6274

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6275

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6260, metadata !DIExpression()), !dbg !6276
  store i32 2307, ptr %__flags, align 4, !dbg !6276
  br label %do.body9, !dbg !6276

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6277

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6277

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6276

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6279
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 27, i32 %3, i64 12) #10, !dbg !6279, !srcloc !6281
  br label %do.cond11, !dbg !6279

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6279

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6276

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6282

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6282

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6275
  br label %do.cond16, !dbg !6276

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6276

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6276

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6274
  %tobool18 = icmp ne i32 %4, 0, !dbg !6274
  %lnot19 = xor i1 %tobool18, true, !dbg !6274
  %lnot21 = xor i1 %lnot19, true, !dbg !6274
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6274
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6274
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6274
  store i64 %expval24, ptr %tmp, align 8, !dbg !6275
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6284
  %5 = load i64, ptr %tmp, align 8, !dbg !6274
  %tobool25 = icmp ne i64 %5, 0, !dbg !6284
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6285

if.then26:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6286

if.end27:                                         ; preds = %if.end
  call void @down_read(ptr noundef @trace_event_sem) #11, !dbg !6287
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6288
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6263, metadata !DIExpression()), !dbg !6288
  %6 = load ptr, ptr @ftrace_events, align 8, !dbg !6288
  store ptr %6, ptr %__mptr, align 8, !dbg !6288
  %7 = load ptr, ptr %__mptr, align 8, !dbg !6288
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !6288
  store ptr %add.ptr, ptr %tmp28, align 8, !dbg !6288
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6289
  %8 = load ptr, ptr %tmp28, align 8, !dbg !6288
  store ptr %8, ptr %call, align 8, !dbg !6289
  br label %for.cond, !dbg !6289

for.cond:                                         ; preds = %for.inc, %if.end27
  %9 = load ptr, ptr %call, align 8, !dbg !6290
  %list = getelementptr inbounds %struct.trace_event_call, ptr %9, i32 0, i32 0, !dbg !6290
  %cmp = icmp eq ptr %list, @ftrace_events, !dbg !6290
  %lnot30 = xor i1 %cmp, true, !dbg !6290
  br i1 %lnot30, label %for.body, label %for.end, !dbg !6289

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %call, align 8, !dbg !6291
  %11 = load ptr, ptr %dyn_call.addr, align 8, !dbg !6294
  %cmp32 = icmp eq ptr %10, %11, !dbg !6295
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !6296

if.then34:                                        ; preds = %for.body
  %12 = load ptr, ptr %dyn_call.addr, align 8, !dbg !6297
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %12, i32 0, i32 6, !dbg !6299
  call void @atomic_inc(ptr noundef %13) #11, !dbg !6300
  store i8 1, ptr %ret, align 1, !dbg !6301
  br label %if.end35, !dbg !6302

if.end35:                                         ; preds = %if.then34, %for.body
  br label %for.inc, !dbg !6303

for.inc:                                          ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr36) #10, !dbg !6304
  call void @llvm.dbg.declare(metadata ptr %__mptr36, metadata !6266, metadata !DIExpression()), !dbg !6304
  %14 = load ptr, ptr %call, align 8, !dbg !6304
  %list37 = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 0, !dbg !6304
  %next = getelementptr inbounds %struct.list_head, ptr %list37, i32 0, i32 0, !dbg !6304
  %15 = load ptr, ptr %next, align 8, !dbg !6304
  store ptr %15, ptr %__mptr36, align 8, !dbg !6304
  %16 = load ptr, ptr %__mptr36, align 8, !dbg !6304
  %add.ptr39 = getelementptr i8, ptr %16, i64 0, !dbg !6304
  store ptr %add.ptr39, ptr %tmp38, align 8, !dbg !6304
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr36) #10, !dbg !6290
  %17 = load ptr, ptr %tmp38, align 8, !dbg !6304
  store ptr %17, ptr %call, align 8, !dbg !6290
  br label %for.cond, !dbg !6290, !llvm.loop !6305

for.end:                                          ; preds = %for.cond
  call void @up_read(ptr noundef @trace_event_sem) #11, !dbg !6309
  %18 = load i8, ptr %ret, align 1, !dbg !6310, !range !6311, !noundef !719
  %tobool40 = trunc i8 %18 to i1, !dbg !6310
  store i1 %tobool40, ptr %retval, align 1, !dbg !6312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6312

cleanup:                                          ; preds = %for.end, %if.then26
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #10, !dbg !6313
  call void @llvm.lifetime.end.p0(i64 8, ptr %call) #10, !dbg !6313
  %19 = load i1, ptr %retval, align 1, !dbg !6313
  ret i1 %19, !dbg !6313
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6314 dso_local void @down_read(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #5 align 16 !dbg !6318 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6324, metadata !DIExpression()), !dbg !6325
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6326
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6327
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6328
  call void @raw_atomic_inc(ptr noundef %1) #11, !dbg !6329
  ret void, !dbg !6330
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6331 dso_local void @up_read(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_event_dyn_put_ref(ptr noundef %call) #0 align 16 !dbg !6332 {
entry:
  %call.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on28 = alloca i32, align 4
  %__flags45 = alloca i32, align 4
  %tmp58 = alloca i64, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !6336, metadata !DIExpression()), !dbg !6349
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6337, metadata !DIExpression()), !dbg !6350
  %0 = load ptr, ptr %call.addr, align 8, !dbg !6350
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8, !dbg !6350
  %1 = load i32, ptr %flags, align 8, !dbg !6350
  %and = and i32 %1, 32, !dbg !6350
  %tobool = icmp ne i32 %and, 0, !dbg !6350
  %lnot = xor i1 %tobool, true, !dbg !6350
  %lnot1 = xor i1 %lnot, true, !dbg !6350
  %lnot2 = xor i1 %lnot1, true, !dbg !6350
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6350
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6350
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6351
  %tobool3 = icmp ne i32 %2, 0, !dbg !6351
  %lnot4 = xor i1 %tobool3, true, !dbg !6351
  %lnot6 = xor i1 %lnot4, true, !dbg !6351
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6351
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6351
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6351
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6351
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6350

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6351

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6352
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6340, metadata !DIExpression()), !dbg !6352
  store i32 2307, ptr %__flags, align 4, !dbg !6352
  br label %do.body9, !dbg !6352

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6353

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6353

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6352

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6355
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 43, i32 %3, i64 12) #10, !dbg !6355, !srcloc !6357
  br label %do.cond11, !dbg !6355

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6355

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6352

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6358

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6358

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6351
  br label %do.cond16, !dbg !6352

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6352

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6352

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6350
  %tobool18 = icmp ne i32 %4, 0, !dbg !6350
  %lnot19 = xor i1 %tobool18, true, !dbg !6350
  %lnot21 = xor i1 %lnot19, true, !dbg !6350
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6350
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6350
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6350
  store i64 %expval24, ptr %tmp, align 8, !dbg !6351
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6360
  %5 = load i64, ptr %tmp, align 8, !dbg !6350
  %tobool25 = icmp ne i64 %5, 0, !dbg !6360
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6361

if.then26:                                        ; preds = %if.end
  br label %return, !dbg !6362

if.end27:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #10, !dbg !6363
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !6343, metadata !DIExpression()), !dbg !6363
  %6 = load ptr, ptr %call.addr, align 8, !dbg !6363
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %6, i32 0, i32 6, !dbg !6363
  %call29 = call i32 @atomic_read(ptr noundef %7) #11, !dbg !6363
  %cmp = icmp sle i32 %call29, 0, !dbg !6363
  %lnot31 = xor i1 %cmp, true, !dbg !6363
  %lnot33 = xor i1 %lnot31, true, !dbg !6363
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !6363
  store i32 %lnot.ext34, ptr %__ret_warn_on28, align 4, !dbg !6363
  %8 = load i32, ptr %__ret_warn_on28, align 4, !dbg !6364
  %tobool35 = icmp ne i32 %8, 0, !dbg !6364
  %lnot36 = xor i1 %tobool35, true, !dbg !6364
  %lnot38 = xor i1 %lnot36, true, !dbg !6364
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !6364
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !6364
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !6364
  %tobool42 = icmp ne i64 %expval41, 0, !dbg !6364
  br i1 %tobool42, label %if.then43, label %if.end57, !dbg !6363

if.then43:                                        ; preds = %if.end27
  br label %do.body44, !dbg !6364

do.body44:                                        ; preds = %if.then43
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags45) #10, !dbg !6365
  call void @llvm.dbg.declare(metadata ptr %__flags45, metadata !6346, metadata !DIExpression()), !dbg !6365
  store i32 2307, ptr %__flags45, align 4, !dbg !6365
  br label %do.body46, !dbg !6365

do.body46:                                        ; preds = %do.body44
  br label %do.cond47, !dbg !6366

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6366

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !6365

do.body49:                                        ; preds = %do.end48
  %9 = load i32, ptr %__flags45, align 4, !dbg !6368
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 46, i32 %9, i64 12) #10, !dbg !6368, !srcloc !6370
  br label %do.cond50, !dbg !6368

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !6368

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !6365

do.body52:                                        ; preds = %do.end51
  br label %do.cond53, !dbg !6371

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !6371

do.end54:                                         ; preds = %do.cond53
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags45) #10, !dbg !6364
  br label %do.cond55, !dbg !6365

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !6365

do.end56:                                         ; preds = %do.cond55
  br label %if.end57, !dbg !6365

if.end57:                                         ; preds = %do.end56, %if.end27
  %10 = load i32, ptr %__ret_warn_on28, align 4, !dbg !6363
  %tobool59 = icmp ne i32 %10, 0, !dbg !6363
  %lnot60 = xor i1 %tobool59, true, !dbg !6363
  %lnot62 = xor i1 %lnot60, true, !dbg !6363
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !6363
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !6363
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !6363
  store i64 %expval65, ptr %tmp58, align 8, !dbg !6364
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #10, !dbg !6373
  %11 = load i64, ptr %tmp58, align 8, !dbg !6363
  %tobool66 = icmp ne i64 %11, 0, !dbg !6373
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !6374

if.then67:                                        ; preds = %if.end57
  %12 = load ptr, ptr %call.addr, align 8, !dbg !6375
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %12, i32 0, i32 6, !dbg !6377
  call void @atomic_set(ptr noundef %13, i32 noundef 0) #11, !dbg !6378
  br label %return, !dbg !6379

if.end68:                                         ; preds = %if.end57
  %14 = load ptr, ptr %call.addr, align 8, !dbg !6380
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 6, !dbg !6381
  call void @atomic_dec(ptr noundef %15) #11, !dbg !6382
  br label %return, !dbg !6383

return:                                           ; preds = %if.end68, %if.then67, %if.then26
  ret void, !dbg !6383
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #5 align 16 !dbg !6384 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6390, metadata !DIExpression()), !dbg !6391
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6392
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #11, !dbg !6393
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6394
  %call = call i32 @raw_atomic_read(ptr noundef %1) #11, !dbg !6395
  ret i32 %call, !dbg !6396
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !6397 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6401, metadata !DIExpression()), !dbg !6403
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6402, metadata !DIExpression()), !dbg !6404
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6405
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6406
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6407
  %2 = load i32, ptr %i.addr, align 4, !dbg !6408
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #11, !dbg !6409
  ret void, !dbg !6410
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #5 align 16 !dbg !6411 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6413, metadata !DIExpression()), !dbg !6414
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6415
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6416
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6417
  call void @raw_atomic_dec(ptr noundef %1) #11, !dbg !6418
  ret void, !dbg !6419
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @trace_event_dyn_busy(ptr noundef %call) #0 align 16 !dbg !6420 {
entry:
  %call.addr = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !6422, metadata !DIExpression()), !dbg !6423
  %0 = load ptr, ptr %call.addr, align 8, !dbg !6424
  %1 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 6, !dbg !6425
  %call1 = call i32 @atomic_read(ptr noundef %1) #11, !dbg !6426
  %cmp = icmp ne i32 %call1, 0, !dbg !6427
  ret i1 %cmp, !dbg !6428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dyn_event_register(ptr noundef %ops) #0 align 16 !dbg !6429 {
entry:
  %retval = alloca i32, align 4
  %ops.addr = alloca ptr, align 8
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !6433, metadata !DIExpression()), !dbg !6434
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !6435
  %tobool = icmp ne ptr %0, null, !dbg !6435
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6437

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %ops.addr, align 8, !dbg !6438
  %create = getelementptr inbounds %struct.dyn_event_operations, ptr %1, i32 0, i32 1, !dbg !6439
  %2 = load ptr, ptr %create, align 8, !dbg !6439
  %tobool1 = icmp ne ptr %2, null, !dbg !6438
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !6440

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %ops.addr, align 8, !dbg !6441
  %show = getelementptr inbounds %struct.dyn_event_operations, ptr %3, i32 0, i32 2, !dbg !6442
  %4 = load ptr, ptr %show, align 8, !dbg !6442
  %tobool3 = icmp ne ptr %4, null, !dbg !6441
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !6443

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %ops.addr, align 8, !dbg !6444
  %is_busy = getelementptr inbounds %struct.dyn_event_operations, ptr %5, i32 0, i32 3, !dbg !6445
  %6 = load ptr, ptr %is_busy, align 8, !dbg !6445
  %tobool5 = icmp ne ptr %6, null, !dbg !6444
  br i1 %tobool5, label %lor.lhs.false6, label %if.then, !dbg !6446

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %ops.addr, align 8, !dbg !6447
  %free = getelementptr inbounds %struct.dyn_event_operations, ptr %7, i32 0, i32 4, !dbg !6448
  %8 = load ptr, ptr %free, align 8, !dbg !6448
  %tobool7 = icmp ne ptr %8, null, !dbg !6447
  br i1 %tobool7, label %lor.lhs.false8, label %if.then, !dbg !6449

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %9 = load ptr, ptr %ops.addr, align 8, !dbg !6450
  %match = getelementptr inbounds %struct.dyn_event_operations, ptr %9, i32 0, i32 5, !dbg !6451
  %10 = load ptr, ptr %match, align 8, !dbg !6451
  %tobool9 = icmp ne ptr %10, null, !dbg !6450
  br i1 %tobool9, label %if.end, label %if.then, !dbg !6452

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !6453
  br label %return, !dbg !6453

if.end:                                           ; preds = %lor.lhs.false8
  %11 = load ptr, ptr %ops.addr, align 8, !dbg !6454
  %list = getelementptr inbounds %struct.dyn_event_operations, ptr %11, i32 0, i32 0, !dbg !6455
  call void @INIT_LIST_HEAD(ptr noundef %list) #11, !dbg !6456
  call void @mutex_lock(ptr noundef @dyn_event_ops_mutex) #11, !dbg !6457
  %12 = load ptr, ptr %ops.addr, align 8, !dbg !6458
  %list10 = getelementptr inbounds %struct.dyn_event_operations, ptr %12, i32 0, i32 0, !dbg !6459
  call void @list_add_tail(ptr noundef %list10, ptr noundef @dyn_event_ops_list) #11, !dbg !6460
  call void @mutex_unlock(ptr noundef @dyn_event_ops_mutex) #11, !dbg !6461
  store i32 0, ptr %retval, align 4, !dbg !6462
  br label %return, !dbg !6462

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !6463
  ret i32 %13, !dbg !6463
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !6464 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6469, metadata !DIExpression()), !dbg !6470
  br label %do.body, !dbg !6471

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6472

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6474

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6472

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6476
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6476
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6476
  store volatile ptr %0, ptr %next, align 8, !dbg !6476
  br label %do.end3, !dbg !6476

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6472

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6478

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6479

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6481

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6479

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6483
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6483
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6483
  store volatile ptr %2, ptr %prev, align 8, !dbg !6483
  br label %do.end9, !dbg !6483

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6479

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6485
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6486 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !6490 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6494, metadata !DIExpression()), !dbg !6496
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6495, metadata !DIExpression()), !dbg !6497
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6498
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6499
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6500
  %2 = load ptr, ptr %prev, align 8, !dbg !6500
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6501
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #11, !dbg !6502
  ret void, !dbg !6503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6504 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dyn_event_release(ptr noundef %raw_command, ptr noundef %type) #0 align 16 !dbg !6505 {
entry:
  %retval = alloca i32, align 4
  %raw_command.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %n = alloca ptr, align 8
  %system = alloca ptr, align 8
  %event = alloca ptr, align 8
  %p = alloca ptr, align 8
  %argc = alloca i32, align 4
  %ret = alloca i32, align 4
  %argv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr31 = alloca ptr, align 8
  %tmp32 = alloca ptr, align 8
  %__mptr53 = alloca ptr, align 8
  %tmp56 = alloca ptr, align 8
  store ptr %raw_command, ptr %raw_command.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %raw_command.addr, metadata !6509, metadata !DIExpression()), !dbg !6529
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6510, metadata !DIExpression()), !dbg !6530
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #10, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6511, metadata !DIExpression()), !dbg !6532
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6512, metadata !DIExpression()), !dbg !6533
  call void @llvm.lifetime.start.p0(i64 8, ptr %system) #10, !dbg !6534
  call void @llvm.dbg.declare(metadata ptr %system, metadata !6513, metadata !DIExpression()), !dbg !6535
  store ptr null, ptr %system, align 8, !dbg !6535
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #10, !dbg !6534
  call void @llvm.dbg.declare(metadata ptr %event, metadata !6514, metadata !DIExpression()), !dbg !6536
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !6534
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6515, metadata !DIExpression()), !dbg !6537
  call void @llvm.lifetime.start.p0(i64 4, ptr %argc) #10, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %argc, metadata !6516, metadata !DIExpression()), !dbg !6539
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6517, metadata !DIExpression()), !dbg !6540
  store i32 -2, ptr %ret, align 4, !dbg !6540
  call void @llvm.lifetime.start.p0(i64 8, ptr %argv) #10, !dbg !6541
  call void @llvm.dbg.declare(metadata ptr %argv, metadata !6518, metadata !DIExpression()), !dbg !6542
  %0 = load ptr, ptr %raw_command.addr, align 8, !dbg !6543
  %call = call ptr @argv_split(i32 noundef 3264, ptr noundef %0, ptr noundef %argc) #11, !dbg !6544
  store ptr %call, ptr %argv, align 8, !dbg !6545
  %1 = load ptr, ptr %argv, align 8, !dbg !6546
  %tobool = icmp ne ptr %1, null, !dbg !6546
  br i1 %tobool, label %if.end, label %if.then, !dbg !6548

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6549

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %argv, align 8, !dbg !6550
  %arrayidx = getelementptr ptr, ptr %2, i64 0, !dbg !6550
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !6550
  %arrayidx1 = getelementptr i8, ptr %3, i64 0, !dbg !6550
  %4 = load i8, ptr %arrayidx1, align 1, !dbg !6550
  %conv = zext i8 %4 to i32, !dbg !6550
  %cmp = icmp eq i32 %conv, 45, !dbg !6552
  br i1 %cmp, label %if.then3, label %if.else, !dbg !6553

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %argv, align 8, !dbg !6554
  %arrayidx4 = getelementptr ptr, ptr %5, i64 0, !dbg !6554
  %6 = load ptr, ptr %arrayidx4, align 8, !dbg !6554
  %arrayidx5 = getelementptr i8, ptr %6, i64 1, !dbg !6554
  %7 = load i8, ptr %arrayidx5, align 1, !dbg !6554
  %conv6 = zext i8 %7 to i32, !dbg !6554
  %cmp7 = icmp ne i32 %conv6, 58, !dbg !6557
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6558

if.then9:                                         ; preds = %if.then3
  store i32 -22, ptr %ret, align 4, !dbg !6559
  br label %out, !dbg !6561

if.end10:                                         ; preds = %if.then3
  %8 = load ptr, ptr %argv, align 8, !dbg !6562
  %arrayidx11 = getelementptr ptr, ptr %8, i64 0, !dbg !6562
  %9 = load ptr, ptr %arrayidx11, align 8, !dbg !6562
  %arrayidx12 = getelementptr i8, ptr %9, i64 2, !dbg !6562
  store ptr %arrayidx12, ptr %event, align 8, !dbg !6563
  br label %if.end18, !dbg !6564

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %argv, align 8, !dbg !6565
  %arrayidx13 = getelementptr ptr, ptr %10, i64 0, !dbg !6565
  %11 = load ptr, ptr %arrayidx13, align 8, !dbg !6565
  %call14 = call ptr @strchr(ptr noundef %11, i32 noundef 58) #11, !dbg !6567
  store ptr %call14, ptr %event, align 8, !dbg !6568
  %12 = load ptr, ptr %event, align 8, !dbg !6569
  %tobool15 = icmp ne ptr %12, null, !dbg !6569
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6571

if.then16:                                        ; preds = %if.else
  store i32 -22, ptr %ret, align 4, !dbg !6572
  br label %out, !dbg !6574

if.end17:                                         ; preds = %if.else
  %13 = load ptr, ptr %event, align 8, !dbg !6575
  %incdec.ptr = getelementptr i8, ptr %13, i32 1, !dbg !6575
  store ptr %incdec.ptr, ptr %event, align 8, !dbg !6575
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end10
  %14 = load ptr, ptr %event, align 8, !dbg !6576
  %call19 = call ptr @strchr(ptr noundef %14, i32 noundef 47) #11, !dbg !6577
  store ptr %call19, ptr %p, align 8, !dbg !6578
  %15 = load ptr, ptr %p, align 8, !dbg !6579
  %tobool20 = icmp ne ptr %15, null, !dbg !6579
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6581

if.then21:                                        ; preds = %if.end18
  %16 = load ptr, ptr %event, align 8, !dbg !6582
  store ptr %16, ptr %system, align 8, !dbg !6584
  %17 = load ptr, ptr %p, align 8, !dbg !6585
  %add.ptr = getelementptr i8, ptr %17, i64 1, !dbg !6586
  store ptr %add.ptr, ptr %event, align 8, !dbg !6587
  %18 = load ptr, ptr %p, align 8, !dbg !6588
  store i8 0, ptr %18, align 1, !dbg !6589
  br label %if.end22, !dbg !6590

if.end22:                                         ; preds = %if.then21, %if.end18
  %19 = load ptr, ptr %system, align 8, !dbg !6591
  %tobool23 = icmp ne ptr %19, null, !dbg !6591
  br i1 %tobool23, label %if.end29, label %land.lhs.true, !dbg !6593

land.lhs.true:                                    ; preds = %if.end22
  %20 = load ptr, ptr %event, align 8, !dbg !6594
  %arrayidx24 = getelementptr i8, ptr %20, i64 0, !dbg !6594
  %21 = load i8, ptr %arrayidx24, align 1, !dbg !6594
  %conv25 = zext i8 %21 to i32, !dbg !6594
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !6595
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !6596

if.then28:                                        ; preds = %land.lhs.true
  store i32 -22, ptr %ret, align 4, !dbg !6597
  br label %out, !dbg !6599

if.end29:                                         ; preds = %land.lhs.true, %if.end22
  call void @mutex_lock(ptr noundef @event_mutex) #11, !dbg !6600
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6601
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6520, metadata !DIExpression()), !dbg !6601
  %22 = load ptr, ptr @dyn_event_list, align 8, !dbg !6601
  store ptr %22, ptr %__mptr, align 8, !dbg !6601
  %23 = load ptr, ptr %__mptr, align 8, !dbg !6601
  %add.ptr30 = getelementptr i8, ptr %23, i64 0, !dbg !6601
  store ptr %add.ptr30, ptr %tmp, align 8, !dbg !6601
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6602
  %24 = load ptr, ptr %tmp, align 8, !dbg !6601
  store ptr %24, ptr %pos, align 8, !dbg !6602
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr31) #10, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %__mptr31, metadata !6523, metadata !DIExpression()), !dbg !6603
  %25 = load ptr, ptr %pos, align 8, !dbg !6603
  %list = getelementptr inbounds %struct.dyn_event, ptr %25, i32 0, i32 0, !dbg !6603
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !6603
  %26 = load ptr, ptr %next, align 8, !dbg !6603
  store ptr %26, ptr %__mptr31, align 8, !dbg !6603
  %27 = load ptr, ptr %__mptr31, align 8, !dbg !6603
  %add.ptr33 = getelementptr i8, ptr %27, i64 0, !dbg !6603
  store ptr %add.ptr33, ptr %tmp32, align 8, !dbg !6603
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr31) #10, !dbg !6602
  %28 = load ptr, ptr %tmp32, align 8, !dbg !6603
  store ptr %28, ptr %n, align 8, !dbg !6602
  br label %for.cond, !dbg !6602

for.cond:                                         ; preds = %for.inc, %if.end29
  %29 = load ptr, ptr %pos, align 8, !dbg !6604
  %list34 = getelementptr inbounds %struct.dyn_event, ptr %29, i32 0, i32 0, !dbg !6604
  %cmp35 = icmp eq ptr %list34, @dyn_event_list, !dbg !6604
  %lnot = xor i1 %cmp35, true, !dbg !6604
  br i1 %lnot, label %for.body, label %for.end, !dbg !6602

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %type.addr, align 8, !dbg !6605
  %tobool37 = icmp ne ptr %30, null, !dbg !6605
  br i1 %tobool37, label %land.lhs.true38, label %if.end42, !dbg !6608

land.lhs.true38:                                  ; preds = %for.body
  %31 = load ptr, ptr %type.addr, align 8, !dbg !6609
  %32 = load ptr, ptr %pos, align 8, !dbg !6610
  %ops = getelementptr inbounds %struct.dyn_event, ptr %32, i32 0, i32 1, !dbg !6611
  %33 = load ptr, ptr %ops, align 8, !dbg !6611
  %cmp39 = icmp ne ptr %31, %33, !dbg !6612
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !6613

if.then41:                                        ; preds = %land.lhs.true38
  br label %for.inc, !dbg !6614

if.end42:                                         ; preds = %land.lhs.true38, %for.body
  %34 = load ptr, ptr %pos, align 8, !dbg !6615
  %ops43 = getelementptr inbounds %struct.dyn_event, ptr %34, i32 0, i32 1, !dbg !6617
  %35 = load ptr, ptr %ops43, align 8, !dbg !6617
  %match = getelementptr inbounds %struct.dyn_event_operations, ptr %35, i32 0, i32 5, !dbg !6618
  %36 = load ptr, ptr %match, align 8, !dbg !6618
  %37 = load ptr, ptr %system, align 8, !dbg !6619
  %38 = load ptr, ptr %event, align 8, !dbg !6620
  %39 = load i32, ptr %argc, align 4, !dbg !6621
  %sub = sub i32 %39, 1, !dbg !6622
  %40 = load ptr, ptr %argv, align 8, !dbg !6623
  %add.ptr44 = getelementptr ptr, ptr %40, i64 1, !dbg !6624
  %41 = load ptr, ptr %pos, align 8, !dbg !6625
  %call45 = call zeroext i1 %36(ptr noundef %37, ptr noundef %38, i32 noundef %sub, ptr noundef %add.ptr44, ptr noundef %41) #11, !dbg !6615
  br i1 %call45, label %if.end47, label %if.then46, !dbg !6626

if.then46:                                        ; preds = %if.end42
  br label %for.inc, !dbg !6627

if.end47:                                         ; preds = %if.end42
  %42 = load ptr, ptr %pos, align 8, !dbg !6628
  %ops48 = getelementptr inbounds %struct.dyn_event, ptr %42, i32 0, i32 1, !dbg !6629
  %43 = load ptr, ptr %ops48, align 8, !dbg !6629
  %free = getelementptr inbounds %struct.dyn_event_operations, ptr %43, i32 0, i32 4, !dbg !6630
  %44 = load ptr, ptr %free, align 8, !dbg !6630
  %45 = load ptr, ptr %pos, align 8, !dbg !6631
  %call49 = call i32 %44(ptr noundef %45) #11, !dbg !6628
  store i32 %call49, ptr %ret, align 4, !dbg !6632
  %46 = load i32, ptr %ret, align 4, !dbg !6633
  %tobool50 = icmp ne i32 %46, 0, !dbg !6633
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !6635

if.then51:                                        ; preds = %if.end47
  br label %for.end, !dbg !6636

if.end52:                                         ; preds = %if.end47
  br label %for.inc, !dbg !6637

for.inc:                                          ; preds = %if.end52, %if.then46, %if.then41
  %47 = load ptr, ptr %n, align 8, !dbg !6604
  store ptr %47, ptr %pos, align 8, !dbg !6604
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr53) #10, !dbg !6638
  call void @llvm.dbg.declare(metadata ptr %__mptr53, metadata !6525, metadata !DIExpression()), !dbg !6638
  %48 = load ptr, ptr %n, align 8, !dbg !6638
  %list54 = getelementptr inbounds %struct.dyn_event, ptr %48, i32 0, i32 0, !dbg !6638
  %next55 = getelementptr inbounds %struct.list_head, ptr %list54, i32 0, i32 0, !dbg !6638
  %49 = load ptr, ptr %next55, align 8, !dbg !6638
  store ptr %49, ptr %__mptr53, align 8, !dbg !6638
  %50 = load ptr, ptr %__mptr53, align 8, !dbg !6638
  %add.ptr57 = getelementptr i8, ptr %50, i64 0, !dbg !6638
  store ptr %add.ptr57, ptr %tmp56, align 8, !dbg !6638
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr53) #10, !dbg !6604
  %51 = load ptr, ptr %tmp56, align 8, !dbg !6638
  store ptr %51, ptr %n, align 8, !dbg !6604
  br label %for.cond, !dbg !6604, !llvm.loop !6639

for.end:                                          ; preds = %if.then51, %for.cond
  call void @tracing_reset_all_online_cpus() #11, !dbg !6641
  call void @mutex_unlock(ptr noundef @event_mutex) #11, !dbg !6642
  br label %out, !dbg !6642

out:                                              ; preds = %for.end, %if.then28, %if.then16, %if.then9
  call void @llvm.dbg.label(metadata !6528), !dbg !6643
  %52 = load ptr, ptr %argv, align 8, !dbg !6644
  call void @argv_free(ptr noundef %52) #11, !dbg !6645
  %53 = load i32, ptr %ret, align 4, !dbg !6646
  store i32 %53, ptr %retval, align 4, !dbg !6647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6647

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %argv) #10, !dbg !6648
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6648
  call void @llvm.lifetime.end.p0(i64 4, ptr %argc) #10, !dbg !6648
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6648
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #10, !dbg !6648
  call void @llvm.lifetime.end.p0(i64 8, ptr %system) #10, !dbg !6648
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !6648
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #10, !dbg !6648
  %54 = load i32, ptr %retval, align 4, !dbg !6648
  ret i32 %54, !dbg !6648
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6649 dso_local ptr @argv_split(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6653 dso_local ptr @strchr(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6656 dso_local void @tracing_reset_all_online_cpus() #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6657 dso_local void @argv_free(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dyn_event_seq_start(ptr noundef %m, ptr noundef %pos) #0 align 16 !dbg !6660 {
entry:
  %m.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6662, metadata !DIExpression()), !dbg !6664
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6663, metadata !DIExpression()), !dbg !6665
  call void @mutex_lock(ptr noundef @event_mutex) #11, !dbg !6666
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !6667
  %1 = load i64, ptr %0, align 8, !dbg !6668
  %call = call ptr @seq_list_start(ptr noundef @dyn_event_list, i64 noundef %1) #11, !dbg !6669
  ret ptr %call, !dbg !6670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6671 dso_local ptr @seq_list_start(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dyn_event_seq_next(ptr noundef %m, ptr noundef %v, ptr noundef %pos) #0 align 16 !dbg !6674 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6676, metadata !DIExpression()), !dbg !6679
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6677, metadata !DIExpression()), !dbg !6680
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6678, metadata !DIExpression()), !dbg !6681
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6682
  %1 = load ptr, ptr %pos.addr, align 8, !dbg !6683
  %call = call ptr @seq_list_next(ptr noundef %0, ptr noundef @dyn_event_list, ptr noundef %1) #11, !dbg !6684
  ret ptr %call, !dbg !6685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6686 dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dyn_event_seq_stop(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !6689 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6691, metadata !DIExpression()), !dbg !6693
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6692, metadata !DIExpression()), !dbg !6694
  call void @mutex_unlock(ptr noundef @event_mutex) #11, !dbg !6695
  ret void, !dbg !6696
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dyn_events_release_all(ptr noundef %type) #0 align 16 !dbg !6697 {
entry:
  %type.addr = alloca ptr, align 8
  %ev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__mptr35 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6699, metadata !DIExpression()), !dbg !6718
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #10, !dbg !6719
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !6700, metadata !DIExpression()), !dbg !6720
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #10, !dbg !6719
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6701, metadata !DIExpression()), !dbg !6721
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6722
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6702, metadata !DIExpression()), !dbg !6723
  store i32 0, ptr %ret, align 4, !dbg !6723
  call void @mutex_lock(ptr noundef @event_mutex) #11, !dbg !6724
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6703, metadata !DIExpression()), !dbg !6725
  %0 = load ptr, ptr @dyn_event_list, align 8, !dbg !6725
  store ptr %0, ptr %__mptr, align 8, !dbg !6725
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6725
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6725
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !6725
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6726
  %2 = load ptr, ptr %tmp1, align 8, !dbg !6725
  store ptr %2, ptr %ev, align 8, !dbg !6726
  br label %for.cond, !dbg !6726

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %ev, align 8, !dbg !6727
  %list = getelementptr inbounds %struct.dyn_event, ptr %3, i32 0, i32 0, !dbg !6727
  %cmp = icmp eq ptr %list, @dyn_event_list, !dbg !6727
  %lnot = xor i1 %cmp, true, !dbg !6727
  br i1 %lnot, label %for.body, label %for.end, !dbg !6726

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %type.addr, align 8, !dbg !6728
  %tobool = icmp ne ptr %4, null, !dbg !6728
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6731

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %ev, align 8, !dbg !6732
  %ops = getelementptr inbounds %struct.dyn_event, ptr %5, i32 0, i32 1, !dbg !6733
  %6 = load ptr, ptr %ops, align 8, !dbg !6733
  %7 = load ptr, ptr %type.addr, align 8, !dbg !6734
  %cmp2 = icmp ne ptr %6, %7, !dbg !6735
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6736

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !6737

if.end:                                           ; preds = %land.lhs.true, %for.body
  %8 = load ptr, ptr %ev, align 8, !dbg !6738
  %ops3 = getelementptr inbounds %struct.dyn_event, ptr %8, i32 0, i32 1, !dbg !6740
  %9 = load ptr, ptr %ops3, align 8, !dbg !6740
  %is_busy = getelementptr inbounds %struct.dyn_event_operations, ptr %9, i32 0, i32 3, !dbg !6741
  %10 = load ptr, ptr %is_busy, align 8, !dbg !6741
  %11 = load ptr, ptr %ev, align 8, !dbg !6742
  %call = call zeroext i1 %10(ptr noundef %11) #11, !dbg !6738
  br i1 %call, label %if.then4, label %if.end5, !dbg !6743

if.then4:                                         ; preds = %if.end
  store i32 -16, ptr %ret, align 4, !dbg !6744
  br label %out, !dbg !6746

if.end5:                                          ; preds = %if.end
  br label %for.inc, !dbg !6747

for.inc:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #10, !dbg !6748
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !6706, metadata !DIExpression()), !dbg !6748
  %12 = load ptr, ptr %ev, align 8, !dbg !6748
  %list7 = getelementptr inbounds %struct.dyn_event, ptr %12, i32 0, i32 0, !dbg !6748
  %next = getelementptr inbounds %struct.list_head, ptr %list7, i32 0, i32 0, !dbg !6748
  %13 = load ptr, ptr %next, align 8, !dbg !6748
  store ptr %13, ptr %__mptr6, align 8, !dbg !6748
  %14 = load ptr, ptr %__mptr6, align 8, !dbg !6748
  %add.ptr9 = getelementptr i8, ptr %14, i64 0, !dbg !6748
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #10, !dbg !6727
  %15 = load ptr, ptr %tmp8, align 8, !dbg !6748
  store ptr %15, ptr %ev, align 8, !dbg !6727
  br label %for.cond, !dbg !6727, !llvm.loop !6749

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #10, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !6709, metadata !DIExpression()), !dbg !6751
  %16 = load ptr, ptr @dyn_event_list, align 8, !dbg !6751
  store ptr %16, ptr %__mptr10, align 8, !dbg !6751
  %17 = load ptr, ptr %__mptr10, align 8, !dbg !6751
  %add.ptr12 = getelementptr i8, ptr %17, i64 0, !dbg !6751
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !6751
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #10, !dbg !6752
  %18 = load ptr, ptr %tmp11, align 8, !dbg !6751
  store ptr %18, ptr %ev, align 8, !dbg !6752
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #10, !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !6712, metadata !DIExpression()), !dbg !6753
  %19 = load ptr, ptr %ev, align 8, !dbg !6753
  %list14 = getelementptr inbounds %struct.dyn_event, ptr %19, i32 0, i32 0, !dbg !6753
  %next15 = getelementptr inbounds %struct.list_head, ptr %list14, i32 0, i32 0, !dbg !6753
  %20 = load ptr, ptr %next15, align 8, !dbg !6753
  store ptr %20, ptr %__mptr13, align 8, !dbg !6753
  %21 = load ptr, ptr %__mptr13, align 8, !dbg !6753
  %add.ptr17 = getelementptr i8, ptr %21, i64 0, !dbg !6753
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !6753
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #10, !dbg !6752
  %22 = load ptr, ptr %tmp16, align 8, !dbg !6753
  store ptr %22, ptr %tmp, align 8, !dbg !6752
  br label %for.cond18, !dbg !6752

for.cond18:                                       ; preds = %for.inc34, %for.end
  %23 = load ptr, ptr %ev, align 8, !dbg !6754
  %list19 = getelementptr inbounds %struct.dyn_event, ptr %23, i32 0, i32 0, !dbg !6754
  %cmp20 = icmp eq ptr %list19, @dyn_event_list, !dbg !6754
  %lnot21 = xor i1 %cmp20, true, !dbg !6754
  br i1 %lnot21, label %for.body22, label %for.end40, !dbg !6752

for.body22:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %type.addr, align 8, !dbg !6755
  %tobool23 = icmp ne ptr %24, null, !dbg !6755
  br i1 %tobool23, label %land.lhs.true24, label %if.end28, !dbg !6758

land.lhs.true24:                                  ; preds = %for.body22
  %25 = load ptr, ptr %ev, align 8, !dbg !6759
  %ops25 = getelementptr inbounds %struct.dyn_event, ptr %25, i32 0, i32 1, !dbg !6760
  %26 = load ptr, ptr %ops25, align 8, !dbg !6760
  %27 = load ptr, ptr %type.addr, align 8, !dbg !6761
  %cmp26 = icmp ne ptr %26, %27, !dbg !6762
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !6763

if.then27:                                        ; preds = %land.lhs.true24
  br label %for.inc34, !dbg !6764

if.end28:                                         ; preds = %land.lhs.true24, %for.body22
  %28 = load ptr, ptr %ev, align 8, !dbg !6765
  %ops29 = getelementptr inbounds %struct.dyn_event, ptr %28, i32 0, i32 1, !dbg !6766
  %29 = load ptr, ptr %ops29, align 8, !dbg !6766
  %free = getelementptr inbounds %struct.dyn_event_operations, ptr %29, i32 0, i32 4, !dbg !6767
  %30 = load ptr, ptr %free, align 8, !dbg !6767
  %31 = load ptr, ptr %ev, align 8, !dbg !6768
  %call30 = call i32 %30(ptr noundef %31) #11, !dbg !6765
  store i32 %call30, ptr %ret, align 4, !dbg !6769
  %32 = load i32, ptr %ret, align 4, !dbg !6770
  %tobool31 = icmp ne i32 %32, 0, !dbg !6770
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6772

if.then32:                                        ; preds = %if.end28
  br label %for.end40, !dbg !6773

if.end33:                                         ; preds = %if.end28
  br label %for.inc34, !dbg !6774

for.inc34:                                        ; preds = %if.end33, %if.then27
  %33 = load ptr, ptr %tmp, align 8, !dbg !6754
  store ptr %33, ptr %ev, align 8, !dbg !6754
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr35) #10, !dbg !6775
  call void @llvm.dbg.declare(metadata ptr %__mptr35, metadata !6714, metadata !DIExpression()), !dbg !6775
  %34 = load ptr, ptr %tmp, align 8, !dbg !6775
  %list36 = getelementptr inbounds %struct.dyn_event, ptr %34, i32 0, i32 0, !dbg !6775
  %next37 = getelementptr inbounds %struct.list_head, ptr %list36, i32 0, i32 0, !dbg !6775
  %35 = load ptr, ptr %next37, align 8, !dbg !6775
  store ptr %35, ptr %__mptr35, align 8, !dbg !6775
  %36 = load ptr, ptr %__mptr35, align 8, !dbg !6775
  %add.ptr39 = getelementptr i8, ptr %36, i64 0, !dbg !6775
  store ptr %add.ptr39, ptr %tmp38, align 8, !dbg !6775
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr35) #10, !dbg !6754
  %37 = load ptr, ptr %tmp38, align 8, !dbg !6775
  store ptr %37, ptr %tmp, align 8, !dbg !6754
  br label %for.cond18, !dbg !6754, !llvm.loop !6776

for.end40:                                        ; preds = %if.then32, %for.cond18
  br label %out, !dbg !6777

out:                                              ; preds = %for.end40, %if.then4
  call void @llvm.dbg.label(metadata !6717), !dbg !6778
  call void @tracing_reset_all_online_cpus() #11, !dbg !6779
  call void @mutex_unlock(ptr noundef @event_mutex) #11, !dbg !6780
  %38 = load i32, ptr %ret, align 4, !dbg !6781
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6782
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #10, !dbg !6782
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #10, !dbg !6782
  ret i32 %38, !dbg !6783
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_trace_dynevent__320_271_init_dynamic_event5() #7 section ".init.text" align 16 !dbg !6784 {
entry:
  %call = call i32 @init_dynamic_event() #12, !dbg !6785
  ret i32 %call, !dbg !6785
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_dynamic_event() #7 section ".init.text" align 16 !dbg !6786 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6789
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6788, metadata !DIExpression()), !dbg !6790
  %call = call i32 @tracing_init_dentry() #11, !dbg !6791
  store i32 %call, ptr %ret, align 4, !dbg !6792
  %0 = load i32, ptr %ret, align 4, !dbg !6793
  %tobool = icmp ne i32 %0, 0, !dbg !6793
  br i1 %tobool, label %if.then, label %if.end, !dbg !6795

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6796

if.end:                                           ; preds = %entry
  %call1 = call ptr @trace_create_file(ptr noundef @.str.6, i16 noundef zeroext 416, ptr noundef null, ptr noundef null, ptr noundef @dynamic_events_ops) #11, !dbg !6797
  store i32 0, ptr %retval, align 4, !dbg !6798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6798

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6799
  %1 = load i32, ptr %retval, align 4, !dbg !6799
  ret i32 %1, !dbg !6799
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dynevent_arg_add(ptr noundef %cmd, ptr noundef %arg, ptr noundef %check_arg) #0 align 16 !dbg !6800 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %check_arg.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6826, metadata !DIExpression()), !dbg !6830
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6827, metadata !DIExpression()), !dbg !6831
  store ptr %check_arg, ptr %check_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %check_arg.addr, metadata !6828, metadata !DIExpression()), !dbg !6832
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6833
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6829, metadata !DIExpression()), !dbg !6834
  store i32 0, ptr %ret, align 4, !dbg !6834
  %0 = load ptr, ptr %check_arg.addr, align 8, !dbg !6835
  %tobool = icmp ne ptr %0, null, !dbg !6835
  br i1 %tobool, label %if.then, label %if.end3, !dbg !6837

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %check_arg.addr, align 8, !dbg !6838
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !6840
  %call = call i32 %1(ptr noundef %2) #11, !dbg !6838
  store i32 %call, ptr %ret, align 4, !dbg !6841
  %3 = load i32, ptr %ret, align 4, !dbg !6842
  %tobool1 = icmp ne i32 %3, 0, !dbg !6842
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6844

if.then2:                                         ; preds = %if.then
  %4 = load i32, ptr %ret, align 4, !dbg !6845
  store i32 %4, ptr %retval, align 4, !dbg !6846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6846

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !6847

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !6848
  %seq = getelementptr inbounds %struct.dynevent_cmd, ptr %5, i32 0, i32 0, !dbg !6849
  %6 = load ptr, ptr %arg.addr, align 8, !dbg !6850
  %str = getelementptr inbounds %struct.dynevent_arg, ptr %6, i32 0, i32 0, !dbg !6851
  %7 = load ptr, ptr %str, align 8, !dbg !6851
  %8 = load ptr, ptr %arg.addr, align 8, !dbg !6852
  %separator = getelementptr inbounds %struct.dynevent_arg, ptr %8, i32 0, i32 1, !dbg !6853
  %9 = load i8, ptr %separator, align 8, !dbg !6853
  %conv = zext i8 %9 to i32, !dbg !6852
  %call4 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %seq, ptr noundef @.str.1, ptr noundef %7, i32 noundef %conv) #11, !dbg !6854
  store i32 %call4, ptr %ret, align 4, !dbg !6855
  %10 = load i32, ptr %ret, align 4, !dbg !6856
  %tobool5 = icmp ne i32 %10, 0, !dbg !6856
  br i1 %tobool5, label %if.then6, label %if.end11, !dbg !6858

if.then6:                                         ; preds = %if.end3
  br label %do.body, !dbg !6859

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !6862

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6862

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %arg.addr, align 8, !dbg !6859
  %str7 = getelementptr inbounds %struct.dynevent_arg, ptr %11, i32 0, i32 0, !dbg !6859
  %12 = load ptr, ptr %str7, align 8, !dbg !6859
  %13 = load ptr, ptr %arg.addr, align 8, !dbg !6859
  %separator8 = getelementptr inbounds %struct.dynevent_arg, ptr %13, i32 0, i32 1, !dbg !6859
  %14 = load i8, ptr %separator8, align 8, !dbg !6859
  %conv9 = zext i8 %14 to i32, !dbg !6859
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %12, i32 noundef %conv9) #12, !dbg !6859
  store i32 %call10, ptr %tmp, align 4, !dbg !6862
  %15 = load i32, ptr %tmp, align 4, !dbg !6859
  store i32 -7, ptr %retval, align 4, !dbg !6864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6864

if.end11:                                         ; preds = %if.end3
  %16 = load i32, ptr %ret, align 4, !dbg !6865
  store i32 %16, ptr %retval, align 4, !dbg !6866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6866

cleanup:                                          ; preds = %if.end11, %do.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6867
  %17 = load i32, ptr %retval, align 4, !dbg !6867
  ret i32 %17, !dbg !6867
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6868 dso_local i32 @seq_buf_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6872 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dynevent_arg_pair_add(ptr noundef %cmd, ptr noundef %arg_pair, ptr noundef %check_arg) #0 align 16 !dbg !6876 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca ptr, align 8
  %arg_pair.addr = alloca ptr, align 8
  %check_arg.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6887, metadata !DIExpression()), !dbg !6891
  store ptr %arg_pair, ptr %arg_pair.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg_pair.addr, metadata !6888, metadata !DIExpression()), !dbg !6892
  store ptr %check_arg, ptr %check_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %check_arg.addr, metadata !6889, metadata !DIExpression()), !dbg !6893
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6894
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6890, metadata !DIExpression()), !dbg !6895
  store i32 0, ptr %ret, align 4, !dbg !6895
  %0 = load ptr, ptr %check_arg.addr, align 8, !dbg !6896
  %tobool = icmp ne ptr %0, null, !dbg !6896
  br i1 %tobool, label %if.then, label %if.end3, !dbg !6898

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %check_arg.addr, align 8, !dbg !6899
  %2 = load ptr, ptr %arg_pair.addr, align 8, !dbg !6901
  %call = call i32 %1(ptr noundef %2) #11, !dbg !6899
  store i32 %call, ptr %ret, align 4, !dbg !6902
  %3 = load i32, ptr %ret, align 4, !dbg !6903
  %tobool1 = icmp ne i32 %3, 0, !dbg !6903
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6905

if.then2:                                         ; preds = %if.then
  %4 = load i32, ptr %ret, align 4, !dbg !6906
  store i32 %4, ptr %retval, align 4, !dbg !6907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6907

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !6908

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !6909
  %seq = getelementptr inbounds %struct.dynevent_cmd, ptr %5, i32 0, i32 0, !dbg !6910
  %6 = load ptr, ptr %arg_pair.addr, align 8, !dbg !6911
  %lhs = getelementptr inbounds %struct.dynevent_arg_pair, ptr %6, i32 0, i32 0, !dbg !6912
  %7 = load ptr, ptr %lhs, align 8, !dbg !6912
  %8 = load ptr, ptr %arg_pair.addr, align 8, !dbg !6913
  %operator = getelementptr inbounds %struct.dynevent_arg_pair, ptr %8, i32 0, i32 2, !dbg !6914
  %9 = load i8, ptr %operator, align 8, !dbg !6914
  %conv = zext i8 %9 to i32, !dbg !6913
  %10 = load ptr, ptr %arg_pair.addr, align 8, !dbg !6915
  %rhs = getelementptr inbounds %struct.dynevent_arg_pair, ptr %10, i32 0, i32 1, !dbg !6916
  %11 = load ptr, ptr %rhs, align 8, !dbg !6916
  %12 = load ptr, ptr %arg_pair.addr, align 8, !dbg !6917
  %separator = getelementptr inbounds %struct.dynevent_arg_pair, ptr %12, i32 0, i32 3, !dbg !6918
  %13 = load i8, ptr %separator, align 1, !dbg !6918
  %conv4 = zext i8 %13 to i32, !dbg !6917
  %call5 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %seq, ptr noundef @.str.3, ptr noundef %7, i32 noundef %conv, ptr noundef %11, i32 noundef %conv4) #11, !dbg !6919
  store i32 %call5, ptr %ret, align 4, !dbg !6920
  %14 = load i32, ptr %ret, align 4, !dbg !6921
  %tobool6 = icmp ne i32 %14, 0, !dbg !6921
  br i1 %tobool6, label %if.then7, label %if.end15, !dbg !6923

if.then7:                                         ; preds = %if.end3
  br label %do.body, !dbg !6924

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !6927

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6927

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %arg_pair.addr, align 8, !dbg !6924
  %lhs8 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %15, i32 0, i32 0, !dbg !6924
  %16 = load ptr, ptr %lhs8, align 8, !dbg !6924
  %17 = load ptr, ptr %arg_pair.addr, align 8, !dbg !6924
  %operator9 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %17, i32 0, i32 2, !dbg !6924
  %18 = load i8, ptr %operator9, align 8, !dbg !6924
  %conv10 = zext i8 %18 to i32, !dbg !6924
  %19 = load ptr, ptr %arg_pair.addr, align 8, !dbg !6924
  %rhs11 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %19, i32 0, i32 1, !dbg !6924
  %20 = load ptr, ptr %rhs11, align 8, !dbg !6924
  %21 = load ptr, ptr %arg_pair.addr, align 8, !dbg !6924
  %separator12 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %21, i32 0, i32 3, !dbg !6924
  %22 = load i8, ptr %separator12, align 1, !dbg !6924
  %conv13 = zext i8 %22 to i32, !dbg !6924
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %16, i32 noundef %conv10, ptr noundef %20, i32 noundef %conv13) #12, !dbg !6924
  store i32 %call14, ptr %tmp, align 4, !dbg !6927
  %23 = load i32, ptr %tmp, align 4, !dbg !6924
  store i32 -7, ptr %retval, align 4, !dbg !6929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6929

if.end15:                                         ; preds = %if.end3
  %24 = load i32, ptr %ret, align 4, !dbg !6930
  store i32 %24, ptr %retval, align 4, !dbg !6931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6931

cleanup:                                          ; preds = %if.end15, %do.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6932
  %25 = load i32, ptr %retval, align 4, !dbg !6932
  ret i32 %25, !dbg !6932
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dynevent_str_add(ptr noundef %cmd, ptr noundef %str) #0 align 16 !dbg !6933 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6937, metadata !DIExpression()), !dbg !6940
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6938, metadata !DIExpression()), !dbg !6941
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6942
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6939, metadata !DIExpression()), !dbg !6943
  store i32 0, ptr %ret, align 4, !dbg !6943
  %0 = load ptr, ptr %cmd.addr, align 8, !dbg !6944
  %seq = getelementptr inbounds %struct.dynevent_cmd, ptr %0, i32 0, i32 0, !dbg !6945
  %1 = load ptr, ptr %str.addr, align 8, !dbg !6946
  %call = call i32 @seq_buf_puts(ptr noundef %seq, ptr noundef %1) #11, !dbg !6947
  store i32 %call, ptr %ret, align 4, !dbg !6948
  %2 = load i32, ptr %ret, align 4, !dbg !6949
  %tobool = icmp ne i32 %2, 0, !dbg !6949
  br i1 %tobool, label %if.then, label %if.end, !dbg !6951

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6952

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6955

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6955

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %str.addr, align 8, !dbg !6952
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %3) #12, !dbg !6952
  store i32 %call1, ptr %tmp, align 4, !dbg !6955
  %4 = load i32, ptr %tmp, align 4, !dbg !6952
  store i32 -7, ptr %retval, align 4, !dbg !6957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6957

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !dbg !6958
  store i32 %5, ptr %retval, align 4, !dbg !6959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6959

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6960
  %6 = load i32, ptr %retval, align 4, !dbg !6960
  ret i32 %6, !dbg !6960
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6961 dso_local i32 @seq_buf_puts(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dynevent_cmd_init(ptr noundef %cmd, ptr noundef %buf, i32 noundef %maxlen, i32 noundef %type, ptr noundef %run_command) #0 align 16 !dbg !6964 {
entry:
  %cmd.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %maxlen.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %run_command.addr = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6968, metadata !DIExpression()), !dbg !6973
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6969, metadata !DIExpression()), !dbg !6974
  store i32 %maxlen, ptr %maxlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxlen.addr, metadata !6970, metadata !DIExpression()), !dbg !6975
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6971, metadata !DIExpression()), !dbg !6976
  store ptr %run_command, ptr %run_command.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %run_command.addr, metadata !6972, metadata !DIExpression()), !dbg !6977
  %0 = load ptr, ptr %cmd.addr, align 8, !dbg !6978
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 56, i1 false), !dbg !6979
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !6980
  %seq = getelementptr inbounds %struct.dynevent_cmd, ptr %1, i32 0, i32 0, !dbg !6981
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6982
  %3 = load i32, ptr %maxlen.addr, align 4, !dbg !6983
  call void @seq_buf_init(ptr noundef %seq, ptr noundef %2, i32 noundef %3) #11, !dbg !6984
  %4 = load i32, ptr %type.addr, align 4, !dbg !6985
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !6986
  %type1 = getelementptr inbounds %struct.dynevent_cmd, ptr %5, i32 0, i32 3, !dbg !6987
  store i32 %4, ptr %type1, align 4, !dbg !6988
  %6 = load ptr, ptr %run_command.addr, align 8, !dbg !6989
  %7 = load ptr, ptr %cmd.addr, align 8, !dbg !6990
  %run_command2 = getelementptr inbounds %struct.dynevent_cmd, ptr %7, i32 0, i32 4, !dbg !6991
  store ptr %6, ptr %run_command2, align 8, !dbg !6992
  ret void, !dbg !6993
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_buf_init(ptr noundef %s, ptr noundef %buf, i32 noundef %size) #6 align 16 !dbg !6994 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6998, metadata !DIExpression()), !dbg !7001
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6999, metadata !DIExpression()), !dbg !7002
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7000, metadata !DIExpression()), !dbg !7003
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !7004
  %1 = load ptr, ptr %s.addr, align 8, !dbg !7005
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 0, !dbg !7006
  store ptr %0, ptr %buffer, align 8, !dbg !7007
  %2 = load i32, ptr %size.addr, align 4, !dbg !7008
  %conv = zext i32 %2 to i64, !dbg !7008
  %3 = load ptr, ptr %s.addr, align 8, !dbg !7009
  %size1 = getelementptr inbounds %struct.seq_buf, ptr %3, i32 0, i32 1, !dbg !7010
  store i64 %conv, ptr %size1, align 8, !dbg !7011
  %4 = load ptr, ptr %s.addr, align 8, !dbg !7012
  call void @seq_buf_clear(ptr noundef %4) #11, !dbg !7013
  ret void, !dbg !7014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dynevent_arg_init(ptr noundef %arg, i8 noundef zeroext %separator) #0 align 16 !dbg !7015 {
entry:
  %arg.addr = alloca ptr, align 8
  %separator.addr = alloca i8, align 1
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !7019, metadata !DIExpression()), !dbg !7021
  store i8 %separator, ptr %separator.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %separator.addr, metadata !7020, metadata !DIExpression()), !dbg !7022
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !7023
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false), !dbg !7024
  %1 = load i8, ptr %separator.addr, align 1, !dbg !7025
  %tobool = icmp ne i8 %1, 0, !dbg !7025
  br i1 %tobool, label %if.end, label %if.then, !dbg !7027

if.then:                                          ; preds = %entry
  store i8 32, ptr %separator.addr, align 1, !dbg !7028
  br label %if.end, !dbg !7029

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, ptr %separator.addr, align 1, !dbg !7030
  %3 = load ptr, ptr %arg.addr, align 8, !dbg !7031
  %separator1 = getelementptr inbounds %struct.dynevent_arg, ptr %3, i32 0, i32 1, !dbg !7032
  store i8 %2, ptr %separator1, align 8, !dbg !7033
  ret void, !dbg !7034
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dynevent_arg_pair_init(ptr noundef %arg_pair, i8 noundef zeroext %operator, i8 noundef zeroext %separator) #0 align 16 !dbg !7035 {
entry:
  %arg_pair.addr = alloca ptr, align 8
  %operator.addr = alloca i8, align 1
  %separator.addr = alloca i8, align 1
  store ptr %arg_pair, ptr %arg_pair.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg_pair.addr, metadata !7039, metadata !DIExpression()), !dbg !7042
  store i8 %operator, ptr %operator.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %operator.addr, metadata !7040, metadata !DIExpression()), !dbg !7043
  store i8 %separator, ptr %separator.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %separator.addr, metadata !7041, metadata !DIExpression()), !dbg !7044
  %0 = load ptr, ptr %arg_pair.addr, align 8, !dbg !7045
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 24, i1 false), !dbg !7046
  %1 = load i8, ptr %operator.addr, align 1, !dbg !7047
  %tobool = icmp ne i8 %1, 0, !dbg !7047
  br i1 %tobool, label %if.end, label %if.then, !dbg !7049

if.then:                                          ; preds = %entry
  store i8 32, ptr %operator.addr, align 1, !dbg !7050
  br label %if.end, !dbg !7051

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, ptr %operator.addr, align 1, !dbg !7052
  %3 = load ptr, ptr %arg_pair.addr, align 8, !dbg !7053
  %operator1 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %3, i32 0, i32 2, !dbg !7054
  store i8 %2, ptr %operator1, align 8, !dbg !7055
  %4 = load i8, ptr %separator.addr, align 1, !dbg !7056
  %tobool2 = icmp ne i8 %4, 0, !dbg !7056
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !7058

if.then3:                                         ; preds = %if.end
  store i8 32, ptr %separator.addr, align 1, !dbg !7059
  br label %if.end4, !dbg !7060

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i8, ptr %separator.addr, align 1, !dbg !7061
  %6 = load ptr, ptr %arg_pair.addr, align 8, !dbg !7062
  %separator5 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %6, i32 0, i32 3, !dbg !7063
  store i8 %5, ptr %separator5, align 1, !dbg !7064
  ret void, !dbg !7065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dynevent_create(ptr noundef %cmd) #0 align 16 !dbg !7066 {
entry:
  %cmd.addr = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !7068, metadata !DIExpression()), !dbg !7069
  %0 = load ptr, ptr %cmd.addr, align 8, !dbg !7070
  %run_command = getelementptr inbounds %struct.dynevent_cmd, ptr %0, i32 0, i32 4, !dbg !7071
  %1 = load ptr, ptr %run_command, align 8, !dbg !7071
  %2 = load ptr, ptr %cmd.addr, align 8, !dbg !7072
  %call = call i32 %1(ptr noundef %2) #11, !dbg !7070
  ret i32 %call, !dbg !7073
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7074 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7082, metadata !DIExpression()), !dbg !7084
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7083, metadata !DIExpression()), !dbg !7085
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7086
  %1 = load i64, ptr %size.addr, align 8, !dbg !7087
  %conv = trunc i64 %1 to i32, !dbg !7087
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !7088
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7089
  %3 = load i64, ptr %size.addr, align 8, !dbg !7089
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !7089
  ret void, !dbg !7090
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #5 align 16 !dbg !7091 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7094, metadata !DIExpression()), !dbg !7095
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7096
  call void @arch_atomic_inc(ptr noundef %0) #11, !dbg !7097
  ret void, !dbg !7098
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !7099 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7104, metadata !DIExpression()), !dbg !7106
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7105, metadata !DIExpression()), !dbg !7107
  ret i1 true, !dbg !7108
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !7109 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7114, metadata !DIExpression()), !dbg !7117
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7115, metadata !DIExpression()), !dbg !7118
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7116, metadata !DIExpression()), !dbg !7119
  ret void, !dbg !7120
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #5 align 16 !dbg !7121 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7124, metadata !DIExpression()), !dbg !7125
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7126
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7127
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #10, !dbg !7128, !srcloc !7129
  ret void, !dbg !7130
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7131 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7133, metadata !DIExpression()), !dbg !7135
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7134, metadata !DIExpression()), !dbg !7136
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7137
  %1 = load i64, ptr %size.addr, align 8, !dbg !7138
  %conv = trunc i64 %1 to i32, !dbg !7138
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !7139
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7140
  %3 = load i64, ptr %size.addr, align 8, !dbg !7140
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !7140
  ret void, !dbg !7141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !7142 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7144, metadata !DIExpression()), !dbg !7145
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7146
  %call = call i32 @arch_atomic_read(ptr noundef %0) #11, !dbg !7147
  ret i32 %call, !dbg !7148
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !7149 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7151, metadata !DIExpression()), !dbg !7153
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7152, metadata !DIExpression()), !dbg !7154
  ret i1 true, !dbg !7155
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !7156 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7158, metadata !DIExpression()), !dbg !7159
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7160
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7160
  %1 = load volatile i32, ptr %counter, align 4, !dbg !7160
  ret i32 %1, !dbg !7161
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7162 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7164, metadata !DIExpression()), !dbg !7166
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7165, metadata !DIExpression()), !dbg !7167
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7168
  %1 = load i64, ptr %size.addr, align 8, !dbg !7169
  %conv = trunc i64 %1 to i32, !dbg !7169
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !7170
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7171
  %3 = load i64, ptr %size.addr, align 8, !dbg !7171
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !7171
  ret void, !dbg !7172
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !7173 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7175, metadata !DIExpression()), !dbg !7177
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7176, metadata !DIExpression()), !dbg !7178
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7179
  %1 = load i32, ptr %i.addr, align 4, !dbg !7180
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #11, !dbg !7181
  ret void, !dbg !7182
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !7183 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7185, metadata !DIExpression()), !dbg !7187
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7186, metadata !DIExpression()), !dbg !7188
  br label %do.body, !dbg !7189

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !7190
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7190
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !7190
  store volatile i32 %0, ptr %counter, align 4, !dbg !7190
  br label %do.end, !dbg !7190

do.end:                                           ; preds = %do.body
  ret void, !dbg !7192
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #5 align 16 !dbg !7193 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7195, metadata !DIExpression()), !dbg !7196
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7197
  call void @arch_atomic_dec(ptr noundef %0) #11, !dbg !7198
  ret void, !dbg !7199
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #5 align 16 !dbg !7200 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7202, metadata !DIExpression()), !dbg !7203
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7204
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7205
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #10, !dbg !7206, !srcloc !7207
  ret void, !dbg !7208
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !7209 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7213, metadata !DIExpression()), !dbg !7216
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7214, metadata !DIExpression()), !dbg !7217
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7215, metadata !DIExpression()), !dbg !7218
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7219
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7221
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7222
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11, !dbg !7223
  br i1 %call, label %if.end, label %if.then, !dbg !7224

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7225

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7226
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7227
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7228
  store ptr %3, ptr %prev1, align 8, !dbg !7229
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7230
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7231
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7232
  store ptr %5, ptr %next2, align 8, !dbg !7233
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7234
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7235
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7236
  store ptr %7, ptr %prev3, align 8, !dbg !7237
  br label %do.body, !dbg !7238

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7239

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7241

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7239

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7243
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7243
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7243
  store volatile ptr %9, ptr %next6, align 8, !dbg !7243
  br label %do.end7, !dbg !7243

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7239

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7245
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !7246 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7250, metadata !DIExpression()), !dbg !7253
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7251, metadata !DIExpression()), !dbg !7254
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7252, metadata !DIExpression()), !dbg !7255
  ret i1 true, !dbg !7256
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7257 dso_local i32 @tracing_init_dentry() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7258 dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dyn_event_write(ptr noundef %file, ptr noundef %buffer, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !7261 {
entry:
  %file.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7263, metadata !DIExpression()), !dbg !7267
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !7264, metadata !DIExpression()), !dbg !7268
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7265, metadata !DIExpression()), !dbg !7269
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !7266, metadata !DIExpression()), !dbg !7270
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7271
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !7272
  %2 = load i64, ptr %count.addr, align 8, !dbg !7273
  %3 = load ptr, ptr %ppos.addr, align 8, !dbg !7274
  %call = call i64 @trace_parse_run_command(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef @create_dyn_event) #11, !dbg !7275
  ret i64 %call, !dbg !7276
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dyn_event_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !7277 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7279, metadata !DIExpression()), !dbg !7282
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7280, metadata !DIExpression()), !dbg !7283
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !7284
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7281, metadata !DIExpression()), !dbg !7285
  %call = call i32 @tracing_check_open_get_tr(ptr noundef null) #11, !dbg !7286
  store i32 %call, ptr %ret, align 4, !dbg !7287
  %0 = load i32, ptr %ret, align 4, !dbg !7288
  %tobool = icmp ne i32 %0, 0, !dbg !7288
  br i1 %tobool, label %if.then, label %if.end, !dbg !7290

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !7291
  store i32 %1, ptr %retval, align 4, !dbg !7292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7292

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !7293
  %f_mode = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2, !dbg !7295
  %3 = load i32, ptr %f_mode, align 4, !dbg !7295
  %and = and i32 %3, 2, !dbg !7296
  %tobool1 = icmp ne i32 %and, 0, !dbg !7296
  br i1 %tobool1, label %land.lhs.true, label %if.end8, !dbg !7297

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8, !dbg !7298
  %f_flags = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 6, !dbg !7299
  %5 = load i32, ptr %f_flags, align 8, !dbg !7299
  %and2 = and i32 %5, 512, !dbg !7300
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7300
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !7301

if.then4:                                         ; preds = %land.lhs.true
  %call5 = call i32 @dyn_events_release_all(ptr noundef null) #11, !dbg !7302
  store i32 %call5, ptr %ret, align 4, !dbg !7304
  %6 = load i32, ptr %ret, align 4, !dbg !7305
  %cmp = icmp slt i32 %6, 0, !dbg !7307
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !7308

if.then6:                                         ; preds = %if.then4
  %7 = load i32, ptr %ret, align 4, !dbg !7309
  store i32 %7, ptr %retval, align 4, !dbg !7310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7310

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !7311

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %if.end
  %8 = load ptr, ptr %file.addr, align 8, !dbg !7312
  %call9 = call i32 @seq_open(ptr noundef %8, ptr noundef @dyn_event_seq_op) #11, !dbg !7313
  store i32 %call9, ptr %retval, align 4, !dbg !7314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7314

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !7315
  %9 = load i32, ptr %retval, align 4, !dbg !7315
  ret i32 %9, !dbg !7315
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7316 dso_local i64 @trace_parse_run_command(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @create_dyn_event(ptr noundef %raw_command) #0 align 16 !dbg !7319 {
entry:
  %retval = alloca i32, align 4
  %raw_command.addr = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %raw_command, ptr %raw_command.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %raw_command.addr, metadata !7321, metadata !DIExpression()), !dbg !7330
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #10, !dbg !7331
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !7322, metadata !DIExpression()), !dbg !7332
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !7333
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7323, metadata !DIExpression()), !dbg !7334
  store i32 -19, ptr %ret, align 4, !dbg !7334
  %0 = load ptr, ptr %raw_command.addr, align 8, !dbg !7335
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !7335
  %1 = load i8, ptr %arrayidx, align 1, !dbg !7335
  %conv = zext i8 %1 to i32, !dbg !7335
  %cmp = icmp eq i32 %conv, 45, !dbg !7337
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !7338

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %raw_command.addr, align 8, !dbg !7339
  %arrayidx2 = getelementptr i8, ptr %2, i64 0, !dbg !7339
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !7339
  %conv3 = zext i8 %3 to i32, !dbg !7339
  %cmp4 = icmp eq i32 %conv3, 33, !dbg !7340
  br i1 %cmp4, label %if.then, label %if.end, !dbg !7341

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %raw_command.addr, align 8, !dbg !7342
  %call = call i32 @dyn_event_release(ptr noundef %4, ptr noundef null) #11, !dbg !7343
  store i32 %call, ptr %retval, align 4, !dbg !7344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7344

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @dyn_event_ops_mutex) #11, !dbg !7345
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !7346
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7324, metadata !DIExpression()), !dbg !7346
  %5 = load ptr, ptr @dyn_event_ops_list, align 8, !dbg !7346
  store ptr %5, ptr %__mptr, align 8, !dbg !7346
  %6 = load ptr, ptr %__mptr, align 8, !dbg !7346
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !7346
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !7347
  %7 = load ptr, ptr %tmp, align 8, !dbg !7346
  store ptr %7, ptr %ops, align 8, !dbg !7347
  br label %for.cond, !dbg !7347

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %ops, align 8, !dbg !7348
  %list = getelementptr inbounds %struct.dyn_event_operations, ptr %8, i32 0, i32 0, !dbg !7348
  %cmp6 = icmp eq ptr %list, @dyn_event_ops_list, !dbg !7348
  %lnot = xor i1 %cmp6, true, !dbg !7348
  br i1 %lnot, label %for.body, label %for.end, !dbg !7347

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %ops, align 8, !dbg !7349
  %create = getelementptr inbounds %struct.dyn_event_operations, ptr %9, i32 0, i32 1, !dbg !7351
  %10 = load ptr, ptr %create, align 8, !dbg !7351
  %11 = load ptr, ptr %raw_command.addr, align 8, !dbg !7352
  %call8 = call i32 %10(ptr noundef %11) #11, !dbg !7349
  store i32 %call8, ptr %ret, align 4, !dbg !7353
  %12 = load i32, ptr %ret, align 4, !dbg !7354
  %tobool = icmp ne i32 %12, 0, !dbg !7354
  br i1 %tobool, label %lor.lhs.false9, label %if.then12, !dbg !7356

lor.lhs.false9:                                   ; preds = %for.body
  %13 = load i32, ptr %ret, align 4, !dbg !7357
  %cmp10 = icmp ne i32 %13, -125, !dbg !7358
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !7359

if.then12:                                        ; preds = %lor.lhs.false9, %for.body
  br label %for.end, !dbg !7360

if.end13:                                         ; preds = %lor.lhs.false9
  br label %for.inc, !dbg !7361

for.inc:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #10, !dbg !7362
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !7327, metadata !DIExpression()), !dbg !7362
  %14 = load ptr, ptr %ops, align 8, !dbg !7362
  %list15 = getelementptr inbounds %struct.dyn_event_operations, ptr %14, i32 0, i32 0, !dbg !7362
  %next = getelementptr inbounds %struct.list_head, ptr %list15, i32 0, i32 0, !dbg !7362
  %15 = load ptr, ptr %next, align 8, !dbg !7362
  store ptr %15, ptr %__mptr14, align 8, !dbg !7362
  %16 = load ptr, ptr %__mptr14, align 8, !dbg !7362
  %add.ptr17 = getelementptr i8, ptr %16, i64 0, !dbg !7362
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !7362
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #10, !dbg !7348
  %17 = load ptr, ptr %tmp16, align 8, !dbg !7362
  store ptr %17, ptr %ops, align 8, !dbg !7348
  br label %for.cond, !dbg !7348, !llvm.loop !7363

for.end:                                          ; preds = %if.then12, %for.cond
  call void @mutex_unlock(ptr noundef @dyn_event_ops_mutex) #11, !dbg !7365
  %18 = load i32, ptr %ret, align 4, !dbg !7366
  %cmp18 = icmp eq i32 %18, -125, !dbg !7368
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !7369

if.then20:                                        ; preds = %for.end
  store i32 -22, ptr %ret, align 4, !dbg !7370
  br label %if.end21, !dbg !7371

if.end21:                                         ; preds = %if.then20, %for.end
  %19 = load i32, ptr %ret, align 4, !dbg !7372
  store i32 %19, ptr %retval, align 4, !dbg !7373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7373

cleanup:                                          ; preds = %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !7374
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #10, !dbg !7374
  %20 = load i32, ptr %retval, align 4, !dbg !7374
  ret i32 %20, !dbg !7374
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7375 dso_local i32 @tracing_check_open_get_tr(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7376 dso_local i32 @seq_open(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dyn_event_seq_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !7379 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7381, metadata !DIExpression()), !dbg !7384
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7382, metadata !DIExpression()), !dbg !7385
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #10, !dbg !7386
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !7383, metadata !DIExpression()), !dbg !7387
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7388
  store ptr %0, ptr %ev, align 8, !dbg !7387
  %1 = load ptr, ptr %ev, align 8, !dbg !7389
  %tobool = icmp ne ptr %1, null, !dbg !7389
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7391

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ev, align 8, !dbg !7392
  %ops = getelementptr inbounds %struct.dyn_event, ptr %2, i32 0, i32 1, !dbg !7393
  %3 = load ptr, ptr %ops, align 8, !dbg !7393
  %tobool1 = icmp ne ptr %3, null, !dbg !7392
  br i1 %tobool1, label %if.then, label %if.end, !dbg !7394

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %ev, align 8, !dbg !7395
  %ops2 = getelementptr inbounds %struct.dyn_event, ptr %4, i32 0, i32 1, !dbg !7396
  %5 = load ptr, ptr %ops2, align 8, !dbg !7396
  %show = getelementptr inbounds %struct.dyn_event_operations, ptr %5, i32 0, i32 2, !dbg !7397
  %6 = load ptr, ptr %show, align 8, !dbg !7397
  %7 = load ptr, ptr %m.addr, align 8, !dbg !7398
  %8 = load ptr, ptr %ev, align 8, !dbg !7399
  %call = call i32 %6(ptr noundef %7, ptr noundef %8) #11, !dbg !7395
  store i32 %call, ptr %retval, align 4, !dbg !7400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7400

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !7401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7401

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #10, !dbg !7402
  %9 = load i32, ptr %retval, align 4, !dbg !7402
  ret i32 %9, !dbg !7402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_buf_clear(ptr noundef %s) #6 align 16 !dbg !7403 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7407, metadata !DIExpression()), !dbg !7408
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7409
  %len = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !7410
  store i64 0, ptr %len, align 8, !dbg !7411
  %1 = load ptr, ptr %s.addr, align 8, !dbg !7412
  %size = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 1, !dbg !7414
  %2 = load i64, ptr %size, align 8, !dbg !7414
  %tobool = icmp ne i64 %2, 0, !dbg !7412
  br i1 %tobool, label %if.then, label %if.end, !dbg !7415

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !7416
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %3, i32 0, i32 0, !dbg !7417
  %4 = load ptr, ptr %buffer, align 8, !dbg !7417
  %arrayidx = getelementptr i8, ptr %4, i64 0, !dbg !7416
  store i8 0, ptr %arrayidx, align 1, !dbg !7418
  br label %if.end, !dbg !7416

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7419
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!6241, !6242, !6243, !6244, !6245, !6246, !6247, !6248}
!llvm.ident = !{!6249}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/trace/trace_dynevent.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9ef9915df72aa1e7c51c1ba0631cd7d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "dyn_event_ops_mutex", scope: !9, file: !2, line: 19, type: !800, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/trace/.trace_dynevent.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/trace/trace_dynevent\22 -D KBUILD_BASENAME=\22trace_dynevent\22 -D KBUILD_MODNAME=\22trace_dynevent\22 -D __KBUILD_MODNAME=kmod_trace_dynevent -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/trace/trace_dynevent.ll kernel/trace/trace_dynevent.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !297, globals: !6203, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !23, !30, !35, !40, !135, !141, !157, !165, !172, !178, !185, !193, !200, !206, !212, !221, !226, !231, !237, !246, !254, !260, !267, !273, !278, !292}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !12, line: 253, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!16 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!17 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!18 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!19 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!20 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!21 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!22 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !24, line: 312, baseType: !13, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!27 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!28 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!29 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !31, line: 2052, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!34 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !36, line: 65, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!39 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !42, file: !41, line: 147, baseType: !13, size: 32, elements: !132)
!41 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !41, line: 135, size: 512, elements: !43)
!43 = !{!44, !47, !49, !51, !55, !56, !72, !130, !131}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !42, file: !41, line: 136, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !42, file: !41, line: 137, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !42, file: !41, line: 138, baseType: !50, size: 32, offset: 128)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !42, file: !41, line: 139, baseType: !52, size: 16, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !53, line: 24, baseType: !54)
!53 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !41, line: 150, baseType: !40, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !42, file: !41, line: 151, baseType: !57, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !41, line: 64, baseType: !59)
!59 = !DISubroutineType(types: !60)
!60 = !{!50, !61, !50, !48, !62, !68}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 61, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !65, line: 72, baseType: !66)
!65 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !65, line: 16, baseType: !67)
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !53, line: 52, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !65, line: 88, baseType: !71)
!71 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !42, file: !41, line: 152, baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !41, line: 117, size: 256, elements: !75)
!75 = !{!76, !81}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !74, file: !41, line: 118, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !53, line: 174, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 172, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !78, file: !53, line: 173, baseType: !50, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !74, file: !41, line: 119, baseType: !82, size: 192, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !83, line: 41, baseType: !84)
!83 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !83, line: 37, size: 192, elements: !85)
!85 = !{!86, !124}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !84, file: !83, line: 38, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !88, line: 29, baseType: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !88, line: 17, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 18, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 18, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !92, file: !88, line: 19, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !96, line: 14, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !95, file: !96, line: 15, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !100, line: 44, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !100, line: 14, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !100, line: 15, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !100, line: 15, size: 32, elements: !105)
!105 = !{!106, !107, !117}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !104, file: !100, line: 16, baseType: !77, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !100, line: 24, baseType: !108, size: 16)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !100, line: 24, size: 16, elements: !109)
!109 = !{!110, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !108, file: !100, line: 25, baseType: !111, size: 8)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !112, line: 17, baseType: !113)
!112 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !114, line: 21, baseType: !115)
!114 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !108, file: !100, line: 26, baseType: !111, size: 8, offset: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !100, line: 28, baseType: !118, size: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !100, line: 28, size: 32, elements: !119)
!119 = !{!120, !123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !118, file: !100, line: 29, baseType: !121, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !112, line: 19, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !114, line: 24, baseType: !54)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !118, file: !100, line: 30, baseType: !121, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !84, file: !83, line: 39, baseType: !125, size: 128, offset: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 190, size: 128, elements: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !53, line: 191, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !53, line: 191, baseType: !128, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !42, file: !41, line: 153, baseType: !48, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !42, file: !41, line: 154, baseType: !48, size: 64, offset: 448)
!132 = !{!133, !134}
!133 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!134 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !136, line: 16, baseType: !13, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "TT_NONE", value: 0)
!139 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!140 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !142, line: 1325, baseType: !13, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!144 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!145 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!146 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!147 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!148 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!149 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!150 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!151 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!152 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!153 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!154 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!155 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!156 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !158, line: 68, baseType: !13, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!159 = !{!160, !161, !162, !163, !164}
!160 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!161 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!162 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!163 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!164 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !166, line: 51, baseType: !13, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!167 = !{!168, !169, !170, !171}
!168 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!169 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!170 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!171 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !173, line: 45, baseType: !13, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!174 = !{!175, !176, !177}
!175 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!176 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!177 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !179, line: 487, baseType: !13, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!180 = !{!181, !182, !183, !184}
!181 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!182 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!183 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!184 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !186, line: 620, baseType: !13, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!187 = !{!188, !189, !190, !191, !192}
!188 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!189 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!190 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!191 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!192 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !186, line: 597, baseType: !50, size: 32, elements: !194)
!194 = !{!195, !196, !197, !198, !199}
!195 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!196 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!197 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!198 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!199 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !201, line: 30, baseType: !13, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!204 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!205 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !207, line: 26, baseType: !13, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!210 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!211 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !179, line: 547, baseType: !13, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220}
!214 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!215 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!216 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!217 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!218 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!219 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!220 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !179, line: 564, baseType: !13, size: 32, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!224 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!225 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !179, line: 577, baseType: !13, size: 32, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!229 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!230 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !179, line: 503, baseType: !13, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236}
!233 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!234 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!235 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!236 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !238, line: 593, baseType: !50, size: 32, elements: !239)
!238 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!239 = !{!240, !241, !242, !243, !244, !245}
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!243 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!244 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!245 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !247, line: 9, baseType: !13, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!250 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!251 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!252 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!253 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !255, line: 54, baseType: !13, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!256 = !{!257, !258, !259}
!257 = !DIEnumerator(name: "USRQUOTA", value: 0)
!258 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!259 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !261, line: 15, baseType: !13, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!262 = !{!263, !264, !265, !266}
!263 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!264 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!265 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!266 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !12, line: 158, baseType: !13, size: 32, elements: !268)
!268 = !{!269, !270, !271, !272}
!269 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!270 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!271 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!272 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 10, baseType: !13, size: 32, elements: !275)
!274 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!275 = !{!276, !277}
!276 = !DIEnumerator(name: "false", value: 0)
!277 = !DIEnumerator(name: "true", value: 1)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 355, baseType: !13, size: 32, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!280 = !DIEnumerator(name: "TRACE_EVENT_FL_FILTERED", value: 1)
!281 = !DIEnumerator(name: "TRACE_EVENT_FL_CAP_ANY", value: 2)
!282 = !DIEnumerator(name: "TRACE_EVENT_FL_NO_SET_FILTER", value: 4)
!283 = !DIEnumerator(name: "TRACE_EVENT_FL_IGNORE_ENABLE", value: 8)
!284 = !DIEnumerator(name: "TRACE_EVENT_FL_TRACEPOINT", value: 16)
!285 = !DIEnumerator(name: "TRACE_EVENT_FL_DYNAMIC", value: 32)
!286 = !DIEnumerator(name: "TRACE_EVENT_FL_KPROBE", value: 64)
!287 = !DIEnumerator(name: "TRACE_EVENT_FL_UPROBE", value: 128)
!288 = !DIEnumerator(name: "TRACE_EVENT_FL_EPROBE", value: 256)
!289 = !DIEnumerator(name: "TRACE_EVENT_FL_FPROBE", value: 512)
!290 = !DIEnumerator(name: "TRACE_EVENT_FL_CUSTOM", value: 1024)
!291 = !DIEnumerator(name: "TRACE_EVENT_FL_TEST_STR", value: 2048)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dynevent_type", file: !12, line: 509, baseType: !13, size: 32, elements: !293)
!293 = !{!294, !295, !296}
!294 = !DIEnumerator(name: "DYNEVENT_TYPE_SYNTH", value: 1)
!295 = !DIEnumerator(name: "DYNEVENT_TYPE_KPROBE", value: 2)
!296 = !DIEnumerator(name: "DYNEVENT_TYPE_NONE", value: 3)
!297 = !{!48, !298, !936, !6167, !3628, !6197, !6200, !6201, !392, !6173, !868}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 372, size: 1024, elements: !300)
!300 = !{!301, !302, !343, !5870, !6149, !6150, !6151, !6156, !6157, !6158, !6159, !6160, !6163}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !299, file: !12, line: 373, baseType: !125, size: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !299, file: !12, line: 374, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !12, line: 291, size: 576, elements: !305)
!305 = !{!306, !307, !308, !309, !313, !337, !341, !342}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !304, file: !12, line: 292, baseType: !45, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !304, file: !12, line: 293, baseType: !48, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !304, file: !12, line: 295, baseType: !48, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !304, file: !12, line: 297, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!50, !298, !11, !48}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !304, file: !12, line: 299, baseType: !314, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !12, line: 275, size: 320, elements: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !315, file: !12, line: 276, baseType: !45, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !12, line: 277, baseType: !319, size: 256, offset: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !12, line: 277, size: 256, elements: !320)
!320 = !{!321, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !12, line: 278, baseType: !322, size: 256)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !12, line: 278, size: 256, elements: !323)
!323 = !{!324, !325, !327, !328, !330, !331, !332}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !12, line: 279, baseType: !45, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !322, file: !12, line: 280, baseType: !326, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !322, file: !12, line: 281, baseType: !326, size: 32, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !322, file: !12, line: 282, baseType: !329, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !322, file: !12, line: 283, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !322, file: !12, line: 284, baseType: !326, size: 32, offset: 160)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !322, file: !12, line: 285, baseType: !326, size: 32, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !319, file: !12, line: 287, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!50, !298}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !304, file: !12, line: 300, baseType: !338, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!128, !298}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !304, file: !12, line: 301, baseType: !125, size: 128, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !304, file: !12, line: 302, baseType: !334, size: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !12, line: 375, baseType: !344, size: 64, offset: 192)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !12, line: 375, size: 64, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !12, line: 376, baseType: !45, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !344, file: !12, line: 378, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !350, line: 32, size: 640, elements: !351)
!350 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!351 = !{!352, !353, !375, !5858, !5859, !5860, !5861, !5862, !5863}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !350, line: 33, baseType: !45, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !349, file: !350, line: 34, baseType: !354, size: 128, offset: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !355, line: 85, size: 128, elements: !356)
!355 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !354, file: !355, line: 86, baseType: !77, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !355, line: 101, baseType: !359, size: 64, offset: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 101, size: 64, elements: !360)
!360 = !{!361, !362, !372}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !359, file: !355, line: 102, baseType: !67, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !359, file: !355, line: 103, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !355, line: 117, size: 128, elements: !365)
!365 = !{!366, !369, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !364, file: !355, line: 118, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !112, line: 20, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !114, line: 26, baseType: !50)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !364, file: !355, line: 119, baseType: !367, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !364, file: !355, line: 120, baseType: !371, size: 64, offset: 64)
!371 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !355, line: 104, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !355, line: 104, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !349, file: !350, line: 35, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !378, line: 61, size: 128, elements: !379)
!378 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !377, file: !378, line: 62, baseType: !48, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !378, line: 63, baseType: !382, size: 64, offset: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !378, line: 63, size: 64, elements: !383)
!383 = !{!384, !385, !5857}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !382, file: !378, line: 65, baseType: !67, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !382, file: !378, line: 66, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !388, line: 169, size: 192, elements: !389)
!388 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!389 = !{!390, !391, !5856}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !388, line: 170, baseType: !386, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !387, file: !388, line: 171, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !24, line: 402, size: 9216, align: 512, elements: !394)
!394 = !{!395, !396, !397, !401, !5542, !5568, !5569, !5570, !5571, !5575, !5578, !5579, !5580, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5647, !5651, !5669, !5686, !5687, !5688, !5689, !5698, !5721, !5722, !5725, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5737, !5738, !5823, !5824, !5825, !5826, !5827, !5829, !5830, !5839, !5840, !5841, !5842, !5844, !5845, !5846, !5852, !5853, !5854, !5855}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !393, file: !24, line: 403, baseType: !23, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !393, file: !24, line: 406, baseType: !125, size: 128, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !24, line: 409, baseType: !398, size: 448, offset: 192)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 56)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !393, file: !24, line: 417, baseType: !402, size: 768, offset: 640)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !24, line: 45, size: 768, elements: !403)
!403 = !{!404, !5536, !5537, !5538, !5541}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !402, file: !24, line: 46, baseType: !405, size: 512)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !406, line: 64, size: 512, elements: !407)
!406 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!407 = !{!408, !409, !410, !412, !459, !5525, !5526, !5531, !5532, !5533, !5534, !5535}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !406, line: 65, baseType: !45, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !405, file: !406, line: 66, baseType: !125, size: 128, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !405, file: !406, line: 67, baseType: !411, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !405, file: !406, line: 68, baseType: !413, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !406, line: 168, size: 768, elements: !415)
!415 = !{!416, !417, !418, !419}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !414, file: !406, line: 169, baseType: !125, size: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !414, file: !406, line: 170, baseType: !87, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !414, file: !406, line: 171, baseType: !405, size: 512, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !414, file: !406, line: 172, baseType: !420, size: 64, offset: 704)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !406, line: 133, size: 192, elements: !423)
!423 = !{!424, !431, !436}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !422, file: !406, line: 134, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!50, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !422, file: !406, line: 135, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!45, !429}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !422, file: !406, line: 136, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!50, !429, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !406, line: 125, size: 20736, elements: !443)
!443 = !{!444, !449, !453, !454, !458}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !442, file: !406, line: 126, baseType: !445, size: 192)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 192, elements: !447)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!447 = !{!448}
!448 = !DISubrange(count: 3)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !442, file: !406, line: 127, baseType: !450, size: 4096, offset: 192)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 4096, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !442, file: !406, line: 128, baseType: !50, size: 32, offset: 4288)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !442, file: !406, line: 129, baseType: !455, size: 16384, offset: 4320)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 2048)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !442, file: !406, line: 130, baseType: !50, size: 32, offset: 20704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !405, file: !406, line: 69, baseType: !460, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !406, line: 116, size: 384, elements: !463)
!463 = !{!464, !468, !490, !5513, !5517, !5521}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !462, file: !406, line: 117, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !411}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !462, file: !406, line: 118, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !472, line: 254, size: 128, elements: !473)
!472 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!473 = !{!474, !486}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !471, file: !472, line: 255, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !411, !481, !446}
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !53, line: 66, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !65, line: 73, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !65, line: 15, baseType: !371)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !472, line: 30, size: 128, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !482, file: !472, line: 31, baseType: !45, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !482, file: !472, line: 32, baseType: !52, size: 16, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !471, file: !472, line: 256, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!478, !411, !481, !45, !63}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !462, file: !406, line: 119, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !472, line: 84, size: 320, elements: !495)
!495 = !{!496, !497, !501, !5509, !5511}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !472, line: 85, baseType: !45, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !494, file: !472, line: 86, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!52, !411, !481, !50}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !494, file: !472, line: 88, baseType: !502, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!52, !411, !505, !50}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !472, line: 175, size: 512, elements: !507)
!507 = !{!508, !509, !510, !511, !5500, !5504, !5505}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !506, file: !472, line: 176, baseType: !482, size: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !506, file: !472, line: 177, baseType: !63, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !506, file: !472, line: 178, baseType: !48, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !506, file: !472, line: 179, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 472, size: 1536, align: 64, elements: !517)
!517 = !{!518, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5494, !5495, !5496, !5497, !5498, !5499}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !516, file: !31, line: 473, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 641, size: 4800, elements: !521)
!521 = !{!522, !523, !524, !532, !533, !540, !541, !544, !545, !5274, !5275, !5276, !5277, !5278, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5317, !5320, !5321, !5322, !5331, !5332, !5333, !5334}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !520, file: !31, line: 642, baseType: !52, size: 16)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !520, file: !31, line: 643, baseType: !54, size: 16, offset: 16)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !520, file: !31, line: 644, baseType: !525, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !526, line: 23, baseType: !527)
!526 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 21, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !527, file: !526, line: 22, baseType: !530, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !53, line: 37, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !65, line: 49, baseType: !13)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !520, file: !31, line: 645, baseType: !125, size: 128, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !520, file: !31, line: 646, baseType: !534, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !526, line: 28, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 26, size: 32, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !535, file: !526, line: 27, baseType: !538, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !53, line: 38, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !65, line: 50, baseType: !13)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !520, file: !31, line: 647, baseType: !13, size: 32, offset: 224)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !520, file: !31, line: 650, baseType: !542, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 607, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !520, file: !31, line: 651, baseType: !542, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !520, file: !31, line: 654, baseType: !546, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1966, size: 2048, align: 512, elements: !549)
!549 = !{!550, !5108, !5118, !5122, !5126, !5130, !5134, !5138, !5142, !5146, !5150, !5151, !5155, !5159, !5196, !5225, !5229, !5235, !5239, !5243, !5247, !5251, !5255, !5261, !5265}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !548, file: !31, line: 1967, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!554, !519, !554, !13}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !556, line: 82, size: 1536, elements: !557)
!556 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!557 = !{!558, !559, !569, !577, !578, !598, !599, !603, !616, !5092, !5093, !5094, !5095, !5100, !5101, !5102}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !555, file: !556, line: 84, baseType: !13, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !555, file: !556, line: 85, baseType: !560, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !561, line: 275, baseType: !562)
!561 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !561, line: 275, size: 32, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !562, file: !561, line: 275, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !561, line: 69, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !561, line: 64, size: 32, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !566, file: !561, line: 65, baseType: !13, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !555, file: !556, line: 86, baseType: !570, size: 128, offset: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !571, line: 38, size: 128, elements: !572)
!571 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!572 = !{!573, !575}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !571, line: 39, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !570, file: !571, line: 39, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !555, file: !556, line: 87, baseType: !554, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !555, file: !556, line: 88, baseType: !579, size: 128, offset: 256)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !556, line: 49, size: 128, elements: !580)
!580 = !{!581, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !556, line: 50, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !556, line: 50, size: 64, elements: !583)
!583 = !{!584, !591}
!584 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !556, line: 51, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !582, file: !556, line: 51, size: 64, elements: !586)
!586 = !{!587, !590}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !585, file: !556, line: 52, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !112, line: 21, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !114, line: 27, baseType: !13)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !585, file: !556, line: 52, baseType: !588, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !582, file: !556, line: 54, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !112, line: 23, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !114, line: 31, baseType: !594)
!594 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !579, file: !556, line: 56, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !555, file: !556, line: 89, baseType: !519, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !555, file: !556, line: 91, baseType: !600, size: 256, offset: 448)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !555, file: !556, line: 94, baseType: !604, size: 64, offset: 704)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !605, line: 25, size: 64, elements: !606)
!605 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !605, line: 26, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !605, line: 26, size: 64, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !608, file: !605, line: 28, baseType: !593, size: 64, align: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !605, line: 30, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !608, file: !605, line: 30, size: 64, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !612, file: !605, line: 31, baseType: !87, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !612, file: !605, line: 32, baseType: !50, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !555, file: !556, line: 95, baseType: !617, size: 64, offset: 768)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !556, line: 128, size: 1024, align: 512, elements: !620)
!620 = !{!621, !625, !626, !633, !639, !643, !647, !651, !652, !656, !660, !5082, !5086}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !619, file: !556, line: 129, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!50, !554, !13}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !619, file: !556, line: 130, baseType: !622, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !619, file: !556, line: 131, baseType: !627, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!50, !630, !632}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !619, file: !556, line: 132, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!50, !630, !13, !45, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !619, file: !556, line: 134, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!50, !630}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !619, file: !556, line: 135, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!50, !554}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !619, file: !556, line: 136, baseType: !648, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !554}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !619, file: !556, line: 137, baseType: !648, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !619, file: !556, line: 138, baseType: !653, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !554, !519}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !619, file: !556, line: 139, baseType: !657, size: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!446, !554, !446, !50}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !619, file: !556, line: 140, baseType: !661, size: 64, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!664, !5081}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !666, line: 70, size: 256, elements: !667)
!666 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!667 = !{!668, !669, !5077, !5078}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !665, file: !666, line: 71, baseType: !554, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !665, file: !666, line: 72, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1190, size: 10752, elements: !672)
!672 = !{!673, !674, !677, !678, !679, !680, !728, !4787, !4827, !4912, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4929, !4933, !4934, !4937, !4940, !4943, !4946, !4947, !4948, !4989, !5012, !5013, !5014, !5015, !5016, !5017, !5020, !5021, !5027, !5028, !5029, !5030, !5031, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !671, file: !31, line: 1191, baseType: !125, size: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !671, file: !31, line: 1192, baseType: !675, size: 32, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !53, line: 21, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !53, line: 18, baseType: !588)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !671, file: !31, line: 1193, baseType: !115, size: 8, offset: 160)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !671, file: !31, line: 1194, baseType: !67, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !671, file: !31, line: 1195, baseType: !69, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !671, file: !31, line: 1196, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2366, size: 576, elements: !683)
!683 = !{!684, !685, !686, !692, !696, !700, !704, !705, !706, !716, !720, !721, !722, !724, !725, !726, !727}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !682, file: !31, line: 2367, baseType: !45, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !682, file: !31, line: 2368, baseType: !50, size: 32, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !682, file: !31, line: 2376, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!50, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !666, line: 21, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !682, file: !31, line: 2377, baseType: !693, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 75, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !682, file: !31, line: 2378, baseType: !697, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!554, !681, !50, !45, !48}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !682, file: !31, line: 2380, baseType: !701, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !670}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !682, file: !31, line: 2381, baseType: !392, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !682, file: !31, line: 2382, baseType: !681, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !682, file: !31, line: 2383, baseType: !707, size: 64, offset: 512)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !53, line: 194, size: 64, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !707, file: !53, line: 195, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !53, line: 198, size: 128, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !53, line: 199, baseType: !710, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !711, file: !53, line: 199, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !682, file: !31, line: 2385, baseType: !717, offset: 576)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !718, line: 206, elements: !719)
!718 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!719 = !{}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !682, file: !31, line: 2386, baseType: !717, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !682, file: !31, line: 2387, baseType: !717, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !682, file: !31, line: 2388, baseType: !723, offset: 576)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, elements: !447)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !682, file: !31, line: 2390, baseType: !717, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !682, file: !31, line: 2391, baseType: !717, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !682, file: !31, line: 2392, baseType: !717, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !682, file: !31, line: 2393, baseType: !717, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !671, file: !31, line: 1197, baseType: !729, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 2057, size: 1664, elements: !732)
!732 = !{!733, !737, !741, !742, !746, !752, !756, !757, !758, !762, !766, !770, !771, !772, !778, !783, !784, !4712, !4713, !4714, !4715, !4719, !4723, !4770, !4785, !4786}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !731, file: !31, line: 2058, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!519, !670}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !731, file: !31, line: 2059, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !519}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !731, file: !31, line: 2060, baseType: !738, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !731, file: !31, line: 2062, baseType: !743, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !519, !50}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !731, file: !31, line: 2063, baseType: !747, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!50, !519, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 309, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !731, file: !31, line: 2064, baseType: !753, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!50, !519}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !731, file: !31, line: 2065, baseType: !738, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !731, file: !31, line: 2066, baseType: !701, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !731, file: !31, line: 2067, baseType: !759, size: 64, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!50, !670, !50}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !731, file: !31, line: 2068, baseType: !763, size: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!50, !670, !30}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !731, file: !31, line: 2069, baseType: !767, size: 64, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!50, !670}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !731, file: !31, line: 2070, baseType: !763, size: 64, offset: 704)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !731, file: !31, line: 2071, baseType: !767, size: 64, offset: 768)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !731, file: !31, line: 2072, baseType: !773, size: 64, offset: 832)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!50, !554, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 62, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !731, file: !31, line: 2073, baseType: !779, size: 64, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!50, !670, !782, !446}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !731, file: !31, line: 2074, baseType: !701, size: 64, offset: 960)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !731, file: !31, line: 2076, baseType: !785, size: 64, offset: 1024)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!50, !788, !554}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !790, line: 17, size: 960, elements: !791)
!790 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !820, !841, !842, !4711}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !789, file: !790, line: 18, baseType: !446, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !789, file: !790, line: 19, baseType: !63, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !789, file: !790, line: 20, baseType: !63, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !789, file: !790, line: 21, baseType: !63, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !789, file: !790, line: 22, baseType: !63, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !789, file: !790, line: 23, baseType: !69, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !789, file: !790, line: 24, baseType: !69, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !789, file: !790, line: 25, baseType: !800, size: 256, offset: 448)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !801, line: 66, size: 256, elements: !802)
!801 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!802 = !{!803, !812, !814, !819}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !800, file: !801, line: 67, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !805, line: 13, baseType: !806)
!805 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !53, line: 181, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 179, size: 64, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !807, file: !53, line: 180, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !112, line: 22, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !114, line: 30, baseType: !71)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !800, file: !801, line: 68, baseType: !813, size: 32, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !96, line: 23, baseType: !95)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !800, file: !801, line: 70, baseType: !815, size: 32, offset: 96)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !816, line: 15, size: 32, elements: !817)
!816 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !815, file: !816, line: 20, baseType: !77, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !800, file: !801, line: 72, baseType: !125, size: 128, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !789, file: !790, line: 26, baseType: !821, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !790, line: 32, size: 256, elements: !824)
!824 = !{!825, !829, !833, !837}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !823, file: !790, line: 33, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!48, !788, !68}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !823, file: !790, line: 34, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !788, !48}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !823, file: !790, line: 35, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!48, !788, !48, !68}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !823, file: !790, line: 36, baseType: !838, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!50, !788, !48}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !789, file: !790, line: 27, baseType: !50, size: 32, offset: 768)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !789, file: !790, line: 28, baseType: !843, size: 64, offset: 832)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 994, size: 1856, align: 64, elements: !846)
!846 = !{!847, !866, !867, !869, !870, !871, !872, !873, !4530, !4531, !4540, !4546, !4547, !4701, !4702, !4703, !4704, !4706, !4707, !4710}
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !31, line: 995, baseType: !848, size: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !31, line: 995, size: 128, elements: !849)
!849 = !{!850, !856, !865}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !848, file: !31, line: 996, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !852, line: 60, size: 64, elements: !853)
!852 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !851, file: !852, line: 61, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !848, file: !31, line: 997, baseType: !857, size: 128, align: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !53, line: 232, size: 128, align: 64, elements: !858)
!858 = !{!859, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !53, line: 233, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !857, file: !53, line: 234, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !860}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !848, file: !31, line: 998, baseType: !13, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !845, file: !31, line: 1005, baseType: !87, size: 32, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !845, file: !31, line: 1006, baseType: !868, size: 32, offset: 160)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !53, line: 156, baseType: !13)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !845, file: !31, line: 1007, baseType: !804, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !845, file: !31, line: 1008, baseType: !800, size: 256, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !845, file: !31, line: 1009, baseType: !69, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !845, file: !31, line: 1010, baseType: !13, size: 32, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !845, file: !31, line: 1011, baseType: !874, size: 256, offset: 640)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 948, size: 256, elements: !875)
!875 = !{!876, !897, !4526, !4527, !4528, !4529}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !874, file: !31, line: 949, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !878, line: 34, baseType: !879)
!878 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 25, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !879, file: !878, line: 26, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !883, line: 27, baseType: !884)
!883 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !883, line: 13, size: 64, elements: !885)
!885 = !{!886, !896}
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !883, line: 14, baseType: !887, size: 32)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !883, line: 14, size: 32, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !887, file: !883, line: 15, baseType: !77, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !883, line: 16, baseType: !891, size: 32)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !883, line: 16, size: 32, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !891, file: !883, line: 18, baseType: !111, size: 8)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !891, file: !883, line: 19, baseType: !895, size: 24, offset: 8)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 24, elements: !447)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !884, file: !883, line: 26, baseType: !99, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !874, file: !31, line: 950, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !247, line: 59, size: 768, elements: !900)
!900 = !{!901, !907, !908, !909, !913, !914, !915, !916}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !899, file: !247, line: 61, baseType: !902, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !903, line: 113, baseType: !904)
!903 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !903, line: 111, size: 32, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !904, file: !903, line: 112, baseType: !77, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !899, file: !247, line: 62, baseType: !13, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !899, file: !247, line: 63, baseType: !87, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !899, file: !247, line: 65, baseType: !910, size: 256, offset: 128)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 256, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 4)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !899, file: !247, line: 66, baseType: !707, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !899, file: !247, line: 68, baseType: !82, size: 192, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !899, file: !247, line: 69, baseType: !857, size: 128, align: 64, offset: 640)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !899, file: !247, line: 70, baseType: !917, offset: 768)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, elements: !1672)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !247, line: 54, size: 128, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !918, file: !247, line: 55, baseType: !50, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !918, file: !247, line: 56, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !924, line: 26, size: 1152, elements: !925)
!924 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!925 = !{!926, !940, !941, !942, !4515, !4516, !4517, !4518, !4521, !4522, !4523, !4524, !4525}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !923, file: !924, line: 27, baseType: !927, size: 192)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !928, line: 19, size: 192, elements: !929)
!928 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!929 = !{!930, !938, !939}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !927, file: !928, line: 20, baseType: !931, size: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !932, line: 296, size: 128, elements: !933)
!932 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!933 = !{!934, !935, !937}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !931, file: !932, line: 297, baseType: !87, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !931, file: !932, line: 299, baseType: !936, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !53, line: 154, baseType: !13)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !931, file: !932, line: 300, baseType: !48, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !927, file: !928, line: 21, baseType: !13, size: 32, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !927, file: !928, line: 22, baseType: !13, size: 32, offset: 160)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !923, file: !924, line: 28, baseType: !857, size: 128, align: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !923, file: !924, line: 29, baseType: !13, size: 32, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !923, file: !924, line: 30, baseType: !943, size: 64, offset: 384)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !945, line: 746, size: 58368, elements: !946)
!945 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!946 = !{!947, !955, !956, !957, !958, !959, !960, !961, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !1034, !1045, !1140, !1144, !1147, !1178, !1179, !1180, !1181, !1192, !1194, !1195, !1196, !1197, !1198, !1199, !1210, !1211, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1228, !1229, !1236, !1237, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1758, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1806, !1812, !1882, !1883, !1884, !1885, !1889, !1892, !1899, !1904, !1907, !1910, !1913, !2605, !2806, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2844, !2845, !2846, !2855, !2863, !2864, !2865, !2866, !2867, !2872, !2873, !2874, !2877, !2878, !2881, !2884, !2887, !2895, !2898, !2899, !2985, !2986, !2987, !2988, !2989, !2995, !2996, !2997, !2998, !2999, !3000, !3003, !3006, !3007, !3010, !3011, !3012, !3050, !3051, !3052, !3053, !3054, !3055, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3087, !3090, !3096, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3108, !3180, !3182, !3183, !3184, !3185, !3186, !3187, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3217, !3218, !3219}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !944, file: !945, line: 752, baseType: !948, size: 192)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !949, line: 56, size: 192, elements: !950)
!949 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!950 = !{!951, !952, !953, !954}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !949, line: 57, baseType: !67, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !948, file: !949, line: 58, baseType: !67, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !948, file: !949, line: 59, baseType: !588, size: 32, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !948, file: !949, line: 61, baseType: !588, size: 32, offset: 160)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !944, file: !945, line: 754, baseType: !13, size: 32, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !944, file: !945, line: 767, baseType: !48, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !944, file: !945, line: 768, baseType: !902, size: 32, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !945, line: 770, baseType: !13, size: 32, offset: 352)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !944, file: !945, line: 771, baseType: !13, size: 32, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !944, file: !945, line: 774, baseType: !50, size: 32, offset: 416)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !944, file: !945, line: 775, baseType: !962, size: 128, offset: 448)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !963, line: 58, size: 128, elements: !964)
!963 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!964 = !{!965, !966, !971, !972}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !962, file: !963, line: 59, baseType: !851, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !963, line: 60, baseType: !967, size: 32, offset: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !963, line: 60, size: 32, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !967, file: !963, line: 61, baseType: !13, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !967, file: !963, line: 62, baseType: !77, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !962, file: !963, line: 65, baseType: !121, size: 16, offset: 96)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !962, file: !963, line: 65, baseType: !121, size: 16, offset: 112)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !944, file: !945, line: 776, baseType: !13, size: 32, offset: 576)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !944, file: !945, line: 777, baseType: !67, size: 64, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !944, file: !945, line: 778, baseType: !943, size: 64, offset: 704)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !944, file: !945, line: 787, baseType: !50, size: 32, offset: 768)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !944, file: !945, line: 788, baseType: !50, size: 32, offset: 800)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !944, file: !945, line: 790, baseType: !50, size: 32, offset: 832)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !944, file: !945, line: 792, baseType: !50, size: 32, offset: 864)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !944, file: !945, line: 793, baseType: !50, size: 32, offset: 896)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !944, file: !945, line: 794, baseType: !50, size: 32, offset: 928)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !944, file: !945, line: 795, baseType: !13, size: 32, offset: 960)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !944, file: !945, line: 797, baseType: !984, size: 2048, offset: 1024)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !945, line: 551, size: 2048, elements: !985)
!985 = !{!986, !991, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1013, !1016, !1017, !1018}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !984, file: !945, line: 553, baseType: !987, size: 128)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !945, line: 411, size: 128, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !987, file: !945, line: 412, baseType: !67, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !987, file: !945, line: 413, baseType: !588, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !984, file: !945, line: 554, baseType: !992, size: 192, align: 64, offset: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !993, line: 5, size: 192, align: 64, elements: !994)
!993 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!994 = !{!995, !996, !998}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !992, file: !993, line: 6, baseType: !67, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !992, file: !993, line: 7, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !992, file: !993, line: 8, baseType: !997, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !984, file: !945, line: 555, baseType: !592, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !984, file: !945, line: 556, baseType: !592, size: 64, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !984, file: !945, line: 558, baseType: !125, size: 128, offset: 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !984, file: !945, line: 559, baseType: !13, size: 32, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !984, file: !945, line: 561, baseType: !592, size: 64, offset: 640)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !984, file: !945, line: 562, baseType: !592, size: 64, offset: 704)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !984, file: !945, line: 563, baseType: !592, size: 64, offset: 768)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !984, file: !945, line: 564, baseType: !592, size: 64, offset: 832)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !984, file: !945, line: 565, baseType: !810, size: 64, offset: 896)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !984, file: !945, line: 566, baseType: !592, size: 64, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !984, file: !945, line: 568, baseType: !592, size: 64, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !984, file: !945, line: 571, baseType: !50, size: 32, offset: 1088)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !984, file: !945, line: 572, baseType: !1012, size: 64, offset: 1152)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !984, file: !945, line: 574, baseType: !1014, size: 64, offset: 1216)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !945, line: 49, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !984, file: !945, line: 576, baseType: !1014, size: 64, offset: 1280)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !984, file: !945, line: 578, baseType: !67, size: 64, offset: 1344)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !984, file: !945, line: 588, baseType: !1019, size: 512, align: 512, offset: 1536)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !945, line: 497, size: 512, align: 512, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1019, file: !945, line: 498, baseType: !592, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1019, file: !945, line: 499, baseType: !592, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1019, file: !945, line: 500, baseType: !592, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1019, file: !945, line: 501, baseType: !588, size: 32, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1019, file: !945, line: 502, baseType: !588, size: 32, offset: 224)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1019, file: !945, line: 503, baseType: !67, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1019, file: !945, line: 504, baseType: !67, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1019, file: !945, line: 505, baseType: !67, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1019, file: !945, line: 506, baseType: !1030, size: 64, align: 64, offset: 448)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !945, line: 445, size: 64, align: 64, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1030, file: !945, line: 446, baseType: !13, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1030, file: !945, line: 447, baseType: !13, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !944, file: !945, line: 798, baseType: !1035, size: 384, offset: 3072)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !945, line: 592, size: 384, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1043}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1035, file: !945, line: 593, baseType: !125, size: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1035, file: !945, line: 594, baseType: !67, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1035, file: !945, line: 595, baseType: !67, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1035, file: !945, line: 596, baseType: !13, size: 32, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1035, file: !945, line: 597, baseType: !54, size: 16, offset: 288)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1035, file: !945, line: 598, baseType: !54, size: 16, offset: 304)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1035, file: !945, line: 600, baseType: !1044, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !944, file: !945, line: 799, baseType: !1046, size: 1792, offset: 3456)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !945, line: 610, size: 1792, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1137, !1138}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1046, file: !945, line: 611, baseType: !992, size: 192, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1046, file: !945, line: 618, baseType: !592, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1046, file: !945, line: 619, baseType: !592, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1046, file: !945, line: 620, baseType: !592, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1046, file: !945, line: 621, baseType: !592, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1046, file: !945, line: 622, baseType: !592, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1046, file: !945, line: 629, baseType: !810, size: 64, offset: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1046, file: !945, line: 630, baseType: !592, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1046, file: !945, line: 631, baseType: !13, size: 32, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1046, file: !945, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1046, file: !945, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1046, file: !945, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1046, file: !945, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1046, file: !945, line: 662, baseType: !1062, size: 512, offset: 704)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !36, line: 118, size: 512, elements: !1063)
!1063 = !{!1064, !1072, !1073, !1078, !1133, !1134, !1135, !1136}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1062, file: !36, line: 119, baseType: !1065, size: 256)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1066, line: 9, size: 256, elements: !1067)
!1066 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1065, file: !1066, line: 10, baseType: !992, size: 192, align: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1065, file: !1066, line: 11, baseType: !1070, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1071, line: 29, baseType: !810)
!1071 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1062, file: !36, line: 120, baseType: !1070, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1062, file: !36, line: 121, baseType: !1074, size: 64, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!35, !1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1062, file: !36, line: 122, baseType: !1079, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !36, line: 159, size: 512, align: 512, elements: !1081)
!1081 = !{!1082, !1107, !1108, !1111, !1116, !1117, !1128, !1132}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1080, file: !36, line: 160, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !36, line: 215, size: 4608, align: 512, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1084, file: !36, line: 216, baseType: !813, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1084, file: !36, line: 217, baseType: !13, size: 32, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1084, file: !36, line: 218, baseType: !13, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1084, file: !36, line: 219, baseType: !13, size: 32, offset: 96)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1084, file: !36, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1084, file: !36, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1084, file: !36, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1084, file: !36, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1084, file: !36, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1084, file: !36, line: 226, baseType: !13, size: 32, offset: 160)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1084, file: !36, line: 227, baseType: !54, size: 16, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1084, file: !36, line: 228, baseType: !54, size: 16, offset: 208)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1084, file: !36, line: 229, baseType: !13, size: 32, offset: 224)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1084, file: !36, line: 235, baseType: !1070, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1084, file: !36, line: 236, baseType: !1077, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1084, file: !36, line: 237, baseType: !1070, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1084, file: !36, line: 238, baseType: !1077, size: 64, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1084, file: !36, line: 239, baseType: !1104, size: 4096, align: 512, offset: 512)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 4096, align: 512, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 8)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1080, file: !36, line: 161, baseType: !13, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1080, file: !36, line: 162, baseType: !1109, size: 32, offset: 96)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !53, line: 32, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !65, line: 96, baseType: !50)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1080, file: !36, line: 163, baseType: !1112, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !561, line: 274, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !561, line: 274, size: 32, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1113, file: !561, line: 274, baseType: !565, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1080, file: !36, line: 164, baseType: !1077, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1080, file: !36, line: 165, baseType: !1118, size: 128, offset: 256)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1066, line: 14, size: 128, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1118, file: !1066, line: 15, baseType: !1121, size: 128)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !993, line: 26, size: 128, elements: !1122)
!1122 = !{!1123, !1127}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1121, file: !993, line: 27, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !993, line: 12, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1124, file: !993, line: 13, baseType: !997, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1121, file: !993, line: 28, baseType: !997, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1080, file: !36, line: 166, baseType: !1129, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!1070}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1080, file: !36, line: 167, baseType: !1070, size: 64, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1062, file: !36, line: 123, baseType: !111, size: 8, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1062, file: !36, line: 124, baseType: !111, size: 8, offset: 456)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1062, file: !36, line: 125, baseType: !111, size: 8, offset: 464)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1062, file: !36, line: 126, baseType: !111, size: 8, offset: 472)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1046, file: !945, line: 671, baseType: !1062, size: 512, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1046, file: !945, line: 679, baseType: !1139, size: 64, offset: 1728)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !944, file: !945, line: 800, baseType: !1141, size: 64, offset: 5248)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !945, line: 800, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !944, file: !945, line: 809, baseType: !1145, size: 64, offset: 5312)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !945, line: 70, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !944, file: !945, line: 825, baseType: !1148, size: 2048, align: 512, offset: 5632)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !945, line: 509, size: 2048, align: 512, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1148, file: !945, line: 511, baseType: !592, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1148, file: !945, line: 512, baseType: !592, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1148, file: !945, line: 513, baseType: !592, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1148, file: !945, line: 514, baseType: !592, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1148, file: !945, line: 515, baseType: !592, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1148, file: !945, line: 516, baseType: !592, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1148, file: !945, line: 518, baseType: !592, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1148, file: !945, line: 519, baseType: !592, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1148, file: !945, line: 520, baseType: !810, size: 64, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1148, file: !945, line: 522, baseType: !592, size: 64, offset: 576)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1148, file: !945, line: 523, baseType: !592, size: 64, offset: 640)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1148, file: !945, line: 524, baseType: !810, size: 64, offset: 704)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1148, file: !945, line: 526, baseType: !810, size: 64, offset: 768)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1148, file: !945, line: 527, baseType: !592, size: 64, offset: 832)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1148, file: !945, line: 529, baseType: !592, size: 64, offset: 896)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1148, file: !945, line: 530, baseType: !592, size: 64, offset: 960)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1148, file: !945, line: 531, baseType: !592, size: 64, offset: 1024)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1148, file: !945, line: 532, baseType: !592, size: 64, offset: 1088)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1148, file: !945, line: 533, baseType: !592, size: 64, offset: 1152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1148, file: !945, line: 535, baseType: !592, size: 64, offset: 1216)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1148, file: !945, line: 536, baseType: !592, size: 64, offset: 1280)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1148, file: !945, line: 537, baseType: !592, size: 64, offset: 1344)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1148, file: !945, line: 538, baseType: !592, size: 64, offset: 1408)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1148, file: !945, line: 539, baseType: !592, size: 64, offset: 1472)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1148, file: !945, line: 540, baseType: !592, size: 64, offset: 1536)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1148, file: !945, line: 541, baseType: !592, size: 64, offset: 1600)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1148, file: !945, line: 542, baseType: !592, size: 64, offset: 1664)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1148, file: !945, line: 543, baseType: !592, size: 64, offset: 1728)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !944, file: !945, line: 833, baseType: !13, size: 32, offset: 7680)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !944, file: !945, line: 836, baseType: !13, size: 32, offset: 7712)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !944, file: !945, line: 837, baseType: !50, size: 32, offset: 7744)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !944, file: !945, line: 838, baseType: !1182, size: 64, offset: 7808)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1185, line: 19, baseType: !1186)
!1185 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1185, line: 19, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1186, file: !1185, line: 19, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !1190)
!1190 = !{!1191}
!1191 = !DISubrange(count: 1)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !944, file: !945, line: 839, baseType: !1193, size: 64, offset: 7872)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !944, file: !945, line: 840, baseType: !1184, size: 64, offset: 7936)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !944, file: !945, line: 841, baseType: !48, size: 64, offset: 8000)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !944, file: !945, line: 843, baseType: !54, size: 16, offset: 8064)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !944, file: !945, line: 845, baseType: !54, size: 16, offset: 8080)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !944, file: !945, line: 848, baseType: !50, size: 32, offset: 8096)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !944, file: !945, line: 849, baseType: !1200, size: 32, offset: 8128)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !945, line: 718, size: 32, elements: !1201)
!1201 = !{!1202, !1209}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1200, file: !945, line: 724, baseType: !1203, size: 32)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !945, line: 719, size: 32, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1208}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1203, file: !945, line: 720, baseType: !111, size: 8)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1203, file: !945, line: 721, baseType: !111, size: 8, offset: 8)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1203, file: !945, line: 722, baseType: !111, size: 8, offset: 16)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1203, file: !945, line: 723, baseType: !111, size: 8, offset: 24)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1200, file: !945, line: 725, baseType: !588, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !944, file: !945, line: 850, baseType: !125, size: 128, offset: 8192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !944, file: !945, line: 851, baseType: !1212, size: 64, offset: 8320)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !945, line: 60, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !944, file: !945, line: 855, baseType: !67, size: 64, offset: 8384)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !944, file: !945, line: 856, baseType: !111, size: 8, offset: 8448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !944, file: !945, line: 857, baseType: !111, size: 8, offset: 8456)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !944, file: !945, line: 858, baseType: !50, size: 32, offset: 8480)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !944, file: !945, line: 859, baseType: !125, size: 128, offset: 8512)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !944, file: !945, line: 860, baseType: !50, size: 32, offset: 8640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !944, file: !945, line: 861, baseType: !125, size: 128, offset: 8704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !944, file: !945, line: 873, baseType: !1222, size: 256, offset: 8832)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !945, line: 376, size: 256, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1222, file: !945, line: 381, baseType: !67, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1222, file: !945, line: 384, baseType: !594, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1222, file: !945, line: 389, baseType: !594, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1222, file: !945, line: 392, baseType: !594, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !944, file: !945, line: 875, baseType: !125, size: 128, offset: 9088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !944, file: !945, line: 877, baseType: !1230, size: 320, offset: 9216)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1231, line: 86, size: 320, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1230, file: !1231, line: 87, baseType: !50, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1230, file: !1231, line: 88, baseType: !125, size: 128, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1230, file: !1231, line: 89, baseType: !125, size: 128, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !944, file: !945, line: 878, baseType: !992, size: 192, align: 64, offset: 9536)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !944, file: !945, line: 881, baseType: !1238, size: 64, offset: 9728)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !142, line: 733, size: 10240, elements: !1240)
!1240 = !{!1241, !1670}
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !142, line: 734, baseType: !1242, size: 10240)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1239, file: !142, line: 734, size: 10240, elements: !1243)
!1243 = !{!1244, !1248, !1261, !1266, !1267, !1268, !1269, !1270, !1271, !1280, !1281, !1282, !1288, !1289, !1290, !1291, !1292, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1329, !1339, !1342, !1390, !1391, !1392, !1395, !1656, !1657, !1660, !1661, !1662, !1668, !1669}
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !142, line: 739, baseType: !1245, size: 512, align: 512)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !142, line: 739, size: 512, align: 512, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1245, file: !142, line: 747, baseType: !77, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1242, file: !142, line: 750, baseType: !1249, size: 128, offset: 512)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1250, line: 218, size: 128, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1251 = !{!1252, !1259, !1260}
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !1250, line: 219, baseType: !1253, size: 32)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !1250, line: 219, size: 32, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1253, file: !1250, line: 220, baseType: !87, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1253, file: !1250, line: 221, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1250, line: 197, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1250, line: 197, elements: !719)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1249, file: !1250, line: 223, baseType: !13, size: 32, offset: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1249, file: !1250, line: 224, baseType: !48, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1242, file: !142, line: 752, baseType: !1262, size: 64, offset: 640)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!67, !1265, !67, !67, !67, !67}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1242, file: !142, line: 756, baseType: !67, size: 64, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1242, file: !142, line: 757, baseType: !67, size: 64, offset: 768)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1242, file: !142, line: 760, baseType: !67, size: 64, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1242, file: !142, line: 761, baseType: !67, size: 64, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1242, file: !142, line: 763, baseType: !67, size: 64, offset: 960)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1242, file: !142, line: 764, baseType: !1272, size: 64, offset: 1024)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1274, line: 299, baseType: !1275)
!1274 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1274, line: 299, size: 64, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1275, file: !1274, line: 299, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1279, line: 18, baseType: !67)
!1279 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1242, file: !142, line: 773, baseType: !77, size: 32, offset: 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1242, file: !142, line: 785, baseType: !77, size: 32, offset: 1120)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1242, file: !142, line: 795, baseType: !1283, size: 64, offset: 1152)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !142, line: 726, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1284, file: !142, line: 727, baseType: !592, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1284, file: !142, line: 728, baseType: !50, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1242, file: !142, line: 801, baseType: !67, size: 64, offset: 1216)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1242, file: !142, line: 804, baseType: !804, size: 64, offset: 1280)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1242, file: !142, line: 806, baseType: !50, size: 32, offset: 1344)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1242, file: !142, line: 808, baseType: !87, size: 32, offset: 1376)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1242, file: !142, line: 823, baseType: !1293, size: 320, offset: 1408)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1294, line: 48, size: 320, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1295 = !{!1296, !1297, !1298, !1299, !1300}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1293, file: !1294, line: 49, baseType: !804, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1293, file: !1294, line: 55, baseType: !804, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1293, file: !1294, line: 57, baseType: !815, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1293, file: !1294, line: 59, baseType: !813, size: 32, offset: 160)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1293, file: !1294, line: 60, baseType: !125, size: 128, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1242, file: !142, line: 825, baseType: !125, size: 128, offset: 1728)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1242, file: !142, line: 845, baseType: !50, size: 32, offset: 1856)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1242, file: !142, line: 849, baseType: !67, size: 64, offset: 1920)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1242, file: !142, line: 850, baseType: !67, size: 64, offset: 1984)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1242, file: !142, line: 852, baseType: !67, size: 64, offset: 2048)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1242, file: !142, line: 853, baseType: !67, size: 64, offset: 2112)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1242, file: !142, line: 854, baseType: !806, size: 64, offset: 2176)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1242, file: !142, line: 855, baseType: !67, size: 64, offset: 2240)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1242, file: !142, line: 856, baseType: !67, size: 64, offset: 2304)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1242, file: !142, line: 857, baseType: !67, size: 64, offset: 2368)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1242, file: !142, line: 858, baseType: !67, size: 64, offset: 2432)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1242, file: !142, line: 865, baseType: !565, size: 32, offset: 2496)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1242, file: !142, line: 867, baseType: !87, size: 32, offset: 2528)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1242, file: !142, line: 869, baseType: !67, size: 64, offset: 2560)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1242, file: !142, line: 869, baseType: !67, size: 64, offset: 2624)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1242, file: !142, line: 869, baseType: !67, size: 64, offset: 2688)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1242, file: !142, line: 869, baseType: !67, size: 64, offset: 2752)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1242, file: !142, line: 870, baseType: !67, size: 64, offset: 2816)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1242, file: !142, line: 870, baseType: !67, size: 64, offset: 2880)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1242, file: !142, line: 870, baseType: !67, size: 64, offset: 2944)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1242, file: !142, line: 871, baseType: !67, size: 64, offset: 3008)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1242, file: !142, line: 871, baseType: !67, size: 64, offset: 3072)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1242, file: !142, line: 871, baseType: !67, size: 64, offset: 3136)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1242, file: !142, line: 871, baseType: !67, size: 64, offset: 3200)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1242, file: !142, line: 873, baseType: !1326, size: 3328, offset: 3264)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3328, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: 52)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1242, file: !142, line: 875, baseType: !1330, size: 1280, offset: 6592)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 1280, elements: !911)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1332, line: 22, size: 320, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1333 = !{!1334, !1335, !1336, !1337}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1331, file: !1332, line: 23, baseType: !813, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1331, file: !1332, line: 24, baseType: !810, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1331, file: !1332, line: 26, baseType: !125, size: 128, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1331, file: !1332, line: 28, baseType: !1338, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1242, file: !142, line: 877, baseType: !1340, size: 64, offset: 7872)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !142, line: 877, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1242, file: !142, line: 880, baseType: !1343, size: 1088, offset: 7936)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1344, line: 72, baseType: !1345)
!1344 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1344, line: 23, size: 1088, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1354, !1355, !1356, !1357, !1384, !1385, !1386}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1345, file: !1344, line: 28, baseType: !592, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1345, file: !1344, line: 38, baseType: !806, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1345, file: !1344, line: 40, baseType: !67, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1345, file: !1344, line: 43, baseType: !1293, size: 320, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1345, file: !1344, line: 44, baseType: !1352, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1344, line: 44, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1345, file: !1344, line: 48, baseType: !67, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1345, file: !1344, line: 59, baseType: !800, size: 256, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1345, file: !1344, line: 60, baseType: !48, size: 64, offset: 896)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1345, file: !1344, line: 61, baseType: !1358, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1361, line: 13, size: 1216, elements: !1362)
!1361 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1360, file: !1361, line: 14, baseType: !48, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1360, file: !1361, line: 15, baseType: !67, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1360, file: !1361, line: 17, baseType: !67, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1360, file: !1361, line: 17, baseType: !67, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1360, file: !1361, line: 18, baseType: !67, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1360, file: !1361, line: 18, baseType: !67, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1360, file: !1361, line: 19, baseType: !1370, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1360, file: !1361, line: 21, baseType: !371, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1360, file: !1361, line: 23, baseType: !371, size: 64, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1360, file: !1361, line: 24, baseType: !371, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1360, file: !1361, line: 25, baseType: !371, size: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1360, file: !1361, line: 26, baseType: !371, size: 64, offset: 704)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1360, file: !1361, line: 27, baseType: !371, size: 64, offset: 768)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1360, file: !1361, line: 28, baseType: !371, size: 64, offset: 832)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1360, file: !1361, line: 29, baseType: !371, size: 64, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1360, file: !1361, line: 30, baseType: !371, size: 64, offset: 960)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1360, file: !1361, line: 31, baseType: !371, size: 64, offset: 1024)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1360, file: !1361, line: 32, baseType: !371, size: 64, offset: 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1360, file: !1361, line: 33, baseType: !371, size: 64, offset: 1152)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1345, file: !1344, line: 63, baseType: !77, size: 32, offset: 1024)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1345, file: !1344, line: 69, baseType: !121, size: 16, offset: 1056)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1345, file: !1344, line: 70, baseType: !1387, size: 16, offset: 1072)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !112, line: 18, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !114, line: 23, baseType: !1389)
!1389 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !142, line: 882, baseType: !67, size: 64, offset: 9024)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1242, file: !142, line: 885, baseType: !87, size: 32, offset: 9088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1242, file: !142, line: 886, baseType: !1393, size: 64, offset: 9152)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !142, line: 732, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1242, file: !142, line: 901, baseType: !1396, size: 64, offset: 9216)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1398, line: 68, size: 4800, elements: !1399)
!1398 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1399 = !{!1400, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1439, !1440, !1443, !1444, !1554, !1555, !1567, !1637, !1638, !1652, !1654}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1397, file: !1398, line: 69, baseType: !1401, size: 576)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1398, line: 23, size: 576, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1401, file: !1398, line: 24, baseType: !588, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1398, line: 25, baseType: !1405, size: 512, offset: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1401, file: !1398, line: 25, size: 512, elements: !1406)
!1406 = !{!1407, !1416}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1405, file: !1398, line: 26, baseType: !1408, size: 480)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1409, size: 480, elements: !1414)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1398, line: 17, size: 96, elements: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1409, file: !1398, line: 18, baseType: !588, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1409, file: !1398, line: 19, baseType: !588, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1409, file: !1398, line: 20, baseType: !588, size: 32, offset: 64)
!1414 = !{!1415}
!1415 = !DISubrange(count: 5)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1398, line: 27, baseType: !1417, size: 128)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !1398, line: 27, size: 128, elements: !1418)
!1418 = !{!1419, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1417, file: !1398, line: 28, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1417, file: !1398, line: 29, baseType: !1420, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1397, file: !1398, line: 70, baseType: !1401, size: 576, offset: 576)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1397, file: !1398, line: 71, baseType: !1401, size: 576, offset: 1152)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1397, file: !1398, line: 72, baseType: !1396, size: 64, offset: 1728)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1397, file: !1398, line: 73, baseType: !50, size: 32, offset: 1792)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1397, file: !1398, line: 74, baseType: !525, size: 32, offset: 1824)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1397, file: !1398, line: 75, baseType: !534, size: 32, offset: 1856)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1397, file: !1398, line: 76, baseType: !1429, size: 192, offset: 1920)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1430, line: 9, size: 192, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1431 = !{!1432, !1433, !1437, !1438}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1429, file: !1430, line: 10, baseType: !804, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1429, file: !1430, line: 11, baseType: !1434, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1430, line: 7, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1429, file: !1430, line: 12, baseType: !13, size: 32, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1429, file: !1430, line: 13, baseType: !902, size: 32, offset: 160)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1397, file: !1398, line: 77, baseType: !67, size: 64, offset: 2112)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1397, file: !1398, line: 80, baseType: !1441, size: 8, offset: 2176)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !53, line: 35, baseType: !1442)
!1442 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1397, file: !1398, line: 88, baseType: !125, size: 128, offset: 2240)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1397, file: !1398, line: 89, baseType: !1445, size: 64, offset: 2368)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1447, line: 195, size: 1728, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1448 = !{!1449, !1450, !1453, !1458, !1459, !1462, !1463, !1470, !1471, !1472, !1473, !1476, !1477, !1478, !1479, !1480, !1518, !1539}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1446, file: !1447, line: 196, baseType: !902, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1446, file: !1447, line: 197, baseType: !1451, size: 32, offset: 32)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1447, line: 28, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !53, line: 104, baseType: !367)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 198, baseType: !1454, size: 192, offset: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 198, size: 192, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1454, file: !1447, line: 199, baseType: !125, size: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1454, file: !1447, line: 200, baseType: !992, size: 192, align: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1446, file: !1447, line: 205, baseType: !1293, size: 320, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1446, file: !1447, line: 206, baseType: !1460, size: 64, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1447, line: 206, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1446, file: !1447, line: 207, baseType: !48, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 208, baseType: !1464, size: 64, offset: 704)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 208, size: 64, elements: !1465)
!1465 = !{!1466, !1469}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1464, file: !1447, line: 209, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1468, line: 8, baseType: !811)
!1468 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1464, file: !1447, line: 210, baseType: !1467, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1446, file: !1447, line: 212, baseType: !1467, size: 64, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1446, file: !1447, line: 213, baseType: !525, size: 32, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1446, file: !1447, line: 214, baseType: !534, size: 32, offset: 864)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1446, file: !1447, line: 215, baseType: !1474, size: 32, offset: 896)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1447, line: 31, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 110, baseType: !588)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1446, file: !1447, line: 216, baseType: !54, size: 16, offset: 928)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1446, file: !1447, line: 217, baseType: !54, size: 16, offset: 944)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1446, file: !1447, line: 221, baseType: !1389, size: 16, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !1447, line: 228, baseType: !67, size: 64, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 245, baseType: !1481, size: 320, offset: 1088)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 245, size: 320, elements: !1482)
!1482 = !{!1483, !1510}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1481, file: !1447, line: 246, baseType: !1484, size: 320)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1447, line: 114, size: 320, elements: !1485)
!1485 = !{!1486, !1487, !1499, !1502, !1509}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1484, file: !1447, line: 116, baseType: !67, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1447, line: 117, baseType: !1488, size: 64, offset: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1484, file: !1447, line: 117, size: 64, elements: !1489)
!1489 = !{!1490, !1498}
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1447, line: 118, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !1447, line: 118, size: 64, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1491, file: !1447, line: 120, baseType: !121, size: 16)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1491, file: !1447, line: 121, baseType: !1495, size: 48, offset: 16)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1496)
!1496 = !{!1497}
!1497 = !DISubrange(count: 6)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1488, file: !1447, line: 127, baseType: !67, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1484, file: !1447, line: 129, baseType: !1500, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1447, line: 102, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1484, file: !1447, line: 130, baseType: !1503, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1447, line: 108, size: 192, elements: !1505)
!1505 = !{!1506, !1507, !1508}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1504, file: !1447, line: 109, baseType: !857, size: 128, align: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1504, file: !1447, line: 110, baseType: !902, size: 32, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1504, file: !1447, line: 111, baseType: !1441, size: 8, offset: 160)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1484, file: !1447, line: 131, baseType: !45, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1447, line: 247, baseType: !1511, size: 320)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !1447, line: 247, size: 320, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1511, file: !1447, line: 248, baseType: !67, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1511, file: !1447, line: 249, baseType: !67, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1511, file: !1447, line: 250, baseType: !1500, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1511, file: !1447, line: 251, baseType: !1503, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1511, file: !1447, line: 252, baseType: !446, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 260, baseType: !1519, size: 256, offset: 1408)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 260, size: 256, elements: !1520)
!1520 = !{!1521, !1527}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1519, file: !1447, line: 261, baseType: !1522, size: 256)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1447, line: 134, size: 256, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1522, file: !1447, line: 135, baseType: !48, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1522, file: !1447, line: 136, baseType: !1526, size: 256)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !911)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !1447, line: 262, baseType: !1528, size: 256)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !1447, line: 262, size: 256, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1528, file: !1447, line: 264, baseType: !125, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1528, file: !1447, line: 265, baseType: !1532, size: 128, offset: 128)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1533, line: 22, size: 128, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1534 = !{!1535, !1538}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1532, file: !1533, line: 23, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1533, line: 23, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1532, file: !1533, line: 24, baseType: !67, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1446, file: !1447, line: 280, baseType: !1540, size: 64, offset: 1664)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1447, line: 176, size: 192, elements: !1542)
!1542 = !{!1543, !1552, !1553}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1541, file: !1447, line: 177, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1447, line: 171, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!50, !1445, !1548, !1550, !1445}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1541, file: !1447, line: 178, baseType: !1445, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1541, file: !1447, line: 179, baseType: !1500, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1397, file: !1398, line: 90, baseType: !1293, size: 320, offset: 2432)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1397, file: !1398, line: 97, baseType: !1556, size: 256, offset: 2752)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1557, line: 98, size: 256, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1558 = !{!1559, !1560, !1561}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1556, file: !1557, line: 99, baseType: !804, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1556, file: !1557, line: 100, baseType: !125, size: 128, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1556, file: !1557, line: 101, baseType: !1562, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1557, line: 21, baseType: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !1566}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1397, file: !1398, line: 99, baseType: !1568, size: 768, offset: 3008)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !41, line: 199, size: 768, elements: !1569)
!1569 = !{!1570, !1575}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1568, file: !41, line: 200, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!50, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1568, file: !41, line: 201, baseType: !1576, size: 704, offset: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !41, line: 193, size: 704, elements: !1577)
!1577 = !{!1578, !1636}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1576, file: !41, line: 195, baseType: !1579, size: 640)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !41, line: 173, size: 640, elements: !1580)
!1580 = !{!1581, !1593, !1605, !1606, !1626, !1627, !1629, !1635}
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !41, line: 174, baseType: !1582, size: 192)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !41, line: 174, size: 192, elements: !1583)
!1583 = !{!1584, !1592}
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !41, line: 175, baseType: !1585, size: 192)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !41, line: 175, size: 192, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1585, file: !41, line: 176, baseType: !61, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1585, file: !41, line: 177, baseType: !50, size: 32, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1585, file: !41, line: 178, baseType: !50, size: 32, offset: 96)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1585, file: !41, line: 179, baseType: !50, size: 32, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1585, file: !41, line: 180, baseType: !50, size: 32, offset: 160)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1582, file: !41, line: 182, baseType: !857, size: 128, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1579, file: !41, line: 184, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1596, line: 26, size: 256, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1595, file: !1596, line: 27, baseType: !13, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1595, file: !1596, line: 28, baseType: !1600, size: 192, offset: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1601, line: 43, size: 192, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1600, file: !1601, line: 44, baseType: !813, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1600, file: !1601, line: 45, baseType: !125, size: 128, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1579, file: !41, line: 185, baseType: !61, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1579, file: !41, line: 186, baseType: !1607, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !41, line: 204, size: 960, elements: !1609)
!1609 = !{!1610, !1611, !1615, !1622}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1608, file: !41, line: 205, baseType: !1568, size: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1608, file: !41, line: 206, baseType: !1612, size: 64, offset: 768)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!1574, !1607}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1608, file: !41, line: 207, baseType: !1616, size: 64, offset: 832)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1619, !1620, !1621}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1608, file: !41, line: 209, baseType: !1623, size: 64, offset: 896)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!50, !1619, !61}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1579, file: !41, line: 187, baseType: !1574, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1579, file: !41, line: 188, baseType: !1628, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1579, file: !41, line: 189, baseType: !1630, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !41, line: 157, size: 256, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1631, file: !41, line: 158, baseType: !992, size: 192, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1631, file: !41, line: 159, baseType: !1619, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1579, file: !41, line: 190, baseType: !707, size: 64, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1576, file: !41, line: 196, baseType: !1124, size: 64, offset: 640)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1397, file: !1398, line: 100, baseType: !1619, size: 64, offset: 3776)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1397, file: !1398, line: 102, baseType: !1639, size: 64, offset: 3840)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1398, line: 107, size: 1152, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1650}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1640, file: !1398, line: 108, baseType: !711, size: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1640, file: !1398, line: 109, baseType: !1396, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1640, file: !1398, line: 110, baseType: !525, size: 32, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1640, file: !1398, line: 111, baseType: !77, size: 32, offset: 224)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1640, file: !1398, line: 112, baseType: !1647, size: 640, offset: 256)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 640, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 10)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1640, file: !1398, line: 113, baseType: !1651, size: 256, offset: 896)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 256, elements: !911)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1397, file: !1398, line: 103, baseType: !1653, size: 640, offset: 3904)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 640, elements: !1648)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1397, file: !1398, line: 104, baseType: !1655, size: 256, offset: 4544)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 256, elements: !911)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1242, file: !142, line: 904, baseType: !1265, size: 64, offset: 9280)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1242, file: !142, line: 906, baseType: !1658, size: 64, offset: 9344)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !142, line: 906, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1242, file: !142, line: 930, baseType: !77, size: 32, offset: 9408)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1242, file: !142, line: 933, baseType: !77, size: 32, offset: 9440)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1242, file: !142, line: 935, baseType: !1663, size: 64, offset: 9472)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !166, line: 103, size: 64, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1663, file: !166, line: 104, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !166, line: 101, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1242, file: !142, line: 940, baseType: !804, size: 64, offset: 9536)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1242, file: !142, line: 942, baseType: !1556, size: 256, offset: 9600)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1239, file: !142, line: 986, baseType: !1671, offset: 10240)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !1672)
!1672 = !{!1673}
!1673 = !DISubrange(count: -1)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !944, file: !945, line: 882, baseType: !1238, size: 64, offset: 9792)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !944, file: !945, line: 884, baseType: !50, size: 32, offset: 9856)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !944, file: !945, line: 885, baseType: !50, size: 32, offset: 9888)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !944, file: !945, line: 886, baseType: !50, size: 32, offset: 9920)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !944, file: !945, line: 888, baseType: !50, size: 32, offset: 9952)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !944, file: !945, line: 890, baseType: !67, size: 64, offset: 9984)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !944, file: !945, line: 893, baseType: !13, size: 32, offset: 10048)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !944, file: !945, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !944, file: !945, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !944, file: !945, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !944, file: !945, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !944, file: !945, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !944, file: !945, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !944, file: !945, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !944, file: !945, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !944, file: !945, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !944, file: !945, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !944, file: !945, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !944, file: !945, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !944, file: !945, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !944, file: !945, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !944, file: !945, line: 969, baseType: !67, size: 64, offset: 10176)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !944, file: !945, line: 971, baseType: !1697, size: 448, offset: 10240)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !136, line: 25, size: 448, elements: !1698)
!1698 = !{!1699, !1700, !1705}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1697, file: !136, line: 26, baseType: !67, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1697, file: !136, line: 27, baseType: !1701, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!371, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !136, line: 28, baseType: !1706, size: 320, offset: 128)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1697, file: !136, line: 28, size: 320, elements: !1707)
!1707 = !{!1708, !1718, !1743}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1706, file: !136, line: 37, baseType: !1709, size: 320)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1706, file: !136, line: 30, size: 320, elements: !1710)
!1710 = !{!1711, !1713, !1714, !1715, !1716, !1717}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1709, file: !136, line: 31, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1709, file: !136, line: 32, baseType: !588, size: 32, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1709, file: !136, line: 33, baseType: !588, size: 32, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1709, file: !136, line: 34, baseType: !588, size: 32, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1709, file: !136, line: 35, baseType: !592, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1709, file: !136, line: 36, baseType: !1712, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1706, file: !136, line: 47, baseType: !1719, size: 192)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1706, file: !136, line: 39, size: 192, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1742}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1719, file: !136, line: 40, baseType: !1109, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1719, file: !136, line: 41, baseType: !135, size: 32, offset: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !136, line: 42, baseType: !1724, size: 64, offset: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !136, line: 42, size: 64, elements: !1725)
!1725 = !{!1726, !1734}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1724, file: !136, line: 43, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1729, line: 7, size: 128, elements: !1730)
!1729 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1730 = !{!1731, !1733}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1728, file: !1729, line: 8, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !65, line: 93, baseType: !71)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1728, file: !1729, line: 9, baseType: !71, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1724, file: !136, line: 44, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1737, line: 7, size: 64, elements: !1738)
!1737 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1738 = !{!1739, !1741}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1736, file: !1737, line: 8, baseType: !1740, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1737, line: 5, baseType: !367)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1736, file: !1737, line: 9, baseType: !367, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1719, file: !136, line: 46, baseType: !592, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1706, file: !136, line: 55, baseType: !1744, size: 256)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1706, file: !136, line: 49, size: 256, elements: !1745)
!1745 = !{!1746, !1754, !1755, !1756, !1757}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1744, file: !136, line: 50, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1749, line: 36, size: 64, elements: !1750)
!1749 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1750 = !{!1751, !1752, !1753}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1748, file: !1749, line: 37, baseType: !50, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1748, file: !1749, line: 38, baseType: !1389, size: 16, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1748, file: !1749, line: 39, baseType: !1389, size: 16, offset: 48)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1744, file: !136, line: 51, baseType: !50, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1744, file: !136, line: 52, baseType: !50, size: 32, offset: 96)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1744, file: !136, line: 53, baseType: !67, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1744, file: !136, line: 54, baseType: !67, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !944, file: !945, line: 973, baseType: !1759, size: 32, offset: 10688)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !53, line: 27, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !65, line: 28, baseType: !50)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !944, file: !945, line: 974, baseType: !1759, size: 32, offset: 10720)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !944, file: !945, line: 978, baseType: !67, size: 64, offset: 10752)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !944, file: !945, line: 987, baseType: !943, size: 64, offset: 10816)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !944, file: !945, line: 990, baseType: !943, size: 64, offset: 10880)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !944, file: !945, line: 995, baseType: !125, size: 128, offset: 10944)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !944, file: !945, line: 996, baseType: !125, size: 128, offset: 11072)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !944, file: !945, line: 997, baseType: !943, size: 64, offset: 11200)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !944, file: !945, line: 1005, baseType: !125, size: 128, offset: 11264)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !944, file: !945, line: 1006, baseType: !125, size: 128, offset: 11392)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !944, file: !945, line: 1009, baseType: !898, size: 64, offset: 11520)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !944, file: !945, line: 1010, baseType: !1772, size: 512, offset: 11584)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 512, elements: !911)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !944, file: !945, line: 1011, baseType: !125, size: 128, offset: 12096)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !944, file: !945, line: 1012, baseType: !125, size: 128, offset: 12224)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !944, file: !945, line: 1014, baseType: !1594, size: 64, offset: 12352)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !944, file: !945, line: 1017, baseType: !782, size: 64, offset: 12416)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !944, file: !945, line: 1020, baseType: !782, size: 64, offset: 12480)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !944, file: !945, line: 1023, baseType: !48, size: 64, offset: 12544)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !944, file: !945, line: 1025, baseType: !592, size: 64, offset: 12608)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !944, file: !945, line: 1026, baseType: !592, size: 64, offset: 12672)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !944, file: !945, line: 1031, baseType: !592, size: 64, offset: 12736)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !944, file: !945, line: 1032, baseType: !1783, size: 192, offset: 12800)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !945, line: 324, size: 192, elements: !1784)
!1784 = !{!1785, !1786, !1787}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1783, file: !945, line: 326, baseType: !592, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1783, file: !945, line: 327, baseType: !592, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1783, file: !945, line: 328, baseType: !813, size: 32, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !944, file: !945, line: 1041, baseType: !67, size: 64, offset: 12992)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !944, file: !945, line: 1042, baseType: !67, size: 64, offset: 13056)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !944, file: !945, line: 1045, baseType: !592, size: 64, offset: 13120)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !944, file: !945, line: 1048, baseType: !592, size: 64, offset: 13184)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !944, file: !945, line: 1051, baseType: !67, size: 64, offset: 13248)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !944, file: !945, line: 1052, baseType: !67, size: 64, offset: 13312)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !944, file: !945, line: 1055, baseType: !1795, size: 640, offset: 13376)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1796, line: 132, size: 640, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1797 = !{!1798, !1804, !1805}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1795, file: !1796, line: 133, baseType: !1799, size: 576)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1800, size: 576, elements: !447)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1796, line: 117, size: 192, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1800, file: !1796, line: 118, baseType: !592, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1800, file: !1796, line: 119, baseType: !1118, size: 128, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1795, file: !1796, line: 134, baseType: !13, size: 32, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1795, file: !1796, line: 135, baseType: !13, size: 32, offset: 608)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !944, file: !945, line: 1058, baseType: !1807, size: 448, offset: 14016)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1796, line: 144, size: 448, elements: !1808)
!1808 = !{!1809, !1810, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1807, file: !1796, line: 145, baseType: !857, size: 128, align: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1807, file: !1796, line: 146, baseType: !800, size: 256, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1807, file: !1796, line: 147, baseType: !13, size: 32, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !944, file: !945, line: 1064, baseType: !1813, size: 64, offset: 14464)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1816, line: 110, size: 1472, elements: !1817)
!1816 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1867, !1868, !1869, !1877}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1815, file: !1816, line: 111, baseType: !804, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1815, file: !1816, line: 112, baseType: !525, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1815, file: !1816, line: 113, baseType: !534, size: 32, offset: 96)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1815, file: !1816, line: 114, baseType: !525, size: 32, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1815, file: !1816, line: 115, baseType: !534, size: 32, offset: 160)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1815, file: !1816, line: 116, baseType: !525, size: 32, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1815, file: !1816, line: 117, baseType: !534, size: 32, offset: 224)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1815, file: !1816, line: 118, baseType: !525, size: 32, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1815, file: !1816, line: 119, baseType: !534, size: 32, offset: 288)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1815, file: !1816, line: 120, baseType: !13, size: 32, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1815, file: !1816, line: 121, baseType: !1829, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1830, line: 24, baseType: !1831)
!1830 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1830, line: 24, size: 64, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1831, file: !1830, line: 24, baseType: !592, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1815, file: !1816, line: 122, baseType: !1829, size: 64, offset: 448)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1815, file: !1816, line: 123, baseType: !1829, size: 64, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1815, file: !1816, line: 124, baseType: !1829, size: 64, offset: 576)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1815, file: !1816, line: 125, baseType: !1829, size: 64, offset: 640)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1815, file: !1816, line: 127, baseType: !115, size: 8, offset: 704)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1815, file: !1816, line: 129, baseType: !1445, size: 64, offset: 768)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1815, file: !1816, line: 130, baseType: !1445, size: 64, offset: 832)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1815, file: !1816, line: 131, baseType: !1445, size: 64, offset: 896)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1815, file: !1816, line: 132, baseType: !1445, size: 64, offset: 960)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1815, file: !1816, line: 135, baseType: !48, size: 64, offset: 1024)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1815, file: !1816, line: 137, baseType: !1845, size: 64, offset: 1088)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1847, line: 14, size: 1088, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1846, file: !1847, line: 15, baseType: !902, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1846, file: !1847, line: 17, baseType: !1331, size: 320, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1846, file: !1847, line: 19, baseType: !67, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1846, file: !1847, line: 20, baseType: !804, size: 64, offset: 448)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1846, file: !1847, line: 23, baseType: !711, size: 128, offset: 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1846, file: !1847, line: 24, baseType: !525, size: 32, offset: 640)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1846, file: !1847, line: 29, baseType: !804, size: 64, offset: 704)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1846, file: !1847, line: 36, baseType: !1857, size: 320, offset: 768)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1858, line: 15, size: 320, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !1858, line: 16, baseType: !813, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1857, file: !1858, line: 18, baseType: !50, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1857, file: !1858, line: 19, baseType: !50, size: 32, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1857, file: !1858, line: 20, baseType: !50, size: 32, offset: 96)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1857, file: !1858, line: 21, baseType: !50, size: 32, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1857, file: !1858, line: 22, baseType: !67, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1857, file: !1858, line: 23, baseType: !67, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1815, file: !1816, line: 138, baseType: !1396, size: 64, offset: 1152)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1815, file: !1816, line: 139, baseType: !1639, size: 64, offset: 1216)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1815, file: !1816, line: 140, baseType: !1870, size: 64, offset: 1280)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1816, line: 25, size: 64, elements: !1872)
!1872 = !{!1873, !1874, !1875}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1871, file: !1816, line: 26, baseType: !77, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1871, file: !1816, line: 27, baseType: !50, size: 32, offset: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1871, file: !1816, line: 28, baseType: !1876, offset: 64)
!1876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, elements: !1672)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !1816, line: 142, baseType: !1878, size: 128, offset: 1344)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !1816, line: 142, size: 128, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1878, file: !1816, line: 143, baseType: !50, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1878, file: !1816, line: 144, baseType: !857, size: 128, align: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !944, file: !945, line: 1067, baseType: !1813, size: 64, offset: 14528)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !944, file: !945, line: 1070, baseType: !1813, size: 64, offset: 14592)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !944, file: !945, line: 1074, baseType: !1445, size: 64, offset: 14656)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !944, file: !945, line: 1084, baseType: !1886, size: 128, offset: 14720)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1887)
!1887 = !{!1888}
!1888 = !DISubrange(count: 16)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !944, file: !945, line: 1086, baseType: !1890, size: 64, offset: 14848)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !945, line: 55, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !944, file: !945, line: 1089, baseType: !1893, size: 64, offset: 14912)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1894, line: 12, size: 64, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1895 = !{!1896}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1893, file: !1894, line: 13, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1894, line: 8, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !944, file: !945, line: 1090, baseType: !1900, size: 128, offset: 14976)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1901, line: 13, size: 128, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1900, file: !1901, line: 14, baseType: !125, size: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !944, file: !945, line: 1097, baseType: !1905, size: 64, offset: 15104)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !945, line: 50, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !944, file: !945, line: 1100, baseType: !1908, size: 64, offset: 15168)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !945, line: 1100, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !944, file: !945, line: 1103, baseType: !1911, size: 64, offset: 15232)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !945, line: 53, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !944, file: !945, line: 1107, baseType: !1914, size: 64, offset: 15296)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1916, line: 31, size: 576, elements: !1917)
!1916 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1917 = !{!1918, !1919, !1922, !1925, !1928, !1929, !1932, !1935, !1936}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1915, file: !1916, line: 32, baseType: !902, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1915, file: !1916, line: 33, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1916, line: 9, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1915, file: !1916, line: 34, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1916, line: 10, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1915, file: !1916, line: 35, baseType: !1926, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1916, line: 8, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1915, file: !1916, line: 36, baseType: !922, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1915, file: !1916, line: 37, baseType: !1930, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1447, line: 34, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1915, file: !1916, line: 38, baseType: !1933, size: 64, offset: 384)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1916, line: 38, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1915, file: !1916, line: 39, baseType: !1933, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1915, file: !1916, line: 40, baseType: !1937, size: 64, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1939, line: 771, size: 384, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1938, file: !1939, line: 772, baseType: !1429, size: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1938, file: !1939, line: 773, baseType: !1396, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1938, file: !1939, line: 774, baseType: !1639, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1938, file: !1939, line: 775, baseType: !1945, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1947, line: 209, size: 4736, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1948 = !{!1949, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1946, file: !1947, line: 215, baseType: !1950, size: 896)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1951, size: 896, elements: !2409)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1947, line: 152, size: 1600, elements: !1953)
!1953 = !{!1954, !2460, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2583}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1952, file: !1947, line: 154, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1947, line: 389, size: 7872, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !2360, !2377, !2378, !2382, !2383, !2384, !2385, !2386, !2387, !2406, !2407, !2411, !2412, !2413, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2447, !2450, !2451, !2458}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1956, file: !1947, line: 391, baseType: !1952, size: 1600)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1956, file: !1947, line: 393, baseType: !67, size: 64, offset: 1600)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1956, file: !1947, line: 401, baseType: !50, size: 32, offset: 1664)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1956, file: !1947, line: 404, baseType: !50, size: 32, offset: 1696)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1956, file: !1947, line: 417, baseType: !50, size: 32, offset: 1728)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1956, file: !1947, line: 418, baseType: !50, size: 32, offset: 1760)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1956, file: !1947, line: 419, baseType: !50, size: 32, offset: 1792)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1956, file: !1947, line: 432, baseType: !50, size: 32, offset: 1824)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1956, file: !1947, line: 433, baseType: !50, size: 32, offset: 1856)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1956, file: !1947, line: 434, baseType: !50, size: 32, offset: 1888)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1956, file: !1947, line: 436, baseType: !50, size: 32, offset: 1920)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1956, file: !1947, line: 439, baseType: !13, size: 32, offset: 1952)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1956, file: !1947, line: 441, baseType: !1971, size: 64, offset: 1984)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1973, line: 190, size: 1152, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1974 = !{!1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !2352, !2353, !2354, !2355, !2356, !2359}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1972, file: !1973, line: 191, baseType: !77, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1972, file: !1973, line: 192, baseType: !77, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1972, file: !1973, line: 202, baseType: !1971, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1972, file: !1973, line: 203, baseType: !45, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1972, file: !1973, line: 205, baseType: !992, size: 192, align: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1972, file: !1973, line: 207, baseType: !1370, size: 64, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1972, file: !1973, line: 208, baseType: !13, size: 32, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1973, line: 209, baseType: !1983, size: 256, offset: 512)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !1973, line: 209, size: 256, elements: !1984)
!1984 = !{!1985, !1994, !1998}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1983, file: !1973, line: 210, baseType: !1986, size: 256)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1973, line: 153, size: 256, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1993}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1986, file: !1973, line: 154, baseType: !67, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1986, file: !1973, line: 156, baseType: !1124, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1986, file: !1973, line: 162, baseType: !1991, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1973, line: 162, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1986, file: !1973, line: 167, baseType: !67, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1983, file: !1973, line: 211, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1973, line: 170, size: 64, elements: !1996)
!1996 = !{!1997}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1995, file: !1973, line: 171, baseType: !1971, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1983, file: !1973, line: 212, baseType: !1999, size: 256)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1973, line: 174, size: 256, elements: !2000)
!2000 = !{!2001, !2347, !2350, !2351}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1999, file: !1973, line: 175, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1973, line: 271, size: 768, elements: !2005)
!2005 = !{!2006, !2311, !2315, !2316, !2317, !2318, !2319, !2323, !2324, !2325, !2326, !2343}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2004, file: !1973, line: 276, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!50, !2010}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1973, line: 251, size: 1216, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2011, file: !1973, line: 253, baseType: !1971, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2011, file: !1973, line: 254, baseType: !1265, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2011, file: !1973, line: 255, baseType: !788, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2011, file: !1973, line: 256, baseType: !48, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2011, file: !1973, line: 259, baseType: !800, size: 256, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2011, file: !1973, line: 260, baseType: !800, size: 256, offset: 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2011, file: !1973, line: 261, baseType: !50, size: 32, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2011, file: !1973, line: 262, baseType: !125, size: 128, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2011, file: !1973, line: 263, baseType: !446, size: 64, offset: 960)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2011, file: !1973, line: 265, baseType: !63, size: 64, offset: 1024)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2011, file: !1973, line: 266, baseType: !1441, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2011, file: !1973, line: 267, baseType: !1441, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2011, file: !1973, line: 268, baseType: !2026, size: 64, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2029, line: 563, size: 1024, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2030 = !{!2031, !2087, !2088, !2092, !2096, !2100, !2277, !2281, !2285, !2289, !2290, !2291, !2295, !2299, !2303, !2307}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2028, file: !2029, line: 564, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !142, line: 625, size: 1344, elements: !2037)
!2037 = !{!2038, !2047, !2048, !2054, !2061, !2062, !2067, !2068, !2073, !2074, !2077, !2078, !2079, !2080, !2081, !2082, !2085}
!2038 = !DIDerivedType(tag: DW_TAG_member, scope: !2036, file: !142, line: 628, baseType: !2039, size: 128)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2036, file: !142, line: 628, size: 128, elements: !2040)
!2040 = !{!2041, !2046}
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2039, file: !142, line: 629, baseType: !2042, size: 128)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2039, file: !142, line: 629, size: 128, elements: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2042, file: !142, line: 631, baseType: !67, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2042, file: !142, line: 632, baseType: !67, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2039, file: !142, line: 635, baseType: !857, size: 128, align: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2036, file: !142, line: 639, baseType: !1238, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2036, file: !142, line: 640, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1274, line: 297, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1274, line: 297, size: 64, elements: !2051)
!2051 = !{!2052}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2050, file: !1274, line: 297, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1279, line: 19, baseType: !67)
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !2036, file: !142, line: 646, baseType: !2055, size: 64, offset: 256)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2036, file: !142, line: 646, size: 64, elements: !2056)
!2056 = !{!2057, !2060}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2055, file: !142, line: 647, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2059)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !142, line: 542, baseType: !67)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2055, file: !142, line: 648, baseType: !2059, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2036, file: !142, line: 666, baseType: !50, size: 32, offset: 320)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2036, file: !142, line: 667, baseType: !2063, size: 64, offset: 384)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !142, line: 579, size: 320, elements: !2065)
!2065 = !{!2066}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2064, file: !142, line: 580, baseType: !1293, size: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2036, file: !142, line: 670, baseType: !1441, size: 8, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2036, file: !142, line: 681, baseType: !2069, size: 256, offset: 512)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2036, file: !142, line: 678, size: 256, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2069, file: !142, line: 679, baseType: !992, size: 192, align: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2069, file: !142, line: 680, baseType: !67, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2036, file: !142, line: 689, baseType: !125, size: 128, offset: 768)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2036, file: !142, line: 691, baseType: !2075, size: 64, offset: 896)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !142, line: 691, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2036, file: !142, line: 694, baseType: !2026, size: 64, offset: 960)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2036, file: !142, line: 697, baseType: !67, size: 64, offset: 1024)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2036, file: !142, line: 699, baseType: !1265, size: 64, offset: 1088)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2036, file: !142, line: 700, baseType: !48, size: 64, offset: 1152)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2036, file: !142, line: 711, baseType: !804, size: 64, offset: 1216)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2036, file: !142, line: 717, baseType: !2083, size: 64, offset: 1280)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !142, line: 717, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2036, file: !142, line: 722, baseType: !2086, offset: 1344)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !142, line: 570, elements: !719)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2028, file: !2029, line: 569, baseType: !2032, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2028, file: !2029, line: 571, baseType: !2089, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!50, !2035, !67}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2028, file: !2029, line: 572, baseType: !2093, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!50, !2035}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2028, file: !2029, line: 578, baseType: !2097, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!50, !2035, !67, !67, !67}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2028, file: !2029, line: 580, baseType: !2101, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !142, line: 1184, baseType: !13)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2029, line: 512, size: 896, elements: !2107)
!2107 = !{!2108, !2116, !2117, !2124, !2131, !2141, !2270, !2271, !2273, !2275}
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !2029, line: 513, baseType: !2109, size: 320)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2106, file: !2029, line: 513, size: 320, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2114, !2115}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2109, file: !2029, line: 514, baseType: !2035, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2109, file: !2029, line: 515, baseType: !936, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2109, file: !2029, line: 516, baseType: !67, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2109, file: !2029, line: 517, baseType: !67, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2109, file: !2029, line: 518, baseType: !67, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2106, file: !2029, line: 520, baseType: !141, size: 32, offset: 320)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2106, file: !2029, line: 522, baseType: !2118, size: 64, offset: 384)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1279, line: 22, baseType: !2120)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1279, line: 22, size: 64, elements: !2121)
!2121 = !{!2122}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2120, file: !1279, line: 22, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1279, line: 15, baseType: !67)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2106, file: !2029, line: 524, baseType: !2125, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1274, line: 372, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1274, line: 372, size: 64, elements: !2128)
!2128 = !{!2129}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2127, file: !1274, line: 372, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1279, line: 16, baseType: !67)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !2029, line: 527, baseType: !2132, size: 64, offset: 512)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2106, file: !2029, line: 527, size: 64, elements: !2133)
!2133 = !{!2134, !2140}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2132, file: !2029, line: 528, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1279, line: 21, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1279, line: 21, size: 64, elements: !2137)
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2136, file: !1279, line: 21, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1279, line: 14, baseType: !67)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2132, file: !2029, line: 529, baseType: !2119, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2106, file: !2029, line: 534, baseType: !2142, size: 64, offset: 576)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !142, line: 74, size: 512, align: 128, elements: !2144)
!2144 = !{!2145, !2146, !2264, !2269}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !142, line: 75, baseType: !67, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !142, line: 83, baseType: !2147, size: 320, offset: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !142, line: 83, size: 320, elements: !2148)
!2148 = !{!2149, !2170, !2184, !2188, !2263}
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !142, line: 84, baseType: !2150, size: 320)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !142, line: 84, size: 320, elements: !2151)
!2151 = !{!2152, !2163, !2164, !2169}
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !142, line: 90, baseType: !2153, size: 128)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !142, line: 90, size: 128, elements: !2154)
!2154 = !{!2155, !2156, !2161, !2162}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2153, file: !142, line: 91, baseType: !125, size: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !142, line: 94, baseType: !2157, size: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2153, file: !142, line: 94, size: 128, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2157, file: !142, line: 96, baseType: !48, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2157, file: !142, line: 98, baseType: !13, size: 32, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2153, file: !142, line: 102, baseType: !125, size: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2153, file: !142, line: 103, baseType: !125, size: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2150, file: !142, line: 106, baseType: !515, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !142, line: 107, baseType: !2165, size: 64, offset: 192)
!2165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !142, line: 107, size: 64, elements: !2166)
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2165, file: !142, line: 108, baseType: !67, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2165, file: !142, line: 109, baseType: !67, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2150, file: !142, line: 117, baseType: !67, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !142, line: 119, baseType: !2171, size: 320)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !142, line: 119, size: 320, elements: !2172)
!2172 = !{!2173, !2174, !2177, !2178, !2179}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2171, file: !142, line: 124, baseType: !67, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2171, file: !142, line: 125, baseType: !2175, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !142, line: 125, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2171, file: !142, line: 126, baseType: !67, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2171, file: !142, line: 127, baseType: !67, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !142, line: 128, baseType: !2180, size: 64, offset: 256)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2171, file: !142, line: 128, size: 64, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2180, file: !142, line: 133, baseType: !67, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2180, file: !142, line: 138, baseType: !804, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !142, line: 141, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !142, line: 141, size: 64, elements: !2186)
!2186 = !{!2187}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2185, file: !142, line: 142, baseType: !67, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !142, line: 144, baseType: !2189, size: 128)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !142, line: 144, size: 128, elements: !2190)
!2190 = !{!2191, !2262}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2189, file: !142, line: 146, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !158, line: 126, size: 1216, elements: !2194)
!2194 = !{!2195, !2205, !2226, !2227, !2228, !2229, !2230, !2244, !2245, !2246}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2193, file: !158, line: 127, baseType: !2196, size: 384)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !158, line: 21, size: 384, elements: !2197)
!2197 = !{!2198, !2199, !2201, !2202, !2203, !2204}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2196, file: !158, line: 22, baseType: !67, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2196, file: !158, line: 23, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2196, file: !158, line: 24, baseType: !2200, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2196, file: !158, line: 25, baseType: !67, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2196, file: !158, line: 26, baseType: !67, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2196, file: !158, line: 27, baseType: !67, size: 64, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2193, file: !158, line: 128, baseType: !2206, size: 128, offset: 384)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2207, line: 105, size: 128, elements: !2208)
!2207 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2206, file: !2207, line: 110, baseType: !67, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2206, file: !2207, line: 118, baseType: !2211, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2207, line: 95, size: 448, elements: !2213)
!2213 = !{!2214, !2215, !2221, !2222, !2223, !2224, !2225}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2212, file: !2207, line: 96, baseType: !804, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2212, file: !2207, line: 97, baseType: !2216, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2207, line: 60, baseType: !2218)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2220}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2212, file: !2207, line: 98, baseType: !2216, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2212, file: !2207, line: 99, baseType: !1441, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2212, file: !2207, line: 100, baseType: !1441, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2212, file: !2207, line: 101, baseType: !857, size: 128, align: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2212, file: !2207, line: 102, baseType: !2220, size: 64, offset: 384)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2193, file: !158, line: 129, baseType: !1595, size: 256, offset: 512)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2193, file: !158, line: 130, baseType: !157, size: 32, offset: 768)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2193, file: !158, line: 131, baseType: !13, size: 32, offset: 800)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2193, file: !158, line: 132, baseType: !67, size: 64, offset: 832)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2193, file: !158, line: 133, baseType: !2231, size: 64, offset: 896)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2233)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !158, line: 77, size: 192, elements: !2234)
!2234 = !{!2235, !2239, !2240}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2233, file: !158, line: 83, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !2142}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2233, file: !158, line: 89, baseType: !2101, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2233, file: !158, line: 100, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!50, !2192, !67, !67, !50}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2193, file: !158, line: 134, baseType: !48, size: 64, offset: 960)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2193, file: !158, line: 135, baseType: !50, size: 32, offset: 1024)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !158, line: 136, baseType: !2247, size: 128, offset: 1088)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2193, file: !158, line: 136, size: 128, elements: !2248)
!2248 = !{!2249, !2255}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2247, file: !158, line: 137, baseType: !2250, size: 128)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2251, line: 6, size: 128, elements: !2252)
!2251 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2250, file: !2251, line: 7, baseType: !592, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2250, file: !2251, line: 8, baseType: !592, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2247, file: !158, line: 138, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !158, line: 138, elements: !2257)
!2257 = !{!2258, !2260}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2256, file: !158, line: 138, baseType: !2259)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !158, line: 138, elements: !719)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2256, file: !158, line: 138, baseType: !2261)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2250, elements: !1672)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2189, file: !142, line: 147, baseType: !48, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2147, file: !142, line: 161, baseType: !857, size: 128, align: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !142, line: 164, baseType: !2265, size: 32, offset: 384)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !142, line: 164, size: 32, elements: !2266)
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2265, file: !142, line: 169, baseType: !77, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2265, file: !142, line: 177, baseType: !13, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2143, file: !142, line: 181, baseType: !77, size: 32, offset: 416)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2106, file: !2029, line: 535, baseType: !2142, size: 64, offset: 640)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2106, file: !2029, line: 541, baseType: !2272, size: 64, offset: 704)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2106, file: !2029, line: 545, baseType: !2274, size: 64, offset: 768)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2106, file: !2029, line: 549, baseType: !2276, size: 64, offset: 832)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1274, line: 520, baseType: !2142)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2028, file: !2029, line: 581, baseType: !2278, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!2104, !2105, !13}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2028, file: !2029, line: 582, baseType: !2282, size: 64, offset: 448)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!2104, !2105, !67, !67}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2028, file: !2029, line: 584, baseType: !2286, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!67, !2035}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2028, file: !2029, line: 588, baseType: !2101, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2028, file: !2029, line: 591, baseType: !2101, size: 64, offset: 640)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2028, file: !2029, line: 597, baseType: !2292, size: 64, offset: 704)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!50, !2035, !67, !48, !50, !50}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2028, file: !2029, line: 603, baseType: !2296, size: 64, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!45, !2035}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2028, file: !2029, line: 613, baseType: !2300, size: 64, offset: 832)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!50, !2035, !2083}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2028, file: !2029, line: 625, baseType: !2304, size: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!2083, !2035, !67}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2028, file: !2029, line: 633, baseType: !2308, size: 64, offset: 960)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!2142, !2035, !67}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2004, file: !1973, line: 277, baseType: !2312, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !2010}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2004, file: !1973, line: 290, baseType: !838, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2004, file: !1973, line: 292, baseType: !826, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2004, file: !1973, line: 293, baseType: !834, size: 64, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2004, file: !1973, line: 294, baseType: !830, size: 64, offset: 320)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2004, file: !1973, line: 296, baseType: !2320, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!478, !2010, !446, !63, !69}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2004, file: !1973, line: 306, baseType: !63, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2004, file: !1973, line: 313, baseType: !1441, size: 8, offset: 512)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2004, file: !1973, line: 314, baseType: !2320, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2004, file: !1973, line: 317, baseType: !2327, size: 64, offset: 640)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!2330, !2010, !2332}
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2331, line: 59, baseType: !13)
!2331 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2334, line: 37, size: 128, elements: !2335)
!2334 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2335 = !{!2336, !2342}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2333, file: !2334, line: 38, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2334, line: 31, baseType: !2338)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !1265, !2341, !2332}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2333, file: !2334, line: 39, baseType: !2330, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2004, file: !1973, line: 320, baseType: !2344, size: 64, offset: 704)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!50, !2010, !2035}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1999, file: !1973, line: 176, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1973, line: 35, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1999, file: !1973, line: 177, baseType: !69, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1999, file: !1973, line: 178, baseType: !1971, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1972, file: !1973, line: 215, baseType: !48, size: 64, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1972, file: !1973, line: 221, baseType: !592, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1972, file: !1973, line: 223, baseType: !54, size: 16, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1972, file: !1973, line: 224, baseType: !52, size: 16, offset: 912)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1972, file: !1973, line: 225, baseType: !2357, size: 64, offset: 960)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1973, line: 36, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1972, file: !1973, line: 227, baseType: !857, size: 128, align: 64, offset: 1024)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1956, file: !1947, line: 442, baseType: !2361, size: 448, offset: 2048)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1947, line: 138, size: 448, elements: !2362)
!2362 = !{!2363, !2364, !2365}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2361, file: !1947, line: 140, baseType: !1971, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2361, file: !1947, line: 141, baseType: !67, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2361, file: !1947, line: 142, baseType: !2366, size: 320, offset: 128)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2367, line: 11, size: 320, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2368 = !{!2369, !2370, !2371, !2376}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2366, file: !2367, line: 16, baseType: !711, size: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2366, file: !2367, line: 17, baseType: !67, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2366, file: !2367, line: 18, baseType: !2372, size: 64, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2366, file: !2367, line: 19, baseType: !588, size: 32, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1956, file: !1947, line: 443, baseType: !2361, size: 448, offset: 2496)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1956, file: !1947, line: 446, baseType: !2379, offset: 2944)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2361, elements: !2380)
!2380 = !{!2381}
!2381 = !DISubrange(count: 0)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1956, file: !1947, line: 455, baseType: !121, size: 16, offset: 2944)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1956, file: !1947, line: 456, baseType: !121, size: 16, offset: 2960)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1956, file: !1947, line: 457, baseType: !121, size: 16, offset: 2976)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1956, file: !1947, line: 458, baseType: !121, size: 16, offset: 2992)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1956, file: !1947, line: 461, baseType: !1950, size: 896, offset: 3008)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1956, file: !1947, line: 463, baseType: !2388, size: 64, offset: 3904)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1947, line: 537, size: 41664, elements: !2390)
!2390 = !{!2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2404}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2389, file: !1947, line: 538, baseType: !1991, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2389, file: !1947, line: 541, baseType: !13, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2389, file: !1947, line: 544, baseType: !50, size: 32, offset: 96)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2389, file: !1947, line: 547, baseType: !125, size: 128, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2389, file: !1947, line: 548, baseType: !857, size: 128, align: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2389, file: !1947, line: 555, baseType: !1956, size: 7872, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2389, file: !1947, line: 558, baseType: !1955, size: 64, offset: 8256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2389, file: !1947, line: 561, baseType: !77, size: 32, offset: 8320)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2389, file: !1947, line: 564, baseType: !13, size: 32, offset: 8352)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2389, file: !1947, line: 567, baseType: !2401, size: 32768, offset: 8384)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2402)
!2402 = !{!2403}
!2403 = !DISubrange(count: 4096)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2389, file: !1947, line: 570, baseType: !2405, size: 512, offset: 41152)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !451)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1956, file: !1947, line: 469, baseType: !125, size: 128, offset: 3968)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1956, file: !1947, line: 478, baseType: !2408, size: 1792, offset: 4096)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1792, elements: !2409)
!2409 = !{!2410}
!2410 = !DISubrange(count: 14)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1956, file: !1947, line: 487, baseType: !1955, size: 64, offset: 5888)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1956, file: !1947, line: 488, baseType: !1955, size: 64, offset: 5952)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1956, file: !1947, line: 491, baseType: !2414, size: 64, offset: 6016)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1947, line: 327, size: 896, elements: !2416)
!2416 = !{!2417, !2420, !2430, !2431, !2432, !2433, !2434}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2415, file: !1947, line: 332, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2419, line: 64, elements: !719)
!2419 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2415, file: !1947, line: 333, baseType: !2421, size: 192)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1947, line: 299, size: 192, elements: !2422)
!2422 = !{!2423}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2421, file: !1947, line: 300, baseType: !2424, size: 192)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2425, line: 17, size: 192, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2426 = !{!2427, !2428, !2429}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2424, file: !2425, line: 18, baseType: !592, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2424, file: !2425, line: 19, baseType: !592, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2424, file: !2425, line: 20, baseType: !594, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2415, file: !1947, line: 339, baseType: !2421, size: 192, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2415, file: !1947, line: 347, baseType: !2421, size: 192, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2415, file: !1947, line: 353, baseType: !2421, size: 192, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2415, file: !1947, line: 366, baseType: !1955, size: 64, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2415, file: !1947, line: 367, baseType: !1955, size: 64, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1956, file: !1947, line: 492, baseType: !125, size: 128, offset: 6080)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1956, file: !1947, line: 495, baseType: !2421, size: 192, offset: 6208)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1956, file: !1947, line: 496, baseType: !2421, size: 192, offset: 6400)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1956, file: !1947, line: 497, baseType: !1783, size: 192, offset: 6592)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1956, file: !1947, line: 503, baseType: !125, size: 128, offset: 6784)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1956, file: !1947, line: 504, baseType: !800, size: 256, offset: 6912)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1956, file: !1947, line: 507, baseType: !82, size: 192, offset: 7168)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1956, file: !1947, line: 510, baseType: !1556, size: 256, offset: 7360)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1956, file: !1947, line: 513, baseType: !2444, size: 64, offset: 7616)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2446, line: 214, elements: !719)
!2446 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1956, file: !1947, line: 516, baseType: !2448, offset: 7680)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2449, line: 76, elements: !719)
!2449 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1956, file: !1947, line: 519, baseType: !77, size: 32, offset: 7680)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1956, file: !1947, line: 522, baseType: !2452, size: 128, offset: 7712)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1947, line: 370, size: 128, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2452, file: !1947, line: 372, baseType: !1441, size: 8)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2452, file: !1947, line: 375, baseType: !50, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2452, file: !1947, line: 380, baseType: !50, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2452, file: !1947, line: 386, baseType: !50, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1956, file: !1947, line: 529, baseType: !2459, offset: 7872)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1955, elements: !1672)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1952, file: !1947, line: 157, baseType: !2461, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1947, line: 669, size: 1984, elements: !2463)
!2463 = !{!2464, !2468, !2472, !2476, !2477, !2478, !2479, !2483, !2487, !2488, !2494, !2498, !2499, !2503, !2507, !2511, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2564, !2565}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2462, file: !1947, line: 670, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!1951, !1951}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2462, file: !1947, line: 671, baseType: !2469, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!50, !1951}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2462, file: !1947, line: 672, baseType: !2473, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !1951}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2462, file: !1947, line: 673, baseType: !2473, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2462, file: !1947, line: 674, baseType: !2473, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2462, file: !1947, line: 675, baseType: !2473, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2462, file: !1947, line: 676, baseType: !2480, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{null, !1951, !50}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2462, file: !1947, line: 677, baseType: !2484, size: 64, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!50, !788, !1951}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2462, file: !1947, line: 679, baseType: !2484, size: 64, offset: 512)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2462, file: !1947, line: 682, baseType: !2489, size: 64, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!50, !2492}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1947, line: 30, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2462, file: !1947, line: 683, baseType: !2495, size: 64, offset: 640)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !2492}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2462, file: !1947, line: 684, baseType: !2495, size: 64, offset: 704)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2462, file: !1947, line: 685, baseType: !2500, size: 64, offset: 768)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2462, file: !1947, line: 686, baseType: !2504, size: 64, offset: 832)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!50, !943, !1945}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2462, file: !1947, line: 688, baseType: !2508, size: 64, offset: 896)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !943, !1945}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2462, file: !1947, line: 689, baseType: !2512, size: 64, offset: 960)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !943}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2462, file: !1947, line: 690, baseType: !2512, size: 64, offset: 1024)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2462, file: !1947, line: 691, baseType: !2512, size: 64, offset: 1088)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2462, file: !1947, line: 692, baseType: !2473, size: 64, offset: 1152)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2462, file: !1947, line: 694, baseType: !1441, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2462, file: !1947, line: 707, baseType: !1441, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2462, file: !1947, line: 719, baseType: !1441, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2462, file: !1947, line: 722, baseType: !50, size: 32, offset: 1248)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2462, file: !1947, line: 723, baseType: !45, size: 64, offset: 1280)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2462, file: !1947, line: 726, baseType: !45, size: 64, offset: 1344)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2462, file: !1947, line: 729, baseType: !2388, size: 64, offset: 1408)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2462, file: !1947, line: 732, baseType: !927, size: 192, offset: 1472)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2462, file: !1947, line: 738, baseType: !125, size: 128, offset: 1664)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2462, file: !1947, line: 744, baseType: !2528, size: 64, offset: 1792)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1947, line: 580, size: 1728, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2540, !2541, !2542, !2546, !2550, !2551, !2552, !2553, !2554, !2558, !2562, !2563}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2529, file: !1947, line: 586, baseType: !2405, size: 512)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2529, file: !1947, line: 587, baseType: !67, size: 64, offset: 512)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2529, file: !1947, line: 593, baseType: !63, size: 64, offset: 576)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2529, file: !1947, line: 596, baseType: !13, size: 32, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2529, file: !1947, line: 604, baseType: !13, size: 32, offset: 672)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2529, file: !1947, line: 610, baseType: !2461, size: 64, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2529, file: !1947, line: 611, baseType: !125, size: 128, offset: 768)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2529, file: !1947, line: 612, baseType: !2539, size: 64, offset: 896)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2529, file: !1947, line: 614, baseType: !2007, size: 64, offset: 960)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2529, file: !1947, line: 615, baseType: !2312, size: 64, offset: 1024)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2529, file: !1947, line: 621, baseType: !2543, size: 64, offset: 1088)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!592, !1951, !2528}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2529, file: !1947, line: 625, baseType: !2547, size: 64, offset: 1152)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!810, !1951, !2528}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2529, file: !1947, line: 628, baseType: !838, size: 64, offset: 1216)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2529, file: !1947, line: 631, baseType: !826, size: 64, offset: 1280)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2529, file: !1947, line: 632, baseType: !834, size: 64, offset: 1344)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2529, file: !1947, line: 633, baseType: !830, size: 64, offset: 1408)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2529, file: !1947, line: 640, baseType: !2555, size: 64, offset: 1472)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!50, !1951, !2528, !592}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2529, file: !1947, line: 645, baseType: !2559, size: 64, offset: 1536)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!50, !1951, !2528, !810}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2529, file: !1947, line: 654, baseType: !2320, size: 64, offset: 1600)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2529, file: !1947, line: 657, baseType: !2327, size: 64, offset: 1664)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2462, file: !1947, line: 745, baseType: !2528, size: 64, offset: 1856)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2462, file: !1947, line: 754, baseType: !13, size: 32, offset: 1920)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1952, file: !1947, line: 160, baseType: !2206, size: 128, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1952, file: !1947, line: 163, baseType: !125, size: 128, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1952, file: !1947, line: 164, baseType: !125, size: 128, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1952, file: !1947, line: 167, baseType: !125, size: 128, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1952, file: !1947, line: 173, baseType: !50, size: 32, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1952, file: !1947, line: 175, baseType: !13, size: 32, offset: 672)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1952, file: !1947, line: 183, baseType: !592, size: 64, offset: 704)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1952, file: !1947, line: 189, baseType: !77, size: 32, offset: 768)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1952, file: !1947, line: 192, baseType: !1556, size: 256, offset: 832)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1952, file: !1947, line: 193, baseType: !2576, size: 448, offset: 1088)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1557, line: 120, size: 448, elements: !2577)
!2577 = !{!2578, !2579, !2580}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2576, file: !1557, line: 121, baseType: !1556, size: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2576, file: !1557, line: 122, baseType: !857, size: 128, align: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2576, file: !1557, line: 125, baseType: !2581, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1557, line: 18, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1952, file: !1947, line: 199, baseType: !1951, size: 64, offset: 1536)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1946, file: !1947, line: 218, baseType: !902, size: 32, offset: 896)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1946, file: !1947, line: 226, baseType: !1945, size: 64, offset: 960)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1946, file: !1947, line: 229, baseType: !1955, size: 64, offset: 1024)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1946, file: !1947, line: 232, baseType: !50, size: 32, offset: 1088)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1946, file: !1947, line: 241, baseType: !125, size: 128, offset: 1152)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1946, file: !1947, line: 242, baseType: !125, size: 128, offset: 1280)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1946, file: !1947, line: 243, baseType: !125, size: 128, offset: 1408)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1946, file: !1947, line: 246, baseType: !125, size: 128, offset: 1536)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1946, file: !1947, line: 255, baseType: !2408, size: 1792, offset: 1664)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1946, file: !1947, line: 258, baseType: !125, size: 128, offset: 3456)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1946, file: !1947, line: 259, baseType: !125, size: 128, offset: 3584)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1946, file: !1947, line: 265, baseType: !711, size: 128, offset: 3712)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1946, file: !1947, line: 271, baseType: !125, size: 128, offset: 3840)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1946, file: !1947, line: 277, baseType: !125, size: 128, offset: 3968)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1946, file: !1947, line: 278, baseType: !125, size: 128, offset: 4096)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1946, file: !1947, line: 279, baseType: !125, size: 128, offset: 4224)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1946, file: !1947, line: 288, baseType: !1955, size: 64, offset: 4352)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1946, file: !1947, line: 289, baseType: !1955, size: 64, offset: 4416)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1946, file: !1947, line: 290, baseType: !1945, size: 64, offset: 4480)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1946, file: !1947, line: 293, baseType: !1441, size: 8, offset: 4544)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1946, file: !1947, line: 296, baseType: !857, size: 128, align: 64, offset: 4608)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !944, file: !945, line: 1110, baseType: !2606, size: 64, offset: 15360)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2608, line: 93, size: 8768, elements: !2609)
!2608 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2660, !2669, !2670, !2672, !2673, !2674, !2677, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2715, !2716, !2723, !2733, !2796, !2797, !2800, !2801, !2802, !2803, !2804, !2805}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2607, file: !2608, line: 94, baseType: !902, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2607, file: !2608, line: 95, baseType: !77, size: 32, offset: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2607, file: !2608, line: 96, baseType: !50, size: 32, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2607, file: !2608, line: 97, baseType: !50, size: 32, offset: 96)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2607, file: !2608, line: 98, baseType: !125, size: 128, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2607, file: !2608, line: 100, baseType: !82, size: 192, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2607, file: !2608, line: 103, baseType: !943, size: 64, offset: 448)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2607, file: !2608, line: 106, baseType: !2618, size: 192, offset: 512)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2619, line: 32, size: 192, elements: !2620)
!2619 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2618, file: !2619, line: 33, baseType: !125, size: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2618, file: !2619, line: 34, baseType: !2623, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2624, line: 25, baseType: !2625)
!2624 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2624, line: 23, size: 64, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2625, file: !2624, line: 24, baseType: !1189, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2607, file: !2608, line: 109, baseType: !707, size: 64, offset: 704)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2607, file: !2608, line: 112, baseType: !50, size: 32, offset: 768)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2607, file: !2608, line: 114, baseType: !50, size: 32, offset: 800)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2607, file: !2608, line: 115, baseType: !943, size: 64, offset: 832)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2607, file: !2608, line: 118, baseType: !50, size: 32, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2607, file: !2608, line: 119, baseType: !13, size: 32, offset: 928)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2607, file: !2608, line: 121, baseType: !2635, size: 64, offset: 960)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2608, line: 80, size: 448, elements: !2637)
!2637 = !{!2638, !2639, !2645}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2636, file: !2608, line: 81, baseType: !77, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2636, file: !2608, line: 82, baseType: !2640, size: 128, offset: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2608, line: 75, size: 128, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2640, file: !2608, line: 76, baseType: !943, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2640, file: !2608, line: 77, baseType: !2644, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2636, file: !2608, line: 83, baseType: !1595, size: 256, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2607, file: !2608, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2607, file: !2608, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2607, file: !2608, line: 138, baseType: !13, size: 32, offset: 1056)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2607, file: !2608, line: 139, baseType: !125, size: 128, offset: 1088)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2607, file: !2608, line: 142, baseType: !1062, size: 512, offset: 1216)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2607, file: !2608, line: 143, baseType: !1070, size: 64, offset: 1728)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2607, file: !2608, line: 150, baseType: !2653, size: 256, offset: 1792)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2654, size: 256, elements: !2658)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2608, line: 38, size: 128, elements: !2655)
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2654, file: !2608, line: 39, baseType: !592, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2654, file: !2608, line: 40, baseType: !592, size: 64, offset: 64)
!2658 = !{!2659}
!2659 = !DISubrange(count: 2)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2607, file: !2608, line: 156, baseType: !2661, size: 192, offset: 2048)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2608, line: 66, size: 192, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2661, file: !2608, line: 67, baseType: !2664, size: 192)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2608, line: 47, size: 192, elements: !2665)
!2665 = !{!2666, !2667, !2668}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2664, file: !2608, line: 48, baseType: !806, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2664, file: !2608, line: 49, baseType: !806, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2664, file: !2608, line: 50, baseType: !806, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2607, file: !2608, line: 160, baseType: !1795, size: 640, offset: 2240)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2607, file: !2608, line: 163, baseType: !2671, size: 256, offset: 2880)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 256, elements: !911)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2607, file: !2608, line: 169, baseType: !898, size: 64, offset: 3136)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2607, file: !2608, line: 172, baseType: !50, size: 32, offset: 3200)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2607, file: !2608, line: 174, baseType: !2675, size: 64, offset: 3264)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2608, line: 174, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2607, file: !2608, line: 185, baseType: !2678, size: 64, offset: 3328)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !561, line: 860, baseType: !2679)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 853, size: 64, elements: !2680)
!2680 = !{!2681, !2682}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2679, file: !561, line: 858, baseType: !560, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2679, file: !561, line: 859, baseType: !87, size: 32, offset: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2607, file: !2608, line: 186, baseType: !592, size: 64, offset: 3392)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2607, file: !2608, line: 186, baseType: !592, size: 64, offset: 3456)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2607, file: !2608, line: 186, baseType: !592, size: 64, offset: 3520)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2607, file: !2608, line: 186, baseType: !592, size: 64, offset: 3584)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2607, file: !2608, line: 187, baseType: !592, size: 64, offset: 3648)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2607, file: !2608, line: 188, baseType: !592, size: 64, offset: 3712)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2607, file: !2608, line: 189, baseType: !1783, size: 192, offset: 3776)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2607, file: !2608, line: 190, baseType: !67, size: 64, offset: 3968)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2607, file: !2608, line: 190, baseType: !67, size: 64, offset: 4032)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2607, file: !2608, line: 190, baseType: !67, size: 64, offset: 4096)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2607, file: !2608, line: 190, baseType: !67, size: 64, offset: 4160)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2607, file: !2608, line: 191, baseType: !67, size: 64, offset: 4224)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2607, file: !2608, line: 191, baseType: !67, size: 64, offset: 4288)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2607, file: !2608, line: 191, baseType: !67, size: 64, offset: 4352)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2607, file: !2608, line: 191, baseType: !67, size: 64, offset: 4416)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2607, file: !2608, line: 192, baseType: !67, size: 64, offset: 4480)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2607, file: !2608, line: 192, baseType: !67, size: 64, offset: 4544)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2607, file: !2608, line: 192, baseType: !67, size: 64, offset: 4608)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2607, file: !2608, line: 192, baseType: !67, size: 64, offset: 4672)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2607, file: !2608, line: 193, baseType: !67, size: 64, offset: 4736)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2607, file: !2608, line: 193, baseType: !67, size: 64, offset: 4800)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2607, file: !2608, line: 194, baseType: !2705, size: 448, offset: 4864)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2706, line: 12, size: 448, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2707 = !{!2708, !2709, !2710, !2711, !2712, !2713, !2714}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2705, file: !2706, line: 15, baseType: !592, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2705, file: !2706, line: 17, baseType: !592, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2705, file: !2706, line: 19, baseType: !592, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2705, file: !2706, line: 21, baseType: !592, size: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2705, file: !2706, line: 29, baseType: !592, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2705, file: !2706, line: 35, baseType: !592, size: 64, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2705, file: !2706, line: 44, baseType: !592, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2607, file: !2608, line: 202, baseType: !594, size: 64, offset: 5312)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2607, file: !2608, line: 213, baseType: !2717, size: 2048, offset: 5376)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2718, size: 2048, elements: !1887)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2719, line: 43, size: 128, elements: !2720)
!2719 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2720 = !{!2721, !2722}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2718, file: !2719, line: 44, baseType: !66, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2718, file: !2719, line: 45, baseType: !66, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2607, file: !2608, line: 216, baseType: !2724, size: 448, offset: 7424)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2608, line: 30, size: 448, elements: !2725)
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2724, file: !2608, line: 31, baseType: !50, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2724, file: !2608, line: 32, baseType: !371, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2724, file: !2608, line: 33, baseType: !67, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2724, file: !2608, line: 34, baseType: !592, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2724, file: !2608, line: 34, baseType: !592, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2724, file: !2608, line: 35, baseType: !67, size: 64, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2724, file: !2608, line: 35, baseType: !67, size: 64, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2607, file: !2608, line: 219, baseType: !2734, size: 64, offset: 7872)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2736, line: 41, size: 3456, elements: !2737)
!2736 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2752, !2753, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2735, file: !2736, line: 47, baseType: !122, size: 16)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2735, file: !2736, line: 48, baseType: !589, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2735, file: !2736, line: 54, baseType: !113, size: 8, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2735, file: !2736, line: 55, baseType: !113, size: 8, offset: 72)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2735, file: !2736, line: 73, baseType: !593, size: 64, align: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2735, file: !2736, line: 74, baseType: !593, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2735, file: !2736, line: 81, baseType: !593, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2735, file: !2736, line: 82, baseType: !593, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2735, file: !2736, line: 85, baseType: !593, size: 64, offset: 384)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2735, file: !2736, line: 86, baseType: !593, size: 64, offset: 448)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2735, file: !2736, line: 94, baseType: !593, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2735, file: !2736, line: 102, baseType: !593, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2735, file: !2736, line: 107, baseType: !2751, size: 256, offset: 640)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !601)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2735, file: !2736, line: 108, baseType: !113, size: 8, align: 64, offset: 896)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2735, file: !2736, line: 110, baseType: !2754, size: 24, offset: 904)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 24, elements: !447)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2735, file: !2736, line: 111, baseType: !589, size: 32, align: 64, offset: 960)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2735, file: !2736, line: 113, baseType: !589, size: 32, offset: 992)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2735, file: !2736, line: 114, baseType: !589, size: 32, offset: 1024)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2735, file: !2736, line: 115, baseType: !589, size: 32, offset: 1056)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2735, file: !2736, line: 117, baseType: !589, size: 32, offset: 1088)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2735, file: !2736, line: 118, baseType: !593, size: 64, align: 64, offset: 1152)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2735, file: !2736, line: 120, baseType: !593, size: 64, offset: 1216)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2735, file: !2736, line: 121, baseType: !593, size: 64, offset: 1280)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2735, file: !2736, line: 122, baseType: !593, size: 64, offset: 1344)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2735, file: !2736, line: 123, baseType: !593, size: 64, offset: 1408)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2735, file: !2736, line: 133, baseType: !593, size: 64, offset: 1472)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2735, file: !2736, line: 137, baseType: !593, size: 64, offset: 1536)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2735, file: !2736, line: 142, baseType: !593, size: 64, offset: 1600)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2735, file: !2736, line: 143, baseType: !593, size: 64, offset: 1664)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2735, file: !2736, line: 146, baseType: !593, size: 64, offset: 1728)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2735, file: !2736, line: 147, baseType: !593, size: 64, offset: 1792)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2735, file: !2736, line: 148, baseType: !593, size: 64, offset: 1856)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2735, file: !2736, line: 149, baseType: !593, size: 64, offset: 1920)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2735, file: !2736, line: 154, baseType: !593, size: 64, offset: 1984)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2735, file: !2736, line: 155, baseType: !593, size: 64, offset: 2048)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2735, file: !2736, line: 156, baseType: !593, size: 64, offset: 2112)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2735, file: !2736, line: 158, baseType: !593, size: 64, offset: 2176)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2735, file: !2736, line: 159, baseType: !593, size: 64, offset: 2240)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2735, file: !2736, line: 162, baseType: !593, size: 64, offset: 2304)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2735, file: !2736, line: 163, baseType: !593, size: 64, offset: 2368)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2735, file: !2736, line: 164, baseType: !593, size: 64, offset: 2432)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2735, file: !2736, line: 167, baseType: !593, size: 64, offset: 2496)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2735, file: !2736, line: 168, baseType: !593, size: 64, offset: 2560)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2735, file: !2736, line: 171, baseType: !593, size: 64, offset: 2624)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2735, file: !2736, line: 172, baseType: !593, size: 64, offset: 2688)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2735, file: !2736, line: 175, baseType: !593, size: 64, offset: 2752)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2735, file: !2736, line: 178, baseType: !593, size: 64, offset: 2816)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2735, file: !2736, line: 179, baseType: !593, size: 64, offset: 2880)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2735, file: !2736, line: 182, baseType: !589, size: 32, offset: 2944)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2735, file: !2736, line: 186, baseType: !593, size: 64, align: 64, offset: 3008)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2735, file: !2736, line: 194, baseType: !593, size: 64, offset: 3072)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2735, file: !2736, line: 195, baseType: !593, size: 64, offset: 3136)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2735, file: !2736, line: 199, baseType: !593, size: 64, offset: 3200)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2735, file: !2736, line: 200, baseType: !593, size: 64, offset: 3264)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2735, file: !2736, line: 203, baseType: !593, size: 64, offset: 3328)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2735, file: !2736, line: 204, baseType: !593, size: 64, offset: 3392)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2607, file: !2608, line: 222, baseType: !13, size: 32, offset: 7936)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2607, file: !2608, line: 223, baseType: !2798, size: 64, offset: 8000)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2608, line: 223, flags: DIFlagFwdDecl)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2607, file: !2608, line: 230, baseType: !1441, size: 8, offset: 8064)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2607, file: !2608, line: 231, baseType: !1389, size: 16, offset: 8080)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2607, file: !2608, line: 232, baseType: !1389, size: 16, offset: 8096)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2607, file: !2608, line: 234, baseType: !1238, size: 64, offset: 8128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2607, file: !2608, line: 237, baseType: !800, size: 256, offset: 8192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2607, file: !2608, line: 243, baseType: !1293, size: 320, offset: 8448)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !944, file: !945, line: 1111, baseType: !2807, size: 64, offset: 15424)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2608, line: 20, size: 16640, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2808, file: !2608, line: 21, baseType: !87, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2808, file: !2608, line: 22, baseType: !902, size: 32, offset: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2808, file: !2608, line: 23, baseType: !82, size: 192, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2808, file: !2608, line: 24, baseType: !2814, size: 16384, offset: 256)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2815, size: 16384, elements: !451)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2619, line: 51, size: 256, elements: !2816)
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2815, file: !2619, line: 52, baseType: !2818, size: 256)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2619, line: 37, size: 256, elements: !2819)
!2819 = !{!2820, !2827, !2828, !2832}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2818, file: !2619, line: 39, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2822, line: 83, baseType: !2823)
!2822 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2822, line: 82, baseType: !2825)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !50}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2818, file: !2619, line: 40, baseType: !67, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2818, file: !2619, line: 46, baseType: !2829, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2822, line: 86, baseType: !2830)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2822, line: 85, baseType: !2501)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2818, file: !2619, line: 48, baseType: !2623, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !944, file: !945, line: 1112, baseType: !2623, size: 64, offset: 15488)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !944, file: !945, line: 1113, baseType: !2623, size: 64, offset: 15552)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !944, file: !945, line: 1115, baseType: !2623, size: 64, offset: 15616)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !944, file: !945, line: 1116, baseType: !2618, size: 192, offset: 15680)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !944, file: !945, line: 1117, baseType: !67, size: 64, offset: 15872)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !944, file: !945, line: 1118, baseType: !63, size: 64, offset: 15936)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !944, file: !945, line: 1119, baseType: !13, size: 32, offset: 16000)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !944, file: !945, line: 1121, baseType: !860, size: 64, offset: 16064)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !944, file: !945, line: 1125, baseType: !2842, size: 64, offset: 16128)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !945, line: 43, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !944, file: !945, line: 1127, baseType: !525, size: 32, offset: 16192)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !944, file: !945, line: 1128, baseType: !13, size: 32, offset: 16224)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !944, file: !945, line: 1130, baseType: !2847, size: 128, offset: 16256)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2848, line: 37, size: 128, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2849 = !{!2850, !2851, !2852}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2847, file: !2848, line: 38, baseType: !50, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2847, file: !2848, line: 39, baseType: !77, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2847, file: !2848, line: 40, baseType: !2853, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2848, line: 24, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !944, file: !945, line: 1131, baseType: !2856, size: 256, offset: 16384)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2857, line: 12, size: 256, elements: !2858)
!2857 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2856, file: !2857, line: 13, baseType: !446, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2856, file: !2857, line: 14, baseType: !67, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2856, file: !2857, line: 15, baseType: !67, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2856, file: !2857, line: 16, baseType: !1441, size: 8, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !944, file: !945, line: 1134, baseType: !592, size: 64, offset: 16640)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !944, file: !945, line: 1135, baseType: !592, size: 64, offset: 16704)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !944, file: !945, line: 1138, baseType: !87, size: 32, offset: 16768)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !944, file: !945, line: 1141, baseType: !813, size: 32, offset: 16800)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !944, file: !945, line: 1143, baseType: !2868, size: 64, offset: 16832)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !945, line: 735, size: 64, elements: !2869)
!2869 = !{!2870}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2868, file: !945, line: 736, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !944, file: !945, line: 1147, baseType: !1121, size: 128, offset: 16896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !944, file: !945, line: 1149, baseType: !943, size: 64, offset: 17024)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !944, file: !945, line: 1151, baseType: !2875, size: 64, offset: 17088)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !945, line: 1151, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !944, file: !945, line: 1188, baseType: !48, size: 64, offset: 17152)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !944, file: !945, line: 1191, baseType: !2879, size: 64, offset: 17216)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !945, line: 44, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !944, file: !945, line: 1194, baseType: !2882, size: 64, offset: 17280)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !945, line: 45, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !944, file: !945, line: 1197, baseType: !2885, size: 64, offset: 17344)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !945, line: 61, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !944, file: !945, line: 1199, baseType: !2888, size: 64, offset: 17408)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2890, line: 99, size: 128, elements: !2891)
!2890 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2891 = !{!2892, !2893, !2894}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2889, file: !2890, line: 100, baseType: !804, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2889, file: !2890, line: 101, baseType: !77, size: 32, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2889, file: !2890, line: 103, baseType: !54, size: 16, offset: 96)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !944, file: !945, line: 1202, baseType: !2896, size: 64, offset: 17472)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !945, line: 48, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !944, file: !945, line: 1205, baseType: !67, size: 64, offset: 17536)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !944, file: !945, line: 1206, baseType: !2900, size: 64, offset: 17600)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2619, line: 14, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2619, line: 12, size: 384, elements: !2903)
!2903 = !{!2904}
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !2902, file: !2619, line: 13, baseType: !2905, size: 384)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2902, file: !2619, line: 13, size: 384, elements: !2906)
!2906 = !{!2907, !2908, !2909, !2910}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2905, file: !2619, line: 13, baseType: !50, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2905, file: !2619, line: 13, baseType: !50, size: 32, offset: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2905, file: !2619, line: 13, baseType: !50, size: 32, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2905, file: !2619, line: 13, baseType: !2911, size: 256, offset: 128)
!2911 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2912, line: 37, size: 256, elements: !2913)
!2912 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2913 = !{!2914, !2919, !2932, !2938, !2947, !2974, !2979}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2911, file: !2912, line: 42, baseType: !2915, size: 64)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !2912, line: 39, size: 64, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2915, file: !2912, line: 40, baseType: !1760, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2915, file: !2912, line: 41, baseType: !531, size: 32, offset: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2911, file: !2912, line: 50, baseType: !2920, size: 192)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !2912, line: 45, size: 192, elements: !2921)
!2921 = !{!2922, !2924, !2925, !2931}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2920, file: !2912, line: 46, baseType: !2923, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !65, line: 95, baseType: !50)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2920, file: !2912, line: 47, baseType: !50, size: 32, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2920, file: !2912, line: 48, baseType: !2926, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2912, line: 11, baseType: !2927)
!2927 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2912, line: 8, size: 64, elements: !2928)
!2928 = !{!2929, !2930}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2927, file: !2912, line: 9, baseType: !50, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2927, file: !2912, line: 10, baseType: !48, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2920, file: !2912, line: 49, baseType: !50, size: 32, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2911, file: !2912, line: 57, baseType: !2933, size: 128)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !2912, line: 53, size: 128, elements: !2934)
!2934 = !{!2935, !2936, !2937}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2933, file: !2912, line: 54, baseType: !1760, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2933, file: !2912, line: 55, baseType: !531, size: 32, offset: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2933, file: !2912, line: 56, baseType: !2926, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2911, file: !2912, line: 66, baseType: !2939, size: 256)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !2912, line: 60, size: 256, elements: !2940)
!2940 = !{!2941, !2942, !2943, !2944, !2946}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2939, file: !2912, line: 61, baseType: !1760, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2939, file: !2912, line: 62, baseType: !531, size: 32, offset: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2939, file: !2912, line: 63, baseType: !50, size: 32, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2939, file: !2912, line: 64, baseType: !2945, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !65, line: 94, baseType: !480)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2939, file: !2912, line: 65, baseType: !2945, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2911, file: !2912, line: 105, baseType: !2948, size: 256)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !2912, line: 69, size: 256, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2948, file: !2912, line: 70, baseType: !48, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !2912, line: 79, baseType: !2952, size: 192, offset: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !2912, line: 79, size: 192, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2963, !2968}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2952, file: !2912, line: 81, baseType: !50, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2952, file: !2912, line: 86, baseType: !1389, size: 16)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2952, file: !2912, line: 92, baseType: !2957, size: 192)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2952, file: !2912, line: 88, size: 192, elements: !2958)
!2958 = !{!2959, !2961, !2962}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2957, file: !2912, line: 89, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1105)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2957, file: !2912, line: 90, baseType: !48, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2957, file: !2912, line: 91, baseType: !48, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2952, file: !2912, line: 97, baseType: !2964, size: 96)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2952, file: !2912, line: 94, size: 96, elements: !2965)
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2964, file: !2912, line: 95, baseType: !2960, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2964, file: !2912, line: 96, baseType: !589, size: 32, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2952, file: !2912, line: 103, baseType: !2969, size: 128)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2952, file: !2912, line: 99, size: 128, elements: !2970)
!2970 = !{!2971, !2972, !2973}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2969, file: !2912, line: 100, baseType: !67, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2969, file: !2912, line: 101, baseType: !589, size: 32, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2969, file: !2912, line: 102, baseType: !589, size: 32, offset: 96)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2911, file: !2912, line: 111, baseType: !2975, size: 128)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !2912, line: 108, size: 128, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2975, file: !2912, line: 109, baseType: !371, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2975, file: !2912, line: 110, baseType: !50, size: 32, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2911, file: !2912, line: 118, baseType: !2980, size: 128)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !2912, line: 114, size: 128, elements: !2981)
!2981 = !{!2982, !2983, !2984}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2980, file: !2912, line: 115, baseType: !48, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2980, file: !2912, line: 116, baseType: !50, size: 32, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2980, file: !2912, line: 117, baseType: !13, size: 32, offset: 96)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !944, file: !945, line: 1208, baseType: !2705, size: 448, offset: 17664)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !944, file: !945, line: 1215, baseType: !592, size: 64, offset: 18112)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !944, file: !945, line: 1217, baseType: !592, size: 64, offset: 18176)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !944, file: !945, line: 1219, baseType: !592, size: 64, offset: 18240)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !944, file: !945, line: 1223, baseType: !2990, size: 64, offset: 18304)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2991, line: 99, baseType: !2992)
!2991 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2991, line: 99, size: 64, elements: !2993)
!2993 = !{!2994}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2992, file: !2991, line: 99, baseType: !1189, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !944, file: !945, line: 1225, baseType: !560, size: 32, offset: 18368)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !944, file: !945, line: 1226, baseType: !50, size: 32, offset: 18400)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !944, file: !945, line: 1227, baseType: !50, size: 32, offset: 18432)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !944, file: !945, line: 1231, baseType: !1945, size: 64, offset: 18496)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !944, file: !945, line: 1233, baseType: !125, size: 128, offset: 18560)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !944, file: !945, line: 1240, baseType: !3001, size: 64, offset: 18688)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !945, line: 62, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !944, file: !945, line: 1242, baseType: !3004, size: 64, offset: 18752)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !945, line: 1242, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !944, file: !945, line: 1244, baseType: !125, size: 128, offset: 18816)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !944, file: !945, line: 1245, baseType: !3008, size: 64, offset: 18944)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !945, line: 51, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !944, file: !945, line: 1246, baseType: !800, size: 256, offset: 19008)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !944, file: !945, line: 1247, baseType: !13, size: 32, offset: 19264)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !944, file: !945, line: 1250, baseType: !3013, size: 64, offset: 19328)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !238, line: 912, size: 1792, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3014, file: !238, line: 917, baseType: !813, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3014, file: !238, line: 923, baseType: !800, size: 256, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3014, file: !238, line: 925, baseType: !125, size: 128, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3014, file: !238, line: 926, baseType: !3020, size: 128, offset: 448)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !238, line: 901, size: 128, elements: !3021)
!3021 = !{!3022, !3023}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3020, file: !238, line: 902, baseType: !1124, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3020, file: !238, line: 903, baseType: !592, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3014, file: !238, line: 927, baseType: !3020, size: 128, offset: 576)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3014, file: !238, line: 928, baseType: !125, size: 128, offset: 704)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3014, file: !238, line: 930, baseType: !50, size: 32, offset: 832)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3014, file: !238, line: 931, baseType: !50, size: 32, offset: 864)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3014, file: !238, line: 932, baseType: !50, size: 32, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3014, file: !238, line: 934, baseType: !50, size: 32, offset: 928)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3014, file: !238, line: 935, baseType: !50, size: 32, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3014, file: !238, line: 936, baseType: !50, size: 32, offset: 992)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3014, file: !238, line: 937, baseType: !50, size: 32, offset: 1024)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3014, file: !238, line: 939, baseType: !902, size: 32, offset: 1056)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3014, file: !238, line: 940, baseType: !943, size: 64, offset: 1088)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3014, file: !238, line: 945, baseType: !592, size: 64, offset: 1152)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3014, file: !238, line: 946, baseType: !592, size: 64, offset: 1216)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3014, file: !238, line: 947, baseType: !592, size: 64, offset: 1280)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3014, file: !238, line: 953, baseType: !3013, size: 64, offset: 1344)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3014, file: !238, line: 954, baseType: !592, size: 64, offset: 1408)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3014, file: !238, line: 955, baseType: !592, size: 64, offset: 1472)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3014, file: !238, line: 956, baseType: !50, size: 32, offset: 1536)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3014, file: !238, line: 958, baseType: !50, size: 32, offset: 1568)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3014, file: !238, line: 960, baseType: !857, size: 128, align: 64, offset: 1600)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3014, file: !238, line: 968, baseType: !3045, size: 64, offset: 1728)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3046, line: 12, baseType: !3047)
!3046 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3046, line: 10, size: 64, elements: !3048)
!3048 = !{!3049}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3047, file: !3046, line: 11, baseType: !804, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !944, file: !945, line: 1251, baseType: !800, size: 256, offset: 19392)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !944, file: !945, line: 1252, baseType: !125, size: 128, offset: 19648)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !944, file: !945, line: 1259, baseType: !2083, size: 64, offset: 19776)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !944, file: !945, line: 1260, baseType: !1389, size: 16, offset: 19840)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !944, file: !945, line: 1261, baseType: !1389, size: 16, offset: 19856)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !944, file: !945, line: 1314, baseType: !3056, size: 64, offset: 19904)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3058, line: 62, size: 256, align: 256, elements: !3059)
!3058 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3057, file: !3058, line: 75, baseType: !589, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3057, file: !3058, line: 90, baseType: !589, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3057, file: !3058, line: 112, baseType: !593, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3057, file: !3058, line: 132, baseType: !589, size: 32, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3057, file: !3058, line: 140, baseType: !589, size: 32, offset: 160)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3057, file: !3058, line: 149, baseType: !589, size: 32, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3057, file: !3058, line: 154, baseType: !3067, offset: 224)
!3067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1672)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !944, file: !945, line: 1315, baseType: !588, size: 32, offset: 19968)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !944, file: !945, line: 1316, baseType: !588, size: 32, offset: 20000)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !944, file: !945, line: 1321, baseType: !67, size: 64, offset: 20032)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !944, file: !945, line: 1325, baseType: !50, size: 32, offset: 20096)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !944, file: !945, line: 1326, baseType: !50, size: 32, offset: 20128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !944, file: !945, line: 1327, baseType: !50, size: 32, offset: 20160)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !944, file: !945, line: 1328, baseType: !50, size: 32, offset: 20192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !944, file: !945, line: 1329, baseType: !857, size: 128, align: 64, offset: 20224)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !944, file: !945, line: 1332, baseType: !3077, size: 128, offset: 20352)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3078, line: 51, size: 128, elements: !3079)
!3078 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3079 = !{!3080, !3085, !3086}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3077, file: !3078, line: 60, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3082, line: 7, size: 64, elements: !3083)
!3082 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3081, file: !3082, line: 12, baseType: !1186, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3077, file: !3078, line: 63, baseType: !1441, size: 8, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3077, file: !3078, line: 70, baseType: !1441, size: 8, offset: 72)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !944, file: !945, line: 1335, baseType: !3088, size: 64, offset: 20480)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !945, line: 59, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !944, file: !945, line: 1337, baseType: !3091, size: 128, offset: 20544)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3078, line: 39, size: 128, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3091, file: !3078, line: 40, baseType: !2142, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3091, file: !3078, line: 42, baseType: !589, size: 32, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3091, file: !3078, line: 43, baseType: !589, size: 32, offset: 96)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !944, file: !945, line: 1340, baseType: !3097, size: 64, offset: 20672)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !945, line: 69, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !944, file: !945, line: 1351, baseType: !50, size: 32, offset: 20736)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !944, file: !945, line: 1352, baseType: !50, size: 32, offset: 20768)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !944, file: !945, line: 1354, baseType: !67, size: 64, offset: 20800)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !944, file: !945, line: 1364, baseType: !592, size: 64, offset: 20864)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !944, file: !945, line: 1365, baseType: !592, size: 64, offset: 20928)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !944, file: !945, line: 1412, baseType: !67, size: 64, offset: 20992)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !944, file: !945, line: 1453, baseType: !3106, size: 64, offset: 21056)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !945, line: 1453, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !944, file: !945, line: 1457, baseType: !3109, size: 64, offset: 21120)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !166, line: 61, size: 576, elements: !3111)
!3111 = !{!3112, !3113, !3132, !3135, !3136, !3169, !3179}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3110, file: !166, line: 62, baseType: !165, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !166, line: 64, baseType: !3114, size: 192, offset: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3110, file: !166, line: 64, size: 192, elements: !3115)
!3115 = !{!3116, !3127}
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !166, line: 65, baseType: !3117, size: 192)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !166, line: 65, size: 192, elements: !3118)
!3118 = !{!3119, !3126}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3117, file: !166, line: 66, baseType: !3120, size: 128)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3121, line: 50, size: 128, elements: !3122)
!3121 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3122 = !{!3123, !3124, !3125}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3120, file: !3121, line: 52, baseType: !67, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3120, file: !3121, line: 54, baseType: !13, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3120, file: !3121, line: 55, baseType: !13, size: 32, offset: 96)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3117, file: !166, line: 67, baseType: !67, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !166, line: 70, baseType: !3128, size: 192)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !166, line: 70, size: 192, elements: !3129)
!3129 = !{!3130, !3131}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3128, file: !166, line: 71, baseType: !857, size: 128, align: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3128, file: !166, line: 72, baseType: !67, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3110, file: !166, line: 76, baseType: !3133, size: 64, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !166, line: 76, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3110, file: !166, line: 77, baseType: !67, size: 64, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3110, file: !166, line: 79, baseType: !3137, size: 64, offset: 384)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3121, line: 25, size: 256, elements: !3139)
!3139 = !{!3140, !3146, !3150}
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3138, file: !3121, line: 26, baseType: !3141, size: 128)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3138, file: !3121, line: 26, size: 128, elements: !3142)
!3142 = !{!3143, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3141, file: !3121, line: 27, baseType: !3144, size: 128)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !1887)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3141, file: !3121, line: 28, baseType: !3144, size: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3138, file: !3121, line: 31, baseType: !3147, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3149)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3121, line: 23, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, scope: !3138, file: !3121, line: 33, baseType: !3151, size: 64, offset: 192)
!3151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3138, file: !3121, line: 33, size: 64, elements: !3152)
!3152 = !{!3153, !3159, !3164}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3151, file: !3121, line: 38, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3151, file: !3121, line: 34, size: 64, elements: !3155)
!3155 = !{!3156, !3157, !3158}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3154, file: !3121, line: 35, baseType: !367, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3154, file: !3121, line: 36, baseType: !111, size: 8, offset: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3154, file: !3121, line: 37, baseType: !111, size: 8, offset: 40)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3151, file: !3121, line: 42, baseType: !3160, size: 16)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3151, file: !3121, line: 39, size: 16, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3160, file: !3121, line: 40, baseType: !111, size: 8)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3160, file: !3121, line: 41, baseType: !111, size: 8, offset: 8)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3151, file: !3121, line: 46, baseType: !3165, size: 16)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3151, file: !3121, line: 43, size: 16, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3165, file: !3121, line: 44, baseType: !111, size: 8)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3165, file: !3121, line: 45, baseType: !111, size: 8, offset: 8)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3110, file: !166, line: 81, baseType: !3170, size: 64, offset: 448)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !166, line: 85, size: 384, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3171, file: !166, line: 86, baseType: !3133, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3171, file: !166, line: 87, baseType: !67, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3171, file: !166, line: 88, baseType: !67, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3171, file: !166, line: 89, baseType: !67, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3171, file: !166, line: 90, baseType: !1441, size: 8, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3171, file: !166, line: 92, baseType: !3170, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3110, file: !166, line: 82, baseType: !13, size: 32, offset: 512)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !944, file: !945, line: 1463, baseType: !3181, offset: 21184)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !945, line: 739, elements: !719)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !944, file: !945, line: 1470, baseType: !857, size: 128, align: 64, offset: 21184)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !944, file: !945, line: 1471, baseType: !902, size: 32, offset: 21312)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !944, file: !945, line: 1472, baseType: !50, size: 32, offset: 21344)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !944, file: !945, line: 1474, baseType: !943, size: 64, offset: 21376)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !944, file: !945, line: 1475, baseType: !2366, size: 320, offset: 21440)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !944, file: !945, line: 1478, baseType: !3188, size: 64, offset: 21760)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3190, line: 49, size: 512, elements: !3191)
!3190 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3198, !3199, !3200, !3202}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3189, file: !3190, line: 50, baseType: !3188, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3189, file: !3190, line: 51, baseType: !48, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3189, file: !3190, line: 52, baseType: !67, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3189, file: !3190, line: 53, baseType: !67, size: 64, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3189, file: !3190, line: 54, baseType: !3197, size: 64, offset: 256)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3189, file: !3190, line: 56, baseType: !13, size: 32, offset: 320)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3189, file: !3190, line: 58, baseType: !13, size: 32, offset: 352)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3189, file: !3190, line: 59, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !53, line: 159, baseType: !592)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3189, file: !3190, line: 60, baseType: !1370, size: 64, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !944, file: !945, line: 1482, baseType: !902, size: 32, offset: 21824)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !944, file: !945, line: 1489, baseType: !48, size: 64, offset: 21888)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !944, file: !945, line: 1504, baseType: !48, size: 64, offset: 21952)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !944, file: !945, line: 1505, baseType: !593, size: 64, offset: 22016)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !944, file: !945, line: 1506, baseType: !592, size: 64, offset: 22080)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !944, file: !945, line: 1507, baseType: !593, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !944, file: !945, line: 1508, baseType: !593, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !944, file: !945, line: 1509, baseType: !593, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !944, file: !945, line: 1510, baseType: !857, size: 128, align: 64, offset: 22208)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !944, file: !945, line: 1511, baseType: !50, size: 32, offset: 22336)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !944, file: !945, line: 1515, baseType: !3214, size: 64, offset: 22400)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !852, line: 56, size: 64, elements: !3215)
!3215 = !{!3216}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3214, file: !852, line: 57, baseType: !855, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !944, file: !945, line: 1518, baseType: !3214, size: 64, offset: 22464)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !944, file: !945, line: 1528, baseType: !857, size: 128, align: 64, offset: 22528)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !944, file: !945, line: 1552, baseType: !3220, size: 35328, offset: 23040)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3221, line: 430, size: 35328, elements: !3222)
!3221 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3222 = !{!3223, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !4381, !4382, !4383, !4384, !4385, !4386, !4389, !4390, !4391, !4392}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3220, file: !3221, line: 432, baseType: !3224, size: 192)
!3224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3225, size: 192, elements: !447)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3226, line: 16, size: 64, elements: !3227)
!3226 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3225, file: !3226, line: 17, baseType: !121, size: 16)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3225, file: !3226, line: 18, baseType: !121, size: 16, offset: 16)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3225, file: !3226, line: 19, baseType: !121, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3225, file: !3226, line: 19, baseType: !121, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3225, file: !3226, line: 19, baseType: !121, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3225, file: !3226, line: 19, baseType: !121, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3225, file: !3226, line: 19, baseType: !121, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3225, file: !3226, line: 20, baseType: !121, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3225, file: !3226, line: 20, baseType: !121, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3225, file: !3226, line: 20, baseType: !121, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3225, file: !3226, line: 20, baseType: !121, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3225, file: !3226, line: 20, baseType: !121, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3225, file: !3226, line: 20, baseType: !121, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3220, file: !3221, line: 436, baseType: !67, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3220, file: !3221, line: 440, baseType: !54, size: 16, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3220, file: !3221, line: 441, baseType: !54, size: 16, offset: 272)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3220, file: !3221, line: 442, baseType: !54, size: 16, offset: 288)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3220, file: !3221, line: 443, baseType: !54, size: 16, offset: 304)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3220, file: !3221, line: 447, baseType: !67, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3220, file: !3221, line: 448, baseType: !67, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3220, file: !3221, line: 459, baseType: !3249, size: 256, offset: 448)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3250, size: 256, elements: !911)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !238, line: 671, size: 8512, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3916, !3917, !3918, !3919, !3925, !3926, !3927, !3928, !3929, !4013, !4014, !4015, !4016, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4136, !4137, !4138, !4139, !4140, !4141, !4156, !4157, !4158, !4159, !4160, !4166, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4183, !4354, !4355, !4356, !4365, !4378, !4379, !4380}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3251, file: !238, line: 678, baseType: !125, size: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3251, file: !238, line: 684, baseType: !125, size: 128, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3251, file: !238, line: 685, baseType: !125, size: 128, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3251, file: !238, line: 689, baseType: !992, size: 192, align: 64, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3251, file: !238, line: 690, baseType: !592, size: 64, offset: 576)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3251, file: !238, line: 696, baseType: !125, size: 128, offset: 640)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3251, file: !238, line: 698, baseType: !711, size: 128, offset: 768)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3251, file: !238, line: 699, baseType: !125, size: 128, offset: 896)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3251, file: !238, line: 700, baseType: !50, size: 32, offset: 1024)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3251, file: !238, line: 703, baseType: !50, size: 32, offset: 1056)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3251, file: !238, line: 705, baseType: !50, size: 32, offset: 1088)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3251, file: !238, line: 707, baseType: !13, size: 32, offset: 1120)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3251, file: !238, line: 708, baseType: !3250, size: 64, offset: 1152)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3251, file: !238, line: 714, baseType: !3267, size: 64, offset: 1216)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !238, line: 302, size: 2432, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3822, !3823, !3824, !3825, !3826, !3830, !3831, !3835, !3839, !3840, !3844, !3848, !3849, !3850, !3854, !3858, !3862, !3863, !3864, !3868, !3872, !3876, !3881, !3882, !3902, !3906, !3907, !3908, !3912}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3268, file: !238, line: 303, baseType: !125, size: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3268, file: !238, line: 305, baseType: !392, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3268, file: !238, line: 306, baseType: !3273, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !179, line: 705, size: 5824, elements: !3275)
!3275 = !{!3276, !3277, !3278, !3281, !3282, !3335, !3421, !3422, !3423, !3424, !3425, !3432, !3524, !3537, !3547, !3551, !3553, !3554, !3555, !3559, !3566, !3567, !3570, !3573, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3763, !3764, !3765, !3768, !3771, !3780, !3781, !3782, !3783, !3784, !3785}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3274, file: !179, line: 706, baseType: !405, size: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3274, file: !179, line: 707, baseType: !3273, size: 64, offset: 512)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3274, file: !179, line: 709, baseType: !3279, size: 64, offset: 576)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !179, line: 37, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3274, file: !179, line: 711, baseType: !45, size: 64, offset: 640)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3274, file: !179, line: 712, baseType: !3283, size: 64, offset: 704)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3285)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !179, line: 89, size: 384, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3295, !3300, !3304}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3285, file: !179, line: 90, baseType: !45, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3285, file: !179, line: 91, baseType: !491, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3285, file: !179, line: 92, baseType: !3290, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!50, !3293, !441}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3285, file: !179, line: 93, baseType: !3296, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!446, !3293, !3299, !1620, !1621}
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3285, file: !179, line: 95, baseType: !3301, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{null, !3273}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3285, file: !179, line: 97, baseType: !3305, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3307)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !186, line: 286, size: 1472, elements: !3308)
!3308 = !{!3309, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3307, file: !186, line: 287, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!50, !3273}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3307, file: !186, line: 288, baseType: !3301, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3307, file: !186, line: 289, baseType: !3310, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3307, file: !186, line: 290, baseType: !3310, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3307, file: !186, line: 291, baseType: !3310, size: 64, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3307, file: !186, line: 292, baseType: !3310, size: 64, offset: 320)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3307, file: !186, line: 293, baseType: !3310, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3307, file: !186, line: 294, baseType: !3310, size: 64, offset: 448)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3307, file: !186, line: 295, baseType: !3310, size: 64, offset: 512)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3307, file: !186, line: 296, baseType: !3310, size: 64, offset: 576)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3307, file: !186, line: 297, baseType: !3310, size: 64, offset: 640)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3307, file: !186, line: 298, baseType: !3310, size: 64, offset: 704)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3307, file: !186, line: 299, baseType: !3310, size: 64, offset: 768)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3307, file: !186, line: 300, baseType: !3310, size: 64, offset: 832)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3307, file: !186, line: 301, baseType: !3310, size: 64, offset: 896)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3307, file: !186, line: 302, baseType: !3310, size: 64, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3307, file: !186, line: 303, baseType: !3310, size: 64, offset: 1024)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3307, file: !186, line: 304, baseType: !3310, size: 64, offset: 1088)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3307, file: !186, line: 305, baseType: !3310, size: 64, offset: 1152)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3307, file: !186, line: 306, baseType: !3310, size: 64, offset: 1216)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3307, file: !186, line: 307, baseType: !3310, size: 64, offset: 1280)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3307, file: !186, line: 308, baseType: !3310, size: 64, offset: 1344)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3307, file: !186, line: 309, baseType: !3310, size: 64, offset: 1408)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3274, file: !179, line: 714, baseType: !3336, size: 64, offset: 768)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3338)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3339, line: 80, size: 1344, elements: !3340)
!3339 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3420}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3338, file: !3339, line: 81, baseType: !45, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3338, file: !3339, line: 82, baseType: !45, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3338, file: !3339, line: 83, baseType: !491, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3338, file: !3339, line: 84, baseType: !491, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3338, file: !3339, line: 85, baseType: !491, size: 64, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3338, file: !3339, line: 87, baseType: !3347, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!50, !3273, !3350}
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !173, line: 96, size: 1152, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359, !3372, !3383, !3384, !3385, !3386, !3387, !3395, !3396, !3397, !3398, !3399, !3400}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3351, file: !173, line: 97, baseType: !45, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3351, file: !173, line: 98, baseType: !3336, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3351, file: !173, line: 100, baseType: !392, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3351, file: !173, line: 101, baseType: !45, size: 64, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3351, file: !173, line: 103, baseType: !1441, size: 8, offset: 256)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3351, file: !173, line: 104, baseType: !172, size: 32, offset: 288)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3351, file: !173, line: 106, baseType: !3360, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3363, line: 282, size: 1600, elements: !3364)
!3363 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!3364 = !{!3365, !3366, !3367, !3371}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3362, file: !3363, line: 283, baseType: !2751, size: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3362, file: !3363, line: 284, baseType: !2751, size: 256, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3362, file: !3363, line: 285, baseType: !3368, size: 1024, offset: 512)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !3369)
!3369 = !{!3370}
!3370 = !DISubrange(count: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3362, file: !3363, line: 286, baseType: !1370, size: 64, offset: 1536)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3351, file: !173, line: 107, baseType: !3373, size: 64, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3363, line: 217, size: 256, elements: !3376)
!3376 = !{!3377, !3379, !3381, !3382}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3375, file: !3363, line: 218, baseType: !3378, size: 128)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !1887)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3375, file: !3363, line: 219, baseType: !3380, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3363, line: 15, baseType: !67)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3375, file: !3363, line: 220, baseType: !589, size: 32, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3375, file: !3363, line: 221, baseType: !589, size: 32, offset: 224)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3351, file: !173, line: 109, baseType: !3310, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3351, file: !173, line: 110, baseType: !3301, size: 64, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3351, file: !173, line: 111, baseType: !3310, size: 64, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3351, file: !173, line: 112, baseType: !3301, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3351, file: !173, line: 113, baseType: !3388, size: 64, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!50, !3273, !3391}
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !186, line: 60, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !186, line: 58, size: 32, elements: !3393)
!3393 = !{!3394}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3392, file: !186, line: 59, baseType: !50, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3351, file: !173, line: 114, baseType: !3310, size: 64, offset: 768)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3351, file: !173, line: 115, baseType: !491, size: 64, offset: 832)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3351, file: !173, line: 116, baseType: !491, size: 64, offset: 896)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3351, file: !173, line: 118, baseType: !3305, size: 64, offset: 960)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3351, file: !173, line: 119, baseType: !3301, size: 64, offset: 1024)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3351, file: !173, line: 121, baseType: !3401, size: 64, offset: 1088)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !173, line: 121, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3338, file: !3339, line: 88, baseType: !3290, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3338, file: !3339, line: 89, baseType: !3310, size: 64, offset: 448)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3338, file: !3339, line: 90, baseType: !3301, size: 64, offset: 512)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3338, file: !3339, line: 91, baseType: !3301, size: 64, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3338, file: !3339, line: 92, baseType: !3301, size: 64, offset: 640)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3338, file: !3339, line: 94, baseType: !3310, size: 64, offset: 704)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3338, file: !3339, line: 95, baseType: !3310, size: 64, offset: 768)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3338, file: !3339, line: 97, baseType: !3388, size: 64, offset: 832)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3338, file: !3339, line: 98, baseType: !3310, size: 64, offset: 896)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3338, file: !3339, line: 100, baseType: !3310, size: 64, offset: 960)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3338, file: !3339, line: 102, baseType: !3310, size: 64, offset: 1024)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3338, file: !3339, line: 103, baseType: !3301, size: 64, offset: 1088)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3338, file: !3339, line: 105, baseType: !3305, size: 64, offset: 1152)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3338, file: !3339, line: 107, baseType: !3417, size: 64, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3419)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3339, line: 107, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3338, file: !3339, line: 109, baseType: !1441, size: 8, offset: 1280)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3274, file: !179, line: 715, baseType: !3350, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3274, file: !179, line: 717, baseType: !48, size: 64, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3274, file: !179, line: 719, baseType: !48, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3274, file: !179, line: 721, baseType: !800, size: 256, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3274, file: !179, line: 725, baseType: !3426, size: 448, offset: 1280)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !179, line: 517, size: 448, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3426, file: !179, line: 518, baseType: !125, size: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3426, file: !179, line: 519, baseType: !125, size: 128, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3426, file: !179, line: 520, baseType: !125, size: 128, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3426, file: !179, line: 521, baseType: !178, size: 32, offset: 384)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3274, file: !179, line: 726, baseType: !3433, size: 2496, offset: 1728)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !186, line: 663, size: 2496, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3517, !3521}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3433, file: !186, line: 664, baseType: !3391, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3433, file: !186, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3433, file: !186, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3433, file: !186, line: 667, baseType: !1441, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3433, file: !186, line: 668, baseType: !1441, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3433, file: !186, line: 669, baseType: !1441, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3433, file: !186, line: 670, baseType: !1441, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3433, file: !186, line: 671, baseType: !1441, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3433, file: !186, line: 672, baseType: !1441, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3433, file: !186, line: 673, baseType: !1441, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3433, file: !186, line: 674, baseType: !1441, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3433, file: !186, line: 675, baseType: !588, size: 32, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3433, file: !186, line: 676, baseType: !87, size: 32, offset: 96)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3433, file: !186, line: 678, baseType: !125, size: 128, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3433, file: !186, line: 679, baseType: !1595, size: 256, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3433, file: !186, line: 680, baseType: !3451, size: 64, offset: 512)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3453, line: 43, size: 1536, elements: !3454)
!3453 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3452, file: !3453, line: 44, baseType: !45, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3452, file: !3453, line: 45, baseType: !50, size: 32, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3452, file: !3453, line: 46, baseType: !125, size: 128, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3452, file: !3453, line: 47, baseType: !87, size: 32, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3452, file: !3453, line: 48, baseType: !3460, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !186, line: 629, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3452, file: !3453, line: 49, baseType: !2366, size: 320, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3452, file: !3453, line: 50, baseType: !67, size: 64, offset: 704)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3452, file: !3453, line: 51, baseType: !1070, size: 64, offset: 768)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3452, file: !3453, line: 52, baseType: !1070, size: 64, offset: 832)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3452, file: !3453, line: 53, baseType: !1070, size: 64, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3452, file: !3453, line: 54, baseType: !1070, size: 64, offset: 960)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3452, file: !3453, line: 55, baseType: !1070, size: 64, offset: 1024)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3452, file: !3453, line: 56, baseType: !67, size: 64, offset: 1088)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3452, file: !3453, line: 57, baseType: !67, size: 64, offset: 1152)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3452, file: !3453, line: 58, baseType: !67, size: 64, offset: 1216)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3452, file: !3453, line: 59, baseType: !67, size: 64, offset: 1280)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3452, file: !3453, line: 60, baseType: !67, size: 64, offset: 1344)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3452, file: !3453, line: 61, baseType: !3273, size: 64, offset: 1408)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3452, file: !3453, line: 62, baseType: !1441, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3452, file: !3453, line: 63, baseType: !1441, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3433, file: !186, line: 681, baseType: !1441, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3433, file: !186, line: 682, baseType: !1441, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3433, file: !186, line: 683, baseType: !1441, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3433, file: !186, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3433, file: !186, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3433, file: !186, line: 690, baseType: !1062, size: 512, offset: 640)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3433, file: !186, line: 691, baseType: !592, size: 64, offset: 1152)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3433, file: !186, line: 692, baseType: !1556, size: 256, offset: 1216)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3433, file: !186, line: 693, baseType: !82, size: 192, offset: 1472)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3433, file: !186, line: 694, baseType: !3460, size: 64, offset: 1664)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3433, file: !186, line: 695, baseType: !77, size: 32, offset: 1728)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3433, file: !186, line: 696, baseType: !77, size: 32, offset: 1760)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3433, file: !186, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3433, file: !186, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3433, file: !186, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3433, file: !186, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3433, file: !186, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3433, file: !186, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3433, file: !186, line: 703, baseType: !1441, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3433, file: !186, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3433, file: !186, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3433, file: !186, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3433, file: !186, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3433, file: !186, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3433, file: !186, line: 709, baseType: !13, size: 32, offset: 1824)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3433, file: !186, line: 710, baseType: !185, size: 32, offset: 1856)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3433, file: !186, line: 711, baseType: !193, size: 32, offset: 1888)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3433, file: !186, line: 712, baseType: !193, size: 32, offset: 1920)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3433, file: !186, line: 713, baseType: !50, size: 32, offset: 1952)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3433, file: !186, line: 714, baseType: !50, size: 32, offset: 1984)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3433, file: !186, line: 715, baseType: !592, size: 64, offset: 2048)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3433, file: !186, line: 716, baseType: !592, size: 64, offset: 2112)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3433, file: !186, line: 717, baseType: !592, size: 64, offset: 2176)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3433, file: !186, line: 718, baseType: !592, size: 64, offset: 2240)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3433, file: !186, line: 720, baseType: !3512, size: 64, offset: 2304)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !186, line: 632, size: 64, elements: !3514)
!3514 = !{!3515, !3516}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3513, file: !186, line: 633, baseType: !87, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3513, file: !186, line: 634, baseType: !13, size: 32, offset: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3433, file: !186, line: 721, baseType: !3518, size: 64, offset: 2368)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !3273, !367}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3433, file: !186, line: 722, baseType: !3522, size: 64, offset: 2432)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !186, line: 722, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3274, file: !179, line: 727, baseType: !3525, size: 64, offset: 4224)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !186, line: 742, size: 1792, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3534, !3535, !3536}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3526, file: !186, line: 743, baseType: !3307, size: 1472)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3526, file: !186, line: 744, baseType: !3310, size: 64, offset: 1472)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3526, file: !186, line: 745, baseType: !3531, size: 64, offset: 1536)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !3273, !1441}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3526, file: !186, line: 746, baseType: !3310, size: 64, offset: 1600)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3526, file: !186, line: 747, baseType: !3301, size: 64, offset: 1664)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3526, file: !186, line: 748, baseType: !3301, size: 64, offset: 1728)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3274, file: !179, line: 736, baseType: !3538, size: 128, offset: 4288)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !179, line: 529, size: 128, elements: !3539)
!3539 = !{!3540, !3544}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3538, file: !179, line: 531, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3543, line: 13, flags: DIFlagFwdDecl)
!3543 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3538, file: !179, line: 532, baseType: !3545, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !179, line: 49, flags: DIFlagFwdDecl)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3274, file: !179, line: 738, baseType: !3548, size: 64, offset: 4416)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3550)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !179, line: 738, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3274, file: !179, line: 740, baseType: !3552, size: 64, offset: 4480)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3274, file: !179, line: 741, baseType: !592, size: 64, offset: 4544)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3274, file: !179, line: 746, baseType: !592, size: 64, offset: 4608)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3274, file: !179, line: 747, baseType: !3556, size: 64, offset: 4672)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3558)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !179, line: 747, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3274, file: !179, line: 749, baseType: !3560, size: 64, offset: 4736)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !179, line: 428, size: 128, elements: !3562)
!3562 = !{!3563, !3564, !3565}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3561, file: !179, line: 433, baseType: !13, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3561, file: !179, line: 434, baseType: !13, size: 32, offset: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3561, file: !179, line: 435, baseType: !67, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3274, file: !179, line: 751, baseType: !125, size: 128, offset: 4800)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3274, file: !179, line: 762, baseType: !3568, size: 64, offset: 4928)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !179, line: 762, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3274, file: !179, line: 770, baseType: !3571, offset: 4992)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3572, line: 5, elements: !719)
!3572 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3274, file: !179, line: 772, baseType: !3574, size: 64, offset: 4992)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3576, line: 48, size: 1152, elements: !3577)
!3576 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!3577 = !{!3578, !3579, !3581, !3582, !3686, !3694, !3695, !3696, !3697, !3698, !3699}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3575, file: !3576, line: 49, baseType: !45, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3575, file: !3576, line: 50, baseType: !3580, size: 32, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3576, line: 25, baseType: !588)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3575, file: !3576, line: 51, baseType: !45, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3575, file: !3576, line: 52, baseType: !3583, size: 512, offset: 192)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3584, line: 41, size: 512, elements: !3585)
!3584 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3585 = !{!3586, !3588, !3682, !3683, !3684, !3685}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3583, file: !3584, line: 42, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3583, file: !3584, line: 43, baseType: !3589, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3591)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3584, line: 125, size: 1408, elements: !3592)
!3592 = !{!3593, !3597, !3601, !3607, !3611, !3612, !3616, !3620, !3624, !3629, !3633, !3634, !3638, !3642, !3646, !3657, !3658, !3659, !3660, !3670, !3674, !3678}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3591, file: !3584, line: 126, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!3587, !3587}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3591, file: !3584, line: 127, baseType: !3598, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !3587}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3591, file: !3584, line: 128, baseType: !3602, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!1441, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3583)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3591, file: !3584, line: 129, baseType: !3608, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!1370, !3605, !3293}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3591, file: !3584, line: 131, baseType: !3602, size: 64, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3591, file: !3584, line: 133, baseType: !3613, size: 64, offset: 320)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!200, !3605}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3591, file: !3584, line: 134, baseType: !3617, size: 64, offset: 384)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!1441, !3605, !45}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3591, file: !3584, line: 136, baseType: !3621, size: 64, offset: 448)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!50, !3605, !45, !13, !48, !63}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3591, file: !3584, line: 141, baseType: !3625, size: 64, offset: 512)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!50, !3605, !45, !3628, !63}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3591, file: !3584, line: 144, baseType: !3630, size: 64, offset: 576)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!45, !3605}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3591, file: !3584, line: 145, baseType: !3630, size: 64, offset: 640)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3591, file: !3584, line: 146, baseType: !3635, size: 64, offset: 704)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!3587, !3605}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3591, file: !3584, line: 148, baseType: !3639, size: 64, offset: 768)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!3587, !3605, !3587}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3591, file: !3584, line: 151, baseType: !3643, size: 64, offset: 832)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!3587, !3605, !45}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3591, file: !3584, line: 153, baseType: !3647, size: 64, offset: 896)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!50, !3605, !45, !45, !13, !13, !3650}
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3584, line: 94, size: 640, elements: !3652)
!3652 = !{!3653, !3654, !3655}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3651, file: !3584, line: 95, baseType: !3587, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3651, file: !3584, line: 96, baseType: !13, size: 32, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3651, file: !3584, line: 97, baseType: !3656, size: 512, offset: 128)
!3656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 512, elements: !1105)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3591, file: !3584, line: 158, baseType: !3639, size: 64, offset: 960)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3591, file: !3584, line: 161, baseType: !3635, size: 64, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3591, file: !3584, line: 163, baseType: !3594, size: 64, offset: 1088)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3591, file: !3584, line: 164, baseType: !3661, size: 64, offset: 1152)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!50, !3605, !3664}
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3584, line: 73, size: 128, elements: !3666)
!3666 = !{!3667, !3668, !3669}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3665, file: !3584, line: 74, baseType: !13, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3665, file: !3584, line: 75, baseType: !13, size: 32, offset: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3665, file: !3584, line: 76, baseType: !3605, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3591, file: !3584, line: 166, baseType: !3671, size: 64, offset: 1216)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!48, !3587, !50}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3591, file: !3584, line: 167, baseType: !3675, size: 64, offset: 1280)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!50, !3605, !13}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3591, file: !3584, line: 168, baseType: !3679, size: 64, offset: 1344)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!50, !3587}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3583, file: !3584, line: 44, baseType: !3273, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3583, file: !3584, line: 45, baseType: !125, size: 128, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3583, file: !3584, line: 46, baseType: !125, size: 128, offset: 320)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3583, file: !3584, line: 47, baseType: !111, size: 8, offset: 448)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3575, file: !3576, line: 54, baseType: !3687, size: 64, offset: 704)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3576, line: 28, size: 256, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3688, file: !3576, line: 29, baseType: !446, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3688, file: !3576, line: 30, baseType: !50, size: 32, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3688, file: !3576, line: 31, baseType: !48, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3688, file: !3576, line: 32, baseType: !3687, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3575, file: !3576, line: 55, baseType: !3687, size: 64, offset: 768)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3575, file: !3576, line: 56, baseType: !3574, size: 64, offset: 832)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3575, file: !3576, line: 57, baseType: !3574, size: 64, offset: 896)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3575, file: !3576, line: 58, baseType: !3574, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3575, file: !3576, line: 62, baseType: !67, size: 64, offset: 1024)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3575, file: !3576, line: 63, baseType: !48, size: 64, offset: 1088)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3274, file: !179, line: 773, baseType: !3587, size: 64, offset: 5056)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3274, file: !179, line: 776, baseType: !50, size: 32, offset: 5120)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3274, file: !179, line: 778, baseType: !675, size: 32, offset: 5152)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3274, file: !179, line: 779, baseType: !588, size: 32, offset: 5184)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3274, file: !179, line: 781, baseType: !87, size: 32, offset: 5216)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3274, file: !179, line: 782, baseType: !125, size: 128, offset: 5248)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3274, file: !179, line: 784, baseType: !3707, size: 64, offset: 5376)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3709)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3710, line: 52, size: 768, elements: !3711)
!3710 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3711 = !{!3712, !3713, !3714, !3715, !3716, !3720, !3724, !3725, !3726, !3754, !3758, !3762}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3709, file: !3710, line: 53, baseType: !45, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3709, file: !3710, line: 55, baseType: !491, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3709, file: !3710, line: 56, baseType: !491, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3709, file: !3710, line: 58, baseType: !3290, size: 64, offset: 192)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3709, file: !3710, line: 59, baseType: !3717, size: 64, offset: 256)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!446, !3293, !3299}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3709, file: !3710, line: 61, baseType: !3721, size: 64, offset: 320)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3707}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3709, file: !3710, line: 62, baseType: !3301, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3709, file: !3710, line: 64, baseType: !3310, size: 64, offset: 448)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3709, file: !3710, line: 66, baseType: !3727, size: 64, offset: 512)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !207, line: 39, size: 384, elements: !3730)
!3730 = !{!3731, !3732, !3736, !3740, !3746, !3750}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3729, file: !207, line: 40, baseType: !206, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3729, file: !207, line: 41, baseType: !3733, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!1441}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3729, file: !207, line: 42, baseType: !3737, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!48}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3729, file: !207, line: 43, baseType: !3741, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!1370, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !207, line: 19, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3729, file: !207, line: 44, baseType: !3747, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!1370}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3729, file: !207, line: 45, baseType: !3751, size: 64, offset: 320)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{null, !48}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3709, file: !3710, line: 67, baseType: !3755, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!1370, !3293}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3709, file: !3710, line: 69, baseType: !3759, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3293, !1620, !1621}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3709, file: !3710, line: 71, baseType: !3305, size: 64, offset: 704)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3274, file: !179, line: 785, baseType: !491, size: 64, offset: 5440)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3274, file: !179, line: 787, baseType: !3301, size: 64, offset: 5504)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3274, file: !179, line: 788, baseType: !3766, size: 64, offset: 5568)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !179, line: 46, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3274, file: !179, line: 789, baseType: !3769, size: 64, offset: 5632)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !179, line: 48, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3274, file: !179, line: 791, baseType: !3772, size: 64, offset: 5696)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !179, line: 597, size: 128, elements: !3774)
!3774 = !{!3775, !3776, !3777, !3778, !3779}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3773, file: !179, line: 598, baseType: !212, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3773, file: !179, line: 599, baseType: !221, size: 32, offset: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3773, file: !179, line: 600, baseType: !226, size: 32, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3773, file: !179, line: 601, baseType: !1441, size: 8, offset: 96)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3773, file: !179, line: 602, baseType: !1441, size: 8, offset: 104)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3274, file: !179, line: 793, baseType: !231, size: 32, offset: 5760)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3274, file: !179, line: 795, baseType: !1441, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3274, file: !179, line: 796, baseType: !1441, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3274, file: !179, line: 797, baseType: !1441, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3274, file: !179, line: 798, baseType: !1441, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3274, file: !179, line: 799, baseType: !1441, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3268, file: !238, line: 307, baseType: !3273, size: 64, offset: 256)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3268, file: !238, line: 308, baseType: !491, size: 64, offset: 320)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3268, file: !238, line: 309, baseType: !491, size: 64, offset: 384)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3268, file: !238, line: 310, baseType: !45, size: 64, offset: 448)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3268, file: !238, line: 311, baseType: !50, size: 32, offset: 512)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3268, file: !238, line: 316, baseType: !50, size: 32, offset: 544)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3268, file: !238, line: 318, baseType: !782, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3268, file: !238, line: 319, baseType: !3794, size: 64, offset: 640)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !238, line: 977, size: 1856, elements: !3796)
!3796 = !{!3797, !3812, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3795, file: !238, line: 978, baseType: !3798, size: 896)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !238, line: 873, size: 896, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3798, file: !238, line: 874, baseType: !3267, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3798, file: !238, line: 875, baseType: !3013, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3798, file: !238, line: 877, baseType: !125, size: 128, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3798, file: !238, line: 879, baseType: !125, size: 128, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3798, file: !238, line: 880, baseType: !125, size: 128, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3798, file: !238, line: 883, baseType: !13, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3798, file: !238, line: 885, baseType: !13, size: 32, offset: 544)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3798, file: !238, line: 886, baseType: !13, size: 32, offset: 576)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3798, file: !238, line: 888, baseType: !77, size: 32, offset: 608)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3798, file: !238, line: 889, baseType: !857, size: 128, align: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3798, file: !238, line: 891, baseType: !48, size: 64, offset: 768)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3798, file: !238, line: 898, baseType: !50, size: 32, offset: 832)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3795, file: !238, line: 979, baseType: !3813, size: 64, offset: 896)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3795, file: !238, line: 981, baseType: !125, size: 128, offset: 960)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3795, file: !238, line: 982, baseType: !50, size: 32, offset: 1088)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3795, file: !238, line: 984, baseType: !50, size: 32, offset: 1120)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3795, file: !238, line: 985, baseType: !50, size: 32, offset: 1152)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3795, file: !238, line: 987, baseType: !813, size: 32, offset: 1184)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3795, file: !238, line: 988, baseType: !1062, size: 512, offset: 1216)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3795, file: !238, line: 989, baseType: !1070, size: 64, offset: 1728)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3795, file: !238, line: 990, baseType: !13, size: 32, offset: 1792)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3268, file: !238, line: 320, baseType: !77, size: 32, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3268, file: !238, line: 321, baseType: !50, size: 32, offset: 736)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3268, file: !238, line: 322, baseType: !50, size: 32, offset: 768)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3268, file: !238, line: 325, baseType: !13, size: 32, offset: 800)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3268, file: !238, line: 331, baseType: !3827, size: 64, offset: 832)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !3267}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3268, file: !238, line: 332, baseType: !3827, size: 64, offset: 896)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3268, file: !238, line: 350, baseType: !3832, size: 64, offset: 960)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!50, !3250}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3268, file: !238, line: 356, baseType: !3836, size: 64, offset: 1024)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !3250, !1238}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3268, file: !238, line: 357, baseType: !3836, size: 64, offset: 1088)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3268, file: !238, line: 385, baseType: !3841, size: 64, offset: 1152)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!50, !3250, !50}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3268, file: !238, line: 386, baseType: !3845, size: 64, offset: 1216)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !3250, !50}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3268, file: !238, line: 406, baseType: !3845, size: 64, offset: 1280)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3268, file: !238, line: 407, baseType: !3845, size: 64, offset: 1344)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3268, file: !238, line: 415, baseType: !3851, size: 64, offset: 1408)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !3250}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3268, file: !238, line: 427, baseType: !3855, size: 64, offset: 1472)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !3267, !13}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3268, file: !238, line: 436, baseType: !3859, size: 64, offset: 1536)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!50, !3267}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3268, file: !238, line: 443, baseType: !3827, size: 64, offset: 1600)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3268, file: !238, line: 450, baseType: !3832, size: 64, offset: 1664)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3268, file: !238, line: 455, baseType: !3865, size: 64, offset: 1728)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3813, !1441}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3268, file: !238, line: 461, baseType: !3869, size: 64, offset: 1792)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3871, line: 325, flags: DIFlagFwdDecl)
!3871 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3268, file: !238, line: 469, baseType: !3873, size: 64, offset: 1856)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3813, !3813}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3268, file: !238, line: 476, baseType: !3877, size: 64, offset: 1920)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!48, !3250, !3880, !50, !1441}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3268, file: !238, line: 483, baseType: !3751, size: 64, offset: 1984)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3268, file: !238, line: 494, baseType: !3883, size: 64, offset: 2048)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!371, !3250, !3886, !67}
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !238, line: 1014, size: 448, elements: !3888)
!3888 = !{!3889, !3890, !3893, !3894, !3895, !3896, !3901}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3887, file: !238, line: 1015, baseType: !3250, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3887, file: !238, line: 1016, baseType: !3891, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !238, line: 641, flags: DIFlagFwdDecl)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3887, file: !238, line: 1017, baseType: !67, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3887, file: !238, line: 1018, baseType: !67, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3887, file: !238, line: 1019, baseType: !592, size: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, scope: !3887, file: !238, line: 1020, baseType: !3897, size: 64, offset: 320)
!3897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3887, file: !238, line: 1020, size: 64, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3897, file: !238, line: 1021, baseType: !48, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3897, file: !238, line: 1022, baseType: !67, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3887, file: !238, line: 1024, baseType: !50, size: 32, offset: 384)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3268, file: !238, line: 506, baseType: !3903, size: 64, offset: 2112)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!50, !128}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3268, file: !238, line: 520, baseType: !3851, size: 64, offset: 2176)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3268, file: !238, line: 530, baseType: !3832, size: 64, offset: 2240)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3268, file: !238, line: 537, baseType: !3909, size: 64, offset: 2304)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!1441, !3267, !50}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3268, file: !238, line: 542, baseType: !3913, size: 64, offset: 2368)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!50, !3250, !592}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3251, file: !238, line: 715, baseType: !48, size: 64, offset: 1280)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3251, file: !238, line: 717, baseType: !237, size: 32, offset: 1344)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3251, file: !238, line: 718, baseType: !13, size: 32, offset: 1376)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3251, file: !238, line: 719, baseType: !3920, size: 64, offset: 1408)
!3920 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3921, line: 26, baseType: !3922)
!3921 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3921, line: 24, size: 64, elements: !3923)
!3923 = !{!3924}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3922, file: !3921, line: 25, baseType: !3045, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3251, file: !238, line: 720, baseType: !806, size: 64, offset: 1472)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3251, file: !238, line: 728, baseType: !592, size: 64, offset: 1536)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3251, file: !238, line: 729, baseType: !592, size: 64, offset: 1600)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3251, file: !238, line: 730, baseType: !592, size: 64, offset: 1664)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3251, file: !238, line: 732, baseType: !3930, size: 1088, offset: 1728)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3931, line: 385, size: 1088, elements: !3932)
!3931 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3932 = !{!3933, !3934, !3935, !3936, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3986, !3987, !3994, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3930, file: !3931, line: 390, baseType: !589, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3930, file: !3931, line: 395, baseType: !589, size: 32, offset: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3930, file: !3931, line: 400, baseType: !593, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !3931, line: 402, baseType: !3937, size: 64, offset: 128)
!3937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !3931, line: 402, size: 64, elements: !3938)
!3938 = !{!3939, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3937, file: !3931, line: 403, baseType: !593, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3937, file: !3931, line: 404, baseType: !593, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3930, file: !3931, line: 407, baseType: !593, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3930, file: !3931, line: 408, baseType: !593, size: 64, offset: 256)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3930, file: !3931, line: 410, baseType: !593, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3930, file: !3931, line: 411, baseType: !593, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3930, file: !3931, line: 412, baseType: !593, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3930, file: !3931, line: 413, baseType: !593, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3930, file: !3931, line: 414, baseType: !593, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3930, file: !3931, line: 415, baseType: !593, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3930, file: !3931, line: 416, baseType: !593, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3930, file: !3931, line: 417, baseType: !593, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3930, file: !3931, line: 418, baseType: !593, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3930, file: !3931, line: 419, baseType: !593, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3930, file: !3931, line: 420, baseType: !593, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3930, file: !3931, line: 421, baseType: !593, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3930, file: !3931, line: 422, baseType: !593, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3930, file: !3931, line: 423, baseType: !593, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3930, file: !3931, line: 424, baseType: !593, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3930, file: !3931, line: 435, baseType: !593, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3930, file: !3931, line: 436, baseType: !593, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3930, file: !3931, line: 437, baseType: !593, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3930, file: !3931, line: 439, baseType: !593, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3930, file: !3931, line: 440, baseType: !593, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3930, file: !3931, line: 442, baseType: !593, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3930, file: !3931, line: 443, baseType: !593, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3930, file: !3931, line: 444, baseType: !593, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3930, file: !3931, line: 445, baseType: !593, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3930, file: !3931, line: 446, baseType: !593, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3930, file: !3931, line: 447, baseType: !593, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3930, file: !3931, line: 448, baseType: !593, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3930, file: !3931, line: 449, baseType: !593, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3930, file: !3931, line: 450, baseType: !593, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3930, file: !3931, line: 451, baseType: !593, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3930, file: !3931, line: 452, baseType: !593, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3930, file: !3931, line: 453, baseType: !593, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3930, file: !3931, line: 454, baseType: !593, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3930, file: !3931, line: 455, baseType: !593, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3930, file: !3931, line: 456, baseType: !593, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3930, file: !3931, line: 457, baseType: !593, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3930, file: !3931, line: 458, baseType: !593, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3930, file: !3931, line: 459, baseType: !593, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3981 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !3931, line: 461, baseType: !3982, size: 32, offset: 384)
!3982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !3931, line: 461, size: 32, elements: !3983)
!3983 = !{!3984, !3985}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3982, file: !3931, line: 462, baseType: !589, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3982, file: !3931, line: 463, baseType: !589, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3930, file: !3931, line: 466, baseType: !589, size: 32, offset: 416)
!3987 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !3931, line: 467, baseType: !3988, size: 64, offset: 448)
!3988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !3931, line: 467, size: 64, elements: !3989)
!3989 = !{!3990, !3991, !3992, !3993}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3988, file: !3931, line: 468, baseType: !593, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3988, file: !3931, line: 469, baseType: !593, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3988, file: !3931, line: 470, baseType: !593, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3988, file: !3931, line: 471, baseType: !593, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !3931, line: 473, baseType: !3995, size: 64, offset: 512)
!3995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !3931, line: 473, size: 64, elements: !3996)
!3996 = !{!3997, !3998, !3999, !4000}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3995, file: !3931, line: 474, baseType: !593, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3995, file: !3931, line: 475, baseType: !593, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3995, file: !3931, line: 476, baseType: !593, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3995, file: !3931, line: 477, baseType: !593, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3930, file: !3931, line: 479, baseType: !593, size: 64, offset: 576)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3930, file: !3931, line: 485, baseType: !593, size: 64, offset: 640)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3930, file: !3931, line: 490, baseType: !589, size: 32, offset: 704)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3930, file: !3931, line: 492, baseType: !368, size: 32, offset: 736)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3930, file: !3931, line: 501, baseType: !593, size: 64, offset: 768)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3930, file: !3931, line: 506, baseType: !589, size: 32, offset: 832)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3930, file: !3931, line: 507, baseType: !122, size: 16, offset: 864)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3930, file: !3931, line: 508, baseType: !122, size: 16, offset: 880)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3930, file: !3931, line: 509, baseType: !589, size: 32, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3930, file: !3931, line: 510, baseType: !589, size: 32, offset: 928)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3930, file: !3931, line: 518, baseType: !593, size: 64, offset: 960)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3930, file: !3931, line: 520, baseType: !593, size: 64, offset: 1024)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3251, file: !238, line: 733, baseType: !121, size: 16, offset: 2816)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3251, file: !238, line: 734, baseType: !121, size: 16, offset: 2832)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3251, file: !238, line: 735, baseType: !121, size: 16, offset: 2848)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3251, file: !238, line: 736, baseType: !4017, size: 1536, offset: 2880)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !238, line: 155, size: 1536, elements: !4018)
!4018 = !{!4019, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4103, !4104, !4105, !4106}
!4019 = !DIDerivedType(tag: DW_TAG_member, scope: !4017, file: !238, line: 157, baseType: !4020, size: 768)
!4020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4017, file: !238, line: 157, size: 768, elements: !4021)
!4021 = !{!4022, !4041, !4045, !4049, !4054, !4076}
!4022 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !238, line: 158, baseType: !4023, size: 768)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4020, file: !238, line: 158, size: 768, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4040}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4023, file: !238, line: 159, baseType: !592, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !4023, file: !238, line: 160, baseType: !592, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !4023, file: !238, line: 161, baseType: !67, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !4023, file: !238, line: 162, baseType: !67, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !4023, file: !238, line: 163, baseType: !50, size: 32, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4023, file: !238, line: 164, baseType: !50, size: 32, offset: 288)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4023, file: !238, line: 165, baseType: !50, size: 32, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4023, file: !238, line: 166, baseType: !50, size: 32, offset: 352)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !4023, file: !238, line: 168, baseType: !4034, size: 192, offset: 384)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !238, line: 134, size: 192, elements: !4035)
!4035 = !{!4036, !4037, !4038, !4039}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4034, file: !238, line: 135, baseType: !592, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4034, file: !238, line: 136, baseType: !13, size: 32, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4034, file: !238, line: 137, baseType: !50, size: 32, offset: 96)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4034, file: !238, line: 138, baseType: !50, size: 32, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !4023, file: !238, line: 169, baseType: !4034, size: 192, offset: 576)
!4041 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !238, line: 171, baseType: !4042, size: 512)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4020, file: !238, line: 171, size: 512, elements: !4043)
!4043 = !{!4044}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4042, file: !238, line: 172, baseType: !1062, size: 512)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !238, line: 174, baseType: !4046, size: 128)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4020, file: !238, line: 174, size: 128, elements: !4047)
!4047 = !{!4048}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !4046, file: !238, line: 176, baseType: !125, size: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !238, line: 178, baseType: !4050, size: 128)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4020, file: !238, line: 178, size: 128, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !4050, file: !238, line: 179, baseType: !592, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !4050, file: !238, line: 180, baseType: !592, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !238, line: 183, baseType: !4055, size: 320)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4020, file: !238, line: 183, size: 320, elements: !4056)
!4056 = !{!4057, !4065}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4055, file: !238, line: 189, baseType: !4058, size: 192)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !4059, line: 14, size: 192, elements: !4060)
!4059 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!4060 = !{!4061, !4062, !4063, !4064}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4058, file: !4059, line: 15, baseType: !67, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4058, file: !4059, line: 16, baseType: !67, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4058, file: !4059, line: 17, baseType: !111, size: 8, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4058, file: !4059, line: 18, baseType: !111, size: 8, offset: 136)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !4055, file: !238, line: 190, baseType: !4066, size: 128, offset: 192)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !4067, line: 21, size: 128, elements: !4068)
!4067 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!4068 = !{!4069, !4074}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !4066, file: !4067, line: 22, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !4067, line: 17, size: 64, elements: !4071)
!4071 = !{!4072}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4070, file: !4067, line: 18, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4066, file: !4067, line: 23, baseType: !4075, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !238, line: 193, baseType: !4077, size: 192)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4020, file: !238, line: 193, size: 192, elements: !4078)
!4078 = !{!4079, !4080, !4081, !4082, !4083}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !4077, file: !238, line: 194, baseType: !111, size: 8)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !4077, file: !238, line: 195, baseType: !111, size: 8, offset: 8)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4077, file: !238, line: 196, baseType: !121, size: 16, offset: 16)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !4077, file: !238, line: 197, baseType: !592, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !4077, file: !238, line: 198, baseType: !592, size: 64, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4017, file: !238, line: 205, baseType: !943, size: 64, offset: 768)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4017, file: !238, line: 211, baseType: !48, size: 64, offset: 832)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4017, file: !238, line: 214, baseType: !67, size: 64, offset: 896)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4017, file: !238, line: 223, baseType: !50, size: 32, offset: 960)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !4017, file: !238, line: 229, baseType: !3920, size: 64, offset: 1024)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4017, file: !238, line: 234, baseType: !592, size: 64, offset: 1088)
!4090 = !DIDerivedType(tag: DW_TAG_member, scope: !4017, file: !238, line: 236, baseType: !4091, size: 128, offset: 1152)
!4091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4017, file: !238, line: 236, size: 128, elements: !4092)
!4092 = !{!4093, !4098}
!4093 = !DIDerivedType(tag: DW_TAG_member, scope: !4091, file: !238, line: 237, baseType: !4094, size: 128)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4091, file: !238, line: 237, size: 128, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !4094, file: !238, line: 241, baseType: !592, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !4094, file: !238, line: 249, baseType: !3920, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, scope: !4091, file: !238, line: 251, baseType: !4099, size: 128)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4091, file: !238, line: 251, size: 128, elements: !4100)
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !4099, file: !238, line: 252, baseType: !592, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !4099, file: !238, line: 253, baseType: !592, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !4017, file: !238, line: 261, baseType: !592, size: 64, offset: 1280)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !4017, file: !238, line: 262, baseType: !592, size: 64, offset: 1344)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !4017, file: !238, line: 268, baseType: !592, size: 64, offset: 1408)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !4017, file: !238, line: 269, baseType: !592, size: 64, offset: 1472)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3251, file: !238, line: 738, baseType: !3013, size: 64, offset: 4416)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3251, file: !238, line: 744, baseType: !3813, size: 64, offset: 4480)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3251, file: !238, line: 745, baseType: !804, size: 64, offset: 4544)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3251, file: !238, line: 751, baseType: !806, size: 64, offset: 4608)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3251, file: !238, line: 752, baseType: !806, size: 64, offset: 4672)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3251, file: !238, line: 757, baseType: !800, size: 256, offset: 4736)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3251, file: !238, line: 758, baseType: !125, size: 128, offset: 4992)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3251, file: !238, line: 759, baseType: !3250, size: 64, offset: 5120)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3251, file: !238, line: 761, baseType: !50, size: 32, offset: 5184)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3251, file: !238, line: 762, baseType: !50, size: 32, offset: 5216)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3251, file: !238, line: 764, baseType: !125, size: 128, offset: 5248)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3251, file: !238, line: 765, baseType: !943, size: 64, offset: 5376)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3251, file: !238, line: 768, baseType: !800, size: 256, offset: 5440)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3251, file: !238, line: 769, baseType: !77, size: 32, offset: 5696)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3251, file: !238, line: 771, baseType: !3891, size: 64, offset: 5760)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3251, file: !238, line: 772, baseType: !125, size: 128, offset: 5824)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3251, file: !238, line: 773, baseType: !67, size: 64, offset: 5952)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3251, file: !238, line: 774, baseType: !50, size: 32, offset: 6016)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3251, file: !238, line: 777, baseType: !82, size: 192, offset: 6080)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3251, file: !238, line: 778, baseType: !4127, size: 64, offset: 6272)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1083, size: 384, elements: !4129)
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4135}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4128, file: !31, line: 1084, baseType: !877, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4128, file: !31, line: 1085, baseType: !50, size: 32, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4128, file: !31, line: 1086, baseType: !50, size: 32, offset: 96)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4128, file: !31, line: 1087, baseType: !4127, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4128, file: !31, line: 1088, baseType: !1265, size: 64, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4128, file: !31, line: 1089, baseType: !857, size: 128, align: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3251, file: !238, line: 781, baseType: !13, size: 32, offset: 6336)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3251, file: !238, line: 782, baseType: !13, size: 32, offset: 6368)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3251, file: !238, line: 783, baseType: !13, size: 32, offset: 6400)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3251, file: !238, line: 784, baseType: !13, size: 32, offset: 6432)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3251, file: !238, line: 785, baseType: !67, size: 64, offset: 6464)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3251, file: !238, line: 786, baseType: !4142, size: 256, offset: 6528)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4143, line: 17, size: 256, elements: !4144)
!4143 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4144 = !{!4145, !4146, !4151}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4142, file: !4143, line: 18, baseType: !962, size: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4142, file: !4143, line: 19, baseType: !4147, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{null, !4150}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4142, file: !4143, line: 20, baseType: !4152, size: 64, offset: 192)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4153, line: 16, size: 64, elements: !4154)
!4153 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4154 = !{!4155}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4152, file: !4153, line: 17, baseType: !943, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3251, file: !238, line: 787, baseType: !857, size: 128, align: 64, offset: 6784)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3251, file: !238, line: 788, baseType: !13, size: 32, offset: 6912)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3251, file: !238, line: 789, baseType: !4152, size: 64, offset: 6976)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3251, file: !238, line: 791, baseType: !77, size: 32, offset: 7040)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3251, file: !238, line: 794, baseType: !4161, size: 192, offset: 7104)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !238, line: 579, size: 192, elements: !4162)
!4162 = !{!4163, !4164, !4165}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4161, file: !238, line: 580, baseType: !125, size: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4161, file: !238, line: 581, baseType: !813, size: 32, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4161, file: !238, line: 582, baseType: !13, size: 32, offset: 160)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3251, file: !238, line: 796, baseType: !4167, size: 64, offset: 7296)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !238, line: 585, size: 128, elements: !4169)
!4169 = !{!4170, !4171}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4168, file: !238, line: 586, baseType: !67, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4168, file: !238, line: 587, baseType: !67, size: 64, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3251, file: !238, line: 797, baseType: !67, size: 64, offset: 7360)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3251, file: !238, line: 800, baseType: !3250, size: 64, offset: 7424)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3251, file: !238, line: 802, baseType: !3851, size: 64, offset: 7488)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3251, file: !238, line: 803, baseType: !857, size: 128, align: 64, offset: 7552)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3251, file: !238, line: 805, baseType: !922, size: 64, offset: 7680)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3251, file: !238, line: 806, baseType: !592, size: 64, offset: 7744)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3251, file: !238, line: 808, baseType: !806, size: 64, offset: 7808)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3251, file: !238, line: 810, baseType: !4180, size: 64, offset: 7872)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!592}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3251, file: !238, line: 811, baseType: !4184, size: 64, offset: 7936)
!4184 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !238, line: 605, baseType: !4185)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !3250, !4188, !4293}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !238, line: 1148, size: 2048, align: 512, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4200, !4201, !4202, !4207, !4208, !4215, !4236, !4258, !4268, !4286, !4287, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4189, file: !238, line: 1153, baseType: !592, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4189, file: !238, line: 1154, baseType: !592, size: 64, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4189, file: !238, line: 1155, baseType: !592, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4189, file: !238, line: 1161, baseType: !592, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4189, file: !238, line: 1165, baseType: !4196, size: 64, offset: 256)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4189, file: !238, line: 1162, size: 64, elements: !4197)
!4197 = !{!4198, !4199}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4196, file: !238, line: 1163, baseType: !588, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4196, file: !238, line: 1164, baseType: !588, size: 32, offset: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4189, file: !238, line: 1166, baseType: !592, size: 64, offset: 320)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4189, file: !238, line: 1167, baseType: !592, size: 64, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4189, file: !238, line: 1171, baseType: !4203, size: 64, offset: 448)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4189, file: !238, line: 1168, size: 64, elements: !4204)
!4204 = !{!4205, !4206}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4203, file: !238, line: 1169, baseType: !588, size: 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4203, file: !238, line: 1170, baseType: !588, size: 32, offset: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4189, file: !238, line: 1177, baseType: !592, size: 64, offset: 512)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4189, file: !238, line: 1178, baseType: !4209, size: 64, offset: 576)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !238, line: 67, size: 64, elements: !4211)
!4211 = !{!4212, !4213}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4210, file: !238, line: 68, baseType: !593, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4210, file: !238, line: 69, baseType: !4214, offset: 64)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, elements: !1672)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4189, file: !238, line: 1179, baseType: !4216, size: 64, offset: 640)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !238, line: 93, size: 256, elements: !4218)
!4218 = !{!4219, !4235}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4217, file: !238, line: 94, baseType: !4220, size: 224)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !238, line: 83, size: 224, elements: !4221)
!4221 = !{!4222, !4228, !4233, !4234}
!4222 = !DIDerivedType(tag: DW_TAG_member, scope: !4220, file: !238, line: 84, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4220, file: !238, line: 84, size: 64, elements: !4224)
!4224 = !{!4225, !4227}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4223, file: !238, line: 85, baseType: !4226, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4223, file: !238, line: 86, baseType: !67, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4220, file: !238, line: 88, baseType: !4229, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !238, line: 80, baseType: !4230)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!67, !48, !1370, !67, !67}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4220, file: !238, line: 89, baseType: !48, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4220, file: !238, line: 90, baseType: !588, size: 32, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4217, file: !238, line: 95, baseType: !588, size: 32, offset: 224)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4189, file: !238, line: 1180, baseType: !4237, size: 64, offset: 704)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !238, line: 123, size: 128, elements: !4239)
!4239 = !{!4240, !4241, !4242}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4238, file: !238, line: 124, baseType: !593, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4238, file: !238, line: 125, baseType: !593, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4238, file: !238, line: 126, baseType: !4243, offset: 128)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4244, elements: !1672)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3931, line: 1415, size: 192, elements: !4245)
!4245 = !{!4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4244, file: !3931, line: 1416, baseType: !593, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4244, file: !3931, line: 1417, baseType: !593, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4244, file: !3931, line: 1418, baseType: !593, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4244, file: !3931, line: 1419, baseType: !593, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4244, file: !3931, line: 1420, baseType: !593, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4244, file: !3931, line: 1421, baseType: !593, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4244, file: !3931, line: 1422, baseType: !593, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4244, file: !3931, line: 1423, baseType: !593, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4244, file: !3931, line: 1424, baseType: !593, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4244, file: !3931, line: 1425, baseType: !593, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4244, file: !3931, line: 1426, baseType: !593, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4244, file: !3931, line: 1427, baseType: !593, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4189, file: !238, line: 1181, baseType: !4259, size: 64, offset: 768)
!4259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3931, line: 1430, size: 64, elements: !4260)
!4260 = !{!4261, !4262}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4259, file: !3931, line: 1431, baseType: !593, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, scope: !4259, file: !3931, line: 1433, baseType: !4263, size: 64)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4259, file: !3931, line: 1433, size: 64, elements: !4264)
!4264 = !{!4265, !4266, !4267}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4263, file: !3931, line: 1434, baseType: !589, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4263, file: !3931, line: 1435, baseType: !122, size: 16, offset: 32)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4263, file: !3931, line: 1436, baseType: !122, size: 16, offset: 48)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4189, file: !238, line: 1182, baseType: !4269, size: 64, offset: 832)
!4269 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3931, line: 1267, size: 64, elements: !4270)
!4270 = !{!4271, !4272}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4269, file: !3931, line: 1268, baseType: !593, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, scope: !4269, file: !3931, line: 1269, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4269, file: !3931, line: 1269, size: 64, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4273, file: !3931, line: 1270, baseType: !593, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4273, file: !3931, line: 1271, baseType: !593, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4273, file: !3931, line: 1272, baseType: !593, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4273, file: !3931, line: 1273, baseType: !593, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4273, file: !3931, line: 1274, baseType: !593, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4273, file: !3931, line: 1275, baseType: !593, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4273, file: !3931, line: 1276, baseType: !593, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4273, file: !3931, line: 1277, baseType: !593, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4273, file: !3931, line: 1278, baseType: !593, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4273, file: !3931, line: 1279, baseType: !593, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4273, file: !3931, line: 1280, baseType: !593, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4189, file: !238, line: 1183, baseType: !592, size: 64, offset: 896)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4189, file: !238, line: 1185, baseType: !4288, size: 128, offset: 960)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4289, line: 7, size: 128, elements: !4290)
!4289 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4290 = !{!4291, !4292}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4288, file: !4289, line: 8, baseType: !593, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4288, file: !4289, line: 9, baseType: !4293, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4295, line: 103, size: 1344, elements: !4296)
!4295 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4325, !4326, !4327}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4294, file: !4295, line: 109, baseType: !67, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4294, file: !4295, line: 110, baseType: !67, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4294, file: !4295, line: 111, baseType: !67, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4294, file: !4295, line: 112, baseType: !67, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4294, file: !4295, line: 113, baseType: !67, size: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4294, file: !4295, line: 114, baseType: !67, size: 64, offset: 320)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4294, file: !4295, line: 117, baseType: !67, size: 64, offset: 384)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4294, file: !4295, line: 118, baseType: !67, size: 64, offset: 448)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4294, file: !4295, line: 119, baseType: !67, size: 64, offset: 512)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4294, file: !4295, line: 120, baseType: !67, size: 64, offset: 576)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4294, file: !4295, line: 121, baseType: !67, size: 64, offset: 640)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4294, file: !4295, line: 122, baseType: !67, size: 64, offset: 704)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4294, file: !4295, line: 123, baseType: !67, size: 64, offset: 768)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4294, file: !4295, line: 124, baseType: !67, size: 64, offset: 832)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4294, file: !4295, line: 125, baseType: !67, size: 64, offset: 896)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4294, file: !4295, line: 139, baseType: !67, size: 64, offset: 960)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4294, file: !4295, line: 142, baseType: !67, size: 64, offset: 1024)
!4314 = !DIDerivedType(tag: DW_TAG_member, scope: !4294, file: !4295, line: 144, baseType: !4315, size: 64, offset: 1088)
!4315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4294, file: !4295, line: 144, size: 64, elements: !4316)
!4316 = !{!4317, !4318, !4319}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4315, file: !4295, line: 146, baseType: !121, size: 16)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4315, file: !4295, line: 148, baseType: !592, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4315, file: !4295, line: 150, baseType: !4320, size: 64)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4295, line: 59, size: 64, elements: !4321)
!4321 = !{!4322, !4323, !4324}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4320, file: !4295, line: 61, baseType: !592, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4320, file: !4295, line: 63, baseType: !592, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4320, file: !4295, line: 65, baseType: !592, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4294, file: !4295, line: 153, baseType: !67, size: 64, offset: 1152)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4294, file: !4295, line: 154, baseType: !67, size: 64, offset: 1216)
!4327 = !DIDerivedType(tag: DW_TAG_member, scope: !4294, file: !4295, line: 156, baseType: !4328, size: 64, offset: 1280)
!4328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4294, file: !4295, line: 156, size: 64, elements: !4329)
!4329 = !{!4330, !4331, !4332}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4328, file: !4295, line: 158, baseType: !121, size: 16)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4328, file: !4295, line: 160, baseType: !592, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4328, file: !4295, line: 162, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4295, line: 69, size: 64, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4333, file: !4295, line: 71, baseType: !592, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4333, file: !4295, line: 73, baseType: !592, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4333, file: !4295, line: 75, baseType: !592, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4333, file: !4295, line: 77, baseType: !592, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4333, file: !4295, line: 80, baseType: !592, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4333, file: !4295, line: 83, baseType: !592, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4333, file: !4295, line: 86, baseType: !592, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4333, file: !4295, line: 88, baseType: !592, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4333, file: !4295, line: 93, baseType: !592, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4333, file: !4295, line: 100, baseType: !592, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4189, file: !238, line: 1186, baseType: !4288, size: 128, offset: 1088)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4189, file: !238, line: 1187, baseType: !592, size: 64, offset: 1216)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4189, file: !238, line: 1189, baseType: !592, size: 64, offset: 1280)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4189, file: !238, line: 1190, baseType: !592, size: 64, offset: 1344)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4189, file: !238, line: 1191, baseType: !592, size: 64, offset: 1408)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4189, file: !238, line: 1192, baseType: !592, size: 64, offset: 1472)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4189, file: !238, line: 1193, baseType: !592, size: 64, offset: 1536)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4189, file: !238, line: 1194, baseType: !592, size: 64, offset: 1600)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4189, file: !238, line: 1195, baseType: !592, size: 64, offset: 1664)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3251, file: !238, line: 812, baseType: !48, size: 64, offset: 8000)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3251, file: !238, line: 820, baseType: !298, size: 64, offset: 8064)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3251, file: !238, line: 821, baseType: !4357, size: 64, offset: 8128)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !4359, line: 1332, size: 128, elements: !4360)
!4359 = !DIFile(filename: "kernel/trace/trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3cded56e3446de300e74751317646ffb")
!4360 = !{!4361, !4364}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !4358, file: !4359, line: 1333, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DICompositeType(tag: DW_TAG_structure_type, name: "prog_entry", file: !4359, line: 1330, flags: DIFlagFwdDecl)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "filter_string", scope: !4358, file: !4359, line: 1334, baseType: !446, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3251, file: !238, line: 828, baseType: !4366, size: 64, offset: 8192)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !238, line: 1046, size: 1664, elements: !4368)
!4368 = !{!4369, !4370}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4367, file: !238, line: 1047, baseType: !1952, size: 1600)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4367, file: !238, line: 1048, baseType: !4371, size: 64, offset: 1600)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !238, line: 1039, size: 256, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4377}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4372, file: !238, line: 1040, baseType: !592, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4372, file: !238, line: 1041, baseType: !592, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4372, file: !238, line: 1042, baseType: !592, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4372, file: !238, line: 1043, baseType: !50, size: 32, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3251, file: !238, line: 832, baseType: !48, size: 64, offset: 8256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3251, file: !238, line: 834, baseType: !125, size: 128, offset: 8320)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3251, file: !238, line: 842, baseType: !589, size: 32, offset: 8448)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3220, file: !3221, line: 461, baseType: !67, size: 64, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3220, file: !3221, line: 463, baseType: !67, size: 64, offset: 768)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3220, file: !3221, line: 465, baseType: !67, size: 64, offset: 832)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3220, file: !3221, line: 466, baseType: !67, size: 64, offset: 896)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3220, file: !3221, line: 467, baseType: !67, size: 64, offset: 960)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3220, file: !3221, line: 473, baseType: !4387, size: 64, offset: 1024)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3221, line: 10, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3220, file: !3221, line: 480, baseType: !67, size: 64, offset: 1088)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3220, file: !3221, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3220, file: !3221, line: 491, baseType: !588, size: 32, offset: 1184)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3220, file: !3221, line: 501, baseType: !4393, size: 33792, offset: 1536)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4394, line: 448, size: 33792, elements: !4395)
!4394 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4395 = !{!4396, !4397, !4398, !4506, !4507, !4513, !4514}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4393, file: !4394, line: 461, baseType: !13, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4393, file: !4394, line: 468, baseType: !67, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4393, file: !4394, line: 476, baseType: !4399, size: 64, offset: 128)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4394, line: 356, size: 33280, align: 512, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4400, file: !4394, line: 358, baseType: !13, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4400, file: !4394, line: 361, baseType: !13, size: 32, offset: 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4400, file: !4394, line: 364, baseType: !592, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4400, file: !4394, line: 367, baseType: !592, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4400, file: !4394, line: 370, baseType: !592, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4400, file: !4394, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4400, file: !4394, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4400, file: !4394, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4400, file: !4394, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4400, file: !4394, line: 397, baseType: !4412, size: 32768, offset: 512)
!4412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4394, line: 348, size: 32768, elements: !4413)
!4413 = !{!4414, !4429, !4466, !4491, !4504}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4412, file: !4394, line: 349, baseType: !4415, size: 896)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4394, line: 12, size: 896, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4428}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4415, file: !4394, line: 13, baseType: !588, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4415, file: !4394, line: 14, baseType: !588, size: 32, offset: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4415, file: !4394, line: 15, baseType: !588, size: 32, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4415, file: !4394, line: 16, baseType: !588, size: 32, offset: 96)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4415, file: !4394, line: 17, baseType: !588, size: 32, offset: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4415, file: !4394, line: 18, baseType: !588, size: 32, offset: 160)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4415, file: !4394, line: 19, baseType: !588, size: 32, offset: 192)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4415, file: !4394, line: 22, baseType: !4425, size: 640, offset: 224)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 640, elements: !4426)
!4426 = !{!4427}
!4427 = !DISubrange(count: 20)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4415, file: !4394, line: 25, baseType: !588, size: 32, offset: 864)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4412, file: !4394, line: 350, baseType: !4430, size: 4096, align: 128)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4394, line: 34, size: 4096, align: 128, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4451, !4452, !4453, !4455, !4457, !4461}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4430, file: !4394, line: 35, baseType: !121, size: 16)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4430, file: !4394, line: 36, baseType: !121, size: 16, offset: 16)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4430, file: !4394, line: 37, baseType: !121, size: 16, offset: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4430, file: !4394, line: 38, baseType: !121, size: 16, offset: 48)
!4436 = !DIDerivedType(tag: DW_TAG_member, scope: !4430, file: !4394, line: 39, baseType: !4437, size: 128, offset: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4430, file: !4394, line: 39, size: 128, elements: !4438)
!4438 = !{!4439, !4444}
!4439 = !DIDerivedType(tag: DW_TAG_member, scope: !4437, file: !4394, line: 40, baseType: !4440, size: 128)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4437, file: !4394, line: 40, size: 128, elements: !4441)
!4441 = !{!4442, !4443}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4440, file: !4394, line: 41, baseType: !592, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4440, file: !4394, line: 42, baseType: !592, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, scope: !4437, file: !4394, line: 44, baseType: !4445, size: 128)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4437, file: !4394, line: 44, size: 128, elements: !4446)
!4446 = !{!4447, !4448, !4449, !4450}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4445, file: !4394, line: 45, baseType: !588, size: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4445, file: !4394, line: 46, baseType: !588, size: 32, offset: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4445, file: !4394, line: 47, baseType: !588, size: 32, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4445, file: !4394, line: 48, baseType: !588, size: 32, offset: 96)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4430, file: !4394, line: 51, baseType: !588, size: 32, offset: 192)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4430, file: !4394, line: 52, baseType: !588, size: 32, offset: 224)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4430, file: !4394, line: 55, baseType: !4454, size: 1024, offset: 256)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 1024, elements: !601)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4430, file: !4394, line: 58, baseType: !4456, size: 2048, offset: 1280)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 2048, elements: !451)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4430, file: !4394, line: 60, baseType: !4458, size: 384, offset: 3328)
!4458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 384, elements: !4459)
!4459 = !{!4460}
!4460 = !DISubrange(count: 12)
!4461 = !DIDerivedType(tag: DW_TAG_member, scope: !4430, file: !4394, line: 62, baseType: !4462, size: 384, offset: 3712)
!4462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4430, file: !4394, line: 62, size: 384, elements: !4463)
!4463 = !{!4464, !4465}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4462, file: !4394, line: 63, baseType: !4458, size: 384)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4462, file: !4394, line: 64, baseType: !4458, size: 384)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4412, file: !4394, line: 351, baseType: !4467, size: 1088)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4394, line: 79, size: 1088, elements: !4468)
!4468 = !{!4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4490}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4467, file: !4394, line: 80, baseType: !588, size: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4467, file: !4394, line: 81, baseType: !588, size: 32, offset: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4467, file: !4394, line: 82, baseType: !588, size: 32, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4467, file: !4394, line: 83, baseType: !588, size: 32, offset: 96)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4467, file: !4394, line: 84, baseType: !588, size: 32, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4467, file: !4394, line: 85, baseType: !588, size: 32, offset: 160)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4467, file: !4394, line: 86, baseType: !588, size: 32, offset: 192)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4467, file: !4394, line: 88, baseType: !4425, size: 640, offset: 224)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4467, file: !4394, line: 89, baseType: !111, size: 8, offset: 864)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4467, file: !4394, line: 90, baseType: !111, size: 8, offset: 872)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4467, file: !4394, line: 91, baseType: !111, size: 8, offset: 880)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4467, file: !4394, line: 92, baseType: !111, size: 8, offset: 888)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4467, file: !4394, line: 93, baseType: !111, size: 8, offset: 896)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4467, file: !4394, line: 94, baseType: !111, size: 8, offset: 904)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4467, file: !4394, line: 95, baseType: !4484, size: 64, offset: 960)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4486, line: 11, size: 128, elements: !4487)
!4486 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4487 = !{!4488, !4489}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4485, file: !4486, line: 12, baseType: !371, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4485, file: !4486, line: 13, baseType: !4293, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4467, file: !4394, line: 96, baseType: !588, size: 32, offset: 1024)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4412, file: !4394, line: 352, baseType: !4492, size: 4608, align: 512)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4394, line: 333, size: 4608, align: 512, elements: !4493)
!4493 = !{!4494, !4495, !4502}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4492, file: !4394, line: 334, baseType: !4430, size: 4096, align: 128)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4492, file: !4394, line: 335, baseType: !4496, size: 512, offset: 4096)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4394, line: 312, size: 512, elements: !4497)
!4497 = !{!4498, !4499, !4500}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4496, file: !4394, line: 313, baseType: !592, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4496, file: !4394, line: 314, baseType: !592, size: 64, offset: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4496, file: !4394, line: 315, baseType: !4501, size: 384, offset: 128)
!4501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 384, elements: !1496)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4492, file: !4394, line: 336, baseType: !4503, offset: 4608)
!4503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !1672)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4412, file: !4394, line: 353, baseType: !4505, size: 32768)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32768, elements: !2402)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4393, file: !4394, line: 484, baseType: !4399, size: 64, offset: 192)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4393, file: !4394, line: 491, baseType: !4508, size: 128, offset: 256)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4394, line: 404, size: 128, elements: !4509)
!4509 = !{!4510, !4511, !4512}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4508, file: !4394, line: 424, baseType: !592, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4508, file: !4394, line: 432, baseType: !13, size: 32, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4508, file: !4394, line: 440, baseType: !13, size: 32, offset: 96)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4393, file: !4394, line: 498, baseType: !4508, size: 128, offset: 384)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4393, file: !4394, line: 508, baseType: !4400, size: 33280, align: 512, offset: 512)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !923, file: !924, line: 31, baseType: !3869, size: 64, offset: 448)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !923, file: !924, line: 32, baseType: !13, size: 32, offset: 512)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !923, file: !924, line: 33, baseType: !922, size: 64, offset: 576)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !923, file: !924, line: 35, baseType: !4519, size: 64, offset: 640)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !924, line: 17, flags: DIFlagFwdDecl)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !923, file: !924, line: 37, baseType: !1396, size: 64, offset: 704)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !923, file: !924, line: 38, baseType: !1639, size: 64, offset: 768)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !923, file: !924, line: 39, baseType: !50, size: 32, offset: 832)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !923, file: !924, line: 40, baseType: !1429, size: 192, offset: 896)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !923, file: !924, line: 42, baseType: !50, size: 32, offset: 1088)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !874, file: !31, line: 951, baseType: !246, size: 32, offset: 128)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !874, file: !31, line: 952, baseType: !525, size: 32, offset: 160)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !874, file: !31, line: 952, baseType: !525, size: 32, offset: 192)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !874, file: !31, line: 953, baseType: !50, size: 32, offset: 224)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !845, file: !31, line: 1012, baseType: !1813, size: 64, offset: 896)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !845, file: !31, line: 1013, baseType: !4532, size: 256, offset: 960)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 970, size: 256, elements: !4533)
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4532, file: !31, line: 971, baseType: !67, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4532, file: !31, line: 972, baseType: !13, size: 32, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4532, file: !31, line: 973, baseType: !13, size: 32, offset: 96)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4532, file: !31, line: 974, baseType: !13, size: 32, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4532, file: !31, line: 975, baseType: !13, size: 32, offset: 160)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4532, file: !31, line: 976, baseType: !69, size: 64, offset: 192)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !845, file: !31, line: 1014, baseType: !4541, size: 128, offset: 1216)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4542, line: 8, size: 128, elements: !4543)
!4542 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4543 = !{!4544, !4545}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4541, file: !4542, line: 9, baseType: !664, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4541, file: !4542, line: 10, baseType: !554, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !845, file: !31, line: 1015, baseType: !519, size: 64, offset: 1344)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !845, file: !31, line: 1016, baseType: !4548, size: 64, offset: 1408)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4550)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1914, size: 2112, elements: !4551)
!4551 = !{!4552, !4553, !4557, !4561, !4565, !4593, !4594, !4600, !4613, !4617, !4621, !4622, !4626, !4627, !4631, !4636, !4637, !4641, !4645, !4651, !4652, !4656, !4657, !4661, !4665, !4669, !4674, !4678, !4682, !4686, !4690, !4691, !4697}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4550, file: !31, line: 1915, baseType: !392, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4550, file: !31, line: 1916, baseType: !4554, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!69, !1265, !69, !50}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4550, file: !31, line: 1917, baseType: !4558, size: 64, offset: 128)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!478, !1265, !446, !63, !68}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4550, file: !31, line: 1918, baseType: !4562, size: 64, offset: 192)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!478, !1265, !45, !63, !68}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4550, file: !31, line: 1919, baseType: !4566, size: 64, offset: 256)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!478, !4569, !4591}
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 373, size: 384, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4578, !4579, !4580, !4581}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4570, file: !31, line: 374, baseType: !1265, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4570, file: !31, line: 375, baseType: !69, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4570, file: !31, line: 376, baseType: !4575, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{null, !4569, !371}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4570, file: !31, line: 377, baseType: !48, size: 64, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4570, file: !31, line: 378, baseType: !50, size: 32, offset: 256)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4570, file: !31, line: 379, baseType: !121, size: 16, offset: 288)
!4581 = !DIDerivedType(tag: DW_TAG_member, scope: !4570, file: !31, line: 380, baseType: !4582, size: 64, offset: 320)
!4582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4570, file: !31, line: 380, size: 64, elements: !4583)
!4583 = !{!4584, !4587}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4582, file: !31, line: 386, baseType: !4585, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 386, flags: DIFlagFwdDecl)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4582, file: !31, line: 395, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!478, !48}
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 69, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4550, file: !31, line: 1920, baseType: !4566, size: 64, offset: 320)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4550, file: !31, line: 1921, baseType: !4595, size: 64, offset: 384)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!50, !4569, !4598, !13}
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !31, line: 53, flags: DIFlagFwdDecl)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4550, file: !31, line: 1923, baseType: !4601, size: 64, offset: 448)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!50, !1265, !4604}
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1858, size: 128, elements: !4606)
!4606 = !{!4607, !4612}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4605, file: !31, line: 1859, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1855, baseType: !4609)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!1441, !4604, !45, !50, !69, !592, !13}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4605, file: !31, line: 1860, baseType: !69, size: 64, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4550, file: !31, line: 1924, baseType: !4614, size: 64, offset: 512)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!2330, !1265, !2332}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4550, file: !31, line: 1925, baseType: !4618, size: 64, offset: 576)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!371, !1265, !13, !67}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4550, file: !31, line: 1926, baseType: !4618, size: 64, offset: 640)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4550, file: !31, line: 1927, baseType: !4623, size: 64, offset: 704)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!50, !1265, !2035}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4550, file: !31, line: 1928, baseType: !67, size: 64, offset: 768)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4550, file: !31, line: 1929, baseType: !4628, size: 64, offset: 832)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!50, !519, !1265}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4550, file: !31, line: 1930, baseType: !4632, size: 64, offset: 896)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!50, !1265, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1061, baseType: !48)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4550, file: !31, line: 1931, baseType: !4628, size: 64, offset: 960)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4550, file: !31, line: 1932, baseType: !4638, size: 64, offset: 1024)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!50, !1265, !69, !69, !50}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4550, file: !31, line: 1933, baseType: !4642, size: 64, offset: 1088)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!50, !50, !1265, !50}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4550, file: !31, line: 1934, baseType: !4646, size: 64, offset: 1152)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!50, !1265, !50, !4649}
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1063, flags: DIFlagFwdDecl)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4550, file: !31, line: 1935, baseType: !1262, size: 64, offset: 1216)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4550, file: !31, line: 1936, baseType: !4653, size: 64, offset: 1280)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!50, !50}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4550, file: !31, line: 1937, baseType: !4646, size: 64, offset: 1344)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4550, file: !31, line: 1938, baseType: !4658, size: 64, offset: 1408)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!478, !3088, !1265, !68, !63, !13}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4550, file: !31, line: 1939, baseType: !4662, size: 64, offset: 1472)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!478, !1265, !68, !3088, !63, !13}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4550, file: !31, line: 1940, baseType: !4666, size: 64, offset: 1536)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{null, !1265}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4550, file: !31, line: 1941, baseType: !4670, size: 64, offset: 1600)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!50, !1265, !50, !4673, !3880}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4550, file: !31, line: 1942, baseType: !4675, size: 64, offset: 1664)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!371, !1265, !50, !69, !69}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4550, file: !31, line: 1944, baseType: !4679, size: 64, offset: 1728)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{null, !788, !1265}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4550, file: !31, line: 1948, baseType: !4683, size: 64, offset: 1792)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!478, !1265, !69, !1265, !69, !63, !13}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4550, file: !31, line: 1950, baseType: !4687, size: 64, offset: 1856)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!69, !1265, !69, !1265, !69, !69, !13}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4550, file: !31, line: 1953, baseType: !4638, size: 64, offset: 1920)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4550, file: !31, line: 1954, baseType: !4692, size: 64, offset: 1984)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!50, !4695, !13}
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !31, line: 1911, flags: DIFlagFwdDecl)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4550, file: !31, line: 1955, baseType: !4698, size: 64, offset: 2048)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!50, !4695, !4598, !13}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !845, file: !31, line: 1018, baseType: !592, size: 64, offset: 1472)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !845, file: !31, line: 1020, baseType: !48, size: 64, offset: 1536)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !845, file: !31, line: 1023, baseType: !48, size: 64, offset: 1600)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !845, file: !31, line: 1027, baseType: !4705, size: 64, offset: 1664)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !845, file: !31, line: 1029, baseType: !515, size: 64, offset: 1728)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !845, file: !31, line: 1030, baseType: !4708, size: 32, offset: 1792)
!4708 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4709, line: 8, baseType: !588)
!4709 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !845, file: !31, line: 1031, baseType: !4708, size: 32, offset: 1824)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !789, file: !790, line: 29, baseType: !48, size: 64, offset: 896)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !731, file: !31, line: 2077, baseType: !785, size: 64, offset: 1088)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !731, file: !31, line: 2078, baseType: !785, size: 64, offset: 1152)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !731, file: !31, line: 2079, baseType: !785, size: 64, offset: 1216)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !731, file: !31, line: 2081, baseType: !4716, size: 64, offset: 1280)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!478, !670, !50, !446, !63, !69}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !731, file: !31, line: 2082, baseType: !4720, size: 64, offset: 1344)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!478, !670, !50, !45, !63, !69}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !731, file: !31, line: 2083, baseType: !4724, size: 64, offset: 1408)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!4727, !519}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !255, line: 296, size: 1664, elements: !4730)
!4730 = !{!4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4755, !4756, !4757}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4729, file: !255, line: 297, baseType: !711, size: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4729, file: !255, line: 298, baseType: !125, size: 128, offset: 128)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4729, file: !255, line: 299, baseType: !125, size: 128, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4729, file: !255, line: 300, baseType: !125, size: 128, offset: 384)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4729, file: !255, line: 301, baseType: !800, size: 256, offset: 512)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4729, file: !255, line: 302, baseType: !87, size: 32, offset: 768)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4729, file: !255, line: 303, baseType: !77, size: 32, offset: 800)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4729, file: !255, line: 304, baseType: !670, size: 64, offset: 832)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4729, file: !255, line: 305, baseType: !4740, size: 64, offset: 896)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !255, line: 68, size: 64, elements: !4741)
!4741 = !{!4742, !4754}
!4742 = !DIDerivedType(tag: DW_TAG_member, scope: !4740, file: !255, line: 69, baseType: !4743, size: 32)
!4743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4740, file: !255, line: 69, size: 32, elements: !4744)
!4744 = !{!4745, !4746, !4747}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4743, file: !255, line: 70, baseType: !525, size: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4743, file: !255, line: 71, baseType: !534, size: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4743, file: !255, line: 72, baseType: !4748, size: 32)
!4748 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4749, line: 24, baseType: !4750)
!4749 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4749, line: 22, size: 32, elements: !4751)
!4751 = !{!4752}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4750, file: !4749, line: 23, baseType: !4753, size: 32)
!4753 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4749, line: 20, baseType: !531)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4740, file: !255, line: 74, baseType: !254, size: 32, offset: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4729, file: !255, line: 306, baseType: !69, size: 64, offset: 960)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4729, file: !255, line: 307, baseType: !67, size: 64, offset: 1024)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4729, file: !255, line: 308, baseType: !4758, size: 576, offset: 1088)
!4758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !255, line: 205, size: 576, elements: !4759)
!4759 = !{!4760, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4758, file: !255, line: 206, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !255, line: 66, baseType: !71)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4758, file: !255, line: 207, baseType: !4761, size: 64, offset: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4758, file: !255, line: 208, baseType: !4761, size: 64, offset: 128)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4758, file: !255, line: 209, baseType: !4761, size: 64, offset: 192)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4758, file: !255, line: 210, baseType: !4761, size: 64, offset: 256)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4758, file: !255, line: 211, baseType: !4761, size: 64, offset: 320)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4758, file: !255, line: 212, baseType: !4761, size: 64, offset: 384)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4758, file: !255, line: 213, baseType: !1467, size: 64, offset: 448)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4758, file: !255, line: 214, baseType: !1467, size: 64, offset: 512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !731, file: !31, line: 2085, baseType: !4771, size: 64, offset: 1472)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!371, !670, !4774}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4776, line: 15, size: 256, elements: !4777)
!4776 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4777 = !{!4778, !4779, !4780, !4781, !4782}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4775, file: !4776, line: 16, baseType: !936, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4775, file: !4776, line: 19, baseType: !50, size: 32, offset: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4775, file: !4776, line: 26, baseType: !67, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4775, file: !4776, line: 33, baseType: !67, size: 64, offset: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4775, file: !4776, line: 36, baseType: !4783, size: 64, offset: 192)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4776, line: 36, flags: DIFlagFwdDecl)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !731, file: !31, line: 2087, baseType: !4771, size: 64, offset: 1536)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !731, file: !31, line: 2089, baseType: !701, size: 64, offset: 1600)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !671, file: !31, line: 1198, baseType: !4788, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4790)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !255, line: 324, size: 704, elements: !4791)
!4791 = !{!4792, !4796, !4800, !4804, !4805, !4806, !4807, !4808, !4813, !4818, !4822}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4790, file: !255, line: 325, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!50, !4728}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4790, file: !255, line: 326, baseType: !4797, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!4728, !670, !50}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4790, file: !255, line: 327, baseType: !4801, size: 64, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{null, !4728}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4790, file: !255, line: 328, baseType: !4793, size: 64, offset: 192)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4790, file: !255, line: 329, baseType: !4793, size: 64, offset: 256)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4790, file: !255, line: 330, baseType: !4793, size: 64, offset: 320)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4790, file: !255, line: 331, baseType: !759, size: 64, offset: 384)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4790, file: !255, line: 334, baseType: !4809, size: 64, offset: 448)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!4812, !519}
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4790, file: !255, line: 335, baseType: !4814, size: 64, offset: 512)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!50, !519, !4817}
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4790, file: !255, line: 337, baseType: !4819, size: 64, offset: 576)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!50, !519, !4812}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4790, file: !255, line: 339, baseType: !4823, size: 64, offset: 640)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!50, !670, !4826}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !671, file: !31, line: 1199, baseType: !4828, size: 64, offset: 512)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4830)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !255, line: 430, size: 704, elements: !4831)
!4831 = !{!4832, !4838, !4839, !4843, !4844, !4845, !4860, !4883, !4887, !4888, !4911}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4830, file: !255, line: 431, baseType: !4833, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!50, !670, !50, !50, !4836}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4541)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4830, file: !255, line: 432, baseType: !759, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4830, file: !255, line: 433, baseType: !4840, size: 64, offset: 128)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!50, !670, !13}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4830, file: !255, line: 434, baseType: !4840, size: 64, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4830, file: !255, line: 435, baseType: !759, size: 64, offset: 256)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4830, file: !255, line: 436, baseType: !4846, size: 64, offset: 320)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!50, !670, !50, !4849}
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !255, line: 417, size: 256, elements: !4851)
!4851 = !{!4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4850, file: !255, line: 418, baseType: !50, size: 32)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4850, file: !255, line: 419, baseType: !13, size: 32, offset: 32)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4850, file: !255, line: 420, baseType: !13, size: 32, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4850, file: !255, line: 422, baseType: !13, size: 32, offset: 96)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4850, file: !255, line: 423, baseType: !13, size: 32, offset: 128)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4850, file: !255, line: 424, baseType: !13, size: 32, offset: 160)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4850, file: !255, line: 425, baseType: !13, size: 32, offset: 192)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4850, file: !255, line: 426, baseType: !13, size: 32, offset: 224)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4830, file: !255, line: 437, baseType: !4861, size: 64, offset: 384)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!50, !670, !4740, !4864}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !255, line: 345, size: 960, elements: !4866)
!4866 = !{!4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4865, file: !255, line: 346, baseType: !50, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4865, file: !255, line: 347, baseType: !592, size: 64, offset: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4865, file: !255, line: 348, baseType: !592, size: 64, offset: 128)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4865, file: !255, line: 349, baseType: !592, size: 64, offset: 192)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4865, file: !255, line: 350, baseType: !592, size: 64, offset: 256)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4865, file: !255, line: 351, baseType: !592, size: 64, offset: 320)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4865, file: !255, line: 352, baseType: !592, size: 64, offset: 384)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4865, file: !255, line: 353, baseType: !810, size: 64, offset: 448)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4865, file: !255, line: 355, baseType: !810, size: 64, offset: 512)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4865, file: !255, line: 356, baseType: !50, size: 32, offset: 576)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4865, file: !255, line: 357, baseType: !50, size: 32, offset: 608)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4865, file: !255, line: 358, baseType: !592, size: 64, offset: 640)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4865, file: !255, line: 359, baseType: !592, size: 64, offset: 704)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4865, file: !255, line: 360, baseType: !592, size: 64, offset: 768)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4865, file: !255, line: 361, baseType: !810, size: 64, offset: 832)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4865, file: !255, line: 362, baseType: !50, size: 32, offset: 896)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4830, file: !255, line: 438, baseType: !4884, size: 64, offset: 448)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!50, !670, !4826, !4864}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4830, file: !255, line: 440, baseType: !4861, size: 64, offset: 512)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4830, file: !255, line: 441, baseType: !4889, size: 64, offset: 576)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!50, !670, !4892}
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !255, line: 411, size: 1408, elements: !4894)
!4894 = !{!4895, !4896}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4893, file: !255, line: 412, baseType: !13, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4893, file: !255, line: 413, baseType: !4897, size: 1344, offset: 64)
!4897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4898, size: 1344, elements: !447)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !255, line: 397, size: 448, elements: !4899)
!4899 = !{!4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4910}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4898, file: !255, line: 398, baseType: !13, size: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4898, file: !255, line: 399, baseType: !13, size: 32, offset: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4898, file: !255, line: 401, baseType: !13, size: 32, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4898, file: !255, line: 402, baseType: !13, size: 32, offset: 96)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4898, file: !255, line: 403, baseType: !13, size: 32, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4898, file: !255, line: 404, baseType: !13, size: 32, offset: 160)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4898, file: !255, line: 405, baseType: !13, size: 32, offset: 192)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4898, file: !255, line: 406, baseType: !594, size: 64, offset: 256)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4898, file: !255, line: 407, baseType: !4909, size: 64, offset: 320)
!4909 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !53, line: 132, baseType: !592)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4898, file: !255, line: 408, baseType: !4909, size: 64, offset: 384)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4830, file: !255, line: 442, baseType: !4840, size: 64, offset: 640)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !671, file: !31, line: 1200, baseType: !4913, size: 64, offset: 576)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4915)
!4915 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 54, flags: DIFlagFwdDecl)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !671, file: !31, line: 1201, baseType: !67, size: 64, offset: 640)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !671, file: !31, line: 1202, baseType: !67, size: 64, offset: 704)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !671, file: !31, line: 1203, baseType: !67, size: 64, offset: 768)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !671, file: !31, line: 1204, baseType: !554, size: 64, offset: 832)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !671, file: !31, line: 1205, baseType: !1293, size: 320, offset: 896)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !671, file: !31, line: 1206, baseType: !50, size: 32, offset: 1216)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !671, file: !31, line: 1207, baseType: !77, size: 32, offset: 1248)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !671, file: !31, line: 1209, baseType: !48, size: 64, offset: 1280)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !671, file: !31, line: 1211, baseType: !4925, size: 64, offset: 1344)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4928)
!4928 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1211, flags: DIFlagFwdDecl)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !671, file: !31, line: 1223, baseType: !4930, size: 64, offset: 1408)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !571, line: 34, size: 64, elements: !4931)
!4931 = !{!4932}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4930, file: !571, line: 35, baseType: !574, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !671, file: !31, line: 1224, baseType: !125, size: 128, offset: 1472)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !671, file: !31, line: 1225, baseType: !4935, size: 64, offset: 1600)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 1225, flags: DIFlagFwdDecl)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !671, file: !31, line: 1226, baseType: !4938, size: 64, offset: 1664)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !31, line: 1226, flags: DIFlagFwdDecl)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !671, file: !31, line: 1227, baseType: !4941, size: 64, offset: 1728)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !671, file: !31, line: 1228, baseType: !4944, size: 64, offset: 1792)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1228, flags: DIFlagFwdDecl)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !671, file: !31, line: 1229, baseType: !711, size: 128, offset: 1856)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !671, file: !31, line: 1230, baseType: !13, size: 32, offset: 1984)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !671, file: !31, line: 1231, baseType: !4949, size: 2496, offset: 2048)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !255, line: 521, size: 2496, elements: !4950)
!4950 = !{!4951, !4952, !4953, !4955, !4987}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4949, file: !255, line: 522, baseType: !13, size: 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4949, file: !255, line: 523, baseType: !1293, size: 320, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4949, file: !255, line: 524, baseType: !4954, size: 192, offset: 384)
!4954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 192, elements: !447)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4949, file: !255, line: 525, baseType: !4956, size: 1728, offset: 576)
!4956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4957, size: 1728, elements: !447)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !255, line: 222, size: 576, elements: !4958)
!4958 = !{!4959, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4957, file: !255, line: 223, baseType: !4960, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !255, line: 445, size: 256, elements: !4962)
!4962 = !{!4963, !4964, !4977, !4978}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4961, file: !255, line: 446, baseType: !50, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4961, file: !255, line: 447, baseType: !4965, size: 64, offset: 64)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4967)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !255, line: 312, size: 512, elements: !4968)
!4968 = !{!4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4967, file: !255, line: 313, baseType: !759, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4967, file: !255, line: 314, baseType: !759, size: 64, offset: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4967, file: !255, line: 315, baseType: !759, size: 64, offset: 128)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4967, file: !255, line: 316, baseType: !759, size: 64, offset: 192)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4967, file: !255, line: 317, baseType: !4793, size: 64, offset: 256)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4967, file: !255, line: 318, baseType: !4793, size: 64, offset: 320)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4967, file: !255, line: 319, baseType: !4793, size: 64, offset: 384)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4967, file: !255, line: 320, baseType: !4823, size: 64, offset: 448)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4961, file: !255, line: 448, baseType: !392, size: 64, offset: 128)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4961, file: !255, line: 449, baseType: !4960, size: 64, offset: 192)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4957, file: !255, line: 224, baseType: !50, size: 32, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4957, file: !255, line: 226, baseType: !125, size: 128, offset: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4957, file: !255, line: 227, baseType: !67, size: 64, offset: 256)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4957, file: !255, line: 228, baseType: !13, size: 32, offset: 320)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4957, file: !255, line: 229, baseType: !13, size: 32, offset: 352)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4957, file: !255, line: 230, baseType: !4761, size: 64, offset: 384)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4957, file: !255, line: 231, baseType: !4761, size: 64, offset: 448)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4957, file: !255, line: 232, baseType: !48, size: 64, offset: 512)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4949, file: !255, line: 526, baseType: !4988, size: 192, offset: 2304)
!4988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4965, size: 192, elements: !447)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !671, file: !31, line: 1233, baseType: !4990, size: 2368, offset: 4544)
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1184, size: 2368, elements: !4991)
!4991 = !{!4992, !4993, !4994}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4990, file: !31, line: 1185, baseType: !54, size: 16)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4990, file: !31, line: 1186, baseType: !54, size: 16, offset: 16)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4990, file: !31, line: 1187, baseType: !4995, size: 2304, offset: 64)
!4995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4996, size: 2304, elements: !447)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4997, line: 12, size: 768, elements: !4998)
!4997 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4998 = !{!4999, !5007, !5009, !5010, !5011}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4996, file: !4997, line: 13, baseType: !5000, size: 384)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !5001, line: 17, size: 384, elements: !5002)
!5001 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!5002 = !{!5003, !5004, !5005, !5006}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !5000, file: !5001, line: 18, baseType: !50, size: 32)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !5000, file: !5001, line: 19, baseType: !50, size: 32, offset: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !5000, file: !5001, line: 20, baseType: !82, size: 192, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !5000, file: !5001, line: 22, baseType: !857, size: 128, align: 64, offset: 256)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4996, file: !4997, line: 14, baseType: !5008, size: 64, offset: 384)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4996, file: !4997, line: 15, baseType: !4152, size: 64, offset: 448)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4996, file: !4997, line: 16, baseType: !82, size: 192, offset: 512)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4996, file: !4997, line: 17, baseType: !77, size: 32, offset: 704)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !671, file: !31, line: 1240, baseType: !48, size: 64, offset: 6912)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !671, file: !31, line: 1243, baseType: !588, size: 32, offset: 6976)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !671, file: !31, line: 1245, baseType: !1467, size: 64, offset: 7040)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !671, file: !31, line: 1246, baseType: !1467, size: 64, offset: 7104)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !671, file: !31, line: 1248, baseType: !589, size: 32, offset: 7168)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !671, file: !31, line: 1249, baseType: !5018, size: 64, offset: 7232)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 634, flags: DIFlagFwdDecl)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !671, file: !31, line: 1252, baseType: !2751, size: 256, offset: 7296)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !671, file: !31, line: 1253, baseType: !5022, size: 128, offset: 7552)
!5022 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5023, line: 21, baseType: !5024)
!5023 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5023, line: 19, size: 128, elements: !5025)
!5025 = !{!5026}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5024, file: !5023, line: 20, baseType: !3378, size: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !671, file: !31, line: 1255, baseType: !13, size: 32, offset: 7680)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !671, file: !31, line: 1261, baseType: !800, size: 256, offset: 7744)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !671, file: !31, line: 1267, baseType: !45, size: 64, offset: 8000)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !671, file: !31, line: 1269, baseType: !617, size: 64, offset: 8064)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !671, file: !31, line: 1271, baseType: !5032, size: 448, offset: 8128)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4776, line: 63, size: 448, elements: !5033)
!5033 = !{!5034, !5039, !5040, !5041, !5042, !5043, !5044}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5032, file: !4776, line: 64, baseType: !5035, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!67, !5038, !4774}
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5032, file: !4776, line: 66, baseType: !5035, size: 64, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5032, file: !4776, line: 69, baseType: !371, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5032, file: !4776, line: 70, baseType: !50, size: 32, offset: 192)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5032, file: !4776, line: 71, baseType: !13, size: 32, offset: 224)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5032, file: !4776, line: 74, baseType: !125, size: 128, offset: 256)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5032, file: !4776, line: 85, baseType: !5045, size: 64, offset: 384)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !671, file: !31, line: 1274, baseType: !804, size: 64, offset: 8576)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !671, file: !31, line: 1280, baseType: !804, size: 64, offset: 8640)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !671, file: !31, line: 1283, baseType: !50, size: 32, offset: 8704)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !671, file: !31, line: 1286, baseType: !4708, size: 32, offset: 8736)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !671, file: !31, line: 1289, baseType: !2581, size: 64, offset: 8768)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !671, file: !31, line: 1290, baseType: !707, size: 64, offset: 8832)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !671, file: !31, line: 1297, baseType: !1396, size: 64, offset: 8896)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !671, file: !31, line: 1304, baseType: !5054, size: 64, offset: 8960)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5055, line: 49, size: 64, elements: !5056)
!5055 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5056 = !{!5057}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5054, file: !5055, line: 50, baseType: !5058, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5055, line: 41, size: 512, align: 512, elements: !5060)
!5060 = !{!5061, !5062, !5067}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5059, file: !5055, line: 43, baseType: !87, size: 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5059, file: !5055, line: 45, baseType: !5063, size: 192, offset: 64)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5055, line: 29, size: 192, elements: !5064)
!5064 = !{!5065, !5066}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5063, file: !5055, line: 30, baseType: !125, size: 128)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5063, file: !5055, line: 32, baseType: !371, size: 64, offset: 128)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5059, file: !5055, line: 46, baseType: !371, size: 64, offset: 256)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !671, file: !31, line: 1305, baseType: !5054, size: 64, offset: 9024)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !671, file: !31, line: 1306, baseType: !857, size: 128, align: 64, offset: 9088)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !671, file: !31, line: 1307, baseType: !1556, size: 256, offset: 9216)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !671, file: !31, line: 1309, baseType: !800, size: 256, offset: 9472)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !671, file: !31, line: 1314, baseType: !50, size: 32, offset: 9728)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !671, file: !31, line: 1317, baseType: !87, size: 32, align: 512, offset: 10240)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !671, file: !31, line: 1318, baseType: !125, size: 128, offset: 10304)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !671, file: !31, line: 1320, baseType: !87, size: 32, offset: 10432)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !671, file: !31, line: 1321, baseType: !125, size: 128, offset: 10496)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !665, file: !666, line: 73, baseType: !50, size: 32, offset: 128)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !665, file: !666, line: 74, baseType: !5079, size: 64, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1830, line: 42, flags: DIFlagFwdDecl)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !619, file: !556, line: 141, baseType: !5083, size: 64, offset: 704)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!50, !4836, !1441}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !619, file: !556, line: 142, baseType: !5087, size: 64, offset: 768)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!554, !554, !5090}
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !555, file: !556, line: 96, baseType: !670, size: 64, offset: 832)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !555, file: !556, line: 97, baseType: !67, size: 64, offset: 896)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !555, file: !556, line: 98, baseType: !48, size: 64, offset: 960)
!5095 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !556, line: 100, baseType: !5096, size: 128, offset: 1024)
!5096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !556, line: 100, size: 128, elements: !5097)
!5097 = !{!5098, !5099}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5096, file: !556, line: 101, baseType: !125, size: 128)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5096, file: !556, line: 102, baseType: !2341, size: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !555, file: !556, line: 104, baseType: !125, size: 128, offset: 1152)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !555, file: !556, line: 105, baseType: !125, size: 128, offset: 1280)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !555, file: !556, line: 113, baseType: !5103, size: 128, offset: 1408)
!5103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !556, line: 109, size: 128, elements: !5104)
!5104 = !{!5105, !5106, !5107}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5103, file: !556, line: 110, baseType: !711, size: 128)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5103, file: !556, line: 111, baseType: !570, size: 128)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5103, file: !556, line: 112, baseType: !857, size: 128, align: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !548, file: !31, line: 1968, baseType: !5109, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!45, !554, !519, !5112}
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5114, line: 10, size: 128, elements: !5115)
!5114 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5115 = !{!5116, !5117}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5113, file: !5114, line: 11, baseType: !3751, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5113, file: !5114, line: 12, baseType: !48, size: 64, offset: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !548, file: !31, line: 1969, baseType: !5119, size: 64, offset: 128)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!50, !5079, !519, !50}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !548, file: !31, line: 1970, baseType: !5123, size: 64, offset: 192)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!542, !519, !50, !1441}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !548, file: !31, line: 1972, baseType: !5127, size: 64, offset: 256)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!50, !554, !446, !50}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !548, file: !31, line: 1974, baseType: !5131, size: 64, offset: 320)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!50, !5079, !519, !554, !52, !1441}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !548, file: !31, line: 1976, baseType: !5135, size: 64, offset: 384)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!50, !554, !519, !554}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !548, file: !31, line: 1977, baseType: !5139, size: 64, offset: 448)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!50, !519, !554}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !548, file: !31, line: 1978, baseType: !5143, size: 64, offset: 512)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!50, !5079, !519, !554, !45}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !548, file: !31, line: 1980, baseType: !5147, size: 64, offset: 576)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!50, !5079, !519, !554, !52}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !548, file: !31, line: 1982, baseType: !5139, size: 64, offset: 640)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !548, file: !31, line: 1983, baseType: !5152, size: 64, offset: 704)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!50, !5079, !519, !554, !52, !675}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !548, file: !31, line: 1985, baseType: !5156, size: 64, offset: 768)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!50, !5079, !519, !554, !519, !554, !13}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !548, file: !31, line: 1987, baseType: !5160, size: 64, offset: 832)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!50, !5079, !554, !5163}
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 226, size: 640, elements: !5165)
!5165 = !{!5166, !5167, !5168, !5178, !5187, !5188, !5193, !5194, !5195}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5164, file: !31, line: 227, baseType: !13, size: 32)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5164, file: !31, line: 228, baseType: !52, size: 16, offset: 32)
!5168 = !DIDerivedType(tag: DW_TAG_member, scope: !5164, file: !31, line: 241, baseType: !5169, size: 32, offset: 64)
!5169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5164, file: !31, line: 241, size: 32, elements: !5170)
!5170 = !{!5171, !5172}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5169, file: !31, line: 242, baseType: !525, size: 32)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5169, file: !31, line: 243, baseType: !5173, size: 32)
!5173 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5174, line: 16, baseType: !5175)
!5174 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5174, line: 14, size: 32, elements: !5176)
!5176 = !{!5177}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5175, file: !5174, line: 15, baseType: !530, size: 32)
!5178 = !DIDerivedType(tag: DW_TAG_member, scope: !5164, file: !31, line: 245, baseType: !5179, size: 32, offset: 96)
!5179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5164, file: !31, line: 245, size: 32, elements: !5180)
!5180 = !{!5181, !5182}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5179, file: !31, line: 246, baseType: !534, size: 32)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5179, file: !31, line: 247, baseType: !5183, size: 32)
!5183 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5174, line: 20, baseType: !5184)
!5184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5174, line: 18, size: 32, elements: !5185)
!5185 = !{!5186}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5184, file: !5174, line: 19, baseType: !538, size: 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5164, file: !31, line: 249, baseType: !69, size: 64, offset: 128)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5164, file: !31, line: 250, baseType: !5189, size: 128, offset: 192)
!5189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1468, line: 13, size: 128, elements: !5190)
!5190 = !{!5191, !5192}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5189, file: !1468, line: 14, baseType: !1467, size: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5189, file: !1468, line: 15, baseType: !371, size: 64, offset: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5164, file: !31, line: 251, baseType: !5189, size: 128, offset: 320)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5164, file: !31, line: 252, baseType: !5189, size: 128, offset: 448)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5164, file: !31, line: 259, baseType: !1265, size: 64, offset: 576)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !548, file: !31, line: 1988, baseType: !5197, size: 64, offset: 896)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!50, !5079, !4836, !5200, !588, !13}
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5202, line: 22, size: 1280, elements: !5203)
!5202 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5203 = !{!5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5201, file: !5202, line: 23, baseType: !588, size: 32)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5201, file: !5202, line: 24, baseType: !52, size: 16, offset: 32)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5201, file: !5202, line: 25, baseType: !13, size: 32, offset: 64)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5201, file: !5202, line: 26, baseType: !1475, size: 32, offset: 96)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5201, file: !5202, line: 27, baseType: !592, size: 64, offset: 128)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5201, file: !5202, line: 28, baseType: !592, size: 64, offset: 192)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5201, file: !5202, line: 41, baseType: !592, size: 64, offset: 256)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5201, file: !5202, line: 42, baseType: !675, size: 32, offset: 320)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5201, file: !5202, line: 43, baseType: !675, size: 32, offset: 352)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5201, file: !5202, line: 44, baseType: !525, size: 32, offset: 384)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5201, file: !5202, line: 45, baseType: !534, size: 32, offset: 416)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5201, file: !5202, line: 46, baseType: !69, size: 64, offset: 448)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5201, file: !5202, line: 47, baseType: !5189, size: 128, offset: 512)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5201, file: !5202, line: 48, baseType: !5189, size: 128, offset: 640)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5201, file: !5202, line: 49, baseType: !5189, size: 128, offset: 768)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5201, file: !5202, line: 50, baseType: !5189, size: 128, offset: 896)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5201, file: !5202, line: 51, baseType: !592, size: 64, offset: 1024)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5201, file: !5202, line: 52, baseType: !592, size: 64, offset: 1088)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5201, file: !5202, line: 53, baseType: !588, size: 32, offset: 1152)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5201, file: !5202, line: 54, baseType: !588, size: 32, offset: 1184)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5201, file: !5202, line: 55, baseType: !592, size: 64, offset: 1216)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !548, file: !31, line: 1990, baseType: !5226, size: 64, offset: 960)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!478, !554, !446, !63}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !548, file: !31, line: 1991, baseType: !5230, size: 64, offset: 1024)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!50, !519, !5233, !592, !592}
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 55, flags: DIFlagFwdDecl)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !548, file: !31, line: 1993, baseType: !5236, size: 64, offset: 1088)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!50, !519, !50}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !548, file: !31, line: 1994, baseType: !5240, size: 64, offset: 1152)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!50, !519, !554, !1265, !13, !52}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !548, file: !31, line: 1997, baseType: !5244, size: 64, offset: 1216)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!50, !5079, !519, !1265, !52}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !548, file: !31, line: 1999, baseType: !5248, size: 64, offset: 1280)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!542, !5079, !554, !50}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !548, file: !31, line: 2001, baseType: !5252, size: 64, offset: 1344)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!50, !5079, !554, !542, !50}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !548, file: !31, line: 2003, baseType: !5256, size: 64, offset: 1408)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!50, !5079, !554, !5259}
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !31, line: 76, flags: DIFlagFwdDecl)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !548, file: !31, line: 2005, baseType: !5262, size: 64, offset: 1472)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!50, !554, !5259}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !548, file: !31, line: 2006, baseType: !5266, size: 64, offset: 1536)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!5269, !519}
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !31, line: 3192, size: 192, elements: !5271)
!5271 = !{!5272, !5273}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5270, file: !31, line: 3193, baseType: !931, size: 128)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5270, file: !31, line: 3194, baseType: !588, size: 32, offset: 128)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !520, file: !31, line: 655, baseType: !670, size: 64, offset: 448)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !520, file: !31, line: 656, baseType: !515, size: 64, offset: 512)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !520, file: !31, line: 659, baseType: !48, size: 64, offset: 576)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !520, file: !31, line: 663, baseType: !67, size: 64, offset: 640)
!5278 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !31, line: 671, baseType: !5279, size: 32, offset: 704)
!5279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !31, line: 671, size: 32, elements: !5280)
!5280 = !{!5281, !5282}
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5279, file: !31, line: 672, baseType: !329, size: 32)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5279, file: !31, line: 673, baseType: !13, size: 32)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !520, file: !31, line: 675, baseType: !675, size: 32, offset: 736)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !520, file: !31, line: 676, baseType: !69, size: 64, offset: 768)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !520, file: !31, line: 677, baseType: !5189, size: 128, offset: 832)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !520, file: !31, line: 678, baseType: !5189, size: 128, offset: 960)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !520, file: !31, line: 679, baseType: !5189, size: 128, offset: 1088)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !520, file: !31, line: 680, baseType: !87, size: 32, offset: 1216)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !520, file: !31, line: 681, baseType: !54, size: 16, offset: 1248)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !520, file: !31, line: 682, baseType: !111, size: 8, offset: 1264)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !520, file: !31, line: 683, baseType: !111, size: 8, offset: 1272)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !520, file: !31, line: 684, baseType: !4909, size: 64, offset: 1280)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !520, file: !31, line: 691, baseType: !67, size: 64, offset: 1344)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !520, file: !31, line: 692, baseType: !1293, size: 320, offset: 1408)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !520, file: !31, line: 694, baseType: !67, size: 64, offset: 1728)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !520, file: !31, line: 695, baseType: !67, size: 64, offset: 1792)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !520, file: !31, line: 697, baseType: !711, size: 128, offset: 1856)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !520, file: !31, line: 698, baseType: !125, size: 128, offset: 1984)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !520, file: !31, line: 707, baseType: !125, size: 128, offset: 2112)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !520, file: !31, line: 708, baseType: !125, size: 128, offset: 2240)
!5301 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !31, line: 709, baseType: !5302, size: 128, offset: 2368)
!5302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !31, line: 709, size: 128, elements: !5303)
!5303 = !{!5304, !5305}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5302, file: !31, line: 710, baseType: !707, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5302, file: !31, line: 711, baseType: !857, size: 128, align: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !520, file: !31, line: 713, baseType: !806, size: 64, offset: 2496)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !520, file: !31, line: 714, baseType: !806, size: 64, offset: 2560)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !520, file: !31, line: 715, baseType: !77, size: 32, offset: 2624)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !520, file: !31, line: 716, baseType: !77, size: 32, offset: 2656)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !520, file: !31, line: 717, baseType: !77, size: 32, offset: 2688)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !520, file: !31, line: 719, baseType: !77, size: 32, offset: 2720)
!5312 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !31, line: 721, baseType: !5313, size: 64, offset: 2752)
!5313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !31, line: 721, size: 64, elements: !5314)
!5314 = !{!5315, !5316}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5313, file: !31, line: 722, baseType: !4548, size: 64)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5313, file: !31, line: 723, baseType: !738, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !520, file: !31, line: 725, baseType: !5318, size: 64, offset: 2816)
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 725, flags: DIFlagFwdDecl)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !520, file: !31, line: 726, baseType: !516, size: 1536, align: 64, offset: 2880)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !520, file: !31, line: 727, baseType: !125, size: 128, offset: 4416)
!5322 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !31, line: 728, baseType: !5323, size: 64, offset: 4544)
!5323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !31, line: 728, size: 64, elements: !5324)
!5324 = !{!5325, !5326, !5329, !5330}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5323, file: !31, line: 729, baseType: !3088, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5323, file: !31, line: 730, baseType: !5327, size: 64)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 730, flags: DIFlagFwdDecl)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5323, file: !31, line: 731, baseType: !446, size: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5323, file: !31, line: 732, baseType: !13, size: 32)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !520, file: !31, line: 735, baseType: !589, size: 32, offset: 4608)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !520, file: !31, line: 738, baseType: !589, size: 32, offset: 4640)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !520, file: !31, line: 739, baseType: !5018, size: 64, offset: 4672)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !520, file: !31, line: 750, baseType: !48, size: 64, offset: 4736)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !516, file: !31, line: 474, baseType: !931, size: 128, offset: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !516, file: !31, line: 475, baseType: !1293, size: 320, offset: 192)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !516, file: !31, line: 476, baseType: !936, size: 32, offset: 512)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !516, file: !31, line: 477, baseType: !77, size: 32, offset: 544)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !516, file: !31, line: 482, baseType: !1121, size: 128, offset: 576)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !516, file: !31, line: 483, baseType: !67, size: 64, offset: 704)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !516, file: !31, line: 484, baseType: !67, size: 64, offset: 768)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !516, file: !31, line: 485, baseType: !5343, size: 64, offset: 832)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5345)
!5345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 404, size: 1280, elements: !5346)
!5346 = !{!5347, !5351, !5421, !5425, !5429, !5435, !5439, !5443, !5448, !5452, !5456, !5460, !5461, !5465, !5469, !5473, !5478, !5482, !5489, !5490}
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5345, file: !31, line: 405, baseType: !5348, size: 64)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!50, !2142, !750}
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5345, file: !31, line: 406, baseType: !5352, size: 64, offset: 64)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!50, !1265, !5355}
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !142, line: 293, size: 1536, elements: !5357)
!5357 = !{!5358, !5388, !5402}
!5358 = !DIDerivedType(tag: DW_TAG_member, scope: !5356, file: !142, line: 295, baseType: !5359, size: 512)
!5359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5356, file: !142, line: 295, size: 512, elements: !5360)
!5360 = !{!5361, !5387}
!5361 = !DIDerivedType(tag: DW_TAG_member, scope: !5359, file: !142, line: 296, baseType: !5362, size: 448)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5359, file: !142, line: 296, size: 448, elements: !5363)
!5363 = !{!5364, !5365, !5374, !5375, !5376, !5385, !5386}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5362, file: !142, line: 298, baseType: !67, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, scope: !5362, file: !142, line: 299, baseType: !5366, size: 128, offset: 64)
!5366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5362, file: !142, line: 299, size: 128, elements: !5367)
!5367 = !{!5368, !5369}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5366, file: !142, line: 300, baseType: !125, size: 128)
!5369 = !DIDerivedType(tag: DW_TAG_member, scope: !5366, file: !142, line: 302, baseType: !5370, size: 128)
!5370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5366, file: !142, line: 302, size: 128, elements: !5371)
!5371 = !{!5372, !5373}
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5370, file: !142, line: 303, baseType: !48, size: 64)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5370, file: !142, line: 305, baseType: !13, size: 32, offset: 64)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5362, file: !142, line: 310, baseType: !515, size: 64, offset: 192)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5362, file: !142, line: 311, baseType: !67, size: 64, offset: 256)
!5376 = !DIDerivedType(tag: DW_TAG_member, scope: !5362, file: !142, line: 312, baseType: !5377, size: 64, offset: 320)
!5377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5362, file: !142, line: 312, size: 64, elements: !5378)
!5378 = !{!5379, !5380}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5377, file: !142, line: 313, baseType: !48, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5377, file: !142, line: 314, baseType: !5381, size: 64)
!5381 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !142, line: 257, baseType: !5382)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 255, size: 64, elements: !5383)
!5383 = !{!5384}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5382, file: !142, line: 256, baseType: !67, size: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5362, file: !142, line: 316, baseType: !77, size: 32, offset: 384)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5362, file: !142, line: 317, baseType: !77, size: 32, offset: 416)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5359, file: !142, line: 323, baseType: !2143, size: 512, align: 128)
!5388 = !DIDerivedType(tag: DW_TAG_member, scope: !5356, file: !142, line: 325, baseType: !5389, size: 512, offset: 512)
!5389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5356, file: !142, line: 325, size: 512, elements: !5390)
!5390 = !{!5391, !5401}
!5391 = !DIDerivedType(tag: DW_TAG_member, scope: !5389, file: !142, line: 326, baseType: !5392, size: 320)
!5392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5389, file: !142, line: 326, size: 320, elements: !5393)
!5393 = !{!5394, !5395, !5396, !5397, !5398, !5399, !5400}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5392, file: !142, line: 327, baseType: !67, size: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5392, file: !142, line: 328, baseType: !67, size: 64, offset: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5392, file: !142, line: 329, baseType: !67, size: 64, offset: 128)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5392, file: !142, line: 331, baseType: !77, size: 32, offset: 192)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5392, file: !142, line: 332, baseType: !77, size: 32, offset: 224)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5392, file: !142, line: 333, baseType: !77, size: 32, offset: 256)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5392, file: !142, line: 335, baseType: !13, size: 32, offset: 288)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5389, file: !142, line: 339, baseType: !2143, size: 512, align: 128)
!5402 = !DIDerivedType(tag: DW_TAG_member, scope: !5356, file: !142, line: 341, baseType: !5403, size: 512, offset: 1024)
!5403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5356, file: !142, line: 341, size: 512, elements: !5404)
!5404 = !{!5405, !5414, !5420}
!5405 = !DIDerivedType(tag: DW_TAG_member, scope: !5403, file: !142, line: 342, baseType: !5406, size: 384)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5403, file: !142, line: 342, size: 384, elements: !5407)
!5407 = !{!5408, !5409, !5410, !5411, !5412, !5413}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5406, file: !142, line: 343, baseType: !67, size: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5406, file: !142, line: 344, baseType: !67, size: 64, offset: 64)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5406, file: !142, line: 346, baseType: !48, size: 64, offset: 128)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5406, file: !142, line: 347, baseType: !48, size: 64, offset: 192)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5406, file: !142, line: 348, baseType: !48, size: 64, offset: 256)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5406, file: !142, line: 349, baseType: !48, size: 64, offset: 320)
!5414 = !DIDerivedType(tag: DW_TAG_member, scope: !5403, file: !142, line: 352, baseType: !5415, size: 256)
!5415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5403, file: !142, line: 352, size: 256, elements: !5416)
!5416 = !{!5417, !5418, !5419}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5415, file: !142, line: 353, baseType: !67, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5415, file: !142, line: 354, baseType: !67, size: 64, offset: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5415, file: !142, line: 356, baseType: !125, size: 128, offset: 128)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5403, file: !142, line: 359, baseType: !2143, size: 512, align: 128)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5345, file: !31, line: 409, baseType: !5422, size: 64, offset: 128)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!50, !515, !750}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5345, file: !31, line: 412, baseType: !5426, size: 64, offset: 192)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!1441, !515, !5355}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5345, file: !31, line: 414, baseType: !5430, size: 64, offset: 256)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{null, !5433}
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 310, flags: DIFlagFwdDecl)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5345, file: !31, line: 416, baseType: !5436, size: 64, offset: 320)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DISubroutineType(types: !5438)
!5438 = !{!50, !1265, !515, !69, !13, !3197, !3880}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5345, file: !31, line: 419, baseType: !5440, size: 64, offset: 384)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!50, !1265, !515, !69, !13, !13, !2142, !48}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5345, file: !31, line: 424, baseType: !5444, size: 64, offset: 448)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!5447, !515, !5447}
!5447 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !53, line: 131, baseType: !592)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5345, file: !31, line: 425, baseType: !5449, size: 64, offset: 512)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{null, !5355, !63, !63}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5345, file: !31, line: 426, baseType: !5453, size: 64, offset: 576)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!1441, !5355, !936}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5345, file: !31, line: 427, baseType: !5457, size: 64, offset: 640)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{null, !5355}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5345, file: !31, line: 428, baseType: !4566, size: 64, offset: 704)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5345, file: !31, line: 433, baseType: !5462, size: 64, offset: 768)
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!50, !515, !5355, !5355, !260}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5345, file: !31, line: 435, baseType: !5466, size: 64, offset: 832)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!50, !5355}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5345, file: !31, line: 436, baseType: !5470, size: 64, offset: 896)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!1441, !5355, !63, !63}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5345, file: !31, line: 438, baseType: !5474, size: 64, offset: 960)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{null, !5355, !5477, !5477}
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5345, file: !31, line: 439, baseType: !5479, size: 64, offset: 1024)
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5480, size: 64)
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!50, !515, !2142}
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5345, file: !31, line: 442, baseType: !5483, size: 64, offset: 1088)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DISubroutineType(types: !5485)
!5485 = !{!50, !5486, !1265, !5488}
!5486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5487, size: 64)
!5487 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 66, flags: DIFlagFwdDecl)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5345, file: !31, line: 444, baseType: !4666, size: 64, offset: 1152)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5345, file: !31, line: 445, baseType: !5491, size: 64, offset: 1216)
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!50, !4569, !4591}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !31, line: 486, baseType: !67, size: 64, offset: 896)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !516, file: !31, line: 487, baseType: !1293, size: 320, offset: 960)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !516, file: !31, line: 488, baseType: !4708, size: 32, offset: 1280)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !516, file: !31, line: 489, baseType: !87, size: 32, offset: 1312)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !516, file: !31, line: 490, baseType: !125, size: 128, offset: 1344)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !516, file: !31, line: 491, baseType: !48, size: 64, offset: 1472)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !506, file: !472, line: 180, baseType: !5501, size: 64, offset: 320)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{!478, !1265, !411, !505, !446, !69, !63}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !506, file: !472, line: 182, baseType: !5501, size: 64, offset: 384)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !506, file: !472, line: 184, baseType: !5506, size: 64, offset: 448)
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!50, !1265, !411, !505, !2035}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !494, file: !472, line: 90, baseType: !5510, size: 64, offset: 192)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !494, file: !472, line: 91, baseType: !5512, size: 64, offset: 256)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !462, file: !406, line: 120, baseType: !5514, size: 64, offset: 192)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!3727, !429}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !462, file: !406, line: 121, baseType: !5518, size: 64, offset: 256)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{!1370, !429}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !462, file: !406, line: 122, baseType: !5522, size: 64, offset: 320)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{null, !429, !1620, !1621}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !405, file: !406, line: 70, baseType: !1971, size: 64, offset: 384)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !405, file: !406, line: 71, baseType: !5527, size: 32, offset: 448)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5528, line: 19, size: 32, elements: !5529)
!5528 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5529 = !{!5530}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5527, file: !5528, line: 20, baseType: !902, size: 32)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !405, file: !406, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !405, file: !406, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !405, file: !406, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !405, file: !406, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !405, file: !406, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !402, file: !24, line: 47, baseType: !392, size: 64, offset: 512)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !402, file: !24, line: 48, baseType: !411, size: 64, offset: 576)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !402, file: !24, line: 49, baseType: !5539, size: 64, offset: 640)
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !24, line: 49, flags: DIFlagFwdDecl)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !402, file: !24, line: 50, baseType: !1594, size: 64, offset: 704)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !393, file: !24, line: 418, baseType: !5543, size: 64, offset: 1408)
!5543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5544, size: 64)
!5544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !24, line: 53, size: 448, elements: !5545)
!5545 = !{!5546, !5547, !5552, !5556, !5560, !5564}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5544, file: !24, line: 54, baseType: !482, size: 128)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5544, file: !24, line: 55, baseType: !5548, size: 64, offset: 128)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!478, !5543, !5551, !446}
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5544, file: !24, line: 57, baseType: !5553, size: 64, offset: 192)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!478, !5543, !5551, !45, !63}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5544, file: !24, line: 59, baseType: !5557, size: 64, offset: 256)
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{null, !392, !45}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5544, file: !24, line: 60, baseType: !5561, size: 64, offset: 320)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5562, size: 64)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!50, !392}
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5544, file: !24, line: 61, baseType: !5565, size: 64, offset: 384)
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5566, size: 64)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{null, !392}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !393, file: !24, line: 419, baseType: !45, size: 64, offset: 1472)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !393, file: !24, line: 420, baseType: !45, size: 64, offset: 1536)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !393, file: !24, line: 421, baseType: !411, size: 64, offset: 1600)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !393, file: !24, line: 424, baseType: !5572, size: 64, offset: 1664)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5574)
!5574 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !24, line: 424, flags: DIFlagFwdDecl)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !393, file: !24, line: 425, baseType: !5576, size: 64, offset: 1728)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !393, file: !24, line: 426, baseType: !13, size: 32, offset: 1792)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !393, file: !24, line: 435, baseType: !800, size: 256, offset: 1856)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !393, file: !24, line: 437, baseType: !5581, size: 64, offset: 2112)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5583, line: 69, size: 320, elements: !5584)
!5583 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5584 = !{!5585, !5586, !5587, !5604, !5606, !5610, !5611}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5582, file: !5583, line: 70, baseType: !45, size: 64)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5582, file: !5583, line: 71, baseType: !392, size: 64, offset: 64)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5582, file: !5583, line: 72, baseType: !5588, size: 64, offset: 128)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5590)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5583, line: 47, size: 256, elements: !5591)
!5591 = !{!5592, !5593, !5599, !5603}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5590, file: !5583, line: 49, baseType: !13, size: 32)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5590, file: !5583, line: 51, baseType: !5594, size: 64, offset: 64)
!5594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5595, size: 64)
!5595 = !DISubroutineType(types: !5596)
!5596 = !{!50, !45, !5597}
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5582)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5590, file: !5583, line: 53, baseType: !5600, size: 64, offset: 128)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DISubroutineType(types: !5602)
!5602 = !{!50, !446, !5597}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5590, file: !5583, line: 55, baseType: !3751, size: 64, offset: 192)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5582, file: !5583, line: 73, baseType: !5605, size: 16, offset: 192)
!5605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5582, file: !5583, line: 74, baseType: !5607, size: 8, offset: 208)
!5607 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !112, line: 16, baseType: !5608)
!5608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !114, line: 20, baseType: !5609)
!5609 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5582, file: !5583, line: 75, baseType: !111, size: 8, offset: 216)
!5611 = !DIDerivedType(tag: DW_TAG_member, scope: !5582, file: !5583, line: 76, baseType: !5612, size: 64, offset: 256)
!5612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5582, file: !5583, line: 76, size: 64, elements: !5613)
!5613 = !{!5614, !5615, !5622}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5612, file: !5583, line: 77, baseType: !48, size: 64)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5612, file: !5583, line: 78, baseType: !5616, size: 64)
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5617, size: 64)
!5617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5618)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5583, line: 86, size: 128, elements: !5619)
!5619 = !{!5620, !5621}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5618, file: !5583, line: 87, baseType: !13, size: 32)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5618, file: !5583, line: 88, baseType: !446, size: 64, offset: 64)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5612, file: !5583, line: 79, baseType: !5623, size: 64)
!5623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5624, size: 64)
!5624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5625)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5583, line: 92, size: 256, elements: !5626)
!5626 = !{!5627, !5628, !5629, !5630, !5631}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5625, file: !5583, line: 94, baseType: !13, size: 32)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5625, file: !5583, line: 95, baseType: !13, size: 32, offset: 32)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5625, file: !5583, line: 96, baseType: !5008, size: 64, offset: 64)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5625, file: !5583, line: 97, baseType: !5588, size: 64, offset: 128)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5625, file: !5583, line: 98, baseType: !48, size: 64, offset: 192)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !393, file: !24, line: 438, baseType: !13, size: 32, offset: 2176)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !393, file: !24, line: 441, baseType: !13, size: 32, offset: 2208)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !393, file: !24, line: 442, baseType: !5572, size: 64, offset: 2240)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !393, file: !24, line: 443, baseType: !5576, size: 64, offset: 2304)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !393, file: !24, line: 444, baseType: !1441, size: 8, offset: 2368)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !393, file: !24, line: 451, baseType: !1441, size: 8, offset: 2376)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !393, file: !24, line: 454, baseType: !13, size: 32, offset: 2400)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !393, file: !24, line: 455, baseType: !5640, size: 64, offset: 2432)
!5640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5642, line: 23, size: 96, elements: !5643)
!5642 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5643 = !{!5644, !5645, !5646}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5641, file: !5642, line: 24, baseType: !50, size: 32)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5641, file: !5642, line: 24, baseType: !50, size: 32, offset: 32)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5641, file: !5642, line: 24, baseType: !50, size: 32, offset: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !393, file: !24, line: 458, baseType: !5648, size: 64, offset: 2496)
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5649, size: 64)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{!50}
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !393, file: !24, line: 460, baseType: !5652, size: 4032, align: 512, offset: 2560)
!5652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5653, size: 4032, elements: !5667)
!5653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !24, line: 362, size: 576, elements: !5654)
!5654 = !{!5655, !5656, !5657}
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5653, file: !24, line: 363, baseType: !48, size: 64)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5653, file: !24, line: 364, baseType: !13, size: 32, offset: 64)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5653, file: !24, line: 367, baseType: !5658, size: 448, offset: 128)
!5658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !24, line: 319, size: 448, elements: !5659)
!5659 = !{!5660, !5661}
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5658, file: !24, line: 320, baseType: !392, size: 64)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5658, file: !24, line: 321, baseType: !5662, size: 384, offset: 64)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5663, line: 40, size: 384, elements: !5664)
!5663 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5664 = !{!5665}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5662, file: !5663, line: 41, baseType: !5666, size: 384, align: 64)
!5666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 384, align: 64, elements: !2658)
!5667 = !{!5668}
!5668 = !DISubrange(count: 7)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !393, file: !24, line: 463, baseType: !5670, size: 192, offset: 6592)
!5670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5671, line: 8, size: 192, elements: !5672)
!5671 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5672 = !{!5673, !5674, !5675}
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5670, file: !5671, line: 10, baseType: !13, size: 32)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5670, file: !5671, line: 11, baseType: !782, size: 64, offset: 64)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5670, file: !5671, line: 12, baseType: !5676, size: 64, offset: 128)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5678, line: 59, size: 48, elements: !5679)
!5678 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5679 = !{!5680, !5681, !5682, !5683, !5684, !5685}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5677, file: !5678, line: 60, baseType: !1387, size: 16)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5677, file: !5678, line: 61, baseType: !1387, size: 16, offset: 16)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5677, file: !5678, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5677, file: !5678, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5677, file: !5678, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5677, file: !5678, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !393, file: !24, line: 465, baseType: !67, size: 64, offset: 6784)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !393, file: !24, line: 469, baseType: !13, size: 32, offset: 6848)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !393, file: !24, line: 470, baseType: !125, size: 128, offset: 6912)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !393, file: !24, line: 471, baseType: !5690, size: 64, offset: 7040)
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5692, line: 33, size: 96, elements: !5693)
!5692 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5693 = !{!5694, !5695, !5696, !5697}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5691, file: !5692, line: 37, baseType: !50, size: 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5691, file: !5692, line: 43, baseType: !50, size: 32, offset: 32)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5691, file: !5692, line: 45, baseType: !54, size: 16, offset: 64)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5691, file: !5692, line: 47, baseType: !54, size: 16, offset: 80)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !393, file: !24, line: 476, baseType: !5699, size: 64, offset: 7104)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !24, line: 378, size: 256, elements: !5701)
!5701 = !{!5702, !5718, !5719, !5720}
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5700, file: !24, line: 379, baseType: !5703, size: 64)
!5703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5704, size: 64)
!5704 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5705, line: 204, baseType: !5706)
!5705 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5705, line: 197, size: 192, elements: !5707)
!5707 = !{!5708, !5710, !5711, !5712, !5714, !5716}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5706, file: !5705, line: 198, baseType: !5709, size: 32)
!5709 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5705, line: 21, baseType: !589)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5706, file: !5705, line: 199, baseType: !115, size: 8, offset: 32)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5706, file: !5705, line: 200, baseType: !115, size: 8, offset: 40)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5706, file: !5705, line: 201, baseType: !5713, size: 16, offset: 48)
!5713 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5705, line: 17, baseType: !122)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5706, file: !5705, line: 202, baseType: !5715, size: 64, offset: 64)
!5715 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5705, line: 16, baseType: !593)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5706, file: !5705, line: 203, baseType: !5717, size: 64, offset: 128)
!5717 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5705, line: 22, baseType: !593)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5700, file: !24, line: 380, baseType: !13, size: 32, offset: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5700, file: !24, line: 381, baseType: !446, size: 64, offset: 128)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5700, file: !24, line: 382, baseType: !446, size: 64, offset: 192)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !393, file: !24, line: 477, baseType: !5700, size: 256, offset: 7168)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !393, file: !24, line: 480, baseType: !5723, size: 64, offset: 7424)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !24, line: 480, flags: DIFlagFwdDecl)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !393, file: !24, line: 483, baseType: !5726, size: 64, offset: 7488)
!5726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5727, size: 64)
!5727 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !24, line: 483, flags: DIFlagFwdDecl)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !393, file: !24, line: 488, baseType: !446, size: 64, offset: 7552)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !393, file: !24, line: 492, baseType: !48, size: 64, offset: 7616)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !393, file: !24, line: 493, baseType: !13, size: 32, offset: 7680)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !393, file: !24, line: 495, baseType: !48, size: 64, offset: 7744)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !393, file: !24, line: 496, baseType: !13, size: 32, offset: 7808)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !393, file: !24, line: 499, baseType: !13, size: 32, offset: 7840)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !393, file: !24, line: 500, baseType: !5735, size: 64, offset: 7872)
!5735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5736, size: 64)
!5736 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !350, line: 45, baseType: !326)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !393, file: !24, line: 503, baseType: !13, size: 32, offset: 7936)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !393, file: !24, line: 504, baseType: !5739, size: 64, offset: 8000)
!5739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5740, size: 64)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5741, size: 64)
!5741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5742, line: 96, size: 192, elements: !5743)
!5742 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5743 = !{!5744, !5745, !5787, !5789}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5741, file: !5742, line: 97, baseType: !13, size: 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5741, file: !5742, line: 98, baseType: !5746, size: 64, offset: 64)
!5746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5747, size: 64)
!5747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5742, line: 24, size: 3072, elements: !5748)
!5748 = !{!5749, !5751, !5752, !5753, !5754, !5767, !5768, !5769, !5770, !5771, !5772, !5773, !5784, !5785, !5786}
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5747, file: !5742, line: 26, baseType: !5750, size: 128)
!5750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 128, elements: !2658)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5747, file: !5742, line: 27, baseType: !5750, size: 128, offset: 128)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5747, file: !5742, line: 28, baseType: !50, size: 32, offset: 256)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5747, file: !5742, line: 31, baseType: !87, size: 32, align: 512, offset: 512)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5747, file: !5742, line: 32, baseType: !5755, size: 960, offset: 576)
!5755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5756, line: 206, size: 960, elements: !5757)
!5756 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5757 = !{!5758, !5759, !5762, !5764, !5765, !5766}
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5755, file: !5756, line: 207, baseType: !860, size: 64)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5755, file: !5756, line: 208, baseType: !5760, size: 256, offset: 64)
!5760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5761, size: 256, elements: !911)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5755, file: !5756, line: 209, baseType: !5763, size: 256, offset: 320)
!5763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, elements: !911)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5755, file: !5756, line: 213, baseType: !371, size: 64, offset: 576)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5755, file: !5756, line: 215, baseType: !1655, size: 256, offset: 640)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5755, file: !5756, line: 216, baseType: !111, size: 8, offset: 896)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5747, file: !5742, line: 33, baseType: !67, size: 64, offset: 1536)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5747, file: !5742, line: 34, baseType: !67, size: 64, offset: 1600)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5747, file: !5742, line: 35, baseType: !1441, size: 8, offset: 1664)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5747, file: !5742, line: 36, baseType: !2366, size: 320, offset: 1728)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5747, file: !5742, line: 37, baseType: !1556, size: 256, offset: 2048)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5747, file: !5742, line: 38, baseType: !857, size: 128, align: 64, offset: 2304)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5747, file: !5742, line: 39, baseType: !5774, size: 64, offset: 2432)
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5775, size: 64)
!5775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5742, line: 49, size: 768, elements: !5776)
!5776 = !{!5777, !5778, !5779, !5780, !5781, !5782, !5783}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5775, file: !5742, line: 50, baseType: !87, size: 32)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5775, file: !5742, line: 51, baseType: !5763, size: 256, offset: 64)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5775, file: !5742, line: 53, baseType: !5763, size: 256, offset: 320)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5775, file: !5742, line: 54, baseType: !67, size: 64, offset: 576)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5775, file: !5742, line: 55, baseType: !5774, size: 64, offset: 640)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5775, file: !5742, line: 56, baseType: !50, size: 32, offset: 704)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5775, file: !5742, line: 57, baseType: !50, size: 32, offset: 736)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5747, file: !5742, line: 40, baseType: !67, size: 64, offset: 2496)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5747, file: !5742, line: 42, baseType: !50, size: 32, offset: 2560)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5747, file: !5742, line: 43, baseType: !5740, size: 64, offset: 2624)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5741, file: !5742, line: 99, baseType: !5788, offset: 128)
!5788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !718, line: 211, elements: !719)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5741, file: !5742, line: 100, baseType: !5790, size: 64, offset: 128)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5791, size: 64)
!5791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5742, line: 63, size: 3008, elements: !5792)
!5792 = !{!5793, !5794, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5822}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5791, file: !5742, line: 64, baseType: !5774, size: 64)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5791, file: !5742, line: 65, baseType: !5795, size: 192, offset: 64)
!5795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5774, size: 192, elements: !447)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5791, file: !5742, line: 67, baseType: !50, size: 32, offset: 256)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5791, file: !5742, line: 68, baseType: !800, size: 256, offset: 320)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5791, file: !5742, line: 69, baseType: !87, size: 32, offset: 576)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5791, file: !5742, line: 70, baseType: !800, size: 256, offset: 640)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5791, file: !5742, line: 71, baseType: !67, size: 64, offset: 896)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5791, file: !5742, line: 72, baseType: !67, size: 64, offset: 960)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5791, file: !5742, line: 73, baseType: !67, size: 64, offset: 1024)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5791, file: !5742, line: 74, baseType: !67, size: 64, offset: 1088)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5791, file: !5742, line: 75, baseType: !67, size: 64, offset: 1152)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5791, file: !5742, line: 76, baseType: !67, size: 64, offset: 1216)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5791, file: !5742, line: 77, baseType: !67, size: 64, offset: 1280)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5791, file: !5742, line: 78, baseType: !67, size: 64, offset: 1344)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5791, file: !5742, line: 79, baseType: !1441, size: 8, offset: 1408)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5791, file: !5742, line: 80, baseType: !67, size: 64, offset: 1472)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5791, file: !5742, line: 81, baseType: !800, size: 256, offset: 1536)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5791, file: !5742, line: 82, baseType: !1595, size: 256, offset: 1792)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5791, file: !5742, line: 84, baseType: !77, size: 32, offset: 2048)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5791, file: !5742, line: 87, baseType: !67, size: 64, offset: 2112)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5791, file: !5742, line: 88, baseType: !67, size: 64, offset: 2176)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5791, file: !5742, line: 89, baseType: !5816, size: 704, offset: 2240)
!5816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1557, line: 111, size: 704, elements: !5817)
!5817 = !{!5818, !5819, !5820, !5821}
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5816, file: !1557, line: 112, baseType: !1556, size: 256)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5816, file: !1557, line: 113, baseType: !2366, size: 320, offset: 256)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5816, file: !1557, line: 116, baseType: !2581, size: 64, offset: 576)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5816, file: !1557, line: 117, baseType: !50, size: 32, offset: 640)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5791, file: !5742, line: 90, baseType: !5740, size: 64, offset: 2944)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !393, file: !24, line: 515, baseType: !363, size: 64, offset: 8064)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !393, file: !24, line: 516, baseType: !13, size: 32, offset: 8128)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !393, file: !24, line: 519, baseType: !13, size: 32, offset: 8160)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !393, file: !24, line: 520, baseType: !3628, size: 64, offset: 8192)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !393, file: !24, line: 523, baseType: !5828, size: 64, offset: 8256)
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !393, file: !24, line: 524, baseType: !13, size: 32, offset: 8320)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !393, file: !24, line: 525, baseType: !5831, size: 64, offset: 8384)
!5831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5832, size: 64)
!5832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5833, size: 64)
!5833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !5834, line: 28, size: 192, elements: !5835)
!5834 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!5835 = !{!5836, !5837, !5838}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !5833, file: !5834, line: 29, baseType: !45, size: 64)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !5833, file: !5834, line: 30, baseType: !45, size: 64, offset: 64)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !5833, file: !5834, line: 31, baseType: !67, size: 64, offset: 128)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !393, file: !24, line: 526, baseType: !13, size: 32, offset: 8448)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !393, file: !24, line: 533, baseType: !48, size: 64, offset: 8512)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !393, file: !24, line: 534, baseType: !13, size: 32, offset: 8576)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !393, file: !24, line: 535, baseType: !5843, size: 64, offset: 8640)
!5843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !393, file: !24, line: 536, baseType: !13, size: 32, offset: 8704)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !393, file: !24, line: 539, baseType: !50, size: 32, offset: 8736)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !393, file: !24, line: 540, baseType: !5847, size: 64, offset: 8768)
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !378, line: 32, size: 64, elements: !5849)
!5849 = !{!5850, !5851}
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5848, file: !378, line: 33, baseType: !367, size: 32)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5848, file: !378, line: 34, baseType: !367, size: 32, offset: 32)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !393, file: !24, line: 563, baseType: !125, size: 128, offset: 8832)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !393, file: !24, line: 565, baseType: !125, size: 128, offset: 8960)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !393, file: !24, line: 568, baseType: !2500, size: 64, offset: 9088)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !393, file: !24, line: 570, baseType: !77, size: 32, offset: 9152)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !387, file: !388, line: 172, baseType: !5847, size: 64, offset: 128)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !382, file: !378, line: 67, baseType: !5847, size: 64)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !349, file: !350, line: 36, baseType: !48, size: 64, offset: 256)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !349, file: !350, line: 37, baseType: !48, size: 64, offset: 320)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !349, file: !350, line: 38, baseType: !48, size: 64, offset: 384)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !349, file: !350, line: 39, baseType: !5648, size: 64, offset: 448)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !349, file: !350, line: 40, baseType: !2500, size: 64, offset: 512)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !349, file: !350, line: 41, baseType: !5864, size: 64, offset: 576)
!5864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5865, size: 64)
!5865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !350, line: 26, size: 192, elements: !5866)
!5866 = !{!5867, !5868, !5869}
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5865, file: !350, line: 27, baseType: !48, size: 64)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5865, file: !350, line: 28, baseType: !48, size: 64, offset: 64)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5865, file: !350, line: 29, baseType: !50, size: 32, offset: 128)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !299, file: !12, line: 380, baseType: !5871, size: 256, offset: 256)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !12, line: 148, size: 256, elements: !5872)
!5872 = !{!5873, !5874, !5875}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5871, file: !12, line: 149, baseType: !711, size: 128)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5871, file: !12, line: 150, baseType: !50, size: 32, offset: 128)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5871, file: !12, line: 151, baseType: !5876, size: 64, offset: 192)
!5876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5877, size: 64)
!5877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !12, line: 141, size: 256, elements: !5878)
!5878 = !{!5879, !6146, !6147, !6148}
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !5877, file: !12, line: 142, baseType: !5880, size: 64)
!5880 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !12, line: 138, baseType: !5881)
!5881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5882, size: 64)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{!267, !5884, !50, !6145}
!5884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5885, size: 64)
!5885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !12, line: 93, size: 67776, elements: !5886)
!5886 = !{!5887, !6097, !6098, !6100, !6101, !6102, !6103, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6127, !6128, !6129, !6130, !6138, !6139, !6140, !6141, !6142, !6143, !6144}
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !5885, file: !12, line: 94, baseType: !5888, size: 64)
!5888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5889, size: 64)
!5889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !4359, line: 319, size: 2560, elements: !5890)
!5890 = !{!5891, !5892, !5893, !5923, !5950, !5951, !5952, !5953, !5954, !5955, !5956, !5957, !5958, !5959, !6023, !6024, !6025, !6026, !6027, !6028, !6029, !6030, !6031, !6035, !6048, !6049, !6050, !6081, !6084, !6085, !6086, !6087, !6088, !6089}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5889, file: !4359, line: 320, baseType: !125, size: 128)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5889, file: !4359, line: 321, baseType: !446, size: 64, offset: 128)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !5889, file: !4359, line: 322, baseType: !5894, size: 320, offset: 192)
!5894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !4359, line: 210, size: 320, elements: !5895)
!5895 = !{!5896, !5897, !5901, !5921, !5922}
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !5894, file: !4359, line: 211, baseType: !5888, size: 64)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5894, file: !4359, line: 212, baseType: !5898, size: 64, offset: 64)
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5899, size: 64)
!5899 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !5900, line: 9, flags: DIFlagFwdDecl)
!5900 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5894, file: !4359, line: 213, baseType: !5902, size: 64, offset: 128)
!5902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5903, size: 64)
!5903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array_cpu", file: !4359, line: 183, size: 1024, elements: !5904)
!5904 = !{!5905, !5906, !5907, !5908, !5909, !5910, !5911, !5912, !5913, !5914, !5915, !5916, !5917, !5918, !5919, !5920}
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !5903, file: !4359, line: 184, baseType: !77, size: 32)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_page", scope: !5903, file: !4359, line: 185, baseType: !48, size: 64, offset: 64)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5903, file: !4359, line: 187, baseType: !67, size: 64, offset: 128)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "saved_latency", scope: !5903, file: !4359, line: 188, baseType: !67, size: 64, offset: 192)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "critical_start", scope: !5903, file: !4359, line: 189, baseType: !67, size: 64, offset: 256)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "critical_end", scope: !5903, file: !4359, line: 190, baseType: !67, size: 64, offset: 320)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "critical_sequence", scope: !5903, file: !4359, line: 191, baseType: !67, size: 64, offset: 384)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "nice", scope: !5903, file: !4359, line: 192, baseType: !67, size: 64, offset: 448)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !5903, file: !4359, line: 193, baseType: !67, size: 64, offset: 512)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !5903, file: !4359, line: 194, baseType: !67, size: 64, offset: 576)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "skipped_entries", scope: !5903, file: !4359, line: 195, baseType: !67, size: 64, offset: 640)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_timestamp", scope: !5903, file: !4359, line: 196, baseType: !592, size: 64, offset: 704)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5903, file: !4359, line: 197, baseType: !1759, size: 32, offset: 768)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5903, file: !4359, line: 198, baseType: !525, size: 32, offset: 800)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5903, file: !4359, line: 199, baseType: !1886, size: 128, offset: 832)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_pid", scope: !5903, file: !4359, line: 204, baseType: !1441, size: 8, offset: 960)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "time_start", scope: !5894, file: !4359, line: 214, baseType: !592, size: 64, offset: 192)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5894, file: !4359, line: 215, baseType: !50, size: 32, offset: 256)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_pids", scope: !5889, file: !4359, line: 346, baseType: !5924, size: 64, offset: 512)
!5924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5925, size: 64)
!5925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_pid_list", file: !5926, line: 78, size: 16896, elements: !5927)
!5926 = !DIFile(filename: "kernel/trace/pid_list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca7ceba9dd4bbea3985e3aae225c7de1")
!5927 = !{!5928, !5929, !5930, !5946, !5947, !5948, !5949}
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5925, file: !5926, line: 79, baseType: !813, size: 32)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "refill_irqwork", scope: !5925, file: !5926, line: 80, baseType: !4142, size: 256, offset: 64)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !5925, file: !5926, line: 81, baseType: !5931, size: 16384, offset: 320)
!5931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5932, size: 16384, elements: !5944)
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!5933 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "upper_chunk", file: !5926, line: 73, size: 16384, elements: !5934)
!5934 = !{!5935, !5936}
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5933, file: !5926, line: 74, baseType: !5932, size: 64)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5933, file: !5926, line: 75, baseType: !5937, size: 16384)
!5937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5938, size: 16384, elements: !5944)
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "lower_chunk", file: !5926, line: 68, size: 16384, elements: !5940)
!5940 = !{!5941, !5942}
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5939, file: !5926, line: 69, baseType: !5938, size: 64)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5939, file: !5926, line: 70, baseType: !5943, size: 16384)
!5943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 16384, elements: !5944)
!5944 = !{!5945}
!5945 = !DISubrange(count: 256)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "upper_list", scope: !5925, file: !5926, line: 82, baseType: !5932, size: 64, offset: 16704)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "lower_list", scope: !5925, file: !5926, line: 83, baseType: !5938, size: 64, offset: 16768)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "free_upper_chunks", scope: !5925, file: !5926, line: 84, baseType: !50, size: 32, offset: 16832)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "free_lower_chunks", scope: !5925, file: !5926, line: 85, baseType: !50, size: 32, offset: 16864)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_no_pids", scope: !5889, file: !4359, line: 347, baseType: !5924, size: 64, offset: 576)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "max_lock", scope: !5889, file: !4359, line: 361, baseType: !99, size: 32, offset: 640)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_disabled", scope: !5889, file: !4359, line: 362, baseType: !50, size: 32, offset: 672)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "stop_count", scope: !5889, file: !4359, line: 369, baseType: !50, size: 32, offset: 704)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "clock_id", scope: !5889, file: !4359, line: 370, baseType: !50, size: 32, offset: 736)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_topts", scope: !5889, file: !4359, line: 371, baseType: !50, size: 32, offset: 768)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "clear_trace", scope: !5889, file: !4359, line: 372, baseType: !1441, size: 8, offset: 800)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_percent", scope: !5889, file: !4359, line: 373, baseType: !50, size: 32, offset: 832)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "n_err_log_entries", scope: !5889, file: !4359, line: 374, baseType: !13, size: 32, offset: 864)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "current_trace", scope: !5889, file: !4359, line: 375, baseType: !5960, size: 64, offset: 896)
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !4359, line: 556, size: 1216, elements: !5962)
!5962 = !{!5963, !5964, !5968, !5972, !5973, !5974, !5975, !5979, !5980, !5981, !5982, !5986, !5990, !5994, !5998, !6002, !6006, !6007, !6019, !6020, !6021, !6022}
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5961, file: !4359, line: 557, baseType: !45, size: 64)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5961, file: !4359, line: 558, baseType: !5965, size: 64, offset: 64)
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!50, !5888}
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5961, file: !4359, line: 559, baseType: !5969, size: 64, offset: 128)
!5969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5970, size: 64)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{null, !5888}
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5961, file: !4359, line: 560, baseType: !5969, size: 64, offset: 192)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5961, file: !4359, line: 561, baseType: !5969, size: 64, offset: 256)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "update_thresh", scope: !5961, file: !4359, line: 562, baseType: !5965, size: 64, offset: 320)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5961, file: !4359, line: 563, baseType: !5976, size: 64, offset: 384)
!5976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5977, size: 64)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{null, !5884}
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_open", scope: !5961, file: !4359, line: 564, baseType: !5976, size: 64, offset: 448)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5961, file: !4359, line: 565, baseType: !5976, size: 64, offset: 512)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_close", scope: !5961, file: !4359, line: 566, baseType: !5976, size: 64, offset: 576)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5961, file: !4359, line: 567, baseType: !5983, size: 64, offset: 640)
!5983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5984, size: 64)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{!478, !5884, !1265, !446, !63, !68}
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5961, file: !4359, line: 570, baseType: !5987, size: 64, offset: 704)
!5987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5988, size: 64)
!5988 = !DISubroutineType(types: !5989)
!5989 = !{!478, !5884, !1265, !68, !3088, !63, !13}
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "print_header", scope: !5961, file: !4359, line: 580, baseType: !5991, size: 64, offset: 768)
!5991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5992, size: 64)
!5992 = !DISubroutineType(types: !5993)
!5993 = !{null, !788}
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "print_line", scope: !5961, file: !4359, line: 581, baseType: !5995, size: 64, offset: 832)
!5995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5996, size: 64)
!5996 = !DISubroutineType(types: !5997)
!5997 = !{!267, !5884}
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "set_flag", scope: !5961, file: !4359, line: 583, baseType: !5999, size: 64, offset: 896)
!5999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6000, size: 64)
!6000 = !DISubroutineType(types: !6001)
!6001 = !{!50, !5888, !588, !588, !50}
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_changed", scope: !5961, file: !4359, line: 586, baseType: !6003, size: 64, offset: 960)
!6003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6004, size: 64)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!50, !5888, !588, !50}
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5961, file: !4359, line: 588, baseType: !5960, size: 64, offset: 1024)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5961, file: !4359, line: 589, baseType: !6008, size: 64, offset: 1088)
!6008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6009, size: 64)
!6009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_flags", file: !4359, line: 519, size: 192, elements: !6010)
!6010 = !{!6011, !6012, !6018}
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !6009, file: !4359, line: 520, baseType: !588, size: 32)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !6009, file: !4359, line: 521, baseType: !6013, size: 64, offset: 64)
!6013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6014, size: 64)
!6014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_opt", file: !4359, line: 510, size: 128, elements: !6015)
!6015 = !{!6016, !6017}
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6014, file: !4359, line: 511, baseType: !45, size: 64)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !6014, file: !4359, line: 512, baseType: !588, size: 32, offset: 64)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !6009, file: !4359, line: 522, baseType: !5960, size: 64, offset: 128)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5961, file: !4359, line: 590, baseType: !50, size: 32, offset: 1152)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "print_max", scope: !5961, file: !4359, line: 591, baseType: !1441, size: 8, offset: 1184)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "allow_instances", scope: !5961, file: !4359, line: 592, baseType: !1441, size: 8, offset: 1192)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "noboot", scope: !5961, file: !4359, line: 597, baseType: !1441, size: 8, offset: 1200)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags", scope: !5889, file: !4359, line: 376, baseType: !13, size: 32, offset: 960)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags_index", scope: !5889, file: !4359, line: 377, baseType: !600, size: 256, offset: 992)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5889, file: !4359, line: 378, baseType: !13, size: 32, offset: 1248)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "start_lock", scope: !5889, file: !4359, line: 379, baseType: !813, size: 32, offset: 1280)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "err_log", scope: !5889, file: !4359, line: 380, baseType: !125, size: 128, offset: 1344)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5889, file: !4359, line: 381, baseType: !554, size: 64, offset: 1472)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !5889, file: !4359, line: 382, baseType: !554, size: 64, offset: 1536)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dir", scope: !5889, file: !4359, line: 383, baseType: !554, size: 64, offset: 1600)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "event_dir", scope: !5889, file: !4359, line: 384, baseType: !6032, size: 64, offset: 1664)
!6032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6033, size: 64)
!6033 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !6034, line: 80, flags: DIFlagFwdDecl)
!6034 = !DIFile(filename: "./include/linux/tracefs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4889574467ac457255616de05cb15d8")
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !5889, file: !4359, line: 385, baseType: !6036, size: 64, offset: 1728)
!6036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6037, size: 64)
!6037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_options", file: !4359, line: 220, size: 128, elements: !6038)
!6038 = !{!6039, !6040}
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "tracer", scope: !6037, file: !4359, line: 221, baseType: !5960, size: 64)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !6037, file: !4359, line: 222, baseType: !6041, size: 64, offset: 64)
!6041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6042, size: 64)
!6042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_option_dentry", file: !4359, line: 529, size: 256, elements: !6043)
!6043 = !{!6044, !6045, !6046, !6047}
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !6042, file: !4359, line: 530, baseType: !6013, size: 64)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6042, file: !4359, line: 531, baseType: !6008, size: 64, offset: 64)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6042, file: !4359, line: 532, baseType: !5888, size: 64, offset: 128)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6042, file: !4359, line: 533, baseType: !554, size: 64, offset: 192)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "systems", scope: !5889, file: !4359, line: 386, baseType: !125, size: 128, offset: 1792)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5889, file: !4359, line: 387, baseType: !125, size: 128, offset: 1920)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "trace_marker_file", scope: !5889, file: !4359, line: 388, baseType: !6051, size: 64, offset: 2048)
!6051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6052, size: 64)
!6052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !12, line: 655, size: 768, elements: !6053)
!6053 = !{!6054, !6055, !6056, !6057, !6058, !6059, !6076, !6077, !6078, !6079, !6080}
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6052, file: !12, line: 656, baseType: !125, size: 128)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !6052, file: !12, line: 657, baseType: !298, size: 64, offset: 128)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6052, file: !12, line: 658, baseType: !4357, size: 64, offset: 192)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !6052, file: !12, line: 659, baseType: !6032, size: 64, offset: 256)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6052, file: !12, line: 660, baseType: !5888, size: 64, offset: 320)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !6052, file: !12, line: 661, baseType: !6060, size: 64, offset: 384)
!6060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6061, size: 64)
!6061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !4359, line: 1344, size: 384, elements: !6062)
!6062 = !{!6063, !6064, !6072, !6073, !6074, !6075}
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6061, file: !4359, line: 1345, baseType: !125, size: 128)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem", scope: !6061, file: !4359, line: 1346, baseType: !6065, size: 64, offset: 128)
!6065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6066, size: 64)
!6066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_subsystem", file: !4359, line: 1337, size: 320, elements: !6067)
!6067 = !{!6068, !6069, !6070, !6071}
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6066, file: !4359, line: 1338, baseType: !125, size: 128)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6066, file: !4359, line: 1339, baseType: !45, size: 64, offset: 128)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6066, file: !4359, line: 1340, baseType: !4357, size: 64, offset: 192)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !6066, file: !4359, line: 1341, baseType: !50, size: 32, offset: 256)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6061, file: !4359, line: 1347, baseType: !5888, size: 64, offset: 192)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !6061, file: !4359, line: 1348, baseType: !6032, size: 64, offset: 256)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !6061, file: !4359, line: 1349, baseType: !50, size: 32, offset: 320)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !6061, file: !4359, line: 1350, baseType: !50, size: 32, offset: 352)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !6052, file: !12, line: 662, baseType: !125, size: 128, offset: 448)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6052, file: !12, line: 680, baseType: !67, size: 64, offset: 576)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !6052, file: !12, line: 681, baseType: !77, size: 32, offset: 640)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !6052, file: !12, line: 682, baseType: !77, size: 32, offset: 672)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !6052, file: !12, line: 683, baseType: !77, size: 32, offset: 704)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "tracing_cpumask", scope: !5889, file: !4359, line: 389, baseType: !6082, size: 64, offset: 2112)
!6082 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1185, line: 913, baseType: !6083)
!6083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 64, elements: !1190)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_cpumask", scope: !5889, file: !4359, line: 391, baseType: !6082, size: 64, offset: 2176)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5889, file: !4359, line: 392, baseType: !50, size: 32, offset: 2240)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ref", scope: !5889, file: !4359, line: 393, baseType: !50, size: 32, offset: 2272)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "no_filter_buffering_ref", scope: !5889, file: !4359, line: 407, baseType: !50, size: 32, offset: 2304)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "hist_vars", scope: !5889, file: !4359, line: 408, baseType: !125, size: 128, offset: 2368)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "last_func_repeats", scope: !5889, file: !4359, line: 412, baseType: !6090, size: 64, offset: 2496)
!6090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6091, size: 64)
!6091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_func_repeats", file: !4359, line: 307, size: 256, elements: !6092)
!6092 = !{!6093, !6094, !6095, !6096}
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !6091, file: !4359, line: 308, baseType: !67, size: 64)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ip", scope: !6091, file: !4359, line: 309, baseType: !67, size: 64, offset: 64)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6091, file: !4359, line: 310, baseType: !67, size: 64, offset: 128)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "ts_last_call", scope: !6091, file: !4359, line: 311, baseType: !592, size: 64, offset: 192)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !5885, file: !12, line: 95, baseType: !5960, size: 64, offset: 64)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !5885, file: !12, line: 96, baseType: !6099, size: 64, offset: 128)
!6099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5894, size: 64)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5885, file: !12, line: 97, baseType: !48, size: 64, offset: 192)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !5885, file: !12, line: 98, baseType: !50, size: 32, offset: 256)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5885, file: !12, line: 99, baseType: !800, size: 256, offset: 320)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !5885, file: !12, line: 100, baseType: !6104, size: 64, offset: 576)
!6104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6105, size: 64)
!6105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6106, size: 64)
!6106 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !5900, line: 10, flags: DIFlagFwdDecl)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !5885, file: !12, line: 101, baseType: !67, size: 64, offset: 640)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !5885, file: !12, line: 102, baseType: !48, size: 64, offset: 704)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !5885, file: !12, line: 103, baseType: !13, size: 32, offset: 768)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5885, file: !12, line: 104, baseType: !446, size: 64, offset: 832)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !5885, file: !12, line: 105, baseType: !13, size: 32, offset: 896)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !5885, file: !12, line: 106, baseType: !371, size: 64, offset: 960)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !5885, file: !12, line: 109, baseType: !6114, size: 33088, offset: 1024)
!6114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !6115, line: 14, size: 33088, elements: !6116)
!6115 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!6116 = !{!6117, !6118, !6125, !6126}
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6114, file: !6115, line: 15, baseType: !2401, size: 32768)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !6114, file: !6115, line: 16, baseType: !6119, size: 192, offset: 32768)
!6119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !6120, line: 18, size: 192, elements: !6121)
!6120 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!6121 = !{!6122, !6123, !6124}
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6119, file: !6120, line: 19, baseType: !446, size: 64)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6119, file: !6120, line: 20, baseType: !63, size: 64, offset: 64)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6119, file: !6120, line: 21, baseType: !63, size: 64, offset: 128)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !6114, file: !6115, line: 17, baseType: !63, size: 64, offset: 32960)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !6114, file: !6115, line: 18, baseType: !50, size: 32, offset: 33024)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !5885, file: !12, line: 111, baseType: !6082, size: 64, offset: 34112)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !5885, file: !12, line: 114, baseType: !1441, size: 8, offset: 34176)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5885, file: !12, line: 117, baseType: !6114, size: 33088, offset: 34240)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !5885, file: !12, line: 118, baseType: !6131, size: 64, offset: 67328)
!6131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6132, size: 64)
!6132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !12, line: 79, size: 64, elements: !6133)
!6133 = !{!6134, !6135, !6136, !6137}
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6132, file: !12, line: 80, baseType: !54, size: 16)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6132, file: !12, line: 81, baseType: !115, size: 8, offset: 16)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !6132, file: !12, line: 82, baseType: !115, size: 8, offset: 24)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !6132, file: !12, line: 83, baseType: !50, size: 32, offset: 32)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !5885, file: !12, line: 119, baseType: !67, size: 64, offset: 67392)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !5885, file: !12, line: 120, baseType: !50, size: 32, offset: 67456)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !5885, file: !12, line: 121, baseType: !50, size: 32, offset: 67488)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5885, file: !12, line: 122, baseType: !50, size: 32, offset: 67520)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !5885, file: !12, line: 123, baseType: !592, size: 64, offset: 67584)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5885, file: !12, line: 125, baseType: !69, size: 64, offset: 67648)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5885, file: !12, line: 126, baseType: !371, size: 64, offset: 67712)
!6145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5871, size: 64)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5877, file: !12, line: 143, baseType: !5880, size: 64, offset: 64)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !5877, file: !12, line: 144, baseType: !5880, size: 64, offset: 128)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !5877, file: !12, line: 145, baseType: !5880, size: 64, offset: 192)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !299, file: !12, line: 381, baseType: !446, size: 64, offset: 512)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !299, file: !12, line: 382, baseType: !4357, size: 64, offset: 576)
!6151 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !12, line: 387, baseType: !6152, size: 64, offset: 640)
!6152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !12, line: 387, size: 64, elements: !6153)
!6153 = !{!6154, !6155}
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !6152, file: !12, line: 388, baseType: !48, size: 64)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !6152, file: !12, line: 389, baseType: !77, size: 32)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !299, file: !12, line: 391, baseType: !48, size: 64, offset: 704)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !12, line: 394, baseType: !50, size: 32, offset: 768)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !299, file: !12, line: 397, baseType: !50, size: 32, offset: 800)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !299, file: !12, line: 398, baseType: !4705, size: 64, offset: 832)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !299, file: !12, line: 399, baseType: !6161, size: 64, offset: 896)
!6161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6162, size: 64)
!6162 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !12, line: 399, flags: DIFlagFwdDecl)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !299, file: !12, line: 401, baseType: !6164, size: 64, offset: 960)
!6164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6165, size: 64)
!6165 = !DISubroutineType(types: !6166)
!6166 = !{!50, !298, !3250}
!6167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6168, size: 64)
!6168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn_event", file: !6169, line: 61, size: 192, elements: !6170)
!6169 = !DIFile(filename: "kernel/trace/trace_dynevent.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c94cfc4ba1a52ee8659969c54c74ad91")
!6170 = !{!6171, !6172}
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6168, file: !6169, line: 62, baseType: !125, size: 128)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6168, file: !6169, line: 63, baseType: !6173, size: 64, offset: 128)
!6173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6174, size: 64)
!6174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn_event_operations", file: !6169, line: 40, size: 448, elements: !6175)
!6175 = !{!6176, !6177, !6181, !6185, !6189, !6193}
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6174, file: !6169, line: 41, baseType: !125, size: 128)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !6174, file: !6169, line: 42, baseType: !6178, size: 64, offset: 128)
!6178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6179, size: 64)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!50, !45}
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !6174, file: !6169, line: 43, baseType: !6182, size: 64, offset: 192)
!6182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6183, size: 64)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!50, !788, !6167}
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "is_busy", scope: !6174, file: !6169, line: 44, baseType: !6186, size: 64, offset: 256)
!6186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6187, size: 64)
!6187 = !DISubroutineType(types: !6188)
!6188 = !{!1441, !6167}
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6174, file: !6169, line: 45, baseType: !6190, size: 64, offset: 320)
!6190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6191, size: 64)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{!50, !6167}
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !6174, file: !6169, line: 46, baseType: !6194, size: 64, offset: 384)
!6194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6195, size: 64)
!6195 = !DISubroutineType(types: !6196)
!6196 = !{!1441, !45, !45, !50, !3628, !6167}
!6197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6198, size: 64)
!6198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6199)
!6199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!6200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6199, size: 64)
!6201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6202, size: 64)
!6202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!6203 = !{!0, !6204, !6206, !6208, !6210, !6215, !6218, !6223, !6228, !7, !6230, !6232, !6237, !6239}
!6204 = !DIGlobalVariableExpression(var: !6205, expr: !DIExpression())
!6205 = distinct !DIGlobalVariable(name: "dyn_event_list", scope: !9, file: !2, line: 150, type: !125, isLocal: false, isDefinition: true)
!6206 = !DIGlobalVariableExpression(var: !6207, expr: !DIExpression())
!6207 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_trace_dynevent__320_271_init_dynamic_event5321", scope: !9, file: !2, line: 271, type: !48, isLocal: true, isDefinition: true)
!6208 = !DIGlobalVariableExpression(var: !6209, expr: !DIExpression())
!6209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !1495, isLocal: true, isDefinition: true)
!6210 = !DIGlobalVariableExpression(var: !6211, expr: !DIExpression())
!6211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 305, type: !6212, isLocal: true, isDefinition: true)
!6212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !6213)
!6213 = !{!6214}
!6214 = !DISubrange(count: 28)
!6215 = !DIGlobalVariableExpression(var: !6216, expr: !DIExpression())
!6216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !6217, isLocal: true, isDefinition: true)
!6217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1648)
!6218 = !DIGlobalVariableExpression(var: !6219, expr: !DIExpression())
!6219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !6220, isLocal: true, isDefinition: true)
!6220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !6221)
!6221 = !{!6222}
!6222 = !DISubrange(count: 38)
!6223 = !DIGlobalVariableExpression(var: !6224, expr: !DIExpression())
!6224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !6225, isLocal: true, isDefinition: true)
!6225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !6226)
!6226 = !{!6227}
!6227 = !DISubrange(count: 26)
!6228 = !DIGlobalVariableExpression(var: !6229, expr: !DIExpression())
!6229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dynevent_create322", scope: !9, file: !2, line: 483, type: !48, isLocal: true, isDefinition: true)
!6230 = !DIGlobalVariableExpression(var: !6231, expr: !DIExpression())
!6231 = distinct !DIGlobalVariable(name: "dyn_event_ops_list", scope: !9, file: !2, line: 20, type: !125, isLocal: true, isDefinition: true)
!6232 = !DIGlobalVariableExpression(var: !6233, expr: !DIExpression())
!6233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !6234, isLocal: true, isDefinition: true)
!6234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !6235)
!6235 = !{!6236}
!6236 = !DISubrange(count: 15)
!6237 = !DIGlobalVariableExpression(var: !6238, expr: !DIExpression())
!6238 = distinct !DIGlobalVariable(name: "dynamic_events_ops", scope: !9, file: !2, line: 248, type: !4549, isLocal: true, isDefinition: true)
!6239 = !DIGlobalVariableExpression(var: !6240, expr: !DIExpression())
!6240 = distinct !DIGlobalVariable(name: "dyn_event_seq_op", scope: !9, file: !2, line: 178, type: !822, isLocal: true, isDefinition: true)
!6241 = !{i32 7, !"Dwarf Version", i32 5}
!6242 = !{i32 2, !"Debug Info Version", i32 3}
!6243 = !{i32 1, !"wchar_size", i32 2}
!6244 = !{i32 8, !"cf-protection-branch", i32 1}
!6245 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6246 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6247 = !{i32 1, !"Code Model", i32 2}
!6248 = !{i32 1, !"override-stack-alignment", i32 8}
!6249 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6250 = distinct !DISubprogram(name: "trace_event_dyn_try_get_ref", scope: !2, file: !2, line: 22, type: !6251, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6253)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!1441, !298}
!6253 = !{!6254, !6255, !6256, !6257, !6260, !6263, !6266}
!6254 = !DILocalVariable(name: "dyn_call", arg: 1, scope: !6250, file: !2, line: 22, type: !298)
!6255 = !DILocalVariable(name: "call", scope: !6250, file: !2, line: 24, type: !298)
!6256 = !DILocalVariable(name: "ret", scope: !6250, file: !2, line: 25, type: !1441)
!6257 = !DILocalVariable(name: "__ret_warn_on", scope: !6258, file: !2, line: 27, type: !50)
!6258 = distinct !DILexicalBlock(scope: !6259, file: !2, line: 27, column: 6)
!6259 = distinct !DILexicalBlock(scope: !6250, file: !2, line: 27, column: 6)
!6260 = !DILocalVariable(name: "__flags", scope: !6261, file: !2, line: 27, type: !50)
!6261 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 27, column: 6)
!6262 = distinct !DILexicalBlock(scope: !6258, file: !2, line: 27, column: 6)
!6263 = !DILocalVariable(name: "__mptr", scope: !6264, file: !2, line: 31, type: !48)
!6264 = distinct !DILexicalBlock(scope: !6265, file: !2, line: 31, column: 2)
!6265 = distinct !DILexicalBlock(scope: !6250, file: !2, line: 31, column: 2)
!6266 = !DILocalVariable(name: "__mptr", scope: !6267, file: !2, line: 31, type: !48)
!6267 = distinct !DILexicalBlock(scope: !6268, file: !2, line: 31, column: 2)
!6268 = distinct !DILexicalBlock(scope: !6265, file: !2, line: 31, column: 2)
!6269 = !DILocation(line: 22, column: 59, scope: !6250)
!6270 = !DILocation(line: 24, column: 2, scope: !6250)
!6271 = !DILocation(line: 24, column: 27, scope: !6250)
!6272 = !DILocation(line: 25, column: 2, scope: !6250)
!6273 = !DILocation(line: 25, column: 7, scope: !6250)
!6274 = !DILocation(line: 27, column: 6, scope: !6258)
!6275 = !DILocation(line: 27, column: 6, scope: !6262)
!6276 = !DILocation(line: 27, column: 6, scope: !6261)
!6277 = !DILocation(line: 27, column: 6, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6261, file: !2, line: 27, column: 6)
!6279 = !DILocation(line: 27, column: 6, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6261, file: !2, line: 27, column: 6)
!6281 = !{i64 2155835695, i64 2155835724, i64 2155835770, i64 2155835828, i64 2155835882, i64 2155835936, i64 2155835991, i64 2155836022, i64 2155836330, i64 2155836336, i64 2155836383, i64 2155836406, i64 2155836432}
!6282 = !DILocation(line: 27, column: 6, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6261, file: !2, line: 27, column: 6)
!6284 = !DILocation(line: 27, column: 6, scope: !6259)
!6285 = !DILocation(line: 27, column: 6, scope: !6250)
!6286 = !DILocation(line: 28, column: 3, scope: !6259)
!6287 = !DILocation(line: 30, column: 2, scope: !6250)
!6288 = !DILocation(line: 31, column: 2, scope: !6264)
!6289 = !DILocation(line: 31, column: 2, scope: !6265)
!6290 = !DILocation(line: 31, column: 2, scope: !6268)
!6291 = !DILocation(line: 32, column: 7, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6293, file: !2, line: 32, column: 7)
!6293 = distinct !DILexicalBlock(scope: !6268, file: !2, line: 31, column: 50)
!6294 = !DILocation(line: 32, column: 15, scope: !6292)
!6295 = !DILocation(line: 32, column: 12, scope: !6292)
!6296 = !DILocation(line: 32, column: 7, scope: !6293)
!6297 = !DILocation(line: 33, column: 16, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6292, file: !2, line: 32, column: 25)
!6299 = !DILocation(line: 33, column: 26, scope: !6298)
!6300 = !DILocation(line: 33, column: 4, scope: !6298)
!6301 = !DILocation(line: 34, column: 8, scope: !6298)
!6302 = !DILocation(line: 35, column: 3, scope: !6298)
!6303 = !DILocation(line: 36, column: 2, scope: !6293)
!6304 = !DILocation(line: 31, column: 2, scope: !6267)
!6305 = distinct !{!6305, !6289, !6306, !6307, !6308}
!6306 = !DILocation(line: 36, column: 2, scope: !6265)
!6307 = !{!"llvm.loop.mustprogress"}
!6308 = !{!"llvm.loop.unroll.disable"}
!6309 = !DILocation(line: 37, column: 2, scope: !6250)
!6310 = !DILocation(line: 38, column: 9, scope: !6250)
!6311 = !{i8 0, i8 2}
!6312 = !DILocation(line: 38, column: 2, scope: !6250)
!6313 = !DILocation(line: 39, column: 1, scope: !6250)
!6314 = !DISubprogram(name: "down_read", scope: !1294, file: !1294, line: 175, type: !6315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6315 = !DISubroutineType(types: !6316)
!6316 = !{null, !6317}
!6317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!6318 = distinct !DISubprogram(name: "atomic_inc", scope: !6319, file: !6319, line: 433, type: !6320, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6323)
!6319 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6320 = !DISubroutineType(types: !6321)
!6321 = !{null, !6322}
!6322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!6323 = !{!6324}
!6324 = !DILocalVariable(name: "v", arg: 1, scope: !6318, file: !6319, line: 433, type: !6322)
!6325 = !DILocation(line: 433, column: 22, scope: !6318)
!6326 = !DILocation(line: 435, column: 31, scope: !6318)
!6327 = !DILocation(line: 435, column: 2, scope: !6318)
!6328 = !DILocation(line: 436, column: 17, scope: !6318)
!6329 = !DILocation(line: 436, column: 2, scope: !6318)
!6330 = !DILocation(line: 437, column: 1, scope: !6318)
!6331 = !DISubprogram(name: "up_read", scope: !1294, file: !1294, line: 198, type: !6315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6332 = distinct !DISubprogram(name: "trace_event_dyn_put_ref", scope: !2, file: !2, line: 41, type: !6333, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6335)
!6333 = !DISubroutineType(types: !6334)
!6334 = !{null, !298}
!6335 = !{!6336, !6337, !6340, !6343, !6346}
!6336 = !DILocalVariable(name: "call", arg: 1, scope: !6332, file: !2, line: 41, type: !298)
!6337 = !DILocalVariable(name: "__ret_warn_on", scope: !6338, file: !2, line: 43, type: !50)
!6338 = distinct !DILexicalBlock(scope: !6339, file: !2, line: 43, column: 6)
!6339 = distinct !DILexicalBlock(scope: !6332, file: !2, line: 43, column: 6)
!6340 = !DILocalVariable(name: "__flags", scope: !6341, file: !2, line: 43, type: !50)
!6341 = distinct !DILexicalBlock(scope: !6342, file: !2, line: 43, column: 6)
!6342 = distinct !DILexicalBlock(scope: !6338, file: !2, line: 43, column: 6)
!6343 = !DILocalVariable(name: "__ret_warn_on", scope: !6344, file: !2, line: 46, type: !50)
!6344 = distinct !DILexicalBlock(scope: !6345, file: !2, line: 46, column: 6)
!6345 = distinct !DILexicalBlock(scope: !6332, file: !2, line: 46, column: 6)
!6346 = !DILocalVariable(name: "__flags", scope: !6347, file: !2, line: 46, type: !50)
!6347 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 46, column: 6)
!6348 = distinct !DILexicalBlock(scope: !6344, file: !2, line: 46, column: 6)
!6349 = !DILocation(line: 41, column: 55, scope: !6332)
!6350 = !DILocation(line: 43, column: 6, scope: !6338)
!6351 = !DILocation(line: 43, column: 6, scope: !6342)
!6352 = !DILocation(line: 43, column: 6, scope: !6341)
!6353 = !DILocation(line: 43, column: 6, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6341, file: !2, line: 43, column: 6)
!6355 = !DILocation(line: 43, column: 6, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6341, file: !2, line: 43, column: 6)
!6357 = !{i64 2155840420, i64 2155840449, i64 2155840495, i64 2155840553, i64 2155840607, i64 2155840661, i64 2155840716, i64 2155840747, i64 2155841055, i64 2155841061, i64 2155841108, i64 2155841131, i64 2155841157}
!6358 = !DILocation(line: 43, column: 6, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6341, file: !2, line: 43, column: 6)
!6360 = !DILocation(line: 43, column: 6, scope: !6339)
!6361 = !DILocation(line: 43, column: 6, scope: !6332)
!6362 = !DILocation(line: 44, column: 3, scope: !6339)
!6363 = !DILocation(line: 46, column: 6, scope: !6344)
!6364 = !DILocation(line: 46, column: 6, scope: !6348)
!6365 = !DILocation(line: 46, column: 6, scope: !6347)
!6366 = !DILocation(line: 46, column: 6, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6347, file: !2, line: 46, column: 6)
!6368 = !DILocation(line: 46, column: 6, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6347, file: !2, line: 46, column: 6)
!6370 = !{i64 2155841971, i64 2155842000, i64 2155842046, i64 2155842104, i64 2155842158, i64 2155842212, i64 2155842267, i64 2155842298, i64 2155842606, i64 2155842612, i64 2155842659, i64 2155842682, i64 2155842708}
!6371 = !DILocation(line: 46, column: 6, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6347, file: !2, line: 46, column: 6)
!6373 = !DILocation(line: 46, column: 6, scope: !6345)
!6374 = !DILocation(line: 46, column: 6, scope: !6332)
!6375 = !DILocation(line: 47, column: 15, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6345, file: !2, line: 46, column: 53)
!6377 = !DILocation(line: 47, column: 21, scope: !6376)
!6378 = !DILocation(line: 47, column: 3, scope: !6376)
!6379 = !DILocation(line: 48, column: 3, scope: !6376)
!6380 = !DILocation(line: 51, column: 14, scope: !6332)
!6381 = !DILocation(line: 51, column: 20, scope: !6332)
!6382 = !DILocation(line: 51, column: 2, scope: !6332)
!6383 = !DILocation(line: 52, column: 1, scope: !6332)
!6384 = distinct !DISubprogram(name: "atomic_read", scope: !6319, file: !6319, line: 30, type: !6385, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6389)
!6385 = !DISubroutineType(types: !6386)
!6386 = !{!50, !6387}
!6387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6388, size: 64)
!6388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!6389 = !{!6390}
!6390 = !DILocalVariable(name: "v", arg: 1, scope: !6384, file: !6319, line: 30, type: !6387)
!6391 = !DILocation(line: 30, column: 29, scope: !6384)
!6392 = !DILocation(line: 32, column: 25, scope: !6384)
!6393 = !DILocation(line: 32, column: 2, scope: !6384)
!6394 = !DILocation(line: 33, column: 25, scope: !6384)
!6395 = !DILocation(line: 33, column: 9, scope: !6384)
!6396 = !DILocation(line: 33, column: 2, scope: !6384)
!6397 = distinct !DISubprogram(name: "atomic_set", scope: !6319, file: !6319, line: 65, type: !6398, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6400)
!6398 = !DISubroutineType(types: !6399)
!6399 = !{null, !6322, !50}
!6400 = !{!6401, !6402}
!6401 = !DILocalVariable(name: "v", arg: 1, scope: !6397, file: !6319, line: 65, type: !6322)
!6402 = !DILocalVariable(name: "i", arg: 2, scope: !6397, file: !6319, line: 65, type: !50)
!6403 = !DILocation(line: 65, column: 22, scope: !6397)
!6404 = !DILocation(line: 65, column: 29, scope: !6397)
!6405 = !DILocation(line: 67, column: 26, scope: !6397)
!6406 = !DILocation(line: 67, column: 2, scope: !6397)
!6407 = !DILocation(line: 68, column: 17, scope: !6397)
!6408 = !DILocation(line: 68, column: 20, scope: !6397)
!6409 = !DILocation(line: 68, column: 2, scope: !6397)
!6410 = !DILocation(line: 69, column: 1, scope: !6397)
!6411 = distinct !DISubprogram(name: "atomic_dec", scope: !6319, file: !6319, line: 590, type: !6320, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6412)
!6412 = !{!6413}
!6413 = !DILocalVariable(name: "v", arg: 1, scope: !6411, file: !6319, line: 590, type: !6322)
!6414 = !DILocation(line: 590, column: 22, scope: !6411)
!6415 = !DILocation(line: 592, column: 31, scope: !6411)
!6416 = !DILocation(line: 592, column: 2, scope: !6411)
!6417 = !DILocation(line: 593, column: 17, scope: !6411)
!6418 = !DILocation(line: 593, column: 2, scope: !6411)
!6419 = !DILocation(line: 594, column: 1, scope: !6411)
!6420 = distinct !DISubprogram(name: "trace_event_dyn_busy", scope: !2, file: !2, line: 54, type: !6251, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6421)
!6421 = !{!6422}
!6422 = !DILocalVariable(name: "call", arg: 1, scope: !6420, file: !2, line: 54, type: !298)
!6423 = !DILocation(line: 54, column: 52, scope: !6420)
!6424 = !DILocation(line: 56, column: 22, scope: !6420)
!6425 = !DILocation(line: 56, column: 28, scope: !6420)
!6426 = !DILocation(line: 56, column: 9, scope: !6420)
!6427 = !DILocation(line: 56, column: 36, scope: !6420)
!6428 = !DILocation(line: 56, column: 2, scope: !6420)
!6429 = distinct !DISubprogram(name: "dyn_event_register", scope: !2, file: !2, line: 59, type: !6430, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6432)
!6430 = !DISubroutineType(types: !6431)
!6431 = !{!50, !6173}
!6432 = !{!6433}
!6433 = !DILocalVariable(name: "ops", arg: 1, scope: !6429, file: !2, line: 59, type: !6173)
!6434 = !DILocation(line: 59, column: 53, scope: !6429)
!6435 = !DILocation(line: 61, column: 7, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6429, file: !2, line: 61, column: 6)
!6437 = !DILocation(line: 61, column: 11, scope: !6436)
!6438 = !DILocation(line: 61, column: 15, scope: !6436)
!6439 = !DILocation(line: 61, column: 20, scope: !6436)
!6440 = !DILocation(line: 61, column: 27, scope: !6436)
!6441 = !DILocation(line: 61, column: 31, scope: !6436)
!6442 = !DILocation(line: 61, column: 36, scope: !6436)
!6443 = !DILocation(line: 61, column: 41, scope: !6436)
!6444 = !DILocation(line: 61, column: 45, scope: !6436)
!6445 = !DILocation(line: 61, column: 50, scope: !6436)
!6446 = !DILocation(line: 61, column: 58, scope: !6436)
!6447 = !DILocation(line: 62, column: 7, scope: !6436)
!6448 = !DILocation(line: 62, column: 12, scope: !6436)
!6449 = !DILocation(line: 62, column: 17, scope: !6436)
!6450 = !DILocation(line: 62, column: 21, scope: !6436)
!6451 = !DILocation(line: 62, column: 26, scope: !6436)
!6452 = !DILocation(line: 61, column: 6, scope: !6429)
!6453 = !DILocation(line: 63, column: 3, scope: !6436)
!6454 = !DILocation(line: 65, column: 18, scope: !6429)
!6455 = !DILocation(line: 65, column: 23, scope: !6429)
!6456 = !DILocation(line: 65, column: 2, scope: !6429)
!6457 = !DILocation(line: 66, column: 2, scope: !6429)
!6458 = !DILocation(line: 67, column: 17, scope: !6429)
!6459 = !DILocation(line: 67, column: 22, scope: !6429)
!6460 = !DILocation(line: 67, column: 2, scope: !6429)
!6461 = !DILocation(line: 68, column: 2, scope: !6429)
!6462 = !DILocation(line: 69, column: 2, scope: !6429)
!6463 = !DILocation(line: 70, column: 1, scope: !6429)
!6464 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6465, file: !6465, line: 35, type: !6466, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6468)
!6465 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6466 = !DISubroutineType(types: !6467)
!6467 = !{null, !128}
!6468 = !{!6469}
!6469 = !DILocalVariable(name: "list", arg: 1, scope: !6464, file: !6465, line: 35, type: !128)
!6470 = !DILocation(line: 35, column: 53, scope: !6464)
!6471 = !DILocation(line: 37, column: 2, scope: !6464)
!6472 = !DILocation(line: 37, column: 2, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6464, file: !6465, line: 37, column: 2)
!6474 = !DILocation(line: 37, column: 2, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6473, file: !6465, line: 37, column: 2)
!6476 = !DILocation(line: 37, column: 2, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6473, file: !6465, line: 37, column: 2)
!6478 = !DILocation(line: 38, column: 2, scope: !6464)
!6479 = !DILocation(line: 38, column: 2, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6464, file: !6465, line: 38, column: 2)
!6481 = !DILocation(line: 38, column: 2, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6480, file: !6465, line: 38, column: 2)
!6483 = !DILocation(line: 38, column: 2, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6480, file: !6465, line: 38, column: 2)
!6485 = !DILocation(line: 39, column: 1, scope: !6464)
!6486 = !DISubprogram(name: "mutex_lock", scope: !801, file: !801, line: 227, type: !6487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6487 = !DISubroutineType(types: !6488)
!6488 = !{null, !6489}
!6489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!6490 = distinct !DISubprogram(name: "list_add_tail", scope: !6465, file: !6465, line: 181, type: !6491, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6493)
!6491 = !DISubroutineType(types: !6492)
!6492 = !{null, !128, !128}
!6493 = !{!6494, !6495}
!6494 = !DILocalVariable(name: "new", arg: 1, scope: !6490, file: !6465, line: 181, type: !128)
!6495 = !DILocalVariable(name: "head", arg: 2, scope: !6490, file: !6465, line: 181, type: !128)
!6496 = !DILocation(line: 181, column: 52, scope: !6490)
!6497 = !DILocation(line: 181, column: 75, scope: !6490)
!6498 = !DILocation(line: 183, column: 13, scope: !6490)
!6499 = !DILocation(line: 183, column: 18, scope: !6490)
!6500 = !DILocation(line: 183, column: 24, scope: !6490)
!6501 = !DILocation(line: 183, column: 30, scope: !6490)
!6502 = !DILocation(line: 183, column: 2, scope: !6490)
!6503 = !DILocation(line: 184, column: 1, scope: !6490)
!6504 = !DISubprogram(name: "mutex_unlock", scope: !801, file: !801, line: 246, type: !6487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6505 = distinct !DISubprogram(name: "dyn_event_release", scope: !2, file: !2, line: 72, type: !6506, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6508)
!6506 = !DISubroutineType(types: !6507)
!6507 = !{!50, !45, !6173}
!6508 = !{!6509, !6510, !6511, !6512, !6513, !6514, !6515, !6516, !6517, !6518, !6520, !6523, !6525, !6528}
!6509 = !DILocalVariable(name: "raw_command", arg: 1, scope: !6505, file: !2, line: 72, type: !45)
!6510 = !DILocalVariable(name: "type", arg: 2, scope: !6505, file: !2, line: 72, type: !6173)
!6511 = !DILocalVariable(name: "pos", scope: !6505, file: !2, line: 74, type: !6167)
!6512 = !DILocalVariable(name: "n", scope: !6505, file: !2, line: 74, type: !6167)
!6513 = !DILocalVariable(name: "system", scope: !6505, file: !2, line: 75, type: !446)
!6514 = !DILocalVariable(name: "event", scope: !6505, file: !2, line: 75, type: !446)
!6515 = !DILocalVariable(name: "p", scope: !6505, file: !2, line: 75, type: !446)
!6516 = !DILocalVariable(name: "argc", scope: !6505, file: !2, line: 76, type: !50)
!6517 = !DILocalVariable(name: "ret", scope: !6505, file: !2, line: 76, type: !50)
!6518 = !DILocalVariable(name: "argv", scope: !6505, file: !2, line: 77, type: !6519)
!6519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!6520 = !DILocalVariable(name: "__mptr", scope: !6521, file: !2, line: 110, type: !48)
!6521 = distinct !DILexicalBlock(scope: !6522, file: !2, line: 110, column: 2)
!6522 = distinct !DILexicalBlock(scope: !6505, file: !2, line: 110, column: 2)
!6523 = !DILocalVariable(name: "__mptr", scope: !6524, file: !2, line: 110, type: !48)
!6524 = distinct !DILexicalBlock(scope: !6522, file: !2, line: 110, column: 2)
!6525 = !DILocalVariable(name: "__mptr", scope: !6526, file: !2, line: 110, type: !48)
!6526 = distinct !DILexicalBlock(scope: !6527, file: !2, line: 110, column: 2)
!6527 = distinct !DILexicalBlock(scope: !6522, file: !2, line: 110, column: 2)
!6528 = !DILabel(scope: !6505, name: "out", file: !2, line: 123)
!6529 = !DILocation(line: 72, column: 35, scope: !6505)
!6530 = !DILocation(line: 72, column: 77, scope: !6505)
!6531 = !DILocation(line: 74, column: 2, scope: !6505)
!6532 = !DILocation(line: 74, column: 20, scope: !6505)
!6533 = !DILocation(line: 74, column: 26, scope: !6505)
!6534 = !DILocation(line: 75, column: 2, scope: !6505)
!6535 = !DILocation(line: 75, column: 8, scope: !6505)
!6536 = !DILocation(line: 75, column: 24, scope: !6505)
!6537 = !DILocation(line: 75, column: 32, scope: !6505)
!6538 = !DILocation(line: 76, column: 2, scope: !6505)
!6539 = !DILocation(line: 76, column: 6, scope: !6505)
!6540 = !DILocation(line: 76, column: 12, scope: !6505)
!6541 = !DILocation(line: 77, column: 2, scope: !6505)
!6542 = !DILocation(line: 77, column: 9, scope: !6505)
!6543 = !DILocation(line: 79, column: 32, scope: !6505)
!6544 = !DILocation(line: 79, column: 9, scope: !6505)
!6545 = !DILocation(line: 79, column: 7, scope: !6505)
!6546 = !DILocation(line: 80, column: 7, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6505, file: !2, line: 80, column: 6)
!6548 = !DILocation(line: 80, column: 6, scope: !6505)
!6549 = !DILocation(line: 81, column: 3, scope: !6547)
!6550 = !DILocation(line: 83, column: 6, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6505, file: !2, line: 83, column: 6)
!6552 = !DILocation(line: 83, column: 17, scope: !6551)
!6553 = !DILocation(line: 83, column: 6, scope: !6505)
!6554 = !DILocation(line: 84, column: 7, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6556, file: !2, line: 84, column: 7)
!6556 = distinct !DILexicalBlock(scope: !6551, file: !2, line: 83, column: 25)
!6557 = !DILocation(line: 84, column: 18, scope: !6555)
!6558 = !DILocation(line: 84, column: 7, scope: !6556)
!6559 = !DILocation(line: 85, column: 8, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6555, file: !2, line: 84, column: 26)
!6561 = !DILocation(line: 86, column: 4, scope: !6560)
!6562 = !DILocation(line: 88, column: 12, scope: !6556)
!6563 = !DILocation(line: 88, column: 9, scope: !6556)
!6564 = !DILocation(line: 89, column: 2, scope: !6556)
!6565 = !DILocation(line: 90, column: 18, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6551, file: !2, line: 89, column: 9)
!6567 = !DILocation(line: 90, column: 11, scope: !6566)
!6568 = !DILocation(line: 90, column: 9, scope: !6566)
!6569 = !DILocation(line: 91, column: 8, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !6566, file: !2, line: 91, column: 7)
!6571 = !DILocation(line: 91, column: 7, scope: !6566)
!6572 = !DILocation(line: 92, column: 8, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6570, file: !2, line: 91, column: 15)
!6574 = !DILocation(line: 93, column: 4, scope: !6573)
!6575 = !DILocation(line: 95, column: 8, scope: !6566)
!6576 = !DILocation(line: 98, column: 13, scope: !6505)
!6577 = !DILocation(line: 98, column: 6, scope: !6505)
!6578 = !DILocation(line: 98, column: 4, scope: !6505)
!6579 = !DILocation(line: 99, column: 6, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6505, file: !2, line: 99, column: 6)
!6581 = !DILocation(line: 99, column: 6, scope: !6505)
!6582 = !DILocation(line: 100, column: 12, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6580, file: !2, line: 99, column: 9)
!6584 = !DILocation(line: 100, column: 10, scope: !6583)
!6585 = !DILocation(line: 101, column: 11, scope: !6583)
!6586 = !DILocation(line: 101, column: 13, scope: !6583)
!6587 = !DILocation(line: 101, column: 9, scope: !6583)
!6588 = !DILocation(line: 102, column: 4, scope: !6583)
!6589 = !DILocation(line: 102, column: 6, scope: !6583)
!6590 = !DILocation(line: 103, column: 2, scope: !6583)
!6591 = !DILocation(line: 104, column: 7, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6505, file: !2, line: 104, column: 6)
!6593 = !DILocation(line: 104, column: 14, scope: !6592)
!6594 = !DILocation(line: 104, column: 17, scope: !6592)
!6595 = !DILocation(line: 104, column: 26, scope: !6592)
!6596 = !DILocation(line: 104, column: 6, scope: !6505)
!6597 = !DILocation(line: 105, column: 7, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6592, file: !2, line: 104, column: 35)
!6599 = !DILocation(line: 106, column: 3, scope: !6598)
!6600 = !DILocation(line: 109, column: 2, scope: !6505)
!6601 = !DILocation(line: 110, column: 2, scope: !6521)
!6602 = !DILocation(line: 110, column: 2, scope: !6522)
!6603 = !DILocation(line: 110, column: 2, scope: !6524)
!6604 = !DILocation(line: 110, column: 2, scope: !6527)
!6605 = !DILocation(line: 111, column: 7, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6607, file: !2, line: 111, column: 7)
!6607 = distinct !DILexicalBlock(scope: !6527, file: !2, line: 110, column: 34)
!6608 = !DILocation(line: 111, column: 12, scope: !6606)
!6609 = !DILocation(line: 111, column: 15, scope: !6606)
!6610 = !DILocation(line: 111, column: 23, scope: !6606)
!6611 = !DILocation(line: 111, column: 28, scope: !6606)
!6612 = !DILocation(line: 111, column: 20, scope: !6606)
!6613 = !DILocation(line: 111, column: 7, scope: !6607)
!6614 = !DILocation(line: 112, column: 4, scope: !6606)
!6615 = !DILocation(line: 113, column: 8, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6607, file: !2, line: 113, column: 7)
!6617 = !DILocation(line: 113, column: 13, scope: !6616)
!6618 = !DILocation(line: 113, column: 18, scope: !6616)
!6619 = !DILocation(line: 113, column: 24, scope: !6616)
!6620 = !DILocation(line: 113, column: 32, scope: !6616)
!6621 = !DILocation(line: 114, column: 5, scope: !6616)
!6622 = !DILocation(line: 114, column: 10, scope: !6616)
!6623 = !DILocation(line: 114, column: 30, scope: !6616)
!6624 = !DILocation(line: 114, column: 35, scope: !6616)
!6625 = !DILocation(line: 114, column: 40, scope: !6616)
!6626 = !DILocation(line: 113, column: 7, scope: !6607)
!6627 = !DILocation(line: 115, column: 4, scope: !6616)
!6628 = !DILocation(line: 117, column: 9, scope: !6607)
!6629 = !DILocation(line: 117, column: 14, scope: !6607)
!6630 = !DILocation(line: 117, column: 19, scope: !6607)
!6631 = !DILocation(line: 117, column: 24, scope: !6607)
!6632 = !DILocation(line: 117, column: 7, scope: !6607)
!6633 = !DILocation(line: 118, column: 7, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6607, file: !2, line: 118, column: 7)
!6635 = !DILocation(line: 118, column: 7, scope: !6607)
!6636 = !DILocation(line: 119, column: 4, scope: !6634)
!6637 = !DILocation(line: 120, column: 2, scope: !6607)
!6638 = !DILocation(line: 110, column: 2, scope: !6526)
!6639 = distinct !{!6639, !6602, !6640, !6307, !6308}
!6640 = !DILocation(line: 120, column: 2, scope: !6522)
!6641 = !DILocation(line: 121, column: 2, scope: !6505)
!6642 = !DILocation(line: 122, column: 2, scope: !6505)
!6643 = !DILocation(line: 123, column: 1, scope: !6505)
!6644 = !DILocation(line: 124, column: 12, scope: !6505)
!6645 = !DILocation(line: 124, column: 2, scope: !6505)
!6646 = !DILocation(line: 125, column: 9, scope: !6505)
!6647 = !DILocation(line: 125, column: 2, scope: !6505)
!6648 = !DILocation(line: 126, column: 1, scope: !6505)
!6649 = !DISubprogram(name: "argv_split", scope: !6650, file: !6650, line: 223, type: !6651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6650 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6651 = !DISubroutineType(types: !6652)
!6652 = !{!6519, !936, !45, !782}
!6653 = !DISubprogram(name: "strchr", scope: !6650, file: !6650, line: 100, type: !6654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6654 = !DISubroutineType(types: !6655)
!6655 = !{!446, !45, !50}
!6656 = !DISubprogram(name: "tracing_reset_all_online_cpus", scope: !4359, file: !4359, line: 609, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6657 = !DISubprogram(name: "argv_free", scope: !6650, file: !6650, line: 224, type: !6658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6658 = !DISubroutineType(types: !6659)
!6659 = !{null, !6519}
!6660 = distinct !DISubprogram(name: "dyn_event_seq_start", scope: !2, file: !2, line: 152, type: !827, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6661)
!6661 = !{!6662, !6663}
!6662 = !DILocalVariable(name: "m", arg: 1, scope: !6660, file: !2, line: 152, type: !788)
!6663 = !DILocalVariable(name: "pos", arg: 2, scope: !6660, file: !2, line: 152, type: !68)
!6664 = !DILocation(line: 152, column: 44, scope: !6660)
!6665 = !DILocation(line: 152, column: 55, scope: !6660)
!6666 = !DILocation(line: 154, column: 2, scope: !6660)
!6667 = !DILocation(line: 155, column: 42, scope: !6660)
!6668 = !DILocation(line: 155, column: 41, scope: !6660)
!6669 = !DILocation(line: 155, column: 9, scope: !6660)
!6670 = !DILocation(line: 155, column: 2, scope: !6660)
!6671 = !DISubprogram(name: "seq_list_start", scope: !790, file: !790, line: 274, type: !6672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6672 = !DISubroutineType(types: !6673)
!6673 = !{!128, !128, !69}
!6674 = distinct !DISubprogram(name: "dyn_event_seq_next", scope: !2, file: !2, line: 158, type: !835, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6675)
!6675 = !{!6676, !6677, !6678}
!6676 = !DILocalVariable(name: "m", arg: 1, scope: !6674, file: !2, line: 158, type: !788)
!6677 = !DILocalVariable(name: "v", arg: 2, scope: !6674, file: !2, line: 158, type: !48)
!6678 = !DILocalVariable(name: "pos", arg: 3, scope: !6674, file: !2, line: 158, type: !68)
!6679 = !DILocation(line: 158, column: 43, scope: !6674)
!6680 = !DILocation(line: 158, column: 52, scope: !6674)
!6681 = !DILocation(line: 158, column: 63, scope: !6674)
!6682 = !DILocation(line: 160, column: 23, scope: !6674)
!6683 = !DILocation(line: 160, column: 43, scope: !6674)
!6684 = !DILocation(line: 160, column: 9, scope: !6674)
!6685 = !DILocation(line: 160, column: 2, scope: !6674)
!6686 = !DISubprogram(name: "seq_list_next", scope: !790, file: !790, line: 278, type: !6687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6687 = !DISubroutineType(types: !6688)
!6688 = !{!128, !48, !128, !68}
!6689 = distinct !DISubprogram(name: "dyn_event_seq_stop", scope: !2, file: !2, line: 163, type: !831, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6690)
!6690 = !{!6691, !6692}
!6691 = !DILocalVariable(name: "m", arg: 1, scope: !6689, file: !2, line: 163, type: !788)
!6692 = !DILocalVariable(name: "v", arg: 2, scope: !6689, file: !2, line: 163, type: !48)
!6693 = !DILocation(line: 163, column: 42, scope: !6689)
!6694 = !DILocation(line: 163, column: 51, scope: !6689)
!6695 = !DILocation(line: 165, column: 2, scope: !6689)
!6696 = !DILocation(line: 166, column: 1, scope: !6689)
!6697 = distinct !DISubprogram(name: "dyn_events_release_all", scope: !2, file: !2, line: 196, type: !6430, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6698)
!6698 = !{!6699, !6700, !6701, !6702, !6703, !6706, !6709, !6712, !6714, !6717}
!6699 = !DILocalVariable(name: "type", arg: 1, scope: !6697, file: !2, line: 196, type: !6173)
!6700 = !DILocalVariable(name: "ev", scope: !6697, file: !2, line: 198, type: !6167)
!6701 = !DILocalVariable(name: "tmp", scope: !6697, file: !2, line: 198, type: !6167)
!6702 = !DILocalVariable(name: "ret", scope: !6697, file: !2, line: 199, type: !50)
!6703 = !DILocalVariable(name: "__mptr", scope: !6704, file: !2, line: 202, type: !48)
!6704 = distinct !DILexicalBlock(scope: !6705, file: !2, line: 202, column: 2)
!6705 = distinct !DILexicalBlock(scope: !6697, file: !2, line: 202, column: 2)
!6706 = !DILocalVariable(name: "__mptr", scope: !6707, file: !2, line: 202, type: !48)
!6707 = distinct !DILexicalBlock(scope: !6708, file: !2, line: 202, column: 2)
!6708 = distinct !DILexicalBlock(scope: !6705, file: !2, line: 202, column: 2)
!6709 = !DILocalVariable(name: "__mptr", scope: !6710, file: !2, line: 210, type: !48)
!6710 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 210, column: 2)
!6711 = distinct !DILexicalBlock(scope: !6697, file: !2, line: 210, column: 2)
!6712 = !DILocalVariable(name: "__mptr", scope: !6713, file: !2, line: 210, type: !48)
!6713 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 210, column: 2)
!6714 = !DILocalVariable(name: "__mptr", scope: !6715, file: !2, line: 210, type: !48)
!6715 = distinct !DILexicalBlock(scope: !6716, file: !2, line: 210, column: 2)
!6716 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 210, column: 2)
!6717 = !DILabel(scope: !6697, name: "out", file: !2, line: 217)
!6718 = !DILocation(line: 196, column: 57, scope: !6697)
!6719 = !DILocation(line: 198, column: 2, scope: !6697)
!6720 = !DILocation(line: 198, column: 20, scope: !6697)
!6721 = !DILocation(line: 198, column: 25, scope: !6697)
!6722 = !DILocation(line: 199, column: 2, scope: !6697)
!6723 = !DILocation(line: 199, column: 6, scope: !6697)
!6724 = !DILocation(line: 201, column: 2, scope: !6697)
!6725 = !DILocation(line: 202, column: 2, scope: !6704)
!6726 = !DILocation(line: 202, column: 2, scope: !6705)
!6727 = !DILocation(line: 202, column: 2, scope: !6708)
!6728 = !DILocation(line: 203, column: 7, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6730, file: !2, line: 203, column: 7)
!6730 = distinct !DILexicalBlock(scope: !6708, file: !2, line: 202, column: 25)
!6731 = !DILocation(line: 203, column: 12, scope: !6729)
!6732 = !DILocation(line: 203, column: 15, scope: !6729)
!6733 = !DILocation(line: 203, column: 19, scope: !6729)
!6734 = !DILocation(line: 203, column: 26, scope: !6729)
!6735 = !DILocation(line: 203, column: 23, scope: !6729)
!6736 = !DILocation(line: 203, column: 7, scope: !6730)
!6737 = !DILocation(line: 204, column: 4, scope: !6729)
!6738 = !DILocation(line: 205, column: 7, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6730, file: !2, line: 205, column: 7)
!6740 = !DILocation(line: 205, column: 11, scope: !6739)
!6741 = !DILocation(line: 205, column: 16, scope: !6739)
!6742 = !DILocation(line: 205, column: 24, scope: !6739)
!6743 = !DILocation(line: 205, column: 7, scope: !6730)
!6744 = !DILocation(line: 206, column: 8, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6739, file: !2, line: 205, column: 29)
!6746 = !DILocation(line: 207, column: 4, scope: !6745)
!6747 = !DILocation(line: 209, column: 2, scope: !6730)
!6748 = !DILocation(line: 202, column: 2, scope: !6707)
!6749 = distinct !{!6749, !6726, !6750, !6307, !6308}
!6750 = !DILocation(line: 209, column: 2, scope: !6705)
!6751 = !DILocation(line: 210, column: 2, scope: !6710)
!6752 = !DILocation(line: 210, column: 2, scope: !6711)
!6753 = !DILocation(line: 210, column: 2, scope: !6713)
!6754 = !DILocation(line: 210, column: 2, scope: !6716)
!6755 = !DILocation(line: 211, column: 7, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6757, file: !2, line: 211, column: 7)
!6757 = distinct !DILexicalBlock(scope: !6716, file: !2, line: 210, column: 35)
!6758 = !DILocation(line: 211, column: 12, scope: !6756)
!6759 = !DILocation(line: 211, column: 15, scope: !6756)
!6760 = !DILocation(line: 211, column: 19, scope: !6756)
!6761 = !DILocation(line: 211, column: 26, scope: !6756)
!6762 = !DILocation(line: 211, column: 23, scope: !6756)
!6763 = !DILocation(line: 211, column: 7, scope: !6757)
!6764 = !DILocation(line: 212, column: 4, scope: !6756)
!6765 = !DILocation(line: 213, column: 9, scope: !6757)
!6766 = !DILocation(line: 213, column: 13, scope: !6757)
!6767 = !DILocation(line: 213, column: 18, scope: !6757)
!6768 = !DILocation(line: 213, column: 23, scope: !6757)
!6769 = !DILocation(line: 213, column: 7, scope: !6757)
!6770 = !DILocation(line: 214, column: 7, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6757, file: !2, line: 214, column: 7)
!6772 = !DILocation(line: 214, column: 7, scope: !6757)
!6773 = !DILocation(line: 215, column: 4, scope: !6771)
!6774 = !DILocation(line: 216, column: 2, scope: !6757)
!6775 = !DILocation(line: 210, column: 2, scope: !6715)
!6776 = distinct !{!6776, !6752, !6777, !6307, !6308}
!6777 = !DILocation(line: 216, column: 2, scope: !6711)
!6778 = !DILocation(line: 217, column: 1, scope: !6697)
!6779 = !DILocation(line: 218, column: 2, scope: !6697)
!6780 = !DILocation(line: 219, column: 2, scope: !6697)
!6781 = !DILocation(line: 221, column: 9, scope: !6697)
!6782 = !DILocation(line: 222, column: 1, scope: !6697)
!6783 = !DILocation(line: 221, column: 2, scope: !6697)
!6784 = distinct !DISubprogram(name: "__initstub__kmod_trace_dynevent__320_271_init_dynamic_event5", scope: !2, file: !2, line: 271, type: !5649, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6785 = !DILocation(line: 271, column: 1, scope: !6784)
!6786 = distinct !DISubprogram(name: "init_dynamic_event", scope: !2, file: !2, line: 258, type: !5649, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6787)
!6787 = !{!6788}
!6788 = !DILocalVariable(name: "ret", scope: !6786, file: !2, line: 260, type: !50)
!6789 = !DILocation(line: 260, column: 2, scope: !6786)
!6790 = !DILocation(line: 260, column: 6, scope: !6786)
!6791 = !DILocation(line: 262, column: 8, scope: !6786)
!6792 = !DILocation(line: 262, column: 6, scope: !6786)
!6793 = !DILocation(line: 263, column: 6, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6786, file: !2, line: 263, column: 6)
!6795 = !DILocation(line: 263, column: 6, scope: !6786)
!6796 = !DILocation(line: 264, column: 3, scope: !6794)
!6797 = !DILocation(line: 266, column: 2, scope: !6786)
!6798 = !DILocation(line: 269, column: 2, scope: !6786)
!6799 = !DILocation(line: 270, column: 1, scope: !6786)
!6800 = distinct !DISubprogram(name: "dynevent_arg_add", scope: !2, file: !2, line: 291, type: !6801, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6825)
!6801 = !DISubroutineType(types: !6802)
!6802 = !{!50, !6803, !6816, !6821}
!6803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6804, size: 64)
!6804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dynevent_cmd", file: !12, line: 519, size: 448, elements: !6805)
!6805 = !{!6806, !6807, !6808, !6809, !6810, !6815}
!6806 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !6804, file: !12, line: 520, baseType: !6119, size: 192)
!6807 = !DIDerivedType(tag: DW_TAG_member, name: "event_name", scope: !6804, file: !12, line: 521, baseType: !45, size: 64, offset: 192)
!6808 = !DIDerivedType(tag: DW_TAG_member, name: "n_fields", scope: !6804, file: !12, line: 522, baseType: !13, size: 32, offset: 256)
!6809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6804, file: !12, line: 523, baseType: !292, size: 32, offset: 288)
!6810 = !DIDerivedType(tag: DW_TAG_member, name: "run_command", scope: !6804, file: !12, line: 524, baseType: !6811, size: 64, offset: 320)
!6811 = !DIDerivedType(tag: DW_TAG_typedef, name: "dynevent_create_fn_t", file: !12, line: 517, baseType: !6812)
!6812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6813, size: 64)
!6813 = !DISubroutineType(types: !6814)
!6814 = !{!50, !6803}
!6815 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !6804, file: !12, line: 525, baseType: !48, size: 64, offset: 384)
!6816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6817, size: 64)
!6817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dynevent_arg", file: !6169, line: 128, size: 128, elements: !6818)
!6818 = !{!6819, !6820}
!6819 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !6817, file: !6169, line: 129, baseType: !45, size: 64)
!6820 = !DIDerivedType(tag: DW_TAG_member, name: "separator", scope: !6817, file: !6169, line: 130, baseType: !4, size: 8, offset: 64)
!6821 = !DIDerivedType(tag: DW_TAG_typedef, name: "dynevent_check_arg_fn_t", file: !6169, line: 126, baseType: !6822)
!6822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6823, size: 64)
!6823 = !DISubroutineType(types: !6824)
!6824 = !{!50, !48}
!6825 = !{!6826, !6827, !6828, !6829}
!6826 = !DILocalVariable(name: "cmd", arg: 1, scope: !6800, file: !2, line: 291, type: !6803)
!6827 = !DILocalVariable(name: "arg", arg: 2, scope: !6800, file: !2, line: 292, type: !6816)
!6828 = !DILocalVariable(name: "check_arg", arg: 3, scope: !6800, file: !2, line: 293, type: !6821)
!6829 = !DILocalVariable(name: "ret", scope: !6800, file: !2, line: 295, type: !50)
!6830 = !DILocation(line: 291, column: 43, scope: !6800)
!6831 = !DILocation(line: 292, column: 29, scope: !6800)
!6832 = !DILocation(line: 293, column: 32, scope: !6800)
!6833 = !DILocation(line: 295, column: 2, scope: !6800)
!6834 = !DILocation(line: 295, column: 6, scope: !6800)
!6835 = !DILocation(line: 297, column: 6, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6800, file: !2, line: 297, column: 6)
!6837 = !DILocation(line: 297, column: 6, scope: !6800)
!6838 = !DILocation(line: 298, column: 9, scope: !6839)
!6839 = distinct !DILexicalBlock(scope: !6836, file: !2, line: 297, column: 17)
!6840 = !DILocation(line: 298, column: 19, scope: !6839)
!6841 = !DILocation(line: 298, column: 7, scope: !6839)
!6842 = !DILocation(line: 299, column: 7, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6839, file: !2, line: 299, column: 7)
!6844 = !DILocation(line: 299, column: 7, scope: !6839)
!6845 = !DILocation(line: 300, column: 11, scope: !6843)
!6846 = !DILocation(line: 300, column: 4, scope: !6843)
!6847 = !DILocation(line: 301, column: 2, scope: !6839)
!6848 = !DILocation(line: 303, column: 24, scope: !6800)
!6849 = !DILocation(line: 303, column: 29, scope: !6800)
!6850 = !DILocation(line: 303, column: 43, scope: !6800)
!6851 = !DILocation(line: 303, column: 48, scope: !6800)
!6852 = !DILocation(line: 303, column: 53, scope: !6800)
!6853 = !DILocation(line: 303, column: 58, scope: !6800)
!6854 = !DILocation(line: 303, column: 8, scope: !6800)
!6855 = !DILocation(line: 303, column: 6, scope: !6800)
!6856 = !DILocation(line: 304, column: 6, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6800, file: !2, line: 304, column: 6)
!6858 = !DILocation(line: 304, column: 6, scope: !6800)
!6859 = !DILocation(line: 305, column: 3, scope: !6860)
!6860 = distinct !DILexicalBlock(scope: !6861, file: !2, line: 305, column: 3)
!6861 = distinct !DILexicalBlock(scope: !6857, file: !2, line: 304, column: 11)
!6862 = !DILocation(line: 305, column: 3, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !6860, file: !2, line: 305, column: 3)
!6864 = !DILocation(line: 306, column: 3, scope: !6861)
!6865 = !DILocation(line: 309, column: 9, scope: !6800)
!6866 = !DILocation(line: 309, column: 2, scope: !6800)
!6867 = !DILocation(line: 310, column: 1, scope: !6800)
!6868 = !DISubprogram(name: "seq_buf_printf", scope: !6120, file: !6120, line: 150, type: !6869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6869 = !DISubroutineType(types: !6870)
!6870 = !{!50, !6871, !45, null}
!6871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6119, size: 64)
!6872 = !DISubprogram(name: "_printk", scope: !6873, file: !6873, line: 153, type: !6874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6873 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6874 = !DISubroutineType(types: !6875)
!6875 = !{!50, !45, null}
!6876 = distinct !DISubprogram(name: "dynevent_arg_pair_add", scope: !2, file: !2, line: 336, type: !6877, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6886)
!6877 = !DISubroutineType(types: !6878)
!6878 = !{!50, !6803, !6879, !6821}
!6879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6880, size: 64)
!6880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dynevent_arg_pair", file: !6169, line: 139, size: 192, elements: !6881)
!6881 = !{!6882, !6883, !6884, !6885}
!6882 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !6880, file: !6169, line: 140, baseType: !45, size: 64)
!6883 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !6880, file: !6169, line: 141, baseType: !45, size: 64, offset: 64)
!6884 = !DIDerivedType(tag: DW_TAG_member, name: "operator", scope: !6880, file: !6169, line: 142, baseType: !4, size: 8, offset: 128)
!6885 = !DIDerivedType(tag: DW_TAG_member, name: "separator", scope: !6880, file: !6169, line: 143, baseType: !4, size: 8, offset: 136)
!6886 = !{!6887, !6888, !6889, !6890}
!6887 = !DILocalVariable(name: "cmd", arg: 1, scope: !6876, file: !2, line: 336, type: !6803)
!6888 = !DILocalVariable(name: "arg_pair", arg: 2, scope: !6876, file: !2, line: 337, type: !6879)
!6889 = !DILocalVariable(name: "check_arg", arg: 3, scope: !6876, file: !2, line: 338, type: !6821)
!6890 = !DILocalVariable(name: "ret", scope: !6876, file: !2, line: 340, type: !50)
!6891 = !DILocation(line: 336, column: 48, scope: !6876)
!6892 = !DILocation(line: 337, column: 32, scope: !6876)
!6893 = !DILocation(line: 338, column: 30, scope: !6876)
!6894 = !DILocation(line: 340, column: 2, scope: !6876)
!6895 = !DILocation(line: 340, column: 6, scope: !6876)
!6896 = !DILocation(line: 342, column: 6, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6876, file: !2, line: 342, column: 6)
!6898 = !DILocation(line: 342, column: 6, scope: !6876)
!6899 = !DILocation(line: 343, column: 9, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6897, file: !2, line: 342, column: 17)
!6901 = !DILocation(line: 343, column: 19, scope: !6900)
!6902 = !DILocation(line: 343, column: 7, scope: !6900)
!6903 = !DILocation(line: 344, column: 7, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6900, file: !2, line: 344, column: 7)
!6905 = !DILocation(line: 344, column: 7, scope: !6900)
!6906 = !DILocation(line: 345, column: 11, scope: !6904)
!6907 = !DILocation(line: 345, column: 4, scope: !6904)
!6908 = !DILocation(line: 346, column: 2, scope: !6900)
!6909 = !DILocation(line: 348, column: 24, scope: !6876)
!6910 = !DILocation(line: 348, column: 29, scope: !6876)
!6911 = !DILocation(line: 348, column: 47, scope: !6876)
!6912 = !DILocation(line: 348, column: 57, scope: !6876)
!6913 = !DILocation(line: 349, column: 9, scope: !6876)
!6914 = !DILocation(line: 349, column: 19, scope: !6876)
!6915 = !DILocation(line: 349, column: 29, scope: !6876)
!6916 = !DILocation(line: 349, column: 39, scope: !6876)
!6917 = !DILocation(line: 350, column: 9, scope: !6876)
!6918 = !DILocation(line: 350, column: 19, scope: !6876)
!6919 = !DILocation(line: 348, column: 8, scope: !6876)
!6920 = !DILocation(line: 348, column: 6, scope: !6876)
!6921 = !DILocation(line: 351, column: 6, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6876, file: !2, line: 351, column: 6)
!6923 = !DILocation(line: 351, column: 6, scope: !6876)
!6924 = !DILocation(line: 352, column: 3, scope: !6925)
!6925 = distinct !DILexicalBlock(scope: !6926, file: !2, line: 352, column: 3)
!6926 = distinct !DILexicalBlock(scope: !6922, file: !2, line: 351, column: 11)
!6927 = !DILocation(line: 352, column: 3, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6925, file: !2, line: 352, column: 3)
!6929 = !DILocation(line: 355, column: 3, scope: !6926)
!6930 = !DILocation(line: 358, column: 9, scope: !6876)
!6931 = !DILocation(line: 358, column: 2, scope: !6876)
!6932 = !DILocation(line: 359, column: 1, scope: !6876)
!6933 = distinct !DISubprogram(name: "dynevent_str_add", scope: !2, file: !2, line: 371, type: !6934, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6936)
!6934 = !DISubroutineType(types: !6935)
!6935 = !{!50, !6803, !45}
!6936 = !{!6937, !6938, !6939}
!6937 = !DILocalVariable(name: "cmd", arg: 1, scope: !6933, file: !2, line: 371, type: !6803)
!6938 = !DILocalVariable(name: "str", arg: 2, scope: !6933, file: !2, line: 371, type: !45)
!6939 = !DILocalVariable(name: "ret", scope: !6933, file: !2, line: 373, type: !50)
!6940 = !DILocation(line: 371, column: 43, scope: !6933)
!6941 = !DILocation(line: 371, column: 60, scope: !6933)
!6942 = !DILocation(line: 373, column: 2, scope: !6933)
!6943 = !DILocation(line: 373, column: 6, scope: !6933)
!6944 = !DILocation(line: 375, column: 22, scope: !6933)
!6945 = !DILocation(line: 375, column: 27, scope: !6933)
!6946 = !DILocation(line: 375, column: 32, scope: !6933)
!6947 = !DILocation(line: 375, column: 8, scope: !6933)
!6948 = !DILocation(line: 375, column: 6, scope: !6933)
!6949 = !DILocation(line: 376, column: 6, scope: !6950)
!6950 = distinct !DILexicalBlock(scope: !6933, file: !2, line: 376, column: 6)
!6951 = !DILocation(line: 376, column: 6, scope: !6933)
!6952 = !DILocation(line: 377, column: 3, scope: !6953)
!6953 = distinct !DILexicalBlock(scope: !6954, file: !2, line: 377, column: 3)
!6954 = distinct !DILexicalBlock(scope: !6950, file: !2, line: 376, column: 11)
!6955 = !DILocation(line: 377, column: 3, scope: !6956)
!6956 = distinct !DILexicalBlock(scope: !6953, file: !2, line: 377, column: 3)
!6957 = !DILocation(line: 378, column: 3, scope: !6954)
!6958 = !DILocation(line: 381, column: 9, scope: !6933)
!6959 = !DILocation(line: 381, column: 2, scope: !6933)
!6960 = !DILocation(line: 382, column: 1, scope: !6933)
!6961 = !DISubprogram(name: "seq_buf_puts", scope: !6120, file: !6120, line: 156, type: !6962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6962 = !DISubroutineType(types: !6963)
!6963 = !{!50, !6871, !45}
!6964 = distinct !DISubprogram(name: "dynevent_cmd_init", scope: !2, file: !2, line: 404, type: !6965, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6967)
!6965 = !DISubroutineType(types: !6966)
!6966 = !{null, !6803, !446, !50, !292, !6811}
!6967 = !{!6968, !6969, !6970, !6971, !6972}
!6968 = !DILocalVariable(name: "cmd", arg: 1, scope: !6964, file: !2, line: 404, type: !6803)
!6969 = !DILocalVariable(name: "buf", arg: 2, scope: !6964, file: !2, line: 404, type: !446)
!6970 = !DILocalVariable(name: "maxlen", arg: 3, scope: !6964, file: !2, line: 404, type: !50)
!6971 = !DILocalVariable(name: "type", arg: 4, scope: !6964, file: !2, line: 405, type: !292)
!6972 = !DILocalVariable(name: "run_command", arg: 5, scope: !6964, file: !2, line: 406, type: !6811)
!6973 = !DILocation(line: 404, column: 45, scope: !6964)
!6974 = !DILocation(line: 404, column: 56, scope: !6964)
!6975 = !DILocation(line: 404, column: 65, scope: !6964)
!6976 = !DILocation(line: 405, column: 29, scope: !6964)
!6977 = !DILocation(line: 406, column: 31, scope: !6964)
!6978 = !DILocation(line: 408, column: 9, scope: !6964)
!6979 = !DILocation(line: 408, column: 2, scope: !6964)
!6980 = !DILocation(line: 410, column: 16, scope: !6964)
!6981 = !DILocation(line: 410, column: 21, scope: !6964)
!6982 = !DILocation(line: 410, column: 26, scope: !6964)
!6983 = !DILocation(line: 410, column: 31, scope: !6964)
!6984 = !DILocation(line: 410, column: 2, scope: !6964)
!6985 = !DILocation(line: 411, column: 14, scope: !6964)
!6986 = !DILocation(line: 411, column: 2, scope: !6964)
!6987 = !DILocation(line: 411, column: 7, scope: !6964)
!6988 = !DILocation(line: 411, column: 12, scope: !6964)
!6989 = !DILocation(line: 412, column: 21, scope: !6964)
!6990 = !DILocation(line: 412, column: 2, scope: !6964)
!6991 = !DILocation(line: 412, column: 7, scope: !6964)
!6992 = !DILocation(line: 412, column: 19, scope: !6964)
!6993 = !DILocation(line: 413, column: 1, scope: !6964)
!6994 = distinct !DISubprogram(name: "seq_buf_init", scope: !6120, file: !6120, line: 38, type: !6995, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6997)
!6995 = !DISubroutineType(types: !6996)
!6996 = !{null, !6871, !446, !13}
!6997 = !{!6998, !6999, !7000}
!6998 = !DILocalVariable(name: "s", arg: 1, scope: !6994, file: !6120, line: 38, type: !6871)
!6999 = !DILocalVariable(name: "buf", arg: 2, scope: !6994, file: !6120, line: 38, type: !446)
!7000 = !DILocalVariable(name: "size", arg: 3, scope: !6994, file: !6120, line: 38, type: !13)
!7001 = !DILocation(line: 38, column: 30, scope: !6994)
!7002 = !DILocation(line: 38, column: 39, scope: !6994)
!7003 = !DILocation(line: 38, column: 57, scope: !6994)
!7004 = !DILocation(line: 40, column: 14, scope: !6994)
!7005 = !DILocation(line: 40, column: 2, scope: !6994)
!7006 = !DILocation(line: 40, column: 5, scope: !6994)
!7007 = !DILocation(line: 40, column: 12, scope: !6994)
!7008 = !DILocation(line: 41, column: 12, scope: !6994)
!7009 = !DILocation(line: 41, column: 2, scope: !6994)
!7010 = !DILocation(line: 41, column: 5, scope: !6994)
!7011 = !DILocation(line: 41, column: 10, scope: !6994)
!7012 = !DILocation(line: 42, column: 16, scope: !6994)
!7013 = !DILocation(line: 42, column: 2, scope: !6994)
!7014 = !DILocation(line: 43, column: 1, scope: !6994)
!7015 = distinct !DISubprogram(name: "dynevent_arg_init", scope: !2, file: !2, line: 427, type: !7016, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7018)
!7016 = !DISubroutineType(types: !7017)
!7017 = !{null, !6816, !4}
!7018 = !{!7019, !7020}
!7019 = !DILocalVariable(name: "arg", arg: 1, scope: !7015, file: !2, line: 427, type: !6816)
!7020 = !DILocalVariable(name: "separator", arg: 2, scope: !7015, file: !2, line: 428, type: !4)
!7021 = !DILocation(line: 427, column: 45, scope: !7015)
!7022 = !DILocation(line: 428, column: 15, scope: !7015)
!7023 = !DILocation(line: 430, column: 9, scope: !7015)
!7024 = !DILocation(line: 430, column: 2, scope: !7015)
!7025 = !DILocation(line: 432, column: 7, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !7015, file: !2, line: 432, column: 6)
!7027 = !DILocation(line: 432, column: 6, scope: !7015)
!7028 = !DILocation(line: 433, column: 13, scope: !7026)
!7029 = !DILocation(line: 433, column: 3, scope: !7026)
!7030 = !DILocation(line: 434, column: 19, scope: !7015)
!7031 = !DILocation(line: 434, column: 2, scope: !7015)
!7032 = !DILocation(line: 434, column: 7, scope: !7015)
!7033 = !DILocation(line: 434, column: 17, scope: !7015)
!7034 = !DILocation(line: 435, column: 1, scope: !7015)
!7035 = distinct !DISubprogram(name: "dynevent_arg_pair_init", scope: !2, file: !2, line: 454, type: !7036, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7038)
!7036 = !DISubroutineType(types: !7037)
!7037 = !{null, !6879, !4, !4}
!7038 = !{!7039, !7040, !7041}
!7039 = !DILocalVariable(name: "arg_pair", arg: 1, scope: !7035, file: !2, line: 454, type: !6879)
!7040 = !DILocalVariable(name: "operator", arg: 2, scope: !7035, file: !2, line: 455, type: !4)
!7041 = !DILocalVariable(name: "separator", arg: 3, scope: !7035, file: !2, line: 455, type: !4)
!7042 = !DILocation(line: 454, column: 55, scope: !7035)
!7043 = !DILocation(line: 455, column: 13, scope: !7035)
!7044 = !DILocation(line: 455, column: 28, scope: !7035)
!7045 = !DILocation(line: 457, column: 9, scope: !7035)
!7046 = !DILocation(line: 457, column: 2, scope: !7035)
!7047 = !DILocation(line: 459, column: 7, scope: !7048)
!7048 = distinct !DILexicalBlock(scope: !7035, file: !2, line: 459, column: 6)
!7049 = !DILocation(line: 459, column: 6, scope: !7035)
!7050 = !DILocation(line: 460, column: 12, scope: !7048)
!7051 = !DILocation(line: 460, column: 3, scope: !7048)
!7052 = !DILocation(line: 461, column: 23, scope: !7035)
!7053 = !DILocation(line: 461, column: 2, scope: !7035)
!7054 = !DILocation(line: 461, column: 12, scope: !7035)
!7055 = !DILocation(line: 461, column: 21, scope: !7035)
!7056 = !DILocation(line: 463, column: 7, scope: !7057)
!7057 = distinct !DILexicalBlock(scope: !7035, file: !2, line: 463, column: 6)
!7058 = !DILocation(line: 463, column: 6, scope: !7035)
!7059 = !DILocation(line: 464, column: 13, scope: !7057)
!7060 = !DILocation(line: 464, column: 3, scope: !7057)
!7061 = !DILocation(line: 465, column: 24, scope: !7035)
!7062 = !DILocation(line: 465, column: 2, scope: !7035)
!7063 = !DILocation(line: 465, column: 12, scope: !7035)
!7064 = !DILocation(line: 465, column: 22, scope: !7035)
!7065 = !DILocation(line: 466, column: 1, scope: !7035)
!7066 = distinct !DISubprogram(name: "dynevent_create", scope: !2, file: !2, line: 479, type: !6813, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7067)
!7067 = !{!7068}
!7068 = !DILocalVariable(name: "cmd", arg: 1, scope: !7066, file: !2, line: 479, type: !6803)
!7069 = !DILocation(line: 479, column: 42, scope: !7066)
!7070 = !DILocation(line: 481, column: 9, scope: !7066)
!7071 = !DILocation(line: 481, column: 14, scope: !7066)
!7072 = !DILocation(line: 481, column: 26, scope: !7066)
!7073 = !DILocation(line: 481, column: 2, scope: !7066)
!7074 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7075, file: !7075, line: 94, type: !7076, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7081)
!7075 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7076 = !DISubroutineType(types: !7077)
!7077 = !{null, !7078, !63}
!7078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7079, size: 64)
!7079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7080)
!7080 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7081 = !{!7082, !7083}
!7082 = !DILocalVariable(name: "v", arg: 1, scope: !7074, file: !7075, line: 94, type: !7078)
!7083 = !DILocalVariable(name: "size", arg: 2, scope: !7074, file: !7075, line: 94, type: !63)
!7084 = !DILocation(line: 94, column: 79, scope: !7074)
!7085 = !DILocation(line: 94, column: 89, scope: !7074)
!7086 = !DILocation(line: 96, column: 20, scope: !7074)
!7087 = !DILocation(line: 96, column: 23, scope: !7074)
!7088 = !DILocation(line: 96, column: 2, scope: !7074)
!7089 = !DILocation(line: 97, column: 2, scope: !7074)
!7090 = !DILocation(line: 98, column: 1, scope: !7074)
!7091 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !7092, file: !7092, line: 976, type: !6320, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7093)
!7092 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7093 = !{!7094}
!7094 = !DILocalVariable(name: "v", arg: 1, scope: !7091, file: !7092, line: 976, type: !6322)
!7095 = !DILocation(line: 976, column: 26, scope: !7091)
!7096 = !DILocation(line: 979, column: 18, scope: !7091)
!7097 = !DILocation(line: 979, column: 2, scope: !7091)
!7098 = !DILocation(line: 983, column: 1, scope: !7091)
!7099 = distinct !DISubprogram(name: "kasan_check_write", scope: !7100, file: !7100, line: 44, type: !7101, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7103)
!7100 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7101 = !DISubroutineType(types: !7102)
!7102 = !{!1441, !7078, !13}
!7103 = !{!7104, !7105}
!7104 = !DILocalVariable(name: "p", arg: 1, scope: !7099, file: !7100, line: 44, type: !7078)
!7105 = !DILocalVariable(name: "size", arg: 2, scope: !7099, file: !7100, line: 44, type: !13)
!7106 = !DILocation(line: 44, column: 59, scope: !7099)
!7107 = !DILocation(line: 44, column: 75, scope: !7099)
!7108 = !DILocation(line: 46, column: 2, scope: !7099)
!7109 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7110, file: !7110, line: 229, type: !7111, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7113)
!7110 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7111 = !DISubroutineType(types: !7112)
!7112 = !{null, !7078, !63, !50}
!7113 = !{!7114, !7115, !7116}
!7114 = !DILocalVariable(name: "ptr", arg: 1, scope: !7109, file: !7110, line: 229, type: !7078)
!7115 = !DILocalVariable(name: "size", arg: 2, scope: !7109, file: !7110, line: 229, type: !63)
!7116 = !DILocalVariable(name: "type", arg: 3, scope: !7109, file: !7110, line: 230, type: !50)
!7117 = !DILocation(line: 229, column: 60, scope: !7109)
!7118 = !DILocation(line: 229, column: 72, scope: !7109)
!7119 = !DILocation(line: 230, column: 15, scope: !7109)
!7120 = !DILocation(line: 230, column: 23, scope: !7109)
!7121 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !7122, file: !7122, line: 51, type: !6320, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7123)
!7122 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7123 = !{!7124}
!7124 = !DILocalVariable(name: "v", arg: 1, scope: !7121, file: !7122, line: 51, type: !6322)
!7125 = !DILocation(line: 51, column: 55, scope: !7121)
!7126 = !DILocation(line: 54, column: 16, scope: !7121)
!7127 = !DILocation(line: 54, column: 19, scope: !7121)
!7128 = !DILocation(line: 53, column: 2, scope: !7121)
!7129 = !{i64 2148997154, i64 2148997193, i64 2148997214, i64 2148997251, i64 2148997274, i64 2148997144}
!7130 = !DILocation(line: 55, column: 1, scope: !7121)
!7131 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7075, file: !7075, line: 66, type: !7076, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7132)
!7132 = !{!7133, !7134}
!7133 = !DILocalVariable(name: "v", arg: 1, scope: !7131, file: !7075, line: 66, type: !7078)
!7134 = !DILocalVariable(name: "size", arg: 2, scope: !7131, file: !7075, line: 66, type: !63)
!7135 = !DILocation(line: 66, column: 73, scope: !7131)
!7136 = !DILocation(line: 66, column: 83, scope: !7131)
!7137 = !DILocation(line: 68, column: 19, scope: !7131)
!7138 = !DILocation(line: 68, column: 22, scope: !7131)
!7139 = !DILocation(line: 68, column: 2, scope: !7131)
!7140 = !DILocation(line: 69, column: 2, scope: !7131)
!7141 = !DILocation(line: 70, column: 1, scope: !7131)
!7142 = distinct !DISubprogram(name: "raw_atomic_read", scope: !7092, file: !7092, line: 442, type: !6385, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7143)
!7143 = !{!7144}
!7144 = !DILocalVariable(name: "v", arg: 1, scope: !7142, file: !7092, line: 442, type: !6387)
!7145 = !DILocation(line: 442, column: 33, scope: !7142)
!7146 = !DILocation(line: 444, column: 26, scope: !7142)
!7147 = !DILocation(line: 444, column: 9, scope: !7142)
!7148 = !DILocation(line: 444, column: 2, scope: !7142)
!7149 = distinct !DISubprogram(name: "kasan_check_read", scope: !7100, file: !7100, line: 40, type: !7101, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7150)
!7150 = !{!7151, !7152}
!7151 = !DILocalVariable(name: "p", arg: 1, scope: !7149, file: !7100, line: 40, type: !7078)
!7152 = !DILocalVariable(name: "size", arg: 2, scope: !7149, file: !7100, line: 40, type: !13)
!7153 = !DILocation(line: 40, column: 58, scope: !7149)
!7154 = !DILocation(line: 40, column: 74, scope: !7149)
!7155 = !DILocation(line: 42, column: 2, scope: !7149)
!7156 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7122, file: !7122, line: 17, type: !6385, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7157)
!7157 = !{!7158}
!7158 = !DILocalVariable(name: "v", arg: 1, scope: !7156, file: !7122, line: 17, type: !6387)
!7159 = !DILocation(line: 17, column: 61, scope: !7156)
!7160 = !DILocation(line: 23, column: 9, scope: !7156)
!7161 = !DILocation(line: 23, column: 2, scope: !7156)
!7162 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !7075, file: !7075, line: 80, type: !7076, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7163)
!7163 = !{!7164, !7165}
!7164 = !DILocalVariable(name: "v", arg: 1, scope: !7162, file: !7075, line: 80, type: !7078)
!7165 = !DILocalVariable(name: "size", arg: 2, scope: !7162, file: !7075, line: 80, type: !63)
!7166 = !DILocation(line: 80, column: 74, scope: !7162)
!7167 = !DILocation(line: 80, column: 84, scope: !7162)
!7168 = !DILocation(line: 82, column: 20, scope: !7162)
!7169 = !DILocation(line: 82, column: 23, scope: !7162)
!7170 = !DILocation(line: 82, column: 2, scope: !7162)
!7171 = !DILocation(line: 83, column: 2, scope: !7162)
!7172 = !DILocation(line: 84, column: 1, scope: !7162)
!7173 = distinct !DISubprogram(name: "raw_atomic_set", scope: !7092, file: !7092, line: 488, type: !6398, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7174)
!7174 = !{!7175, !7176}
!7175 = !DILocalVariable(name: "v", arg: 1, scope: !7173, file: !7092, line: 488, type: !6322)
!7176 = !DILocalVariable(name: "i", arg: 2, scope: !7173, file: !7092, line: 488, type: !50)
!7177 = !DILocation(line: 488, column: 26, scope: !7173)
!7178 = !DILocation(line: 488, column: 33, scope: !7173)
!7179 = !DILocation(line: 490, column: 18, scope: !7173)
!7180 = !DILocation(line: 490, column: 21, scope: !7173)
!7181 = !DILocation(line: 490, column: 2, scope: !7173)
!7182 = !DILocation(line: 491, column: 1, scope: !7173)
!7183 = distinct !DISubprogram(name: "arch_atomic_set", scope: !7122, file: !7122, line: 26, type: !6398, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7184)
!7184 = !{!7185, !7186}
!7185 = !DILocalVariable(name: "v", arg: 1, scope: !7183, file: !7122, line: 26, type: !6322)
!7186 = !DILocalVariable(name: "i", arg: 2, scope: !7183, file: !7122, line: 26, type: !50)
!7187 = !DILocation(line: 26, column: 55, scope: !7183)
!7188 = !DILocation(line: 26, column: 62, scope: !7183)
!7189 = !DILocation(line: 28, column: 2, scope: !7183)
!7190 = !DILocation(line: 28, column: 2, scope: !7191)
!7191 = distinct !DILexicalBlock(scope: !7183, file: !7122, line: 28, column: 2)
!7192 = !DILocation(line: 29, column: 1, scope: !7183)
!7193 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !7092, file: !7092, line: 1194, type: !6320, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7194)
!7194 = !{!7195}
!7195 = !DILocalVariable(name: "v", arg: 1, scope: !7193, file: !7092, line: 1194, type: !6322)
!7196 = !DILocation(line: 1194, column: 26, scope: !7193)
!7197 = !DILocation(line: 1197, column: 18, scope: !7193)
!7198 = !DILocation(line: 1197, column: 2, scope: !7193)
!7199 = !DILocation(line: 1201, column: 1, scope: !7193)
!7200 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !7122, file: !7122, line: 58, type: !6320, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7201)
!7201 = !{!7202}
!7202 = !DILocalVariable(name: "v", arg: 1, scope: !7200, file: !7122, line: 58, type: !6322)
!7203 = !DILocation(line: 58, column: 55, scope: !7200)
!7204 = !DILocation(line: 61, column: 16, scope: !7200)
!7205 = !DILocation(line: 61, column: 19, scope: !7200)
!7206 = !DILocation(line: 60, column: 2, scope: !7200)
!7207 = !{i64 2148997517, i64 2148997556, i64 2148997577, i64 2148997614, i64 2148997637, i64 2148997507}
!7208 = !DILocation(line: 62, column: 1, scope: !7200)
!7209 = distinct !DISubprogram(name: "__list_add", scope: !6465, file: !6465, line: 146, type: !7210, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7212)
!7210 = !DISubroutineType(types: !7211)
!7211 = !{null, !128, !128, !128}
!7212 = !{!7213, !7214, !7215}
!7213 = !DILocalVariable(name: "new", arg: 1, scope: !7209, file: !6465, line: 146, type: !128)
!7214 = !DILocalVariable(name: "prev", arg: 2, scope: !7209, file: !6465, line: 147, type: !128)
!7215 = !DILocalVariable(name: "next", arg: 3, scope: !7209, file: !6465, line: 148, type: !128)
!7216 = !DILocation(line: 146, column: 49, scope: !7209)
!7217 = !DILocation(line: 147, column: 28, scope: !7209)
!7218 = !DILocation(line: 148, column: 28, scope: !7209)
!7219 = !DILocation(line: 150, column: 24, scope: !7220)
!7220 = distinct !DILexicalBlock(scope: !7209, file: !6465, line: 150, column: 6)
!7221 = !DILocation(line: 150, column: 29, scope: !7220)
!7222 = !DILocation(line: 150, column: 35, scope: !7220)
!7223 = !DILocation(line: 150, column: 7, scope: !7220)
!7224 = !DILocation(line: 150, column: 6, scope: !7209)
!7225 = !DILocation(line: 151, column: 3, scope: !7220)
!7226 = !DILocation(line: 153, column: 15, scope: !7209)
!7227 = !DILocation(line: 153, column: 2, scope: !7209)
!7228 = !DILocation(line: 153, column: 8, scope: !7209)
!7229 = !DILocation(line: 153, column: 13, scope: !7209)
!7230 = !DILocation(line: 154, column: 14, scope: !7209)
!7231 = !DILocation(line: 154, column: 2, scope: !7209)
!7232 = !DILocation(line: 154, column: 7, scope: !7209)
!7233 = !DILocation(line: 154, column: 12, scope: !7209)
!7234 = !DILocation(line: 155, column: 14, scope: !7209)
!7235 = !DILocation(line: 155, column: 2, scope: !7209)
!7236 = !DILocation(line: 155, column: 7, scope: !7209)
!7237 = !DILocation(line: 155, column: 12, scope: !7209)
!7238 = !DILocation(line: 156, column: 2, scope: !7209)
!7239 = !DILocation(line: 156, column: 2, scope: !7240)
!7240 = distinct !DILexicalBlock(scope: !7209, file: !6465, line: 156, column: 2)
!7241 = !DILocation(line: 156, column: 2, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !7240, file: !6465, line: 156, column: 2)
!7243 = !DILocation(line: 156, column: 2, scope: !7244)
!7244 = distinct !DILexicalBlock(scope: !7240, file: !6465, line: 156, column: 2)
!7245 = !DILocation(line: 157, column: 1, scope: !7209)
!7246 = distinct !DISubprogram(name: "__list_add_valid", scope: !6465, file: !6465, line: 128, type: !7247, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7249)
!7247 = !DISubroutineType(types: !7248)
!7248 = !{!1441, !128, !128, !128}
!7249 = !{!7250, !7251, !7252}
!7250 = !DILocalVariable(name: "new", arg: 1, scope: !7246, file: !6465, line: 128, type: !128)
!7251 = !DILocalVariable(name: "prev", arg: 2, scope: !7246, file: !6465, line: 129, type: !128)
!7252 = !DILocalVariable(name: "next", arg: 3, scope: !7246, file: !6465, line: 130, type: !128)
!7253 = !DILocation(line: 128, column: 55, scope: !7246)
!7254 = !DILocation(line: 129, column: 23, scope: !7246)
!7255 = !DILocation(line: 130, column: 23, scope: !7246)
!7256 = !DILocation(line: 132, column: 2, scope: !7246)
!7257 = !DISubprogram(name: "tracing_init_dentry", scope: !4359, file: !4359, line: 626, type: !5649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7258 = !DISubprogram(name: "trace_create_file", scope: !4359, file: !4359, line: 620, type: !7259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7259 = !DISubroutineType(types: !7260)
!7260 = !{!554, !45, !52, !554, !48, !4548}
!7261 = distinct !DISubprogram(name: "dyn_event_write", scope: !2, file: !2, line: 241, type: !4563, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7262)
!7262 = !{!7263, !7264, !7265, !7266}
!7263 = !DILocalVariable(name: "file", arg: 1, scope: !7261, file: !2, line: 241, type: !1265)
!7264 = !DILocalVariable(name: "buffer", arg: 2, scope: !7261, file: !2, line: 241, type: !45)
!7265 = !DILocalVariable(name: "count", arg: 3, scope: !7261, file: !2, line: 242, type: !63)
!7266 = !DILocalVariable(name: "ppos", arg: 4, scope: !7261, file: !2, line: 242, type: !68)
!7267 = !DILocation(line: 241, column: 45, scope: !7261)
!7268 = !DILocation(line: 241, column: 70, scope: !7261)
!7269 = !DILocation(line: 242, column: 12, scope: !7261)
!7270 = !DILocation(line: 242, column: 27, scope: !7261)
!7271 = !DILocation(line: 244, column: 33, scope: !7261)
!7272 = !DILocation(line: 244, column: 39, scope: !7261)
!7273 = !DILocation(line: 244, column: 47, scope: !7261)
!7274 = !DILocation(line: 244, column: 54, scope: !7261)
!7275 = !DILocation(line: 244, column: 9, scope: !7261)
!7276 = !DILocation(line: 244, column: 2, scope: !7261)
!7277 = distinct !DISubprogram(name: "dyn_event_open", scope: !2, file: !2, line: 224, type: !4629, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7278)
!7278 = !{!7279, !7280, !7281}
!7279 = !DILocalVariable(name: "inode", arg: 1, scope: !7277, file: !2, line: 224, type: !519)
!7280 = !DILocalVariable(name: "file", arg: 2, scope: !7277, file: !2, line: 224, type: !1265)
!7281 = !DILocalVariable(name: "ret", scope: !7277, file: !2, line: 226, type: !50)
!7282 = !DILocation(line: 224, column: 41, scope: !7277)
!7283 = !DILocation(line: 224, column: 61, scope: !7277)
!7284 = !DILocation(line: 226, column: 2, scope: !7277)
!7285 = !DILocation(line: 226, column: 6, scope: !7277)
!7286 = !DILocation(line: 228, column: 8, scope: !7277)
!7287 = !DILocation(line: 228, column: 6, scope: !7277)
!7288 = !DILocation(line: 229, column: 6, scope: !7289)
!7289 = distinct !DILexicalBlock(scope: !7277, file: !2, line: 229, column: 6)
!7290 = !DILocation(line: 229, column: 6, scope: !7277)
!7291 = !DILocation(line: 230, column: 10, scope: !7289)
!7292 = !DILocation(line: 230, column: 3, scope: !7289)
!7293 = !DILocation(line: 232, column: 7, scope: !7294)
!7294 = distinct !DILexicalBlock(scope: !7277, file: !2, line: 232, column: 6)
!7295 = !DILocation(line: 232, column: 13, scope: !7294)
!7296 = !DILocation(line: 232, column: 20, scope: !7294)
!7297 = !DILocation(line: 232, column: 35, scope: !7294)
!7298 = !DILocation(line: 232, column: 39, scope: !7294)
!7299 = !DILocation(line: 232, column: 45, scope: !7294)
!7300 = !DILocation(line: 232, column: 53, scope: !7294)
!7301 = !DILocation(line: 232, column: 6, scope: !7277)
!7302 = !DILocation(line: 233, column: 9, scope: !7303)
!7303 = distinct !DILexicalBlock(scope: !7294, file: !2, line: 232, column: 65)
!7304 = !DILocation(line: 233, column: 7, scope: !7303)
!7305 = !DILocation(line: 234, column: 7, scope: !7306)
!7306 = distinct !DILexicalBlock(scope: !7303, file: !2, line: 234, column: 7)
!7307 = !DILocation(line: 234, column: 11, scope: !7306)
!7308 = !DILocation(line: 234, column: 7, scope: !7303)
!7309 = !DILocation(line: 235, column: 11, scope: !7306)
!7310 = !DILocation(line: 235, column: 4, scope: !7306)
!7311 = !DILocation(line: 236, column: 2, scope: !7303)
!7312 = !DILocation(line: 238, column: 18, scope: !7277)
!7313 = !DILocation(line: 238, column: 9, scope: !7277)
!7314 = !DILocation(line: 238, column: 2, scope: !7277)
!7315 = !DILocation(line: 239, column: 1, scope: !7277)
!7316 = !DISubprogram(name: "trace_parse_run_command", scope: !4359, file: !4359, line: 1927, type: !7317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7317 = !DISubroutineType(types: !7318)
!7318 = !{!478, !1265, !45, !63, !68, !6178}
!7319 = distinct !DISubprogram(name: "create_dyn_event", scope: !2, file: !2, line: 128, type: !6179, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7320)
!7320 = !{!7321, !7322, !7323, !7324, !7327}
!7321 = !DILocalVariable(name: "raw_command", arg: 1, scope: !7319, file: !2, line: 128, type: !45)
!7322 = !DILocalVariable(name: "ops", scope: !7319, file: !2, line: 130, type: !6173)
!7323 = !DILocalVariable(name: "ret", scope: !7319, file: !2, line: 131, type: !50)
!7324 = !DILocalVariable(name: "__mptr", scope: !7325, file: !2, line: 137, type: !48)
!7325 = distinct !DILexicalBlock(scope: !7326, file: !2, line: 137, column: 2)
!7326 = distinct !DILexicalBlock(scope: !7319, file: !2, line: 137, column: 2)
!7327 = !DILocalVariable(name: "__mptr", scope: !7328, file: !2, line: 137, type: !48)
!7328 = distinct !DILexicalBlock(scope: !7329, file: !2, line: 137, column: 2)
!7329 = distinct !DILexicalBlock(scope: !7326, file: !2, line: 137, column: 2)
!7330 = !DILocation(line: 128, column: 41, scope: !7319)
!7331 = !DILocation(line: 130, column: 2, scope: !7319)
!7332 = !DILocation(line: 130, column: 31, scope: !7319)
!7333 = !DILocation(line: 131, column: 2, scope: !7319)
!7334 = !DILocation(line: 131, column: 6, scope: !7319)
!7335 = !DILocation(line: 133, column: 6, scope: !7336)
!7336 = distinct !DILexicalBlock(scope: !7319, file: !2, line: 133, column: 6)
!7337 = !DILocation(line: 133, column: 21, scope: !7336)
!7338 = !DILocation(line: 133, column: 28, scope: !7336)
!7339 = !DILocation(line: 133, column: 31, scope: !7336)
!7340 = !DILocation(line: 133, column: 46, scope: !7336)
!7341 = !DILocation(line: 133, column: 6, scope: !7319)
!7342 = !DILocation(line: 134, column: 28, scope: !7336)
!7343 = !DILocation(line: 134, column: 10, scope: !7336)
!7344 = !DILocation(line: 134, column: 3, scope: !7336)
!7345 = !DILocation(line: 136, column: 2, scope: !7319)
!7346 = !DILocation(line: 137, column: 2, scope: !7325)
!7347 = !DILocation(line: 137, column: 2, scope: !7326)
!7348 = !DILocation(line: 137, column: 2, scope: !7329)
!7349 = !DILocation(line: 138, column: 9, scope: !7350)
!7350 = distinct !DILexicalBlock(scope: !7329, file: !2, line: 137, column: 54)
!7351 = !DILocation(line: 138, column: 14, scope: !7350)
!7352 = !DILocation(line: 138, column: 21, scope: !7350)
!7353 = !DILocation(line: 138, column: 7, scope: !7350)
!7354 = !DILocation(line: 139, column: 8, scope: !7355)
!7355 = distinct !DILexicalBlock(scope: !7350, file: !2, line: 139, column: 7)
!7356 = !DILocation(line: 139, column: 12, scope: !7355)
!7357 = !DILocation(line: 139, column: 15, scope: !7355)
!7358 = !DILocation(line: 139, column: 19, scope: !7355)
!7359 = !DILocation(line: 139, column: 7, scope: !7350)
!7360 = !DILocation(line: 140, column: 4, scope: !7355)
!7361 = !DILocation(line: 141, column: 2, scope: !7350)
!7362 = !DILocation(line: 137, column: 2, scope: !7328)
!7363 = distinct !{!7363, !7347, !7364, !6307, !6308}
!7364 = !DILocation(line: 141, column: 2, scope: !7326)
!7365 = !DILocation(line: 142, column: 2, scope: !7319)
!7366 = !DILocation(line: 143, column: 6, scope: !7367)
!7367 = distinct !DILexicalBlock(scope: !7319, file: !2, line: 143, column: 6)
!7368 = !DILocation(line: 143, column: 10, scope: !7367)
!7369 = !DILocation(line: 143, column: 6, scope: !7319)
!7370 = !DILocation(line: 144, column: 7, scope: !7367)
!7371 = !DILocation(line: 144, column: 3, scope: !7367)
!7372 = !DILocation(line: 146, column: 9, scope: !7319)
!7373 = !DILocation(line: 146, column: 2, scope: !7319)
!7374 = !DILocation(line: 147, column: 1, scope: !7319)
!7375 = !DISubprogram(name: "tracing_check_open_get_tr", scope: !4359, file: !4359, line: 424, type: !5966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7376 = !DISubprogram(name: "seq_open", scope: !790, file: !790, line: 109, type: !7377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7377 = !DISubroutineType(types: !7378)
!7378 = !{!50, !1265, !821}
!7379 = distinct !DISubprogram(name: "dyn_event_seq_show", scope: !2, file: !2, line: 168, type: !839, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7380)
!7380 = !{!7381, !7382, !7383}
!7381 = !DILocalVariable(name: "m", arg: 1, scope: !7379, file: !2, line: 168, type: !788)
!7382 = !DILocalVariable(name: "v", arg: 2, scope: !7379, file: !2, line: 168, type: !48)
!7383 = !DILocalVariable(name: "ev", scope: !7379, file: !2, line: 170, type: !6167)
!7384 = !DILocation(line: 168, column: 48, scope: !7379)
!7385 = !DILocation(line: 168, column: 57, scope: !7379)
!7386 = !DILocation(line: 170, column: 2, scope: !7379)
!7387 = !DILocation(line: 170, column: 20, scope: !7379)
!7388 = !DILocation(line: 170, column: 25, scope: !7379)
!7389 = !DILocation(line: 172, column: 6, scope: !7390)
!7390 = distinct !DILexicalBlock(scope: !7379, file: !2, line: 172, column: 6)
!7391 = !DILocation(line: 172, column: 9, scope: !7390)
!7392 = !DILocation(line: 172, column: 12, scope: !7390)
!7393 = !DILocation(line: 172, column: 16, scope: !7390)
!7394 = !DILocation(line: 172, column: 6, scope: !7379)
!7395 = !DILocation(line: 173, column: 10, scope: !7390)
!7396 = !DILocation(line: 173, column: 14, scope: !7390)
!7397 = !DILocation(line: 173, column: 19, scope: !7390)
!7398 = !DILocation(line: 173, column: 24, scope: !7390)
!7399 = !DILocation(line: 173, column: 27, scope: !7390)
!7400 = !DILocation(line: 173, column: 3, scope: !7390)
!7401 = !DILocation(line: 175, column: 2, scope: !7379)
!7402 = !DILocation(line: 176, column: 1, scope: !7379)
!7403 = distinct !DISubprogram(name: "seq_buf_clear", scope: !6120, file: !6120, line: 30, type: !7404, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7406)
!7404 = !DISubroutineType(types: !7405)
!7405 = !{null, !6871}
!7406 = !{!7407}
!7407 = !DILocalVariable(name: "s", arg: 1, scope: !7403, file: !6120, line: 30, type: !6871)
!7408 = !DILocation(line: 30, column: 50, scope: !7403)
!7409 = !DILocation(line: 32, column: 2, scope: !7403)
!7410 = !DILocation(line: 32, column: 5, scope: !7403)
!7411 = !DILocation(line: 32, column: 9, scope: !7403)
!7412 = !DILocation(line: 33, column: 6, scope: !7413)
!7413 = distinct !DILexicalBlock(scope: !7403, file: !6120, line: 33, column: 6)
!7414 = !DILocation(line: 33, column: 9, scope: !7413)
!7415 = !DILocation(line: 33, column: 6, scope: !7403)
!7416 = !DILocation(line: 34, column: 3, scope: !7413)
!7417 = !DILocation(line: 34, column: 6, scope: !7413)
!7418 = !DILocation(line: 34, column: 16, scope: !7413)
!7419 = !DILocation(line: 35, column: 1, scope: !7403)
